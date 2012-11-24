	LIST
; P16HV540.INC  Standard Header File, Version 4.00    Microchip Technology, Inc.
	NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the 16HV540 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.
; There is one group of symbols that is valid for all microcontrollers.  
; Each microcontroller in this family also has its own section of special 
; symbols.  Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /P16HV540
;       2. LIST directive in the source file
;               LIST   P=16HV540
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;	   Revision History
;
;==========================================================================

;Rev:   Date:   Reason:

;1.00	10 Feb 1999  initial release.

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

PCF                          EQU     H'0007'
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

;----- OPTION2 Bits --------------------------------------------------------

WPC                          EQU     H'0005'
SWE                          EQU     H'0004'
RL                           EQU     H'0003'
SL                           EQU     H'0002'
BL                           EQU     H'0001'
BE                           EQU     H'0000'


           __MAXRAM H'01F'


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
