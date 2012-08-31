        LIST
; P16C642.INC  Standard Header File, Version 1.01    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16C642 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16C642
;       2. LIST directive in the source file
;               LIST   P=PIC16C642
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   11/12/96 Initial Release
;1.01   12/18/96 Modified per review

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16C642
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                            EQU     H'0000'
F                            EQU     H'0001'

;----- Register Files------------------------------------------------------

INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FSR                          EQU     H'0004'
PORTA                        EQU     H'0005'
PORTB                        EQU     H'0006'
PORTC					     EQU     H'0007'

PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'

CMCON                        EQU     H'001F'

OPTION_REG                   EQU     H'0081'

TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
TRISC					     EQU     H'0087'

PIE1                         EQU     H'008C'

PCON                         EQU     H'008E'

VRCON                        EQU     H'009F'

;----- STATUS Bits --------------------------------------------------------

IRP                          EQU     H'0007'
RP1                          EQU     H'0006'
RP0                          EQU     H'0005'
NOT_TO                       EQU     H'0004'
NOT_PD                       EQU     H'0003'
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- INTCON Bits --------------------------------------------------------

GIE                          EQU     H'0007'
PEIE                         EQU     H'0006'
T0IE                         EQU     H'0005'
INTE                         EQU     H'0004'
RBIE                         EQU     H'0003'
T0IF                         EQU     H'0002'
INTF                         EQU     H'0001'
RBIF                         EQU     H'0000'

;----- PIR1 Bits ----------------------------------------------------------

CMIF                         EQU     H'0006'

;----- CMCON Bits ---------------------------------------------------------

C2OUT                        EQU     H'0007'
C1OUT                        EQU     H'0006'
CIS                          EQU     H'0003'
CM2                          EQU     H'0002'
CM1                          EQU     H'0001'
CM0                          EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RBPU                     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- PIE1 Bits ----------------------------------------------------------

CMIE                         EQU     H'0006'

;----- PCON Bits ----------------------------------------------------------

MPEEN			             EQU     H'0007'
NOT_PER                      EQU     H'0002'
NOT_POR                      EQU     H'0001'
NOT_BO                       EQU     H'0000'
NOT_BOR                      EQU     H'0000'

;----- VRCON Bits ---------------------------------------------------------

VREN                         EQU     H'0007'
VROE                         EQU     H'0006'
VRR                          EQU     H'0005'
VR3                          EQU     H'0003'
VR2                          EQU     H'0002'
VR1                          EQU     H'0001'
VR0                          EQU     H'0000'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'FF'
		__BADRAM H'08', H'09', H'88', H'89'
        __BADRAM H'0D'-H'1E', H'8D', H'8F'-H'9E'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_CP_ALL                      EQU     H'00CF'
_CP_75                       EQU     H'15DF'
_CP_50                       EQU     H'2AEF'
_CP_OFF                      EQU     H'3FFF'

_LP_OSC                      EQU     H'3FFC'
_XT_OSC                      EQU     H'3FFD'
_HS_OSC                      EQU     H'3FFE'
_RC_OSC                      EQU     H'3FFF'

_WDT_ON                      EQU     H'3FFF'
_WDT_OFF                     EQU     H'3FFB'

_PWRTE_OFF                   EQU     H'3FFF'
_PWRTE_ON                    EQU     H'3FF7'

_BODEN_ON                    EQU     H'3FFF'
_BODEN_OFF                   EQU     H'3FBF'

_MPEEN_ON				     EQU     H'3FFF'
_MPEEN_OFF                   EQU     H'3F7F'

        LIST
