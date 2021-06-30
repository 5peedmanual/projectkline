#include <xc.h>                 /* XC8 General Include File     */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <pic16f877a.h>         

#include "pulls.h"
#include "timers.h"
#include "debug_leds.h"
extern volatile uint8_t theVariableThatTheIsrChanges;



void pull_low_kline(uint8_t time)
{
    PORTCbits.RC6 = 1;
    delay(time);
    while (!theVariableThatTheIsrChanges);

    
}


void pull_up_terrain_kline(uint8_t time)
{
    PORTCbits.RC6 = 1;
    delay(time);
}