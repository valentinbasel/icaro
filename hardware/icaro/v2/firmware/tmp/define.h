#define INPUT 1
#define OUTPUT 0
#define HIGH 1
#define LOW 0
#define DEC 1
#define BYTE 2
#define HEX 3
#define OCTAL 4
#define BIN 5
#define FOSC 48000000
#define MIPS (FOSC/4)
#define ON 1
#define OFF 0
#define TRUE 1
#define FALSE 0
typedef unsigned char byte;
typedef unsigned int  word;
typedef unsigned long dword;
#define PIC18F4550
// el tema es que si agrego __cdc.c la placa solo funciona si esta conectada al usb (espera una conexion usb y no arranca).

//#include <__cdc.c>

#include <digitalw.c>

#include <servos.c>

#include <analog.c>

#include <arduinodelay.c>

#include <pwm.c>
