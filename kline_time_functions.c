#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */


#include "cristal.h"
#include "kline_struct.h"
#include "kline_time_functions.h"
#include "pulls.h"
#include "timers.h"









count_kline_idle(uint8_t time)
{
    /* @TODO: temos de ir buscar o sinal da kline e contar o tidlle */
}


void make_wakeup(uint8_t twup, uint8_t tinil)
{
    uint8_t remain = twup-tinil;
    pull_low_kline(tinil);
    pull_up_terrain_kline(remain);
}


void wait_p2(Times *tp)
{
    delay(tp->t_idle);
}


void wait_p3(Times *tp)
{
    delay(tp->t_idle);
}


