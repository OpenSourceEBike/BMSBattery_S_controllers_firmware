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
  // TIM2 Peripheral Configuration
  TIM2_DeInit();
  TIM2_TimeBaseInit(TIM2_PRESCALER_16384, 0xffff); // each incremment at every ~1ms
  TIM2_Cmd(ENABLE); // TIM2 counter enable
}
