/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include "stm8s.h"
#include "stm8s_tim2.h"

void timer2_init (void)
{
//  uint16_t ui16_i;
//
//  // TIM2 Peripheral Configuration
//  TIM2_DeInit();
//  TIM2_TimeBaseInit(TIM2_PRESCALER_16384, 0xffff); // each incremment at every ~1ms
//  TIM2_Cmd(ENABLE); // TIM2 counter enable
//
//  // IMPORTANT: this software delay is needed so timer2 work after this
//  for(ui16_i = 0; ui16_i < (29000); ui16_i++) { ; }

  uint16_t ui16_i;

  // Timer2 clock = 16MHz; target: 20us period --> 50khz
  // counter period = (1 / (16000000 / prescaler)) * (159 + 1) = 20us
  TIM2_TimeBaseInit(TIM2_PRESCALER_2, 159);

  // pulse of 2us
  TIM2_OC2Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE, 16, TIM2_OCPOLARITY_HIGH);
  TIM2_OC2PreloadConfig(ENABLE);

  TIM2_ARRPreloadConfig(ENABLE);

  TIM2_Cmd(ENABLE);

  // IMPORTANT: this software delay is needed so timer2 work after this
  for(ui16_i = 0; ui16_i < (29000); ui16_i++) { ; }
}
