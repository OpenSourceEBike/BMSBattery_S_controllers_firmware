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
#define NO_INTERPOLATION_60_DEGREES 2
#define INTERPOLATION_60_DEGREES 3
#define INTERPOLATION_360_DEGREES 4

#define MOTOR_STATE_STOP 0
#define MOTOR_STATE_COAST 1
#define MOTOR_STATE_RUNNING 2

extern uint8_t ui8_motor_rotor_position;
extern uint8_t ui8_position_correction_value;
extern uint8_t ui8_motor_interpolation_state;
extern uint16_t ui16_PWM_cycles_counter_total;
extern uint8_t ui8_ADC_id_current;
extern uint8_t ui8_motor_total_current_flag;
extern uint8_t ui8_ADC_motor_current_max;
extern uint8_t ui8_ADC_motor_regen_current_max;
extern uint8_t ui8_ADC_motor_current_zero_value;
extern uint8_t ui8_hall_sensors;
extern uint8_t ui8_motor_rotor_absolute_position;
extern uint8_t ui8_motor_state;

/***************************************************************************************/
// Motor interface
void hall_sensor_init (void); // must be called before using the motor
void motor_init (void); // must be called before using the motor
void motor_set_mode_coast (void); // disable PWM output
void motor_set_mode_run (void); // enable PWM output
void motor_set_pwm_duty_cycle_target (uint8_t value);
void motor_set_current_max (uint8_t value); // steps of 0.5A each step
void motor_set_regen_current_max (uint8_t value); // steps of 0.5A each step
void motor_set_pwm_duty_cycle_ramp_inverse_step (uint8_t value); // each step = 64us
uint16_t motor_get_motor_speed_erps (void);
/***************************************************************************************/


void hall_sensors_read_and_action (void);
void motor_fast_loop (void);

#endif /* _MOTOR_H_ */
