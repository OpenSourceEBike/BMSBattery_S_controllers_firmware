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
    122
};

uint16_t ui16_PWM_cycles_counter = 0;
uint16_t ui16_PWM_cycles_counter_6 = 0;
uint16_t ui16_PWM_cycles_counter_total = 0;

uint16_t ui16_motor_speed_erps = 0;
uint8_t ui8_sinewave_table_index = 0;
uint8_t ui8_motor_rotor_absolute_angle;
uint8_t ui8_motor_rotor_angle;
uint8_t ui8_flag_foc_read_id_current = 0;
volatile uint8_t ui8_angle_correction = 127;
uint8_t ui8_interpolation_angle = 0;

uint8_t ui8_motor_commutation_type = BLOCK_COMMUTATION;
uint8_t ui8_motor_controller_state = MOTOR_CONTROLLER_STATE_OK;

uint8_t ui8_hall_sensors = 0;
uint8_t ui8_hall_sensors_last = 0;

uint8_t ui8_adc_id_current = 0;

uint8_t ui8_adc_target_motor_current_max;
int16_t i16_motor_current_filtered_10b;
uint8_t ui8_adc_target_motor_regen_current_max;

uint8_t ui8_adc_motor_total_current;
uint8_t ui8_motor_total_current_offset;
uint16_t ui16_motor_total_current_offset_10b;

uint8_t ui8_half_erps_flag = 0;

uint16_t ui16_target_erps = 0;
volatile uint16_t ui16_target_erps_max = MOTOR_OVER_SPEED_ERPS;
uint16_t ui16_target_current_10b = 0;

uint16_t ui16_adc_motor_current_accumulated_10b;
uint16_t ui16_adc_motor_current_filtered_10b;

uint8_t ui8_motor_controller_error = MOTOR_CONTROLLER_ERROR_EMPTY;

volatile uint8_t ui8_duty_cycle = 0;
uint8_t ui8_duty_cycle_target;
uint16_t ui16_duty_cycle_ramp_up_inverse_step;
uint16_t ui16_duty_cycle_ramp_down_inverse_step;
uint16_t ui16_counter_duty_cycle_ramp_up = 0;
uint16_t ui16_counter_duty_cycle_ramp_down = 0;
uint8_t ui8_value_a;
uint8_t ui8_value_b;
uint8_t ui8_value_c;
uint16_t ui16_value;

uint8_t ui8_first_time_run_flag = 1;

uint8_t ui8_pas_state;
uint8_t ui8_pas_state_old;
uint16_t ui16_pas_counter = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
uint16_t ui16_pas_on_time_counter;
uint16_t ui16_pas_off_time_counter;

uint8_t ui8_wheel_speed_sensor_state;
uint8_t ui8_wheel_speed_sensor_state_old;
uint16_t ui16_wheel_speed_sensor_counter;

uint8_t ui8_pwm_duty_cycle_duty_cycle_controller;

// functions prototypes
uint8_t motor_current_controller (void);
void calc_motor_current_filtered (void);

void motor_controller (void)
{
  calc_motor_current_filtered ();
}

// runs every 64us (PWM frequency)
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
  uint8_t ui8_temp;

  /****************************************************************************/
  // trigger ADC conversion of all channels (scan conversion, buffered)
  ADC1->CSR &= 0x09; // clear EOC flag first (selected also channel 9)
  ADC1->CR1 |= ADC1_CR1_ADON; // Start ADC1 conversion
  /****************************************************************************/

  /****************************************************************************/
  // read hall sensor signals and:
  // - find the motor rotor absolute angle
  // - read FOC Id current and calc FOC (adjust ui8_angle_correction)
  // - calc motor speed in erps (ui16_motor_speed_erps)

  // read hall sensors signal pins and mask other pins
  ui8_hall_sensors = ((uint8_t) HALL_SENSORS__PORT->IDR) & (HALL_SENSORS_MASK);
  // make sure we run next code only when there is a change on the hall sensors signal
  if (ui8_hall_sensors != ui8_hall_sensors_last)
  {
    ui8_hall_sensors_last = ui8_hall_sensors;

    switch (ui8_hall_sensors)
    {
      case 3:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) ANGLE_180;
      }
      break;

      case 1:
      if (ui8_half_erps_flag == 1)
      {
	ui8_half_erps_flag = 0;
	ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
	ui16_PWM_cycles_counter = 0;
	// this division takes 4.4us and without the cast (uint16_t) PWM_CYCLES_SECOND, would take 111us!! Verified on 2017.11.20
	ui16_motor_speed_erps = ((uint16_t) PWM_CYCLES_SECOND) / ui16_PWM_cycles_counter_total;
      }
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
	  ui8_angle_correction = 127;
	}
      }

      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) ANGLE_240;
      }
      break;

      case 5:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) ANGLE_300;
      }
      break;

      case 4:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) ANGLE_1;
      }
      break;

      case 6:
      ui8_half_erps_flag = 1;
      ui8_flag_foc_read_id_current = 1;

      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) ANGLE_60;
      }
      break;

      case 2:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = (uint8_t) ANGLE_120;
      }
      break;

      default:
      return;
      break;
    }

    ui16_PWM_cycles_counter_6 = 0;
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
    ui16_PWM_cycles_counter = 0;
    ui16_PWM_cycles_counter_6 = 0;
    ui8_half_erps_flag = 0;
    ui16_motor_speed_erps = 0;
    ui16_PWM_cycles_counter_total = 0xffff;
    ui8_angle_correction = 127;
    ui8_motor_commutation_type = BLOCK_COMMUTATION;
    ui8_hall_sensors_last = 0; // this way we force execution of hall sensors code next time
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

  ui8_motor_rotor_angle += ((uint8_t) FOC_READ_ID_CURRENT_OFFSET);
  // make sure we just execute one time per ERPS, so use the flag ui8_flag_foc_read_id_current
  if ((ui8_motor_rotor_angle >= ((uint8_t) FOC_READ_ID_CURRENT_ANGLE_ADJUST)) && (ui8_flag_foc_read_id_current))
  {
    ui8_flag_foc_read_id_current = 0;

    // minimum speed to do FOC
    if (ui16_motor_speed_erps > MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES)
    {
      // read here the phase B current: FOC Id current
      ui8_adc_id_current = UI8_ADC_PHASE_B_CURRENT;

      if (ui8_adc_id_current > 127) { ui8_angle_correction++; }
      else if (ui8_adc_id_current < 125) { ui8_angle_correction--; }
    }
  }
  /****************************************************************************/

  /****************************************************************************/
  // PWM duty_cycle controller:
  // - limit motor max current
  // - limit motor max regen current
  // - ramp up/down PWM duty_cycle value

  // verify motor max current limit
  ui8_adc_motor_total_current = UI8_ADC_MOTOR_TOTAL_CURRENT;
  if (ui8_adc_motor_total_current > ui8_adc_target_motor_current_max)  // motor max current, reduce duty_cycle
  {
    if (ui8_duty_cycle > 0)
    {
      ui8_duty_cycle--;
    }
  }
  // verify if there is regen current > 0 (if there is happening regen) and
  // if battery voltage is over or equal to absolute battery max voltage, and if so
  // reduce regen current
  else if ((ui8_adc_motor_total_current < ui8_motor_total_current_offset) &&
      (UI8_ADC_BATTERY_VOLTAGE >= ((uint8_t) ADC_BATTERY_VOLTAGE_MAX)))
  {
    if (ui8_duty_cycle < 255)
    {
      ui8_duty_cycle++;
    }
  }
  // verify motor max regen current limit
  else if (ui8_adc_motor_total_current < ui8_adc_target_motor_regen_current_max)
  {
    if (ui8_duty_cycle < 255)
    {
      ui8_duty_cycle++;
    }
  }
  else // no motor current limits, adjust duty_cycle to duty_cycle_target, including ramping
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

  // scale and apply _duty_cycle
  ui8_temp = ui8_svm_table [ui8_sinewave_table_index];
  if (ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_a = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_a = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
  }

  // add 120 degrees and limit
  ui8_temp = ui8_svm_table [(uint8_t) (ui8_sinewave_table_index + 85 /* 120º */)];
  if (ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_b = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_b = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
  }

  // subtract 120 degrees and limit
  ui8_temp = ui8_svm_table [(uint8_t) (ui8_sinewave_table_index + 171 /* 240º */)];
  if (ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_c = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_c = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
  }

  // set final duty_cycle value
  // phase A
  TIM1->CCR1H = (uint8_t) (ui8_value_a >> 7);
  TIM1->CCR1L = (uint8_t) (ui8_value_a << 1);
  // phase B
  TIM1->CCR2H = (uint8_t) (ui8_value_c >> 7);
  TIM1->CCR2L = (uint8_t) (ui8_value_c << 1);
  // phase C
  TIM1->CCR3H = (uint8_t) (ui8_value_b >> 7);
  TIM1->CCR3L = (uint8_t) (ui8_value_b << 1);

  // enable PWM signals only when MOTOR_CONTROLLER_STATE_OK
  if (ui8_motor_controller_state == MOTOR_CONTROLLER_STATE_OK)
  {
    TIM1->BKR |= TIM1_BKR_MOE;
  }
  /****************************************************************************/

  /****************************************************************************/
  // calc PAS timming between each positive pulses, in PWM cycles ticks
  // calc PAS on and off timming of each pulse, in PWM cycles ticks
  ui16_pas_counter++;

  // detect PAS signal changes
  if ((PAS__PORT->IDR & PAS__PIN) == 0)
  {
    ui8_pas_state = 0;
    ui16_pas_off_time_counter++;
  }
  else
  {
    ui8_pas_state = 1;
    ui16_pas_on_time_counter++;
  }

  if (ui8_pas_state != ui8_pas_state_old) // PAS signal did change
  {
    ui8_pas_state_old = ui8_pas_state;

    if (ui8_pas_state == 1) // consider only when PAS signal transition from 0 to 1
    {
      // limit PAS cadence to be less than PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS
      if (ui16_pas_counter < ((uint16_t) PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS)) { ui16_pas_counter = PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS; }

      ui16_pas_pwm_cycles_ticks = ui16_pas_counter;
      ui16_pas_counter = 0;
    }
    else
    {
#if (PAS_DIRECTION == PAS_DIRECTION_RIGHT)
      if (ui16_pas_on_time_counter > ui16_pas_off_time_counter)
#else
      if (ui16_pas_on_time_counter <= ui16_pas_off_time_counter)
#endif
      { ui8_pas_direction = 1; }
      else { ui8_pas_direction = 0; }

      ui16_pas_off_time_counter = 0;
      ui16_pas_on_time_counter = 0;
    }
  }

  // limit min PAS cadence
  if (ui16_pas_counter > ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS))
  {
    ui16_pas_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
    ui16_pas_counter = 0;
    ui16_pas_on_time_counter = 0;
    ui16_pas_off_time_counter = 0;
    ui8_pas_direction = 1;
  }
  /****************************************************************************/

  /****************************************************************************/
  // calc wheel speed sensor timming between each positive pulses, in PWM cycles ticks
  ui16_wheel_speed_sensor_counter++;

  // detect wheel speed sensor signal changes
  if ((WHEEL_SPEED_SENSOR__PORT->IDR & WHEEL_SPEED_SENSOR__PIN) == 0) { ui8_wheel_speed_sensor_state = 0; }
  else { ui8_wheel_speed_sensor_state = 1; }

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
  TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT_UPDATE);
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

  // initialize the value of ui16_adc_motor_current_accumulated_10b
  ui16_adc_motor_current_accumulated_10b = ui16_motor_total_current_offset_10b << 3;

  motor_set_current_max (ADC_MOTOR_CURRENT_MAX);
  motor_set_regen_current_max (ADC_MOTOR_REGEN_CURRENT_MAX);
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
  ui8_adc_target_motor_current_max = ui8_motor_total_current_offset + ui8_value;
}

void motor_set_regen_current_max (uint8_t ui8_value)
{
  ui8_adc_target_motor_regen_current_max = ui8_motor_total_current_offset - ui8_value;
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

// call every 100ms
uint8_t motor_current_controller (void)
{
  int16_t i16_error;
  int16_t i16_output;
  int16_t i16_motor_current;

  i16_motor_current = i16_motor_current_filtered_10b;
  // make sure current is not negative, we are here not to control negative/regen current
  if (i16_motor_current < 0)
  {
    i16_motor_current = 0;
  }

  i16_error = ((int16_t) ui16_target_current_10b) - i16_motor_current;
  i16_output = i16_error * MOTOR_CURRENT_CONTROLLER_KP;

  // limit max output value
  if (i16_output > MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX) i16_output = MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX;
  else if (i16_output < (-MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX)) i16_output = -MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX;
  i16_output >>= 5; // divide to 64, avoid using floats

  i16_output = ui8_duty_cycle + i16_output;
  if (i16_output > PWM_DUTY_CYCLE_MAX) i16_output = PWM_DUTY_CYCLE_MAX;
  if (i16_output < 0) i16_output = 0;

  return (uint8_t) i16_output;
}

void motor_controller_set_error (uint8_t error)
{
  ui8_motor_controller_error = error;
}

void motor_controller_clear_error (void)
{
  ui8_motor_controller_error = 0;
}

uint8_t motor_controller_get_error (void)
{
  return ui8_motor_controller_error;
}

void motor_set_pwm_duty_cycle (uint8_t ui8_value)
{
  if (ui8_value > PWM_DUTY_CYCLE_MAX) { ui8_value = PWM_DUTY_CYCLE_MAX; }

  ui8_duty_cycle = ui8_value;
}

int16_t i16_motor_get_current_filtered_10b (void)
{
  return i16_motor_current_filtered_10b;
}

void calc_motor_current_filtered (void)
{
  // low pass filter the current readed value, to avoid possible fast spikes/noise
  ui16_adc_motor_current_accumulated_10b -= ui16_adc_motor_current_accumulated_10b >> 3;
  ui16_adc_motor_current_accumulated_10b += ui16_adc_read_motor_total_current_10b ();
  ui16_adc_motor_current_filtered_10b = ui16_adc_motor_current_accumulated_10b >> 3;

  // i8_motor_current_filtered_10b has sign, negative value will be regen current
  i16_motor_current_filtered_10b = ui16_adc_motor_current_filtered_10b - ui16_motor_total_current_offset_10b;
}

// motor overcurrent interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER)
{
  // motor will stop and error symbol on LCD will be shown
  motor_controller_set_state (MOTOR_CONTROLLER_STATE_OVER_CURRENT);
  motor_disable_PWM ();
  motor_controller_set_error (MOTOR_CONTROLLER_ERROR_06_SHORT_CIRCUIT);
}
