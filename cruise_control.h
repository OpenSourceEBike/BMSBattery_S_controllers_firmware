/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _CRUISE_CONTROL_H
#define _CRUISE_CONTROL_H

#include "main.h"

//uint8_t cruise_control (uint8_t ui8_value);
uint8_t cruise_control (uint8_t ui8_value);
void set_cruise_control_state (uint8_t value);
void stop_cruise_control (void);

#endif /* _CRUISE_CONTROL_H */
