/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include "ebike_app.h"

#include <stdint.h>
#include "stm8s.h"
#include "stm8s_gpio.h"
#include "interrupts.h"
#include "adc.h"
#include "utils.h"
#include "motor.h"
#include "pwm.h"
#include "uart.h"
#include "brake.h"
#include "eeprom.h"

// cruise control variables
uint8_t ui8_cruise_state = 0;
uint8_t ui8_cruise_output = 0;
uint8_t ui8_cruise_counter = 0;
uint8_t ui8_cruise_value = 0;

// communications variables
volatile struc_lcd_configuration_variables lcd_configuration_variables;
uint8_t ui8_received_package_flag = 0;
volatile float f_controller_max_current;
float f_motor_speed = 0;
uint8_t ui8_motor_speed = 0;
float f_wheel_size = 2.0625; // 26'' wheel
uint8_t ui8_tx_buffer[12];
uint8_t ui8_i;
uint8_t ui8_crc;
uint16_t ui16_wheel_period_ms;
uint16_t ui16_battery_volts;
uint16_t ui16_battery_soc;
uint8_t ui16_error;
uint8_t ui8_rx_buffer[13];
uint8_t ui8_rx_counter = 0;
uint8_t ui8_byte_received;
uint8_t ui8_state_machine = 0;

uint8_t ui8_adc_throttle_value;
uint8_t ui8_adc_throttle_value_cruise_control;

// function prototypes
void throttle_pas_torque_sensor_controller (void);
void communications_controller (void);
uint8_t ebike_app_cruise_control (uint8_t ui8_value);
void set_speed_erps_max_to_motor_controller (struc_lcd_configuration_variables *lcd_configuration_variables);
float f_get_controller_max_current (uint8_t ui8_controller_max_current);

void ebike_app_controller (void)
{
  uint32_t ui32_temp;
  uint32_t ui32_temp1;

  // calc motor speed in km/h
  ui32_temp = lcd_configuration_variables.ui8_motor_characteristic * 1000;
  ui32_temp1 = ui16_motor_get_motor_speed_erps () * 3600;
  f_motor_speed = ((float) ui32_temp1) * f_wheel_size;
  f_motor_speed /= (float) ui32_temp;
  ui8_motor_speed = (uint8_t) f_motor_speed;

  communications_controller ();
  throttle_pas_torque_sensor_controller ();
}

void throttle_pas_torque_sensor_controller (void)
{
  uint8_t ui8_temp;
  uint16_t ui16_temp;

  // only throttle implemented for now
  ui8_adc_throttle_value = ui8_adc_read_throttle ();

  // verify if throttle is connect or if there is any error
  // if error: error symbol on LCD will be shown
  if ((ui8_adc_throttle_value < ADC_THROTTLE_MIN_VALUE_ERROR) ||
      (ui8_adc_throttle_value > ADC_THROTTLE_MAX_VALUE_ERROR))
  {
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_THROTTLE_ERROR);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_01_THROTTLE);
  }

#define DO_CRUISE_CONTROL 1
#if DO_CRUISE_CONTROL == 1
  ui8_adc_throttle_value_cruise_control = ebike_app_cruise_control (ui8_adc_throttle_value);
#else
  ui8_adc_throttle_value_cruise_control = ui8_adc_throttle_value;
#endif

  ui8_temp = (uint8_t) (map ((int32_t) ui8_adc_throttle_value_cruise_control, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 255));
  motor_set_pwm_duty_cycle_target (ui8_temp);

  if (lcd_configuration_variables.ui8_power_assist_control_mode)
  {
    // setup motor current
    ui16_temp = (uint16_t) (((float) ADC_MOTOR_CURRENT_MAX_10B) * f_controller_max_current * (((float) lcd_configuration_variables.ui8_assist_level) / 5.0));
    motor_controller_set_current (ui16_temp);

    // apply max erps speed to the speed controller
    motor_controller_set_speed_erps (motor_controller_get_speed_erps_max ());
  }
  else
  {
    // throttle will setup motor current
    ui16_temp = (uint16_t) (((float) ADC_MOTOR_CURRENT_MAX_10B) * f_controller_max_current * (((float) lcd_configuration_variables.ui8_assist_level) / 5.0));
    ui16_temp = (uint16_t) (map ((uint32_t) ui8_adc_throttle_value_cruise_control, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, (uint32_t) ui16_temp));
    motor_controller_set_current (ui16_temp);

    // throttle will setup motor speed
    ui16_temp = map ((uint32_t) ui8_adc_throttle_value_cruise_control, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, (uint32_t) motor_controller_get_speed_erps_max ());
    motor_controller_set_speed_erps (ui16_temp);
  }
}

uint8_t ebike_app_cruise_control (uint8_t ui8_value)
{
  // Cruise control
  switch (ui8_cruise_state)
  {
    case 0:
    if ((ui8_value > CRUISE_CONTROL_MIN_VALUE) &&
	((ui8_value > (ui8_cruise_value - CRUISE_CONTROL_MIN_VALUE)) || (ui8_value < (ui8_cruise_value + CRUISE_CONTROL_MIN_VALUE))))
    {
      ui8_cruise_counter++;
      ui8_cruise_output = ui8_value;

      if (ui8_cruise_counter > 80) // 80 * 100ms = 8 seconds: time to lock cruise control
      {
	ui8_cruise_state = 1;
	ui8_cruise_output = ui8_value;
	ui8_cruise_counter = 0;
	ui8_cruise_value = 0;
      }
    }
    else
    {
      ui8_cruise_counter = 0;
      ui8_cruise_value = ui8_value;
      ui8_cruise_output = ui8_cruise_value;
    }
    break;

    case 1:
    if (ui8_value < CRUISE_CONTROL_MIN_VALUE) { ui8_cruise_state = 2; }
    break;

    case 2:
    if (ui8_value > CRUISE_CONTROL_MIN_VALUE)
    {
      ui8_cruise_state = 0;
      ui8_cruise_output = ui8_value;
    }
    break;
  }

  return ui8_cruise_output;
}

uint8_t ebike_app_cruise_control_is_set (void)
{
  return (ui8_cruise_state ? 1: 0);
}

void ebike_app_cruise_control_stop (void)
{
  ui8_cruise_state = 0;
}

uint8_t throttle_is_set (void)
{
  return (ui8_adc_throttle_value > ADC_THROTTLE_MIN_VALUE) ? 1: 0;
}

void communications_controller (void)
{
  uint8_t ui8_moving_indication = 0;

  /********************************************************************************************/
  // Prepare and send packate to LCD
  //

  // calc wheel period in ms
  ui16_wheel_period_ms = (motor_get_er_PWM_ticks () * (lcd_configuration_variables.ui8_motor_characteristic >> 1)) / MOTOR_PWM_TICKS_PER_MS;

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

  // prepare moving indication info
  ui8_moving_indication = 0;
  if (brake_is_set ()) { ui8_moving_indication |= (1 << 5); }
  if (ebike_app_cruise_control_is_set ()) { ui8_moving_indication |= (1 << 3); }
  if (throttle_is_set ()) { ui8_moving_indication |= (1 << 1); }
//  if (pas_is_set ()) { ui8_moving_indication |= (1 << 4); }

  // preparing the package
  // B0: start package (?)
  ui8_tx_buffer [0] = 65;
  // B1: battery level
  ui8_tx_buffer [1] = ui16_battery_soc;
  // B2: 24V controller
  ui8_tx_buffer [2] = COMMUNICATIONS_BATTERY_VOLTAGE;
  // B3: speed, wheel rotation period, ms; period(ms)=B3*256+B4;
  ui8_tx_buffer [3] = (ui16_wheel_period_ms >> 8) & 0xff;
  ui8_tx_buffer [4] = ui16_wheel_period_ms & 0xff;
  // B5: error info display
  ui8_tx_buffer [5] = ui16_error;
  // B6: CRC: xor B1,B2,B3,B4,B5,B7,B8,B9,B10,B11
  // 0 value so no effect on xor operation for now
  ui8_tx_buffer [6] = 0;
  // B7: moving mode indication, bit
  // throttle: 2
  ui8_tx_buffer [7] = ui8_moving_indication;
  // B8: 4x controller current
  ui8_tx_buffer [8] = motor_get_current_max () << 1;
  // B9: motor temperature
  ui8_tx_buffer [9] = 0;
  // B10 and B11: 0
  ui8_tx_buffer [10] = 0;
  ui8_tx_buffer [11] = 0;

  // calculate CRC xor
  ui8_crc = 0;
  for (ui8_i = 1; ui8_i <= 11; ui8_i++)
  {
    ui8_crc ^= ui8_tx_buffer[ui8_i];
  }
  ui8_tx_buffer [6] = ui8_crc;

  // send the package over UART
  for (ui8_i = 0; ui8_i <= 11; ui8_i++)
  {
#ifndef DEBUG_UART
    putchar (ui8_tx_buffer [ui8_i]);
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
      ui8_crc ^= ui8_rx_buffer[ui8_i];
    }

    if ((ui8_crc ^ 9) == ui8_rx_buffer [7]) // see if CRC is ok
    {
      lcd_configuration_variables.ui8_assist_level = ui8_rx_buffer [3] & 7;
      lcd_configuration_variables.ui8_motor_characteristic = ui8_rx_buffer [5];
      lcd_configuration_variables.ui8_wheel_size = ((ui8_rx_buffer [6] & 192) >> 6) | ((ui8_rx_buffer [4] & 7) << 2);
      lcd_configuration_variables.ui8_max_speed = 10 + ((ui8_rx_buffer [4] & 248) >> 3) | (ui8_rx_buffer [6] & 32);
      lcd_configuration_variables.ui8_power_assist_control_mode = ui8_rx_buffer [6] & 8;
      lcd_configuration_variables.ui8_controller_max_current = (ui8_rx_buffer [9] & 15);

      // now write values to EEPROM, but only if one of them changed
      eeprom_write_if_values_changed ();
    }

    UART2->CR2 |= (1 << 5); // enable UART2 receive interrupt as we are now ready to receive a new package
  }

  // do here some tasks that must be done even if we don't receive a package from the LCD
  f_controller_max_current = f_get_controller_max_current (lcd_configuration_variables.ui8_controller_max_current);
  set_speed_erps_max_to_motor_controller (&lcd_configuration_variables);
}

// This is the interrupt that happesn when UART2 receives data. We need it to be the fastest possible and so
// we do: receive every byte and assembly as a package, finally, signal that we have a package to process (on main slow loop)
// and disable the interrupt. The interrupt should be enable again on main loop, after the package being processed
void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
{
  if(UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET)
  {
    ui8_byte_received = UART2_ReceiveData8 ();

    switch (ui8_state_machine)
    {
      case 0:
      if (ui8_byte_received == 50) // see if we get start package byte 1
      {
	ui8_rx_buffer[ui8_rx_counter++] = ui8_byte_received;
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
	ui8_rx_buffer[ui8_rx_counter++] = ui8_byte_received;
	ui8_state_machine = 2;
      }
      else
      {
	ui8_rx_counter = 0;
	ui8_state_machine = 0;
      }
      break;

      case 2:
      ui8_rx_buffer[ui8_rx_counter++] = ui8_byte_received;

      // see if is the last byte of the package
      if (ui8_rx_counter > 11)
      {
	ui8_rx_counter = 0;
	ui8_state_machine = 0;
	ui8_received_package_flag = 1; // signal that we have a full package to be processed
	UART2->CR2 &= ~(1 << 5); // disable UART2 receive interrupt
      }
      break;

      default:
      break;
    }
  }
}

void communications_set_controller_max_current_factor (float value)
{
  f_controller_max_current = value;
}

void set_speed_erps_max_to_motor_controller (struc_lcd_configuration_variables *lcd_configuration_variables)
{
  uint32_t ui32_temp;
  float f_temp;

  switch (lcd_configuration_variables->ui8_wheel_size)
  {
    case 0x12: // 6''
    f_wheel_size = 0.46875;
    break;

    case 0x0a: // 8''
    f_wheel_size = 0.62847;
    break;

    case 0x0e: // 10''
    f_wheel_size = 0.78819;
    break;

    case 0x02: // 12''
    f_wheel_size = 0.94791;
    break;

    case 0x06: // 14''
    f_wheel_size = 1.10764;
    break;

    case 0x00: // 16''
    f_wheel_size = 1.26736;
    break;

    case 0x04: // 18''
    f_wheel_size = 1.42708;
    break;

    case 0x08: // 20''
    f_wheel_size = 1.57639;
    break;

    case 0x0c: // 22''
    f_wheel_size = 1.74305;
    break;

    case 0x10: // 24''
    f_wheel_size = 1.89583;
    break;

    case 0x14: // 26''
    f_wheel_size = 2.0625;
    break;

    case 0x18: // 700c
    f_wheel_size = 2.17361;
    break;

    case 0x1c: // 28''
    f_wheel_size = 2.19444;
    break;

    case 0x1e: // 29''
    f_wheel_size = 2.25;
    break;

    default: // 26''
    f_wheel_size = 2.0625;
    break;
  }

  // (ui8_max_speed * 1000 * (ui8_motor_characteristic / 2)) / (3600 * f_wheel_size)
  ui32_temp = ((uint32_t) lcd_configuration_variables->ui8_max_speed) * 1000; // in meters/hour
  ui32_temp *= ((uint32_t) (lcd_configuration_variables->ui8_motor_characteristic >> 1));
  f_temp = 3600.0 * f_wheel_size;
  f_temp = ((float) ui32_temp) / f_temp;
  motor_controller_set_speed_erps_max ((uint16_t) f_temp);
}

float f_get_controller_max_current (uint8_t ui8_controller_max_current)
{
  float f_controller_max_current;

  switch (ui8_controller_max_current)
  {
    case 0:
    f_controller_max_current = 0.1;
    break;

    case 1:
    f_controller_max_current = 0.25;
    break;

    case 2:
    f_controller_max_current = 0.33;
    break;

    case 3:
    f_controller_max_current = 0.5;
    break;

    case 4:
    f_controller_max_current = 0.667;
    break;

    case 5:
    f_controller_max_current = 0.752;
    break;

    case 6:
    f_controller_max_current = 0.8;
    break;

    case 7:
    f_controller_max_current = 0.833;
    break;

    case 8:
    f_controller_max_current = 0.87;
    break;

    case 9:
    f_controller_max_current = 0.91;
    break;

    case 10:
    f_controller_max_current = 1.0;
    break;

    default:
    f_controller_max_current = 1.0;
    break;
  }

  return f_controller_max_current;
}

struc_lcd_configuration_variables *ebike_app_get_lcd_configuration_variables (void)
{
  return &lcd_configuration_variables;
}

uint8_t ebike_app_get_adc_throttle_value_cruise_control (void)
{
  return ui8_adc_throttle_value_cruise_control;
}

uint8_t ui8_ebike_app_get_motor_speed (void)
{
  return ui8_motor_speed;
}

