#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */


#include "cristal.h"
#include "debug_leds.h"
#include "i2c_utils.h"
#include "pic16f877a.h"




void master_w8(void)
{
  while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F)) {
      PORTD = 0x0F;
  }
  PORTD = 0x00;
}


/* Master Synchronous Serial Port
 * The following events will cause the SSP Interrupt Flag bit, SSPIF, 
 * to be set (SSP Interrupt if enabled):
 *  Start condition
 *  Stop condition
 *  Data transfer byte transmitted/received
 */
void wait_mssp(void)
{
    /* SSP Interrupt Flag bit (interrupt if enabled) */
    /* the  SSPSR  register  value  is  not  loaded into  the  SSPBUF,  
     * but  bit  SSPIF  (PIR1<3>)  is  set. */
    
    //while ((PIR1 & 0x08) == 0); /* bit3 & 1 */
    //while (!PIR1bits.SSPIF);
    //PIR1bits.SSPIF = 0; /* clear it */
    while (!PIR1bits.SSPIF); // Wait Until Completion
    SSPIF = 0;
}


/*
 * A slave sends an Acknowledge when it has recognized its 
 * address (including a general call)or when the slave has 
 * properly received its data 
 */
inline void check_ack_bit_i2c(void)
{
    /* ACKSTAT: Acknowledge Status bit (Master Transmit mode only)
     * 1 = Acknowledge was not received from slave 
     * 0 = Acknowledge was received from slave
     */
    if (SSPCON2bits.ACKSTAT)
        error_i2c();
}


/*
 *   BF bit is set when the CPU writes to SSPBUF and is 
 * cleared when all eight bits are shifted out. 
 */
inline void check_bf_i2c(void)
{
    while (!SSPSTATbits.BF);
}


inline void error_i2c(void) 
{

    while (1) {
        PORTD = 0xFF;
        __delay_ms(200); 
        PORTD = 0x00;
        __delay_ms(200); 

    };
}