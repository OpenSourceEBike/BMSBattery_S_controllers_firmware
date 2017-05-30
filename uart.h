/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _UART_H_
#define _UART_H_

void uart_init (void);
void putchar(char c);

void uart_tx_init_DEBUG (void);
void uart_tx_set_DEBUG (void);
void uart_tx_reset_DEBUG (void);

#endif
