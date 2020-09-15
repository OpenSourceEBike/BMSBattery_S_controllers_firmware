/*
Generic display init and update functions
Written by jenkie and Thomas Jarosch
Functions for the Nokia graphical screen mainly by m--k
King-Meter library and support written by Michael Fabry

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software Foundation,
Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 */

#include <stdio.h>
#include "stm8s.h"
#include "display.h"
#include "main.h"
#include "config.h"
#include "stm8s_itc.h"
#include "uart.h"
#include "adc.h"
#include "brake.h"
#include "ACAeeprom.h"
#include "interrupts.h"
#include "ACAcontrollerState.h"

#ifdef DISPLAY_TYPE_KT_LCD3

display_view_type display_view;
display_mode_type display_mode; //currently display mode
float current_display;
uint8_t battery_percent_fromcapacity = 11; //hier nur als Konstante um Batterie normal zu senden....


uint8_t ui8_tx_buffer[12];
uint8_t ui8_j;
uint8_t ui8_crc;
uint16_t ui16_wheel_period_ms = 4500;
uint16_t ui16_battery_bars_calc = 0;
uint8_t ui8_battery_soc = 12;
uint8_t ui16_error;
uint8_t ui8_rx_buffer[13];
uint8_t ui8_rx_buffer_counter = 0;
uint8_t ui8_byte_received;
uint8_t ui8_moving_indication = 0;
uint8_t ui8_UARTCounter = 0;

volatile struc_lcd_configuration_variables lcd_configuration_variables;

void display_init(){
	// noop just here to have a common interface
}

void send_message() {

	// prepare moving indication info
	ui8_moving_indication = 0;
	if (brake_is_set()) {
		ui8_moving_indication |= (1 << 5);
	}
	//if (ebike_app_cruise_control_is_set ()) { ui8_moving_indication |= (1 << 3); }
	//if (throttle_is_set ()) { ui8_moving_indication |= (1 << 1); }
	//if (pas_is_set ()) { ui8_moving_indication |= (1 << 4); }


	if (((ui16_aca_flags & EXTERNAL_SPEED_SENSOR) == EXTERNAL_SPEED_SENSOR)) {
		if (ui16_time_ticks_between_speed_interrupt > 65000) {
			ui16_wheel_period_ms = 4500;
		} else {
			ui16_wheel_period_ms = (uint16_t) ((float) ui16_time_ticks_between_speed_interrupt / ((float) ui16_pwm_cycles_second / 1000.0)); //must be /1000 devided in /125/8 for better resolution
		}
	}else{
		if (ui32_erps_filtered == 0) {
			ui16_wheel_period_ms = 4500;
		} else {
			ui16_wheel_period_ms = (uint16_t) (1000.0 * (float) ui8_gear_ratio / (float) ui32_erps_filtered);
		}
	}

	// calc battery pack state of charge (SOC)
	ui16_battery_bars_calc = ui8_adc_read_battery_voltage() - ui8_s_battery_voltage_min;
	ui16_battery_bars_calc<<=8;
	ui16_battery_bars_calc /=(ui8_s_battery_voltage_max-ui8_s_battery_voltage_min);
	
	if (ui16_battery_bars_calc > 200) {
		ui8_battery_soc = 16;
	}// 4 bars | full
	else if (ui16_battery_bars_calc > 150) {
		ui8_battery_soc = 12;
	}// 3 bars
	else if (ui16_battery_bars_calc > 100) {
		ui8_battery_soc = 8;
	}// 2 bars
	else if (ui16_battery_bars_calc > 50) {
		ui8_battery_soc = 4;
	}// 1 bar
	else {
		ui8_battery_soc = 3;
	} // empty

	ui8_tx_buffer [0] = 65;
	// B1: battery level
	ui8_tx_buffer [1] = ui8_battery_soc;
	// B2: 24V controller
	ui8_tx_buffer [2] = ui8_battery_voltage_nominal;
	// B3: speed, wheel rotation period, ms; period(ms)=B3*256+B4;
	ui8_tx_buffer [3] = (ui16_wheel_period_ms >> 8) & 0xff;
	ui8_tx_buffer [4] = ui16_wheel_period_ms & 0xff;

	//Send confirming signal for activating offroad mode
	if (ui8_offroad_state == 4) { //quitting signal for offroad mode enabled. Shows about 80 km/h for three seconds

		ui8_tx_buffer [3] = (100 >> 8) & 0xff; //100ms are about 80 km/h @ 28" 2200mm wheel circumference
		ui8_tx_buffer [4] = 100 & 0xff;
	}

	// B5: error info display
	ui8_tx_buffer [5] = ui16_error;
	// B6: CRC: xor B1,B2,B3,B4,B5,B7,B8,B9,B10,B11
	// 0 value so no effect on xor operation for now
	ui8_tx_buffer [6] = 0;
	// B7: moving mode indication, bit
	// throttle: 2
	ui8_tx_buffer [7] = ui8_moving_indication;
	// B8: 4x controller current
	// Vbat = 30V:
	// - B8 = 255, LCD shows 1912 watts
	// - B8 = 250, LCD shows 1875 watts
	// - B8 = 100, LCD shows 750 watts
	// each unit of B8 = 0.25A


	ui8_tx_buffer [8] = (uint8_t) ((((ui16_BatteryCurrent - ui16_current_cal_b + 1) << 2)*10) / ui8_current_cal_a);
	// B9: motor temperature
	ui8_tx_buffer [9] = i8_motor_temperature - 15; //according to documentation at endless sphere
	// B10 and B11: 0
	ui8_tx_buffer [10] = 0;
	ui8_tx_buffer [11] = 0;

	// calculate CRC xor
	ui8_crc = 0;
	for (ui8_j = 1; ui8_j <= 11; ui8_j++) {
		ui8_crc ^= ui8_tx_buffer[ui8_j];
	}
	ui8_tx_buffer [6] = ui8_crc;

	// send the package over UART
	for (ui8_j = 0; ui8_j <= 11; ui8_j++) {
		uart_put_buffered(ui8_tx_buffer [ui8_j]);
	}
}

/********************************************************************************************/
// Process received package from the LCD
//

void digestLcdValues(void) {

	ui8_assistlevel_global = lcd_configuration_variables.ui8_assist_level + 80; // always add max regen 
	ui8_walk_assist = lcd_configuration_variables.ui8_WalkModus_On;
	// added by DerBastler Light On/Off
	light_stat = (light_stat&~128) | lcd_configuration_variables.ui8_light_On; // only update 7th bit, 1st bit is current status
	
	if (lcd_configuration_variables.ui8_max_speed != ui8_speedlimit_kph) {
		ui8_speedlimit_kph = lcd_configuration_variables.ui8_max_speed;
		eeprom_write(OFFSET_MAX_SPEED_DEFAULT, lcd_configuration_variables.ui8_max_speed);
	}
}

// see if we have a received package to be processed

void display_update() {

	// fill local buffer from uart ringbuffer
	uart_fill_rx_packet_buffer(ui8_rx_buffer, 13, &ui8_UARTCounter);
	
	// Check for reception of complete message
	if ((ui8_UARTCounter > 12) || (ui8_rx_buffer[ui8_UARTCounter - 1] == 0x0E)) {
		ui8_UARTCounter = 0;

		// validation of the package data
		ui8_crc = 0;
		for (ui8_j = 0; ui8_j <= 12; ui8_j++) {
			
			if (ui8_j == 5) continue; // don't xor B5 
			ui8_crc ^= ui8_rx_buffer[ui8_j];
		}

		// see if CRC is ok
		if (((ui8_crc ^ 10) == ui8_rx_buffer [5]) || // some versions of CRC LCD5 (??)
				((ui8_crc ^ 1) == ui8_rx_buffer [5]) || // CRC LCD3 (tested with KT36/48SVPR, from PSWpower)
				((ui8_crc ^ 2) == ui8_rx_buffer [5]) || // CRC LCD5
				((ui8_crc ^ 3) == ui8_rx_buffer [5]) || // CRC LCD5 Added display 5 Romanta
				((ui8_crc ^ 4) == ui8_rx_buffer [5]) ||
		    		((ui8_crc ^ 5) == ui8_rx_buffer [5]) ||
		    		((ui8_crc ^ 6) == ui8_rx_buffer [5]) ||
		    		((ui8_crc ^ 7) == ui8_rx_buffer [5]) ||
		    		((ui8_crc ^ 8) == ui8_rx_buffer [5]) ||
		    		((ui8_crc ^ 14) == ui8_rx_buffer [5]) ||
				((ui8_crc ^ 9) == ui8_rx_buffer [5])) // CRC LCD3
		{
			// added by DerBastler Light On/Off 
			lcd_configuration_variables.ui8_light_On = ui8_rx_buffer [1] & 128;
			
			lcd_configuration_variables.ui8_assist_level = ui8_rx_buffer [1] & 7;
			
			// walk assist, see https://endless-sphere.com/forums/viewtopic.php?f=2&t=73471&p=1324745&hilit=kunteng+protocol+hacked#p1109048 
			if(lcd_configuration_variables.ui8_assist_level == 6)lcd_configuration_variables.ui8_WalkModus_On = 1;
			else lcd_configuration_variables.ui8_WalkModus_On = 0;
			
			lcd_configuration_variables.ui8_max_speed = 10 + ((ui8_rx_buffer [2] & 248) >> 3) | (ui8_rx_buffer [4] & 32);
			lcd_configuration_variables.ui8_wheel_size = ((ui8_rx_buffer [4] & 192) >> 6) | ((ui8_rx_buffer [2] & 7) << 2);

			lcd_configuration_variables.ui8_p1 = ui8_rx_buffer[3];
			lcd_configuration_variables.ui8_p2 = ui8_rx_buffer[4] & 0x07;
			lcd_configuration_variables.ui8_p3 = ui8_rx_buffer[4] & 0x08;
			lcd_configuration_variables.ui8_p4 = ui8_rx_buffer[4] & 0x10;
			lcd_configuration_variables.ui8_p5 = ui8_rx_buffer[0];

			lcd_configuration_variables.ui8_c1 = (ui8_rx_buffer[6] & 0x38) >> 3;
			lcd_configuration_variables.ui8_c2 = (ui8_rx_buffer[6] & 0x37);
			lcd_configuration_variables.ui8_c4 = (ui8_rx_buffer[8] & 0xE0) >> 5;
			lcd_configuration_variables.ui8_c5 = (ui8_rx_buffer[7] & 0x0F);
			lcd_configuration_variables.ui8_c12 = (ui8_rx_buffer[9] & 0x0F);
			lcd_configuration_variables.ui8_c13 = (ui8_rx_buffer[10] & 0x1C) >> 2;
			lcd_configuration_variables.ui8_c14 = (ui8_rx_buffer[7] & 0x60) >> 5;

			digestLcdValues();
			send_message();
		}
	}
}

#endif
