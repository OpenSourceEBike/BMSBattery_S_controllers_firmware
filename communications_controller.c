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
#include "communications_controller.h"
#include "delay.h"

void communications_controller (void)
{
  static uint8_t tx_buffer[12];
  uint8_t ui8_i = 0;
  uint8_t ui8_crc = 0;
  uint16_t ui16_speed = 6 * ui16_PWM_cycles_counter_total; // * 6 works for my Q85 motor; 16 magnets; Reduction ratio: 12.6

  // B0: start package??
  tx_buffer [0] = 65;
  // B1: battery level: 0: empty box
  tx_buffer [1] = 16;
  // B2: 24V controller
  tx_buffer [2] = 24;
  // B3: speed, wheel rotation period, ms; period(ms)=B3*256+B4;
  tx_buffer [3] = (ui16_speed >> 8) & 0xff;
  tx_buffer [4] = ui16_speed & 0xff;
  // B5: error info display
  tx_buffer [5] = 0;
  // B6: CRC: xor B1,B2,B3,B4,B5,B7,B8,B9,B10,B11
  // 0 value so no effect on xor operation for now
  tx_buffer [6] = 0;
  // B7: moving mode indication, bit
  tx_buffer [7] = 2;
  // B8: 4x controller current
  tx_buffer [8] = (motor_get_current_max () - ADC_MOTOR_CURRENT_MAX_ZERO_VALUE) << 1;
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
