#ifndef __STDIO_H
#include <stdio.h> // for size_t
#endif

#ifndef __STDLIB_H__
#include <stdlib.h>
#endif

#pragma library c

#define DEC 10
#define HEX 16
#define OCT 8
#define BIN 2
#define BYTE 0

// run led pin
#define RUNLED PORTAbits.RA4

// commands
#define LCD_CLEARDISPLAY 0x01
#define LCD_RETURNHOME 0x02
#define LCD_ENTRYMODESET 0x04
#define LCD_DISPLAYCONTROL 0x08
#define LCD_CURSORSHIFT 0x10
#define LCD_FUNCTIONSET 0x20
#define LCD_SETCGRAMADDR 0x40
#define LCD_SETDDRAMADDR 0x80

// flags for display entry mode
#define LCD_ENTRYRIGHT 0x00
#define LCD_ENTRYLEFT 0x02
#define LCD_ENTRYSHIFTINCREMENT 0x01
#define LCD_ENTRYSHIFTDECREMENT 0x00

// flags for display on/off control
#define LCD_DISPLAYON 0x04
#define LCD_DISPLAYOFF 0x00
#define LCD_CURSORON 0x02
#define LCD_CURSOROFF 0x00
#define LCD_BLINKON 0x01
#define LCD_BLINKOFF 0x00

// flags for display/cursor shift
#define LCD_DISPLAYMOVE 0x08
#define LCD_CURSORMOVE 0x00
#define LCD_MOVERIGHT 0x04
#define LCD_MOVELEFT 0x00

// flags for function set
#define LCD_8BITMODE 0x10
#define LCD_4BITMODE 0x00
#define LCD_2LINE 0x08
#define LCD_1LINE 0x00
#define LCD_5x10DOTS 0x04
#define LCD_5x8DOTS 0x00

uint8_t _rs_pin = 8; // LOW: command.  HIGH: character.
uint8_t _rw_pin = -1; // LOW: write to LCD.  HIGH: read from LCD.
uint8_t _enable_pin = 9; // activated by a HIGH pulse.
uint8_t _data_pins[8];

uint8_t _displayfunction;
uint8_t _displaycontrol;
uint8_t _displaymode;

uint8_t _initialized;

uint8_t _numlines,_currline;

void lcd(uint8_t rs, uint8_t enable, uint8_t d0, uint8_t d1, uint8_t d2, uint8_t d3, 
			uint8_t d4, uint8_t d5, uint8_t d6, uint8_t d7);
void init(uint8_t fourbitmode, uint8_t rs, uint8_t rw, uint8_t enable, 
			uint8_t d0, uint8_t d1, uint8_t d2, uint8_t d3,
			uint8_t d4, uint8_t d5, uint8_t d6, uint8_t d7);
void begin(uint8_t lines, uint8_t dotsize);
void noAutoscroll(void);
void autoscroll(void);
void rightToLeft(void);
void leftToRight(void);
void scrollDisplayRight(void);
void scrollDisplayLeft(void);
void blink();
void noBlink();
void cursor();
void noCursor();
void display();
void noDisplay();
void clear();
void home();
void printNumber(unsigned long n, uint8_t base);
void printFloat(float number, uint8_t digits);
void lcdPrint(char *string);
void setCursor(uint8_t col, uint8_t row);
void command(uchar value);
void write(uchar value);
void send(uint8_t value, uint8_t mode);
void write8bits(uint8_t value);
void write4bits(uint8_t value);
void pulseEnable(void);
