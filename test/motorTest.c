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
#include <math.h>

uint16_t ui16;
uint16_t ui16b;
uint8_t ui8Y;
uint8_t ui8b;
uint8_t ui8a;
uint8_t ui8X;


uint8_t ui8_sine_table [65] = {
	127	,
    133	,
    138	,
    144	,
    149	,
    154	,
    160	,
    165	,
    170	,
    176	,
    181	,
    186	,
    191	,
    197	,
    202	,
    207	,
    212	,
    217	,
    222	,
    227	,
    231	,
    236	,
    239	,
    240	,
    242	,
    243	,
    244	,
    245	,
    247	,
    248	,
    249	,
    250	,
    250	,
    251	,
    252	,
    253	,
    253	,
    254	,
    254	,
    254	,
    255	,
    255	,
    255	,
    255	,
    255	,
    255	,
    254	,
    254	,
    254	,
    253	,
    253	,
    252	,
    251	,
    251	,
    250	,
    249	,
    248	,
    247	,
    246	,
    245	,
    243	,
    242	,
    241	,
    239	,
    238	
};



uint8_t ui8_svm_table [256] = {
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

uint8_t fetch_table_value(uint8_t table_pos_in, uint8_t* table) {

	// we only store a quarter of the values and generate the other 4 quarter with a simple lookop translation
	uint8_t translated_table_pos = table_pos_in&~192;
	uint8_t table_val;

	if (table_pos_in & 64) {
		translated_table_pos = 64 - translated_table_pos;
	}

	table_val = table[translated_table_pos];

	if (table_pos_in & 128) {
		table_val = 255 - table_val;
	}

	return table_val;

}

uint8_t gen_sspwm(uint8_t table_pos_in, uint8_t print){
	float x = 2*M_PI*table_pos_in/256.0;
	float s= sin(x);
		
	int disc = 127+s * 127;
	
	if (print)
		printf("%d %.2f %.2f %d \n",table_pos_in, x,s,disc);
	
	return disc;
}

uint8_t gen_thipwm(uint8_t table_pos_in, uint8_t print){
	float x = 2*M_PI*table_pos_in/256.0;
	float s;
	
	s= 2.0/3.0*(sqrt(3.0)*sin(x)+1.0/3.0*sin(3*x));
		
	int disc = 127+s * 127;
	
	if (print)
		printf("%d %.2f %.2f %d \n",table_pos_in, x,s,disc);
	
	return disc;
}

void main() {

	printf("\r\ncurve test\r\n");
	for (int i = 0; i < 256; i++) {

		uint8_t compare_base = ui8_svm_table[i];


		uint8_t compare_a = fetch_table_value(i,ui8_svm_table);
		//uint8_t compare_b = fetch_table_value(i,ui8_sine_table);
		
		uint8_t compare_b = gen_sspwm(i,0);
		//uint8_t compare_b = gen_thipwm(i,0);

		//printf("%3d %3d %3d %3d %2d %2d \r\n", i, compare_base, compare_a, compare_b, compare_a - compare_base, compare_b - compare_base);
		printf("%3d,\r\n", compare_b);
		
		
		
	}


//	printf("\r\ngenerator\r\n");
//	for (int i = 0; i < 256; i++) {
//		
//		gen_thipwm(i,1);
//	}

}


//https://www.infineon.com/dgdl/AP1609710_different_PWM_for_three_phase_ACIM.pdf?fileId=db3a304412b407950112b40a1bf20453
