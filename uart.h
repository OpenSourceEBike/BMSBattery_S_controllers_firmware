/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _UART_H
#define _UART_H

#include <stdint.h>

#define UART_RINGBUFFER_SIZE 128
#define UART_EMPTY_INDICATOR 255
#define UART_PACKET_TIMEOUT_TICKS 312 // 20000 uS / 64 uS

uint8_t uart_get_packet_start_pos(void);
uint8_t byte_avail_at_position(void);
uint8_t uart_get_buffered(void);
void uart_put_buffered(uint8_t c);
void uart_send_if_avail();
void uart_fill_rx_packet_buffer(uint8_t *buffer, uint8_t bufferSize, uint8_t *bufferPos);

void uart_init (void);
void putbyte(uint8_t c);

#endif /* _UART_H */
