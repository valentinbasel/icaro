// analogic input library for pinguino
// Jean-Pierre MANDON 2008
// added 18F4550 support 2009/08/10

#ifndef __ANALOG__
#define __ANALOG__

#define ANALOG 1

void analog_init(void)
{
#ifdef PIC18F4550
TRISA=TRISA | 0x2F;
TRISE=TRISE | 0x07;
ADCON1=0x07;
ADCON2=0xBD;
#else
TRISA=TRISA | 0x2F;
ADCON1=0x0A;
ADCON2=0xBD;
#endif
}

unsigned int analogread(unsigned char channel)
{
unsigned int result=0;

ADCON1=0x0A;
ADCON0=(channel-13)*4;
ADCON2=0xBD;
ADCON0bits.ADON=1;
for (result=1;result<10;result++) __asm NOP __endasm;
ADCON0bits.GO=1;
while (ADCON0bits.GO);
result=ADRESH<<8;
result+=ADRESL;
ADCON0bits.ADON=0;
return(result);
}

#endif
