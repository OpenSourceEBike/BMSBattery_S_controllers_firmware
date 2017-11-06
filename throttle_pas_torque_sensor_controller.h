/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _THROTTLE_PAS_TORQUE_SENSOR_CONTROLLER_H_
#define _THROTTLE_PAS_TORQUE_SENSOR_CONTROLLER_H_

#include <stdint.h>
#include "main.h"

void throttle_pas_torque_sensor_controller (void);
void set_cruise_control_state (uint8_t value);
void cruise_control_stop (void);
uint8_t cruise_control_is_set (void);
uint8_t throttle_is_set (void);

#endif /* _THROTTLE_PAS_TORQUE_SENSOR_CONTROLLER_H_ */
