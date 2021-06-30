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
#include "main.h"
#include "uart.h"

#include "timers.h"
 
static void test_delay(void);
static void blink_green_led(void);



void main(void)
{
    init_app();
    
    lcd_print("Hello World");
    test_delay();
    
    
    while (1) {
        blink_green_led();
        //write_uart(0x12);
        pull_low_kline(50);
    
    }

}

static void test_delay(void)
{
    for (int i = 0; i < 255;i++) {
    switch_prtd_led(0,1);
    delay(100);
    switch_prtd_led(0,0);
    delay(100);
    }
}

static void blink_green_led(void)
{
    PORTBbits.RB1 = 1;
    __delay_ms(500);
    PORTBbits.RB1 = 0;
    __delay_ms(500);
    return;
}
