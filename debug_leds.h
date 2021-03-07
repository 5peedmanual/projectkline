/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef DEBUG_LEDS_H
#define	DEBUG_LEDS_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define TURN_ON     1
#define TURN_OFF    0


void switch_prtd_led(unsigned, unsigned);


void turn_yl_led_on(void);
void turn_yl_led_off(void);

void turn_grn_led_on(void);
void turn_grn_led_off(void);

void turn_blu_led_on(void);
void turn_blu_led_off(void);

void turn_leds_off(void);

#endif	/* XC_HEADER_TEMPLATE_H */

