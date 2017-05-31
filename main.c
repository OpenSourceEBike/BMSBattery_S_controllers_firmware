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

uint8_t ui8_svm_table [SVM_TABLE_LEN] =
{
    131	,
    136	,
    140	,
    145	,
    150	,
    154	,
    159	,
    163	,
    168	,
    173	,
    177	,
    182	,
    186	,
    191	,
    195	,
    199	,
    204	,
    208	,
    212	,
    216	,
    221	,
    224	,
    225	,
    226	,
    227	,
    228	,
    230	,
    231	,
    232	,
    232	,
    233	,
    234	,
    235	,
    235	,
    236	,
    236	,
    237	,
    237	,
    237	,
    238	,
    238	,
    238	,
    238	,
    238	,
    238	,
    238	,
    237	,
    237	,
    237	,
    236	,
    236	,
    235	,
    235	,
    234	,
    233	,
    232	,
    231	,
    230	,
    229	,
    228	,
    227	,
    226	,
    225	,
    224	,
    224	,
    225	,
    227	,
    228	,
    229	,
    230	,
    231	,
    232	,
    233	,
    233	,
    234	,
    235	,
    235	,
    236	,
    236	,
    237	,
    237	,
    237	,
    238	,
    238	,
    238	,
    238	,
    238	,
    238	,
    238	,
    237	,
    237	,
    237	,
    236	,
    236	,
    235	,
    234	,
    234	,
    233	,
    232	,
    231	,
    230	,
    229	,
    228	,
    227	,
    226	,
    224	,
    223	,
    219	,
    215	,
    210	,
    206	,
    202	,
    198	,
    193	,
    189	,
    184	,
    180	,
    175	,
    171	,
    166	,
    162	,
    157	,
    152	,
    148	,
    143	,
    138	,
    134	,
    129	,
    124	,
    119	,
    115	,
    110	,
    105	,
    101	,
    96	,
    92	,
    87	,
    82	,
    78	,
    73	,
    69	,
    64	,
    60	,
    56	,
    51	,
    47	,
    43	,
    39	,
    34	,
    31	,
    30	,
    29	,
    28	,
    27	,
    25	,
    24	,
    23	,
    23	,
    22	,
    21	,
    20	,
    20	,
    19	,
    19	,
    18	,
    18	,
    18	,
    17	,
    17	,
    17	,
    17	,
    17	,
    17	,
    17	,
    18	,
    18	,
    18	,
    19	,
    19	,
    20	,
    20	,
    21	,
    22	,
    23	,
    24	,
    25	,
    26	,
    27	,
    28	,
    29	,
    30	,
    31	,
    31	,
    30	,
    28	,
    27	,
    26	,
    25	,
    24	,
    23	,
    22	,
    22	,
    21	,
    20	,
    20	,
    19	,
    19	,
    18	,
    18	,
    18	,
    17	,
    17	,
    17	,
    17	,
    17	,
    17	,
    17	,
    18	,
    18	,
    18	,
    19	,
    19	,
    20	,
    21	,
    21	,
    22	,
    23	,
    24	,
    25	,
    26	,
    27	,
    28	,
    29	,
    31	,
    32	,
    36	,
    40	,
    45	,
    49	,
    53	,
    57	,
    62	,
    66	,
    71	,
    75	,
    80	,
    84	,
    89	,
    93	,
    98	,
    103	,
    107	,
    112	,
    117	,
    121	,
    126
};

int32_t motor_speed_erps = 0; // motor speed in electronic rotations per second
int8_t flag_count_speed = 0;
int16_t PWM_cycles_per_SVM_TABLE_step = 0;
int32_t PWM_cycles_counter = 0;
uint8_t ui8_motor_rotor_position = 0; // in 360/256 degrees
uint8_t ui8_motor_rotor_absolute_position = 0; // in 360/256 degrees
uint8_t ui8_position_correction_value = 0; // in 360/256 degrees
int32_t interpolation_angle_step = 0; // x1000
int32_t interpolation_sum = 0; // x1000
int16_t interpolation_angle = 0;

static uint8_t ui8_value_a;
static uint8_t ui8_value_b;
static uint8_t ui8_value_c;
static uint16_t ui16_value_a;
static uint16_t ui16_value_b;
static uint16_t ui16_value_c;

volatile uint8_t ui8_duty_cycle;

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

// map / limit values
int32_t map (int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max);

int16_t mod_angle_degrees (int16_t value);

void uart_init (void);
void putchar(char c);

/////////////////////////////////////////////////////////////////////////////////////////////

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

  switch (hall_sensors)
  {
    case 3:
      ui8_motor_rotor_absolute_position = ANGLE_0;
    break;

    case 1:
      ui8_motor_rotor_absolute_position = ANGLE_60;
    break;

    case 5:
      ui8_motor_rotor_absolute_position = ANGLE_120;

      // count speed only when motor did rotate half of 1 electronic rotation
      if (flag_count_speed)
      {
	  flag_count_speed = 0;
	  motor_speed_erps = PWM_CYCLES_COUNTER_MAX / PWM_cycles_counter;
	  interpolation_angle_step = (SVM_TABLE_LEN * 1000) / PWM_cycles_counter;
	  PWM_cycles_counter = 0;
      }
    break;

    case 4:
      ui8_motor_rotor_absolute_position = ANGLE_180;
    break;

    case 6:
      ui8_motor_rotor_absolute_position = ANGLE_240;
    break;

    case 2:
      ui8_motor_rotor_absolute_position = ANGLE_300;

      flag_count_speed = 1;
    break;

    default:
    return;
    break;
  }

  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);

  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
  interpolation_sum = 0;
}

// runs every 64us (PWM frequency)
void motor_fast_loop (void)
{
  // count number of fast loops / PWM cycles
  if (PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    PWM_cycles_counter++;
  }
  else
  {
    PWM_cycles_counter = 0;
    motor_speed_erps = 0;
    interpolation_angle_step = (SVM_TABLE_LEN * 1000) / PWM_CYCLES_COUNTER_MAX;
    interpolation_sum = 0;
  }

#define DO_INTERPOLATION 0 // may be usefull when debugging
#if DO_INTERPOLATION == 1
  // calculate the interpolation angle
  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
  if ( !(ui8_duty_cycle < 5 && ui8_duty_cycle > -5) || motor_speed_erps >= 80)
  {
    if (interpolation_sum <= (60 * 1000)) // interpolate only for angle <= 60º
    {
      // add step interpolation value to motor_rotor_position
      interpolation_sum += interpolation_angle_step;
      interpolation_angle = (int16_t) (interpolation_sum / 1000);

      ui8_motor_rotor_position = mod_angle_degrees(ui8_motor_rotor_absolute_position + ui8_position_correction_value + interpolation_angle);
    }
  }
#endif

  apply_duty_cycle (ui8_duty_cycle);
}

void apply_duty_cycle (uint8_t ui8_duty_cycle_value)
{
  static uint8_t ui8__duty_cycle;
  static uint8_t ui8_temp;

  ui8__duty_cycle = ui8_duty_cycle_value;

  // scale and apply _duty_cycle
  ui8_temp = ui8_svm_table[ui8_motor_rotor_position];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value_a = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value_a >> 8);
    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value_a = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value_a >> 8);
    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // add 120 degrees and limit
  ui8_temp = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 120)];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value_b = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value_b >> 8);
    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value_b = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value_b >> 8);
    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // subtract 120 degrees and limit
  ui8_temp = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 240)];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value_c = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value_c >> 8);
    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value_c = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
    ui8_temp = (uint8_t) (ui16_value_c >> 8);
    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // set final duty_cycle value
  TIM1_SetCompare1((uint16_t) (ui8_value_a << 1));
  TIM1_SetCompare2((uint16_t) (ui8_value_c << 1));
  TIM1_SetCompare3((uint16_t) (ui8_value_b << 1));
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

int16_t mod_angle_degrees (int16_t value)
{
  int16_t ret = value % 360;
  if(ret < 0)
    ret += 360;
  return ret;
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

  TIM1_SetCompare1(126 << 1);
  TIM1_SetCompare2(126 << 1);
  TIM1_SetCompare3(126 << 1);
  hall_sensors_read_and_action (); // needed to start the motor

  while (1)
  {
    static uint16_t adc_value;
    adc_value = adc_read_throttle ();
    ui8_duty_cycle = (uint8_t) map (adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 255);

//    hall_sensors_read_and_action ();

//    ui8_duty_cycle = 255;
//
//    if (ui8_motor_rotor_position < 255)
//      ui8_motor_rotor_position++;
//    else
//      ui8_motor_rotor_position = 0;

//    printf("%d\n", ui8_motor_rotor_position);
  }
}
