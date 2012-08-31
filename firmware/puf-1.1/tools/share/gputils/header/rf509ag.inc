	LIST
; RF509AG.INC  Standard Header File, Version 1.00    Microchip Technology, Inc.
	NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the rfPIC12C509AG microcontroller.  These names are taken to
;  match the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /p=RF509AG
;       2. LIST directive in the source file
;               LIST   P=RF509AG
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;	   Revision History
;
;==========================================================================

;Rev:   Date:    Reason:
;1.01   09/18/01 Shortened processor name to RF509AG for COD format    (pas)
;1.00   08/31/01 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __RF509AG
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
GPIO                         EQU     H'0006'

;----- STATUS Bits --------------------------------------------------------

GPWUF                        EQU     H'0007'
PA0                          EQU     H'0005'
NOT_TO                       EQU     H'0004'
NOT_PD                       EQU     H'0003'
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_GPWU                     EQU     H'0007'
NOT_GPPU                     EQU     H'0006'
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
OSCFST                       EQU     H'0003'
CAL1                         EQU     H'0003'
OSCSLW                       EQU     H'0002'
CAL0                         EQU     H'0002'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'3F'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_MCLRE_ON                    EQU     H'0FFF'
_MCLRE_OFF                   EQU     H'0FEF'
_CP_ON                       EQU     H'0FF7'
_CP_OFF                      EQU     H'0FFF'
_WDT_ON                      EQU     H'0FFF'
_WDT_OFF                     EQU     H'0FFB'
_LP_OSC                      EQU     H'0FFC'
_XT_OSC                      EQU     H'0FFD'
_IntRC_OSC                   EQU     H'0FFE'
_ExtRC_OSC                   EQU     H'0FFF'

	LIST
