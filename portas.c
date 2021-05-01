#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */


static void init_aux_ports(void);
static void init_i2c_port(void);
static void init_uart_port(void);


/******************************************************************************/
/* Ports                                                                      */
/******************************************************************************/
inline void init_ports(void) 
{
    init_aux_ports();
    init_i2c_port();
    init_uart_port();
    return;
}


static void init_aux_ports(void)
{
    /* Port B and D are set to output                                         */
    TRISB = 0;
    TRISD = 0;

    PORTB = 0x00;
    PORTD = 0x00;
    return;
}

                                                                                                                                       
static void init_i2c_port(void)
{
    /* SDA and SCL as inputs                                                  */
    TRISCbits.TRISC3 = 1;
    TRISCbits.TRISC4 = 1;
    return;
}


static void init_uart_port(void)
{
    /* TX as output and RX as input                                           */
    TRISCbits.TRISC6 = 0;
    TRISCbits.TRISC7 = 1;
    return;
}
/* ************************************************************************** */
