/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MOTOR_H
#define _MOTOR_H

// direction of motor movement
#define RIGHT 		1
#define LEFT 		2

#define SVM_TABLE_LEN 360

extern int16_t svm_table [SVM_TABLE_LEN];

int8_t get_motor_rotation_direction (void);

#endif /* _MOTOR_H_ */
