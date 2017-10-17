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

uint16_t target_erps = 0;

uint16_t ui16_ADC_battery_voltage_accumulated = BATTERY_VOLTAGE_MED_VALUE;
uint16_t ui16_ADC_battery_voltage_filtered;

void motor_controller_high_level (void)
{
  motor_speed_controller ();
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
  int16_t i16_p_term;
  static int16_t i16_i_term;
  int16_t i16_output;
  int16_t i16_motor_speed_erps;

  if (target_erps < 5)
  {
    i16_i_term = 0; // avoid I term errors when target_erps = 0
    motor_set_pwm_duty_cycle_target (0);
    return;
  }

  i16_motor_speed_erps = (int16_t) motor_get_motor_speed_erps ();

  // if MOTOR_OVER_SPEED_ERPS, then limit for this value and not user defined target_erps
  if (target_erps > MOTOR_OVER_SPEED_ERPS)
  {
    i16_error = MOTOR_OVER_SPEED_ERPS - i16_motor_speed_erps;
  }
  else
  {
    i16_error = target_erps - i16_motor_speed_erps;
  }

  i16_p_term = i16_error * MOTOR_SPEED_CONTROLLER_KP;
  i16_i_term += i16_error * MOTOR_SPEED_CONTROLLER_KI;
  // windup control
  if (i16_i_term > MOTOR_SPEED_CONTROLLER_OUTPUT_MAX) i16_i_term = MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  else if (i16_i_term < 1) i16_i_term = 0;

  i16_output = i16_p_term + i16_i_term;
  // limit max output value
  if (i16_output > MOTOR_SPEED_CONTROLLER_OUTPUT_MAX) i16_output = MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  else if (i16_output < 1) i16_output = 0;
  i16_output >>= 5; // divide to 32, as MOTOR_SPEED_CONTROLLER_KP and MOTOR_SPEED_CONTROLLER_KI are 32x; avoid using floats

  motor_set_pwm_duty_cycle_target ((uint8_t) i16_output);
}

void motor_battery_voltage_protection (void)
{
  // low pass filter the voltage readed value, to avoid possible fast spikes/noise
  ui16_ADC_battery_voltage_accumulated -= ui16_ADC_battery_voltage_accumulated >> 6;
  ui16_ADC_battery_voltage_accumulated += ui8_adc_read_battery_voltage ();
  ui16_ADC_battery_voltage_filtered = ui16_ADC_battery_voltage_accumulated >> 6;

  if (ui16_ADC_battery_voltage_filtered > BATTERY_VOLTAGE_MAX_VALUE)
  {
    // TODO: disable motor regen

motor_set_mode_coast ();
disableInterrupts();
while (1) ; // infinite loop, user will need to reset the system
  }
  else if (ui16_ADC_battery_voltage_filtered < BATTERY_VOLTAGE_MIN_VALUE)
  {
    // TODO: disable motor for 20 seconds and signal error

motor_set_mode_coast ();
disableInterrupts();
while (1) ; // infinite loop, user will need to reset the system
  }
  else
  {
    // TODO: enable motor regen
  }
}
