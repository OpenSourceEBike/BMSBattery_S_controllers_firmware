/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "gpio.h"

void gpio_init (void)
{
  GPIO_Init(GPIOD,
	    GPIO_PIN_3,
	    GPIO_MODE_OUT_OD_HIZ_FAST);

}

void debug_pin_init (void)
{
  GPIO_Init(DEBUG__PORT,
	    DEBUG__PIN,
	    GPIO_MODE_OUT_PP_HIGH_FAST);
}

void debug_pin_set (void)
{
  GPIO_WriteHigh(DEBUG__PORT, DEBUG__PIN);
}

void debug_pin_reset (void)
{
  GPIO_WriteLow(DEBUG__PORT, DEBUG__PIN);
}


