/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MOTOR_H
#define _MOTOR_H

#include "main.h"

// direction of motor movement
#define RIGHT 		1
#define LEFT 		2

#define SVM 1
#define SINE 2

#define SVM_TABLE SVM

extern uint8_t ui8_svm_table [SVM_TABLE_LEN];

int8_t get_motor_rotation_direction (void);

#endif /* _MOTOR_H_ */
