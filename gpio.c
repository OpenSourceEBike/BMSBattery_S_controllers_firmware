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
  ;
}


void brake_init (void)
{
  //hall sensors pins as external input pin interrupt
  GPIO_Init(BRAKE__PORT,
	    BRAKE__PIN,
	    GPIO_MODE_IN_FL_IT);

  //initialize the Interrupt sensitivity
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA,
			    EXTI_SENSITIVITY_RISE_FALL);
}

BitStatus brake_is_set (void)
{
  if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) == 0)
    return 1;
  else
    return 0;
}

void brake_coast_enable (void)
{
  TIM1->BKR &= ~((uint8_t) (TIM1_BREAK_ENABLE));
}

void brake_coast_disable (void)
{
  TIM1->BKR |= (uint8_t) (TIM1_BREAK_ENABLE);
}
