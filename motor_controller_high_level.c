/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s.h"
#include "main.h"
#include "adc.h"
#include "motor_controller_low_level.h"
#include "motor_controller_high_level.h"
#include "pwm.h"

uint16_t target_erps = 0;

uint16_t ui16_ADC_battery_voltage_accumulated = BATTERY_VOLTAGE_MED_VALUE;
uint8_t ui8_ADC_battery_voltage_filtered;

uint16_t ui16_ADC_iq_current_accumulated = 0;
uint8_t ui16_ADC_iq_current_filtered;

uint8_t ui8_motor_controller_error = MOTOR_CONTROLLER_ERROR_EMPTY;

void motor_speed_controller (void); // call every 100ms
void motor_battery_voltage_protection (void);
void motor_read_iq_current (void);

void motor_controller_high_level (void)
{
  motor_speed_controller ();
//  motor_read_iq_current ();
  motor_battery_voltage_protection ();
}

void motor_speed_controller_set_erps (uint16_t erps)
{
  target_erps = erps;
}

// call every 100ms
void motor_speed_controller (void)
{
  int16_t i16_error;
  int16_t i16_output;
  int16_t i16_motor_speed_erps;

  if (target_erps < 5)
  {
    motor_set_pwm_duty_cycle_target (0);
    return;
  }

  i16_motor_speed_erps = (int16_t) motor_get_motor_speed_erps ();

  // if MOTOR_OVER_SPEED_ERPS, then limit for this value and not user defined target_erps
  if (target_erps > MOTOR_OVER_SPEED_ERPS) { i16_error = MOTOR_OVER_SPEED_ERPS - i16_motor_speed_erps; }
  else { i16_error = target_erps - i16_motor_speed_erps; }

  i16_output = i16_error * MOTOR_SPEED_CONTROLLER_KP;

  // limit max output value
  if (i16_output > MOTOR_SPEED_CONTROLLER_OUTPUT_MAX) i16_output = MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  else if (i16_output < (-MOTOR_SPEED_CONTROLLER_OUTPUT_MAX)) i16_output = -MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  i16_output >>= 5; // divide to 64, as MOTOR_SPEED_CONTROLLER_KP is 64x; avoid using floats

  i16_output = pwm_get_duty_cycle () + i16_output;
  if (i16_output > PWM_VALUE_DUTY_CYCLE_MAX) i16_output = PWM_VALUE_DUTY_CYCLE_MAX;
  if (i16_output < 0) i16_output = 0;

  motor_set_pwm_duty_cycle_target ((uint8_t) i16_output);
}

void motor_battery_voltage_protection (void)
{
  // low pass filter the voltage readed value, to avoid possible fast spikes/noise
  ui16_ADC_battery_voltage_accumulated -= ui16_ADC_battery_voltage_accumulated >> 6;
  ui16_ADC_battery_voltage_accumulated += ui8_adc_read_battery_voltage ();
  ui8_ADC_battery_voltage_filtered = ui16_ADC_battery_voltage_accumulated >> 6;

  if (ui8_ADC_battery_voltage_filtered > BATTERY_VOLTAGE_MAX_VALUE)
  {
    // motor will stop and battery symbol on LCD will be empty and flashing | same as low level error
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_91_BATTERY_UNDER_VOLTAGE);
  }
  else if (ui8_ADC_battery_voltage_filtered < BATTERY_VOLTAGE_MIN_VALUE)
  {
    // motor will stop and battery symbol on LCD will be empty and flashing
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_91_BATTERY_UNDER_VOLTAGE);
  }
}

uint8_t motor_get_ADC_battery_voltage_filtered (void)
{
  return ui8_ADC_battery_voltage_filtered;
}

void motor_controller_set_error (uint8_t error)
{
  ui8_motor_controller_error = error;
}

void motor_controller_clear_error (void)
{
  ui8_motor_controller_error = 0;
}

uint8_t motor_controller_get_error (void)
{
  return ui8_motor_controller_error;
}

void motor_read_iq_current (void)
{
  // low pass filter the Iq current readed value
  ui16_ADC_iq_current_accumulated -= ui16_ADC_iq_current_accumulated >> 3;
  ui16_ADC_iq_current_accumulated += ui8_ADC_iq_current;
  ui16_ADC_iq_current_filtered = ui16_ADC_iq_current_accumulated >> 3;
}



