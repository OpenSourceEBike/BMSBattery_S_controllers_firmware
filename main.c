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
#include "stm8s_itc.h"
#include "stm8s_gpio.h"
#include "interrupts.h"
#include "stm8s_adc1.h"
#include "stm8s_tim1.h"
#include "stm8s_tim2.h"
#include "motor.h"
#include "uart.h"

uint16_t ui16_LPF_angle_adjust = 0;
uint16_t ui16_LPF_angle_adjust_temp = 0;

uint16_t ui16_PWM_cycles_counter = 0;
uint8_t ui8_PWM_cycles_counter_1 = 0;
uint8_t ui8_PWM_cycles_counter_value = 0;
uint8_t ui8_PWM_cycles_counter_value_t = 0;
uint16_t ui16_PWM_cycles_counter_value_temp = 0;
uint16_t ui16_speed_inverse = 0;
uint8_t ui8_motor_rotor_position = 0; // in 360/256 degrees
uint8_t ui8_motor_rotor_absolute_position = 0; // in 360/256 degrees
uint8_t ui8_position_correction_value = 0; // in 360/256 degrees
uint16_t ui16_interpolation_angle_step = 0; // x1000
uint8_t ui8_interpolation_angle = 0;
uint8_t ui8_interpolation_angle_temp = 0;
uint8_t ui8_interpolation_angle_old = 0;
uint8_t ui8_last_counter_value = 0;

uint16_t ui16_motor_speed_erps = 0;

uint8_t ui8_debug = 0;
uint16_t ui16_debug = 0;

static uint8_t ui8_value_a;
static uint8_t ui8_value_b;
static uint8_t ui8_value_c;
static uint16_t ui16_value;

volatile uint8_t ui8_duty_cycle;

uint16_t ui16_adc_current_phase_B = 0;
uint8_t ui8_adc_current_phase_B_flag = 0;
uint16_t ui16_adc_current_phase_B_temp = 0;
uint8_t adc_total_current = 0;
uint8_t ui8_adc_total_current_busy_flag = 0;
uint8_t adc_throttle = 0;
uint8_t adc_throttle_busy_flag = 0;

extern uint8_t ui8_cruise_state;

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
void apply_duty_cycle (uint8_t ui8_duty_cycle_value);

void pwm_init (void);
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER);

// map / limit values
int32_t map (int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max);

void uart_init (void);
void putchar(char c);
char getchar(void);

void adc_init (void);
uint8_t adc_read_throttle (void);

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
//  uint8_t ui8_temp;
  uint16_t ui16_temp;
  static uint16_t ui16_last_value;

//  debug_pin_set ();

  ui8_PWM_cycles_counter_1++;
  if (ui8_adc_current_phase_B_flag == 1)
  {
    // find the adc_current_phase_B minimum value
    ui16_temp = ADC1_GetConversionValue ();
    if (ui16_temp < ui16_adc_current_phase_B_temp)
    {
      ui16_adc_current_phase_B_temp = ui16_temp;
//      ui8_PWM_cycles_counter_value = ui8_PWM_cycles_counter_1;
//      debug_pin_set ();
//      debug_pin_reset ();
    }
  }

  hall_sensors_read_and_action ();

  /****************************************************************
  * Motor control: angle interpolation and PWM control
  */
    motor_fast_loop ();
  /****************************************************************/

  // clear the interrupt pending bit for TIM1
  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);

//  debug_pin_set ();
//  debug_pin_reset ();
}

int32_t map (int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
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
  GPIO_Init(GPIOB,
	    (THROTTLE__PIN || CURRENT_PHASE_B__PIN || CURRENT_TOTAL__PIN),
	    GPIO_MODE_IN_FL_NO_IT);

  //de-Init ADC peripheral
  ADC1_DeInit();

  //init ADC1 peripheral
  ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
	    ADC1_CHANNEL_5,
	    ADC1_PRESSEL_FCPU_D2,
            ADC1_EXTTRIG_TIM,
	    DISABLE,
	    ADC1_ALIGN_LEFT,
	    (ADC1_SCHMITTTRIG_CHANNEL4 || ADC1_SCHMITTTRIG_CHANNEL5 || ADC1_SCHMITTTRIG_CHANNEL6),
            DISABLE);
}

uint8_t adc_read_throttle (void)
{
  uint8_t ui8_temp;

  adc_throttle_busy_flag = 1;

  ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
	    ADC1_CHANNEL_4,
	    ADC1_PRESSEL_FCPU_D2,
            ADC1_EXTTRIG_TIM,
	    DISABLE,
	    ADC1_ALIGN_LEFT,
	    (ADC1_SCHMITTTRIG_CHANNEL4 || ADC1_SCHMITTTRIG_CHANNEL5 || ADC1_SCHMITTTRIG_CHANNEL6),
            DISABLE);

  ADC1->CR1 |= ADC1_CR1_ADON;
  while (!(ADC1->CSR & ADC1_FLAG_EOC)) ;
  ui8_temp = ADC1->DRH;

  ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
	    ADC1_CHANNEL_5,
	    ADC1_PRESSEL_FCPU_D2,
            ADC1_EXTTRIG_TIM,
	    DISABLE,
	    ADC1_ALIGN_RIGHT,
	    (ADC1_SCHMITTTRIG_CHANNEL4 || ADC1_SCHMITTTRIG_CHANNEL5 || ADC1_SCHMITTTRIG_CHANNEL6),
            DISABLE);

  ADC1->CR1 |= ADC1_CR1_ADON;

  adc_throttle_busy_flag = 0;

  return ui8_temp;
}

//With SDCC, interrupt service routine function prototypes must be placed in the file that contains main ()
//in order for an vector for the interrupt to be placed in the the interrupt vector space.  It's acceptable
//to place the function prototype in a header file as long as the header file is included in the file that
//contains main ().  SDCC will not generate any warnings or errors if this is not done, but the vector will
//not be in place so the ISR will not be executed when the interrupt occurs.

//Calling a function from interrupt not always works, SDCC manual says to avoid it. Maybe the best is to put
//all the code inside the interrupt

void hall_sensors_read_and_action (void)
{
  static int8_t hall_sensors;
  static int8_t hall_sensors_last;

  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));
  if (hall_sensors != hall_sensors_last)
  {
//    debug_pin_set ();

    hall_sensors_last = hall_sensors;

    switch (hall_sensors)
    {
      case 3:
//	debug_pin_set ();
	ui8_motor_rotor_absolute_position = ANGLE_210;
	ui8_adc_current_phase_B_flag = 1;
	ui16_adc_current_phase_B_temp = 512; // 2.5V, 0 amps
	

	ui16_interpolation_angle_step = ui16_PWM_cycles_counter >> 1; // (ui16_PWM_cycles_counter / 256) * 127
	ui16_speed_inverse = ui16_PWM_cycles_counter;
	debug_pin_set ();
	ui16_motor_speed_erps = PWM_CYCLES_SECOND / ui16_PWM_cycles_counter; // this division takes ~4.2us
	debug_pin_reset ();
	ui16_PWM_cycles_counter = 0;

	ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);

	ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	ui8_interpolation_angle = 0;
	ui8_last_counter_value = 0;
//	debug_pin_reset ();
      break;

      case 1:
	if (ui16_speed_inverse > SPEED_INVERSE_INTERPOLATION)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_270;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
      break;

      case 5:
	if (ui16_speed_inverse > SPEED_INVERSE_INTERPOLATION)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_330;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
      break;

      case 4:
	if (ui16_speed_inverse > SPEED_INVERSE_INTERPOLATION)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_30;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}

//	debug_pin_set ();
	ui8_adc_current_phase_B_flag = 0;
	ui16_adc_current_phase_B = ui16_adc_current_phase_B_temp;
//	debug_pin_reset ();
      break;

      case 6:
	if (ui16_speed_inverse > SPEED_INVERSE_INTERPOLATION)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_90;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
      break;

      case 2:
	if (ui16_speed_inverse > SPEED_INVERSE_INTERPOLATION)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_150;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
      break;

      default:
      return;
      break;
    }

  //  ui16_debug = ((uint8_t) (ui16_interpolation_angle_step >> 8));
  //  ui16_debug = ui16_interpolation_angle_step;

  //  ui16_debug = ui8_PWM_cycles_counter_value / ((uint8_t) (ui16_interpolation_angle_step >> 8));

  }

}

// runs every 64us (PWM frequency)
void motor_fast_loop (void)
{
  // count number of fast loops / PWM cycles
  if (ui16_PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    ui16_PWM_cycles_counter++;
  }
  else
  {
    ui16_PWM_cycles_counter = 0;
    ui8_last_counter_value = 0;
    ui16_interpolation_angle_step = 0xffff; //(SVM_TABLE_LEN_x1024) / PWM_CYCLES_COUNTER_MAX;
    ui16_speed_inverse = 0xffff;
  }

#define DO_INTERPOLATION 1 // may be usefull when debugging
#if DO_INTERPOLATION == 1
  // calculate the interpolation angle
  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
//  if ((ui8_duty_cycle > 10) && (ui16_speed_inverse < 300))
  if (ui16_speed_inverse < SPEED_INVERSE_INTERPOLATION)
  {
    if (ui8_interpolation_angle < ANGLE_360) // interpolate only for angle <= 360º
    {
      uint16_t ui16_temp;

      ui16_temp = (uint16_t) ui16_PWM_cycles_counter << 7;
      ui8_interpolation_angle = (uint8_t) (ui16_temp / ui16_interpolation_angle_step);

//      if (ui8_interpolation_angle != ui8_interpolation_angle_old)
//      {
//	debug_pin_set ();
//	debug_pin_reset ();
//	ui8_interpolation_angle_old = ui8_interpolation_angle;
//      }

      ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value + ui8_interpolation_angle);
    }
  }
#endif

  apply_duty_cycle (ui8_duty_cycle);
}

void apply_duty_cycle (uint8_t ui8_duty_cycle_value)
{
#if (SVM_TABLE == SVM)
  static uint8_t ui8__duty_cycle;
  static uint8_t ui8_temp;

  ui8__duty_cycle = ui8_duty_cycle_value;

  // scale and apply _duty_cycle
  ui8_temp = ui8_svm_table[ui8_motor_rotor_position];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // add 120 degrees and limit
  ui8_temp = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 85 /* 120º */)];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // subtract 120 degrees and limit
  ui8_temp = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 171 /* 240º */)];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // set final duty_cycle value
  TIM1_SetCompare1((uint16_t) (ui8_value_a << 1));
  TIM1_SetCompare2((uint16_t) (ui8_value_c << 1));
  TIM1_SetCompare3((uint16_t) (ui8_value_b << 1));
#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM)
  // scale and apply _duty_cycle
  ui8_value_a = ui8_svm_table[ui8_motor_rotor_position];
  ui16_value = (uint16_t) (ui8_value_a * ui8_duty_cycle_value);
  ui8_value_a = (uint8_t) (ui16_value >> 8);

  // add 120 degrees and limit
  ui8_value_b = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 85 /* 120º */)];
  ui16_value = (uint16_t) (ui8_value_b * ui8_duty_cycle_value);
  ui8_value_b = (uint8_t) (ui16_value >> 8);

  // subtract 120 degrees and limit
  ui8_value_c = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 171 /* 240º */)];
  ui16_value = (uint16_t) (ui8_value_c * ui8_duty_cycle_value);
  ui8_value_c = (uint8_t) (ui16_value >> 8);

  // set final duty_cycle value
  TIM1_SetCompare1((uint16_t) (ui8_value_a << 2));
  TIM1_SetCompare2((uint16_t) (ui8_value_c << 2));
  TIM1_SetCompare3((uint16_t) (ui8_value_b << 2));
#endif
}

void pwm_init (void)
{
// TIM1 Peripheral Configuration
  TIM1_DeInit();

#if (SVM_TABLE == SVM)
  TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
		    TIM1_COUNTERMODE_CENTERALIGNED1,
		    (512 - 1), // clock = 16MHz; counter period = 1024; PWM freq = 16MHz / 1024 = 15.625kHz;
		    //(BUT PWM center aligned mode needs twice the frequency)
		    1); // will fire the TIM1_IT_UPDATE at every PWM period cycle
#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM)
  TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
		    TIM1_COUNTERMODE_UP,
		    (1024 - 1), // clock = 16MHz; counter period = 1024; PWM freq = 16MHz / 1024 = 15.625kHz;
		    0); // will fire the TIM1_IT_UPDATE at every PWM period
#endif


//#define DISABLE_PWM_CHANNELS_1_3

  TIM1_OC1Init(TIM1_OCMODE_PWM1,
#ifdef DISABLE_PWM_CHANNELS_1_3
	       TIM1_OUTPUTSTATE_DISABLE,
	       TIM1_OUTPUTNSTATE_DISABLE,
#else
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_ENABLE,
#endif
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
#ifdef DISABLE_PWM_CHANNELS_1_3
	       TIM1_OUTPUTSTATE_DISABLE,
	       TIM1_OUTPUTNSTATE_DISABLE,
#else
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_ENABLE,
#endif
	       0, // initial duty_cycle value
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // break, dead time and lock configuration
  TIM1_BDTRConfig(TIM1_OSSISTATE_ENABLE,
		  TIM1_LOCKLEVEL_OFF,
		  // hardware nees a dead time of 1us
		  16, // DTG = 0; dead time in 62.5 ns steps; 1us/62.5ns = 16
		  TIM1_BREAK_DISABLE,
		  TIM1_BREAKPOLARITY_LOW,
		  TIM1_AUTOMATICOUTPUT_DISABLE);

  TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);

  TIM1_Cmd(ENABLE); // TIM1 counter enable
  TIM1_CtrlPWMOutputs(ENABLE); // main Output Enable
}

// Brake signal
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER)
{
  if (brake_is_set())
  {
    brake_coast_enable ();
    ui8_cruise_state = 0; // stop cruise control
  }
  else
  {
    brake_coast_disable ();
    ui8_duty_cycle = 0;
    ui8_cruise_state = 0; // stop cruise control
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
//  GPIO_Init(HALL_SENSORS__PORT,
//	    (GPIO_Pin_TypeDef)(HALL_SENSOR_A__PIN | HALL_SENSOR_B__PIN | HALL_SENSOR_C__PIN),
//            GPIO_MODE_IN_FL_IT);

  GPIO_Init(HALL_SENSORS__PORT,
	    (GPIO_Pin_TypeDef)(HALL_SENSOR_A__PIN | HALL_SENSOR_B__PIN | HALL_SENSOR_C__PIN),
	    GPIO_MODE_IN_FL_NO_IT);

  //initialize the Interrupt sensitivity
//  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOE,
//			    EXTI_SENSITIVITY_RISE_FALL);
}

int main (void)
{
  static uint32_t ui32_cruise_counter = 0;
  static uint8_t ui8_cruise_duty_cycle = 0;
  static uint16_t ui16_adc_value;
  static uint8_t ui8_temp = 0;

  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

//  gpio_init ();
//  brake_init ();
//  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
//  debug_pin_init ();
  uart_init ();
//  hall_sensor_init ();
//  pwm_init ();
//  adc_init ();

//  ITC_SetSoftwarePriority (ITC_IRQ_PORTE, ITC_PRIORITYLEVEL_1); // hall sensors interrupt have the most priority
//  ITC_SetSoftwarePriority (ITC_IRQ_TIM1_OVF, ITC_PRIORITYLEVEL_2);
//
//  enableInterrupts();
//#if (SVM_TABLE == SVM)
//  TIM1_SetCompare1(126 << 1);
//  TIM1_SetCompare2(126 << 1);
//  TIM1_SetCompare3(126 << 1);
//#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM)
//  TIM1_SetCompare1(126 << 2);
//  TIM1_SetCompare2(126 << 2);
//  TIM1_SetCompare3(126 << 2);
//#endif
//
//  hall_sensors_read_and_action (); // needed to start the motor

  while (1)
  {
    while (1)
    {
	printf("testing UART after build optimize 1...\n");
    }

//    //    static uint16_t c;
//        static uint32_t ui32_counter = 0;
//        uint16_t ui16_temp = 0;
//        uint16_t ui32_temp = 0;
//    //    int8_t i8_buffer[64];
//    //    uint8_t ui8_value;
//    //    int objects_readed;
//        static uint32_t ui32_LPF_running_average = 0;
//        static uint32_t ui32_LPF_temp = 0;
//        static float f_temp = 0;
//
//    //    debug_pin_reset ();
//
//        ui32_counter++;
//        if (ui32_counter > 10000) // 25ms
//        {
//          ui32_counter = 0;
//          while (ui8_adc_total_current_busy_flag) ;
//
//          /****************************************************************************/
//          // read throttle and execute cruise control
//          //
//          ui16_adc_value = (uint16_t) adc_read_throttle ();
//          ui8_temp = (uint8_t) map (ui16_adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 237);
//
//          // Cruise control
//          if (ui8_cruise_state == 0)
//          {
//            if ((ui8_temp > 25) &&
//                ((ui8_temp > (ui8_cruise_duty_cycle - 25)) || (ui8_temp < (ui8_cruise_duty_cycle + 25))))
//            {
//    	  ui32_cruise_counter++;
//    	  ui8_duty_cycle = ui8_temp;
//
//    	  if (ui32_cruise_counter > 100)
//    	  {
//    	    ui8_cruise_state = 1;
//    	    ui8_duty_cycle = ui8_temp;
//    	    ui32_cruise_counter = 0;
//    	    ui8_cruise_duty_cycle = 0;
//    	  }
//            }
//            else
//            {
//    	  ui32_cruise_counter = 0;
//    	  ui8_cruise_duty_cycle = ui8_temp;
//    	  ui8_duty_cycle = ui8_cruise_duty_cycle;
//            }
//          }
//          else if (ui8_cruise_state == 1)
//          {
//            if (ui8_temp < 25) { ui8_cruise_state = 2; }
//          }
//          else if (ui8_cruise_state == 2)
//          {
//            if (ui8_temp > 25)
//            {
//              ui8_cruise_state = 0;
//              ui8_duty_cycle = ui8_temp;
//            }
//          }
//          /****************************************************************************/
//
//          // low pass filter using running average
//          ui32_temp = ui32_LPF_running_average >> 2; // ui32_LPF_running_average / 8
//          ui32_LPF_running_average -= ui32_temp; // ui32_LPF_running_average is now reduced to 7/8 of the original ui32_LPF_running_average
//          ui32_LPF_running_average += (uint32_t) (ui16_adc_current_phase_B >> 2); //add 1/8 a to get the new average

    //      disableInterrupts();
    //      ui32_LPF_running_average = (uint32_t) ui16_adc_current_phase_B;
    //      enableInterrupts();

    //      printf("%d\n", (uint16_t) ui16_debug);

    //      ui32_LPF_temp = 512 - ui32_LPF_running_average;
    //      ui32_LPF_temp = ui32_LPF_temp * ADC_PHASE_B_CURRENT_STEP;
    //      printf("%d\n", (uint16_t) ui32_LPF_temp);

    //      printf("%d\n", ui16_PWM_cycles_counter_value_temp);
//          printf("%d\n", ui16_motor_speed_erps);
//        }



    //    ui8_duty_cycle = 80;

    //    apply_duty_cycle (ui8_duty_cycle);

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
