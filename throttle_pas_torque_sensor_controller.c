/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include "throttle_pas_torque_sensor_controller.h"

#include <stdint.h>
#include "stm8s.h"
#include "adc.h"
#include "utils.h"
#include "motor_controller_high_level.h"
#include "motor_controller_low_level.h"
#include "communications_controller.h"
#include "pwm.h"

// if this variables are no global, SDCC will throw the error: xxx.asm:612: Error: <r> relocation error
uint8_t ui8_cruise_state = 0;
uint8_t ui8_cruise_value = 0;
uint8_t ui8_cruise_output = 0;
uint8_t ui8_cruise_counter = 0;

uint8_t cruise_control (uint8_t ui8_value);

uint8_t ui8_ADC_throttle;

void throttle_pas_torque_sensor_controller (void)
{
  static uint8_t ui8_temp;
  uint16_t ui16_temp;
  uint8_t ui8_current_pwm_duty_cycle;
  uint8_t ui8_pwm_duty_cycle_a;
  static float f_temp;

  // only throttle implemented for now
  ui8_ADC_throttle = ui8_adc_read_throttle ();

  // verify if throttle is connect or if there is any error
  // if error: error symbol on LCD will be shown
  if ((ui8_ADC_throttle < ADC_THROTTLE_MIN_VALUE_ERROR) ||
      (ui8_ADC_throttle > ADC_THROTTLE_MAX_VALUE_ERROR))
  {
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_THROTTLE_ERROR);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_01_THROTTLE);
  }

#define DO_CRUISE_CONTROL 1
#if DO_CRUISE_CONTROL == 1
  ui8_ADC_throttle = cruise_control (ui8_ADC_throttle);
#endif

  if (ui8_power_assist_control_mode)
  {
    // throttle will setup motor pwm duty_cycle
    ui8_temp = (uint8_t) (map ((int32_t) ui8_ADC_throttle, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 255));

    // apply max erps speed to the speed controller
    motor_controller_set_speed_erps (motor_controller_get_speed_erps_max ());

    ui8_current_pwm_duty_cycle = pwm_get_duty_cycle ();
    ui8_pwm_duty_cycle_a = motor_speed_controller (ui8_current_pwm_duty_cycle);
    // apply the value that is lower
    motor_set_pwm_duty_cycle_target (ui8_min (ui8_temp, ui8_pwm_duty_cycle_a));
  }
  else
  {
    ui8_temp = (uint8_t) (((float) (24 * communications_get_assist_level ())) * communications_get_controller_max_current_factor ()); // 120 = 15A; 120/5 = 24
    ui8_temp = (uint8_t) (map ((uint32_t) ui8_ADC_throttle, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, (uint32_t) ui8_temp));
    motor_controller_set_current (ui8_temp);

    // throttle will setup motor speed
    ui16_temp = (motor_controller_get_speed_erps_max () / 5) * communications_get_assist_level ();
    ui16_temp = map ((uint32_t) ui8_ADC_throttle, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, (uint32_t) ui16_temp);
    motor_controller_set_speed_erps (ui16_temp);
  }
}

uint8_t cruise_control (uint8_t ui8_value)
{
  // Cruise control
  if (ui8_cruise_state == 0)
  {
    if ((ui8_value > CRUISE_CONTROL_MIN_VALUE) &&
	((ui8_value > (ui8_cruise_value - CRUISE_CONTROL_MIN_VALUE)) || (ui8_value < (ui8_cruise_value + CRUISE_CONTROL_MIN_VALUE))))
    {
      ui8_cruise_counter++;
      ui8_cruise_output = ui8_value;

      if (ui8_cruise_counter > 80) // 80 * 100ms = 8 seconds: time to lock cruise control
      {
	ui8_cruise_state = 1;
	ui8_cruise_output = ui8_value;
	ui8_cruise_counter = 0;
	ui8_cruise_value = 0;
      }
    }
    else
    {
      ui8_cruise_counter = 0;
      ui8_cruise_value = ui8_value;
      ui8_cruise_output = ui8_cruise_value;
    }
  }
  else if (ui8_cruise_state == 1)
  {
    if (ui8_value < CRUISE_CONTROL_MIN_VALUE) { ui8_cruise_state = 2; }
  }
  else if (ui8_cruise_state == 2)
  {
    if (ui8_value > CRUISE_CONTROL_MIN_VALUE)
    {
      ui8_cruise_state = 0;
      ui8_cruise_output = ui8_value;
    }
  }

  return ui8_cruise_output;
}

void set_cruise_control_state (uint8_t value)
{
  ui8_cruise_state = value;
}

void stop_cruise_control (void)
{
  set_cruise_control_state (0);
}

