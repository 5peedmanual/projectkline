/*

File:   hd44780_i2c.c

Interface with the HD44780 16x02 LCD display via a i2c backpack which 
requires the display operates in 4-bit mode
 
----- Registers -----

The HD44780U has two 8-bit registers:
    
1. Instruction register (IR)   

The IR stores instruction codes, such as display clear and cursor shift, 
and address information for display data RAM (DDRAM) and character 
generator RAM (CGRAM).

The IR can only be written from the MPU.

2. Data register (DR)

The DR temporarily stores data to be written into DDRAM or CGRAM and 
temporarily stores data to be read from DDRAM or CGRAM. 
Data written into the DR from the MPU is automatically written into
DDRAM or CGRAM by an internal operation. The DR is also used for data 
storage when reading data from DDRAM or CGRAM. 

* When address information is written into the IR, data is read and then 
stored into the DR from DDRAM or CGRAM by an internal operation. 

* Data transfer between the MPU is then completed when the MPU reads the DR. 

* After the read, data in DDRAM or CGRAM at the next address is sent to the 
DR for the next read from the MPU. By the register selector (RS) signal, 
these two registers can be selected (Table 1).

----- Busy Flag (BF) -----

When the busy flag is 1, the HD44780U is in the internal operation mode, 
and the next instruction will not be accepted. 

When RS = 0 and R/W = 1 (Table 1), the busy flag is output to DB7. 

The next instruction must be written after ensuring that the busy flag is 0.

see function for implementation: void lcd_wait() 

----- Address Counter (AC) -----

The address counter (AC) assigns addresses to both DDRAM and CGRAM. 

When an address of an instruction is written into the IR, the address 
information is sent from the IR to the AC. 

Selection of either DDRAM or CGRAM is also determined concurrently by 
the instruction.

After writing into (reading from) DDRAM or CGRAM, the AC is automatically 
incremented by 1 (decremented by 1). 

The AC contents are then output to DB0 to DB6 when RS = 0 and R/W = 1 
(Table 1).

* -- Table 1 Register Selection ------------------------------------ *

    RS | R/W |                          Operation
    --------------------------------------------------------------------- 
    0   0       IR write as an internal operation (display clear, etc.)
    0   1       Read busy flag (DB7) and address counter (DB0 to DB6)
    1   0       DR write as an internal operation (DR to DDRAM or CGRAM)
    1   1       DR read as an internal operation (DDRAM or CGRAM to DR)
    ---------------------------------------------------------------------

* -- 4-bit interfacing to the MPU ------------------------------------ *

    For 4-bit interface data, only four lines (DB4 to DB7) are 
    used for transfer. So bus lines DB0 to DB3 are DISABLED. 

    Data transfer between the HD44780U and the MPU is completed 
    after the 4-bit data has been transferred twice. 

    Order of data transfer: the four high order bits (DB4 to DB7) are
    transferred before the four low order bits (DB0 to DB3).

    The busy flag must be checked (one instruction) after the 4-bit data 
    has been transferred twice. 

    Two more 4-bit operations then transfer the busy flag and address 
    counter data.


* -- Pin Functions ------------------------------------ *

    RS - Selects registers
            0: Instruction register (write)
            1: Data register (write and read)        
    R/W - 0: Write, 1: Read
    E - Starts data read/write

    DB4 to DB7 - data transfer and receive
    DB0 to DB3 - data transfer and receive

    DB3 - backlight
    DB2 - E    
    DB1 - R/W
    DB0 - RS    
    

* -- Instructions ------------------------------------ *

    Ins - RS | R/W | DB7 | DB6 | DB5 | DB4 | DB3 | DB2 | DB1 | DB0

    Clear Display:             00 | 0 0 0 0 | 0 0 0 1 | 

    Return Home:               00 | 0 0 0 0 | 0 0 1 - | 

    Entry Mode Set:            00 | 0 0 0 0 | 0 1 I/D S |

    Display On/Off:            00 | 0 0 0 0 | 1 D C B |
        where D (display), C (cursor), B (blinking)
        
    Cursor/Display Shift:      00 | 0 0 0 1 | S/C R/L - - |    

    Function Set:              00 | 0 0 1 DL | N F - - |
                        
    Read Busy Flag & Address:  01 | BF AC AC AC | AC AC AC AC |
                     

    Increment|Decrement (I/D = 1|0)
    Accompanies Display Shift (S = 1)
    Cursor Move (S/C = 0)
    Shift To Right (R/L = 1)
    Shift To Left (R/L = 0)
    8 bits (DL = 1) - set interface data length DL
    4 bits (DL = 0)
    2 Lines (N = 1)
    1 Line (N = 0)
    5x10 Dots (F = 1)
    5x8 Dots (F = 0)
    Internally Operating (BF = 1)
    Instructions Acceptable (BF = 1)

*/

#include <pic16f877a.h>         /* Pic definitions              */
#include <stdbool.h>            /* Bools, true of false         */
#include <stdint.h>             /* For uint8_t definition       */
#include <stdlib.h>
#include <xc.h>                 /* XC8 General Include File     */

#include "cristal.h"
#include "i2c.h"
#include "pcf84naoseiquantos.h"
#include "simon_hd44780_lcd.h"
#include "system.h"

void lcd_send_instruction(void);

struct {
       unsigned int instruction;
       unsigned int backlight : 1;
       unsigned int readWrite : 1;
       unsigned int registerSelect : 1;   
       unsigned int cursorOn : 1;         
       unsigned int cursorBlink : 1;   
} LCDSTRUCT = {0x00,1,0,0,1,1};



static uint8_t get_control_nibble(uint8_t enable) 
{
        uint8_t c = 0x00;
        c |= LCDSTRUCT.backlight;
        c = c << 1;
        c |= enable;
        c = c << 1;
        c |= LCDSTRUCT.readWrite;
        c = c << 1;
        c |= LCDSTRUCT.registerSelect;
        return c;        
}


void lcd_backlight_off(void)
{
        LCDSTRUCT.backlight = 0;
        lcd_display_on();
}


inline void lcd_backlight_on(void)
{
        LCDSTRUCT.backlight = 1;
        lcd_display_on();
        return;
}


void lcd_backlight_toggle(void)
{
        LCDSTRUCT.backlight = ~LCDSTRUCT.backlight;
        lcd_display_on();
}


inline void lcd_clear_display()
{
        LCDSTRUCT.instruction = CLEARDISPLAY;
        lcd_send_instruction();
}


/* 
 * pg29 - Set DDRAM address sets the DDRAM address 
 * binary AAAAAAA into the address counter.

 * Data is then written to or read from the MPU for DDRAM.

 * For 2-line display:
 * First line: AAAAAAA can be 00H - 27H 
 * Second line: AAAAAAA can be 40H - 67H
 
 *  0 0 0 0 0 1 SC=0 R/L=1 ? ? 
 */             
void lcd_cursor(uint8_t row, uint8_t col) 
{            
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 0;
        LCDSTRUCT.instruction = RETURNHOME;
        lcd_send_instruction();
        
        LCDSTRUCT.instruction = 0x80;
        if (row == 1) {
                LCDSTRUCT.instruction |= 0x40; // 2nd line
        }    
        
        lcd_send_instruction();
        if (col == 0) {
                return;
        }
        lcd_cursor_shift_right(col);
}


void lcd_cursor_blink_off()
{    
        LCDSTRUCT.cursorBlink = 0;
        lcd_display_on();
}


void lcd_cursor_blink_on()
{    
        LCDSTRUCT.cursorBlink = 1;
        lcd_display_on();
}


void lcd_cursor_off()
{
        LCDSTRUCT.cursorOn = 0; 
        lcd_display_on();
}


void lcd_cursor_on()
{
        LCDSTRUCT.cursorOn = 1;
        lcd_display_on();
}


/*
 * Sets DDRAM address 0 in address counter. Also
 * returns display from being shifted to original
 * position. DDRAM contents remain unchanged.
 */
void lcd_cursor_return_home()
{
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 0;
        LCDSTRUCT.instruction = RETURNHOME;
        lcd_send_instruction();
}


void lcd_cursor_shift_left(int n)
{
        // SC = 0, set cursor shift
        // RL = 0 (left), RL = 1 (right)
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 0;
        LCDSTRUCT.instruction = 0x10;        
        for (int i = 0; i < n; i++) {
                lcd_send_instruction();
        }    
}


void lcd_cursor_shift_right(int n)
{
        // SC = 0, set cursor shift
        // RL = 0 (left), RL = 1 (right)
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 0;
        LCDSTRUCT.instruction = 0x14;
        
        for (int i = 0; i < n; i++) {
                lcd_send_instruction();
        }    
}


void lcd_display_off(void)
{
        uint8_t c = 0x00;
        c |= LCDSTRUCT.cursorOn;
        c = c << 1;
        c |= LCDSTRUCT.cursorBlink;
        c |= 0x08;
        
        LCDSTRUCT.instruction = c;
        lcd_send_instruction();
}


inline void lcd_display_on(void)
{
        uint8_t c = 0x00;
        c |= LCDSTRUCT.cursorOn;
        c = c << 1;
        c |= LCDSTRUCT.cursorBlink;
        c |= 0x0C;
        
        LCDSTRUCT.instruction = c;
        lcd_send_instruction();
        return;
}


void lcd_display_shift_left(int n)
{
        // SC = 1, set display shift
        // RL = 0 (left), RL = 1 (right)
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 0;
        LCDSTRUCT.instruction = 0x18;
        for (int i = 0; i < n; i++) {
                lcd_send_instruction();
        }    
}


void lcd_display_shift_right(int n)
{
        // SC = 1, set display shift
        // RL = 0 (left), RL = 1 (right)
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 0;
        LCDSTRUCT.instruction = 0x1C;
        for (int i = 0; i < n; i++) {
                lcd_send_instruction();
        }    
        
}


/* 
 * refer to figure 24 in datasheet for instructions on 4bit initialisation
 * DL = 0 : 4 bits
 */
static inline void lcd_function_set_4bit()
{        
        lcd_wait();
        
        // 0 0 1 DL N F - -    
        // 0 0 , 0 0 1 DL=0, N=1 F=0 ? ?
        
        // we can't actually set N, F until in 4bit mode
        start_i2c();
        write_i2c(SLAVE_ADDR_W);
        write_i2c(0x28);   // E = 0  
        write_i2c(0x2C);   // E = 1  
        write_i2c(0x28);   // E = 0
        stop_i2c();
        
        lcd_wait();
        return;
   
}   
 

void lcd_print(const char *mystring) 
{
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 1;

        uint8_t i = 0;
        while (mystring[i] != '\0') {            
                LCDSTRUCT.instruction = mystring[i];
                lcd_send_instruction();
                i++;         
        }
}   


/*
 * See page 33 of datasheet
 * In 4-bit operation, the high nibble is sent first, 
 * then the low nibble with corresponding LCDSTRUCT bits
 */
void lcd_send_instruction(void) 
{        
        lcd_wait();        
        start_i2c();
        write_i2c(SLAVE_ADDR_W);
                
        uint8_t conEnabled = get_control_nibble(1);
        uint8_t conDisabled = get_control_nibble(0);
        uint8_t data;
        
        // Send high nibble of instruction first
        data = (LCDSTRUCT.instruction & 0xF0) | conEnabled; 
        write_i2c(data);
        write_i2c(conDisabled); 
        
        // Now send low nibble of instruction        
        data = ((LCDSTRUCT.instruction << 4) & 0xF0) | conEnabled; 
        write_i2c(data);
        write_i2c(conDisabled);        
                
        stop_i2c();
        lcd_wait();
        return;
}    


void lcd_set_lines(int lines) 
{     
        // once DL has been set, it cannot be changed
        // so we don't need to worry about DL value
        
        // N = 1, 2 lines
        // F = 0, 5x8 dots when two lines are needed
        LCDSTRUCT.readWrite = 0;
        LCDSTRUCT.registerSelect = 0;
        LCDSTRUCT.instruction = 0x20;
        if (lines == 2) {
                LCDSTRUCT.instruction |= 0x08; 
        }         
        lcd_send_instruction();
        return;
} 


inline void lcd_wait(void)
{    
        unsigned char i,j;
        for(i=0; i<50; i++) // A simple for loop for delay
                for(j=0; j<255; j++);
        __delay_ms(5); 
        return;
                
}


inline void lcd_init(void) 
{
        lcd_function_set_4bit();
        lcd_set_lines(2);    
        lcd_display_on();
        lcd_clear_display();
        lcd_backlight_on();
        return;
}    

