/*
Library for King-Meter displays

Copyright © 2015 Michael Fabry (Michael@Fabry.de)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


// Includes

#include <stdio.h>
#include "stm8s.h"
#include "config.h"
#include "display_kingmeter.h"
#include "main.h"
#include "stm8s_itc.h"
#include "uart.h"
#include "timers.h"
#include "interrupts.h"
#include "ACAcontrollerState.h"


#if defined (DISPLAY_TYPE) && defined (DISPLAY_TYPE_KINGMETER)

// Definitions
#define RXSTATE_STARTCODE   0
#define RXSTATE_SENDTXMSG   1
#define RXSTATE_MSGBODY     2
#define RXSTATE_DONE        3

int pas_tolerance;
int wheel_magnets;
int vcutoff;
int spd_max1;

uint8_t ui8_UARTCounter = 0;
uint8_t ui8_rx[6];
uint8_t battery_percent_fromcapacity = 11; //hier nur als Konstante um Batterie normal zu senden....

uint16_t k; //for debugging, number of calls of service
uint16_t KM_WHEELSIZE [8] ={
	KM_WHEELSIZE_16,
	KM_WHEELSIZE_18,
	KM_WHEELSIZE_20,
	KM_WHEELSIZE_22,
	KM_WHEELSIZE_24,
	KM_WHEELSIZE_26,
	KM_WHEELSIZE_700,
	KM_WHEELSIZE_28
};

uint8_t ui8_UART_flag = 0;


// Hashtable used for handshaking in 901U protocol
#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_901U)
const uint8_t KM_901U_HANDSHAKE[64] ={
	201, 107, 13, 229, 241, 198, 108, 230, 186, 67, 39, 92, 217, 140, 177, 36,
	22, 71, 174, 39, 161, 151, 7, 140, 107, 155, 189, 195, 209, 106, 63, 191,
	218, 47, 221, 46, 135, 145, 98, 82, 35, 42, 85, 99, 35, 43, 180, 12,
	3, 126, 94, 103, 198, 10, 182, 249, 253, 86, 105, 196, 217, 183, 195, 115
};
#endif


// Local function prototypes
#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_618U)
static void KM_618U_Service(KINGMETER_t* KM_ctx);
#endif

#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_901U)
static void KM_901U_Service(KINGMETER_t* KM_ctx);
#endif


KINGMETER_t KM; // Context of the King-Meter object

/* Public functions (Prototypes declared by display_kingmeter.h) */

/****************************************************************************************************
 * KingMeter_Init() - Initializes the display object
 *
 ****************************************************************************************************/

void KingMeter_Init(KINGMETER_t* KM_ctx){
	uint16_t i;


	//    KM_ctx->SerialPort                      = DisplaySerial;            // Store serial port to use

	KM_ctx->RxState = RXSTATE_STARTCODE;
	// KM_ctx->LastRx                          = millis();

	for (i = 0; i < KM_MAX_RXBUFF; i++) {
		KM_ctx->RxBuff[i] = 0x00;
	}

	KM_ctx->RxCnt = 0;

	// Settings received from display:
	KM_ctx->Settings.PAS_RUN_Direction = KM_PASDIR_FORWARD;
	KM_ctx->Settings.PAS_SCN_Tolerance = (uint8_t) pas_tolerance;
	KM_ctx->Settings.PAS_N_Ratio = 255;
	KM_ctx->Settings.HND_HL_ThrParam = KM_HND_HL_NO;
	KM_ctx->Settings.HND_HF_ThrParam = KM_HND_HF_NO;
	KM_ctx->Settings.SYS_SSP_SlowStart = 1;
	KM_ctx->Settings.SPS_SpdMagnets = (uint8_t) wheel_magnets;
	KM_ctx->Settings.VOL_1_UnderVolt_x10 = (uint16_t) (vcutoff * 10);
	KM_ctx->Settings.WheelSize_mm = (uint16_t) (wheel_circumference * 1000);

	// Parameters received from display in operation mode:
	KM_ctx->Rx.AssistLevel = 1;
	KM_ctx->Rx.Headlight = KM_HEADLIGHT_OFF;
	KM_ctx->Rx.Battery = KM_BATTERY_NORMAL;
	KM_ctx->Rx.PushAssist = KM_PUSHASSIST_OFF;
	KM_ctx->Rx.PowerAssist = KM_POWERASSIST_ON;
	KM_ctx->Rx.Throttle = KM_THROTTLE_ON;
	KM_ctx->Rx.CruiseControl = KM_CRUISE_OFF;
	KM_ctx->Rx.OverSpeed = KM_OVERSPEED_NO;
	KM_ctx->Rx.SPEEDMAX_Limit_x10 = (uint16_t) (spd_max1 * 10);
	KM_ctx->Rx.CUR_Limit_x10 = 150;

	// Parameters to be send to display in operation mode:
	KM_ctx->Tx.Battery = KM_BATTERY_NORMAL;
	KM_ctx->Tx.Wheeltime_ms = KM_MAX_WHEELTIME;
	KM_ctx->Tx.Error = KM_ERROR_NONE;
	KM_ctx->Tx.Current_x10 = 0;


	//DisplaySerial->begin(9600); wird bereits in der main.c gestartet
}


/* Local functions */

#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_618U)

/****************************************************************************************************
 * KM_618U_Service() - Communication protocol of 618U firmware (J-LCD compatible)
 *
 ***************************************************************************************************/
static void KM_618U_Service(KINGMETER_t* KM_ctx) {
	uint16_t i;
	uint16_t j;

	uint8_t TxBuff[KM_MAX_TXBUFF];

	// Search for Start Code
	if (KM_ctx->RxState == RXSTATE_STARTCODE) {

		if (ui8_rx[0] == 0x46 && ui8_rx[5] == 0x0D) //Check, if Message is valid
		{
			for (j = 0; j < 6; j++) {
				KM_ctx->RxBuff[j] = ui8_rx[j];
				
			}
			KM_ctx->RxState = RXSTATE_SENDTXMSG;
		}

	}

	if (KM_ctx->RxState == RXSTATE_SENDTXMSG) {
		KM_ctx->RxState = RXSTATE_DONE;


		// Prepare Tx message
		TxBuff[0] = 0X46; // StartCode

		if (KM_ctx->Tx.Battery == KM_BATTERY_LOW) {
			TxBuff[1] = 0x00; // If none of Bit[0..2] is set, display blinks
		} else {
			TxBuff[1] = 0x03; //Original firmware of Lishui sends "3" at this Byte
		}

		TxBuff[2] = (uint8_t) ((KM_ctx->Tx.Current_x10 * 3) / 10); // Current unit: 1/3A, gives still error at first loop run?
		//TxBuff[2] = 0x00;
		TxBuff[3] = (uint8_t) (KM_ctx->Tx.Wheeltime_ms >> 8); // richtige Funktion der Bitmanipulation noch nicht best�tigt
		TxBuff[4] = (uint8_t) (KM_ctx->Tx.Wheeltime_ms & 0xFF); // richtige Funktion der Bitmanipulation noch nicht best�tigt
		TxBuff[5] = 0xA7; // Reply with WheelSize 26" / Maxspeed 25km/h (no influence on display)
		TxBuff[6] = KM_ctx->Tx.Error;


		// Send prepared message
		TxBuff[7] = 0x00;

		uart_put_buffered(TxBuff[0]); // Send StartCode

		for (i = 1; i < 7; i++) {
			uart_put_buffered(TxBuff[i]); // Send TxBuff[1..6]
			TxBuff[7] ^= TxBuff[i]; // Calculate XOR CheckSum
		}

		uart_put_buffered(TxBuff[7]); // Send XOR CheckSum

	}


	// Message received completely
	if (KM_ctx->RxState == RXSTATE_DONE) {
		KM_ctx->RxState = RXSTATE_STARTCODE;

		// Decode PAS level - Display sets PAS-level to 0 when overspeed detected!
		KM_ctx->Rx.AssistLevel = KM_ctx->RxBuff[1] & 0x07; //Mapping entfernt, da nur der Faktor genutzt werden soll.

		// Decode Headlight status
		KM_ctx->Rx.Headlight = (KM_ctx->RxBuff[1] & 0x80) >> 7; // KM_HEADLIGHT_OFF / KM_HEADLIGHT_ON

		//      KM_ctx->Rx.Battery;

		// Decode PushAssist status
		KM_ctx->Rx.PushAssist = (KM_ctx->RxBuff[1] & 0x10) >> 4; // KM_PUSHASSIST_OFF / KM_PUSHASSIST_ON

		//      KM_ctx->Rx.PowerAssist;
		//      KM_ctx->Rx.Throttle;
		//      KM_ctx->Rx.CruiseControl;
		//      KM_ctx->Rx.OverSpeed;

		// Decode Speedlimit
		KM_ctx->Rx.SPEEDMAX_Limit_x10 = (((KM_ctx->RxBuff[2] & 0xF8) >> 3) + 10) * 10;

		// Decode Wheelsize by hashtable
		KM_ctx->Settings.WheelSize_mm = KM_WHEELSIZE[KM_ctx->RxBuff[2] & 0x07];

		//      KM_ctx->Rx.CUR_Limit_x10;

	}

}
#endif


#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_901U)

/****************************************************************************************************
 * KM_901U_Service() - Communication protocol of 901U firmware
 *
 ***************************************************************************************************/
static void KM_901U_Service(KINGMETER_t* KM_ctx) {
	uint8_t i;
	uint16_t CheckSum;
	uint8_t TxBuff[KM_MAX_TXBUFF];
	uint8_t TxCnt;


	// Search for Start Code
	if (KM_ctx->RxState == RXSTATE_STARTCODE) {
		if (KM_ctx->SerialPort->available()) {
			KM_ctx->LastRx = millis();

			if (KM_ctx->SerialPort->read() == 0x3A) {
				KM_ctx->RxBuff[0] = 0x3A;
				KM_ctx->RxCnt = 1;
				KM_ctx->RxState = RXSTATE_MSGBODY;
			} else {
				return; // No need to continue
			}
		}
	}

	// Receive Message body
	if (KM_ctx->RxState == RXSTATE_MSGBODY) {
		while (KM_ctx->SerialPort->available()) {
			KM_ctx->RxBuff[KM_ctx->RxCnt] = KM_ctx->SerialPort->read();
			KM_ctx->RxCnt++;

			if (KM_ctx->RxCnt == 5) // Range check of Data size
			{
				if (KM_ctx->RxBuff[4] > (KM_MAX_RXBUFF - 5 - 4)) {
					KM_ctx->RxState = RXSTATE_STARTCODE; // Invalid Data size, cancel reception
					break;
				}
			}


			if (KM_ctx->RxCnt == (5 + KM_ctx->RxBuff[4] + 4)) // Check for reception of complete message
			{
				// Verify CheckSum
				CheckSum = 0x0000;
				for (i = 1; i < (5 + KM_ctx->RxBuff[4]); i++) {
					CheckSum = CheckSum + KM_ctx->RxBuff[i]; // Calculate CheckSum
				}

				if ((lowByte(CheckSum) == KM_ctx->RxBuff[i]) && (highByte(CheckSum) == KM_ctx->RxBuff[i + 1])) {
					KM_ctx->RxState = RXSTATE_DONE;
				} else {
					KM_ctx->RxState = RXSTATE_STARTCODE; // Invalid CheckSum, ignore message
				}

				break;
			}
		}
	}


	// Message received completely
	if (KM_ctx->RxState == RXSTATE_DONE) {
		KM_ctx->RxState = RXSTATE_STARTCODE;

		switch (KM_ctx->RxBuff[3]) {
			case 0x52: // Operation mode

				// Decode Rx message
				KM_ctx->Rx.AssistLevel = KM_ctx->RxBuff[5]; // 0..255
				KM_ctx->Rx.Headlight = (KM_ctx->RxBuff[6] & 0xC0) >> 6; // KM_HEADLIGHT_OFF / KM_HEADLIGHT_ON / KM_HEADLIGHT_LOW / KM_HEADLIGHT_HIGH
				KM_ctx->Rx.Battery = (KM_ctx->RxBuff[6] & 0x20) >> 5; // KM_BATTERY_NORMAL / KM_BATTERY_LOW
				KM_ctx->Rx.PushAssist = (KM_ctx->RxBuff[6] & 0x10) >> 4; // KM_PUSHASSIST_OFF / KM_PUSHASSIST_ON
				KM_ctx->Rx.PowerAssist = (KM_ctx->RxBuff[6] & 0x08) >> 3; // KM_POWERASSIST_OFF / KM_POWERASSIST_ON
				KM_ctx->Rx.Throttle = (KM_ctx->RxBuff[6] & 0x04) >> 2; // KM_THROTTLE_OFF / KM_THROTTLE_ON
				KM_ctx->Rx.CruiseControl = (KM_ctx->RxBuff[6] & 0x02) >> 1; // KM_CRUISE_OFF / KM_CRUISE_ON
				KM_ctx->Rx.OverSpeed = (KM_ctx->RxBuff[6] & 0x01); // KM_OVERSPEED_NO / KM_OVERSPEED_YES
				KM_ctx->Rx.SPEEDMAX_Limit_x10 = (((uint16_t) KM_ctx->RxBuff[8]) << 8) | KM_ctx->RxBuff[7];
				KM_ctx->Rx.CUR_Limit_x10 = (((uint16_t) KM_ctx->RxBuff[10]) << 8) | KM_ctx->RxBuff[9];


				// Prepare Tx message
				TxBuff[0] = 0X3A; // StartCode
				TxBuff[1] = 0x1A; // SrcAdd:  Controller
				TxBuff[2] = 0X28; // DestAdd: LCD
				TxBuff[3] = 0x52; // CmdCode
				TxBuff[4] = 0x06; // DataSize

				if (KM_ctx->Tx.Battery == KM_BATTERY_LOW) {
					TxBuff[5] = 0x40; // State data (only UnderVoltage bit has influence on display)
				} else {
					TxBuff[5] = 0x00; // State data (only UnderVoltage bit has influence on display)
				}

				TxBuff[6] = lowByte(KM_ctx->Tx.Current_x10); // Current low
				TxBuff[7] = highByte(KM_ctx->Tx.Current_x10); // Current high
				TxBuff[8] = lowByte(KM_ctx->Tx.Wheeltime_ms); // WheelSpeed low
				TxBuff[9] = highByte(KM_ctx->Tx.Wheeltime_ms); // WheelSpeed high
				TxBuff[10] = KM_ctx->Tx.Error; // Error

				TxCnt = 11;
				break;


			case 0x53: // Settings mode

				// Decode Rx message
				KM_ctx->Settings.PAS_RUN_Direction = (KM_ctx->RxBuff[5] & 0x80) >> 7; // KM_PASDIR_FORWARD / KM_PASDIR_BACKWARD
				KM_ctx->Settings.PAS_SCN_Tolerance = KM_ctx->RxBuff[6]; // 2..9 
				KM_ctx->Settings.PAS_N_Ratio = KM_ctx->RxBuff[7]; // 0..255
				KM_ctx->Settings.HND_HL_ThrParam = (KM_ctx->RxBuff[8] & 0x80) >> 7; // KM_HND_HL_NO / KM_HND_HL_YES
				KM_ctx->Settings.HND_HF_ThrParam = (KM_ctx->RxBuff[8] & 0x40) >> 6; // KM_HND_HF_NO / KM_HND_HF_YES
				KM_ctx->Settings.SYS_SSP_SlowStart = KM_ctx->RxBuff[9]; // 1..9
				KM_ctx->Settings.SPS_SpdMagnets = KM_ctx->RxBuff[10]; // 1..4
				KM_ctx->Settings.VOL_1_UnderVolt_x10 = (((uint16_t) KM_ctx->RxBuff[12]) << 8) | KM_ctx->RxBuff[11];
				KM_ctx->Settings.WheelSize_mm = (((uint16_t) KM_ctx->RxBuff[14]) << 8) | KM_ctx->RxBuff[13];


				// Prepare Tx message with handshake code
				TxBuff[0] = 0X3A; // StartCode
				TxBuff[1] = 0x1A; // SrcAdd:  Controller
				TxBuff[2] = 0X28; // DestAdd: LCD
				TxBuff[3] = 0x53; // CmdCode
				TxBuff[4] = 0x01; // DataSize
				TxBuff[5] = KM_901U_HANDSHAKE[KM_ctx->RxBuff[15]]; // Handshake answer
				TxCnt = 6;
				break;

			default:
				TxCnt = 0;
		}


		// Send prepared message
		if (TxCnt != 0) {
			CheckSum = 0x0000;

			KM_ctx->SerialPort->write(TxBuff[0]); // Send StartCode

			for (i = 1; i < TxCnt; i++) {
				KM_ctx->SerialPort->write(TxBuff[i]); // Send TxBuff[1..x]
				CheckSum = CheckSum + TxBuff[i]; // Calculate CheckSum 
			}

			KM_ctx->SerialPort->write(lowByte(CheckSum)); // Send CheckSum low
			KM_ctx->SerialPort->write(highByte(CheckSum)); // Send CheckSum high

			KM_ctx->SerialPort->write(0x0D); // Send CR
			KM_ctx->SerialPort->write(0x0A); // Send LF
		}
	}
}
#endif


/****************************************************************************************************
 * KingMeter_Service() - Communicates data from and to the display
 *
 ***************************************************************************************************/
void KingMeter_Service(KINGMETER_t* KM_ctx) {
#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_618U)
	KM_618U_Service(KM_ctx);
#endif

#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_901U)
	KM_901U_Service(KM_ctx);
#endif
}

void kingmeter_update(void) {
	/* Prepare Tx parameters */

	if (battery_percent_fromcapacity > 10) {
		KM.Tx.Battery = KM_BATTERY_NORMAL;
	} else {
		KM.Tx.Battery = KM_BATTERY_LOW;
	}

	if ((ui16_time_ticks_between_speed_interrupt >> 4) < KM_MAX_WHEELTIME && ui16_time_ticks_between_speed_interrupt != 0) {
		// Adapt wheeltime to match displayed speedo value according config.h setting      
		KM.Tx.Wheeltime_ms = ui16_time_ticks_between_speed_interrupt >> 4; // is not exactly correct, factor should be 15.625, not 16


	} else {
		KM.Tx.Wheeltime_ms = KM_MAX_WHEELTIME;
	}

	KM.Tx.Error = KM_ERROR_NONE;

	if (((ui8_current_cal_a * ui16_BatteryCurrent) / 100 - ui16_current_cal_b) != 0x99) {
		KM.Tx.Current_x10 = (ui8_current_cal_a * ui16_BatteryCurrent) / 100 - ui16_current_cal_b; //calculate Amps out of 10bit ADC value
	}

	/* Receive Rx parameters/settings and send Tx parameters */
	KingMeter_Service(&KM);


	/* Apply Rx parameters */

#ifdef SUPPORT_LIGHTS_SWITCH
	if (KM.Rx.Headlight == KM_HEADLIGHT_OFF) {
		digitalWrite(lights_pin, 0);
	} else // KM_HEADLIGHT_ON, KM_HEADLIGHT_LOW, KM_HEADLIGHT_HIGH
	{
		digitalWrite(lights_pin, 1);
	}
#endif

	if (KM.Rx.PushAssist == KM_PUSHASSIST_ON) {
#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_901U)
		//do anything
#else
		//do something else
#endif
	} else {
		ui8_assistlevel_global = KM.Rx.AssistLevel + 80; // always add max regen 
	}


	/* Shutdown in case we received no message in the last 3s

	if((millis() - KM.LastRx) > 3000)
	{
		poti_stat     = 0;
		throttle_stat = 0;

	}*/
}

void display_init() {
	KingMeter_Init(&KM);
}

void display_update() {
	
#if (DISPLAY_TYPE == DISPLAY_TYPE_KINGMETER_618U)
	
	// fill local buffer from uart ringbuffer
	uart_fill_rx_packet_buffer(ui8_rx, 6, &ui8_UARTCounter);
	
	// Check for reception of complete message
	if ((ui8_UARTCounter > 5) || (ui8_rx[ui8_UARTCounter - 1] == 0x0D))
		ui8_UARTCounter = 0;
#endif
	
	kingmeter_update();
}

#endif // (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
