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
#include "PAS.h"
#include "cruise_control.h"
#include "motor.h"
#include "pwm.h"

// PAS signal

void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER)
{ //find the pin that has caused the interrupt
    if (!GPIO_ReadInputPin(PAS__PORT, PAS__PIN)) //PAS handling
    {
        ui8_PAS_Flag = 1; //just setting flag in interrupt handler
    } // do not move this out of the else branch, it will reset the controller if it has no over current detection circuit
    else if (!GPIO_ReadInputPin(CURRENT_MOTOR_TOTAL_OVER__PORT, CURRENT_MOTOR_TOTAL_OVER__PIN)) //over current handling
    {
        TIM1_CtrlPWMOutputs(DISABLE); //set phases floating
        while (1)
        {
        } // infinitve loop, user has to
    }

}

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


