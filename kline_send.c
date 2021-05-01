#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <string.h>             /* stringcpy                    */
#include <xc.h>                 /* XC8 General Include File     */

#include "ISO.h"


#include "kline_service_ids.h"
#include "kline_utils.h"


/*
void send_kline_wake_up(Kline *klinep)
{
    count_t_idle(klinep->timesp);
    make_t_wup(klinep->timesp);
    send_start_communication(klinep);
    * The pattern begins after an idle time
     *  on kline with a low time of TiniL. 
*/

/*
//void send_start_request(Kline *klinep)
//{
    char buf2_send[10];
    //klinep->headerp->format_byte    = ID_START;
    //klinep->service_id              = ID_START;
    //klinep->checksum_byte           = checksum_kline(klinep);
        
//}*/


