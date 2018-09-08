/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _update_setpoint_H
#define _update_setpoint_H

#include "main.h"

uint16_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old );
extern uint32_t ui32_erps_filtered;
extern uint8_t ui8_regen_throttle;
extern int8_t i8_motor_temperature;
extern uint8_t ui8_regen_flag;


#endif /* _SPEED_H */
