
/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  
void master_w8(void);
void wait_mssp(void);
inline void check_bf_i2c(void);
inline void check_ack_bit_i2c(void);
inline void error_i2c(void);

#endif	/* XC_HEADER_TEMPLATE_H */

