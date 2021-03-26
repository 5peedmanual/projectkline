#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>



typedef struct {
    uint8_t format_byte;
    uint8_t target_byte;
    uint8_t source_byte;
    uint8_t length_byte;
} Header;


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
    Header *hdp;
    
    uint8_t negative_response_id;
    uint8_t service_id;
    char    data[255];
    uint8_t parameter_type;
    uint8_t checksum_byte;
} Kline;


struct request_kline {
    Header.format_byte      = 0x81;
    uint8_t service_id  = 0x81;
    
};





void init_struct(void)
{
    Header  header_s    = { 0 };
    Kline   kline_s     = { 0 };
    kline_s.hdp = &header_s;
    
    kline_s.hdp->format_byte = 1;
}




void init_kline(void) 
{
    /* Pull the K-line low for 70msec */
    /* Return the K-line to the high state for 120msec */
    /* Send ?Wakeup? message: FE 04 FF FF. No response is expected */
    /* Wait 200msec */
    /* Send ?Initialise? message: 72 05 00 F0 99 */
    /* The ECU should respond with: 02 04 00 FA */
}


static void checksum_kline(uint8_t)
{
    
}


static void fast_initialisation(struct kline *klp) 
{
    
    uint8_t t_idle              = ISO_T_IDLE;
    uint8_t t_wake_up           = 50;
    uint8_t t_init_kline_low    = 25;
    
    
    /* 
     * The first message of a fast initialisation always uses a header
     *  with target and source address and without additional length byte
     */
    send_start_request(klp);
    
    /* 25...50 ms*, 0..1000ms** */
    wait_p2();
    
    read_start_response(klp);
    
    /* 55...5000ms*, 0...5000 ms** */
    wait_p3();
}


static void send_start_request(struct kline *klp)
{
    klp->hb->format_byte    = 0;
    klp->service_id         = 0;
    klp->checksum_byte      = checksum_kline(klp);
}