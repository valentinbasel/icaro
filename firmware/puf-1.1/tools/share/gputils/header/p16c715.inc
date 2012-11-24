        LIST
; P16C715.INC  Standard Header File, Version 1.01    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16C715 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16C715
;       2. LIST directive in the source file
;               LIST   P=PIC16C715
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.01   05/12/97 Added values for Parity Enable configuration bits
;1.00   04/11/96 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16C715
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
PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'
ADRES                        EQU     H'001E'
ADCON0                       EQU     H'001F'

OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
PIE1                         EQU     H'008C'
PCON                         EQU     H'008E'
ADCON1                       EQU     H'009F'

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

ADIF                         EQU     H'0006'

;----- ADCON0 Bits --------------------------------------------------------

ADCS1                     EQU     H'0007'
ADCS0                     EQU     H'0006'
CHS2                      EQU     H'0005'
CHS1                      EQU     H'0004'
CHS0                      EQU     H'0003'
GO                        EQU     H'0002'
NOT_DONE                  EQU     H'0002'
GO_DONE                   EQU     H'0002'
ADON                      EQU     H'0000'

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

ADIE                         EQU     H'0006'

;----- PCON Bits ----------------------------------------------------------

NOT_MPE                      EQU     H'0002'
NOT_POR                      EQU     H'0001'
NOT_BO                       EQU     H'0000'
NOT_BOR                      EQU     H'0000'

;----- ADCON1 Bits --------------------------------------------------------

PCFG1                     EQU     H'0001'
PCFG0                     EQU     H'0000'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'FF'
        __BADRAM H'07'-H'09', H'0D'-H'1D'
        __BADRAM H'87'-H'89', H'8D', H'8F'-H'9E', H'C0'-H'EF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_MPEEN_ON                    EQU     H'3FFF' 
_MPEEN_OFF                   EQU     H'3F7F'
_BODEN_ON                    EQU     H'3FFF'
_BODEN_OFF                   EQU     H'3FBF'
_CP_ALL                      EQU     H'00CF'
_CP_50                       EQU     H'15DF'
_CP_OFF                      EQU     H'3FFF'
_PWRTE_OFF                   EQU     H'3FFF'
_PWRTE_ON                    EQU     H'3FF7'
_WDT_ON                      EQU     H'3FFF'
_WDT_OFF                     EQU     H'3FFB'
_LP_OSC                      EQU     H'3FFC'
_XT_OSC                      EQU     H'3FFD'
_HS_OSC                      EQU     H'3FFE'
_RC_OSC                      EQU     H'3FFF'

        LIST
