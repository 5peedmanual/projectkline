#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */



#include "ISO.h"
#include "kline_send.h"
#include "kline_wait_functions.h"
#include "kline_struct.h"



static uint8_t checksum_kline(const uint8_t [], const uint8_t);
static void fast_initialisation(Kline *);



void init_kline(void) 
{
    /* Pull the K-line low for 70msec */
    /* Return the K-line to the high state for 120msec */
    /* Send ?Wakeup? message: FE 04 FF FF. No response is expected */
    /* Wait 200msec */
    /* Send ?Initialise? message: 72 05 00 F0 99 */
    /* The ECU should respond with: 02 04 00 FA */
}


static void fast_initialisation(Kline *klinep) 
{
    
    //send_kline_wake_up();
    /* 
     * The first message of a fast initialisation always uses a header
     *  with target and source address and without additional length byte
     */
    //send_start_request(klinep);             
    
    /* 25...50 ms*, 0..1000ms** */
    //wait_p2(klinep);
    
    //read_start_response(klinep);
    
    /* 55...5000ms*, 0...5000 ms** */
    //wait_p3();
}





