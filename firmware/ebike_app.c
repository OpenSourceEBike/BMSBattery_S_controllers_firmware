/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include "ebike_app.h"

#include <stdint.h>
#include <stdio.h>
#include "stm8s.h"
#include "stm8s_gpio.h"
#include "main.h"
#include "interrupts.h"
#include "adc.h"
#include "utils.h"
#include "motor.h"
#include "pwm.h"
#include "uart.h"
#include "brake.h"
#include "eeprom.h"
#include "config.h"

// cruise control variables
uint8_t ui8_cruise_state = 0;
uint8_t ui8_cruise_output = 0;
uint8_t ui8_cruise_counter = 0;
uint8_t ui8_cruise_value = 0;

// communications variables
volatile struct_lcd_configuration_variables lcd_configuration_variables;
uint8_t ui8_received_package_flag = 0;
volatile float f_controller_max_current;
float f_wheel_speed;
uint8_t ui8_wheel_speed;
float f_wheel_perimeter = 2.0625; // 26'' wheel
uint8_t ui8_tx_buffer[12];
uint8_t ui8_i;
uint8_t ui8_crc;
uint16_t ui16_wheel_period_ms;
uint16_t ui16_battery_volts;
uint8_t ui8_battery_soc;
uint8_t ui16_error;
uint8_t ui8_rx_buffer[13];
uint8_t ui8_rx_counter = 0;
uint8_t ui8_byte_received;
uint8_t ui8_state_machine = 0;

uint8_t ui8_adc_throttle_value_cruise_control;
uint8_t ui8_throttle_value;
volatile uint16_t ui16_throttle_value_accumulated = 0;
uint8_t ui8_throttle_value_filtered;
uint8_t ui8_is_throttle_released;

volatile uint16_t ui16_pas1_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
volatile uint16_t ui16_pas1_pwm_cycles_on_ticks=0;
volatile uint8_t ui8_pas1_direction = 0;
uint8_t ui8_pas_flag=0;
uint8_t PAS_act=3;
uint8_t ui8_pas1_cadence_rpm = 0;


volatile uint16_t ui16_wheel_speed_sensor_pwm_cycles_ticks = (uint16_t) WHEEL_SPEED_SENSOR_MAX_PWM_CYCLE_TICKS;
volatile uint8_t ui8_wheel_speed_sensor_is_disconnected = 1; // must start with this value to have correct value at start up

uint8_t ui8_battery_controller_max_current;

uint8_t ui8_wheel_speed_max = 0;

struct_pi_controller_state wheel_speed_pi_controller_state;

uint16_t ui16_adc_battery_voltage_accumulated = ((uint16_t) ADC_BATTERY_VOLTAGE_10) << READ_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
uint8_t ui8_adc_battery_voltage_filtered;

uint16_t ui16_adc_battery_current_accumulated = 0;
uint8_t ui8_adc_battery_current_filtered;

volatile uint8_t ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_STOP;

uint8_t ui8_ebike_app_error = EBIKE_APP_ERROR_EMPTY;

uint8_t ui8_motor_startup_counter = 0;
uint8_t ui8_motor_cool_counter = 0;

uint8_t ui8_tstr_state_machine = 0;
uint8_t ui8_rtst_counter = 0;

volatile uint8_t ui8_adc_battery_current_offset;
uint16_t ui16_adc_battery_current_offset_10b;

volatile uint8_t ui8_log_pi_battery_current_value;
volatile uint8_t ui8_log_pi_battery_target_current_value;

volatile uint8_t ui8_adc_target_battery_current_max;
volatile uint8_t ui8_adc_target_battery_regen_current_max;

uint8_t ui8_adc_throttle_offset;
uint16_t ui16_adc_throttle_offset;

// function prototypes
void communications_controller (void);
uint8_t ebike_app_cruise_control (uint8_t ui8_value);
void set_speed_erps_max_to_motor_controller (struct_lcd_configuration_variables *lcd_configuration_variables);
void set_motor_controller_max_current (uint8_t ui8_controller_max_current);
void calc_wheel_speed (void);
void ebike_throttle_type_throttle_pas (void);
void ebike_throttle_type_torque_sensor (void);
void throttle_read (void);
void throttle_value_remove_offset (uint8_t *ui8_throttle_value);
void throttle_reset_filter (void);
void torque_sensor_throttle_read (void);
void read_pas_cadence_and_direction (void);
uint8_t pas_is_set (void);
void read_battery_voltage (void);
void read_battery_current (void);
void ebike_app_state_machine (void);
float f_get_assist_level ();
void ebike_app_battery_set_current_max (uint8_t ui8_value);
void ebike_app_battery_set_regen_current_max (uint8_t ui8_value);
uint8_t ebike_app_get_ADC_battery_voltage_filtered (void);
uint8_t ebike_app_get_battery_current_filtered (void);

void ebike_app_init (void)
{
  ebike_app_battery_set_current_max (ADC_BATTERY_CURRENT_MAX);
  ebike_app_battery_set_regen_current_max (0);

  // init variables for wheel speed controller
  wheel_speed_pi_controller_state.ui8_kp_dividend = WHEEL_SPEED_PI_CONTROLLER_KP_DIVIDEND;
  wheel_speed_pi_controller_state.ui8_kp_divisor = WHEEL_SPEED_PI_CONTROLLER_KP_DIVISOR;
  wheel_speed_pi_controller_state.ui8_ki_dividend = WHEEL_SPEED_PI_CONTROLLER_KI_DIVIDEND;
  wheel_speed_pi_controller_state.ui8_ki_divisor = WHEEL_SPEED_PI_CONTROLLER_KI_DIVISOR;
  wheel_speed_pi_controller_state.i16_i_term = 0;
}

void ebike_app_controller (void)
{
  // reads battery voltage and current
  read_battery_voltage ();
  read_battery_current ();

  // calc wheel speed and save the value on global variable ui8_wheel_speed
  calc_wheel_speed ();

  // NOTE: PAS reading must be done before torque sensor reading!
  // read PAS cadence to global variable: ui8_pas_cadence_rps
  read_pas_cadence_and_direction ();

#if (EBIKE_THROTTLE_TYPE == EBIKE_THROTTLE_TYPE_THROTTLE_PAS)
  // map throttle value from 0 up to 255 to global variable: ui8_throttle_value
  // setup ui8_is_throttle_released flag
  throttle_read ();
#elif (EBIKE_THROTTLE_TYPE == EBIKE_THROTTLE_TYPE_TORQUE_SENSOR)
  torque_sensor_throttle_read ();
#else
#error
#endif

  // control the motor using specific algorithm
#if (EBIKE_THROTTLE_TYPE == EBIKE_THROTTLE_TYPE_THROTTLE_PAS)
  ebike_throttle_type_throttle_pas ();
#elif (EBIKE_THROTTLE_TYPE == EBIKE_THROTTLE_TYPE_TORQUE_SENSOR)
  ebike_throttle_type_torque_sensor ();
#else
#error
#endif

  // execute the state machine after previous getting data from inputs like wheel speed, throttle, etc
  ebike_app_state_machine ();

  // send and received information to/from the LCD as also setup the configuration variables
  communications_controller ();
}

void ebike_app_state_machine (void)
{
  switch (ui8_ebike_app_state)
  {
    case EBIKE_APP_STATE_MOTOR_STOP:
    if ((ui8_wheel_speed == 0) &&
	(ui8_throttle_value_filtered > 12) &&  // 5% min of throttle
	(lcd_configuration_variables.ui8_assist_level != 0) &&
	(!motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE)))
    {
      ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_STARTUP;
    }
    else if (ui8_wheel_speed > 0)
    {
      ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_RUNNING;
    }

    ui8_motor_startup_counter = 0;
    ui8_motor_cool_counter = 0;
    break;

    case EBIKE_APP_STATE_MOTOR_STARTUP:
    if (ui8_motor_startup_counter++ >= 30) // 30 * 100ms; 3 seconds max time
    {
      motor_controller_set_state (MOTOR_CONTROLLER_STATE_MOTOR_BLOCKED);
      motor_disable_PWM ();
      ebike_app_set_error (EBIKE_APP_ERROR_06_SHORT_CIRCUIT);
      ebike_app_cruise_control_stop ();
      ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_COOL;
      break;
    }

    // wheel is running so probably motor is running
    if (ui8_wheel_speed > 0)
    {
      ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_RUNNING;
    }

    // we are braking and that stops the motor...
    // throttle has no value anymore
    if ((motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE)) ||
	(ui8_throttle_value_filtered == 0))
    {
      ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_STOP;
      ui8_motor_startup_counter = 0;
    }
    break;

    case EBIKE_APP_STATE_MOTOR_RUNNING:
    // do nothing
    break;

    // wait for the power mosfets cool down and for user release the throttle
    case EBIKE_APP_STATE_MOTOR_COOL:
    if (ui8_throttle_value_filtered > 12) // 5% min of throttle
    {
      if (ui8_motor_cool_counter++ >= 100) // 10 seconds timeout
      {
	// TODO: make next code as calls of functions on motor.c
	ui8_duty_cycle = 0;
	ui8_duty_cycle_target = 0;

	// reseting PI controller so the I term is zero otherwise the motor will start after releasing throttle
	pi_controller_reset (&wheel_speed_pi_controller_state);

	motor_controller_reset_state (MOTOR_CONTROLLER_STATE_MOTOR_BLOCKED);
	ebike_app_clear_error ();
	ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_STOP;
      }
    }
    else
    {
      ui8_motor_cool_counter = 0;
    }
    break;
  }
}

// cruise control will save throttle value and use it even if user releases throttle
// user must keep throttle in the same position for over 8 seconds to start the cruise control
uint8_t ebike_app_cruise_control (uint8_t ui8_value)
{
  // reset cruise control if wheel speed is less than 6km/h
  if (ui8_ebike_app_get_wheel_speed () < 6)
  {
    ui8_cruise_state = 0;
    ui8_cruise_counter = 0;
    return ui8_value;
  }

  switch (ui8_cruise_state)
  {
    case 0:
    if ((ui8_value > CRUISE_CONTROL_MIN) &&
	((ui8_value > (ui8_cruise_value - CRUISE_CONTROL_MIN)) || (ui8_value < (ui8_cruise_value + CRUISE_CONTROL_MIN))))
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
    if (ui8_value < CRUISE_CONTROL_MIN) { ui8_cruise_state = 2; }
    break;

    case 2:
    if (ui8_value > CRUISE_CONTROL_MIN)
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

void communications_controller (void)
{
#ifndef DEBUG_UART
  uint8_t ui8_moving_indication;
  uint8_t ui8_battery_current;

  /********************************************************************************************/
  // Prepare and send packate to LCD
  //

  // calc wheel period in ms
  if (f_wheel_speed < 1) { ui16_wheel_period_ms = 36000.0 * f_wheel_perimeter; } // this is needed to get LCD showing 0 km/h
  else { ui16_wheel_period_ms = (3600.0 * f_wheel_perimeter) / f_wheel_speed; }

  // calc battery pack state of charge (SOC)
  ui16_battery_volts = ((uint16_t) ebike_app_get_ADC_battery_voltage_filtered ()) * ((uint16_t) ADC_BATTERY_VOLTAGE_K);
  if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_80)) { ui8_battery_soc = 16; } // 4 bars | full
  else if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_60)) { ui8_battery_soc = 12; } // 3 bars
  else if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_40)) { ui8_battery_soc = 8; } // 2 bars
  else if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_20)) { ui8_battery_soc = 4; } // 1 bar
  else if (ui16_battery_volts > ((uint16_t) BATTERY_PACK_VOLTS_10)) { ui8_battery_soc = 3; } // empty
  else { ui8_battery_soc = 1; } // flashing

  // prepare error
  ui16_error = ebike_app_get_error (); // get the error value
  // if battery under voltage, signal instead on LCD battery symbol
  if (ui16_error == EBIKE_APP_ERROR_91_BATTERY_UNDER_VOLTAGE)
  {
    ui8_battery_soc = 1; // empty flashing
    ui16_error = 0;
  }

  // prepare moving indication info
  ui8_moving_indication = 0;
  if (motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE) ||
      motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE_LIKE_COAST_BRAKES)) { ui8_moving_indication = (1 << 5); }
  if (ebike_app_cruise_control_is_set ()) { ui8_moving_indication |= (1 << 3); }
  if (ebike_app_throttle_is_released ()) { ui8_moving_indication |= (1 << 1); }
  if (pas_is_set ()) { ui8_moving_indication |= (1 << 4); }

  // if battery over voltage, signal instead on LCD with battery symbol flashing and brake signal
  if (motor_controller_state_is_set(MOTOR_CONTROLLER_STATE_OVER_VOLTAGE))
  {
    ui8_battery_soc = 2; // border flashing
    ui16_error = 0;
    ui8_moving_indication = (1 << 5);
  }

  // preparing the package
  // B0: start package (?)
  ui8_tx_buffer [0] = 65;
  // B1: battery level
  ui8_tx_buffer [1] = ui8_battery_soc;
  // B2: 24V controller
  ui8_tx_buffer [2] = (uint8_t) COMMUNICATIONS_BATTERY_VOLTAGE;
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
  // each unit of B8 = 0.5A
  ui8_battery_current = ebike_app_get_battery_current_filtered ();
  ui8_tx_buffer [8] = (uint8_t) ((float) ui8_battery_current * (float) LCD_BATTERY_CURRENT_FACTOR);
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
    putchar (ui8_tx_buffer [ui8_i]);
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

    // see if CRC is ok
//    if (((ui8_crc ^ 10) == ui8_rx_buffer [7]) 	|| // some versions of CRC LCD5 (??)
//	((ui8_crc ^ 5) == ui8_rx_buffer [7]) 	|| // CRC LCD3 (tested with KT36/48SVPR, from PSWpower)
//	((ui8_crc ^ 9) == ui8_rx_buffer [7]) 	|| // CRC LCD5
//	((ui8_crc ^ 2) == ui8_rx_buffer [7])) 	   // CRC LCD3

    // seems we are calculating wrongly the CRC, for now we can ignore it and it still works in the end
    if (1)
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
#endif

  // do here some tasks that must be done even if we don't receive a package from the LCD
// NOTE: we are now setup controller max current on another place
  set_motor_controller_max_current (lcd_configuration_variables.ui8_controller_max_current);
  ui8_wheel_speed_max = lcd_configuration_variables.ui8_max_speed;
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

void set_speed_erps_max_to_motor_controller (struct_lcd_configuration_variables *lcd_configuration_variables)
{
  uint32_t ui32_temp;
  float f_temp;

  switch (lcd_configuration_variables->ui8_wheel_size)
  {
    case 0x12: // 6''
    f_wheel_perimeter = 0.46875;
    break;

    case 0x0a: // 8''
    f_wheel_perimeter = 0.62847;
    break;

    case 0x0e: // 10''
    f_wheel_perimeter = 0.78819;
    break;

    case 0x02: // 12''
    f_wheel_perimeter = 0.94791;
    break;

    case 0x06: // 14''
    f_wheel_perimeter = 1.10764;
    break;

    case 0x00: // 16''
    f_wheel_perimeter = 1.26736;
    break;

    case 0x04: // 18''
    f_wheel_perimeter = 1.42708;
    break;

    case 0x08: // 20''
    f_wheel_perimeter = 1.57639;
    break;

    case 0x0c: // 22''
    f_wheel_perimeter = 1.74305;
    break;

    case 0x10: // 24''
    f_wheel_perimeter = 1.89583;
    break;

    case 0x14: // 26''
    f_wheel_perimeter = 2.0625;
    break;

    case 0x18: // 700c
    f_wheel_perimeter = 2.17361;
    break;

    case 0x1c: // 28''
    f_wheel_perimeter = 2.19444;
    break;

    case 0x1e: // 29''
    f_wheel_perimeter = 2.25;
    break;

    default: // 26''
    f_wheel_perimeter = 2.0625;
    break;
  }

  // (ui8_max_speed * 1000 * (ui8_motor_characteristic / 2)) / (3600 * f_wheel_size)
  ui32_temp = ((uint32_t) lcd_configuration_variables->ui8_max_speed) * 1000; // in meters/hour
  ui32_temp *= ((uint32_t) (lcd_configuration_variables->ui8_motor_characteristic >> 1));
  f_temp = 3600.0 * f_wheel_perimeter;
  // avoid 0 division
  if (f_temp != 0) { f_temp = ((float) ui32_temp) / f_temp; }
  else { f_temp = ((float) ui32_temp); }
  motor_controller_set_speed_erps_max ((uint16_t) f_temp);
}

void set_motor_controller_max_current (uint8_t ui8_controller_max_current)
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

  ui8_battery_controller_max_current = (uint8_t) (((float) ADC_BATTERY_CURRENT_MAX) * f_controller_max_current);
}

struct_lcd_configuration_variables *ebike_app_get_lcd_configuration_variables (void)
{
  return &lcd_configuration_variables;
}

uint8_t ebike_app_get_adc_throttle_value_cruise_control (void)
{
  return ui8_adc_throttle_value_cruise_control;
}

uint8_t ebike_app_throttle_is_released (void)
{
  return ui8_is_throttle_released;
}

uint8_t ui8_ebike_app_get_wheel_speed (void)
{
  return ui8_wheel_speed;
}

void calc_wheel_speed (void)
{
  uint32_t ui32_temp;
  uint32_t ui32_temp1;

  if (ui8_wheel_speed_sensor_is_disconnected)
  {
    // calc wheel speed in km/h, from motor hall sensors signals
    ui32_temp = ((uint32_t) (lcd_configuration_variables.ui8_motor_characteristic >> 1)) * 1000;
    ui32_temp1 = ((uint32_t) ui16_motor_get_motor_speed_erps ()) * 3600;
    f_wheel_speed = ((float) ui32_temp1) * f_wheel_perimeter;
    // avoid 0 division
    if (ui32_temp > 0) { f_wheel_speed /= (float) ui32_temp; }
  }
  else
  {
    // calc wheel speed in km/h, from external wheel speed sensor
    // avoid 0 division
    if (ui16_wheel_speed_sensor_pwm_cycles_ticks > 0) { f_wheel_speed = ((float) PWM_CYCLES_SECOND) / ((float) ui16_wheel_speed_sensor_pwm_cycles_ticks); } // rps
    else { f_wheel_speed = (float) PWM_CYCLES_SECOND; }
    f_wheel_speed *= f_wheel_perimeter; // meters per second
    f_wheel_speed *= 3.6; // kms per hour
  }

  ui8_wheel_speed = ((uint8_t) f_wheel_speed);
}

void read_pas_cadence_and_direction (void)
{
  float f_temp;

  if (ui8_pas_flag)
  {
#if (PAS_DIRECTION == PAS_DIRECTION_RIGHT)
    if (((float) ui16_pas1_pwm_cycles_ticks /(float) ui16_pas1_pwm_cycles_on_ticks) > PAS_THRESHOLD)
    {
      if (PAS_act < 7) { PAS_act++; }
    }
    else
    {
      if (PAS_act > 0) { PAS_act--; }
    }
#elif (PAS_DIRECTION == PAS_DIRECTION_LEFT)
    if (((float) ui16_pas1_pwm_cycles_ticks /(float) ui16_pas1_pwm_cycles_on_ticks) < PAS_THRESHOLD)
    {
      if (PAS_act < 7) { PAS_act++; }
    }
    else
    {
      if (PAS_act > 0) { PAS_act--; }
    }
#endif

    if (PAS_act > 4) { ui8_pas1_direction = 0; } // set direction only if enough pulses in the right direction are detected.
    else if (PAS_act <1 ) { ui8_pas1_direction = 1; } // pedaling reverse
    ui8_pas_flag = 0;
  }

  // cadence in RPM =  60 / (ui16_pas_timer2_ticks * PAS_NUMBER_MAGNETS * 0.000064)
  if (ui16_pas1_pwm_cycles_ticks >= ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS)) { ui8_pas1_cadence_rpm = 0; }
  else
  {
    f_temp = ((float) ui16_pas1_pwm_cycles_ticks) * ((float) PAS_NUMBER_MAGNETS) * 0.000064;
    // avoid division by 0
    if (f_temp != 0) { ui8_pas1_cadence_rpm = (uint8_t) (60.0 / f_temp); }
    else { ui8_pas1_cadence_rpm = 60; }

    if (ui8_pas1_cadence_rpm > ((uint8_t) PAS_MAX_CADENCE_RPM))
    {
      ui8_pas1_cadence_rpm = ((uint8_t) PAS_MAX_CADENCE_RPM);
    }
  }

  if (ui8_pas1_direction) { ui8_pas1_cadence_rpm = 0; }
}

uint8_t pas_is_set (void)
{
  return (ui8_pas1_cadence_rpm) ? 1: 0;
}

void ebike_throttle_type_throttle_pas (void)
{
#if defined (EBIKE_THROTTLE_TYPE_THROTTLE_PAS_PWM_DUTY_CYCLE)
  uint8_t ui8_temp;
  float f_temp;

  f_temp = (float) (((float) ui8_throttle_value_filtered) * f_get_assist_level ());
  ui8_temp = (uint8_t) (map ((uint32_t) f_temp,
  			 (uint32_t) 0,
  			 (uint32_t) 255,
  			 (uint32_t) 0,
  			 (uint32_t) 255));
  motor_set_pwm_duty_cycle_target (ui8_temp);

#elif defined (EBIKE_THROTTLE_TYPE_THROTTLE_PAS_CURRENT_SPEED)
  uint8_t ui8_temp;
  float f_temp;
  uint8_t ui8_target_current;
  uint8_t ui8_target_duty_cycle;

  // map ui8_pas1_cadence_rpm to 0 - 255
  ui8_temp = (uint8_t) (map ((uint32_t) ui8_pas1_cadence_rpm,
		 (uint32_t) 0,
		 (uint32_t) PAS_MAX_CADENCE_RPM,
		 (uint32_t) 0,
		 (uint32_t) 255));

#if !defined(EBIKE_THROTTLE_TYPE_THROTTLE_PAS_ASSIST_LEVEL_PAS_ONLY)
  ui8_temp = ui8_max (ui8_throttle_value_filtered, ui8_temp); // use the max value from throttle or pas cadence
#endif

  f_temp = ((float) ui8_temp) * f_get_assist_level ();
  if (f_temp > 255) { f_temp = 255; }

#if !defined(EBIKE_THROTTLE_TYPE_THROTTLE_PAS_ASSIST_LEVEL_PAS_ONLY)
  ui8_temp = (uint8_t) f_temp;
#else
  ui8_temp = ui8_max (ui8_throttle_value_filtered, (uint8_t) f_temp); // use the max value from throttle or (pas cadence * assist level)
#endif

  // if assist level is 0, keep at zero the final value
  if (f_get_assist_level () < 0.01) { ui8_temp = 0; }

  ui8_target_current = (uint16_t) (map ((uint32_t) ui8_temp,
			   (uint32_t) 0, // min input value
			   (uint32_t) 255, // max input value
			   (uint32_t) 0, // min output battery current value
			   (uint32_t) ui8_battery_controller_max_current));  // max output battery current value
  ebike_app_battery_set_current_max (ui8_target_current);

  // LCD P3 = 1, control / limit speed to max value
  if (lcd_configuration_variables.ui8_power_assist_control_mode)
  {
    // do not control the speed here, so put output value = 255
    ui8_target_duty_cycle = 255;
    if (ui8_temp == 0) { ui8_target_duty_cycle = 0; }
  }
  else // LCD P3 = 0, control also the speed depending on ui8_throttle_pas_target_value
  {
    // map to wheel speed
    ui8_temp = (uint8_t) (map ((uint32_t) ui8_temp,
  		   (uint32_t) 0,
  		   (uint32_t) 255,
  		   (uint32_t) 0,
  		   (uint32_t) ui8_wheel_speed_max));

    // PI controller for wheel speed
    wheel_speed_pi_controller_state.ui8_current_value = ui8_ebike_app_get_wheel_speed ();
    wheel_speed_pi_controller_state.ui8_target_value = ui8_temp;
    pi_controller (&wheel_speed_pi_controller_state);
    ui8_target_duty_cycle = wheel_speed_pi_controller_state.ui8_controller_output_value;
  }

  // set PWM duty_cycle target value only if we are not braking
  if (!motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE))
  {
    motor_set_pwm_duty_cycle_target (ui8_target_duty_cycle);
  }
  else
  {
    // keep reseting PI controller so the I term will not increase while we are braking!
    pi_controller_reset (&wheel_speed_pi_controller_state);
    // reset throttle filter to get a fast response when we realease brakes
    throttle_reset_filter();
  }
#endif
}

void ebike_throttle_type_torque_sensor (void)
{
  uint8_t ui8_temp;
  float f_temp;
  uint8_t ui8_target_current;
  uint8_t ui8_target_wheel_speed;
  uint8_t ui8_target_duty_cycle;

  f_temp = ((float) ui8_throttle_value_filtered) * f_get_assist_level ();
  if (f_temp > 255) { f_temp = 255; }

#if defined (EBIKE_THROTTLE_TYPE_TORQUE_SENSOR_HUMAN_POWER)
  // calc humam power on the crank using as input the pedal torque sensor value and pedal cadence
  ui8_temp = (uint8_t) (f_temp * ((float) ((float) ui8_pas1_cadence_rpm / ((float) PAS_MAX_CADENCE_RPM))));
#else
  ui8_temp = (uint8_t) f_temp;
#endif

  // if assist level is 0, keep at zero the final value
  if (f_get_assist_level () < 0.01) { ui8_temp = 0; }

#if defined (EBIKE_REGEN_EBRAKE_LIKE_COAST_BRAKES)
  // if user is applying torque on torque sensor, means he doesn't want to brake anymore
  if (ui8_temp > 0 && (motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE_LIKE_COAST_BRAKES)))
  {
    motor_reset_regen_ebrake_like_coast_brakes ();
  }
#endif

  // we do not control duty_cycle here, keep it at max value
  ui8_target_duty_cycle = 255;
  if (ui8_temp == 0) { ui8_target_duty_cycle = 0; }

  // LCD P3 = 1, control only current
  if (lcd_configuration_variables.ui8_power_assist_control_mode)
  {
    // current controller
    ui8_target_current = (uint8_t) (map ((uint32_t) ui8_temp,
			 (uint32_t) 0, // min input value
			 (uint32_t) 255, // max input value
			 (uint32_t) 0, // min output battery current value
			 (uint32_t) ui8_battery_controller_max_current));  // max output battery current value
    ebike_app_battery_set_current_max (ui8_target_current);
  }
  else // LCD P3 = 0, control current and also the speed
  {
    // speed controller
    // map to wheel speed
    ui8_target_wheel_speed = (uint8_t) (map ((uint32_t) ui8_temp,
  		   (uint32_t) 0,
  		   (uint32_t) 255,
  		   (uint32_t) 0,
  		   (uint32_t) ui8_wheel_speed_max));
    // PI controller for wheel speed
    wheel_speed_pi_controller_state.ui8_current_value = ui8_ebike_app_get_wheel_speed ();
    wheel_speed_pi_controller_state.ui8_target_value = ui8_target_wheel_speed;
    pi_controller (&wheel_speed_pi_controller_state);

    // limit PI controller output to max current
    ui8_target_current = (uint8_t) (map ((uint32_t) wheel_speed_pi_controller_state.ui8_controller_output_value,
		     (uint32_t) 0, // min input value
		     (uint32_t) 255, // max input value
		     (uint32_t) 0, // min output battery current value
		     (uint32_t) ui8_battery_controller_max_current));  // max output battery current value
    ebike_app_battery_set_current_max (ui8_target_current);
  }

  // set PWM duty_cycle target value only if we are not braking
  if ((!motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE)) &&
      (!motor_controller_state_is_set (MOTOR_CONTROLLER_STATE_BRAKE_LIKE_COAST_BRAKES)))
  {
    motor_set_pwm_duty_cycle_target (ui8_target_duty_cycle);
  }
  else
  {
    // keep reseting PI controller so the I term will not increase while we are braking!
    pi_controller_reset (&wheel_speed_pi_controller_state);
    // reset throttle filter to get a fast response when we realease brakes
    throttle_reset_filter();
  }
}

void throttle_value_remove_offset (uint8_t *ui8_throttle_value)
{
  uint8_t ui8_temp;

  // remove throttle signal offset and consider active after a safe threshold
  ui8_temp = ui8_adc_throttle_offset + ADC_THROTTLE_THRESHOLD;
  if (*ui8_throttle_value > ui8_temp)
  {
    *ui8_throttle_value -= ui8_temp;
  }
  else
  {
    *ui8_throttle_value = 0;
  }
}

void throttle_read (void)
{
  // read torque sensor signal
  ui8_throttle_value = UI8_ADC_THROTTLE;

  throttle_value_remove_offset (&ui8_throttle_value);

  // map throttle value from 0 up to 255
  ui8_throttle_value = (uint8_t) (map (
      ui8_throttle_value,
      (uint8_t) 0,
      (uint8_t) ADC_THROTTLE_MAX_VALUE,
      (uint8_t) 0,
      (uint8_t) 255));

  // low pass filter the torque sensor to smooth the signal
  ui16_throttle_value_accumulated -= ui16_throttle_value_accumulated >> THROTTLE_FILTER_COEFFICIENT;
  ui16_throttle_value_accumulated += ((uint16_t) ui8_throttle_value);
  ui8_throttle_value_filtered = ui16_throttle_value_accumulated >> THROTTLE_FILTER_COEFFICIENT;

  // setup ui8_is_throttle_released flag
  ui8_is_throttle_released = ((ui8_throttle_value > 0) ? 1 : 0);
}

void throttle_reset_filter (void)
{
  ui16_throttle_value_accumulated = 0;
}

void torque_sensor_throttle_read (void)
{
#define STATE_NO_PEDALLING 		0
#define STATE_STARTUP_PEDALLING 	1
#define STATE_PEDALLING 		2

  throttle_read (); // so we get regular processing of throttle signal

  switch (ui8_tstr_state_machine)
  {
    // ebike is stopped, wait for throttle signal
    case STATE_NO_PEDALLING:
    if ((!ebike_app_throttle_is_released ()) &&
	(!brake_is_set()))
    {
      ui8_tstr_state_machine = STATE_STARTUP_PEDALLING;
    }
    break;

    // now count 5 seconds
    case STATE_STARTUP_PEDALLING:
    if (ui8_rtst_counter++ > 50) // 5 seconds
    {
      ui8_rtst_counter = 0;
      ui8_tstr_state_machine = STATE_PEDALLING;
    }

    // ebike is not moving, let's return to begin
    if (ui8_wheel_speed == 0)
    {
      ui8_rtst_counter = 0;
      ui8_tstr_state_machine = 0;
    }
    break;

    // wait on this state and reset when ebike stops
    case STATE_PEDALLING:
    if (ui8_wheel_speed == 0)
    {
      ui8_tstr_state_machine = STATE_NO_PEDALLING;
    }
    break;

    default:
    break;
  }

  // bike is moving but user doesn't pedal, disable throttle signal
  if ((ui8_tstr_state_machine == STATE_PEDALLING) && (ui8_pas1_cadence_rpm == 0))
  {
    ui8_throttle_value_filtered = 0;
  }
  // use ui8_throttle if cadence is lower than 15 RPM, otherwise, use the processed torque sensor value
  else if ((ui8_pas1_cadence_rpm <= 15) ||
      (ui8_torque_sensor_throttle_processed_value == 0)) // use ui8_throttle_value value while ui8_torque_sensor_throttle_processed_value is 0
  {
    ui8_throttle_value_filtered = ui8_throttle_value; // use the fast, unfiltered throttle signal value
  }
  else
  {
    ui8_throttle_value_filtered = ui8_torque_sensor_throttle_processed_value;
    throttle_value_remove_offset (&ui8_throttle_value_filtered);
  }
}

void read_battery_voltage (void)
{
  // low pass filter the voltage readed value, to avoid possible fast spikes/noise
  ui16_adc_battery_voltage_accumulated -= ui16_adc_battery_voltage_accumulated >> READ_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
  ui16_adc_battery_voltage_accumulated += ((uint16_t) UI8_ADC_BATTERY_VOLTAGE);
  ui8_adc_battery_voltage_filtered = ui16_adc_battery_voltage_accumulated >> READ_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
}

void read_battery_current (void)
{
  int16_t i16_battery_current;

  // low pass filter the positive battery readed value (no regen current), to avoid possible fast spikes/noise
  ui16_adc_battery_current_accumulated -= ui16_adc_battery_current_accumulated >> READ_BATTERY_CURRENT_FILTER_COEFFICIENT;
  ui16_adc_battery_current_accumulated += (uint16_t) UI8_ADC_BATTERY_CURRENT;

  i16_battery_current = ((uint8_t) (ui16_adc_battery_current_accumulated >> READ_BATTERY_CURRENT_FILTER_COEFFICIENT)) - ui8_adc_battery_current_offset;
  // limit to be only positive value, LCD doesn't accept regen current value
  // avoid little values that happens over time with drifting from the hardware
  if (i16_battery_current < 4) { i16_battery_current = 0; }
  ui8_adc_battery_current_filtered = (uint8_t) i16_battery_current;
}

uint8_t ebike_app_get_ADC_battery_voltage_filtered (void)
{
  return ui8_adc_battery_voltage_filtered;
}

uint8_t ebike_app_get_battery_current_filtered (void)
{
  return ui8_adc_battery_current_filtered;
}

float f_get_assist_level ()
{
  float f_temp;

  switch (lcd_configuration_variables.ui8_assist_level)
  {
    case 0:
    f_temp = ASSIST_LEVEL_0;
    break;

    case 1:
    f_temp = ASSIST_LEVEL_1;
    break;

    case 2:
    f_temp = ASSIST_LEVEL_2;
    break;

    case 3:
    f_temp = ASSIST_LEVEL_3;
    break;

    case 4:
    f_temp = ASSIST_LEVEL_4;
    break;

    case 5:
    f_temp = ASSIST_LEVEL_5;
    break;

    default:
    f_temp = ASSIST_LEVEL_5;
    break;
  }

  return f_temp;
}


void ebike_app_set_state (uint8_t ui8_state)
{
  ui8_ebike_app_state = ui8_state;
}

void ebike_app_set_error (uint8_t error)
{
  ui8_ebike_app_error = error;
}

void ebike_app_clear_error (void)
{
  ui8_ebike_app_error = 0;
}

uint8_t ebike_app_get_error (void)
{
  return ui8_ebike_app_error;
}

void ebike_app_battery_set_current_max (uint8_t ui8_value)
{
  ui8_adc_target_battery_current_max = ui8_adc_battery_current_offset + ui8_value;
}

void ebike_app_battery_set_regen_current_max (uint8_t ui8_value)
{
  ui8_adc_target_battery_regen_current_max = ui8_adc_battery_current_offset - ui8_value;
}

void battery_protect_over_voltage (void)
{
  if (UI8_ADC_BATTERY_VOLTAGE > ((uint8_t) ADC_BATTERY_VOLTAGE_MAX)) // verify battery max voltage limit
  {
    // motor will stop
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_OVER_VOLTAGE);
    motor_disable_PWM ();
  }
}
