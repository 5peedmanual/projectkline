#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */


#include "pic16f877a.h"
#include "debug_leds.h"



void switch_prtd_led(unsigned led, unsigned turn_on_f)
{
    switch (led) {
        case 7:
            if (turn_on_f)
                PORTDbits.RD7 = 1;
            else
                PORTDbits.RD7 = 0;
            break;
        case 6:
            if (turn_on_f)
                PORTDbits.RD6 = 1;
            else
                PORTDbits.RD6 = 0;
        case 5:
            if (turn_on_f)
                PORTDbits.RD5 = 1;
            else
                PORTDbits.RD5 = 0;
            break;
        case 4:
            if (turn_on_f)
                PORTDbits.RD4 = 1;
            else
                PORTDbits.RD4 = 0;
            break;
        case 3:
            if (turn_on_f)
                PORTDbits.RD3 = 1;
            else
                PORTDbits.RD3 = 0;
            break;
        case 2:
            if (turn_on_f)
                PORTDbits.RD2 = 1;
            else
                PORTDbits.RD2 = 0;
            break;
        case 1:
            if (turn_on_f)
                PORTDbits.RD1 = 1;
            else
                PORTDbits.RD1 = 0;
            break;
        case 0:
            if (turn_on_f)
                PORTDbits.RD0 = 1;
            else
                PORTDbits.RD0 = 0;
            break;
    }
}



void turn_yl_led_on(void)
{
    PORTDbits.RD1 = 1;
}


void turn_yl_led_off(void)
{
    PORTDbits.RD1 = 0;
}


void turn_grn_led_on(void)
{
    PORTDbits.RD0 = 1;
}


void turn_grn_led_off(void)
{
    PORTDbits.RD0 = 0;
}


void turn_blu_led_on(void)
{
    PORTDbits.RD3 = 1;
}


void turn_blu_led_off(void)
{
    PORTDbits.RD3 = 0;
}


void turn_leds_off(void)
{
    PORTD = 0x00;
}
