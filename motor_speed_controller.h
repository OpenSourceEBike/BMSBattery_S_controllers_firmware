/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MOTOR_SPEED_CONTROLLER_H_
#define _MOTOR_SPEED_CONTROLLER_H_

#include "main.h"

void motor_speed_controller_set_erps (uint16_t erps);
// call every 100ms
void motor_speed_controller (void);

#endif /* _MOTOR_SPEED_CONTROLLER_H_ */
