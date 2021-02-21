/* 
 * File:   lcd16.c
 * Author: omron
 *
 * Created on August 16, 2020, 2:42 PM
 */

#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
void init_lcd16(void)
{
    /* RS 0 comandos 
     * RS 1 data
     */
    /* DL = 1, N = 1, F = 0*/
    write_i2c(0x38); /* Function set, 8 bit, 2 lines, 5×7 */
    write_i2c(0x0F); /* Display ON, Cursor On, Cursor Blinking */
    write_i2c(0x06);
}