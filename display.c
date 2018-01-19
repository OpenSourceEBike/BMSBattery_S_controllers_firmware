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
#include "utils.h"
#include "adc.h"

display_view_type display_view;

display_mode_type display_mode; //currently display mode


float current_display;
uint8_t battery_percent_fromcapacity=11; //hier nur als Konstante um Batterie normal zu senden....


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

    if((ui16_SPEED>>4) < KM_MAX_WHEELTIME && ui16_SPEED!=0)
    {
        // Adapt wheeltime to match displayed speedo value according config.h setting      
        KM.Tx.Wheeltime_ms = ui16_SPEED>>4;	// is not exactly correct, factor should be 15.625, not 16


    }
    else
    {
        KM.Tx.Wheeltime_ms = KM_MAX_WHEELTIME;
    }

    KM.Tx.Error = KM_ERROR_NONE;

    if (((current_cal_a*ui16_BatteryCurrent)/10 + current_cal_b) != 0x99)
    {
    KM.Tx.Current_x10= (current_cal_a*ui16_BatteryCurrent)/10 + current_cal_b; //calculate Amps out of 10bit ADC value
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
	ui8_assistlevel_global=KM.Rx.AssistLevel;
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


void display_update()
{
#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
    kingmeter_update();
#endif


}

