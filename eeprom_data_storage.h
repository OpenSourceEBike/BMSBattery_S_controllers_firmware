/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _EEPROM_DATA_STORAGE_H_
#define _EEPROM_DATA_STORAGE_H_

#include "main.h"

#define ADDRESS_ASSIST_LEVEL 			1
#define ADDRESS_MOTOR_CHARACTARISTIC 		2
#define ADDRESS_WHEEL_SIZE	 		3
#define ADDRESS_MAX_SPEED	 		4
#define ADDRESS_POWER_ASSIST_CONTROL_MODE 	5
#define ADDRESS_CONTROLLER_MAX_CURRENT		6

void eeprom_data_storage_init (void);

#endif /* _EEPROM_DATA_STORAGE_H_ */
