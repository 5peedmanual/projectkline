#ifndef LCD16_H
#define LCD16_H

#define LCD_BACKLIGHT         0x08
#define LCD_NOBACKLIGHT       0x00

#define LCD_FIRST_ROW         0x80
#define LCD_SECOND_ROW        0xC0

#define LCD_CLEAR             0x01
#define LCD_RETURN_HOME       0x02
#define LCD_FUNCTION_SET      0x28 /* 4-bit, 5x7, 2 lines */

#define LCD_ENTRY_MODE_SET    0x04
#define LCD_CURSOR_OFF        0x0C
#define LCD_UNDERLINE_ON      0x0E
#define LCD_BLINK_CURSOR_ON   0x0F
#define LCD_MOVE_CURSOR_LEFT  0x10
#define LCD_MOVE_CURSOR_RIGHT 0x14
#define LCD_TURN_ON           0x0C
#define LCD_TURN_OFF          0x08
#define LCD_SHIFT_LEFT        0x18
#define LCD_SHIFT_RIGHT       0x1E




void init_lcd16(void);

#endif
