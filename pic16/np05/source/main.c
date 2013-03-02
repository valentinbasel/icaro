/*-------------------------------------------------------------------------
  main.c - Application main function

             (c) 2006 Pierre Gaufillet <pierre.gaufillet@magic.fr> 

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
-------------------------------------------------------------------------*/

// this main function was modified by Jean-pierre Mandon 2008/09/19
// this function is part of Pinguino project

#include <pic18fregs.h>
#include <macro.h>

#include "common_types.h"
#include "boot_iface.h"
#include "define.h"


#ifdef __USB__
#include "../tmp/usb.h"
#include <usb.c>
#endif

// only for compatibility with application_iface.o
#ifndef __USB__
void epap_in() { return; }
void epap_out() { return; }
void epapin_init() { return; }
void epapout_init() { return; }
#endif

/******************************************************************/

// beware : this is not a C main function, but the application
// entry point called from the boot.

#include "user.c"

void pinguino_main(void) 
{	
    PIE1=0;
    PIE2=0;
    ADCON1=0x0F;
    #ifdef __USB__
	PIE2bits.USBIE = 1;
	INTCON = 0xC0;
    #endif
    setup();
    #ifdef ANALOG
	analog_init();
    #endif
    #ifdef MILLIS
	millis_init();
    #endif
    #ifdef SERVOSLIBRARY
        servos_init();
    #endif
    #ifdef __USBCDC
    init_CDC();
	PIE2bits.USBIE = 1;
	INTCON = 0xC0;      
    #endif    
    #ifdef __SERIAL__
    INTCONbits.PEIE=1;
    INTCONbits.GIE=1;
    #endif 
    #ifdef MILLIS
	INTCONbits.TMR0IE=1;
	INTCONbits.GIE=1;
    #endif 
    #ifdef SERVOSLIBRARY
	INTCONbits.PEIE=1;
	INTCONbits.GIE=1;
    #endif
       
    while (1)
    {
	loop();
    }
}

/* Interrupt vectors */

#pragma code high_priority_isr 0x2020
void high_priority_isr(void) interrupt
{
#ifdef __USBCDC
    if(PIR2bits.USBIF)
    {
        ProcessUSBTransactions();
        UIRbits.SOFIF = 0;
        UIRbits.URSTIF = 0;
        PIR2bits.USBIF = 0;
        UEIR = 0;
    }
#endif
#ifdef __USB__
	if(PIR2bits.USBIF)
	{
	    dispatch_usb_event();
	    UIRbits.SOFIF = 0;
	    UIRbits.URSTIF = 0;
	    PIR2bits.USBIF = 0;
	    UEIR = 0;
	}
#endif
#ifdef __SERIAL__
    if (PIR1bits.RCIF) 
		serial_interrupt();
#endif
#ifdef __MILLIS__
	if (INTCONbits.TMR0IF)
		{
			INTCONbits.TMR0IF=0;
			TMR0H=0xE8;
			TMR0L=0x50;
			_millis++;
		}	
#endif
#ifdef SERVOSLIBRARY
	servos_interrupt();
#endif
#ifdef USERINT
	userinterrupt();
#endif
}

#pragma code low_priority_isr 0x4000
void low_priority_isr(void) interrupt
{
}

