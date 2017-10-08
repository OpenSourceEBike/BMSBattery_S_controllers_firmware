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


#define CLOCKFREQ   (16000000L)
/* Instructions per millisecond. */
#define INSNS_PER_MS    (CLOCKFREQ / 4000L)
/* Delay loop is about 10 cycles per iteration. */
#define LOOPS_PER_MS    (INSNS_PER_MS/20L)
void delay_halfms(uint16_t ms) {
    uint16_t u;
    while (ms--) {
        /* Inner loop takes about 10 cycles per iteration + 4 cycles setup. */
        for (u = 0; u < LOOPS_PER_MS; u++) {
            /* Prevent this loop from being optimized away. */
            __asm nop __endasm;
        }
    }
}
