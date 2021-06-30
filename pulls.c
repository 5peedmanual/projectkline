#include <xc.h>                 /* XC8 General Include File     */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <pic16f877a.h>         

#include "debug_leds.h"
#include "pulls.h"
#include "timers.h"
#include "uart.h"


extern volatile uint8_t theVariableThatTheIsrChanges;



void pull_low_kline(uint8_t time)
{
    /* We need to disable the uart peripheral in order to pull tx up or down! */
    disable_async_port_uart();
    PORTCbits.RC6 = 0;
    delay(time);
    while (!theVariableThatTheIsrChanges);
    PORTCbits.RC6 = 1;

    
}


void pull_up_terrain_kline(uint8_t time)
{
    disable_async_port_uart() 
    PORTCbits.RC6 = 1;
    delay(time);
}