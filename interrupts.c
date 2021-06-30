/******************************************************************************/
/*Files to Include                                                            */
/******************************************************************************/

#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif
#include <pic16f877a.h>         /* Pic definitions              */

#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */
#include "debug_leds.h"
#include "cristal.h"



extern volatile uint8_t theVariableThatTheIsrChanges;


/******************************************************************************/
/* Interrupt Routines                                                         */
/******************************************************************************/
/* Baseline devices don't have interrupts. Note that some PIC16's 
 * are baseline devices.  Unfortunately the baseline detection macro is 
 * _PIC12 */
#ifndef _PIC12
/*
void __interrupt(irq(IRQ_TMR1), base(0x40F0)) TMR1_ISR(void) 
{
    switch_prtd_led(3,1);
    TMR1IF = 0;      // Clear TMR1 interrupt flag//place code here}
}
*/

void __interrupt() ISR(void)
{
    /* This code stub shows general interrupt handling.  Note that these
    conditional statements are not handled within 3 seperate if blocks.
    Do not use a seperate if block for each interrupt flag to avoid run
    time errors. */

//#define I2C_INT 1
#ifdef I2C_INT
    /* TODO Add interrupt routine code here. */

    /* Determine which flag generated the interrupt */
    if (PIR1bits.SSPIF) {
        PIR1bits.SSPIF = 0;
    }
#endif
    //PIE1 = 0;
    
    if (SSPIF == 1) {
        SSPIF = 0;
    }
    if (TMR1IF==1) {
        switch_prtd_led(2,1);
        __delay_ms(500);
        switch_prtd_led(2,0);
        theVariableThatTheIsrChanges = 1;
        TMR1ON = 0;
        TMR1IF = 0;            // clear timer1 interupt flag TMR1IF

    }

}
#endif


