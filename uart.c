/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>

#include "stm8s.h"
#include "stm8s_uart2.h"
#include "motor.h"
#include "pwm.h"

void uart_init (void)
{
  UART2_DeInit();
  UART2_Init((uint32_t)115200,
	     UART2_WORDLENGTH_8D,
	     UART2_STOPBITS_1,
	     UART2_PARITY_NO,
	     UART2_SYNCMODE_CLOCK_DISABLE,
	     UART2_MODE_TXRX_ENABLE);
}

#if __SDCC_REVISION < 9624
void putchar(char c)
{
  //Write a character to the UART2
  UART2_SendData8(c);

  //Loop until the end of transmission
  while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
}
#else
int putchar(int c)
{
  //Write a character to the UART2
  UART2_SendData8(c);

  //Loop until the end of transmission
  while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);

  return((unsigned char)c);
}
#endif

#if __SDCC_REVISION < 9989
char getchar(void)
#else
int getchar(void)
#endif
{
  uint8_t c = 0;

  /* Loop until the Read data register flag is SET */
  while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET) ;

  c = UART2_ReceiveData8();

  return (c);
}

char getchar1(void)
{
  uint8_t c = 0;
  static uint8_t ui8_temp = 0;

  if (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET)
  {
    return 255;
  }

  c = UART2_ReceiveData8();

  if (c == '0')
  {
      ui8_startup = 1;
  }

  if (c == '1')
  {
      ui8_run = 1;
  }

  if (c == '2')
  {
    ui8_temp--;
    pwm_set_duty_cycle (ui8_temp);
  }

  if (c == '3')
  {
    ui8_temp++;
    pwm_set_duty_cycle (ui8_temp);
  }

  if (c == '4')
  {
    pwm_set_duty_cycle (38);
  }

  if (c == '5')
  {
    pwm_set_duty_cycle (47);
  }

  return (c);
}
