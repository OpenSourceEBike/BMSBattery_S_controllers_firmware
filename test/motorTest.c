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
 * 
 * This file now has mainly become a wavetable creator / tester
 * 
 */

#include <stdio.h>
#include <stdint.h>
#include <math.h>

#include "wavetables/midpoint_clamp_255_svm_orig.c"
#include "wavetables/midpoint_clamp_192_svm_orig.c"
#include "wavetables/third_harmonic_255_gen.c"
#include "wavetables/third_harmonic_192_gen.c"
#include "wavetables/pure_sine_255_gen.c"
#include "wavetables/pure_sine_192_gen.c"
#include "wavetables/midpoint_clamp_255_gen.c"
#include "wavetables/midpoint_clamp_192_gen.c"
#include "wavetables/nip_tuck_255_gen.c"
#include "wavetables/nip_tuck_192_gen.c"

uint16_t ui16;
uint16_t ui16b;
uint8_t ui8Y;
uint8_t ui8b;
uint8_t ui8a;
uint8_t ui8X;

uint8_t fetch_table_value(uint8_t table_pos_in, uint8_t* table, uint8_t max, uint8_t downscaleForHighSpeed) {

	// we only store a quarter of the values and generate the other 4 quarter with a simple lookop translation
	uint8_t translated_table_pos = table_pos_in&~192;
	uint8_t table_val;

	if (table_pos_in & 64) {
		translated_table_pos = 64 - translated_table_pos;
	}

	table_val = table[translated_table_pos];
	
	if (downscaleForHighSpeed){
		table_val = table_val-(table_val>>2);
	}
	if (table_pos_in & 128) {
		table_val = max - table_val;
	}

	return table_val;

}

// this is top and bottom clamp which equals nip and tuck with the given hardcoded amplitude 1.154734* (100%plus 15.5%gain compared to sine)
// top and bottom clamp changes it's waveform with amplitude, so we can't use that with simplified foc
// but we can use nip&tuck because that doesn't change it's waveform with amplitude
uint8_t gen_natspwm(uint8_t table_pos_in, uint16_t range, uint8_t print){
	float x = 2*M_PI*table_pos_in/256.0;
	float a= 1.154734*sin(x);
	float b= 1.154734*sin(x+(2.0/3.0)*M_PI);
	float c= 1.154734*sin(x+(4.0/3.0)*M_PI);
	
	float z = 1-(fmaxf(fmaxf(a,b),c));
	if ((a>0 && b>0)||(a>0 && c>0)||(b>0 && c>0)){
		z = -1-(fminf(fminf(a,b),c));
	}
	
	int disc = round(((range-0.01)/2.0) + (a) * (((range)/2.0)));
	int discplus = round(((range-0.01)/2.0) + (a+z) * (((range)/2.0)));
	
	if (print)
		printf("%3d %4.2f   % 4.2f % 4.2f % 4.2f   % 4.2f % 6.4f   %3d %3d\n",table_pos_in, x,a,b,c,z,a+z,disc,discplus);
	
	return discplus;
}

uint8_t gen_mcspwm(uint8_t table_pos_in, uint16_t range, uint8_t print){
	float x = 2*M_PI*table_pos_in/256.0;
	float a= sin(x);
	float b= sin(x+(2.0/3.0)*M_PI);
	float c= sin(x+(4.0/3.0)*M_PI);
	float z = 1/2 - 0.5* (fminf(fminf(a,b),c)+fmaxf(fmaxf(a,b),c));
	
	int disc = round(((range-0.01)/2.0) + (a) * (((range)/2.0)));
	int discplus = round(((range-0.01)/2.0) + (a+z) *1.154734* (((range)/2.0)));
	
	if (print)
		printf("%3d %4.2f   % 4.2f % 4.2f % 4.2f   % 4.2f % 6.4f   %3d %3d\n",table_pos_in, x,a,b,c,z,a+z,disc,discplus);
	
	return discplus;
}

uint8_t gen_sspwm(uint8_t table_pos_in, uint16_t range, uint8_t print){
	float x = 2*M_PI*table_pos_in/256.0;
	float s= sin(x);
		
	int disc = round(((range-0.01)/2.0) + s * (((range)/2.0)));
	
	if (print)
		printf("%3d %.2f %.2f %d \n",table_pos_in, x,s,disc);
	
	return disc;
}

uint8_t gen_thipwm(uint8_t table_pos_in, uint16_t range, uint8_t print){
	float x = 2*M_PI*table_pos_in/256.0;
	float s;
	
	//s= 2.0/3.0*(sqrt(3.0)*sin(x)+1.0/3.0*sin(3*x));
	s= 2.0/3.0*(sqrt(3.0)*sin(x)+0.275*sin(3*x));

	
	//0.5-a*Math.cos(Math.PI*6*u)/6;
		
	int disc = round(((range-0.01)/2.0) + s * (((range)/2.0)));
	
	if (print)
		printf("%3d %.2f %.2f %d \n",table_pos_in, x,s,disc);
	
	return disc;
}

void main() {

	printf("\r\ncurve test\r\n");
	for (int i = 0; i < 256; i++) {

		uint8_t compare_base = midpoint_clamp_192_svm_orig[i];
		//uint8_t compare_base = midpoint_clamp_255_svm_orig[i];
		//uint8_t compare_base = third_harmonic_255_gen[i];
		//uint8_t compare_base = pure_sine_255_gen[i];
		//uint8_t compare_base = pure_sine_192_gen[i];
		//uint8_t compare_base = third_harmonic_192_gen[i];

		//uint8_t compare_a = midpoint_clamp_255_gen[i];
		//uint8_t compare_a = midpoint_clamp_192_gen[i];
		
		//uint8_t compare_base = pure_sine_255_gen[i];
		//uint8_t compare_base = pure_sine_192_gen[i];
		
		//uint8_t compare_base = nip_tuck_255_gen[i];
		//uint8_t compare_base = nip_tuck_192_gen[i];
		

		//uint8_t compare_a = fetch_table_value(i,third_harmonic_255_gen,255,0);
		//uint8_t compare_a = fetch_table_value(i,midpoint_clamp_255_svm_orig,255,0);
		//uint8_t compare_a = fetch_table_value(i,pure_sine_255_gen,255,0);
		//uint8_t compare_a = fetch_table_value(i,nip_tuck_255_gen,255,0);
		
		uint8_t compare_a = fetch_table_value(i,pure_sine_255_gen,192,1);
		//uint8_t compare_a = fetch_table_value(i,third_harmonic_255_gen,192,1);
		//uint8_t compare_a = fetch_table_value(i,midpoint_clamp_255_gen,192,1);	
		//uint8_t compare_a = fetch_table_value(i,nip_tuck_255_gen,192,1);

		
		//uint8_t compare_a = gen_mcspwm(i,192,0);
		//uint8_t compare_a = gen_sspwm(i,192,0);
		//uint8_t compare_a = gen_thipwm(i,192,0);
		//uint8_t compare_a = gen_natspwm(i,192,0);

		printf("%3d %3d %3d  %2d \r\n", i, compare_base, compare_a, compare_a - compare_base);
		//printf(" %3d,\r\n", compare_a);
		
		
		
	}


//	printf("\r\ngenerator\r\n");
//	for (int i = 0; i < 256; i++) {
//		
//		gen_thipwm(i,255,1);
//	}

}


//https://www.infineon.com/dgdl/AP1609710_different_PWM_for_three_phase_ACIM.pdf?fileId=db3a304412b407950112b40a1bf20453
