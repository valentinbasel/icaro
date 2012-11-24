/**	----------------------------------------------------------------------------
	---------- mymacro.h
	--------------------------------------------------------------------------**/

#ifndef __MYMACRO
	#define __MYMACRO

	/// ASM

	#define nop()			{_asm nop _endasm;}
	#define clrwdt()		{_asm clrwdt _endasm;}
	#define reset()			{_asm reset _endasm;}
	#define sleep()			{OSCCONbits.IDLEN = 0;\
					_asm sleep _endasm;}

	/// C

	#define NoEndLoop	while(1)

	/// BYTES

	#define high8(x)		(unsigned char) (x >> 8)
	#define low8(x)			(unsigned char) (x & 0xFF)

	/// BITWISE OPERATION

	#define BIN_BIT(value, bit, dec) \
		(((((unsigned long)(value##.0))/dec)&1 == 1)? (1<<bit) : 0)

	#define Bin(value) \
	(	BIN_BIT(value,  0, 1) | \
		BIN_BIT(value,  1, 10) | \
		BIN_BIT(value,  2, 100) | \
		BIN_BIT(value,  3, 1000) | \
		BIN_BIT(value,  4, 10000) | \
		BIN_BIT(value,  5, 100000) | \
		BIN_BIT(value,  6, 1000000) | \
		BIN_BIT(value,  7, 10000000))

	// Read bit #n from octet
	#define BitRead(octet, n) \
		(octet >> n & 1)

	// Set (1) bit #n from octet
	#define BitSet(octet, n) \
		(octet | (1 << n))

	// Clear (0) bit #n from octet
	#define BitClear(octet, n) \
		(octet & !(1 << n))

#endif
