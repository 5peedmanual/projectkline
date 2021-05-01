#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */


#include "cristal.h"
#include "kline_struct.h"
#include "pulls.h"
#include "timers.h"









void count_t_idle() 
{
    /* @TODO: temos de ir buscar o sinal da kline e contar o tidlle */
}


void make_t_wup(Times *tp)
{
    pull_low_kline(tp->t_idle);
    pull_up_terrain_kline(tp->t_wup_remain);
}


void wait_p2(Times *tp)
{
    delay(tp->t_idle);
}


void wait_p3(Times *tp)
{
    delay(tp->t_idle);
}


