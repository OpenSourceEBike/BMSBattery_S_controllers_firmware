/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s_gpio.h"
#include "motor.h"
#include "gpio.h"
#include "motor.h"

int8_t get_motor_rotation_direction (void)
{
  return LEFT;
}
