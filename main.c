#include "stm8l.h"

int main() {
	int d;
	// Configure pins
	PD_DDR = (1 << 3); // LED on PD3
	PD_CR1 = (1 << 3);

	do {

		PD_ODR ^= (1 << 3);

		for(d = 0; d < 2900; d++)
		{ }

	} while(1);
}
