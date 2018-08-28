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
uint32_t CheckSpeed (uint16_t current_target, uint16_t speed);
extern uint32_t ui32_SPEED_km_h;
extern uint32_t ui32_erps_filtered;
extern uint16_t ui16_current_cal_b;
extern uint8_t ui8_regen_throttle;
extern int8_t i8_motor_temperature;
extern uint8_t ui8_control_state;
extern uint32_t uint32_current_target;


#endif /* _SPEED_H */
