/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s_gpio.h"
#include "stm8s_tim1.h"
#include "motor.h"
#include "gpio.h"
#include "motor.h"

#if (SVM_TABLE == SVM)
uint8_t ui8_svm_table [SVM_TABLE_LEN] =
{
    131	,
    137	,
    142	,
    147	,
    153	,
    158	,
    163	,
    169	,
    174	,
    179	,
    185	,
    190	,
    195	,
    200	,
    205	,
    210	,
    215	,
    220	,
    225	,
    230	,
    235	,
    238	,
    240	,
    241	,
    243	,
    244	,
    245	,
    246	,
    247	,
    248	,
    249	,
    250	,
    251	,
    252	,
    252	,
    253	,
    253	,
    254	,
    254	,
    254	,
    255	,
    255	,
    255	,
    255	,
    255	,
    254	,
    254	,
    254	,
    253	,
    253	,
    252	,
    252	,
    251	,
    250	,
    249	,
    248	,
    247	,
    246	,
    245	,
    244	,
    242	,
    241	,
    240	,
    238	,
    239	,
    240	,
    242	,
    243	,
    244	,
    246	,
    247	,
    248	,
    249	,
    250	,
    250	,
    251	,
    252	,
    253	,
    253	,
    254	,
    254	,
    254	,
    255	,
    255	,
    255	,
    255	,
    255	,
    255	,
    254	,
    254	,
    254	,
    253	,
    253	,
    252	,
    251	,
    251	,
    250	,
    249	,
    248	,
    247	,
    246	,
    245	,
    243	,
    242	,
    241	,
    239	,
    238	,
    233	,
    228	,
    223	,
    218	,
    213	,
    208	,
    203	,
    198	,
    193	,
    188	,
    182	,
    177	,
    172	,
    167	,
    161	,
    156	,
    150	,
    145	,
    140	,
    134	,
    129	,
    123	,
    118	,
    113	,
    107	,
    102	,
    96	,
    91	,
    86	,
    80	,
    75	,
    70	,
    65	,
    59	,
    54	,
    49	,
    44	,
    39	,
    34	,
    29	,
    25	,
    20	,
    16	,
    15	,
    13	,
    12	,
    11	,
    9	,
    8	,
    7	,
    6	,
    5	,
    4	,
    4	,
    3	,
    2	,
    2	,
    1	,
    1	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    1	,
    1	,
    2	,
    2	,
    3	,
    4	,
    4	,
    5	,
    6	,
    7	,
    8	,
    9	,
    11	,
    12	,
    13	,
    15	,
    16	,
    16	,
    14	,
    13	,
    11	,
    10	,
    9	,
    8	,
    7	,
    6	,
    5	,
    4	,
    3	,
    3	,
    2	,
    1	,
    1	,
    1	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    1	,
    1	,
    2	,
    2	,
    3	,
    4	,
    5	,
    6	,
    7	,
    8	,
    9	,
    10	,
    11	,
    12	,
    14	,
    15	,
    17	,
    22	,
    27	,
    31	,
    36	,
    41	,
    46	,
    51	,
    56	,
    62	,
    67	,
    72	,
    77	,
    83	,
    88	,
    93	,
    99	,
    104	,
    109	,
    115	,
    120	,
    126
};
#elif (SVM_TABLE == SINE_SVM)
uint8_t ui8_svm_table [SVM_TABLE_LEN] =
{
    8	,
    19	,
    30	,
    41	,
    51	,
    62	,
    73	,
    84	,
    94	,
    105	,
    115	,
    126	,
    136	,
    146	,
    157	,
    167	,
    177	,
    187	,
    196	,
    206	,
    216	,
    223	,
    226	,
    228	,
    231	,
    234	,
    236	,
    239	,
    241	,
    243	,
    245	,
    246	,
    248	,
    249	,
    251	,
    252	,
    253	,
    254	,
    254	,
    255	,
    255	,
    256	,
    256	,
    256	,
    255	,
    255	,
    254	,
    254	,
    253	,
    252	,
    251	,
    249	,
    248	,
    246	,
    245	,
    243	,
    241	,
    238	,
    236	,
    234	,
    231	,
    228	,
    225	,
    222	,
    224	,
    227	,
    229	,
    232	,
    235	,
    237	,
    239	,
    241	,
    243	,
    245	,
    247	,
    249	,
    250	,
    251	,
    252	,
    253	,
    254	,
    255	,
    255	,
    255	,
    256	,
    256	,
    255	,
    255	,
    255	,
    254	,
    253	,
    252	,
    251	,
    250	,
    249	,
    247	,
    246	,
    244	,
    242	,
    240	,
    238	,
    235	,
    233	,
    230	,
    227	,
    224	,
    221	,
    212	,
    202	,
    192	,
    182	,
    172	,
    162	,
    152	,
    142	,
    132	,
    121	,
    111	,
    100	,
    90	,
    79	,
    68	,
    58	,
    47	,
    36	,
    25	,
    14	,
    4	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0
};
#elif (SVM_TABLE == SINE)
uint8_t ui8_svm_table [SVM_TABLE_LEN] =
{
    5	,
    12	,
    18	,
    24	,
    30	,
    37	,
    43	,
    49	,
    55	,
    61	,
    67	,
    73	,
    79	,
    85	,
    91	,
    97	,
    103	,
    108	,
    114	,
    120	,
    125	,
    131	,
    136	,
    141	,
    146	,
    151	,
    156	,
    161	,
    166	,
    171	,
    176	,
    180	,
    184	,
    189	,
    193	,
    197	,
    201	,
    205	,
    208	,
    212	,
    215	,
    219	,
    222	,
    225	,
    228	,
    231	,
    233	,
    236	,
    238	,
    240	,
    243	,
    244	,
    246	,
    248	,
    249	,
    251	,
    252	,
    253	,
    254	,
    255	,
    255	,
    256	,
    256	,
    256	,
    256	,
    256	,
    255	,
    255	,
    254	,
    253	,
    253	,
    251	,
    250	,
    249	,
    247	,
    246	,
    244	,
    242	,
    240	,
    237	,
    235	,
    232	,
    230	,
    227	,
    224	,
    221	,
    217	,
    214	,
    211	,
    207	,
    203	,
    199	,
    195	,
    191	,
    187	,
    183	,
    178	,
    174	,
    169	,
    164	,
    159	,
    154	,
    149	,
    144	,
    139	,
    134	,
    128	,
    123	,
    117	,
    112	,
    106	,
    100	,
    94	,
    89	,
    83	,
    77	,
    71	,
    65	,
    59	,
    53	,
    46	,
    40	,
    34	,
    28	,
    22	,
    15	,
    9	,
    3	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0
};
#endif

uint8_t ui8_duty_cycle;

static uint8_t ui8_value_a;
static uint8_t ui8_value_b;
static uint8_t ui8_value_c;

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

uint16_t ui16_adc_current_phase_B = 0;
uint8_t ui8_adc_current_phase_B_flag = 0;
uint16_t ui16_adc_current_phase_B_temp = 0;
uint8_t adc_total_current = 0;
uint8_t ui8_adc_total_current_busy_flag = 0;
uint8_t adc_throttle = 0;

void set_duty_cycle (uint8_t value)
{
  ui8_duty_cycle = value;
}

void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
//  uint8_t ui8_temp;
//  uint16_t ui16_temp;
//  static uint16_t ui16_last_value;
//
//  ui8_PWM_cycles_counter_1++;
//  if (ui8_adc_current_phase_B_flag == 1)
//  {
//    // find the adc_current_phase_B minimum value
//    ui16_temp = ADC1_GetConversionValue ();
//    if (ui16_temp < ui16_adc_current_phase_B_temp)
//    {
//      ui16_adc_current_phase_B_temp = ui16_temp;
////      ui8_PWM_cycles_counter_value = ui8_PWM_cycles_counter_1;
//    }
//  }

  hall_sensors_read_and_action ();

//  /****************************************************************
//  * Motor control: angle interpolation and PWM control
//  */
//  motor_fast_loop ();
//  /****************************************************************/

  // clear the interrupt pending bit for TIM1
  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

void hall_sensor_init (void)
{
  GPIO_Init(HALL_SENSORS__PORT,
	    (GPIO_Pin_TypeDef)(HALL_SENSOR_A__PIN | HALL_SENSOR_B__PIN | HALL_SENSOR_C__PIN),
	    GPIO_MODE_IN_FL_NO_IT);
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


#define DISABLE_PWM_CHANNELS_1_3

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

void hall_sensors_read_and_action (void)
{
  static int8_t hall_sensors;
  static int8_t hall_sensors_last;

  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));
  if (hall_sensors != hall_sensors_last)
  {
    hall_sensors_last = hall_sensors;

    switch (hall_sensors)
    {
      case 3:
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

	ui8_adc_current_phase_B_flag = 0;
	ui16_adc_current_phase_B = ui16_adc_current_phase_B_temp;
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

//// runs every 64us (PWM frequency)
//void motor_fast_loop (void)
//{
//  // count number of fast loops / PWM cycles
//  if (ui16_PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
//  {
//    ui16_PWM_cycles_counter++;
//  }
//  else
//  {
//    ui16_PWM_cycles_counter = 0;
//    ui8_last_counter_value = 0;
//    ui16_interpolation_angle_step = 0xffff; //(SVM_TABLE_LEN_x1024) / PWM_CYCLES_COUNTER_MAX;
//    ui16_speed_inverse = 0xffff;
//  }
//
//#define DO_INTERPOLATION 1 // may be usefull when debugging
//#if DO_INTERPOLATION == 1
//  // calculate the interpolation angle
//  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
////  if ((ui8_duty_cycle > 10) && (ui16_speed_inverse < 300))
//  if (ui16_speed_inverse < SPEED_INVERSE_INTERPOLATION)
//  {
//    if (ui8_interpolation_angle < ANGLE_360) // interpolate only for angle <= 360º
//    {
//      uint16_t ui16_temp;
//
//      ui16_temp = (uint16_t) ui16_PWM_cycles_counter << 7;
//      ui8_interpolation_angle = (uint8_t) (ui16_temp / ui16_interpolation_angle_step);
//
////      if (ui8_interpolation_angle != ui8_interpolation_angle_old)
////      {
////	debug_pin_set ();
////	debug_pin_reset ();
////	ui8_interpolation_angle_old = ui8_interpolation_angle;
////      }
//
//      ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value + ui8_interpolation_angle);
//    }
//  }
//#endif
//
//  apply_duty_cycle (ui8_duty_cycle);
//}
//
//void apply_duty_cycle (uint8_t ui8_duty_cycle_value)
//{
//#if (SVM_TABLE == SVM)
//  static uint8_t ui8__duty_cycle;
//  static uint8_t ui8_temp;
//
//  ui8__duty_cycle = ui8_duty_cycle_value;
//
//  // scale and apply _duty_cycle
//  ui8_temp = ui8_svm_table[ui8_motor_rotor_position];
//  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
//  {
//    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
//    ui8_temp = (uint8_t) (ui16_value >> 8);
//    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
//  }
//  else
//  {
//    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
//    ui8_temp = (uint8_t) (ui16_value >> 8);
//    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
//  }
//
//  // add 120 degrees and limit
//  ui8_temp = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 85 /* 120º */)];
//  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
//  {
//    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
//    ui8_temp = (uint8_t) (ui16_value >> 8);
//    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
//  }
//  else
//  {
//    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
//    ui8_temp = (uint8_t) (ui16_value >> 8);
//    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
//  }
//
//  // subtract 120 degrees and limit
//  ui8_temp = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 171 /* 240º */)];
//  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
//  {
//    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
//    ui8_temp = (uint8_t) (ui16_value >> 8);
//    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
//  }
//  else
//  {
//    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
//    ui8_temp = (uint8_t) (ui16_value >> 8);
//    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
//  }
//
//  // set final duty_cycle value
//  TIM1_SetCompare1((uint16_t) (ui8_value_a << 1));
//  TIM1_SetCompare2((uint16_t) (ui8_value_c << 1));
//  TIM1_SetCompare3((uint16_t) (ui8_value_b << 1));
//#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM)
//  // scale and apply _duty_cycle
//  ui8_value_a = ui8_svm_table[ui8_motor_rotor_position];
//  ui16_value = (uint16_t) (ui8_value_a * ui8_duty_cycle_value);
//  ui8_value_a = (uint8_t) (ui16_value >> 8);
//
//  // add 120 degrees and limit
//  ui8_value_b = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 85 /* 120º */)];
//  ui16_value = (uint16_t) (ui8_value_b * ui8_duty_cycle_value);
//  ui8_value_b = (uint8_t) (ui16_value >> 8);
//
//  // subtract 120 degrees and limit
//  ui8_value_c = ui8_svm_table[(uint8_t) (ui8_motor_rotor_position + 171 /* 240º */)];
//  ui16_value = (uint16_t) (ui8_value_c * ui8_duty_cycle_value);
//  ui8_value_c = (uint8_t) (ui16_value >> 8);
//
//  // set final duty_cycle value
//  TIM1_SetCompare1((uint16_t) (ui8_value_a << 2));
//  TIM1_SetCompare2((uint16_t) (ui8_value_c << 2));
//  TIM1_SetCompare3((uint16_t) (ui8_value_b << 2));
//#endif
//}
//
//int8_t get_motor_rotation_direction (void)
//{
//  return LEFT;
//}
