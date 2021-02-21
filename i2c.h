/* 
 * File:   i2c.h
 * Author: omron
 *
 * Created on August 16, 2020, 2:54 PM
 */

#ifndef I2C_H
#define	I2C_H
int init_i2c(void);
void write_i2c(uint8_t addr, uint8_t data);


#endif	/* I2C_H */

