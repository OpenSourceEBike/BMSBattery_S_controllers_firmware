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
	    ADC1_CHANNEL_5,
	    ADC1_PRESSEL_FCPU_D2,
            ADC1_EXTTRIG_TIM,
	    DISABLE,
	    ADC1_ALIGN_RIGHT,
	    (ADC1_SCHMITTTRIG_CHANNEL4 || ADC1_SCHMITTTRIG_CHANNEL5 || ADC1_SCHMITTTRIG_CHANNEL6 || ADC1_SCHMITTTRIG_CHANNEL8),
            DISABLE);

  ADC1_Cmd (ENABLE);
}

void adc_select_channel (uint8_t ADC1_channel)
{
  /* Clear the ADC1 channels */
  ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
  /* Select the ADC1 channel */
  ADC1->CSR |= (uint8_t)(ADC1_channel);

  ADC1->CR1 |= ADC1_CR1_ADON; // enable ADC
}

void delay(uint8_t t)
{
  while(t--);
}

uint16_t adc_read_channel (void)
{
  uint16_t temph = 0;
  uint8_t templ = 0;
  uint8_t delay_counter;

  ADC1->CR1 |= (1<<0); // ADC Start Conversion
  delay_counter = 4;
  while (delay_counter--) ; // minimum delay time needed for correct ADC conversion
  while (!(ADC1->CSR & ADC1_FLAG_EOC)) ; // wait to finnish conversion (about 2us)
  templ = ADC1->DRL;
  temph = ADC1->DRH;
  temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));

  return ((uint16_t)temph);
}

