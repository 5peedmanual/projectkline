/******************************************************************************/
/*Files to Include                                                            */
/******************************************************************************/

#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#include <stdint.h>        /* For uint8_t definition */
#include <stdbool.h>
#include <pic16f877a.h>       /* For true/false definition */

#include "system.h"

/* Refer to the device datasheet for information about available
oscillator configurations. */
void configure_interrupts(void)
{
    /* Enables TMR1 Overflow Interrupt 
     * and Synchronous Serial Port Interrupt Enable bit
     */
    PIE1 = 0x09; 
    //PIE1 = 0x00;
    //PIR1
    //PIE2
    //PIR2

           
}


static void enable_global_int(void)
{
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
}