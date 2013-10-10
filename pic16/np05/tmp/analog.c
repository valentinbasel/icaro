// analogic input library for pinguino
// Jean-Pierre MANDON 2008
// added 18F4550 support 2009/08/10

#ifndef __ANALOG__
#define __ANALOG__

#define ANALOG 		1
#define DEFAULTAN		0
#define	EXTERNAL	1

void analog_init(void)
{
#if defined(PIC18F4550)
	TRISA=TRISA | 0x2F;
	TRISE=TRISE | 0x07;	
	ADCON1=0x07;
	ADCON2=0xBD;
#elif defined(PICUNO_EQUO)
	TRISA=TRISA | 0x2F;	//RA0..2, RA5
	TRISE=TRISE | 0x03;	//RE0..1
	ADCON1=0x08;		//AN0-AN6, Vref+ = VDD, RA4 as Digital o/p
	ADCON2=0xBD;		//Right justified, 20TAD, FOSC/16
#else
	TRISA=TRISA | 0x2F;
	ADCON1=0x0A;
	ADCON2=0xBD;
#endif
}


void analogReference(unsigned char Type)
{
	if(Type == DEFAULTAN)			//the default analog reference of 5 volts (on 5V Arduino boards) or 3.3 volts (on 3.3V Arduino boards)
		ADCON1|=0x00;			//Vref+ = VDD
	else if(Type == EXTERNAL)	//the voltage applied to the AREF pin (0 to 5V only) is used as the reference.
		ADCON1|=0x10;			//Vref+ = External source
}

unsigned int analogread(unsigned char channel)
{
	unsigned int result=0;
// #if defined(PIC18F4550) || defined(PICUNO_EQUO)
// ADCON1=0x07;
// #else
// ADCON1=0x0A;
// #endif

	#ifdef PICUNO_EQUO
		if(channel>=14 && channel<=16)
			ADCON0=(channel-14)*4;
		else if(channel>=17 && channel<=19)
			ADCON0=(channel-13)*4;
	#else
		ADCON0=(channel-13)*4;
	#endif
	
// ADCON2=0xBD;
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
