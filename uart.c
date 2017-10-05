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

uint8_t ui8_array_flag=0;

void uart_init (void)
{
  UART2_DeInit();
  UART2_Init((uint32_t)9600,
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

void putbyte(uint8_t c)
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
  uint8_t a = 0;

  if (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET)
  {
    return 255;
  }

  c = UART2_ReceiveData8();

  if (c == '0')
  {
    ui8_position_correction_value--;
  }


  if (c == '1')
  	  {
  	    ui8_position_correction_value++;
  	  }




  return (c);
}
