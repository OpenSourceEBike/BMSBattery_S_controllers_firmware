/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MOTOR_H_
#define _MOTOR_H_

#include <stdint.h>

// motor states
#define BLOCK_COMMUTATION 			1
#define SINEWAVE_INTERPOLATION_60_DEGREES 	2
#define SINEWAVE_INTERPOLATION_360_DEGREES 	3

#define MOTOR_CONTROLLER_STATE_OK		1
#define MOTOR_CONTROLLER_STATE_BRAKE		2
#define MOTOR_CONTROLLER_STATE_OVER_CURRENT	4
#define MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE	8
#define MOTOR_CONTROLLER_STATE_OVER_VOLTAGE	16
#define MOTOR_CONTROLLER_STATE_THROTTLE_ERROR	32
#define MOTOR_CONTROLLER_STATE_MOTOR_BLOCKED	64

extern uint8_t ui8_motor_commutation_type;
extern volatile uint8_t ui8_angle_correction;
extern volatile uint8_t ui8_adc_motor_current;
extern uint8_t ui8_adc_motor_current_offset;
extern volatile uint8_t ui8_duty_cycle;
extern uint8_t ui8_duty_cycle_target;
extern volatile uint8_t ui8_duty_cycle;
extern uint16_t ui16_PWM_cycles_counter_total;
extern uint8_t ui8_pwm_duty_cycle_duty_cycle_controller;
extern uint8_t ui8_pas_state;
extern volatile uint8_t ui8_torque_sensor_throttle_processed_value;

/***************************************************************************************/
// Motor interface
void hall_sensor_init (void); // must be called before using the motor
void motor_init (void); // must be called before using the motor
void motor_controller (void);
void motor_enable_PWM (void);
void motor_disable_PWM (void);
void motor_set_pwm_duty_cycle_target (uint8_t value);
void motor_set_current_max (uint8_t value); // steps of 0.25A each step
void motor_set_regen_current_max (uint8_t value); // steps of 0.25A each step
void motor_set_pwm_duty_cycle_ramp_up_inverse_step (uint16_t value); // each step = 64us
void motor_set_pwm_duty_cycle_ramp_down_inverse_step (uint16_t value); // each step = 64us
uint16_t ui16_motor_get_motor_speed_erps (void);
void motor_controller_set_wheel_speed_max (uint8_t ui8_wheel_speed);
uint16_t motor_get_er_PWM_ticks (void); // PWM ticks per electronic rotation
void motor_controller_set_state (uint8_t state);
void motor_controller_reset_state (uint8_t state);
uint8_t motor_controller_get_state (void);
uint8_t motor_controller_state_is_set (uint8_t state);
void motor_controller_set_target_speed_erps (uint16_t ui16_erps);
void motor_controller_set_speed_erps_max (uint16_t ui16_erps);
uint16_t motor_controller_get_target_speed_erps_max (void);
void motor_controller_set_target_current_10b (uint16_t ui16_current);
void motor_controller_set_error (uint8_t ui8_error);
void motor_controller_clear_error (void);
uint8_t motor_controller_get_error (void);
void motor_set_pwm_duty_cycle (uint8_t ui8_value);
void motor_set_pwm_duty_cycle_target (uint8_t ui8_value);
uint8_t motor_get_pwm_duty_cycle_target (void);
int8_t motor_get_current_filtered_10b (void);
/***************************************************************************************/

#endif /* _MOTOR_H_ */
