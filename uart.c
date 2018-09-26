/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "uart.h"
#include "stm8s.h"
#include "stm8s_uart2.h"
#include "interrupts.h"
#include "ACAcontrollerState.h"

uint8_t ui8_rx_buffer[128];
uint8_t ui8_tx_buffer[128];
uint8_t ui8_rx_fillpointer = 0;
uint8_t ui8_tx_fillpointer = 0;
uint8_t ui8_rx_digestpointer = 0;
uint8_t ui8_tx_digestpointer = 0;

void uart_put_buffered(uint8_t c) {
	ui8_tx_buffer[ui8_tx_fillpointer] = c;
	if (ui8_tx_fillpointer++ > 127) {
		ui8_tx_fillpointer = 0;
	}
}

uint8_t uart_get_possible() {
	if (ui8_rx_fillpointer != ui8_rx_digestpointer) {
		return 1;
	}
	return 0;
}

uint8_t uart_get_buffered(void) {
	uint8_t c = ui8_rx_buffer[ui8_rx_digestpointer];
	if (ui8_rx_digestpointer++ > 127) {
		ui8_rx_digestpointer = 0;
	}
	return c;
}
/*
void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER) {

	// if there is something to read, read it into cyclic buffer
	if (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET) {
		ui8_rx_buffer[ui8_rx_fillpointer] = UART2_ReceiveData8();
		if (ui8_rx_fillpointer++ > 127) {
			ui8_rx_fillpointer = 0;
		}
	}
	// if there is something to send and we are not already sending
	if ((ui8_tx_fillpointer != ui8_tx_digestpointer)&&(UART2_GetFlagStatus(UART2_FLAG_TXE) != RESET)) {
		UART2_SendData8(ui8_tx_buffer[ui8_tx_digestpointer]);
		if (ui8_tx_digestpointer++ > 127) {
			ui8_tx_digestpointer = 0;
		}
	}

	// catch errors and process them in a reasonable manner which is always to ignore them :)
	if (UART2_GetITStatus(UART2_IT_IDLE) == SET) {
		UART2_ReceiveData8(); // -> clear!
	}
	if (UART2_GetITStatus(UART2_IT_LBDF) == SET) {
		UART2_ReceiveData8(); // -> clear!
	}
	if (UART2_GetITStatus(UART2_IT_OR) == SET) {
		UART2_ReceiveData8(); // -> clear!
	}
	if (UART2_GetITStatus(UART2_IT_PE) == SET) {
		UART2_ReceiveData8(); // -> clear!
	}
}
*/

void uart_init(void) {
	UART2_DeInit();
	UART2_Init((uint32_t) 9600,
			UART2_WORDLENGTH_8D,
			UART2_STOPBITS_1,
			UART2_PARITY_NO,
			UART2_SYNCMODE_CLOCK_DISABLE,
			UART2_MODE_TXRX_ENABLE);
	UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
}

#if __SDCC_REVISION < 9624

void putchar(char c) {
	//Write a character to the UART2
	UART2_SendData8(c);

	//Loop until the end of transmission
	while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
}

void putbyte(uint8_t c) {
	//Write a character to the UART2
	UART2_SendData8(c);

	//Loop until the end of transmission
	while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
}
#else

int putchar(int c) {
	//Write a character to the UART2
	UART2_SendData8(c);

	//Loop until the end of transmission
	while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);

	return ((unsigned char) c);
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
	while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);

	c = UART2_ReceiveData8();

	return (c);
}
