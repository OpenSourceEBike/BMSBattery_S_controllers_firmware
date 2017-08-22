/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s.h"
#include "stm8s_it.h"
#include "gpio.h"
#include "main.h"
#include "interrupts.h"
#include "PAS.h"
#include "cruise_control.h"
#include "motor.h"
#include "pwm.h"
#include "adc.h"
#include "update_setpoint.h"


static uint32_t ui32_setpoint;
static uint32_t ui32_SPEED_km_h;

uint16_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old)
{
  ui32_setpoint=(fummelfaktor*sumtorque)/PAS; 			//calculate setpoint
  //printf("vor: spd %d, pas %d, sumtor %d, setpoint %lu\n", speed, PAS, sumtorque, ui32_setpoint);
  ui32_SPEED_km_h=(wheel_circumference*5625)/(100*(uint32_t)speed);	//calculate speed in km/h conversion fr	om sec to hour --> *3600, conversion from mm to km --> /1000000, tic frequency 15625 Hz
  if (ui32_SPEED_km_h>limit){ui32_setpoint=(uint32_t)setpoint_old-1;} 	//reduce old setpoint, if you are riding too fast
  if (ui16_PAS_Counter>timeout){ui32_setpoint=0;}		//stop motor if not pedaling for delay defined in "timeout"
  //printf("nach: spd %d, pas %d, sumtor %d, setpoint %lu\n", speed, PAS, sumtorque, ui32_setpoint);

  return ui32_setpoint;
}
