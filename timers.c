#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */

#define PRESCALER 8

/* ************************************************************************** */
static void start_timer(uint16_t reg_value);
static uint16_t calc_reg_value(uint16_t ms);


/******************************************************************************/
/* Timers                                                                     */
/******************************************************************************/
/* 
 * Timers available :
 * Timer 0 is 8 bit,    max delay ~13 ms
 * Timer 1 is 16 bit,   max delay ~104 ms
 * Timer 2 ...
 * 
 * Ticks :
 * tick = (Prescalar/(Fosc/4) 
 * 
 * Calculating delays :
 * 100ms @20Mhz with Prescalar as 8:
 * RegValue = 65536-(Delay * Fosc)/(Prescalar*4)) = 
 * 65536-((100ms * 20Mhz)/(8*4)) = 
 * 3036 = 0x0BDC
 * 
 * ****************************************************************************
 * Pic input frequency= Fosc / 4= 20 Mhz / 4 = 5 Mhz
 * 
 * Prescaler = 1:4
 * 
 * Tick Counter frequency = Prescaler/5 Mhz = 4 / 5 Mhz =  0.8 u s
 * 
 * Delay required = 10 ms
 * 
 * Delay required = Timer Count * Tick Counter frequency
 * 
 * Timer Count = Delay required / Tick Counter frequency = 
 * 10 m s/ 0.8 u s = 12.5 k = 12500 (Hexadecimal = 0x30D4)
 * 
 * Register value = 65535 ? 12500 = 
 * 53035 Value not negative and under 65535, its safe we can use 12500.
 * 
 * ************************************************************************** */
void delay(uint16_t ms)
{
    uint16_t register_val = calc_reg_value(ms);
    
    start_timer(register_val);
}


static uint16_t calc_reg_value(uint16_t ms)
{
    /* */
    uint16_t    fosc        = 4; /* 4 million hz                              */
    uint16_t    prescaler   = 8; /* 1:8 pre-scaler                            */
    uint16_t    tcount_freq = prescaler/(fosc/4);
    float       tcount      = ((float) ms / (float) tcount_freq) * 1000;
    
    /* 65536 - 16 byte max value                                              */
    uint8_t     reg         = 65536 - (uint16_t) tcount;
    
    return reg;
}

static void start_timer(uint16_t register_val)
{
    

    /* fill timer one register value                                          */
    TMR1 = (uint16_t) register_val;

    /* TMR1ON: Timer1 On bit                                                  */
    TMR1ON = 1; /* turn timer on                                              */
}



/******************************************************************************/
/* Configuration                                                              */
/******************************************************************************/
void configure_timer0(void) 
{
    /* Clear the register                                                     */
    TMR0 = 0;
    /*                                                                        */
    /*                                                                        */
    /* Timer 0 clock source select bit                                        */
    /* 1 : Transition on T0CKI pin                                            */
    /*                                                                        */
    OPTION_REGbits.T0CS = 1;
    /*                                                                        */
    /* Timer0 Source Edge Select bit
     * 0: Increment low to high
     */
    OPTION_REGbits.T0SE = 0;

}


void configure_timer1(void) 
{
    /* Clear the register                                                     */
    TMR1 = 0; 
    /*                                                                        */
    /*                                                                        */
    /*                                                                        */
    /* Timer1 Input Clock Prescale Select bits                                */
    /* 11 : 1/8 pre scaler                                                    */
    /*                                                                        */
    T1CONbits.T1CKPS0 = 1;
    T1CONbits.T1CKPS1 = 1;
    
    /*                                                                        */
    /* T1SYNC: Timer1 External Clock Input Synchronization Control bit        */
    /* 0 : Synchronize external clock input                                   */
    /*                                                                        */
    T1CONbits.T1INSYNC  = 0;
    
    /*                                                                        */
    /* Timer1 Clock Source Select bit                                         */
    /* 1 : External on the rising edge                                        */
    /*                                                                        */
    T1CONbits.TMR1CS    = 0;


}

/* ************************************************************************** */
