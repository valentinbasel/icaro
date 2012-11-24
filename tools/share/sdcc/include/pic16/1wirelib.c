/* 
 * 1Wire library for Pinguino project
 * 
 * This file is part of the GPL project Pinguino.
 * 
 * May 2010
 * The Pinguino project is maintained by
 *     Jean-Pierre Mandon <jp.mandon AT gmail.com>
 * 
 */

#ifndef __1WIRE__
#define __1WIRE__

#ifndef __STRING_H
#include <string.h>
#endif

#ifndef __ARDDELAY__
#include <arduinodelay.c>
#endif

#define skiprom 0xCC
#define readrom 0x33
#define cnv 0x44
#define readt 0xBE
#define matchROM 0x55
#define writeMEM 0x4E
#define RECALL 0xB8
#define copyMEM 0x48

#define __touchline PORTCbits.RC0
#define __touchTRIS TRISCbits.TRISC0

unsigned char touchMEM[10]={0,0,0,0,0,0,0,0,0,0};


/****************************************************************************/
/*                  LOW LEVEL COMMUNICATION 1WIRE			*/
/****************************************************************************/

/****************************************************************************/
/*          send a reset pulse and wait for answer			*/
/****************************************************************************/

char touchreset()             	
{
__touchline=0;	             				
Delayus(500);               				
__touchline=1;;	             				
Delayus(70);                				
__touchTRIS=1;              				
if (!__touchline)                      		
   {
     Delayus(480);
     __touchline=1;          				
     __touchTRIS=0;	        				
     return 1;                        				
   }
   else                               				
   {
     Delayus(480);
	__touchline=1;          				
     __touchTRIS=0;        				
     return 0;                        				
   }
}

/****************************************************************************/
/*      				send command to 1WIRE	  			*/
/****************************************************************************/

void touchsend(unsigned char octet)      
{
  unsigned char rotation;

for (rotation=0;rotation<8;rotation++)   			
    {
	__touchline=0;	          			
	Delayus(2);
	if ((octet>>rotation)&1) __touchline=1;		
	else              __touchline=0;     			
	Delayus(70);
	__touchline=1;
	Delayus(2);
    }
}

/****************************************************************************/
/*      			receive data from 1WIRE		  			*/
/****************************************************************************/

unsigned char touchreceive()               
{
 unsigned char rotation;
 unsigned int octet=0;
 
for (rotation=0;rotation<8;rotation++)
    {
	__touchline=0;	                     	
	Delayus(1);
	__touchline=1;;
	__touchTRIS=1;			                      	
	Delayus(10);
	if (__touchline) octet=octet|0x80;
	if (rotation<7) octet>>=1;
	__touchTRIS=0;
	__touchline=1;
	Delayus(50);
    }
return octet;
}

/****************************************************************************/
/*      start simple conversion without identification			*/
/* start conversion										*/
/* the device should be alone on the bus						*/
/****************************************************************************/

void convert()
{ 
touchsend(skiprom);               		
Delayus(2);
touchsend(cnv);               			
}

/****************************************************************************/
/*               send command to a specific device			*/
/* ident is an array with the 8 bytes code of the device		*/
/* command is the touch button command						*/
/*														*/
/****************************************************************************/

unsigned char touchcommand(const unsigned char* ident,unsigned char command)
{
unsigned char i;
if (touchreset())
	{
	touchsend(matchROM);
	Delayus(2);
	for (i=0;i<8;i++) touchsend(ident[i]);
	Delayus(2);
	touchsend(command);
	Delayus(2);
	if (command==readt)
		for (i=0;i<10;i++) 
			{
			touchMEM[i]=touchreceive();
			Delayus(2);
			}
	if (command==writeMEM)
	        for (i=0;i<3;i++)
	                {
	                touchsend(touchMEM[i]);
	                Delayus(2);
	                }
	return 1;
	}
	else return 0;
}

/****************************************************************************/
/*      				reading identification					*/
/* output the 8 bytes code of the device						*/
/* the device should be alone on the bus						*/
/****************************************************************************/

unsigned char * readid(void)
{
unsigned char i;
static unsigned char touchid[8];

if (touchreset())
	{
	touchsend(readrom);
	for (i=0;i<8;i++)
		touchid[i]=touchreceive();
	return touchid;
	}
	else
	return(NULL);
}



/****************************************************************************/
/*      				    reading memory		        */
/* read the 8 bytes of memory device							*/
/* the device should be alone on the bus						*/
/****************************************************************************/


int readmem()                   
{
  unsigned char i;
  unsigned char resultat;
  
if (touchreset())                  			
  {
	touchsend(skiprom);               		
	Delayus(2);
	touchsend(readt);                 		
	for (i=0;i<10;i++)                 				
        {
          resultat=touchreceive(); 	   		
          touchMEM[i]=resultat;     					
        }
	resultat=0;                       				
	for (i=0;i<10;i++)                 				
	resultat=resultat+touchMEM[i];	  				
	if (resultat==0) return -1;						
	else			   return 1;
  }
  else
  return -1;
}

#endif

