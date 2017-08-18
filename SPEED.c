/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include "stm8s.h"
#include "stm8s_it.h"
#include "gpio.h"
#include "main.h"
#include "interrupts.h"
#include "SPEED.h"
#include "cruise_control.h"
#include "motor.h"
#include "pwm.h"


// SPEED signal
void EXTI_PORTC_IRQHandler(void) __interrupt(EXTI_PORTC_IRQHANDLER)
{
  ui8_SPEED_Flag = 1; //just setting flag in interrupt handler
}

void SPEED_init (void)
{
  //PAS pin as external input pin interrupt
  GPIO_Init(SPEED__PORT,
	    SPEED__PIN,
	    GPIO_MODE_IN_PU_IT); // with Pullup and external interrupt

  //initialize the Interrupt sensitivity: falling edge only
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,
			    EXTI_SENSITIVITY_FALL_ONLY);
  }


