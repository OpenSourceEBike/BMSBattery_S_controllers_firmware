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
#include "interrupts.h"
//#include "update_setpoint.h" // FIXME, not needed any more?
#include "ACAcontrollerState.h"

display_view_type display_view;

display_mode_type display_mode; //currently display mode


float current_display;
uint8_t battery_percent_fromcapacity=11; //hier nur als Konstante um Batterie normal zu senden....


#ifdef DISPLAY_TYPE_KT_LCD3
uint8_t ui8_tx_buffer[12];
uint8_t ui8_j;
uint8_t ui8_crc;
uint16_t ui16_wheel_period_ms =4500;
uint16_t ui16_battery_volts= 36;
uint8_t ui8_battery_soc = 12;
uint8_t ui16_error;
uint8_t ui8_rx_buffer[13];
uint8_t ui8_rx_buffer_counter = 0;
uint8_t ui8_byte_received;
uint8_t ui8_moving_indication = 0;
uint8_t ui8_UARTCounter = 0;
uint8_t ui8_msg_received=0;
volatile struc_lcd_configuration_variables lcd_configuration_variables;


#endif


#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
#include "display_kingmeter.h"
#endif



#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)         // For King-Meter J-LCD, SW-LCD, KM5s-LCD, EBS-LCD2
KINGMETER_t KM;                                     // Context of the King-Meter object
#endif


#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
void kingmeter_update(void)
{
    /* Prepare Tx parameters */

    if(battery_percent_fromcapacity > 10)
    {
        KM.Tx.Battery = KM_BATTERY_NORMAL;
    }
    else
    {
        KM.Tx.Battery = KM_BATTERY_LOW;
    }

    if((ui16_time_ticks_between_speed_interrupt>>4) < KM_MAX_WHEELTIME && ui16_time_ticks_between_speed_interrupt!=0)
    {
        // Adapt wheeltime to match displayed speedo value according config.h setting      
        KM.Tx.Wheeltime_ms = ui16_time_ticks_between_speed_interrupt>>4;	// is not exactly correct, factor should be 15.625, not 16


    }
    else
    {
        KM.Tx.Wheeltime_ms = KM_MAX_WHEELTIME;
    }

    KM.Tx.Error = KM_ERROR_NONE;

    if (((ui8_current_cal_a*ui16_BatteryCurrent)/10 -ui16_current_cal_b) != 0x99)
    {
    KM.Tx.Current_x10= (ui8_current_cal_a*ui16_BatteryCurrent)/10 -ui16_current_cal_b; //calculate Amps out of 10bit ADC value
    }

    /* Receive Rx parameters/settings and send Tx parameters */
    KingMeter_Service(&KM);


    /* Apply Rx parameters */

    #ifdef SUPPORT_LIGHTS_SWITCH
    if(KM.Rx.Headlight == KM_HEADLIGHT_OFF)
    {
        digitalWrite(lights_pin, 0);
    }
    else // KM_HEADLIGHT_ON, KM_HEADLIGHT_LOW, KM_HEADLIGHT_HIGH
    {
        digitalWrite(lights_pin, 1);
    }
    #endif

    if(KM.Rx.PushAssist == KM_PUSHASSIST_ON)
    {
        #if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_901U)
        //do anything
        #else
	//do something else
        #endif
    }
    else
    {
	ui8_assistlevel_global=KM.Rx.AssistLevel+80; // always add max regen 
     }


    /* Shutdown in case we received no message in the last 3s

    if((millis() - KM.LastRx) > 3000)
    {
        poti_stat     = 0;
        throttle_stat = 0;

    }*/
}
#endif



void display_init()
{

#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
    KingMeter_Init(&KM);
#endif


}

#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
void display_update()
{
    kingmeter_update();
}
#endif

#ifdef DISPLAY_TYPE_KT_LCD3

void display_update()
{

  // prepare moving indication info
  ui8_moving_indication = 0;
  if (brake_is_set ()) { ui8_moving_indication |= (1 << 5); }
  //if (ebike_app_cruise_control_is_set ()) { ui8_moving_indication |= (1 << 3); }
  //if (throttle_is_set ()) { ui8_moving_indication |= (1 << 1); }
  //if (pas_is_set ()) { ui8_moving_indication |= (1 << 4); }


#ifdef SPEEDSENSOR_EXTERNAL
  if(ui16_time_ticks_between_speed_interrupt>65000){ui16_wheel_period_ms=4500;}
  else{
  ui16_wheel_period_ms = (uint16_t) ((float)ui16_time_ticks_between_speed_interrupt/((float)PWM_CYCLES_SECOND/1000.0)); //must be /1000 devided in /125/8 for better resolution
  }
#endif

#ifdef SPEEDSENSOR_INTERNAL
  if(ui32_erps_filtered==0){ui16_wheel_period_ms=4500;}
    else{
  ui16_wheel_period_ms=(uint16_t)(1000.0*(float)GEAR_RATIO/(float)ui32_erps_filtered);
    }
#endif

  // calc battery pack state of charge (SOC)
  ui16_battery_volts = ((uint16_t) ui8_adc_read_battery_voltage()) * ((uint16_t) ADC_BATTERY_VOLTAGE_K);
  if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_80)) { ui8_battery_soc = 16; } // 4 bars | full
  else if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_60)) { ui8_battery_soc = 12; } // 3 bars
  else if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_40)) { ui8_battery_soc = 8; } // 2 bars
  else if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_20)) { ui8_battery_soc = 4; } // 1 bar
  else { ui8_battery_soc = 3; } // empty

ui8_tx_buffer [0] = 65;
  // B1: battery level
  ui8_tx_buffer [1] = ui8_battery_soc;
  // B2: 24V controller
  ui8_tx_buffer [2] = (uint8_t) COMMUNICATIONS_BATTERY_VOLTAGE;
  // B3: speed, wheel rotation period, ms; period(ms)=B3*256+B4;
  ui8_tx_buffer [3] = (ui16_wheel_period_ms >> 8) & 0xff;
  ui8_tx_buffer [4] = ui16_wheel_period_ms & 0xff;

  //Send confirming signal for activating offroad mode
   if (ui8_offroad_state==4){ //quitting signal for offroad mode enabled. Shows about 80 km/h for three seconds

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


  ui8_tx_buffer [8] =  (uint8_t)(((ui16_BatteryCurrent-ui16_current_cal_b+1)<<2)/ui8_current_cal_a);
  // B9: motor temperature
  ui8_tx_buffer [9] = i8_motor_temperature-15; //according to documentation at endless sphere
  // B10 and B11: 0
  ui8_tx_buffer [10] = 0;
  ui8_tx_buffer [11] = 0;

  // calculate CRC xor
  ui8_crc = 0;
  for (ui8_j = 1; ui8_j <= 11; ui8_j++)
  {
    ui8_crc ^= ui8_tx_buffer[ui8_j];
  }
  ui8_tx_buffer [6] = ui8_crc;

  // send the package over UART
  for (ui8_j = 0; ui8_j <= 11; ui8_j++)
  {
    putchar (ui8_tx_buffer [ui8_j]);
  }
}

/********************************************************************************************/
 // Process received package from the LCD
 //

 // see if we have a received package to be processed
void check_message()
 {
  //printf("Byte recieved \r\n");
  // validation of the package data
   ui8_crc = 0;
   for (ui8_j = 0; ui8_j <= 12; ui8_j++)
   {
       //putchar (ui8_j);
       //putchar (ui8_rx_buffer[ui8_j]);
     if (ui8_j == 7) continue; // don't xor B5 (B7 in our case)
     ui8_crc ^= ui8_rx_buffer[ui8_j];
   }

   // see if CRC is ok
   if (((ui8_crc ^ 10) == ui8_rx_buffer [7]) 	|| // some versions of CRC LCD5 (??)
	((ui8_crc ^ 5) == ui8_rx_buffer [7]) 	|| // CRC LCD3 (tested with KT36/48SVPR, from PSWpower)
	((ui8_crc ^ 9) == ui8_rx_buffer [7]) 	|| // CRC LCD5
	((ui8_crc ^ 2) == ui8_rx_buffer [7])) 	   // CRC LCD3
   { //printf("message valid \r\n");
     lcd_configuration_variables.ui8_assist_level = ui8_rx_buffer [3] & 7;
     lcd_configuration_variables.ui8_motor_characteristic = ui8_rx_buffer [5];
     lcd_configuration_variables.ui8_wheel_size = ((ui8_rx_buffer [6] & 192) >> 6) | ((ui8_rx_buffer [4] & 7) << 2);
     lcd_configuration_variables.ui8_max_speed = 10 + ((ui8_rx_buffer [4] & 248) >> 3) | (ui8_rx_buffer [6] & 32);
     lcd_configuration_variables.ui8_power_assist_control_mode = ui8_rx_buffer [6] & 8;
     lcd_configuration_variables.ui8_controller_max_current = (ui8_rx_buffer [9] & 15);
     ui8_assistlevel_global=lcd_configuration_variables.ui8_assist_level+80; // always add max regen 
     display_update();
   }
 }
/****************************************************************************************************
 * UART2 receive interrupt handler - receive data from and to the display
 *
 ***************************************************************************************************/
void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
    {
	if(UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET){
	ui8_rx_buffer[ui8_UARTCounter] = UART2_ReceiveData8();

	ui8_UARTCounter++;

	  if(ui8_rx_buffer[ui8_UARTCounter-1]==0x0E)                                      // Check for reception of complete message
	    {
	      ui8_UARTCounter=2;
	      ui8_msg_received=1;

	    }
	  if(ui8_UARTCounter>12)                                      // if 0x0E is not received properly avoid buffer overflow
	  	    {
	  	      ui8_UARTCounter=0;

	  	    }

	}
	else //catch errors
	  {
	    if(UART2_GetITStatus(UART2_IT_IDLE) == SET)
	    {

		UART2_ReceiveData8();  // -> clear!
	    }
	    if(UART2_GetITStatus(UART2_IT_LBDF) == SET)
	    {

		UART2_ReceiveData8();  // -> clear!
	    }
	    if(UART2_GetITStatus(UART2_IT_OR) == SET)
	    {

		UART2_ReceiveData8();  // -> clear!
	    }
	    if(UART2_GetITStatus(UART2_IT_PE) == SET)
	    {

		UART2_ReceiveData8();  // -> clear!
	    }


	  } //end else
    }

#endif //end of DISPLAY_TYPE_KT_LCD3

#if !defined DISPLAY_TYPE_KT_LCD3 && !defined BLUOSEC && !(DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)


/****************************************************************************************************
 * UART2 receive interrupt handler - fallback to clear rx buffer
 * for debug Mode
 ***************************************************************************************************/

void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
    {

	if(UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET){
		      
        UART2_ReceiveData8();// -> clear!
		}
		else //catch errors
		  {
		    if(UART2_GetITStatus(UART2_IT_IDLE) == SET)
		    {

			UART2_ReceiveData8();  // -> clear!
		    }
		    if(UART2_GetITStatus(UART2_IT_LBDF) == SET)
		    {

			UART2_ReceiveData8();  // -> clear!
		    }
		    if(UART2_GetITStatus(UART2_IT_OR) == SET)
		    {

			UART2_ReceiveData8();  // -> clear!
		    }
		    if(UART2_GetITStatus(UART2_IT_PE) == SET)
		    {

			UART2_ReceiveData8();  // -> clear!
		    }


		  } //end else
	    }
#endif
