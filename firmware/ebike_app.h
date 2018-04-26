/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _EBIKE_APP_H_
#define _EBIKE_APP_H_

#include <stdint.h>
#include "main.h"

#define EBIKE_APP_STATE_MOTOR_COAST 	0
#define EBIKE_APP_STATE_MOTOR_STOP 	1
#define EBIKE_APP_STATE_MOTOR_STARTUP 	2
#define EBIKE_APP_STATE_MOTOR_COOL 	3
#define EBIKE_APP_STATE_MOTOR_RUNNING 	4

#define EBIKE_APP_ERROR_EMPTY				0x0
#define EBIKE_APP_ERROR_01_THROTTLE			0x22
#define EBIKE_APP_ERROR_02				0x23
#define EBIKE_APP_ERROR_03				0x24
#define EBIKE_APP_ERROR_04				0x26
#define EBIKE_APP_ERROR_05				0x28
#define EBIKE_APP_ERROR_06_SHORT_CIRCUIT		0x21
#define EBIKE_APP_ERROR_91_BATTERY_UNDER_VOLTAGE	0x91

typedef struct _lcd_configuration_variables
{
  uint8_t ui8_assist_level;
  uint8_t ui8_motor_characteristic;
  uint8_t ui8_wheel_size;
  uint8_t ui8_max_speed;
  uint8_t ui8_power_assist_control_mode;
  uint8_t ui8_controller_max_current;
} struct_lcd_configuration_variables;

extern volatile uint16_t ui16_pas1_pwm_cycles_ticks;
extern volatile uint16_t ui16_pas1_pwm_cycles_on_ticks;
extern volatile uint8_t ui8_pas1_direction;
extern uint8_t ui8_pas_flag;
extern uint8_t PAS_act;

extern volatile uint8_t ui8_ebike_app_state;

extern volatile uint16_t ui16_wheel_speed_sensor_pwm_cycles_ticks;
extern volatile uint8_t ui8_wheel_speed_sensor_is_disconnected;

extern uint8_t ui8_throttle_value;
extern uint8_t ui8_adc_throttle_value;
extern volatile uint16_t ui16_throttle_value_accumulated;

extern uint16_t ui16_adc_battery_current_offset_10b;
extern volatile uint8_t ui8_adc_target_battery_current_max;
extern volatile uint8_t ui8_adc_target_battery_regen_current_max;

extern volatile uint8_t ui8_log_pi_battery_current_value;
extern volatile uint8_t ui8_log_pi_battery_target_current_value;
extern volatile uint8_t ui8_adc_battery_current_offset;

extern uint8_t ui8_adc_throttle_offset;
extern uint16_t ui16_adc_throttle_offset;

void ebike_app_init (void);
void ebike_app_controller (void);
void ebike_app_cruise_control_stop (void);
uint8_t ebike_app_get_adc_throttle_value_cruise_control (void);
struct_lcd_configuration_variables *ebike_app_get_lcd_configuration_variables (void);
uint8_t ebike_app_throttle_is_released (void);
uint8_t ui8_ebike_app_get_wheel_speed (void);
void ebike_app_set_state (uint8_t ui8_state);
void ebike_app_set_error (uint8_t error);
void ebike_app_clear_error (void);
uint8_t ebike_app_get_error (void);
void ebike_app_battery_set_regen_current_max (uint8_t ui8_value);
void battery_protect_over_voltage (void);

#endif /* _EBIKE_APP_H_ */
