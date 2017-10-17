/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "main.h"
#include "uart.h"
#include "motor_controller_low_level.h"
#include "motor_controller_high_level.h"
#include "communications_controller.h"

void communications_controller (void)
{
  static uint8_t tx_buffer[12];
  uint8_t ui8_i = 0;
  uint8_t ui8_crc = 0;
  uint16_t ui16_wheel_period_ms;
  static uint16_t ui16_battery_volts;
  static uint16_t ui16_battery_soc;

  // calc wheel period in ms
  ui16_wheel_period_ms = (motor_get_er_PWM_ticks () * (MOTOR_NUMBER_MAGNETS >> 1) * MOTOR_REDUCTION_RATIO) / MOTOR_PWM_TICKS_PER_MS;

  // calc battery pack state of charge (SOC)
  ui16_battery_volts = motor_get_ADC_battery_voltage_filtered () * ADC_BATTERY_VOLTAGE_K;
  if (ui16_battery_volts > BATTERY_PACK_VOLTS_100) { ui16_battery_soc = 16; } // 4 bars | full
  else if (ui16_battery_volts > BATTERY_PACK_VOLTS_80) { ui16_battery_soc = 12; } // 3 bars
  else if (ui16_battery_volts > BATTERY_PACK_VOLTS_40) { ui16_battery_soc = 8; } // 2 bars
  else if (ui16_battery_volts > BATTERY_PACK_VOLTS_20) { ui16_battery_soc = 4; } // 1 bar
  else { ui16_battery_soc = 1; } // empty flashing

  // preparing the package
  // B0: start package (?)
  tx_buffer [0] = 65;
  // B1: battery level
  tx_buffer [1] = ui16_battery_soc;
  // B2: 24V controller
  tx_buffer [2] = 24;
  // B3: speed, wheel rotation period, ms; period(ms)=B3*256+B4;
  tx_buffer [3] = (ui16_wheel_period_ms >> 8) & 0xff;
  tx_buffer [4] = ui16_wheel_period_ms & 0xff;
  // B5: error info display
  tx_buffer [5] = 0;
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
  for (ui8_i = 1; ui8_i <= 11; ui8_i++)
  {
    ui8_crc ^= tx_buffer[ui8_i];
  }
  tx_buffer [6] = ui8_crc;

  // send the package over UART
  for (ui8_i = 0; ui8_i <= 11; ui8_i++)
  {
    putchar (tx_buffer [ui8_i]);
  }
}
