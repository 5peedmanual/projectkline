/* 
 * File:   lcd16.c
 * Author: omron
 *
 * Created on August 16, 2020, 2:42 PM
 */

#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <pic.h>


#include  "pic16f877a.h"



static void enable_serial_port(void);
static void configure_clock(void);
static void start_i2c();
static void stop_i2c(); 
static void wait_mssp(void);
static void check_ack_bit(void);
static void error_i2c();




/* when microcontrollers are set as inputs their pin states are set to high 
 * impedance, or open-drain. Then we?ll need to set the pin as an output to 
 * clear a bit. Both SCL and SDA lines are "open drain" drivers. 
 * What this means is that the chip can drive its output low, but it cannot 
 * drive it high.
 */




/*
 * Initializes Control/Status Registers, and set SDA & SCL lines.
 */
int init_i2c(void)
{
    /* Status register */
    SSPSTATbits.SMP = 0; /* slew rate? */
    SSPSTATbits.UA  = 0; /* update address */
    
    enable_serial_port();
    configure_clock();
}




static void enable_serial_port(void)
{
    /* Enables the serial port and configures the SDA 
     * and SCL pins as the serial port pins
     */
    SSPCONbits.SSPEN = 1; 
    TRISC = 0x0C;
}


static void configure_clock(void)
{
    /* 
     * CKP is also in SSPCON but is not used for master mode I2C.
     */
    /* CKOP: Clock Polarity Select bit
     * 
     * Baud Rate Calculation:
     * Fosc = 4 MHz, SSPADD = 9 (decimal)
     * Fosc / (4 * (SSPADD + 1)) 
     * 4 MHz / (9 + 1) * 4
     * 4 MHz / 10 * 4
     * 4 MHz / 40
     * 100 kHz or 100 kbps
     * 4 MHz / (9 + 1)
     */
    SSPCONbits.CKP = 0;
    SSPADD = 9;
    /* I2C Master mode, clock = FOSC/(4 * (SSPADD + 1)) */
    SSPCONbits.SSPM3 = 1;
    SSPCONbits.SSPM2 = 0;
    SSPCONbits.SSPM1 = 0;
    SSPCONbits.SSPM0 = 0;
}



/* bitbanging i2c                                                       */
/* start bit:
 * set data line low with clock high
 * send the address
 * read acknowledge bit:
 * data line is held low by slave. clock it to register
 * send data
 * read acknowledge bit
 */
void write_i2c(uint8_t addr, uint8_t data)
{
    /* send start condition and wait for it to complete */
    start_i2c();
    SSPBUF = addr;
    wait_mssp();
    check_ack_bit();
    wait_mssp();
    SSPBUF = data;
    wait_mssp();
    check_ack_bit();
    stop_i2c();
}


static void start_i2c() 
{
    /* Generate start condition */
    SSPCON2bits.SEN = 1;
    wait_mssp();

}


static void stop_i2c() 
{
    /* Generate start condition */
    SSPCON2bits.PEN = 1;
    wait_mssp();

}

/* Master Synchronous Serial Port
 * The following events will cause the SSP Interrupt Flag bit, SSPIF, 
 * to be set (SSP Interrupt if enabled):
 *  Start condition
 *  Stop condition
 *  Data transfer byte transmitted/received
 */
static void wait_mssp(void)
{
    /* SSP Interrupt Flag bit (interrupt if enabled) */
    /* the  SSPSR  register  value  is  not  loaded into  the  SSPBUF,  
     * but  bit  SSPIF  (PIR1<3>)  is  set. */
    
    //while ((PIR1 & 0x08) == 0); /* bit3 & 1 */
    while (PIR1bits.SSPIF);
    PIR1bits.SSPIF = 0; /* clear it */
}


static void check_ack_bit(void)
{
    /* ACKSTAT: Acknowledge Status bit (Master Transmit mode only)
     * 1 = Acknowledge was not received from slave 
     * 0 = Acknowledge was received from slave
     */
    if (SSPCON2bits.ACKSTAT) 
        error_i2c();
}


static void error_i2c(void) 
{
    stop_i2c();
    PORTB = 0xFF;
    while(1);
}