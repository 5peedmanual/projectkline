/* 
 * File:   kline_struct.h
 * Author: omron
 *
 * Created on April 28, 2021, 7:27 PM
 */

#ifndef KLINE_STRUCT_H
#define	KLINE_STRUCT_H

#include "ISO.h"
#include "timers.h"




typedef struct {
    uint8_t format_byte;
    uint8_t target_byte;
    uint8_t source_byte;
    uint8_t length_byte;
} Header;

Header hs = {0};




/* int j = g();  // Good -- declaration has initialization. */
typedef struct {
    
    uint8_t t_idle;
    uint8_t t_wup;           /* wake up */
    uint8_t t_iniL;
    
    void    (*delay)(uint16_t ms);
} Times;

Times ts = {    .t_idle = ISO_T_IDLE, .t_wup = ISO_T_WAKEUP,        \
                .t_iniL = ISO_T_INILIALIZE };




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
    
    uint8_t response_id;
    uint8_t service_id;
    void    (*send_service_id)(uint8_t);
    char    (*send_data)(char *data); // send_data?    
    uint8_t parameter_type; // send_paramemer?
    uint8_t checksum_byte; // send cs?
    uint8_t (*calc_checksum)(void);
} Kline;

Kline ks = { .headerp = hs, .timesp = ts, .negative_response_id = 0, /**/ /**/\
            .parameter_type = 0, .checksum_byte = 0 /**/ };            






#endif	/* KLINE_STRUCT_H */

