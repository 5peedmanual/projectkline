/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#include <stdint.h>        /* For uint8_t definition */
#include <stdbool.h>       /* For true/false definition */


#include "system.h"        /* System funct/params, like osc/peripheral config */
#include "user.h"          /* User funct/params, such as InitApp */
#include "i2c.h"
#include "lcd16.h"
#include "pic16f877a.h"


/******************************************************************************/
/* User Global Variable Declaration                                           */
/******************************************************************************/

/* i.e. uint8_t <variable_name>; */

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/
void main(void)
{
    /* Configure the oscillator for the device */
    configure_osc();

    /* Initialize I/O and Peripherals for application */
    init_app();
    init_i2c();
    init_lcd16();

    while(1)
    {
        
        /* TODO <INSERT USER APPLICATION CODE HERE> */
    }

}

