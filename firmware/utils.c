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
#include "utils.h"

int32_t map (int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
{
  // if input is smaller/bigger than expected return the min/max out ranges value
  if (x < in_min)
    return out_min;
  else if (x > in_max)
    return out_max;

  // map the input to the output range.
  // round up if mapping bigger ranges to smaller ranges
  else  if ((in_max - in_min) > (out_max - out_min))
    return (x - in_min) * (out_max - out_min + 1) / (in_max - in_min + 1) + out_min;
  // round down if mapping smaller ranges to bigger ranges
  else
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

uint8_t ui8_min (uint8_t value_a, uint8_t value_b)
{
  if (value_a < value_b) return value_a;
  else return value_b;
}

uint8_t ui8_max (uint8_t value_a, uint8_t value_b)
{
  if (value_a > value_b) return value_a;
  else return value_b;
}

void pi_controller (struct_pi_controller_state *pi_controller_state)
{
  static int16_t i16_error;
  static int16_t i16_p_term;

  i16_error = pi_controller_state->ui8_target_value - pi_controller_state->ui8_control_value; // 255-0 or 0-255 --> [-255 ; 255]
  i16_p_term = (i16_error * pi_controller_state->ui8_kp_dividend) >> pi_controller_state->ui8_kp_divisor;

  // reset integral term while target value = 0
  if (pi_controller_state->ui8_target_value == 0) { pi_controller_state->i16_i_term = 0; }
  pi_controller_state->i16_i_term += (i16_error * pi_controller_state->ui8_ki_dividend) >> pi_controller_state->ui8_ki_divisor;
  if (pi_controller_state->i16_i_term > 255) { pi_controller_state->i16_i_term = 255; }
  if (pi_controller_state->i16_i_term < -254) { pi_controller_state->i16_i_term = -254; }

  pi_controller_state->ui16_output_value = i16_p_term + pi_controller_state->i16_i_term;
  if (pi_controller_state->ui16_output_value > 255) { pi_controller_state->ui16_output_value = 255; }
  if (pi_controller_state->ui16_output_value < -254) { pi_controller_state->ui16_output_value = -254; }
}
