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

uint8_t ui8_cruise_state = 0;
uint8_t ui8_cruise_value = 0;
uint8_t ui8_cruise_output = 0;
uint32_t ui32_cruise_counter = 0;

uint8_t cruise_control (uint8_t ui8_value);

void throttle_pas_torque_sensor_controller (void)
{
  uint16_t ui16_temp;

  // only throttle implemented for now
  ui8_ADC_throttle = ui8_adc_read_throttle ();

// NOTE: for some reason, cruise control is not working anymore
//#define DO_CRUISE_CONTROL 1
#if DO_CRUISE_CONTROL == 1
  ui8_ADC_throttle = cruise_control (ui8_ADC_throttle);
#endif

  // throttle will setup motor current from 5A to 15A
  ui16_temp = (uint16_t) (map ((int32_t) ui8_ADC_throttle, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 10, ADC_MOTOR_CURRENT_MAX));
  motor_set_current_max (ui16_temp);

  // throttle will setup motor speed from 0 to 29km/h (in 26 inch wheel, Q85 328RPM)
  ui16_temp = map (ui8_ADC_throttle, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, MOTOR_OVER_SPEED_ERPS);
  motor_speed_controller_set_erps (ui16_temp);
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

