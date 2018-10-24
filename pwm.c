/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s_gpio.h"
#include "stm8s_tim1.h"
#include "motor.h"
#include "gpio.h"
#include "motor.h"
#include "pwm.h"
#include "config.h"

#if (PWM_CYCLES_SECOND == 15625L)
uint8_t ui8_svm_table [SVM_TABLE_LEN] ={
	127,
	133,
	138,
	144,
	149,
	154,
	160,
	165,
	170,
	176,
	181,
	186,
	191,
	197,
	202,
	207,
	212,
	217,
	222,
	227,
	231,
	236,
	239,
	240,
	242,
	243,
	244,
	245,
	247,
	248,
	249,
	250,
	250,
	251,
	252,
	253,
	253,
	254,
	254,
	254,
	255,
	255,
	255,
	255,
	255,
	255,
	254,
	254,
	254,
	253,
	253,
	252,
	251,
	251,
	250,
	249,
	248,
	247,
	246,
	245,
	243,
	242,
	241,
	239,
	238,
	239,
	241,
	242,
	243,
	245,
	246,
	247,
	248,
	249,
	250,
	251,
	251,
	252,
	253,
	253,
	254,
	254,
	254,
	255,
	255,
	255,
	255,
	255,
	255,
	254,
	254,
	254,
	253,
	253,
	252,
	251,
	250,
	250,
	249,
	248,
	247,
	245,
	244,
	243,
	242,
	240,
	239,
	236,
	231,
	227,
	222,
	217,
	212,
	207,
	202,
	197,
	191,
	186,
	181,
	176,
	170,
	165,
	160,
	154,
	149,
	144,
	138,
	133,
	127,
	122,
	116,
	111,
	106,
	100,
	95,
	89,
	84,
	79,
	74,
	68,
	63,
	58,
	53,
	48,
	43,
	38,
	33,
	28,
	23,
	18,
	16,
	14,
	13,
	12,
	10,
	9,
	8,
	7,
	6,
	5,
	4,
	3,
	3,
	2,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	2,
	2,
	3,
	4,
	5,
	6,
	6,
	8,
	9,
	10,
	11,
	12,
	14,
	15,
	17,
	15,
	14,
	12,
	11,
	10,
	9,
	8,
	6,
	6,
	5,
	4,
	3,
	2,
	2,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
	2,
	3,
	3,
	4,
	5,
	6,
	7,
	8,
	9,
	10,
	12,
	13,
	14,
	16,
	18,
	23,
	28,
	33,
	38,
	43,
	48,
	53,
	58,
	63,
	68,
	74,
	79,
	84,
	89,
	95,
	100,
	106,
	111,
	116,
	122
};
#endif

#if (PWM_CYCLES_SECOND == 20833L)
uint8_t ui8_svm_table [SVM_TABLE_LEN] ={
	95,
	100,
	103,
	108,
	112,
	115,
	120,
	124,
	128,
	132,
	136,
	140,
	143,
	148,
	152,
	155,
	159,
	163,
	167,
	170,
	173,
	177,
	179,
	180,
	182,
	182,
	183,
	184,
	185,
	186,
	187,
	188,
	188,
	188,
	189,
	190,
	190,
	191,
	191,
	191,
	192,
	192,
	192,
	192,
	192,
	192,
	191,
	191,
	191,
	190,
	190,
	189,
	188,
	188,
	188,
	187,
	186,
	185,
	185,
	184,
	182,
	182,
	181,
	179,
	179,
	179,
	181,
	182,
	182,
	184,
	185,
	185,
	186,
	187,
	188,
	188,
	188,
	189,
	190,
	190,
	191,
	191,
	191,
	192,
	192,
	192,
	192,
	192,
	192,
	191,
	191,
	191,
	190,
	190,
	189,
	188,
	188,
	188,
	187,
	186,
	185,
	184,
	183,
	182,
	182,
	180,
	179,
	177,
	173,
	170,
	167,
	163,
	159,
	155,
	152,
	148,
	143,
	140,
	136,
	132,
	128,
	124,
	120,
	115,
	112,
	108,
	103,
	100,
	95,
	91,
	87,
	83,
	79,
	75,
	71,
	67,
	63,
	59,
	55,
	51,
	47,
	43,
	39,
	36,
	32,
	28,
	24,
	21,
	17,
	13,
	12,
	10,
	9,
	9,
	7,
	6,
	6,
	5,
	4,
	3,
	3,
	2,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	2,
	3,
	3,
	4,
	4,
	6,
	6,
	7,
	8,
	9,
	10,
	11,
	12,
	11,
	10,
	9,
	8,
	7,
	6,
	6,
	4,
	4,
	3,
	3,
	2,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	2,
	2,
	3,
	3,
	4,
	5,
	6,
	6,
	7,
	9,
	9,
	10,
	12,
	13,
	17,
	21,
	24,
	28,
	32,
	36,
	39,
	43,
	47,
	51,
	55,
	59,
	63,
	67,
	71,
	75,
	79,
	83,
	87,
	91
};
#endif


uint8_t ui8_duty_cycle = 0;
uint8_t ui8_duty_cycle_target = 0;
uint8_t ui8_value_new_A;
uint8_t ui8_value_new_B;
uint8_t ui8_value_new_C;
uint16_t ui16_value;

void pwm_set_duty_cycle(uint8_t value) {
	ui8_duty_cycle_target = value;
}

void pwm_init(void) {
	// TIM1 Peripheral Configuration
	TIM1_DeInit();

#if (SVM_TABLE == SVM)
	TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
			TIM1_COUNTERMODE_CENTERALIGNED1,
			(16000000 / PWM_CYCLES_SECOND / 2 - 1), // clock = 16MHz; counter period = 1024; PWM freq = 16MHz / 1024 = 15.625kHz;
			//(BUT PWM center aligned mode needs twice the frequency)
			1); // will fire the TIM1_IT_UPDATE at every PWM period cycle
#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM_ORIGINAL)
	TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
			TIM1_COUNTERMODE_UP,
			(1024 - 1), // clock = 16MHz; counter period = 1024; PWM freq = 16MHz / 1024 = 15.625kHz;
			0); // will fire the TIM1_IT_UPDATE at every PWM period
#endif


	//#define DISABLE_PWM_CHANNELS_1_3

	TIM1_OC1Init(TIM1_OCMODE_PWM1,
#ifdef DISABLE_PWM_CHANNELS_1_3
			TIM1_OUTPUTSTATE_DISABLE,
			TIM1_OUTPUTNSTATE_DISABLE,
#else
			TIM1_OUTPUTSTATE_ENABLE,
			TIM1_OUTPUTNSTATE_ENABLE,
#endif
			0, // initial duty_cycle value
			TIM1_OCPOLARITY_HIGH,
			TIM1_OCNPOLARITY_LOW,
			TIM1_OCIDLESTATE_RESET,
			TIM1_OCNIDLESTATE_SET);

	TIM1_OC2Init(TIM1_OCMODE_PWM1,
			TIM1_OUTPUTSTATE_ENABLE,
			TIM1_OUTPUTNSTATE_ENABLE,
			0, // initial duty_cycle value
			TIM1_OCPOLARITY_HIGH,
			TIM1_OCNPOLARITY_LOW,
			TIM1_OCIDLESTATE_RESET,
			TIM1_OCNIDLESTATE_SET);

	TIM1_OC3Init(TIM1_OCMODE_PWM1,
#ifdef DISABLE_PWM_CHANNELS_1_3
			TIM1_OUTPUTSTATE_DISABLE,
			TIM1_OUTPUTNSTATE_DISABLE,
#else
			TIM1_OUTPUTSTATE_ENABLE,
			TIM1_OUTPUTNSTATE_ENABLE,
#endif
			0, // initial duty_cycle value
			TIM1_OCPOLARITY_HIGH,
			TIM1_OCNPOLARITY_LOW,
			TIM1_OCIDLESTATE_RESET,
			TIM1_OCNIDLESTATE_SET);

	TIM1_OC1PreloadConfig(ENABLE);
	TIM1_OC2PreloadConfig(ENABLE);
	TIM1_OC3PreloadConfig(ENABLE);

	// break, dead time and lock configuration
	TIM1_BDTRConfig(TIM1_OSSISTATE_ENABLE,
			TIM1_LOCKLEVEL_OFF,
			// hardware nees a dead time of 1us
			16, // DTG = 0; dead time in 62.5 ns steps; 1us/62.5ns = 16
			TIM1_BREAK_DISABLE,
			TIM1_BREAKPOLARITY_LOW,
			TIM1_AUTOMATICOUTPUT_DISABLE);

	TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);

	TIM1_Cmd(ENABLE); // TIM1 counter enable
	TIM1_CtrlPWMOutputs(DISABLE); // main Output disable for start up
}

void pwm_duty_cycle_controller(void) {
	//#define DO_DUTY_CYCLE_RAMP 1
#if DO_DUTY_CYCLE_RAMP == 1
	// limit PWM increase/decrease rate --- comment from stancecoke: this part does just nothing? ui8_counter is never increased?!
	static uint8_t ui8_counter;
	if (ui8_counter++ > PWM_DUTY_CYCLE_CONTROLLER_COUNTER) {
		ui8_counter = 0;

		// increment or decrement duty_cycle
		if (ui8_duty_cycle_target > ui8_duty_cycle) {
			ui8_duty_cycle++;
		} else if (ui8_duty_cycle_target < ui8_duty_cycle) {
			ui8_duty_cycle--;
		}
	}

	pwm_apply_duty_cycle(ui8_duty_cycle);
#else
	pwm_apply_duty_cycle(ui8_duty_cycle_target);
#endif
}

void pwm_apply_duty_cycle(uint8_t ui8_duty_cycle_value) {
#if (SVM_TABLE == SVM)
	static uint8_t ui8__duty_cycle;
	static uint8_t ui8_temp;

	ui8__duty_cycle = ui8_duty_cycle_value;

	// scale and apply _duty_cycle
	// add 120 degrees for phase C (new definition is assumed motor angle = table position = phase B = phase where current is measured)
	ui8_temp = ui8_svm_table[(uint8_t) (ui8_sinetable_position + 85 /* 120° */)];
	if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) {
		ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
		ui8_temp = (uint8_t) (ui16_value >> 8);
		ui8_value_new_C = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
	} else {
		ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
		ui8_temp = (uint8_t) (ui16_value >> 8);
		ui8_value_new_C = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
	}

	// add 240 degrees for phase A (new definition is assumed motor angle = table position = phase B = phase where current is measured)
	ui8_temp = ui8_svm_table[(uint8_t) (ui8_sinetable_position + 171 /* 240° */)];
	if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) {
		ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
		ui8_temp = (uint8_t) (ui16_value >> 8);
		ui8_value_new_A = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
	} else {
		ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
		ui8_temp = (uint8_t) (ui16_value >> 8);
		ui8_value_new_A = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
	}

	// new definition is assumed motor angle = table position = phase B  = phase where current is measured
	ui8_temp = ui8_svm_table[ui8_sinetable_position];
	if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) {
		ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8__duty_cycle;
		ui8_temp = (uint8_t) (ui16_value >> 8);
		ui8_value_new_B = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
	} else {
		ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8__duty_cycle;
		ui8_temp = (uint8_t) (ui16_value >> 8);
		ui8_value_new_B = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
	}

	// set final duty_cycle value
	TIM1_SetCompare1((uint16_t) (ui8_value_new_C << 1));
	TIM1_SetCompare2((uint16_t) (ui8_value_new_B << 1));
	TIM1_SetCompare3((uint16_t) (ui8_value_new_A << 1));
#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM_ORIGINAL)
	// scale and apply _duty_cycle
	ui8_value_a = ui8_svm_table[ui8_sinetable_position];
	ui16_value = (uint16_t) (ui8_value_a * ui8_duty_cycle_value);
	ui8_value_a = (uint8_t) (ui16_value >> 8);

	// add 120 degrees and limit
	ui8_value_b = ui8_svm_table[(uint8_t) (ui8_sinetable_position + 85 /* 120º */)];
	ui16_value = (uint16_t) (ui8_value_b * ui8_duty_cycle_value);
	ui8_value_b = (uint8_t) (ui16_value >> 8);

	// subtract 120 degrees and limit
	ui8_value_c = ui8_svm_table[(uint8_t) (ui8_sinetable_position + 171 /* 240º */)];
	ui16_value = (uint16_t) (ui8_value_c * ui8_duty_cycle_value);
	ui8_value_c = (uint8_t) (ui16_value >> 8);

	// set final duty_cycle value
	TIM1_SetCompare1((uint16_t) (ui8_value_a << 2));
	TIM1_SetCompare2((uint16_t) (ui8_value_c << 2));
	TIM1_SetCompare3((uint16_t) (ui8_value_b << 2));
#endif
}

