#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */

#include "i2c.h"
#include "user.h"
#include "pic16f877a.h"
#include "simon_hd44780_lcd.h"

/******************************************************************************/
/* User Functions                                                             */
/******************************************************************************/

static void init_ports(void);
static void init_peripherals(void);
static void init_interrupts(void);


void init_app(void)
{
    /* TODO Initialize User Ports/Peripherals/Project here */
    init_ports();
    
    /* Initializing protocols*/
    init_i2c();
    
    /* Setup analog functionality and port direction */

    /* Initialize peripherals */
    lcd_init();
    

    /* Enable interrupts:
     * PIE1 and TMR1
     */
    //void configure_interrupts(void);
    
}

static void init_ports()
{
    /* Port B is output */ 
    TRISB = 0;
    TRISD = 0;
    
    PORTB = 0x00;
    PORTD = 0x00;
}


