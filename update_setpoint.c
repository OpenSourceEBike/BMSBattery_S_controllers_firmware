/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke, 2017.
 *
 * Released under the GPL License, Version 3
 */
#include <stdint.h>
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


static uint16_t ui16_setpoint;
static uint32_t ui32_SPEED_km_h;

uint8_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old)
{
  ui16_setpoint=(fummelfaktor*sumtorque)/PAS; 			//calculate setpoint
  ui32_SPEED_km_h=(wheel_circumference*36*15625)/(10000*(uint32_t)speed);	//calculate speed in km/h conversion fr	om sec to hour --> *3600, conversion from mm to km --> /1000000, tic frequency 15625 Hz
  if (ui32_SPEED_km_h>limit){ui16_setpoint=setpoint_old-1;} 	//reduce old setpoint, if you are riding too fast
  if (ui16_PAS_Counter>timeout){ui16_setpoint=0;}		//stop motor if not pedaling for delay defined in "timeout"


  return ui16_setpoint;
}
