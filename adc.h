/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _ADC_H
#define _ADC_H

#include "main.h"

#define ADC1_CHANNEL_PHASE_CURRENT_B 		ADC1_CHANNEL_5
#define ADC1_CHANNEL_MOTOR_TOTAL_CURRENT	ADC1_CHANNEL_6
#define ADC1_CHANNEL_BATTERY_VOLTAGE		ADC1_CHANNEL_9
#define ADC1_CHANNEL_THROTTLE			ADC1_CHANNEL_4

extern uint8_t adc_throttle_busy_flag;
extern uint8_t ui8_BatteryVoltage;
extern uint8_t ui8_BatteryCurrent;
extern uint8_t ui8_ADC_throttle;

void adc_init (void);
void adc_select_channel (uint8_t ADC1_Channel);
uint16_t adc_read_channel (void);
//uint16_t adc_read_channel(uint16_t channel);

#endif /* _ADC_H */
