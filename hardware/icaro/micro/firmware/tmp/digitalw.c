// Digital Library for Pinguino
// jean-pierre MANDON 2008
// modification 2009/08/08 18F4550

#ifndef __DIGITALW__
#define __DIGITALW__

#ifdef PIC18F4550
const uchar mask[29]={0X01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,		// PORTB
					  0x40,0X80,0x01,0x02,0x04,						// PORTC
					  0x01,0x02,0x04,0x08,0x20,						// PORTA
					  0X01,0X02,0X04,								// PORTE
					  0X01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};		// PORTD
const uchar port[29]={0,0,0,0,0,0,0,0,1,1,1,1,1,2,2,2,2,2,4,4,4,3,3,3,3,3,3,3,3};
#else
const uchar mask[18]={0X01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x040,0x080,0x01,0x02,0x04,0x01,0x02,0x04,0x08,0x20};
const uchar port[18]={0,0,0,0,0,0,0,0,1,1,1,1,1,2,2,2,2,2};
#endif

void digitalwrite(int output,int state)
{
switch (port[output])
	{
	case 0: if (state) PORTB=PORTB | mask[output]; 
		    else PORTB=PORTB & (255-mask[output]);
		    break;
	case 1: if (state) PORTC=PORTC | mask[output];
		    else PORTC=PORTC & (255-mask[output]);
		    break;
	case 2: if (state) PORTA=PORTA | mask[output];
		    else PORTA=PORTA & (255-mask[output]);
		    break;
	#ifdef PIC18F4550
	case 3: if (state) PORTD=PORTD | mask[output]; 
		    else PORTD=PORTD & (255-mask[output]);
		    break;
	case 4: if (state) PORTE=PORTE | mask[output]; 
		    else PORTE=PORTE & (255-mask[output]);
		    break;
	#endif
	}
}

int digitalread(int input)
{
switch (port[input])
	{
	case 0: if ((PORTB & mask[input])!=0) return (1);
		else return (0);
		break;
	case 1: if ((PORTC & mask[input])!=0) return (1);
		else return (0);
		break;
	case 2: if ((PORTA & mask[input])!=0) return (1);
		else return (0);
		break;
	#ifdef PIC18F4550
	case 3: if ((PORTD & mask[input])!=0) return (1);
		else return (0);
		break;
	case 4: if ((PORTE & mask[input])!=0) return (1);
		else return (0);
		break;
	#endif	
	}
return (0);
}

void pinmode(int input, int state)
{
switch (port[input])
	{
	case 0: if (state) TRISB=TRISB | mask[input];
		else TRISB=TRISB & (255-mask[input]);
		break;
	case 1: if (state) TRISC=TRISC | mask[input];
		else TRISC=TRISC & (255-mask[input]);
		break;
	case 2: if (state) TRISA=TRISA | mask[input];
		else TRISA=TRISA & (255-mask[input]);
		break;
	#ifdef PIC18F4550
	case 3: if (state) TRISD=TRISD | mask[input];
		else TRISD=TRISD & (255-mask[input]);
		break;
	case 4: if (state) TRISE=TRISE | mask[input];
		else TRISE=TRISE & (255-mask[input]);
		break;
	#endif	
	}
}

#endif
