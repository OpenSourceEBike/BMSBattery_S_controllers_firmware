/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _update_setpoint_H
#define _update_setpoint_H

#define p_factor 4L			//P-factor for speed control loop
#define max_change 4L			//maximum sudden change of setpoint before the motor stops working
//#define current_cal_a 1		// factor a for Battery Current linear calibration
//#define current_cal_b -70		// factor a for Battery Current linear calibration
#include "main.h"

uint16_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old );
uint32_t PI_control (uint16_t ist, uint16_t soll);
extern uint32_t ui32_SPEED_km_h;


#endif /* _SPEED_H */
