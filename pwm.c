/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho,Björn Schmidt 2015, 2106, 2017, 2019
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
#include "ACAcontrollerState.h"

#if (PWM_CYCLES_SECOND == 15625L)
#include "wavetables/midpoint_clamp_255_gen.c"
#include "wavetables/third_harmonic_255_gen.c"
#include "wavetables/pure_sine_255_gen.c"
#include "wavetables/nip_tuck_255_gen.c"
#endif

#if (PWM_CYCLES_SECOND == 20833L)
#include "wavetables/midpoint_clamp_192_gen.c"
#include "wavetables/third_harmonic_192_gen.c"
#include "wavetables/pure_sine_192_gen.c"
#include "wavetables/nip_tuck_192_gen.c"
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

uint8_t fetch_table_value(uint8_t table_pos_in) {

	// we only store a quarter of the values and generate the other 4 quarter with a simple translation
	uint8_t translated_table_pos = table_pos_in&~192;
	uint8_t table_val;

	if (table_pos_in & 64) {
		translated_table_pos = 64 - translated_table_pos;
	}

	if ((ui16_aca_experimental_flags & (USE_ALTERNATE_WAVETABLE|USE_ALTERNATE_WAVETABLE_B)) == (0)){
		// default
		table_val = midpoint_clamp_gen[translated_table_pos];
	}else if ((ui16_aca_experimental_flags & (USE_ALTERNATE_WAVETABLE|USE_ALTERNATE_WAVETABLE_B)) == (USE_ALTERNATE_WAVETABLE)){
		table_val = pure_sine_gen[translated_table_pos];
	}else if ((ui16_aca_experimental_flags & (USE_ALTERNATE_WAVETABLE|USE_ALTERNATE_WAVETABLE_B)) == (USE_ALTERNATE_WAVETABLE_B)){
		table_val = third_harmonic_gen[translated_table_pos];
	}else if ((ui16_aca_experimental_flags & (USE_ALTERNATE_WAVETABLE|USE_ALTERNATE_WAVETABLE_B)) == (USE_ALTERNATE_WAVETABLE|USE_ALTERNATE_WAVETABLE_B)){
		table_val = nip_tuck_gen[translated_table_pos];
	}else{
		// fallback
		table_val = midpoint_clamp_gen[translated_table_pos];
	}

	if (table_pos_in & 128) {
#if (PWM_CYCLES_SECOND == 15625L)
		table_val = 255 - table_val;
#else
		table_val = 192 - table_val;
#endif
	}
	return table_val;

}

void pwm_apply_duty_cycle(uint8_t ui8_duty_cycle_value) {
#if (SVM_TABLE == SVM)
	static uint8_t ui8__duty_cycle;
	static uint8_t ui8_temp;

	ui8__duty_cycle = ui8_duty_cycle_value;

	// scale and apply _duty_cycle
	// add 120 degrees for phase C (new definition is assumed motor angle = table position = phase B = phase where current is measured)
	ui8_temp = fetch_table_value((uint8_t) (ui8_sinetable_position + 85 /* 120° */));
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
	ui8_temp = fetch_table_value((uint8_t) (ui8_sinetable_position + 171 /* 240° */));
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
	ui8_temp = fetch_table_value(ui8_sinetable_position);
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
	ui8_value_a = fetch_table_value(ui8_sinetable_position);
	ui16_value = (uint16_t) (ui8_value_a * ui8_duty_cycle_value);
	ui8_value_a = (uint8_t) (ui16_value >> 8);

	// add 120 degrees and limit
	ui8_value_b = fetch_table_value((uint8_t) (ui8_sinetable_position + 85 /* 120º */));
	ui16_value = (uint16_t) (ui8_value_b * ui8_duty_cycle_value);
	ui8_value_b = (uint8_t) (ui16_value >> 8);

	// subtract 120 degrees and limit
	ui8_value_c = fetch_table_value((uint8_t) (ui8_sinetable_position + 171 /* 240º */);
	ui16_value = (uint16_t) (ui8_value_c * ui8_duty_cycle_value);
	ui8_value_c = (uint8_t) (ui16_value >> 8);

	// set final duty_cycle value
	TIM1_SetCompare1((uint16_t) (ui8_value_a << 2));
	TIM1_SetCompare2((uint16_t) (ui8_value_c << 2));
	TIM1_SetCompare3((uint16_t) (ui8_value_b << 2));
#endif
}

