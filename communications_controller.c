/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s_uart2.h"
#include "main.h"
#include "uart.h"
#include "motor_controller_low_level.h"
#include "motor_controller_high_level.h"
#include "communications_controller.h"

uint8_t rx_buffer[13];
uint8_t ui8_received_package_flag = 0;

void communications_controller (void)
{
  static uint8_t tx_buffer[12];
  uint8_t ui8_i;
  uint8_t ui8_crc;
  uint16_t ui16_wheel_period_ms;
  uint16_t ui16_battery_volts;
  uint16_t ui16_battery_soc;
  uint8_t ui16_error;

  /********************************************************************************************/
  // Prepare and send packate to LCD
  //

  // calc wheel period in ms
  ui16_wheel_period_ms = (motor_get_er_PWM_ticks () * (MOTOR_NUMBER_MAGNETS >> 1) * MOTOR_REDUCTION_RATIO) / MOTOR_PWM_TICKS_PER_MS;

  // calc battery pack state of charge (SOC)
  ui16_battery_volts = motor_get_ADC_battery_voltage_filtered () * ADC_BATTERY_VOLTAGE_K;
  if (ui16_battery_volts > BATTERY_PACK_VOLTS_100) { ui16_battery_soc = 16; } // 4 bars | full
  else if (ui16_battery_volts > BATTERY_PACK_VOLTS_80) { ui16_battery_soc = 12; } // 3 bars
  else if (ui16_battery_volts > BATTERY_PACK_VOLTS_40) { ui16_battery_soc = 8; } // 2 bars
  else if (ui16_battery_volts > BATTERY_PACK_VOLTS_20) { ui16_battery_soc = 4; } // 1 bar
  else { ui16_battery_soc = 3; } // empty

  // prepare error
  ui16_error = motor_controller_get_error (); // get the error value
  // if battery under voltage, signal instead on LCD battery symbol
  if (ui16_error == MOTOR_CONTROLLER_ERROR_91_BATTERY_UNDER_VOLTAGE)
  {
    ui16_battery_soc = 1; // empty flashing
    ui16_error = 0;
  }

  // preparing the package
  // B0: start package (?)
  tx_buffer [0] = 65;
  // B1: battery level
  tx_buffer [1] = ui16_battery_soc;
  // B2: 24V controller
  tx_buffer [2] = COMMUNICATIONS_BATTERY_VOLTAGE;
  // B3: speed, wheel rotation period, ms; period(ms)=B3*256+B4;
  tx_buffer [3] = (ui16_wheel_period_ms >> 8) & 0xff;
  tx_buffer [4] = ui16_wheel_period_ms & 0xff;
  // B5: error info display
  tx_buffer [5] = ui16_error;
  // B6: CRC: xor B1,B2,B3,B4,B5,B7,B8,B9,B10,B11
  // 0 value so no effect on xor operation for now
  tx_buffer [6] = 0;
  // B7: moving mode indication, bit
  // throttle: 2
  tx_buffer [7] = 2;
  // B8: 4x controller current
  tx_buffer [8] = motor_get_current_max () << 1;
  // B9: motor temperature
  tx_buffer [9] = 0;
  // B10 and B11: 0
  tx_buffer [10] = 0;
  tx_buffer [11] = 0;

  // calculate CRC xor
  ui8_crc = 0;
  for (ui8_i = 1; ui8_i <= 11; ui8_i++)
  {
    ui8_crc ^= tx_buffer[ui8_i];
  }
  tx_buffer [6] = ui8_crc;

  // send the package over UART
  for (ui8_i = 0; ui8_i <= 11; ui8_i++)
  {
#ifndef DEBUG_UART
    putchar (tx_buffer [ui8_i]);
#endif
  }

  /********************************************************************************************/
  // Process received package from the LCD
  //

  // see if we have a received package to be processed
  if (ui8_received_package_flag)
  {
    // validation of the package data
    ui8_crc = 0;
    for (ui8_i = 0; ui8_i <= 12; ui8_i++)
    {
      if (ui8_i == 7) continue; // don't xor B5 (B7 in our case)
      ui8_crc ^= rx_buffer[ui8_i];
    }

    if ((ui8_crc ^ 9) == rx_buffer [7]) // see if CRC is ok
    {

    }
  }
}

// This is the interrupt that happesn when UART2 receives data. We need it to be the fastest possible and so
// we do: receive every byte and assembly as a package, finally, signal that we have a package to process (on main slow loop)
// and disable the interrupt. The interrupt should be enable again on main loop, after the package being processed
void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
{
  static uint8_t ui8_rx_counter = 0;
  uint8_t ui8_byte_received;
  static uint8_t ui8_state_machine = 0;

  if(UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET)
  {
    ui8_byte_received = UART2_ReceiveData8 ();

    switch (ui8_state_machine)
    {
      case 0:
      if (ui8_byte_received == 50) // see if we get start package byte 1
      {
	rx_buffer[ui8_rx_counter++] = ui8_byte_received;
	ui8_state_machine = 1;
      }
      else
      {
	ui8_rx_counter = 0;
	ui8_state_machine = 0;
      }
      break;

      case 1:
      if (ui8_byte_received == 14)  // see if we get start package byte 1
      {
	rx_buffer[ui8_rx_counter++] = ui8_byte_received;
	ui8_state_machine = 2;
      }
      else
      {
	ui8_rx_counter = 0;
	ui8_state_machine = 0;
      }
      break;

      case 2:
      rx_buffer[ui8_rx_counter++] = ui8_byte_received;

      // see if is the last byte of the package
      if (ui8_rx_counter > 11)
      {
	ui8_rx_counter = 0;
	ui8_state_machine = 0;
	ui8_received_package_flag = 1; // signal that we have a full pachage to be processed
//	UART2->CR2 &= (1 << 5); // disable UART2 receive interrupt
      }
      break;

      default:
      break;
    }
  }
}
