#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */





uint8_t calc_checksum(const uint8_t data[], const uint8_t data_len)
{
    uint8_t cs = 0;
    for (uint8_t i = 0; i < data_len; i++)
    {
        cs += data[i];
    }
    return cs;
}



