	LIST
; P16C505.INC  Standard Header File, Version 1.10    Microchip Technology, Inc.
	NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16C505 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /P16C505
;       2. LIST directive in the source file
;               LIST   P=16C505
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;	   Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   03/01/98 Initial Release
;1.10   13Aug2001 Fixed MAXRAM definition

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16C505
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;
;       Register Definitions
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
OSCCAL                       EQU     H'0005'
PORTB                        EQU     H'0006'
PORTC                        EQU     H'0007'

;----- STATUS Bits --------------------------------------------------------

RBWUF                        EQU     H'0007'
PA0                          EQU     H'0005'
NOT_TO                       EQU     H'0004'
NOT_PD                       EQU     H'0003'
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RBWU                     EQU     H'0007'
NOT_RBPU                     EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- OSCCAL Bits --------------------------------------------------------

CAL5                         EQU     H'0007'                            
CAL4                         EQU     H'0006'
CAL3                         EQU     H'0005'
CAL2                         EQU     H'0004'
CAL1                         EQU     H'0003'
CAL0                         EQU     H'0002'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'7F'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_MCLRE_ON                    EQU     H'0FFF'
_MCLRE_OFF                   EQU     H'0FDF'
_CP_ON                       EQU     H'002F'
_CP_OFF                      EQU     H'0FFF'
_WDT_ON                      EQU     H'0FFF'
_WDT_OFF                     EQU     H'0FF7'
_LP_OSC                      EQU     H'0FF8'
_XT_OSC                      EQU     H'0FF9'
_HS_OSC                      EQU     H'0FFA'
_IntRC_OSC_RB4EN             EQU     H'0FFC'
_IntRC_OSC_CLKOUTEN          EQU     H'0FFD'
_ExtRC_OSC_RB4EN             EQU     H'0FFE'
_ExtRC_OSC_CLKOUTEN          EQU     H'0FFF'

	LIST
