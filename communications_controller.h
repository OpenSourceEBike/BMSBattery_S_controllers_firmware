/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _COMMUNICATIONS_CONTROLLER__H_
#define _COMMUNICATIONS_CONTROLLER__H_

#include "main.h"

extern volatile uint8_t ui8_power_assist_control_mode;

void communications_controller (void);
uint8_t communications_get_assist_level (void);
float communications_get_controller_max_current_factor (void);


#endif /* _COMMUNICATIONS_CONTROLLER__H_ */
