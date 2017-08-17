/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MOTOR_H
#define _MOTOR_H

#include "main.h"
#include "interrupts.h"

// direction of motor movement
#define RIGHT 		1
#define LEFT 		2

// motor states
#define MOTOR_STATE_COAST 0
#define MOTOR_STATE_RUNNING_VERY_SLOW 1
#define MOTOR_STATE_RUNNING 2

extern int16_t i16_motor_rotor_position;
extern int16_t i16_position_correction_value;
extern uint16_t ui16_speed_inverse;

void hall_sensor_init (void);
void hall_sensors_read_and_action (void);
void motor_fast_loop (void);
int8_t get_motor_rotation_direction (void);
int16_t i16_mod_angle_degrees (int16_t value);

#endif /* _MOTOR_H_ */
