/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s.h"
#include "gpio.h"
#include "stm8s_gpio.h"
#include "interrupts.h"
#include "stm8s_adc1.h"
#include "stm8s_tim1.h"
#include "motor.h"

int32_t i32_motor_speed_erps = 0; // motor speed in electronic rotations per second
uint8_t ui8_flag_count_speed = 0;
int32_t i32_PWM_cycles_counter = 0;
int16_t i16_motor_rotor_position = 0; // in degrees
int16_t i16_motor_rotor_absolute_position = 0; // in degrees
int16_t i16_position_correction_value = 0; // in degrees
int32_t i32_interpolation_angle_step = 0; // x1000
int32_t i32_interpolation_sum = 0; // x1000
int16_t i16_interpolation_angle = 0;

static int16_t i16_value_a;
static int16_t i16_value_b;
static int16_t i16_value_c;

volatile int16_t i16_duty_cycle;

/////////////////////////////////////////////////////////////////////////////////////////////
//// Functions prototypes

// main -- start of firmware and main loop
int main (void);

//// Brake related
// Brake signal interrupt
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER);

//// Hall sensors related
// HALL SENSORS signal interrupt
void EXTI_PORTE_IRQHandler(void) __interrupt(EXTI_PORTE_IRQHANDLER);
// reads hall sensors -- called from EXTI_PORTE_IRQHandler
void hall_sensors_read_and_action (void);
void hall_sensor_init (void);

void motor_fast_loop (void);
void apply_duty_cycle (int16_t i16_duty_cycle_value);

void pwm_init (void);

// map / limit values
int16_t i16_map (int16_t x, int16_t in_min, int16_t in_max, int16_t out_min, int16_t out_max);

void uart_init (void);
void putchar(char c);
char getchar(void);

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
int16_t i16_mod_angle_degrees (int16_t value)
{
  int16_t ret = value % 360;
  if(ret < 0)
    ret += 360;
  return ret;
}

int16_t i16_map (int16_t x, int16_t in_min, int16_t in_max, int16_t out_min, int16_t out_max)
{
  // if input is smaller/bigger than expected return the min/max out ranges value
  if (x < in_min)
    return out_min;
  else if (x > in_max)
    return out_max;

  // map the input to the output range.
  // round up if mapping bigger ranges to smaller ranges
  else  if ((in_max - in_min) > (out_max - out_min))
    return (x - in_min) * (out_max - out_min + 1) / (in_max - in_min + 1) + out_min;
  // round down if mapping smaller ranges to bigger ranges
  else
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

//can't put ADC code file on external file like adc.c or the code will not work :-(
void adc_init (void)
{
  //init GPIO for the used ADC pins
  GPIO_Init(THROTTLE__PORT,
	    THROTTLE__PIN,
	    GPIO_MODE_IN_FL_NO_IT);

  //de-Init ADC peripheral
  ADC1_DeInit();

  //init ADC2 peripheral
  ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
	    ADC1_CHANNEL_4,
	    ADC1_PRESSEL_FCPU_D2,
            ADC1_EXTTRIG_TIM,
	    DISABLE, //disable external trigger
	    ADC1_ALIGN_RIGHT,
	    ADC1_SCHMITTTRIG_CHANNEL9,
            DISABLE);
}

uint16_t adc_read_throttle (void)
{
  ADC1_ConversionConfig(ADC1_CONVERSIONMODE_SINGLE,
			ADC1_CHANNEL_4,
			ADC1_ALIGN_RIGHT);

  //start Conversion
  ADC1_StartConversion();

  //block waiting for the end of conversion
  while (!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ;

  return ADC1_GetConversionValue();
}



//With SDCC, interrupt service routine function prototypes must be placed in the file that contains main ()
//in order for an vector for the interrupt to be placed in the the interrupt vector space.  It's acceptable
//to place the function prototype in a header file as long as the header file is included in the file that
//contains main ().  SDCC will not generate any warnings or errors if this is not done, but the vector will
//not be in place so the ISR will not be executed when the interrupt occurs.

//Calling a function from interrupt not always works, SDCC manual says to avoid it. Maybe the best is to put
//all the code inside the interrupt

void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
  debug_pin_set ();
  motor_fast_loop ();
  debug_pin_reset ();

  // clear the interrupt pending bit for TIM1
  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

void hall_sensors_read_and_action (void)
{
  static int8_t hall_sensors;

  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));

//  switch (hall_sensors)
//  {
//    case 3: hall_sensors = 1; break;
//    case 1: hall_sensors = 5; break;
//    case 5: hall_sensors = 4; break;
//    case 4: hall_sensors = 6; break;
//    case 6: hall_sensors = 2; break;
//    case 2: hall_sensors = 3; break;
//    default: hall_sensors = 2; return;
//    break;
//  }

  switch (hall_sensors)
  {
    case 3:
      i16_motor_rotor_absolute_position = ANGLE_30;
    break;

    case 1:
      i16_motor_rotor_absolute_position = ANGLE_90;
    break;

    case 5:
      i16_motor_rotor_absolute_position = ANGLE_150;

      // count speed only when motor did rotate half of 1 electronic rotation
      if (ui8_flag_count_speed)
      {
	ui8_flag_count_speed = 0;
	i32_motor_speed_erps = PWM_CYCLES_COUNTER_MAX / i32_PWM_cycles_counter;
	i32_interpolation_angle_step = SVM_TABLE_LEN_x1024 / i32_PWM_cycles_counter;
	i32_PWM_cycles_counter = 0;
      }
    break;

    case 4:
      i16_motor_rotor_absolute_position = ANGLE_210;
    break;

    case 6:
      i16_motor_rotor_absolute_position = ANGLE_270;
    break;

    case 2:
      i16_motor_rotor_absolute_position = ANGLE_330;

      ui8_flag_count_speed = 1;
    break;

    default:
    return;
    break;
  }

  i16_motor_rotor_position = i16_mod_angle_degrees (i16_motor_rotor_absolute_position +
						    i16_position_correction_value +
						    MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
  i16_interpolation_angle = 0;
  i32_interpolation_sum = 0;
}

// runs every 64us (PWM frequency)
void motor_fast_loop (void)
{
  // count number of fast loops / PWM cycles
  if (i32_PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    i32_PWM_cycles_counter++;
  }
  else
  {
    i32_PWM_cycles_counter = 0;
    i32_motor_speed_erps = 0;
    i32_interpolation_angle_step = (SVM_TABLE_LEN_x1024) / PWM_CYCLES_COUNTER_MAX;
    i32_interpolation_sum = 0;
  }

#define DO_INTERPOLATION 1 // may be usefull when debugging
#if DO_INTERPOLATION == 1
  // calculate the interpolation angle
  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
  if ((i16_duty_cycle > 10) && (i32_motor_speed_erps >= 10))
  {
    if (i16_interpolation_angle < ANGLE_60) // interpolate only for angle <= 60º
    {
      // add step interpolation value to motor_rotor_position
      i32_interpolation_sum += i32_interpolation_angle_step;
      i16_interpolation_angle = (int16_t) (i32_interpolation_sum >> 10);

      i16_motor_rotor_position = i16_mod_angle_degrees (i16_motor_rotor_absolute_position +
							i16_position_correction_value +
							i16_interpolation_angle);
    }
  }
#endif

  apply_duty_cycle (i16_duty_cycle);
}

void apply_duty_cycle (int16_t i16_duty_cycle_value)
{
  static int16_t i16_temp;

  // scale and apply _duty_cycle
  i16_temp = i16_svm_table[i16_motor_rotor_position];
  if (i16_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    i16_value_a = ((int16_t) (i16_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * i16_duty_cycle_value;
    i16_temp = (int16_t) (i16_value_a >> 9);
    i16_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + i16_temp;
  }
  else
  {
    i16_value_a = ((int16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - i16_temp)) * i16_duty_cycle_value;
    i16_temp = (int16_t) (i16_value_a >> 9);
    i16_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - i16_temp;
  }

  // add 120 degrees and limit
  i16_temp = i16_svm_table[i16_mod_angle_degrees (i16_motor_rotor_position + 120)];
  if (i16_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    i16_value_b = ((uint16_t) (i16_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * i16_duty_cycle_value;
    i16_temp = (int16_t) (i16_value_b >> 9);
    i16_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + i16_temp;
  }
  else
  {
    i16_value_b = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - i16_temp)) * i16_duty_cycle_value;
    i16_temp = (int16_t) (i16_value_b >> 9);
    i16_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - i16_temp;
  }

  // subtract 120 degrees and limit
  i16_temp = i16_svm_table[i16_mod_angle_degrees (i16_motor_rotor_position + 240)];
  if (i16_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    i16_value_c = ((uint16_t) (i16_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * i16_duty_cycle_value;
    i16_temp = (int16_t) (i16_value_c >> 9);
    i16_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + i16_temp;
  }
  else
  {
    i16_value_c = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - i16_temp)) * i16_duty_cycle_value;
    i16_temp = (int16_t) (i16_value_c >> 9);
    i16_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - i16_temp;
  }

  // set final duty_cycle value
  TIM1_SetCompare1((uint16_t) i16_value_a);
  TIM1_SetCompare2((uint16_t) i16_value_c);
  TIM1_SetCompare3((uint16_t) i16_value_b);
}

void pwm_init (void)
{
// TIM1 Peripheral Configuration
  TIM1_DeInit();

  TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
		    TIM1_COUNTERMODE_CENTERALIGNED1,
		    (512 - 1), // clock = 16MHz; counter period = 1024; PWM freq = 16MHz / 1024 = 15.625kHz;
		    //(BUT PWM center aligned mode needs twice the frequency)
		    1); // will fire the TIM1_IT_UPDATE at every PWM period

  TIM1_OC1Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_ENABLE,
	       0, // initial duty_cycle value
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  TIM1_OC2Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_ENABLE,
	       0, // initial duty_cycle value
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  TIM1_OC3Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_ENABLE,
	       0, // initial duty_cycle value
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // break, dead time and lock configuration
  TIM1_BDTRConfig(TIM1_OSSISTATE_DISABLE,
		  TIM1_LOCKLEVEL_OFF,
		  // hardware nees a dead time of 1us
		  16, // DTG = 0; dead time in 62.5 ns steps; 1us/62.5ns = 16
		  // 16 --> 1000ns
		  // 12 --> 750ns
		  // 8 --> 500ns
		  TIM1_BREAK_DISABLE,
		  TIM1_BREAKPOLARITY_HIGH,
		  TIM1_AUTOMATICOUTPUT_ENABLE);

  TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);

  TIM1_Cmd(ENABLE); // TIM1 counter enable
  TIM1_CtrlPWMOutputs(ENABLE); // main Output Enable
}

// Brake signal
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER)
{
  if (brake_is_set())
  {
    brake_coast_disable (); // pwm main output disable
  }
  else
  {
    brake_coast_enable (); // pwm main output enable
  }
}

// HALL SENSORS signal
void EXTI_PORTE_IRQHandler(void) __interrupt(EXTI_PORTE_IRQHANDLER)
{
  hall_sensors_read_and_action ();
}

void hall_sensor_init (void)
{
  //hall sensors pins as external input pin interrupt
  GPIO_Init(HALL_SENSORS__PORT,
	    (GPIO_Pin_TypeDef)(HALL_SENSOR_A__PIN | HALL_SENSOR_B__PIN | HALL_SENSOR_C__PIN),
            GPIO_MODE_IN_FL_IT);

  //initialize the Interrupt sensitivity
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOE,
			    EXTI_SENSITIVITY_RISE_FALL);
}

void uart_init (void)
{
  UART2_DeInit();
  UART2_Init((uint32_t)115200,
	     UART2_WORDLENGTH_8D,
	     UART2_STOPBITS_1,
	     UART2_PARITY_NO,
	     UART2_SYNCMODE_CLOCK_DISABLE,
	     UART2_MODE_TXRX_ENABLE);
}

void putchar(char c)
{
  //Write a character to the UART2
  UART2_SendData8(c);

  //Loop until the end of transmission
  while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
}

char getchar(void)
{
  uint8_t c = 0;

  /* Loop until the Read data register flag is SET */
  while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET) ;

  c = UART2_ReceiveData8();

  return (c);
}


int main (void)
{
  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();
  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
  debug_pin_init ();
  uart_init ();
  hall_sensor_init ();
  pwm_init ();
  adc_init ();
  enableInterrupts();

  TIM1_SetCompare1(255);
  TIM1_SetCompare2(255);
  TIM1_SetCompare3(255);
  hall_sensors_read_and_action (); // needed to start the motor

  while (1)
  {
//    static uint16_t c;
    static uint16_t ui16_adc_value;
    int8_t i8_buffer[64];
    uint8_t ui8_value;
    int objects_readed;

    ui16_adc_value = adc_read_throttle ();
    i16_duty_cycle = i16_map ((int16_t) ui16_adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 511);

//    c++;
//    if (c < 43)
//    {
//      motor_fast_loop ();
//    }
//    else
//    {
//      c = 0;
//      hall_sensors_read_and_action ();
//    }

//   fflush(stdin); // needed to unblock scanf() after a not expected formatted data
//   objects_readed = scanf("%s %d", &i8_buffer, &ui8_value);
//
//   if (objects_readed > 0)
//   {
//     switch (i8_buffer[0])
//     {
//      case 'a':
//	printf("a = %d\n", ui8_value);
//	ui8_position_correction_value = ui8_value;
//	break;
//
//      default:
//	break;
//     }
//   }
  }
}
