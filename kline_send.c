#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <string.h>             /* stringcpy                    */
#include <xc.h>                 /* XC8 General Include File     */

#include "ISO.h"


#include "kline_service_ids.h"
#include "kline_utils.h"
#include "kline_struct.h"
#include "kline_time_functions.h"




static void send_kline(Kline *klinep);





/*
 * _________
 *          |
 *          |______________
 * 
 */

void send_kline_wake_up(Kline *klinep)
{
    
    count_kline_idle(klinep->timesp->t_idle);
    make_wakeup(klinep->timesp->t_wup, klinep->timesp->t_iniL);
}





void send_start_request(Kline *klinep)
{
    char buf2_send[10];
    klinep->headerp->format_byte    = 0x81;       //
    klinep->headerp->target_byte    = 0x11;       // ECU1
    klinep->send_service_id         = ID_START; // 81
    //
    
    
    klinep->checksum_byte           = checksum_kline(klinep);
    
    memset(buf2_send, 0);
    strncpy(buf2_send, (const char *) klinep->headerp->format_byte);
    strncat(buf2_send, (const char *) klinep->headerp->target_byte);
    
    
        
}


static void send_kline(Kline *klinep)
{
    
}


