#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */


typedef struct {
    uint8_t *fmt;
    uint8_t *sid;
    char    *buf[10];
    uint8_t *cs;
} P1;


void filler_fmt_kline(void);
void filler_sid_kline(void);
void filler_data_kline(void);