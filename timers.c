/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s_gpio.h"
#include "stm8s_tim1.h"
#include "stm8s.h"
#include "stm8s_tim2.h"
#include "main.h"
#include "motor.h"
#include "gpio.h"




void timer2_init (void)
{
  // TIM2 Peripheral Configuration
  TIM2_DeInit();

  TIM2_TimeBaseInit(TIM2_PRESCALER_8, 25536); //timetic with 50HZ
  TIM2_ITConfig(TIM2_IT_UPDATE,ENABLE);

  TIM2_Cmd(ENABLE); // TIM2 counter enable

}




//interrupt routine for slow control loop timing
void TIM2_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM2_UPD_OVF_TRG_BRK_IRQHANDLER)
{
  ui8_slowloop_flag=1;
  //printf("SlowTimetic\n");
  // clear the interrupt pending bit for TIM2
  TIM2_ClearITPendingBit(TIM2_IT_UPDATE);
}
