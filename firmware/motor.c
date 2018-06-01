/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include "motor.h"

#include <stdint.h>
#include <stdio.h>
#include "interrupts.h"
#include "stm8s_gpio.h"
#include "stm8s_tim1.h"
#include "motor.h"
#include "ebike_app.h"
#include "gpio.h"
#include "pwm.h"
#include "config.h"
#include "adc.h"
#include "utils.h"
#include "uart.h"
#include "adc.h"
#include "watchdog.h"

#define SVM_TABLE_LEN 256

uint8_t ui8_svm_table [SVM_TABLE_LEN] =
{
    239	,
    241	,
    242	,
    243	,
    245	,
    246	,
    247	,
    248	,
    249	,
    250	,
    251	,
    251	,
    252	,
    253	,
    253	,
    254	,
    254	,
    254	,
    255	,
    255	,
    255	,
    255	,
    255	,
    255	,
    254	,
    254	,
    254	,
    253	,
    253	,
    252	,
    251	,
    250	,
    250	,
    249	,
    248	,
    247	,
    245	,
    244	,
    243	,
    242	,
    240	,
    239	,
    236	,
    231	,
    227	,
    222	,
    217	,
    212	,
    207	,
    202	,
    197	,
    191	,
    186	,
    181	,
    176	,
    170	,
    165	,
    160	,
    154	,
    149	,
    144	,
    138	,
    133	,
    127	,
    122	,
    116	,
    111	,
    106	,
    100	,
    95	,
    89	,
    84	,
    79	,
    74	,
    68	,
    63	,
    58	,
    53	,
    48	,
    43	,
    38	,
    33	,
    28	,
    23	,
    18	,
    16	,
    14	,
    13	,
    12	,
    10	,
    9	,
    8	,
    7	,
    6	,
    5	,
    4	,
    3	,
    3	,
    2	,
    1	,
    1	,
    1	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    1	,
    1	,
    2	,
    2	,
    3	,
    4	,
    5	,
    6	,
    6	,
    8	,
    9	,
    10	,
    11	,
    12	,
    14	,
    15	,
    17	,
    15	,
    14	,
    12	,
    11	,
    10	,
    9	,
    8	,
    6	,
    6	,
    5	,
    4	,
    3	,
    2	,
    2	,
    1	,
    1	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    0	,
    1	,
    1	,
    1	,
    2	,
    3	,
    3	,
    4	,
    5	,
    6	,
    7	,
    8	,
    9	,
    10	,
    12	,
    13	,
    14	,
    16	,
    18	,
    23	,
    28	,
    33	,
    38	,
    43	,
    48	,
    53	,
    58	,
    63	,
    68	,
    74	,
    79	,
    84	,
    89	,
    95	,
    100	,
    106	,
    111	,
    116	,
    122 ,
    127	,
    133	,
    138	,
    144	,
    149	,
    154	,
    160	,
    165	,
    170	,
    176	,
    181	,
    186	,
    191	,
    197	,
    202	,
    207	,
    212	,
    217	,
    222	,
    227	,
    231	,
    236	,
    239	,
    240	,
    242	,
    243	,
    244	,
    245	,
    247	,
    248	,
    249	,
    250	,
    250	,
    251	,
    252	,
    253	,
    253	,
    254	,
    254	,
    254	,
    255	,
    255	,
    255	,
    255	,
    255	,
    255	,
    254	,
    254	,
    254	,
    253	,
    253	,
    252	,
    251	,
    251	,
    250	,
    249	,
    248	,
    247	,
    246	,
    245	,
    243	,
    242	,
    241	,
    239	,
    238	,
};

uint16_t ui16_PWM_cycles_counter = 1;
uint16_t ui16_PWM_cycles_counter_6 = 1;
uint16_t ui16_PWM_cycles_counter_total = 0xffff;

volatile uint16_t ui16_motor_speed_erps = 0;
uint8_t ui8_sinewave_table_index = 0;
uint8_t ui8_motor_rotor_absolute_angle;
uint8_t ui8_motor_rotor_angle;
uint8_t ui8_flag_foc_read_id_current = 0;

volatile uint8_t ui8_angle_correction = MOTOR_ROTOR_ANGLE_STARTUP;
uint8_t ui8_interpolation_angle = 0;

uint8_t ui8_motor_commutation_type = BLOCK_COMMUTATION;
volatile uint8_t ui8_motor_controller_state = MOTOR_CONTROLLER_STATE_OK;

uint8_t ui8_hall_sensors_state = 0;
uint8_t ui8_hall_sensors_state_last = 0;

uint8_t ui8_adc_id_current = 0;

volatile uint8_t ui8_adc_target_motor_current_max;
volatile uint8_t ui8_adc_target_motor_regen_current_max;

volatile uint8_t ui8_adc_motor_current;
uint8_t ui8_adc_motor_current_offset;
uint16_t ui16_adc_motor_current_offset;

uint8_t ui8_half_erps_flag = 0;

uint16_t ui16_target_erps = 0;
volatile uint16_t ui16_target_erps_max = MOTOR_OVER_SPEED_ERPS;
uint16_t ui16_target_current_10b = 0;

volatile uint8_t ui8_duty_cycle = 0;
uint8_t ui8_duty_cycle_target;
uint16_t ui16_duty_cycle_ramp_up_inverse_step;
uint16_t ui16_duty_cycle_ramp_down_inverse_step;
uint16_t ui16_counter_duty_cycle_ramp_up = 0;
uint16_t ui16_counter_duty_cycle_ramp_down = 0;
uint8_t ui8_phase_a_voltage;
uint8_t ui8_phase_b_voltage;
uint8_t ui8_phase_c_voltage;
uint16_t ui16_value;

uint8_t ui8_first_time_run_flag = 1;

uint8_t ui8_pas1_state;
uint8_t ui8_pas1_state_old;
uint16_t ui16_pas1_counter = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
uint16_t ui16_pas1_on_time_counter;
uint16_t ui16_pas1_off_time_counter;

uint8_t ui8_pas2_state;
uint8_t ui8_pas2_state_old;
volatile uint8_t ui8_pas2_counter = 0;
volatile uint8_t ui8_pas2_direction = 0;
volatile uint8_t ui8_pas2_regen_count = 0;
volatile uint8_t ui8_pas2_regen_count_last = 0;
volatile uint8_t ui8_pas2_regen_current = 0;

volatile uint8_t ui8_torque_sensor_throttle_processed_value = 0;
uint8_t ui8_torque_sensor_pas_signal_change_counter = 0;
uint8_t ui8_torque_sensor_throttle_max_value = 0;
uint8_t ui8_torque_sensor_throttle_value;

uint8_t ui8_wheel_speed_sensor_state = 1;
uint8_t ui8_wheel_speed_sensor_state_old = 1;
uint16_t ui16_wheel_speed_sensor_counter = 0;

uint8_t ui8_pwm_duty_cycle_duty_cycle_controller;

// Measures did with a 24V Q85 328 RPM motor, rotating motor backwards by hand:
// Hall sensor A positivie to negative transition | BEMF phase B at max value / top of sinewave
// Hall sensor B positivie to negative transition | BEMF phase A at max value / top of sinewave
// Hall sensor C positive to negative transition | BEMF phase C at max value / top of sinewave

// runs every 64us (PWM frequency)
void TIM1_CAP_COM_IRQHandler(void) __interrupt(TIM1_CAP_COM_IRQHANDLER)
{
  uint8_t ui8_temp;

  /****************************************************************************/
  // read motor current ADC value
  // disable scan mode
  ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
  // clear EOC flag first (selected also channel 6)
  ADC1->CSR = 0x06;
  // start ADC1 conversion
  ADC1->CR1 |= ADC1_CR1_ADON;
  while (!(ADC1->CSR & ADC1_FLAG_EOC)) ;
  ui8_adc_motor_current = ADC1->DRH;
  /****************************************************************************/

  /****************************************************************************/
  // trigger ADC conversion of all channels (scan conversion, buffered)
  ADC1->CR2 |= ADC1_CR2_SCAN; // enable scan mode
  ADC1->CSR = 0x09; // clear EOC flag first (selected also channel 9)
  ADC1->CR1 |= ADC1_CR1_ADON; // start ADC1 conversion
  /****************************************************************************/

  /****************************************************************************/
  // read hall sensor signals and:
  // - find the motor rotor absolute angle
  // - read FOC Id current and calc FOC (adjust ui8_angle_correction)
  // - calc motor speed in erps (ui16_motor_speed_erps)

  // read hall sensors signal pins and mask other pins
  // hall sensors sequence with motor forward rotation: 4, 6, 2, 3, 1, 5
  ui8_hall_sensors_state = ((uint8_t) HALL_SENSORS__PORT->IDR) & (HALL_SENSORS_MASK);
  // make sure we run next code only when there is a change on the hall sensors signal
  if (ui8_hall_sensors_state != ui8_hall_sensors_state_last)
  {
    ui8_hall_sensors_state_last = ui8_hall_sensors_state;

    switch (ui8_hall_sensors_state)
    {
      case 3:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_150;
      }
      break;

      case 1:
      if (ui8_half_erps_flag == 1)
      {
	ui8_half_erps_flag = 0;
	ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
	ui16_PWM_cycles_counter = 1;

	// this division takes 4.4us and without the cast (uint16_t) PWM_CYCLES_SECOND, would take 111us!! Verified on 2017.11.20
	// avoid division by 0
	if (ui16_PWM_cycles_counter_total > 0) { ui16_motor_speed_erps = ((uint16_t) PWM_CYCLES_SECOND) / ui16_PWM_cycles_counter_total; }
	else { ui16_motor_speed_erps = ((uint16_t) PWM_CYCLES_SECOND); }

	// update motor commutation state based on motor speed
#ifdef DO_SINEWAVE_INTERPOLATION_360_DEGREES
	if (ui16_motor_speed_erps > MOTOR_ROTOR_ERPS_START_INTERPOLATION_360_DEGREES)
	{
	  if (ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
	  {
	    ui8_motor_commutation_type = SINEWAVE_INTERPOLATION_360_DEGREES;
	  }
	}
	else
	{
	  if (ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_360_DEGREES)
	  {
	    ui8_motor_commutation_type = SINEWAVE_INTERPOLATION_60_DEGREES;
	  }
	}
#endif
	if (ui16_motor_speed_erps > MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES)
	{
	  if (ui8_motor_commutation_type == BLOCK_COMMUTATION)
	  {
	    ui8_motor_commutation_type = SINEWAVE_INTERPOLATION_60_DEGREES;
	    ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_RUNNING;
	  }
	}
	else
	{
	  if (ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
	  {
	    ui8_motor_commutation_type = BLOCK_COMMUTATION;
	    ui8_angle_correction = MOTOR_ROTOR_ANGLE_STARTUP;
	  }
	}
      }

      ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_210;
      break;

      case 5:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_270;
      }
      break;

      case 4:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_330;
      }
      break;

      case 6:
      ui8_half_erps_flag = 1;
      ui8_flag_foc_read_id_current = 1;

      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_30;
      }
      break;

      // BEMF is always 90 degrees advanced over motor rotor position degree zero
      // and here (hall sensor C blue wire, signal transition from positive to negative),
      // phase B BEMF is at max value (measured on osciloscope by rotating the motor)
      case 2:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_90;
      }
      break;

      default:
      return;
      break;
    }

    ui16_PWM_cycles_counter_6 = 1;
  }
  /****************************************************************************/

  /****************************************************************************/
  // count number of fast loops / PWM cycles and reset some states when motor is near zero speed
  if (ui16_PWM_cycles_counter < ((uint16_t) PWM_CYCLES_COUNTER_MAX))
  {
    ui16_PWM_cycles_counter++;
    ui16_PWM_cycles_counter_6++;
  }
  else // happens when motor is stopped or near zero speed
  {
    ui16_PWM_cycles_counter = 1; // don't put to 0 to avoid 0 divisions
    ui16_PWM_cycles_counter_6 = 1;
    ui8_half_erps_flag = 0;
    ui16_motor_speed_erps = 0;
    ui16_PWM_cycles_counter_total = 0xffff;
    ui8_angle_correction = MOTOR_ROTOR_ANGLE_STARTUP;
    ui8_motor_commutation_type = BLOCK_COMMUTATION;
    ui8_hall_sensors_state_last = 0; // this way we force execution of hall sensors code next time
    ebike_app_cruise_control_stop ();
    if (ui8_ebike_app_state == EBIKE_APP_STATE_MOTOR_RUNNING) { ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_STOP; }
  }
  /****************************************************************************/

  /****************************************************************************/
  // - calc interpolation angle and sinewave table index
  // - read FOC Id current and ajust ui8_angle_correction
#define DO_INTERPOLATION 1 // may be usefull to disable interpolation when debugging
#if DO_INTERPOLATION == 1
  // calculate the interpolation angle (and it doesn't work when motor starts and at very low speeds)
  if (ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
  {
    // division by 0: ui16_PWM_cycles_counter_total should never be 0
    // TODO: verifiy if (ui16_PWM_cycles_counter_6 << 8) do not overflow
    ui8_interpolation_angle = (ui16_PWM_cycles_counter_6 << 8) / ui16_PWM_cycles_counter_total; // this operations take 4.4us
    ui8_motor_rotor_angle = ui8_motor_rotor_absolute_angle + ui8_interpolation_angle;
    ui8_sinewave_table_index = ui8_motor_rotor_angle + ui8_angle_correction;
  }
  else if (ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_360_DEGREES)
  {
    ui8_interpolation_angle = (ui16_PWM_cycles_counter << 8) / ui16_PWM_cycles_counter_total;
    ui8_motor_rotor_angle = ui8_motor_rotor_absolute_angle + ui8_interpolation_angle;
    ui8_sinewave_table_index = ui8_motor_rotor_angle + ui8_angle_correction;
  }
  else
#endif
  {
    ui8_sinewave_table_index = ui8_motor_rotor_absolute_angle + ui8_angle_correction;
  }

  // we need to put phase voltage 90 degrees ahead of rotor position, to get current 90 degrees ahead and have max torque per amp
  ui8_sinewave_table_index -= 63;

  if (ui8_motor_commutation_type != BLOCK_COMMUTATION)
  {
    // make sure we just execute one time per ERPS, so use the flag ui8_flag_foc_read_id_current
    if ((ui8_motor_rotor_angle >= MOTOR_ROTOR_ANGLE_FOC) && (ui8_flag_foc_read_id_current))
    {
      ui8_flag_foc_read_id_current = 0;

      // minimum speed to do FOC
      if (ui16_motor_speed_erps > MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES)
      {
        // read here the phase B current: FOC Id current
        ui8_adc_id_current = UI8_ADC_MOTOR_PHASE_B_CURRENT;

        if (UI8_ADC_BATTERY_CURRENT > ui8_adc_battery_current_offset)
	{
          // motor mode
	  if (ui8_adc_id_current > ADC_PHASE_B_CURRENT_ZERO_AMPS_FOC_MAX) { ui8_angle_correction++; }
	  else if (ui8_adc_id_current < ADC_PHASE_B_CURRENT_ZERO_AMPS_FOC_MIN) { ui8_angle_correction--; }
	}
        else
	{
	  // regen mode
  	  if (ui8_adc_id_current > ADC_PHASE_B_CURRENT_ZERO_AMPS_FOC_MAX) { ui8_angle_correction--; }
  	  else if (ui8_adc_id_current < ADC_PHASE_B_CURRENT_ZERO_AMPS_FOC_MIN) { ui8_angle_correction++; }
	}
      }
    }
  }
  /****************************************************************************/

  /****************************************************************************/
  // PWM duty_cycle controller:
  // - limit battery overvoltage
  // - limit battery undervoltage
  // - limit battery max current
  // - limit battery max regen current
  // - limit motor max current
  // - limit motor max regen current
  // - limit motor max ERPS
  // - ramp up/down PWM duty_cycle value

  if ((UI8_ADC_BATTERY_CURRENT > ui8_adc_target_battery_current_max) || // battery max current, reduce duty_cycle
      (ui8_adc_motor_current > ui8_adc_target_motor_current_max) || // motor max current, reduce duty_cycle
      (ui16_motor_speed_erps > MOTOR_OVER_SPEED_ERPS) || // motor speed over max ERPS, reduce duty_cycle
      (UI8_ADC_BATTERY_VOLTAGE < ((uint8_t) ADC_BATTERY_VOLTAGE_MIN))) // battery voltage under min voltage, reduce duty_cycle
  {
    if (ui8_duty_cycle > 0)
    {
      ui8_duty_cycle--;
    }
  }
  else if ((UI8_ADC_BATTERY_VOLTAGE > ((uint8_t) ADC_BATTERY_VOLTAGE_MAX)) || // verify battery max voltage limit
      (UI8_ADC_BATTERY_CURRENT < ui8_adc_target_battery_regen_current_max) || // verify battery max regen current limit
      (ui8_adc_motor_current < ui8_adc_target_motor_regen_current_max)) // verify motor max regen current limit
  {
    if (ui8_duty_cycle < 255)
    {
      ui8_duty_cycle++;
    }
  }
  else // nothing to limit, so, adjust duty_cycle to duty_cycle_target, including ramping
  {
    if (ui8_duty_cycle_target > ui8_duty_cycle)
    {
      if (ui16_counter_duty_cycle_ramp_up++ >= ui16_duty_cycle_ramp_up_inverse_step)
      {
	ui16_counter_duty_cycle_ramp_up = 0;
	ui8_duty_cycle++;
      }
    }
    else if (ui8_duty_cycle_target < ui8_duty_cycle)
    {
      if (ui16_counter_duty_cycle_ramp_down++ >= ui16_duty_cycle_ramp_down_inverse_step)
      {
	ui16_counter_duty_cycle_ramp_down = 0;
	ui8_duty_cycle--;
      }
    }
  }
  /****************************************************************************/

  /****************************************************************************/
  // calc final PWM duty_cycle values to be applied to TIMER1

  // scale and apply PWM duty_cycle for the 3 phases
  // phase A is advanced 240 degrees over phase B
  ui8_temp = ui8_svm_table [(uint8_t) (ui8_sinewave_table_index + 171 /* 240º */)];
  if (ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_phase_a_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_phase_a_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
  }

  // phase B as reference phase
  ui8_temp = ui8_svm_table [ui8_sinewave_table_index];
  if (ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_phase_b_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_phase_b_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
  }

  // phase C is advanced 120 degrees over phase B
  ui8_temp = ui8_svm_table [(uint8_t) (ui8_sinewave_table_index + 85 /* 120º */)];
  if (ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_phase_c_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_phase_c_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
  }

  // set final duty_cycle value
  // phase A
  TIM1->CCR3H = (uint8_t) (ui8_phase_a_voltage >> 7);
  TIM1->CCR3L = (uint8_t) (ui8_phase_a_voltage << 1);
  // phase B
  TIM1->CCR2H = (uint8_t) (ui8_phase_b_voltage >> 7);
  TIM1->CCR2L = (uint8_t) (ui8_phase_b_voltage << 1);
  // phase C
  TIM1->CCR1H = (uint8_t) (ui8_phase_c_voltage >> 7);
  TIM1->CCR1L = (uint8_t) (ui8_phase_c_voltage << 1);

  // enable PWM signals only when MOTOR_CONTROLLER_STATE_OK
  if (ui8_motor_controller_state == MOTOR_CONTROLLER_STATE_OK)
  {
    TIM1->BKR |= TIM1_BKR_MOE;
  }
  /****************************************************************************/

  /****************************************************************************/
  // calc PAS1 timming between each positive pulses, in PWM cycles ticks
  // calc PAS1 on and off timming of each pulse, in PWM cycles ticks
  // filter torque sensor throttle signal
  ui16_pas1_counter++;

  // detect PAS signal changes
  if ((PAS1__PORT->IDR & PAS1__PIN) == 0)
  {
    ui8_pas1_state = 0;
    ui16_pas1_off_time_counter++;
  }
  else
  {
    ui8_pas1_state = 1;
    ui16_pas1_on_time_counter++;
  }

  if (ui8_pas1_state != ui8_pas1_state_old) // PAS signal did change
  {
    ui8_pas1_state_old = ui8_pas1_state;

    if (ui8_pas1_state == 1) // consider only when PAS signal transition from 0 to 1
    {
      // limit PAS cadence to be less than PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS
      if (ui16_pas1_counter < ((uint16_t) PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS)) { ui16_pas1_counter = PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS; }

      ui16_pas1_pwm_cycles_ticks = ui16_pas1_counter;
      ui16_pas1_pwm_cycles_on_ticks = ui16_pas1_on_time_counter;
      ui16_pas1_counter = 1;
      ui16_pas1_off_time_counter = 1;
      ui16_pas1_on_time_counter = 1;
      ui8_pas_flag = 1;
    }
    /*
     else
     {
#if (PAS_DIRECTION == PAS_DIRECTION_RIGHT)
      if (ui16_pas1_on_time_counter > ui16_pas1_off_time_counter)
#else
      if (ui16_pas1_on_time_counter <= ui16_pas1_off_time_counter)
#endif
      { ui8_pas1_direction = 1; }
      else { ui8_pas1_direction = 0; }


    }
    */

#if (EBIKE_THROTTLE_TYPE == EBIKE_THROTTLE_TYPE_TORQUE_SENSOR)
    // filter the torque signal, by saving the max value of each one pedal rotation
    ui8_torque_sensor_throttle_value = UI8_ADC_THROTTLE;
    ui8_torque_sensor_pas_signal_change_counter++;
    if (ui8_torque_sensor_pas_signal_change_counter > PAS_NUMBER_MAGNETS_X2) // PAS_NUMBER_MAGNETS*2 means a full pedal rotation
    {
      ui8_torque_sensor_pas_signal_change_counter = 1; // this is the first cycle
      ui8_torque_sensor_throttle_processed_value = ui8_torque_sensor_throttle_max_value; // store the max value on the output variable of this algorithm
      ui8_torque_sensor_throttle_max_value = 0; // reset the max value
    }
    else
    {
      // store the max value
      if (ui8_torque_sensor_throttle_value > ui8_torque_sensor_throttle_max_value)
      {
	ui8_torque_sensor_throttle_max_value = ui8_torque_sensor_throttle_value;
      }
    }
#endif
  /****************************************************************************/

#if defined(EBIKE_REGEN_EBRAKE_LIKE_COAST_BRAKES)
  /****************************************************************************/
  // detect pedal rotating backwards and configure regen current

  // detect PAS2 signal changes
  /*
  if (!(PAS2__PORT->IDR & PAS2__PIN)) { ui8_pas2_state = 0; }
  else { ui8_pas2_state = 1; }

  if (ui8_pas2_state != ui8_pas2_state_old) // PAS2 signal did change
  {
    ui8_pas2_state_old = ui8_pas2_state;

    if (PAS1__PORT->IDR & PAS1__PIN)
    {
      ui8_pas2_counter++;
      if (ui8_pas2_counter > 3)
      {
	ui8_pas2_counter = 1;
	ui8_pas2_direction = 1;
      }
    }
    else
    { // we are rotating pedals forward
      ui8_pas2_counter = 0;
      ui8_pas2_direction = 0;
    }*/

    if (ui8_pas1_direction) // rotating backwards
    {
      if (ui8_pas2_regen_count < 5)
      {
	// we are starting brake or increase the rate
	ui8_pas2_regen_count++;
	ui8_pas2_regen_current += ADC_BATTERY_REGEN_CURRENT_MAX_1_5;

	ui8_motor_controller_state |= MOTOR_CONTROLLER_STATE_BRAKE_LIKE_COAST_BRAKES;  // enable brake like coast brakes state
	ui8_adc_target_battery_regen_current_max = ui8_adc_battery_current_offset - ui8_pas2_regen_current; // update battery regen current_max
	ui8_adc_target_motor_regen_current_max = ui8_adc_motor_current_offset - ADC_MOTOR_REGEN_CURRENT_MAX; // keep motor at max regen current
	ui8_duty_cycle_target = 0; // target 0 PWM duty_cycle and the motor will stop/block
	ebike_app_cruise_control_stop ();

	ui16_throttle_value_accumulated = 0;
      }
    }
    else // rotating forwards
    {
      if (ui8_pas2_regen_count > 0)
      {
	// we are still brake but reducing the rate, let's reduce one step the regen current
	ui8_pas2_regen_count--;
	ui8_pas2_regen_current -= ADC_BATTERY_REGEN_CURRENT_MAX_1_5;
	ui8_adc_target_battery_regen_current_max = ui8_adc_battery_current_offset - ui8_pas2_regen_current; // apply new value for ebrake/regen

	if (ui8_pas2_regen_count == 0) { ui8_pas2_regen_count_last = 1; }
      }

      if (ui8_pas2_regen_count_last)
      {
	// we rotated backwards all the steps: stop braking
	ui8_pas2_regen_count_last = 0;
	ui8_pas2_regen_current = 0;
	ui8_duty_cycle_target = ui8_duty_cycle;
	ui8_motor_controller_state &= ~MOTOR_CONTROLLER_STATE_BRAKE_LIKE_COAST_BRAKES; // disable brake like coast brakes state, this will make throttle to setup the new value for target PWM duty_cycle
	ui8_adc_target_battery_regen_current_max = ui8_adc_battery_current_offset; // disable ebrake/regen
      }
    }
	  
  #endif
  }

    // limit min PAS cadence
    if (ui16_pas1_counter > ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS))
    {
      ui16_pas1_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
      ui16_pas1_counter = 0;
      ui16_pas1_on_time_counter = 0;
      ui16_pas1_off_time_counter = 0;
      ui8_pas1_direction = 1;
      PAS_act=3;
#if (EBIKE_THROTTLE_TYPE == EBIKE_THROTTLE_TYPE_TORQUE_SENSOR)
      ui8_torque_sensor_throttle_processed_value = 0;
#endif
  }
  /****************************************************************************/


  /****************************************************************************/
  // calc wheel speed sensor timming between each positive pulses, in PWM cycles ticks
  ui16_wheel_speed_sensor_counter++;

  // detect wheel speed sensor signal changes
  if (WHEEL_SPEED_SENSOR__PORT->IDR & WHEEL_SPEED_SENSOR__PIN) { ui8_wheel_speed_sensor_state = 1; }
  else { ui8_wheel_speed_sensor_state = 0; }

  if (ui8_wheel_speed_sensor_state != ui8_wheel_speed_sensor_state_old) // wheel speed sensor signal did change
  {
    ui8_wheel_speed_sensor_state_old = ui8_wheel_speed_sensor_state;

    if (ui8_wheel_speed_sensor_state == 1) // consider only when wheel speed sensor signal transition from 0 to 1
    {
      ui16_wheel_speed_sensor_pwm_cycles_ticks = ui16_wheel_speed_sensor_counter;
      ui16_wheel_speed_sensor_counter = 0;
      ui8_wheel_speed_sensor_is_disconnected = 0;
    }
  }

  // limit min wheel speed
  if (ui16_wheel_speed_sensor_counter > ((uint16_t) WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS))
  {
    ui16_wheel_speed_sensor_pwm_cycles_ticks = (uint16_t) WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS;
    ui16_wheel_speed_sensor_counter = 0;
    ui8_wheel_speed_sensor_is_disconnected = 1;
  }
  /****************************************************************************/

  /****************************************************************************/
  // reload watchdog timer, every PWM cycle to avoid automatic reset of the microcontroller
  if (ui8_first_time_run_flag)
  { // from the init of watchdog up to first reset on PWM cycle interrupt,
    // it can take up to 250ms and so we need to init here inside the PWM cycle
    ui8_first_time_run_flag = 0;
    watchdog_init ();
  }
  else
  {
    IWDG->KR = IWDG_KEY_REFRESH; // reload watch dog timer counter
  }
  /****************************************************************************/

  /****************************************************************************/
  // clears the TIM1 interrupt TIM1_IT_UPDATE pending bit
  TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT_CC4);
  /****************************************************************************/
}

void motor_disable_PWM (void)
{
  TIM1_CtrlPWMOutputs(DISABLE);
}

void motor_enable_PWM (void)
{
  TIM1_CtrlPWMOutputs(ENABLE);
}

void motor_controller_set_state (uint8_t ui8_state)
{
  ui8_motor_controller_state |= ui8_state;
}

void motor_controller_reset_state (uint8_t ui8_state)
{
  ui8_motor_controller_state &= ~ui8_state;
}

uint8_t motor_controller_state_is_set (uint8_t ui8_state)
{
  return ui8_motor_controller_state & ui8_state;
}

void hall_sensor_init (void)
{
  GPIO_Init(HALL_SENSORS__PORT,
	    (GPIO_Pin_TypeDef)(HALL_SENSOR_A__PIN | HALL_SENSOR_B__PIN | HALL_SENSOR_C__PIN),
	    GPIO_MODE_IN_FL_NO_IT);
}

void motor_init (void)
{
  /***************************************************************************************/
  // motor overcurrent pin as external input pin interrupt
  GPIO_Init(CURRENT_MOTOR_TOTAL_OVER__PORT,
	    CURRENT_MOTOR_TOTAL_OVER__PIN,
	    GPIO_MODE_IN_FL_IT); // with external interrupt

  //initialize the Interrupt sensitivity
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,
			    EXTI_SENSITIVITY_FALL_LOW);
  /***************************************************************************************/

  motor_set_current_max (ADC_MOTOR_CURRENT_MAX);
  motor_set_regen_current_max (0);
  motor_set_pwm_duty_cycle_ramp_up_inverse_step (PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP); // each step = 64us
  motor_set_pwm_duty_cycle_ramp_down_inverse_step (PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP); // each step = 64us
}

void motor_set_pwm_duty_cycle_target (uint8_t ui8_value)
{
  if (ui8_value > PWM_DUTY_CYCLE_MAX) { ui8_value = PWM_DUTY_CYCLE_MAX; }

  ui8_duty_cycle_target = ui8_value;
}

uint8_t motor_get_pwm_duty_cycle_target (void)
{
  return ui8_duty_cycle_target;
}

void motor_set_current_max (uint8_t ui8_value)
{
  ui8_adc_target_motor_current_max = ui8_adc_motor_current_offset + ui8_value;
}

void motor_set_regen_current_max (uint8_t ui8_value)
{
  ui8_adc_target_motor_regen_current_max = ui8_adc_motor_current_offset - ui8_value;
}

void motor_set_pwm_duty_cycle_ramp_up_inverse_step (uint16_t ui16_value)
{
  ui16_duty_cycle_ramp_up_inverse_step = ui16_value;
}

void motor_set_pwm_duty_cycle_ramp_down_inverse_step (uint16_t ui16_value)
{
  ui16_duty_cycle_ramp_down_inverse_step = ui16_value;
}

uint16_t ui16_motor_get_motor_speed_erps (void)
{
  return ui16_motor_speed_erps;
}

uint16_t motor_get_er_PWM_ticks (void)
{
  return ui16_PWM_cycles_counter_total;
}

void motor_controller_set_target_speed_erps (uint16_t ui16_erps)
{
  ui16_target_erps = ui16_erps;
}

void motor_controller_set_speed_erps_max (uint16_t ui16_erps)
{
  ui16_target_erps_max = ui16_erps;
}

uint16_t motor_controller_get_target_speed_erps_max (void)
{
  return ui16_target_erps_max;
}

void motor_controller_set_target_current_10b (uint16_t ui16_current)
{
  ui16_target_current_10b = ui16_current;
}

void motor_set_pwm_duty_cycle (uint8_t ui8_value)
{
  if (ui8_value > PWM_DUTY_CYCLE_MAX) { ui8_value = PWM_DUTY_CYCLE_MAX; }

  ui8_duty_cycle = ui8_value;
}

void motor_reset_regen_ebrake_like_coast_brakes (void)
{
  ui8_pas2_counter = 0;
  ui8_pas2_direction = 0;
  ui8_pas2_regen_count = 0;
  ui8_pas2_regen_count_last = 0;
  ui8_pas2_regen_current = 0;
  motor_set_regen_current_max (0);
  ebike_app_battery_set_regen_current_max (0);
  motor_controller_reset_state (MOTOR_CONTROLLER_STATE_BRAKE_LIKE_COAST_BRAKES);
}

// motor overcurrent interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER)
{
  // motor will stop and error symbol on LCD will be shown
  motor_controller_set_state (MOTOR_CONTROLLER_STATE_OVER_CURRENT);
  motor_disable_PWM ();
  ebike_app_set_error (EBIKE_APP_ERROR_06_SHORT_CIRCUIT);
}
