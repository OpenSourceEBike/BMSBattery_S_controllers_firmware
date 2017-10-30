/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MOTOR_CONTROLLER_LOW_LEVEL_H_
#define _MOTOR_CONTROLLER_LOW_LEVEL_H_

#include "main.h"
#include "interrupts.h"

// motor states
#define BLOCK_COMMUTATION 1
#define SINEWAVE 2

#define MOTOR_STATE_STOP 0
#define MOTOR_STATE_COAST 1
#define MOTOR_STATE_RUNNING 2

#define MOTOR_CONTROLLER_STATE_OK		1
#define MOTOR_CONTROLLER_STATE_BRAKE		2
#define MOTOR_CONTROLLER_STATE_OVER_CURRENT	4
#define MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE	8
#define MOTOR_CONTROLLER_STATE_THROTTLE_ERROR	16

extern uint8_t ui8_motor_rotor_position;
extern uint8_t ui8_position_correction_value;
extern uint8_t ui8_motor_commutation_type;
extern uint16_t ui16_PWM_cycles_counter_total;
extern uint8_t ui8_ADC_id_current;
extern uint8_t ui8_motor_total_current_flag;
extern uint8_t ui8_ADC_motor_current_max;
extern uint8_t ui8_ADC_motor_regen_current_max;
extern uint8_t ui8_hall_sensors;
extern uint8_t ui8_motor_rotor_absolute_position;
extern uint8_t ui8_motor_state;
extern uint8_t ui8_adc_motor_total_current;

/***************************************************************************************/
// Motor interface
void hall_sensor_init (void); // must be called before using the motor
void motor_init (void); // must be called before using the motor
void motor_enable_PWM (void);
void motor_disable_PWM (void);
void motor_set_pwm_duty_cycle_target (uint8_t value);
void motor_set_current_max (uint8_t value); // steps of 0.5A each step
uint8_t motor_get_current_max (void); // steps of 0.5A each step
void motor_set_regen_current_max (uint8_t value); // steps of 0.5A each step
void motor_set_pwm_duty_cycle_ramp_inverse_step (uint8_t value); // each step = 64us
uint16_t motor_get_motor_speed_erps (void);
uint16_t motor_get_er_PWM_ticks (void); // PWM ticks per electronic rotation
void motor_controller_set_state (uint8_t state);
void motor_controller_reset_state (uint8_t state);
uint8_t motor_controller_get_state (void);
uint8_t motor_controller_state_is_set (uint8_t state);
/***************************************************************************************/

void hall_sensors_read_and_action (void);
void motor_fast_loop (void);

#endif /* _MOTOR_CONTROLLER_LOW_LEVEL_H_ */
