#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */

#include "i2c.h"
#include "uart.h"
#include "user.h"
#include "portas.h"
#include "simon_hd44780_lcd.h"
#include "system.h"
#include "timers.h"
#include "debug_leds.h"




/******************************************************************************/
/* Application                                                                */
/******************************************************************************/
inline void init_app(void) 
{
    /**************************************************************************/
    /* Initialize microcontroller ports                                       */
    /* [portas.c] for more                                                    */
    /**************************************************************************/
    init_ports();
    /**************************************************************************/

    
    /**************************************************************************/
    /* Initialize peripherals                                                 */
    /**************************************************************************/
    /* Initialize i2c protocol                                                */
    init_i2c();
    /* Initialize uart protocol                                               */
    init_uart();
    /* Initialize the hd44780 lcd                                             */
    lcd_init();
    /**************************************************************************/

    switch_prtd_led(1,1);
    
    /**************************************************************************/
    /* Interrupts                                                             */
    /* [system.c] for more                                                    */
    /**************************************************************************/
    /*                                                                        */
    configure_interrupts();
    switch_prtd_led(2,1);
    /*                                                                        */
    /* Global interrupts                                                      */
    enable_gi();
    switch_prtd_led(3,1);
    /**************************************************************************/
    /*                                                                        */
    /*                                                                        */   
    /* We'll be using timer one to count delays in kline                      */
    configure_timer1();
    switch_prtd_led(4,1);
    /**************************************************************************/
    return;
}






