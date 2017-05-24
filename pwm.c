/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "hall_sensors.h"
#include "main.h"
#include "gpio.h"
#include "motor.h"

// please see file stm8s_it.c where the interrupt handler is called

void pwm_init (void)
{
  //TIM1 Peripheral Configuration
   TIM1_DeInit();

   TIM1_TimeBaseInit(0, //TIM1_Prescaler = 0
		     TIM1_COUNTERMODE_UP,
		     (1024 - 1), //clock = 16MHz; counter period = 1024; PWM freq = 16MHz / 1024 = 15.625kHz
		     0); //TIM1_RepetitionCounter = 0

   TIM1_OC1Init(TIM1_OCMODE_PWM1,
		TIM1_OUTPUTSTATE_ENABLE,
		TIM1_OUTPUTNSTATE_DISABLE,
                0, // initial duty_cycle value
		TIM1_OCPOLARITY_HIGH,
		TIM1_OCNPOLARITY_LOW,
		TIM1_OCIDLESTATE_SET,
                TIM1_OCNIDLESTATE_RESET);

   TIM1_OC2Init(TIM1_OCMODE_PWM1,
		TIM1_OUTPUTSTATE_ENABLE,
		TIM1_OUTPUTNSTATE_DISABLE,
                0, // initial duty_cycle value
		TIM1_OCPOLARITY_HIGH,
		TIM1_OCNPOLARITY_LOW,
		TIM1_OCIDLESTATE_SET,
                TIM1_OCNIDLESTATE_RESET);

   TIM1_OC3Init(TIM1_OCMODE_PWM1,
		TIM1_OUTPUTSTATE_ENABLE,
		TIM1_OUTPUTNSTATE_DISABLE,
                0, // initial duty_cycle value
		TIM1_OCPOLARITY_HIGH,
		TIM1_OCNPOLARITY_LOW,
		TIM1_OCIDLESTATE_SET,
                TIM1_OCNIDLESTATE_RESET);

   //break, dead time and lock configuration
   TIM1_BDTRConfig(TIM1_OSSISTATE_DISABLE,
		   TIM1_LOCKLEVEL_OFF,
		   117, //dead time: ???
		   TIM1_BREAK_DISABLE,
		   TIM1_BREAKPOLARITY_LOW,
		   TIM1_AUTOMATICOUTPUT_DISABLE);


   TIM1_Cmd(ENABLE); //TIM1 counter enable
   TIM1_CtrlPWMOutputs(ENABLE); //Main Output Enable
}

void pwm_set_duty_cycle_channel1(uint16_t value)
{
  TIM1_SetCompare1(value);
}

void pwm_set_duty_cycle_channel2(uint16_t value)
{
  TIM1_SetCompare2(value);
}

void pwm_set_duty_cycle_channel3(uint16_t value)
{
  TIM1_SetCompare3(value);
}
