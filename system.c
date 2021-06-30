#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */

#include "system.h"



/******************************************************************************/
/* Interrupts                                                                 */
/******************************************************************************/
void configure_interrupts(void)
{
    /* Enables TMR1 Overflow Interrupt                                        */
    /* and Synchronous Serial Port Interrupt Enable bit                       */
    /*                                                                        */
    //PIE1        = 0x09;
    //PIE1bits.TMR1IE = 1;
    
    
    /* Enable Timer1 interrupt                                                */
    //PIE1bits.TMR1IE
    PIE1bits.TMR1IE = 1; /* hard debug time over this :c */
    //TMR1IE_bit  = 1;
    
    /* Enable TX interrupt                                                    */
    //PIE1bits.TXIE = 1;

    
    //PIE1 = 0x00;
    //PIR1
    //PIE2
    //PIR2         
}


void enable_gi(void)
{
    /* GIE: Global Interrupt Enable bit                                       */
    INTCONbits.GIE  = 1;
    
    /* PIE: Peripheral Interrupt Enable bit                                   */
    INTCONbits.PEIE = 1;
}

/* ************************************************************************** */



