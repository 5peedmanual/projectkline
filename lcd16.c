/* 
 * File:   lcd16.c
 * Author: omron
 *
 * Created on August 16, 2020, 2:42 PM
 */

#include <stdio.h>
#include <stdlib.h>
#if defined(__XC)
    #include <xc.h>         /* XC8 General Include File */
#elif defined(HI_TECH_C)
    #include <htc.h>        /* HiTech General Include File */
#endif

#include "cristal.h"
#include "i2c.h"
#include "lcd16.h"
#include "pcf84naoseiquantos.h"

/* Register select
 * ----------------------
 * RS 0 comandos 
 * RS 1 data
 * ----------------------
 * 
 * Function set
 * ----------------------
 * DL:
 *  1 - 8 bits
 *  0 - 4 bits
 * N:
 *  1 - duas linhas
 *  0 - uma linha
 * F:
 *  1 - 10x7
 *  0 - 5x7
 * ----------------------
 * 
 * Display On/Off
 * ----------------------
 * D:
 *  1 - display on
 *  0 - display off
 * C:
 *  1 - cursor on
 *  0 - cursor off
 * B:
 *  1 - blinking on
 *  0 - blinking off
 * ----------------------
*/



#define RS_CMD      0
#define RS_DATA     1

#define RW_WRITE    0x00
#define RW_READ     0x10

#define EN_L        0
#define EN_H        1


void fbit_write_lcd16(uint8_t rss, uint8_t nibble);
void cmd_lcd16(uint8_t rs, uint8_t cmd);
void set_cursor_lcd16(uint8_t row, uint8_t col);

#if 0
void init_lcd16(void)
{


    funcao_misterio_i2c(0x08);
    __delay_ms(10);
    funcao_misterio_i2c(0x30);
    __delay_ms(5);
    funcao_misterio_i2c(0x30);
    __delay_ms(5);
    funcao_misterio_i2c(0x30);
    __delay_ms(5);
    funcao_misterio_i2c(0x30);
    __delay_ms(5);
    
    funcao_misterio_i2c(0x20);
    __delay_ms(5);
    
    funcao_misterio_i2c(0x28); /* Function set, 4 bit, 2 lines, 5×7 */
    __delay_ms(50);
    
    
    
    cmd_lcd16(RS_CMD, LCD_CLEAR);
    __delay_ms(50);
    cmd_lcd16(RS_CMD, (LCD_ENTRY_MODE_SET | LCD_RETURN_HOME));
    __delay_ms(50);
}


void fbit_write_lcd16(uint8_t rss, uint8_t nibble)
{
  // Get The RS Value To LSB OF Data
    
    nibble |= rss;
    funcao_misterio_i2c(nibble | 0x04);
    funcao_misterio_i2c(nibble & 0xFB);
    __delay_us(50);
}


/* 1st send Higher 4-bit and then send lower 4-bit of data/command. */
void cmd_lcd16(uint8_t rs, uint8_t cmd)
{       
    uint8_t high_nipple = (cmd & 0xF0);
    
    uint8_t low_nipple  = (cmd << 4) & 0xF0;

    
    fbit_write_lcd16(rs, high_nipple);
    fbit_write_lcd16(rs, low_nipple);
}


void set_cursor_lcd16(uint8_t row, uint8_t col)
{
    switch (row) {
        case 1:
            cmd_lcd16(RS_CMD, 0x80 + col-1);
         case 2:
            cmd_lcd16(RS_CMD, 0xC0 + col-1);
            break;  
    }
}
#endif