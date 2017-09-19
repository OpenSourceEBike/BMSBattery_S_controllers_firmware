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

extern uint8_t adc_throttle_busy_flag;
extern uint8_t ui8_BatteryVoltage;
extern uint16_t ui16_BatteryCurrent;

void adc_init (void);
uint8_t adc_read_throttle (void);

#endif /* _ADC_H */
