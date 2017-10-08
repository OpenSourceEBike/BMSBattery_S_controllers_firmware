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

#if (DISPLAY_TYPE & DISPLAY_TYPE_BAFANG)
#include "display_bafang.h"
#endif







#if (DISPLAY_TYPE & DISPLAY_TYPE_BAFANG)            // For Bafang BBS0x displays
BAFANG_t BF;                                     // Context of the Bafang object
#if HARDWARE_REV < 20
#include <SoftwareSerial.h>
static SoftwareSerial mySerial(10, 11);             // RX (YELLOW cable), TX (GREEN cable)
SoftwareSerial* displaySerial =& mySerial;
#else
HardwareSerial* displaySerial=&Serial2;
#endif
#endif

#if (DISPLAY_TYPE & DISPLAY_TYPE_BMS)||(DISPLAY_TYPE & DISPLAY_TYPE_BMS3)
#if HARDWARE_REV < 20
#include <SoftwareSerial.h>                         // For BMS Battery S-LCD and S-LCD3
static SoftwareSerial mySerial(10, 11);             // RX , TX
SoftwareSerial* displaySerial=&mySerial;
#else
HardwareSerial* displaySerial=&Serial2;
#endif
#if (DISPLAY_TYPE & DISPLAY_TYPE_BMS)
byte slcd_received[]= {0,0,0,0,0,0};
#else
byte slcd_received[]= {0,0,0,0,0,0,0,0,0,0,0,0,0};
#endif
byte slcd_receivecounter=0;
boolean slcd_lighton=false;                //backlight switched on?
byte slcd_zerocounter=0;
unsigned long slcd_last_transmission=millis(); //last time Slcd sent data--> still on?
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

    if(ui16_SPEED_Counter < KM_MAX_WHEELTIME)
    {
        // Adapt wheeltime to match displayed speedo value according config.h setting      
        KM.Tx.Wheeltime_ms = ui16_SPEED_Counter>>4;	// is not exactly correct, factor should be 15.625, not 16
    }
    else
    {
        KM.Tx.Wheeltime_ms = KM_MAX_WHEELTIME;
    }

    KM.Tx.Error = KM_ERROR_NONE;


    KM.Tx.Current_x10= (current_cal_a*ui16_BatteryCurrent)/10 + current_cal_b; //calculate Amps out of 10bit ADC value

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

#if (DISPLAY_TYPE & DISPLAY_TYPE_BAFANG)
void bafang_update(void)
{
    Bafang_Service(&BF);
    /* Apply Rx parameters */

    #ifdef SUPPORT_LIGHTS_SWITCH
    if(BF.Rx.Headlight == false)
    {
        digitalWrite(lights_pin, 0);
    }
    else
    {
        digitalWrite(lights_pin, 1);
    }
    #endif

    if(BF.Rx.PushAssist == true)
    {
        throttle_stat = 200;
    }
    else
    {
        throttle_stat = 0;
        poti_stat     = map(BF.Rx.AssistLevel, 0, 9, 0,1023);
    }


    /* Shutdown in case we received no message in the last 3s */

    if((millis() - BF.LastRx) > 3000)
    {
        poti_stat     = 0;
        throttle_stat = 0;
        #if HARDWARE_REV >=2
        save_shutdown();
        #endif
    }
}
#endif







void display_init()
{

#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
    KingMeter_Init(&KM);
#endif

#if (DISPLAY_TYPE & DISPLAY_TYPE_BAFANG)
    Bafang_Init(&BF, displaySerial);
#endif


#if ((DISPLAY_TYPE == DISPLAY_TYPE_BMS) || (DISPLAY_TYPE == DISPLAY_TYPE_BMS3))
    displaySerial->begin(9600);
#endif
}


void display_update()
{
#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
    kingmeter_update();
#endif

#if (DISPLAY_TYPE & DISPLAY_TYPE_BAFANG)
    bafang_update();
#endif

#if (DISPLAY_TYPE & DISPLAY_TYPE_BMS)
    slcd_update(map(battery_percent_fromcapacity,0,100,0,16),wheel_time,0);
#endif


#if (DISPLAY_TYPE & DISPLAY_TYPE_BMS3)
    slcd3_update(map(battery_percent_fromcapacity,0,100,0,16),wheel_time, 0, max(power/9.75,0), (byte)0x20*(!brake_stat));
#endif
}

