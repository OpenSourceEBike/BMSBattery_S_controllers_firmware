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
#include "pwm.h"

uint16_t ui16_svm_table [SVM_TABLE_LEN] =
{
    281	,
    291	,
    301	,
    311	,
    321	,
    331	,
    341	,
    351	,
    361	,
    371	,
    381	,
    390	,
    400	,
    410	,
    419	,
    428	,
    438	,
    447	,
    456	,
    465	,
    474	,
    480	,
    483	,
    486	,
    488	,
    491	,
    493	,
    495	,
    497	,
    499	,
    501	,
    503	,
    504	,
    505	,
    507	,
    508	,
    509	,
    509	,
    510	,
    510	,
    511	,
    511	,
    511	,
    511	,
    511	,
    510	,
    510	,
    509	,
    508	,
    508	,
    506	,
    505	,
    504	,
    502	,
    501	,
    499	,
    497	,
    495	,
    493	,
    491	,
    488	,
    486	,
    483	,
    480	,
    481	,
    484	,
    487	,
    489	,
    492	,
    494	,
    496	,
    498	,
    500	,
    502	,
    503	,
    505	,
    506	,
    507	,
    508	,
    509	,
    510	,
    510	,
    511	,
    511	,
    511	,
    511	,
    511	,
    511	,
    510	,
    510	,
    509	,
    508	,
    507	,
    506	,
    505	,
    503	,
    502	,
    500	,
    498	,
    496	,
    494	,
    492	,
    490	,
    487	,
    485	,
    482	,
    479	,
    470	,
    461	,
    452	,
    443	,
    434	,
    424	,
    415	,
    406	,
    396	,
    386	,
    377	,
    367	,
    357	,
    347	,
    337	,
    327	,
    317	,
    307	,
    297	,
    287	,
    277	,
    267	,
    257	,
    247	,
    237	,
    226	,
    216	,
    207	,
    197	,
    187	,
    177	,
    167	,
    157	,
    148	,
    138	,
    129	,
    119	,
    110	,
    101	,
    92	,
    83	,
    74	,
    67	,
    65	,
    62	,
    59	,
    57	,
    55	,
    52	,
    50	,
    49	,
    47	,
    45	,
    44	,
    42	,
    41	,
    40	,
    39	,
    38	,
    38	,
    37	,
    37	,
    37	,
    37	,
    37	,
    37	,
    37	,
    38	,
    39	,
    39	,
    40	,
    41	,
    43	,
    44	,
    45	,
    47	,
    49	,
    51	,
    53	,
    55	,
    57	,
    60	,
    62	,
    65	,
    68	,
    66	,
    64	,
    61	,
    59	,
    56	,
    54	,
    52	,
    50	,
    48	,
    46	,
    45	,
    43	,
    42	,
    41	,
    40	,
    39	,
    38	,
    38	,
    37	,
    37	,
    37	,
    37	,
    37	,
    37	,
    38	,
    38	,
    39	,
    40	,
    41	,
    42	,
    43	,
    44	,
    46	,
    48	,
    49	,
    51	,
    53	,
    56	,
    58	,
    60	,
    63	,
    66	,
    69	,
    78	,
    87	,
    96	,
    105	,
    114	,
    123	,
    133	,
    142	,
    152	,
    162	,
    171	,
    181	,
    191	,
    201	,
    211	,
    221	,
    231	,
    241	,
    251	,
    261	,
    271
};

uint16_t ui16_duty_cycle = 0;
uint16_t ui16_duty_cycle_target = 0;
uint32_t ui32_value_a;
uint32_t ui32_value_b;
uint32_t ui32_value_c;

void pwm_set_duty_cycle (uint16_t value)
{
  ui16_duty_cycle_target = value;
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
#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM_ORIGINAL)
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

  TIM1_OC1PreloadConfig (ENABLE);
  TIM1_OC2PreloadConfig (ENABLE);
  TIM1_OC3PreloadConfig (ENABLE);

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

void pwm_duty_cycle_controller (void)
{
  // limit PWM increase/decrease rate --- comment from stancecoke: this part does just nothing? ui8_counter is never increased?!
  static uint8_t ui8_counter;
  if (ui8_counter++ > PWM_DUTY_CYCLE_CONTROLLER_COUNTER)
  {
    ui8_counter = 0;

    // increment or decrement duty_cycle
    if (ui16_duty_cycle_target > ui16_duty_cycle) { ui16_duty_cycle++; }
    else if (ui16_duty_cycle_target < ui16_duty_cycle) { ui16_duty_cycle--; }
  }

//#define DO_DUTY_CYCLE_RAMP 1
#if DO_DUTY_CYCLE_RAMP == 1
  pwm_apply_duty_cycle (ui16_duty_cycle);
#else
  pwm_apply_duty_cycle (ui16_duty_cycle_target);
#endif
}

void pwm_apply_duty_cycle (int16_t i16_duty_cycle_value)
{
  static uint32_t ui32_temp;

  // scale and apply _duty_cycle
  ui32_temp = ui16_svm_table[ui8_motor_rotor_position];
  if (ui32_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui32_value_a = (ui32_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) * i16_duty_cycle_value;
    ui32_temp = ui32_value_a >> 9;
    ui32_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui32_temp;
  }
  else
  {
    ui32_value_a = (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui32_temp) * i16_duty_cycle_value;
    ui32_temp = ui32_value_a >> 9;
    ui32_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui32_temp;
  }

  // add 120 degrees and limit
  ui32_temp = ui16_svm_table[(uint8_t) (ui8_motor_rotor_position +  85 /* 120º */)];
  if (ui32_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui32_value_b = (ui32_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) * i16_duty_cycle_value;
    ui32_temp = ui32_value_b >> 9;
    ui32_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui32_temp;
  }
  else
  {
    ui32_value_b = (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui32_temp) * i16_duty_cycle_value;
    ui32_temp = ui32_value_b >> 9;
    ui32_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui32_temp;
  }

  // subtract 120 degrees and limit
  ui32_temp = ui16_svm_table[(uint8_t) (ui8_motor_rotor_position + 171 /* 240º */)];
  if (ui32_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui32_value_c = (ui32_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) * i16_duty_cycle_value;
    ui32_temp = ui32_value_c >> 9;
    ui32_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui32_temp;
  }
  else
  {
    ui32_value_c = (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui32_temp) * i16_duty_cycle_value;
    ui32_temp = ui32_value_c >> 9;
    ui32_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui32_temp;
  }

  // set final duty_cycle value
  TIM1_SetCompare1((uint16_t) ui32_value_a);
  TIM1_SetCompare2((uint16_t) ui32_value_c);
  TIM1_SetCompare3((uint16_t) ui32_value_b);
}
