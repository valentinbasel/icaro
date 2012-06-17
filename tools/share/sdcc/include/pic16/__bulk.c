// cdc module for Pinguino
// Jean-Pierre Mandon 2010

#ifndef __USBBULK
#define __USBBULK

#define USB_USE_BULK
//#define BULKDEBUG

#include <usb/usb_bulk.h>
#include <usb/usb_config.c>
#include <usb/picUSB.c>
#include <usb/usb_bulk.c>
#include <arduinodelay.c>
#ifdef BULKDEBUG
#include <uart18f2550.c>
#endif

void init_bulk()
{
	#ifdef BULKDEBUG
	serial_begin(9600);
	#endif
	INTCON=0;
	INTCON2=0xC0;
	UCON=0;
	UCFG=0;
	UEP0=0;UEP1=0;UEP2=0;UEP3=0;UEP4=0;UEP5=0;
	UEP6=0;UEP7=0;UEP8=0;UEP9=0;UEP10=0;UEP11=0;
	UEP12=0;UEP13=0;UEP14=0;UEP15=0;
	// and wait 5 seconds
	Delayms(2000);
	// Initialize USB for CDC
	UCFG = 0x14; 				// Enable pullup resistors; full speed mode
	deviceState = DETACHED;
	remoteWakeup = 0x00;
	currentConfiguration = 0x00;
	// And enable USB module
	while(deviceState != CONFIGURED)
	{
	  EnableUSBModule();
	  ProcessUSBTransactions();
	}
}

#endif
