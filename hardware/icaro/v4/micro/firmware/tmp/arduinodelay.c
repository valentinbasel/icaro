
#ifndef __ARDDELAY__
#define __ARDDELAY__

#ifndef __DELAY_H__
#include <delay.h>
#endif

void Delayms(unsigned long milliseconde)
{
	unsigned long i;
	
	for (i=0;i<milliseconde;i++) delay10ktcy(1);
}

void Delayus(int microsecondes)
{
	unsigned int i;
	
	for (i=0;i<microsecondes;i++);
}

#endif
