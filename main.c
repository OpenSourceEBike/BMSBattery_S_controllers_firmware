#include <stdint.h>
#include <stdio.h>

#define CLK_DIVR	(*(volatile uint8_t *)0x50c6)
#define CLK_PCKENR1	(*(volatile uint8_t *)0x50c7)

#define UART1_SR	(*(volatile uint8_t *)0x5230)
#define UART1_DR	(*(volatile uint8_t *)0x5231)
#define UART1_BRR1	(*(volatile uint8_t *)0x5232)
#define UART1_BRR2	(*(volatile uint8_t *)0x5233)
#define UART1_CR2	(*(volatile uint8_t *)0x5235)
#define UART1_CR3	(*(volatile uint8_t *)0x5236)

#define UART_CR2_TEN (1 << 3)
#define UART_CR3_STOP2 (1 << 5)
#define UART_CR3_STOP1 (1 << 4)
#define UART_SR_TXE (1 << 7)

void putchar(char c)
{
	while(!(UART1_SR & UART_SR_TXE));

	UART1_DR = c;
}

void main(void)
{
	unsigned long i = 0;

	CLK_DIVR = 0x00; // Set the frequency to 16 MHz
	CLK_PCKENR1 = 0xFF; // Enable peripherals

	UART1_CR2 = UART_CR2_TEN; // Allow TX and RX
	UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
	UART1_BRR2 = 0x03; UART1_BRR1 = 0x68; // 9600 baud

	for(;;)
	{
		printf("Hello World!!\n");
		printf("OpenSource BMSBattery S controllers firmware\n\n");

		for(i = 0; i < 147456; i++); // delay of 1s
	}
}
