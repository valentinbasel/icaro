	LIST
; P16F5X.INC  Standard Header File, Version 4.00    Microchip Technology, Inc.
	NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the 16F5X microcontrollers.  These names are taken to match 
; the data sheets as closely as possible.  The microcontrollers included
; in this file are:

;		16F59
;		16F57
;		16F54


; There is one group of symbols that is valid for all microcontrollers.  
; Each microcontroller in this family also has its own section of special 
; symbols.  Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /P16F54
;		C:\ MPASM MYFILE.ASM /P16F57
;		C:\ MPASM MYFILE.ASM /P16F59
;       2. LIST directive in the source file
;               LIST   P=16F54
;		LIST   P=16F57
;		LIST   P=16F59
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;	   Revision History
;
;==========================================================================

;Rev:   Date:   Reason:

;1.00	12/09/03 Initial release for the PIC16F54/F57
;1.10	05/28/04 Update to add PIC16F59

;==========================================================================
;
;       Generic Definitions
;
;==========================================================================

W                            EQU     H'0000'
F                            EQU     H'0001'

;----- Register Files -----------------------------------------------------

INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FSR                          EQU     H'0004'
PORTA                        EQU     H'0005'
PORTB                        EQU     H'0006'

;----- STATUS Bits --------------------------------------------------------

PA2                          EQU     H'0007'
PA1                          EQU     H'0006'
PA0                          EQU     H'0005'
NOT_TO                       EQU     H'0004'
NOT_PD                       EQU     H'0003'
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;==========================================================================
;
;       Processor-dependent Definitions
;
;==========================================================================

        IFDEF __16F54
           __MAXRAM H'01F'
        ENDIF

;--------------------------------------------------------------------------

        IFDEF __16F57
                                                ; Register Files
PORTC                     EQU     H'0007'
           __MAXRAM H'07F'
        ENDIF

;--------------------------------------------------------------------------

        IFDEF __16F59
                                                ; Register Files
PORTC                     EQU     H'0007'
PORTD                     EQU     H'0008'
PORTE                     EQU     H'0009'
           __MAXRAM H'0FF'
        ENDIF

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================


_CP_ON                       EQU     H'0FF7'
_CP_OFF                      EQU     H'0FFF'
_WDT_ON                      EQU     H'0FFF'
_WDT_OFF                     EQU     H'0FFB'
_LP_OSC                      EQU     H'0FFC'
_XT_OSC                      EQU     H'0FFD'
_HS_OSC                      EQU     H'0FFE'
_RC_OSC                      EQU     H'0FFF'



 

	LIST
