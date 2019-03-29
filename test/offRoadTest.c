/*
 * Copyright (C) 2018 Björn Schmidt <bschmidt@panvision.de>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <termios.h>
#include <unistd.h>
#include <fcntl.h>

#define MORSE_TIME_1 50
#define MORSE_TIME_2 50
#define MORSE_TIME_3 50
#define MORSE_TOLERANCE 50

uint8_t ui8_offroad_counter;
uint8_t ui8_offroad_state = 18;
uint8_t ui16_aca_flags = 158;
uint8_t fake_brake_set = 127;

typedef enum {
	RESET = 0, SET = !RESET
} BitStatus;

typedef enum {
	// values from 0-31 are allowed as signals are stored in a single uint32_t
	ASSIST_LVL_AFFECTS_THROTTLE = ((uint16_t) 1),
	OFFROAD_ENABLED = ((uint16_t) 2),
	BRAKE_DISABLES_OFFROAD = ((uint16_t) 4),

	DIGITAL_REGEN = ((uint16_t) 8),
	SPEED_INFLUENCES_REGEN = ((uint16_t) 16),
	SPEED_INFLUENCES_TORQUESENSOR = ((uint16_t) 32),
	PAS_INVERTED = ((uint16_t) 64),

	DUMMY_ALWAYS_ON = ((uint16_t) 128)
} ACA_FLAGS;

BitStatus GPIO_ReadInputPin() {
	return ((BitStatus) (fake_brake_set<127 ? RESET:SET));
}

int kbhit(void) {
	struct termios oldt, newt;
	int ch;
	int oldf;

	tcgetattr(STDIN_FILENO, &oldt);
	newt = oldt;
	newt.c_lflag &= ~(ICANON | ECHO);
	tcsetattr(STDIN_FILENO, TCSANOW, &newt);
	oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
	fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);

	ch = getchar();

	tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
	fcntl(STDIN_FILENO, F_SETFL, oldf);

	if (ch != EOF) {
		ungetc(ch, stdin);
		return 1;
	}

	return 0;
}

void updateSlowLoopStates(void) {

	if (((ui16_aca_flags & BRAKE_DISABLES_OFFROAD) == BRAKE_DISABLES_OFFROAD) && (ui8_offroad_state > 4)) {
		// if disabling is enabled :)
		if (!GPIO_ReadInputPin()) {
			ui8_offroad_counter++;
			if (ui8_offroad_counter == 255) {//disable on pressing brake for 5 seconds
				ui8_offroad_state = 0;
				ui8_offroad_counter = 0;
			}
		} else {
			ui8_offroad_counter = 0;
		}
	}

	// check if offroad mode is enabled
	if (0 == (ui16_aca_flags & OFFROAD_ENABLED)) {
		return;
	}

	if (ui8_offroad_state == 0 && !GPIO_ReadInputPin()) {//first step, brake on.
		ui8_offroad_state = 1;
	} else if (ui8_offroad_state == 1) {//second step, make sure the brake is hold according to definded time
		ui8_offroad_counter++;
		if (GPIO_ReadInputPin() && ui8_offroad_counter < MORSE_TIME_1) {//brake is released too early
			ui8_offroad_state = 0;
			ui8_offroad_counter = 0;
		} else if (GPIO_ReadInputPin() && ui8_offroad_counter > MORSE_TIME_1 + MORSE_TOLERANCE) {//brake is released according to cheatcode
			ui8_offroad_state = 2;
			ui8_offroad_counter = 0;
		} else if (!GPIO_ReadInputPin() && ui8_offroad_counter > MORSE_TIME_1 + MORSE_TOLERANCE) {//brake is released too late
			ui8_offroad_state = 0;
			ui8_offroad_counter = 0;
		}
	} else if (ui8_offroad_state == 2) {//third step, make sure the brake is released according to definded time
		ui8_offroad_counter++;
		if (!GPIO_ReadInputPin() && ui8_offroad_counter < MORSE_TIME_2) { //brake is hold too early
			ui8_offroad_state = 0;
			ui8_offroad_counter = 0;
		} else if (!GPIO_ReadInputPin() && ui8_offroad_counter > MORSE_TIME_2 + MORSE_TOLERANCE) {//brake is hold according to cheatcode
			ui8_offroad_state = 3;
			ui8_offroad_counter = 0;

		} else if (GPIO_ReadInputPin() && ui8_offroad_counter > MORSE_TIME_2 + MORSE_TOLERANCE) {//brake is hold too late
			ui8_offroad_state = 0;
			ui8_offroad_counter = 0;
		}
	} else if (ui8_offroad_state == 3) {//second step, make sure the brake is hold according to definded time
		ui8_offroad_counter++;
		if (GPIO_ReadInputPin() && ui8_offroad_counter < MORSE_TIME_3) {//brake is released too early
			ui8_offroad_state = 0;
			ui8_offroad_counter = 0;
		} else if (GPIO_ReadInputPin() && ui8_offroad_counter > MORSE_TIME_3 + MORSE_TOLERANCE) {//brake is released according to cheatcode
			ui8_offroad_state = 4;
			ui8_offroad_counter = 0;

		} else if (!GPIO_ReadInputPin() && ui8_offroad_counter > MORSE_TIME_3 + MORSE_TOLERANCE) {//brake is released too late
			ui8_offroad_state = 0;
			ui8_offroad_counter = 0;
		}
	} else if (ui8_offroad_state == 4) {
		// wait 3 seconds in state 4 for display feedback
		ui8_offroad_counter++;
		if (ui8_offroad_counter > 150) {
			ui8_offroad_state = 255;
			ui8_offroad_counter = 0;
		}
	}


}

void main() {

	// disable echo
	struct termios t;
	tcgetattr(STDIN_FILENO, &t);
	t.c_lflag &= ~ECHO;
	tcsetattr(STDIN_FILENO, TCSANOW, &t);

	while (1) {

		if (kbhit()) {
			getchar();
			fake_brake_set-=32;
		} else {
			fake_brake_set++;
		}
		if (fake_brake_set <80){
			fake_brake_set = 80;
		}
		if (fake_brake_set >127){
			fake_brake_set = 127;
		}

		nanosleep((const struct timespec[]){
			{0, 20000000L}
		}, NULL);
		updateSlowLoopStates();

		if (((ui16_aca_flags & BRAKE_DISABLES_OFFROAD) == BRAKE_DISABLES_OFFROAD) && 1 == 1) {
			printf(" disabler on  ");
		} else {
			printf(" disabler off ");
		}

		if (0 == (ui16_aca_flags & OFFROAD_ENABLED)) {
			printf(" enabler off ");

		} else {
			printf(" enabler on  ");
		}
		
		if (!GPIO_ReadInputPin()) {
			printf(" brake on  ");

		} else {
			printf(" brake off ");
		}

		printf("%d %d ", ui8_offroad_state, ui8_offroad_counter);

		printf("\r\n");
	}
}


