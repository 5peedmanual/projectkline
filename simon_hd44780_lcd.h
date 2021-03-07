  
#ifndef SIMON_HD44780_LCD_H
#define	SIMON_HD44780_LCD_H

void lcd_backlight_off();
void lcd_backlight_on();
void lcd_backlight_toggle();
void lcd_clear_display();
void lcd_cursor(uint8_t row, uint8_t col); 
void lcd_cursor_blink_off();
void lcd_cursor_blink_on();
void lcd_cursor_off();
void lcd_cursor_on();
void lcd_cursor_shift_left(int n);
void lcd_cursor_shift_right(int n);
void lcd_cursor_return_home();
void lcd_display_shift_left(int n);
void lcd_display_shift_right(int n);
void lcd_display_off(void);
void lcd_display_on(void);
void lcd_print(const char * mystring);
void lcd_wait();
void lcd_init();


#define RETURNHOME 0x02
#define CLEARDISPLAY 0x01

#endif	

