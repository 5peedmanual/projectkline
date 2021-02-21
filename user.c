/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#include <stdint.h>         /* For uint8_t definition */
#include <stdbool.h>        /* For true/false definition */


#include "user.h"
#include "pic16f877a.h"

/******************************************************************************/
/* User Functions                                                             */
/******************************************************************************/

static void init_ports();
static void init_peripherals();
static void init_interrupts();


void init_app(void)
{
    /* TODO Initialize User Ports/Peripherals/Project here */
    init_ports();
    /* Setup analog functionality and port direction */

    /* Initialize peripherals */

    /* Enable interrupts */
}

static void init_ports()
{
    /* Port B is output */ 
    TRISB = 0; 
}
