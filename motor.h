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

#define MOTOR_STATE_STOP 	0
#define MOTOR_STATE_COAST 	1
#define MOTOR_STATE_RUNNING 	2

#define MOTOR_CONTROLLER_STATE_OK		1
#define MOTOR_CONTROLLER_STATE_BRAKE		2
#define MOTOR_CONTROLLER_STATE_OVER_CURRENT	4
#define MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE	8
#define MOTOR_CONTROLLER_STATE_THROTTLE_ERROR	16

#define MOTOR_CONTROLLER_ERROR_EMPTY			0x0
#define MOTOR_CONTROLLER_ERROR_01_THROTTLE		0x22
#define MOTOR_CONTROLLER_ERROR_02			0x23
#define MOTOR_CONTROLLER_ERROR_03			0x24
#define MOTOR_CONTROLLER_ERROR_04			0x26
#define MOTOR_CONTROLLER_ERROR_05			0x28
#define MOTOR_CONTROLLER_ERROR_06_SHORT_CIRCUIT		0x21
#define MOTOR_CONTROLLER_ERROR_91_BATTERY_UNDER_VOLTAGE 0x91

void motor_set_pwm_duty_cycle_target (uint8_t ui8_value);
void motor_set_current_max (uint8_t ui8_value); // steps of 0.5A each step
uint8_t motor_get_current_max (void); // steps of 0.5A each step
void motor_set_regen_current_max (uint8_t ui8_value); // steps of 0.5A each step
void motor_set_pwm_duty_cycle_ramp_up_inverse_step (uint16_t ui16_value); // each step = 64us
void motor_set_pwm_duty_cycle_ramp_down_inverse_step (uint16_t ui16_value); // each step = 64us
uint16_t motor_get_motor_speed_erps (void);
uint16_t motor_get_er_PWM_ticks (void); // PWM ticks per electronic rotation
void motor_controller_set_state (uint8_t ui8_state);
void motor_controller_reset_state (uint8_t ui8_state);
uint8_t motor_controller_get_state (void);
uint8_t motor_controller_state_is_set (uint8_t ui8_state);
void hall_sensors_read_and_action (void);
void motor_fast_loop (void);
void motor_controller (void);
uint8_t motor_get_ADC_battery_voltage_filtered (void);
void motor_controller_set_speed_erps (uint16_t ui16_erps);
void motor_controller_set_speed_erps_max (uint16_t ui16_erps);
uint16_t motor_controller_get_speed_erps_max (void);
void motor_controller_set_current (uint16_t ui16_current);
void motor_controller_set_error (uint8_t ui8_error);
void motor_controller_clear_error (void);
uint8_t motor_controller_get_error (void);
void motor_set_pwm_duty_cycle (uint8_t ui8_value);
void hall_sensor_init (void); // must be called before using the motor
void motor_init (void); // must be called before using the motor
void motor_enable_PWM (void);
void motor_disable_PWM (void);

#endif /* _MOTOR_H_ */
