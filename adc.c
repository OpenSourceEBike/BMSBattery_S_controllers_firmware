/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include "stm8s.h"
#include "gpio.h"
#include "stm8s_adc1.h"
#include "adc.h"

uint8_t ui8_ADC_throttle = 0;
uint8_t ui8_BatteryVoltage = 0;
uint8_t ui8_BatteryCurrent = 0;

void adc_init (void)
{
  //init GPIO for the used ADC pins
  GPIO_Init(GPIOB,
	    (THROTTLE__PIN || CURRENT_PHASE_B__PIN || CURRENT_MOTOR_TOTAL__PIN),
	    GPIO_MODE_IN_FL_NO_IT);

  GPIO_Init(GPIOE,
	    (CURRENT_MOTOR_TOTAL_FILTERED__PIN),
	    GPIO_MODE_IN_FL_NO_IT);

  //de-Init ADC peripheral
  ADC1_DeInit();

  //init ADC1 peripheral
  ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
	    ADC1_CHANNEL_9,
	    ADC1_PRESSEL_FCPU_D2,
//	    ADC1_PRESSEL_FCPU_D4, // may take about 35us to convert all 10 channels, which seems ok for the 64us PWM period
				  // being slower should improve the noise on ADC measurements
            ADC1_EXTTRIG_TIM,
	    DISABLE,
	    ADC1_ALIGN_LEFT,
	    (ADC1_SCHMITTTRIG_CHANNEL4 || ADC1_SCHMITTTRIG_CHANNEL5 || ADC1_SCHMITTTRIG_CHANNEL6 || ADC1_SCHMITTTRIG_CHANNEL8),
            DISABLE);

  ADC1_ScanModeCmd (ENABLE);

  ADC1_Cmd (ENABLE);
}

uint8_t ui8_adc_read_phase_B_current (void)
{
//  /* Read LSB first */
//  templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
//  /* Then read MSB */
//  temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
//#define ADC1_BaseAddress        0x53E0
//phase_B_current --> ADC_AIN5
// 0x53E0 + 2*5 = 0x53EA
  return *(uint8_t*)(0x53EA);
}

uint16_t ui16_adc_read_phase_B_current (void)
{
  uint16_t temph;
  uint8_t templ;

  templ = *(uint8_t*)(0x53EB);
  temph = *(uint8_t*)(0x53EA);

  return (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
}

uint8_t ui8_adc_read_throttle (void)
{
// 0x53E0 + 2*4 = 0x53E8
//  return *(uint8_t*)(0x53E8);
  return *(uint8_t*)(0x53E8);
}

uint8_t ui8_adc_read_motor_total_current_filtered (void)
{
// 0x53E0 + 2*8 = 0x53F0
  return *(uint8_t*)(0x53F0);
}

