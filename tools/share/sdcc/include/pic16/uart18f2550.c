// UART Library for PIC 18F2550
// SDCC version / small device c compiler
// written by Jean-Pierre MANDON 2008 jp.mandon@free.fr
/*
   This program is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

   In other words, you are welcome to use, share and improve this program.
   You are forbidden to forbid anyone else to use, share and improve
   what you give them.   Help stamp out software-hoarding!
*/
// this program is intended for an oscillator frequency of 20 Mhz


// local definition UART.C

#ifndef __PINGUINOSERIAL
#define __PINGUINOSERIAL

#include <stdarg.h>
//#include <stdlib.h>
#include <stdlib.c>

#define FLOAT 10

#ifndef RXBUFFERLENGTH
#define RXBUFFERLENGTH 128              // rx buffer length
#endif

char rx[RXBUFFERLENGTH];                // this is the buffer
unsigned char wpointer,rpointer;        // write and read pointer

#define __SERIAL__

// setup PIC UART
void serial_begin(unsigned long baudrate)
{
	unsigned long spbrg;
	unsigned char highbyte,lowbyte;

	spbrg=(48000000/(4*baudrate))-1;
	highbyte=spbrg/256;
	lowbyte=spbrg%256;
	TXSTAbits.BRGH=1;               	  	// set BRGH bit
	BAUDCONbits.BRG16=1;					// set 16 bits SPBRG
	SPBRGH=highbyte;                        // set UART speed SPBRGH
	SPBRG=lowbyte;   						// set UART speed SPBRGL
	RCSTA=0x90;                             // set RCEN and SPEN
	BAUDCONbits.RCIDL=1;			// set receive active
	PIE1bits.RCIE=1;                        // enable interrupt on RX
	INTCONbits.PEIE=1;                      // enable peripheral interrupts
	IPR1bits.RCIP=1;                        // define high priority for RX interrupt
	wpointer=1;                             // initialize write pointer
	rpointer=1;                             // initialize read pointer
	TXSTAbits.TXEN=1;                       // enable TX
	INTCONbits.GIE=1;
}

// new character receive ?	
unsigned char serial_available()
{
	return(wpointer!=rpointer);
}

// write char
void serial_putchar(unsigned char caractere)
{
	while (!TXSTAbits.TRMT);
	TXREG=caractere;		        // yes, send char
}

// serial_int is called by interruption service routine
void serial_interrupt(void)
{
	char caractere;
	unsigned char newwp;

	PIR1bits.RCIF=0;				// clear RX interrupt flag
	caractere=RCREG;				// take received char
	if (wpointer!=RXBUFFERLENGTH-1)	// if not last place in buffer
		newwp=wpointer+1;			// place=place+1
	else
		newwp=1;					// else place=1

	if (rpointer!=newwp)			// if read pointer!=write pointer
		rx[wpointer++]=caractere;	// store received char

	if (wpointer==RXBUFFERLENGTH)	// if write pointer=length buffer
		wpointer=1;					// write pointer = 1
}

// get char
unsigned char serial_read()
{
	unsigned char caractere=0;

	if (serial_available())
    {
	    caractere=rx[rpointer++];
	    if (rpointer==RXBUFFERLENGTH)
		rpointer=1;
    }
	return(caractere);
}

// clear rx buffer
void serial_flush(void)
{
	wpointer=1;
	rpointer=1;
}

// 

unsigned char serial_getkey()
{
	unsigned char c;
	while (!(serial_available()));
	c = serial_read();
	serial_flush();
	return (c);
}

// write formated string on the serial port
void serial_printf(char *fmt, ...)
{
	va_list args;

	va_start(args, fmt);
	printf(serial_putchar, fmt, args);
	va_end(args);
}

/*******************************************************************************
	And For Compatibility Reasons ....
*******************************************************************************/

static void uitoa(unsigned int num, char * bf, unsigned int base)
{
	int n=0;
	unsigned int d=1;

	while (num/d >= base)
		d*=base;		

	while (d!=0)
	{
		int dgt = num / d;
		num%= d;
		d/=base;
		if (n || dgt>0 || d==0)
		{
			*bf++ = dgt+(dgt<10 ? '0' : 'A'-10);
			++n;
		}
	}
	*bf=0;
}


// new implementation of serial_write
void serial_write(char *fmt,...)
{
	va_list ap;
	unsigned char *s;
	char chaine[8];
        
va_start(ap,fmt);
s=va_start(ap,fmt);
switch (*s)
	{
		case DEC:       serial_printf("%d",(int)fmt);
		                break;
		case HEX: 		serial_printf("%x",(int)fmt);
		                break;
		case BYTE: 		serial_printf("%d",(unsigned char)fmt);
		                break;
		case OCTAL:     uitoa((int)fmt,chaine,8);
		                serial_printf(chaine);
		                break;
		case BIN:       uitoa((int)fmt,chaine,2);
		                serial_printf(chaine);
		                break;           
		default:	serial_printf(fmt);
				break;
	}
va_end(ap);
}

#endif
