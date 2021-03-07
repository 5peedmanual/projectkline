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



#include "cristal.h"
#include "debug_leds.h"
#include "i2c_utils.h"
#include "pcf84naoseiquantos.h"
#include "pic16f877a.h"




static void set_slew_rate_i2c(void);
static void enable_serial_port_i2c(void);
static void configure_clock(void);
static void just_write_i2c(uint8_t data);
static void start_i2c(void);
static void stop_i2c(void); 


#define I2C_BAUD 100000
#define LCD_BACKLIGHT         0x08


/* when microcontrollers are set as inputs their pin states are set to high 
 * impedance, or open-drain. Then we?ll need to set the pin as an output to 
 * clear a bit. Both SCL and SDA lines are "open drain" drivers. 
 * What this means is that the chip can drive its output low, but it cannot 
 * drive it high.
 */

/*
 * Initializes Control/Status Registers, and set SDA & SCL lines.
 */
void init_i2c(void)
{

    set_slew_rate_i2c();
    enable_serial_port_i2c();
    configure_clock();  
}


static void set_slew_rate_i2c(void)
{
    /* Slew rate control disabled for standard speed mode (100 kHz and 1 MHz) */
    SSPSTATbits.SMP = 1;
}


static void enable_serial_port_i2c(void)
{
    /* Enables the serial port and configures the SDA 
     * and SCL pins as the serial port pins
     */
    SSPCONbits.SSPEN = 1; 
    
    /* SDA and SCL as inputs */
    TRISCbits.TRISC3 = 1;
    TRISCbits.TRISC4 = 1;
}


static void configure_clock(void)
{
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
    
    SSPADD = ((_XTAL_FREQ/4)/I2C_BAUD) - 1;

    /* I2C Master mode, clock = FOSC/(4 * (SSPADD + 1)) */
    SSPCONbits.SSPM3 = 1;
    SSPCONbits.SSPM2 = 0;
    SSPCONbits.SSPM1 = 0;
    SSPCONbits.SSPM0 = 0;
}


void start_i2c() 
{    
    master_w8();
    /* Generate start condition */
    SEN = 1;
    wait_mssp();
    //while(!SSPCON2bits.SEN);
}


void stop_i2c() 
{
    master_w8();
    /* Generate stop condition */
    SSPCON2bits.PEN = 1;
    wait_mssp();
}


void funcao_misterio_i2c(uint8_t data) 
{
    start_i2c();
    just_write_i2c(SLAVE_ADDR_W);
    just_write_i2c(data);
    stop_i2c();
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
void old_write_i2c(uint8_t addr, uint8_t data)
{
    /* send start condition and wait for it to complete */
    start_i2c();
    SSPBUF = addr;
    check_ack_bit_i2c();
    wait_mssp();
    SSPBUF = data;
    check_ack_bit_i2c();
    wait_mssp();
    stop_i2c();
}


void write_i2c(uint8_t data)
{
    SSPBUF = data;
    check_ack_bit_i2c();
    wait_mssp();
}