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
void configure_osc(void)
{
    /* Typical actions in this function are to tweak the oscillator tuning
    register, select new clock sources, and to wait until new clock sources
    are stable before resuming execution of the main project. */
    
    /* Clock Source */
    OPTION_REGbits.T0CS = 1; // transition on RA4/T0CKI pin
    OPTION_REGbits.T0SE = 1; // increment on high to low
    
    /* Prescaler Rate Select bits   */
    /* 1 : 128                      */
    OPTION_REGbits.PS0 = 0;
    OPTION_REGbits.PS1 = 1;
    OPTION_REGbits.PS2 = 1;
           
}


void configure_interrupts(void) 
{
    /* Enables TMR1 Overflow Interrupt 
     * and Synchronous Serial Port Interrupt Enable bit
     */
    PIE1 = 0x09; 
    //PIR1
    //PIE2
    //PIR2
}