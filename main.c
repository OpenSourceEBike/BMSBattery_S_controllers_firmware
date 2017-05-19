#include "stm8s.h"
#include "stm8s_gpio.h"

int main() {
	volatile int d;

#define LED_GPIO_PORT  GPIOD
#define LED_GPIO_PINS  GPIO_PIN_5

	GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);

	do {
	    GPIO_WriteReverse(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);

		for(d = 0; d < 29000; d++)
		{ }

	} while(1);
}
