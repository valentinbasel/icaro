// millis library for pinguino
// Jean-Pierre MANDON 2009

#ifndef __MILLIS__
#define __MILLIS__

#define MILLIS 1

long _millis;

void millis_init(void)
{
T0CON=0x80;		// TMR0 on, 16 bits counter, prescaler=2
INTCON|=0xA0;	// set GIE and TMR0IE
_millis=0;
}

long Millis()
{
return(_millis);
}

#endif
