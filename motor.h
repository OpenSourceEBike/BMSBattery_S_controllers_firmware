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
#define MOTOR_STATE_RUNNING_NO_INTERPOLATION_60_DEGREES 1
#define MOTOR_STATE_RUNNING_INTERPOLATION_60_DEGREES 2
#define MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES 2

extern uint8_t ui8_motor_rotor_position;
extern uint8_t ui8_position_correction_value;
extern uint8_t ui8_position_correction_value1;
extern uint16_t ui16_speed_inverse;
extern uint8_t ui8_motor_state;
extern uint16_t ui16_PWM_cycles_counter_total;
extern uint16_t ui16_motor_speed_erps;
extern uint16_t ui16_ADC_iq_current;
extern uint16_t ui16_iq_current_ma;
extern uint16_t ui16_ADC_iq_current_filtered;
extern uint16_t ui16_PWM_cycles_counter_total_div_4;

void hall_sensor_init (void);
void hall_sensors_read_and_action (void);
void motor_fast_loop (void);

#endif /* _MOTOR_H_ */
