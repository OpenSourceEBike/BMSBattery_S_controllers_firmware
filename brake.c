/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include "stm8s.h"
#include "stm8s_it.h"
#include "gpio.h"
#include "main.h"
#include "interrupts.h"
#include "brake.h"
#include "motor_controller_low_level.h"
#include "pwm.h"
#include "throttle_pas_torque_sensor_controller.h"

// Brake signal
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER)
{
  if (brake_is_set())
  {
    motor_set_mode_coast ();
    stop_cruise_control ();
  }
  else
  {
    motor_set_mode_run ();
//    pwm_set_duty_cycle (0);
    ui8_duty_cycle = 0;
    stop_cruise_control ();
  }
}

void brake_init (void)
{
  //brake pin as external input pin interrupt
  GPIO_Init(BRAKE__PORT,
	    BRAKE__PIN,
	    GPIO_MODE_IN_FL_IT); // with external interrupt

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
  TIM1->BKR &= (uint8_t) ~(TIM1_BKR_MOE);
}

void brake_coast_disable (void)
{
  TIM1->BKR |= (uint8_t) (TIM1_BKR_MOE);
}
