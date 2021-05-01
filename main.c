#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */


#include "cristal.h"
#include "i2c.h"
#include "simon_hd44780_lcd.h"
//#include "pic16f877a.h"
#include "user.h"          /* init_app */
#include "pulls.h"
#include "debug_leds.h"



void main(void)
{
    init_app();
    switch_prtd_led(5,1);
    lcd_print("Hello World");
    switch_prtd_led(3,1);
    
    
    while (1) {
    pull_low_kline(70);
    pull_up_terrain_kline(70);
    PORTBbits.RB1 = 1;
    __delay_ms(500);
    PORTBbits.RB1 = 0;
    __delay_ms(500);
    }

}

