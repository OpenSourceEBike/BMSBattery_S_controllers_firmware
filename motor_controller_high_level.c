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
#include "utils.h"

uint16_t ui16_target_erps = 0;
uint16_t ui16_target_current = 0;

uint16_t ui16_ADC_battery_voltage_accumulated = BATTERY_VOLTAGE_MED_VALUE;
uint8_t ui8_ADC_battery_voltage_filtered;

uint16_t ui16_ADC_iq_current_accumulated = 0;
uint8_t ui16_ADC_iq_current_filtered;
uint16_t ui16_ADC_motor_current_accumulated = ADC_MOTOR_CURRENT_MAX_MED_VALUE_10B;
uint16_t ui16_ADC_motor_current_filtered;

uint8_t ui8_motor_controller_error = MOTOR_CONTROLLER_ERROR_EMPTY;

void motor_battery_voltage_protection (void);
uint8_t motor_current_controller (uint8_t ui8_current_pwm_duty_cycle); // call every 100ms
uint8_t motor_speed_controller (uint8_t ui8_current_pwm_duty_cycle); // call every 100ms

void motor_controller_high_level (void)
{
//  uint8_t ui8_current_pwm_duty_cycle;
//  uint8_t ui8_pwm_duty_cycle_a;
//  uint8_t ui8_pwm_duty_cycle_b;
//
//  motor_battery_voltage_protection ();
//
//  ui8_current_pwm_duty_cycle = pwm_get_duty_cycle ();
//  ui8_pwm_duty_cycle_a = motor_current_controller (ui8_current_pwm_duty_cycle);
//  ui8_pwm_duty_cycle_b = motor_speed_controller (ui8_current_pwm_duty_cycle);
//  // apply the value that is lower
//  motor_set_pwm_duty_cycle_target (ui8_min (ui8_pwm_duty_cycle_a, ui8_pwm_duty_cycle_b));
}

void motor_controller_set_speed_erps (uint16_t ui16_erps)
{
  ui16_target_erps = ui16_erps;
}

void motor_controller_set_current (uint16_t ui16_current)
{
  ui16_target_current = ui16_current;
}

// call every 100ms
uint8_t motor_speed_controller (uint8_t ui8_current_pwm_duty_cycle)
{
  int16_t i16_error;
  int16_t i16_output;
  int16_t i16_motor_speed_erps;

  if (ui16_target_erps < 5)
  {
    return 0;
  }

  i16_motor_speed_erps = (int16_t) motor_get_motor_speed_erps ();

  // if MOTOR_OVER_SPEED_ERPS, then limit for this value and not user defined ui16_target_erps
  if (ui16_target_erps > MOTOR_OVER_SPEED_ERPS) { i16_error = MOTOR_OVER_SPEED_ERPS - i16_motor_speed_erps; }
  else { i16_error = ui16_target_erps - i16_motor_speed_erps; }

  i16_output = i16_error * MOTOR_SPEED_CONTROLLER_KP;

  // limit max output value
  if (i16_output > MOTOR_SPEED_CONTROLLER_OUTPUT_MAX) i16_output = MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  else if (i16_output < (-MOTOR_SPEED_CONTROLLER_OUTPUT_MAX)) i16_output = -MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  i16_output >>= 5; // divide to 64, as MOTOR_SPEED_CONTROLLER_KP is 64x; avoid using floats

  i16_output = ui8_current_pwm_duty_cycle + i16_output;
  if (i16_output > PWM_VALUE_DUTY_CYCLE_MAX) i16_output = PWM_VALUE_DUTY_CYCLE_MAX;
  if (i16_output < 0) i16_output = 0;

  return (uint8_t) i16_output;
}

// call every 100ms
uint8_t motor_current_controller (uint8_t ui8_current_pwm_duty_cycle)
{
  int16_t i16_error;
  int16_t i16_output;
  int16_t i16_motor_current;

  // low pass filter the current readed value, to avoid possible fast spikes/noise
  ui16_ADC_motor_current_accumulated -= ui16_ADC_motor_current_accumulated >> 4;
  ui16_ADC_motor_current_accumulated += ui16_adc_read_motor_total_current ();
  ui16_ADC_motor_current_filtered = ui16_ADC_motor_current_accumulated >> 4;

  i16_motor_current = ui16_ADC_motor_current_filtered - ADC_MOTOR_CURRENT_MAX_ZERO_VALUE_10B;
  // make sure current is not negative, we are not here to control negative/regen current
  if (i16_motor_current < 0)
  {
    return 0;
  }

  i16_error = ui16_target_current - i16_motor_current;
  i16_output = i16_error * MOTOR_CURRENT_CONTROLLER_KP;

  // limit max output value
  if (i16_output > MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX) i16_output = MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX;
  else if (i16_output < (-MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX)) i16_output = -MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX;
  i16_output >>= 5; // divide to 64, avoid using floats

  i16_output = ui8_current_pwm_duty_cycle + i16_output;
  if (i16_output > PWM_VALUE_DUTY_CYCLE_MAX) i16_output = PWM_VALUE_DUTY_CYCLE_MAX;
  if (i16_output < 0) i16_output = 0;

  return (uint8_t) i16_output;
}

void motor_battery_voltage_protection (void)
{
  // low pass filter the voltage readed value, to avoid possible fast spikes/noise
  ui16_ADC_battery_voltage_accumulated -= ui16_ADC_battery_voltage_accumulated >> 6;
  ui16_ADC_battery_voltage_accumulated += ui8_adc_read_battery_voltage ();
  ui8_ADC_battery_voltage_filtered = ui16_ADC_battery_voltage_accumulated >> 6;


  if (ui8_ADC_battery_voltage_filtered > BATTERY_VOLTAGE_MAX_VALUE)
  {
#ifdef BATTERY_OVER_VOLTAGE_PROTECTION
    // motor will stop and battery symbol on LCD will be empty and flashing | same as low level error
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_91_BATTERY_UNDER_VOLTAGE);
#endif
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




