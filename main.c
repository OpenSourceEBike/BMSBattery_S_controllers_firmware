//#include <stdint.h>
//#include <stdio.h>
//
//#define CLK_DIVR	(*(volatile uint8_t *)0x50c6)
//#define CLK_PCKENR1	(*(volatile uint8_t *)0x50c7)
//
//#define PD_ODR *(unsigned char*)0x500F
//#define PD_IDR *(unsigned char*)0x5010
//#define PD_DDR *(unsigned char*)0x5011
//#define PD_CR1 *(unsigned char*)0x5012
//#define PD_CR2 *(unsigned char*)0x5013
//
//
//void main(void)
//{
//	int d;
//
////	CLK_PCKENR1 = 0xFF; // Set the frequency to 16 MHz
////	CLK_DIVR = 0x00; // Enable peripherals
//
//	// Configure pins
//	PD_DDR = (1 << 5); // LED on PD3
//	PD_CR1 = (1 << 5);
//
//	do {
//
//		PD_ODR ^= (1 << 5);
//
//		for(d = 0; d < 29000; d++)
//		{ }
//
//	} while(1);
//}

#include <stdint.h>
#include <stdio.h>

#define CLK_DIVR	(*(volatile uint8_t *)0x50c6)
#define CLK_PCKENR1	(*(volatile uint8_t *)0x50c7)

#define UART2_SR	(*(volatile uint8_t *)0x5240)
#define UART2_DR	(*(volatile uint8_t *)0x5241)
#define UART2_BRR1	(*(volatile uint8_t *)0x5242)
#define UART2_BRR2	(*(volatile uint8_t *)0x5243)
#define UART2_CR2	(*(volatile uint8_t *)0x5245)
#define UART2_CR3	(*(volatile uint8_t *)0x5246)

#define UART_CR2_TEN (1 << 3)
#define UART_CR3_STOP2 (1 << 5)
#define UART_CR3_STOP1 (1 << 4)
#define UART_SR_TXE (1 << 7)

void putchar(char c)
{
	while(!(UART2_SR & UART_SR_TXE));

	UART2_DR = c;
}

void main(void)
{
	unsigned long i = 0;

	CLK_DIVR = 0x00; // Set the frequency to 16 MHz
	CLK_PCKENR1 = 0xFF; // Enable peripherals

	UART2_CR2 = UART_CR2_TEN; // Allow TX and RX
	UART2_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
	UART2_BRR2 = 0x03; UART2_BRR1 = 0x68; // 9600 baud

	for(;;)
	{
		printf("Casainho owns BMSBattery S06S controller !!\n");
		printf("OpenSource BMSBattery S controllers firmware\n\n");

		for(i = 0; i < 147456; i++); // delay of 1s
	}
}

