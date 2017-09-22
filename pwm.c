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
#include "adc.h"

int8_t i8_svm_table [SVM_TABLE_LEN] =
{
    3	,
    9	,
    15	,
    20	,
    25	,
    31	,
    36	,
    41	,
    47	,
    52	,
    57	,
    63	,
    68	,
    73	,
    78	,
    83	,
    88	,
    93	,
    98	,
    103	,
    107	,
    111	,
    112	,
    114	,
    115	,
    116	,
    118	,
    119	,
    120	,
    121	,
    122	,
    123	,
    124	,
    124	,
    125	,
    125	,
    126	,
    126	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    126	,
    126	,
    125	,
    125	,
    124	,
    123	,
    123	,
    122	,
    121	,
    120	,
    119	,
    118	,
    116	,
    115	,
    114	,
    112	,
    111	,
    111	,
    113	,
    114	,
    116	,
    117	,
    118	,
    119	,
    120	,
    121	,
    122	,
    123	,
    124	,
    124	,
    125	,
    126	,
    126	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    127	,
    126	,
    126	,
    125	,
    125	,
    124	,
    123	,
    122	,
    121	,
    121	,
    119	,
    118	,
    117	,
    116	,
    115	,
    113	,
    112	,
    110	,
    105	,
    101	,
    96	,
    91	,
    86	,
    81	,
    76	,
    71	,
    66	,
    60	,
    55	,
    50	,
    45	,
    39	,
    34	,
    29	,
    23	,
    18	,
    12	,
    7	,
    2	,
    -4	,
    -9	,
    -15	,
    -20	,
    -25	,
    -31	,
    -36	,
    -41	,
    -47	,
    -52	,
    -57	,
    -63	,
    -68	,
    -73	,
    -78	,
    -83	,
    -88	,
    -93	,
    -98	,
    -103	,
    -107	,
    -111	,
    -112	,
    -114	,
    -115	,
    -116	,
    -118	,
    -119	,
    -120	,
    -121	,
    -122	,
    -123	,
    -124	,
    -124	,
    -125	,
    -125	,
    -126	,
    -126	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -126	,
    -126	,
    -125	,
    -125	,
    -124	,
    -123	,
    -123	,
    -122	,
    -121	,
    -120	,
    -119	,
    -118	,
    -116	,
    -115	,
    -114	,
    -112	,
    -111	,
    -111	,
    -113	,
    -114	,
    -116	,
    -117	,
    -118	,
    -119	,
    -120	,
    -121	,
    -122	,
    -123	,
    -124	,
    -124	,
    -125	,
    -126	,
    -126	,
    -126	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -127	,
    -126	,
    -126	,
    -125	,
    -125	,
    -124	,
    -123	,
    -122	,
    -121	,
    -121	,
    -119	,
    -118	,
    -117	,
    -116	,
    -115	,
    -113	,
    -112	,
    -110	,
    -105	,
    -101	,
    -96	,
    -91	,
    -86	,
    -81	,
    -76	,
    -71	,
    -65	,
    -60	,
    -55	,
    -50	,
    -45	,
    -39	,
    -34	,
    -29	,
    -23	,
    -18	,
    -12	,
    -7	,
    -2
};

uint8_t ui8_duty_cycle = 0;
uint8_t ui8_duty_cycle_target = 0;
uint8_t ui8_duty_cycle_ramp_inverse_step = 0;
uint8_t ui8_counter_duty_cycle_ramp = 0;
uint16_t ui16_value_a;
uint16_t ui16_value_b;
uint16_t ui16_value_c;
uint16_t ui16_value;

void pwm_set_duty_cycle (uint8_t value)
{
  ui8_duty_cycle_target = value;
}

void pwm_init (void)
{
// TIM1 Peripheral Configuration
  TIM1_DeInit();

  TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
		    TIM1_COUNTERMODE_CENTERALIGNED1,
		    (512 - 1), // clock = 16MHz; counter period = 1024; PWM freq = 16MHz / 1024 = 15.625kHz;
		    //(BUT PWM center aligned mode needs twice the frequency)
		    1); // will fire the TIM1_IT_UPDATE at every PWM period cycle, instead of 2 times if this value was 0

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
	       TIM1_OUTPUTSTATE_ENABLE,
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
		  TIM1_AUTOMATICOUTPUT_ENABLE);

  TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);

  TIM1_SetCompare1(255);
  TIM1_SetCompare2(255);
  TIM1_SetCompare3(255);

  TIM1_Cmd(ENABLE); // TIM1 counter enable
  TIM1_CtrlPWMOutputs(ENABLE); // main Output Enable
}

void pwm_duty_cycle_controller (void)
{
  uint8_t ui8_temp;

  // verify motor max current limit
  ui8_temp = ui8_adc_read_motor_total_current ();
  if (ui8_temp > ui8_motor_current)  // motor max current, reduce duty_cycle
  {
    if (ui8_duty_cycle > 0)
    {
      ui8_duty_cycle--;
    }
  }
  else // no motor max current, adjust duty_cycle to duty_cycle_target, including ramping
  {
    if (ui8_counter_duty_cycle_ramp++ >= ui8_duty_cycle_ramp_inverse_step)
    {
      ui8_counter_duty_cycle_ramp = 0;

      // implement duty_cycle ramp
      if (ui8_duty_cycle_target > ui8_duty_cycle)
      {
	ui8_duty_cycle++;
      }
      else if (ui8_duty_cycle_target < ui8_duty_cycle)
      {
	ui8_duty_cycle--;
      }
    }
  }

  pwm_apply_duty_cycle (ui8_duty_cycle);
}

void pwm_apply_duty_cycle (uint8_t ui8_duty_cycle_value)
{
  int16_t i16_temp;

  // scale table values with duty_cycle value factor
  i16_temp = i8_svm_table [ui8_motor_rotor_position] * ui8_duty_cycle_value;
  ui16_value_a = i16_temp + 32512;
  ui16_value_a = ui16_value_a >> 7;

  i16_temp = i8_svm_table [(uint8_t) (ui8_motor_rotor_position + 85 /* 120º */)] * ui8_duty_cycle_value;
  ui16_value_b = i16_temp + 32512;
  ui16_value_b = ui16_value_b >> 7;

  i16_temp = i8_svm_table [(uint8_t) (ui8_motor_rotor_position + 171 /* 240º */)] * ui8_duty_cycle_value;
  ui16_value_c = i16_temp + 32512;
  ui16_value_c = ui16_value_c >> 7;

  // apply duty_cycle value
  TIM1_SetCompare1(ui16_value_a);
  TIM1_SetCompare2(ui16_value_c);
  TIM1_SetCompare3(ui16_value_b);
}

