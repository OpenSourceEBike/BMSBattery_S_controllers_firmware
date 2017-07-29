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

#define SVM 1
#define SINE_SVM 2
#define SINE 3

#define SVM_TABLE SVM

extern uint8_t ui8_svm_table [SVM_TABLE_LEN];

void hall_sensor_init (void);
void hall_sensors_read_and_action (void);
void pwm_init (void);
void set_duty_cycle (uint8_t value);
void apply_duty_cycle (uint8_t ui8_duty_cycle_value);
void motor_fast_loop (void);
int8_t get_motor_rotation_direction (void);

#endif /* _MOTOR_H_ */
