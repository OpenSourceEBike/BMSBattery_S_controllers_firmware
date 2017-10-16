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

uint8_t ui8_cruise_state = 0;
uint8_t ui8_cruise_value = 0;
uint8_t ui8_cruise_output = 0;
uint32_t ui32_cruise_counter = 0;

void throttle_pas_torque_sensor_controller (void)
{
  uint16_t ui16_motor_speed;

  // only throttle implemented for now
  ui8_ADC_throttle = ui8_adc_read_throttle ();
//  ui8_duty_cycle_target_temp = (uint8_t) map (ui8_ADC_throttle, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 255);

  ui16_motor_speed = map (ui8_ADC_throttle, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 600);
  motor_speed_controller_set_erps (ui16_motor_speed);

  //#define DO_CRUISE_CONTROL 1
  #if DO_CRUISE_CONTROL == 1
  ui8_duty_cycle_target = cruise_control (ui8_duty_cycle_target_temp);
  #endif

//  motor_set_pwm_duty_cycle_target (ui8_duty_cycle_target_temp);
}

uint8_t cruise_control (uint8_t ui8_value)
{
  // Cruise control
  if (ui8_cruise_state == 0)
  {
    if ((ui8_value > 25) &&
	((ui8_value > (ui8_cruise_value - 25)) || (ui8_value < (ui8_cruise_value + 15))))
    {
      ui32_cruise_counter++;
      ui8_cruise_output = ui8_value;

      if (ui32_cruise_counter > 100) // 100 time control: time to lock cruise control
      {
	ui8_cruise_state = 1;
	ui8_cruise_output = ui8_value;
	ui32_cruise_counter = 0;
	ui8_cruise_value = 0;
      }
    }
    else
    {
      ui32_cruise_counter = 0;
      ui8_cruise_value = ui8_value;
      ui8_cruise_output = ui8_cruise_value;
    }
  }
  else if (ui8_cruise_state == 1)
  {
    if (ui8_value < 25) { ui8_cruise_state = 2; }
  }
  else if (ui8_cruise_state == 2)
  {
    if (ui8_value > 25)
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

