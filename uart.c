#include <xc.h>                 /* XC8 General Include File     */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <pic16f877a.h>         




#include "ISO.h"



static void configure_baud_uart(void);
static void enable_async_port_uart(void);


// Initialize serial connection
	// ~10400 baud --> UBRR = 47
	// 8-bit character size
	// No parity bit, 1 stop bit
inline void init_uart(void)
{
    configure_baud_uart();
    
    enable_async_port_uart();
    return;
}


static void configure_baud_uart(void)
{
    BRGH = 1;
    SPBRG = 23;
    return;
}


static void enable_async_port_uart(void)
{
    SYNC = 0;
    RCSTAbits.SPEN = 1;
      
    /*
     * Transmission is enabled by setting enable bit, TXEN(TXSTA<5>).
     * The  actual  transmission will not occur until the TXREG register has 
     * been  loaded  with  data. 
     */
    TXSTAbits.TXEN = 1;
    return;
    
}

void disable_async_port_uart(void) 
{
    RCSTAbits.SPEN = 0;
    TXSTAbits.TXEN = 0;
}

void write_uart(uint8_t data)
{
    while (!TRMT);
    TXREG = data;
    return;
}


uint8_t read_uart(void)
{
    while(!RCIF);
    return RCREG;
}