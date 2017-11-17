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

void PAS_init (void)
{
  //PAS pin as external input pin interrupt
  GPIO_Init(PAS__PORT,
	    PAS__PIN,
	    GPIO_MODE_IN_PU_IT); // with Pullup and external interrupt

  //initialize the Interrupt sensitivity: falling edge only
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,
			    EXTI_SENSITIVITY_FALL_ONLY);
}


