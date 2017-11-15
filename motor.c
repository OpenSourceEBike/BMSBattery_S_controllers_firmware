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
#include "ebike_app.h"
#include "gpio.h"
#include "pwm.h"
#include "config.h"
#include "adc.h"
#include "utils.h"
#include "uart.h"

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
uint8_t ui8_motor_rotor_absolute_angle = 0;
uint8_t ui8_angle_correction = 127;
uint8_t ui8_interpolation_angle = 0;

uint8_t ui8_motor_commutation_type = BLOCK_COMMUTATION;
volatile uint8_t ui8_motor_state = MOTOR_STATE_STOP;
uint8_t ui8_motor_startup_counter;
uint8_t ui8_motor_controller_state = MOTOR_CONTROLLER_STATE_OK;

uint8_t ui8_hall_sensors = 0;
uint8_t ui8_hall_sensors_last = 0;

uint8_t ui8_adc_id_current = 0;

uint8_t ui8_adc_motor_current_max;
uint8_t ui8_adc_motor_regen_current_max;

uint8_t ui8_adc_motor_total_current;
uint8_t ui8_motor_total_current_offset;
uint16_t ui16_motor_total_current_offset_10b;

uint8_t ui8_half_erps_flag = 0;

uint16_t ui16_target_erps = 0;
volatile uint16_t ui16_target_erps_max = MOTOR_OVER_SPEED_ERPS;
uint16_t ui16_target_current = 0;

uint16_t ui16_adc_battery_voltage_accumulated = BATTERY_VOLTAGE_MED_VALUE;
uint8_t ui8_adc_battery_voltage_filtered;

uint16_t ui16_adc_motor_current_accumulated = ADC_MOTOR_CURRENT_MAX_MED_VALUE_10B;
uint16_t ui16_adc_motor_current_filtered;

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

// functions prototypes
void battery_voltage_protection (void);
uint8_t motor_current_controller (void);
uint8_t motor_speed_controller (void);

// runs every 64us (PWM frequency)
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
  uint8_t ui8_temp;

  /****************************************************************************/
  // trigger ADC conversion of all channels (scan conversion, buffered)
  ADC1->CSR &= 0x09; // clear EOC flag first (selected also channel 9)
  ADC1->CR1 |= ADC1_CR1_ADON; // Start ADC1 conversion

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
      // read here the phase B current: FOC Id current
      ui8_adc_id_current = *(uint8_t*)(0x53EA); // ui8_adc_read_phase_B_current ();
      // minimum speed that to do FOC
      if (ui16_motor_speed_erps > 40)
      {
	if (ui8_adc_id_current > 127) { ui8_angle_correction++; }
	else if (ui8_adc_id_current < 125) { ui8_angle_correction--; }
      }

      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = ANGLE_180 + MOTOR_ROTOR_OFFSET_ANGLE;
      }
      break;

      case 1:
      if (ui8_half_erps_flag == 1)
      {
	ui8_half_erps_flag = 0;
	ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
	ui16_PWM_cycles_counter = 0;
	ui16_motor_speed_erps = PWM_CYCLES_SECOND / ui16_PWM_cycles_counter_total; // this division takes ~4.2us
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
	  ui8_motor_state = MOTOR_STATE_RUNNING;
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
	ui8_motor_rotor_absolute_angle = ANGLE_240 + MOTOR_ROTOR_OFFSET_ANGLE;
      }
      break;

      case 5:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = ANGLE_300 + MOTOR_ROTOR_OFFSET_ANGLE;
      }
      break;

      case 4:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = ANGLE_1 + MOTOR_ROTOR_OFFSET_ANGLE;
      }
      break;

      case 6:
      ui8_half_erps_flag = 1;

      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = ANGLE_60 + MOTOR_ROTOR_OFFSET_ANGLE;
      }
      break;

      case 2:
      if (ui8_motor_commutation_type != SINEWAVE_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_angle = ANGLE_120 + MOTOR_ROTOR_OFFSET_ANGLE;
      }
      break;

      default:
      return;
      break;
    }

    ui16_PWM_cycles_counter_6 = 0;
  }

  /****************************************************************************/
  // count number of fast loops / PWM cycles and reset some states when motor is near zero speed
  if (ui16_PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    ui16_PWM_cycles_counter++;
    ui16_PWM_cycles_counter_6++;
  }
  else // happens when motor is stopped or near zero speed
  {
    ui16_PWM_cycles_counter = 0;
    ui16_PWM_cycles_counter_6 = 0;
    ui16_motor_speed_erps = 0;
    ui16_PWM_cycles_counter_total = 0xffff;
    ui8_angle_correction = 127;
    ui8_motor_commutation_type = BLOCK_COMMUTATION;
    ui8_motor_state = MOTOR_STATE_STOP;
    ui8_hall_sensors_last = 0; // this way we force execution of hall sensors code next time
  }

  /****************************************************************************/
  // calc interpolation angle and sinewave table index
#define DO_INTERPOLATION 1 // may be usefull to disable interpolation when debugging
#if DO_INTERPOLATION == 1
  // calculate the interpolation angle (and it doesn't work when motor starts and at very low speeds)
  if (ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
  {
    ui8_interpolation_angle = (ui16_PWM_cycles_counter_6 << 8) / ui16_PWM_cycles_counter_total;
    ui8_sinewave_table_index = ui8_motor_rotor_absolute_angle + ui8_angle_correction + ui8_interpolation_angle;
  }
  else if (ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_360_DEGREES)
  {
    ui8_interpolation_angle = (ui16_PWM_cycles_counter << 8) / ui16_PWM_cycles_counter_total;
    ui8_sinewave_table_index = ui8_motor_rotor_absolute_angle + ui8_angle_correction + ui8_interpolation_angle;
  }
  else
#endif
  {
    ui8_sinewave_table_index = ui8_motor_rotor_absolute_angle + ui8_angle_correction;
  }

  /****************************************************************************/
  // PWM duty_cycle controller:
  // - limit motor max current
  // - limit motor max regen current
  // - ramp up/down PWM duty_cycle value

  // verify motor max current limit
  ui8_adc_motor_total_current = *(uint8_t*)(0x53F0); // ui8_adc_read_motor_total_current ();
  if (ui8_adc_motor_total_current > ui8_adc_motor_current_max)  // motor max current, reduce duty_cycle
  {
    if (ui8_duty_cycle > 0) { ui8_duty_cycle--; }
  }
  // verify motor max regen current limit
  else if (ui8_adc_motor_total_current < ui8_adc_motor_regen_current_max)  // motor max current, increase duty_cycle
  {
    if (ui8_duty_cycle < 255) { ui8_duty_cycle++; }
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
  // calc final PWM duty_cycle values to be applied to TIMER1

  // scale and apply _duty_cycle
  ui8_temp = ui8_svm_table [ui8_sinewave_table_index];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // add 120 degrees and limit
  ui8_temp = ui8_svm_table [(uint8_t) (ui8_sinewave_table_index + 85 /* 120º */)];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
  }

  // subtract 120 degrees and limit
  ui8_temp = ui8_svm_table [(uint8_t) (ui8_sinewave_table_index + 171 /* 240º */)];
  if (ui8_temp > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + ui8_temp;
  }
  else
  {
    ui16_value = ((uint16_t) (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
    ui8_temp = (uint8_t) (ui16_value >> 8);
    ui8_value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - ui8_temp;
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
  if (ui8_motor_controller_state == MOTOR_CONTROLLER_STATE_OK) { TIM1->BKR |= TIM1_BKR_MOE; }


  // clears the TIM1 interrupt TIM1_IT_UPDATE pending bit
  TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT_UPDATE);
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
  motor_set_regen_current_max (ADC_MOTOR_REGEN_CURRENT_MAX);
  motor_set_pwm_duty_cycle_ramp_up_inverse_step (PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP); // each step = 64us
  motor_set_pwm_duty_cycle_ramp_down_inverse_step (PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP); // each step = 64us
}

void motor_set_pwm_duty_cycle_target (uint8_t ui8_value)
{
  if (ui8_value > PWM_VALUE_DUTY_CYCLE_MAX) { ui8_value = PWM_VALUE_DUTY_CYCLE_MAX; }

  ui8_duty_cycle_target = ui8_value;
}

void motor_set_current_max (uint8_t ui8_value)
{
  ui8_adc_motor_current_max = ui8_motor_total_current_offset + ui8_value;
}

uint8_t motor_get_current_max (void)
{
  return ui8_adc_motor_current_max;
}

void motor_set_regen_current_max (uint8_t ui8_value)
{
  ui8_adc_motor_regen_current_max = ui8_motor_total_current_offset - ui8_value;
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

// motor overcurrent interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER)
{
  // motor will stop and error symbol on LCD will be shown
  motor_controller_set_state (MOTOR_CONTROLLER_STATE_OVER_CURRENT);
  motor_disable_PWM ();
  motor_controller_set_error (MOTOR_CONTROLLER_ERROR_06_SHORT_CIRCUIT);
}

void motor_controller (void)
{
  uint8_t ui8_current_pwm_duty_cycle;
  uint8_t ui8_pwm_duty_cycle_a;
  uint8_t ui8_pwm_duty_cycle_b;
  uint8_t ui8_pwm_duty_cycle_c;
  struc_lcd_configuration_variables *p_lcd_configuration_variables = ebike_app_get_lcd_configuration_variables ();

  switch (ui8_motor_state)
  {
    case MOTOR_STATE_STOP:
    if (ui8_ebike_app_get_motor_speed() < 6) // less than 6km/h
    {
      // start the startup phase, use motor max current
      ui8_motor_startup_counter = 0;
      ui8_motor_state = MOTOR_STATE_STARTUP;
      motor_set_current_max (ADC_MOTOR_CURRENT_MAX);
    }
    else
    {
      ui8_motor_state = MOTOR_STATE_RUNNING;
    }
    break;

    // startup phase where the controller max current is used
    case MOTOR_STATE_STARTUP:
    if (ui8_motor_startup_counter++ > 25) // 25 * 100ms; 2.5 seconds max time
    {
      ui8_motor_state = MOTOR_STATE_COOL;
      ui8_motor_startup_counter = 0;
    }

    if (ui8_ebike_app_get_motor_speed() > 5) // 6km/h or higher speed, leave startup
    {
      motor_set_current_max (ADC_MOTOR_CURRENT_NOMINAL);
      ui8_motor_state = MOTOR_STATE_RUNNING;
    }
    break;

    // running mode where the controller nominal current is used
    case MOTOR_STATE_RUNNING:
    // do nothing
    break;

    // wait for the power mosfets cool down
    case MOTOR_STATE_COOL:
    if (ui8_motor_startup_counter++ > 10) // 1 second timeout
    {
      ui8_motor_state = MOTOR_STATE_STOP;
    }
    break;

    default:
    break;
  }

  battery_voltage_protection ();

  ui8_current_pwm_duty_cycle = ui8_duty_cycle;
  ui8_pwm_duty_cycle_a = motor_current_controller ();
  ui8_pwm_duty_cycle_b = motor_speed_controller ();

  if (p_lcd_configuration_variables->ui8_power_assist_control_mode)
  {
    ui8_pwm_duty_cycle_c = (uint8_t) (map ((int32_t) ebike_app_get_adc_throttle_value_cruise_control (), ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, PWM_VALUE_DUTY_CYCLE_MAX));
    // apply the value that is lower
    motor_set_pwm_duty_cycle_target (ui8_min (ui8_min (ui8_pwm_duty_cycle_a, ui8_pwm_duty_cycle_b), ui8_pwm_duty_cycle_c));
  }
  else
  {
    // apply the value that is lower
    motor_set_pwm_duty_cycle_target (ui8_min (ui8_pwm_duty_cycle_a, ui8_pwm_duty_cycle_b));
  }
}

void motor_controller_set_speed_erps (uint16_t ui16_erps)
{
  ui16_target_erps = ui16_erps;
}

void motor_controller_set_speed_erps_max (uint16_t ui16_erps)
{
  ui16_target_erps_max = ui16_erps;
}

uint16_t motor_controller_get_speed_erps_max (void)
{
  return ui16_target_erps_max;
}

void motor_controller_set_current (uint16_t ui16_current)
{
  ui16_target_current = ui16_current;
}

// call every 100ms
uint8_t motor_speed_controller (void)
{
  int16_t i16_error;
  int16_t i16_output;
  int16_t i16_motor_speed_erps;

  if (ui16_target_erps < 5)
  {
    return 0;
  }

  i16_motor_speed_erps = (int16_t) ui16_motor_get_motor_speed_erps ();

  // if MOTOR_OVER_SPEED_ERPS, then limit for this value and not user defined ui16_target_erps
  if (ui16_target_erps > MOTOR_OVER_SPEED_ERPS) { i16_error = MOTOR_OVER_SPEED_ERPS - i16_motor_speed_erps; }
  else { i16_error = ui16_target_erps - i16_motor_speed_erps; }

  i16_output = i16_error * MOTOR_SPEED_CONTROLLER_KP;

  // limit max output value
  if (i16_output > MOTOR_SPEED_CONTROLLER_OUTPUT_MAX) i16_output = MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  else if (i16_output < (-MOTOR_SPEED_CONTROLLER_OUTPUT_MAX)) i16_output = -MOTOR_SPEED_CONTROLLER_OUTPUT_MAX;
  i16_output >>= 5; // divide to 64, as MOTOR_SPEED_CONTROLLER_KP is 64x; avoid using floats

  i16_output = ui8_duty_cycle + i16_output;
  if (i16_output > PWM_VALUE_DUTY_CYCLE_MAX) i16_output = PWM_VALUE_DUTY_CYCLE_MAX;
  if (i16_output < 0) i16_output = 0;

  return (uint8_t) i16_output;
}

// call every 100ms
uint8_t motor_current_controller (void)
{
  int16_t i16_error;
  int16_t i16_output;
  int16_t i16_motor_current;

  // low pass filter the current readed value, to avoid possible fast spikes/noise
  ui16_adc_motor_current_accumulated -= ui16_adc_motor_current_accumulated >> 4;
  ui16_adc_motor_current_accumulated += ui16_adc_read_motor_total_current ();
  ui16_adc_motor_current_filtered = ui16_adc_motor_current_accumulated >> 4;

  i16_motor_current = (int16_t) (ui16_adc_motor_current_filtered - ui16_motor_total_current_offset_10b);
  // make sure current is not negative, we are here not to control negative/regen current
  if (i16_motor_current < 0)
  {
    i16_motor_current = 0;
  }

  i16_error = ((int16_t) ui16_target_current) - i16_motor_current;
  i16_output = i16_error * MOTOR_CURRENT_CONTROLLER_KP;

  // limit max output value
  if (i16_output > MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX) i16_output = MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX;
  else if (i16_output < (-MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX)) i16_output = -MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX;
  i16_output >>= 5; // divide to 64, avoid using floats

  i16_output = ui8_duty_cycle + i16_output;
  if (i16_output > PWM_VALUE_DUTY_CYCLE_MAX) i16_output = PWM_VALUE_DUTY_CYCLE_MAX;
  if (i16_output < 0) i16_output = 0;

  return (uint8_t) i16_output;
}

void battery_voltage_protection (void)
{
  // low pass filter the voltage readed value, to avoid possible fast spikes/noise
  ui16_adc_battery_voltage_accumulated -= ui16_adc_battery_voltage_accumulated >> 6;
  ui16_adc_battery_voltage_accumulated += ((uint16_t) ui8_adc_read_battery_voltage ());
  ui8_adc_battery_voltage_filtered = ui16_adc_battery_voltage_accumulated >> 6;

  if (ui8_adc_battery_voltage_filtered > BATTERY_VOLTAGE_MAX_VALUE)
  {
#ifdef BATTERY_OVER_VOLTAGE_PROTECTION
    // motor will stop and battery symbol on LCD will be empty and flashing | same as low level error
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_91_BATTERY_UNDER_VOLTAGE);
#endif
  }
  else if (ui8_adc_battery_voltage_filtered < BATTERY_VOLTAGE_MIN_VALUE)
  {
    // motor will stop and battery symbol on LCD will be empty and flashing
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_UNDER_VOLTAGE);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_91_BATTERY_UNDER_VOLTAGE);
  }
}

uint8_t motor_get_ADC_battery_voltage_filtered (void)
{
  return ui8_adc_battery_voltage_filtered;
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
  ui8_duty_cycle = ui8_value;
}
