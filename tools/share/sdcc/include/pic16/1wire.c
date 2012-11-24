/**	----------------------------------------------------------------------------
	---------- my1wire.c
	----------------------------------------------------------------------------
	---------- Author			: R. Blanchot <rblanchot@gmail.com>
	---------- First release	:
	---------- Last  update 	: 28 septembre 2010
	---------- Description  	: One wire (1-wire) driver suitable for use with
								  devices such as :
									- the DS18B20 1-wire digital temperature sensor.
	---------- Compilateur		: SDCC 2.9.0
	---------- Dev.Board		: Pinguino
	---------- Dev.Envt			: Pinguino IDE beta 9.2
	---------- Bootloader		: bootloaderV2.12.hex or bootloaderARDE.hex
	---------- Programmer		: PUF/Docker
	---------- MCU				: PIC18F2550
	---------- Oscillator		: 20.0000 MHz - Fosc = 48 MHz
	---------- Transfer			: docker -v04d8 write firmware.hex
	----------------------------------------------------------------------------
	this file is based on Maxim AN162 and Microchip AN1199
	--------------------------------------------------------------------------*/

#ifndef __ONEWIRE_C
	#define __ONEWIRE_C

	#include <macro.h>
	#include <arduinodelay.c>
	#include <digitalw.c>

	// private
	static void OneWire_low(u8);
	static void OneWire_high(u8);
	// public
	u8 OneWireReset(u8);
	u8 OneWireReadBit(u8);
	void OneWireWriteBit(u8, u8);
	u8 OneWireReadByte(u8);
	void OneWireWriteByte(u8, u8);

/**	----------------------------------------------------------------------------
	---------- Force the DQ line to a logic low
	--------------------------------------------------------------------------*/

	static void OneWire_low(u8 DQpin)
	{
		digitalwrite(DQpin, LOW);
		pinmode(DQpin, OUTPUT);
	}

/**	----------------------------------------------------------------------------
	---------- Force the DQ line into a high impedance state
	--------------------------------------------------------------------------*/

	static void OneWire_high(u8 DQpin)
	{
		pinmode(DQpin, INPUT);
	}

/**	----------------------------------------------------------------------------
	---------- Initiates the one wire bus
	----------------------------------------------------------------------------
	Performs a reset on the one-wire bus and returns the presence detect.
	Reset is 2*480us long, presence checked another 60us later.
	returns 0=presence, 1=no part
	--------------------------------------------------------------------------*/

	u8 OneWireReset(u8 DQpin)
	{
		u8 presence;

		OneWire_low(DQpin);			// pull DQ line low
		Delayus(480);				// leave it low for min. 480us
		OneWire_high(DQpin);			// allow line to return high
		Delayus(60);				// takes 15 to 60 us
		presence = digitalread(DQpin);	// get presence signal
		Delayus(420);				// wait for end of timeslot (960-480-60=420)
		return (presence);
	}

/**	----------------------------------------------------------------------------
	---------- Read a bit from the one-wire bus and return it.
	--------------------------------------------------------------------------*/

	u8 OneWireReadBit(u8 DQpin)
	{
		u8 dq;

		OneWire_low(DQpin);			// pull DQ line low to start time slot
		//myDelay_us(1);				// 1us
		OneWire_high(DQpin);			// allow line to return high
		//myDelay_us(5);					// Read within 15uS from start of time slot
		dq = digitalread(DQpin);		// get presence signal
		Delayus(50);				// wait for rest of timeslot
		return (dq);					// return value of DQ line
	}

/**	----------------------------------------------------------------------------
	---------- Read a byte from the one-wire bus and return it.
	--------------------------------------------------------------------------*/

	u8 OneWireRead(u8 DQpin)
	{
		u8 i, value = 0;
		for (i=0; i<8; i++)
		{
			if (OneWireReadBit(DQpin))	// reads byte in, one bit at a time
			{
				value |= 0x01 << i;			// and then shifts it left
			}
		}
		return(value);
	}

/**	----------------------------------------------------------------------------
	---------- Writes a bit to the one-wire bus, passed in bitval.
	--------------------------------------------------------------------------*/

	void OneWireWriteBit(u8 DQpin, u8 bitval)
	{
		if(bitval == 1)
		{
			OneWire_low(DQpin);				// pull DQ line low
			//myDelay_us(5);					// for max. 15us
			OneWire_high(DQpin);				// allow line to return high
			Delayus(60);
		}
		else
		{
			OneWire_low(DQpin);				// pull DQ line low
			Delayus(60);					// for the whole time slot
			OneWire_high(DQpin);				// allow line to return high
		}
	}

/**	----------------------------------------------------------------------------
	---------- Writes a byte to the one-wire bus.
	--------------------------------------------------------------------------*/

	void OneWireWrite(u8 DQpin, u8 val)
	{
		u8 i, temp;
		for (i=0; i<8; i++)					// writes byte, one bit at a time
		{
			temp = val >> i;				// shifts val right 'i' spaces
			temp &= 0x01;					// copy that bit to temp
			OneWireWriteBit(DQpin, temp);	// write bit in temp into
		}
	}

#endif
