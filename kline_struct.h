/* 
 * File:   kline_struct.h
 * Author: omron
 *
 * Created on April 28, 2021, 7:27 PM
 */

#ifndef KLINE_STRUCT_H
#define	KLINE_STRUCT_H

#include "ISO.h"

typedef struct {
    uint8_t format_byte;
    uint8_t target_byte;
    uint8_t source_byte;
    uint8_t length_byte;
} Header;

Header hs = {0};



/* int j = g();  // Good -- declaration has initialization. */
typedef struct {
    uint8_t t_elapse;
    uint8_t t_idle;
    uint8_t t_wup;           /* wake up */
    uint8_t t_init_kline_low;
    uint8_t t_wup_remain;
} Times;

Times ts = { .t_idle = ISO_T_IDLE, .t_init_kline_low = 50, .t_wup_remain = 25 };



typedef struct {
    
    /* 
     * Header 
     * -----------------------------------------------------------------------
     *  format byte includes information about the form of the message,
     *  target and source address bytes are optional for use with multi node 
     *  connections, an optional separate length byte allows message lengths 
     *  up to 255 bytes. 
     * 
     * 
     * Header definition :
     * 
     * typedef struct { 
     *      uint8_t format_byte;
     *      uint8_t target_byte;
     *      uint8_t source_byte;
     *      uint8_t length_byte;
     * } Header;
     * 
     * -----------------------------------------------------------------------
     * 
     */
    Header  *headerp;
    Times   *timesp;
    
    uint8_t negative_response_id;
    void (*send_service_id)(uint8_t);
    char    data[255];
    uint8_t parameter_type;
    uint8_t checksum_byte;
} Kline;

#endif	/* KLINE_STRUCT_H */

