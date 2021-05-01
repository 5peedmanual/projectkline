/* 
 * File:   ISO.h
 * Author: omron
 *
 * Created on March 20, 2021, 12:17 PM
 */

#ifndef ISO_H
#define	ISO_H


// These values are defined by the ISO protocol
#define ISO_BAUDRATE 10400

/* 
 * maximum length of a response from the ecu
 *  255 data + 4 header + 1 checksum
 */
#define ISO_MAX_DATA 260 

/* inter byte time for ECU response
 *  min: 0 
 *  max: 20 
 */
#define ISO_T_P1            10   
/* P2 time between tester request and ECU response or two ECU responses */
#define ISO_T_P2_MIN_LIMIT  50
#define ISO_T_P2_MAX_LIMIT  89600 

/* P3 time between end of ECU responses and start of new tester request */
#define ISO_T_P3_MAX_LIMIT  89600 
#define ISO_T_P4_MAX_LIMIT  20    ///< inter byte time for tester request

// P2 (min & max), P3 (min & max) and P4 (min) are defined by the ECU with accessTimingParameter()
#define ISO_T_IDLE          (unsigned char)  1000             ///< min 300, max undefined
#define ISO_T_INILIALIZE    (unsigned char)  25   /*     Initialization low time  */
#define ISO_T_WAKEUP        (unsigned char)  50   /*     Wake up Pattern          */

#endif	/* ISO_H */

