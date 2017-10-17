/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MOTOR_CONTROLLER_HIGH_LEVEL_H_
#define _MOTOR_CONTROLLER_HIGH_LEVEL_H_

#include "main.h"

void motor_controller_high_level (void);
void motor_battery_voltage_protection (void);
uint8_t motor_get_ADC_battery_voltage_filtered (void);
void motor_speed_controller_set_erps (uint16_t erps);
// call every 100ms
void motor_speed_controller (void);

#endif /* _MOTOR_CONTROLLER_HIGH_LEVEL_H_ */
