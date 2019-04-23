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

// motor states
#define MOTOR_STATE_COAST 0
#define MOTOR_STATE_RUNNING_NO_INTERPOLATION 1
#define MOTOR_STATE_RUNNING_INTERPOLATION_60 2
#define MOTOR_STATE_RUNNING_INTERPOLATION_360 3

extern uint8_t ui8_sinetable_position;
extern uint16_t ui16_speed_inverse;
extern uint16_t ui16_PWM_cycles_counter_total;
extern uint16_t ui16_iq_current_ma;
extern uint16_t ui16_log;


void hall_sensor_init (void);
void hall_sensors_read_and_action (void);
void motor_fast_loop (void);
void watchdog_init (void);

#endif /* _MOTOR_H_ */
