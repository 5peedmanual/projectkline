#include <stdint.h>        /* For uint8_t definition */
#include <stdbool.h>       /* For true/false definition */
#include <xc.h>         /* XC8 General Include File */


#include "cristal.h"
#include "i2c.h"
#include "simon_hd44780_lcd.h"
#include "pic16f877a.h"
#include "system.h"        /* System funct/params, like osc/peripheral config */
#include "user.h"          /* User funct/params, such as InitApp */



void main(void)
{
    init_app();

    lcd_print("Hello World");
    
    while (1) {
    PORTBbits.RB1 = 1;
    __delay_ms(500);
    PORTBbits.RB1 = 0;
    __delay_ms(500);
    }

}

