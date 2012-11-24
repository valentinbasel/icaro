// I2C library for PIC
// jp mandon 2009


#ifndef __PINGUINOI2C
#define __PINGUINOI2C

#include <delay.h>
#include <i2c.h>

short i2c_buffer[8];

void init_I2C()
{
TRISBbits.TRISB0=1;
TRISBbits.TRISB1=1;
i2c_open(I2C_MASTER, I2C_SLEW_OFF, 9);
}

static char _wait()
{
uchar i=0;

while(PIR1bits.SSPIF == 0) 
	{
         i++;
         if(i==0) return -1;
         }
PIR1bits.SSPIF = 0;
return 0;
}

static char _wait_ack()
{
uchar i=0;

while(SSPCON2bits.ACKSTAT == 1) 
	{
         i++;
         if(i==0) return -1;
         }
return 0;
}

static void _read_abort()
{
SSPCON1bits.WCOL = 0;
I2C_STOP();
_wait();  
}

short I2C_write(short address,const unsigned char* chaine,int i2c_length)
{
short i=0;    
PIR1bits.SSPIF = 0;

I2C_START();
if (_wait())
	{
	_read_abort();
	return 0;
	}
if(i2c_writechar(address<<1)&0xFE) 
	{
	_read_abort();
	return 0;
	}
if (_wait())
	{
	_read_abort();
	return 0;
	}
if (_wait_ack())
	{
	_read_abort();
	return 0;
	}
delay10ktcy(1);
for (i=0;i<i2c_length;i++)
	{
	if(i2c_writechar(chaine[i])) 
		{
		_read_abort();
		return 0;
		}
	if (_wait())
		{
		_read_abort();
		return 0;
		}
	if (_wait_ack())
		{
		_read_abort();
		return 0;
		}
	delay10ktcy(1);
	}
return 1;
}

short I2C_read(short address,short i2c_length)
{
short i=0;

I2C_IDLE();
I2C_START();
if (_wait())
	{
	_read_abort();
	return 0;
	}	
if(i2c_writechar((address<<1)+1)) 
	{
	_read_abort();
	return 0;
	}
if (_wait())
	{
	_read_abort();
	return 0;
	}
if (_wait_ack())
	{
	_read_abort();
	return 0;
	}
delay10ktcy(1);
if (i2c_length>1)
{	
for (i=0;i<i2c_length-1;i++)
	{
	i2c_buffer[i]=i2c_readchar();
	if (_wait())
		{
		_read_abort();
		return 0;
		}
	i2c_ack();
	if (_wait())
		{
		_read_abort();
		return 0 ;
		}
	delay10ktcy(1);	
	}
}	
i2c_buffer[i]=i2c_readchar();	
if (_wait())
	{
	_read_abort();
	return 0;
	}
i2c_nack();
I2C_STOP();
if (_wait())
	{
	_read_abort();
	return 0;
	}
return 1;
}
#endif
