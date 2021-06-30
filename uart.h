/* 
 * File:   uart.h
 * Author: omron
 *
 * Created on March 9, 2021, 1:54 PM
 */

#ifndef UART_H
#define	UART_H

void init_uart(void);
void write_uart(uint8_t data);
uint8_t read_uart(void);


#endif	/* UART_H */

