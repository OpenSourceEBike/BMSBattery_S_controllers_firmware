/*
 * Copyright (c) 2018 Björn Schmidt
 *
 * This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 */

/* 
 * File:   BOdisplay.h
 * Author: Björn Schmidt
 *
 * Created on August 30, 2018, 8:03 PM
 */


#include <stdio.h>
#include "config.h"
#include "stm8s.h"
#include "stm8s_itc.h"
#include "BOdisplay.h"
#include "interrupts.h"

#ifdef BLUOSEC

uint8_t ui8_rx_converted_buffer[4]; // for decoded ascii values
uint8_t ui8_rx_buffer[11]; // modbus ascii with max 2 bytes payload
//:304130LR\r\n 
//  0 A 0 
uint8_t ui8_rx_buffer_counter = 0;
uint8_t ui8_tx_buffer[31];
uint8_t ui8_tx_buffer_counter = 0;

uint8_t int2hex(uint8_t in)
{
    if (in <= 9)
        return in + 0x30;
    return 0x41 - 10 + in;
}

uint8_t hex2int(uint8_t ch)
{
    if (ch >= 0x30 && ch <= 0x39)
        return ch - 0x30;
    if (ch >= 0x41 && ch <= 0x46)
        return ch - 0x41 + 10;
    if (ch >= 0x61 && ch <= 0x66)
        return ch - 0x61 + 10;
    return -1;
}

uint8_t calcLRC(uint8_t ints[], uint8_t start, uint8_t end)
{
    uint8_t i;
    uint8_t LRC = 0;
    for (i = start; i < end; i++)
    {
        LRC = LRC + ints[i];
    }
    return (~LRC) + 1;
}

void sendPreparedPackage(void)
{
	uint8_t j;
    putchar(0x3A);
    for (j = 0; j = ui8_tx_buffer_counter; j++)
    {
        putchar(int2hex(ui8_tx_buffer[j]>>4));
		putchar(int2hex(ui8_tx_buffer[j]&15));
    }
    putchar(0x0D);
    putchar(0x0A);
}

void addPayload(uint8_t id, uint8_t value)
{
	ui8_tx_buffer[ui8_tx_buffer_counter++] = id;
	ui8_tx_buffer[ui8_tx_buffer_counter++] = value;
}

void prepareBasePackage(void)
{
    ui8_tx_buffer_counter = 0;
    ui8_tx_buffer[ui8_tx_buffer_counter++] = int2hex(0x30);
    ui8_tx_buffer[ui8_tx_buffer_counter++] = int2hex(0x41);
    ui8_tx_buffer[ui8_tx_buffer_counter++] = int2hex(0x30);

}

void signPackage(void)
{
    ui8_tx_buffer[ui8_tx_buffer_counter++] = calcLRC(ui8_tx_buffer, 0, ui8_tx_buffer_counter);
}

void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
{

    if (UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET)
    {
		printf("A0 %d",ui8_rx_buffer_counter); // wieso ist das immer 0?
        ui8_rx_buffer[ui8_rx_buffer_counter] = UART2_ReceiveData8();
		ui8_rx_buffer_counter++;
		printf("A0 %d",ui8_rx_buffer_counter);
        ui8_rx_buffer_counter = ui8_rx_buffer_counter % 11;
		printf("A1 %d",ui8_rx_buffer_counter);
        if (ui8_rx_buffer_counter == 0)
        {
			
			uint8_t calculatedLrc;
			printf("B %d",ui8_rx_buffer_counter);
			
            ui8_rx_converted_buffer[0] = hex2int(ui8_rx_buffer[1]) << +hex2int(ui8_rx_buffer[2]);
            ui8_rx_converted_buffer[1] = hex2int(ui8_rx_buffer[2]) << +hex2int(ui8_rx_buffer[4]);
            ui8_rx_converted_buffer[2] = hex2int(ui8_rx_buffer[5]) << +hex2int(ui8_rx_buffer[6]);
            ui8_rx_converted_buffer[3] = hex2int(ui8_rx_buffer[6]) << +hex2int(ui8_rx_buffer[8]);
			calculatedLrc = calcLRC(ui8_rx_converted_buffer, 0, 2);
						
			prepareBasePackage();
			addPayload(42, calculatedLrc);
			signPackage();
			sendPreparedPackage();
			printf("C %d",ui8_rx_buffer_counter);
            if (calculatedLrc == ui8_rx_converted_buffer[3])
            {
                // tja hier müsste jetzt in ui8_rx_converted_buffer[1] das kommando und ui8_rx_converted_buffer[2] der payload stehen
            }
        }
printf("A4 %d",ui8_rx_buffer_counter);

    }
    else //catch errors
    {
        if (UART2_GetITStatus(UART2_IT_IDLE) == SET)
        {
            UART2_ReceiveData8(); // -> clear!
        }
        if (UART2_GetITStatus(UART2_IT_LBDF) == SET)
        {
            UART2_ReceiveData8(); // -> clear!
        }
        if (UART2_GetITStatus(UART2_IT_OR) == SET)
        {
            UART2_ReceiveData8(); // -> clear!
        }
        if (UART2_GetITStatus(UART2_IT_PE) == SET)
        {
            UART2_ReceiveData8(); // -> clear!
        }

    } //end else
}

//                printf("B%d AL%d A%d PD%d PA%d ST%3u T%3u X%d MS%d SR%05d CA%d CB%d VO%3d CT%3lu SP%3u ER%3d BC%3d CV%3d PC%3d Z%03d%03d%03d%03d%03d%03d O%d%d%d%d%d%d\r\n",
//                       (int)brake_is_set(),
//                       ui8_assistlevel_global,
//                       MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT,
//                       PAS_dir,
//                       PAS_act,
//                       ui16_sum_torque,
//                       ui16_throttle_accumulated,
//                       ui8_cheat_state,
//                       ui8_motor_state,
//                       (uint16_t)(((float)wheel_circumference*36.0)/((float)GEAR_RATIO)),
//                       current_cal_a,
//                       ui16_current_cal_b,
//                       ui8_BatteryVoltage,
//                       uint32_current_target,
//                       ui16_setpoint,
//                       ui16_motor_speed_erps,
//                       ui16_BatteryCurrent,
//                       ui8_position_correction_value,
//                       ui16_ADC_iq_current >> 2,
//                       uint8_t_hall_case[0],
//                       uint8_t_hall_case[1],
//                       uint8_t_hall_case[2],
//                       uint8_t_hall_case[3],
//                       uint8_t_hall_case[4],
//                       uint8_t_hall_case[5],
//                       uint8_t_hall_order[0],
//                       uint8_t_hall_order[1],
//                       uint8_t_hall_order[2],
//                       uint8_t_hall_order[3],
//                       uint8_t_hall_order[4],
//                       uint8_t_hall_order[5]
//
//                       );
                
//                printf("ST%3u T%3u CT%3lu SP%3u\r\n",
//                       
//                       ui16_sum_torque,
//                       ui16_throttle_accumulated,
//                       uint32_current_target,
//                       ui16_setpoint
//                       
//                       );

#endif // BLUOSEC