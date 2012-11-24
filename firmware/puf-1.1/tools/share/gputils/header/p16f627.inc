        LIST
; P16F627.INC  Standard Header File, Version 1.01    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16F627 microcontroller.  These names are taken to match
; the data sheets as closely as possible.

; Note that the processor must be selected before this file is
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16F627
;       2. LIST directive in the source file
;               LIST   P=PIC16F627
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:
;1.01   13 Sept 2001   Added _DATA_CP_ON and _DATA_CP_OFF
;1.00   10 Feb 1999 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16F627
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
TMR1L                        EQU     H'000E'
TMR1H                        EQU     H'000F'
T1CON                        EQU     H'0010'
TMR2                         EQU     H'0011'
T2CON                        EQU     H'0012'
CCPR1L                       EQU     H'0015'
CCPR1H                       EQU     H'0016'
CCP1CON                      EQU     H'0017'
RCSTA                        EQU     H'0018'
TXREG                        EQU     H'0019'
RCREG                        EQU     H'001A'
CMCON                        EQU     H'001F'

OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
PIE1                         EQU     H'008C'
PCON                         EQU     H'008E'
PR2                          EQU     H'0092'
TXSTA                        EQU     H'0098'
SPBRG                        EQU     H'0099'
EEDATA                       EQU     H'009A'
EEADR                        EQU     H'009B'
EECON1                       EQU     H'009C'
EECON2                       EQU     H'009D'
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

EEIF                         EQU     H'0007'
CMIF                         EQU     H'0006'
RCIF                         EQU     H'0005'
TXIF                         EQU     H'0004'
CCP1IF                       EQU     H'0002'
TMR2IF                       EQU     H'0001'
TMR1IF                       EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
TMR1CS                       EQU     H'0001'
TMR1ON                       EQU     H'0000'

;----- T2CON Bits ---------------------------------------------------------
TOUTPS3                      EQU     H'0006'
TOUTPS2                      EQU     H'0005'
TOUTPS1                      EQU     H'0004'
TOUTPS0                      EQU     H'0003'
TMR2ON                       EQU     H'0002'
T2CKPS1                      EQU     H'0001'
T2CKPS0                      EQU     H'0000'

;----- CCP1CON Bits ---------------------------------------------------------
CCP1X                        EQU     H'0005'
CCP1Y                        EQU     H'0004'
CCP1M3                       EQU     H'0003'
CCP1M2                       EQU     H'0002'
CCP1M1                       EQU     H'0001'
CCP1M0                       EQU     H'0000'

;----- RCSTA Bits ---------------------------------------------------------
SPEN                         EQU     H'0007'
RX9                          EQU     H'0006'
SREN                         EQU     H'0005'
CREN                         EQU     H'0004'
ADEN                         EQU     H'0003'
FERR                         EQU     H'0002'
OERR                         EQU     H'0001'
RX9D                         EQU     H'0000'

;----- CMCON Bits ---------------------------------------------------------

C2OUT                        EQU     H'0007'
C1OUT                        EQU     H'0006'
C2INV                        EQU     H'0005'
C1INV                        EQU     H'0004'
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

EEIE                         EQU     H'0007'
CMIE                         EQU     H'0006'
RCIE                         EQU     H'0005'
TXIE                         EQU     H'0004'
CCP1IE                       EQU     H'0002'
TMR2IE                       EQU     H'0001'
TMR1IE                       EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

OSCF                         EQU     H'0003'
NOT_POR                      EQU     H'0001'
NOT_BO                       EQU     H'0000'
NOT_BOR                      EQU     H'0000'
NOT_BOD                      EQU     H'0000'

;----- TXSTA Bits ----------------------------------------------------------
CSRC                         EQU     H'0007'
TX9                          EQU     H'0006'
TXEN                         EQU     H'0005'
SYNC                         EQU     H'0004'
BRGH                         EQU     H'0002'
TRMT                         EQU     H'0001'
TX9D                         EQU     H'0000'

;----- EECON1 Bits ---------------------------------------------------------
WRERR                        EQU     H'0003'
WREN                         EQU     H'0002'
WR                           EQU     H'0001'
RD                           EQU     H'0000'

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

    __MAXRAM H'01FF'
    __BADRAM H'07'-H'09', H'0D', H'13'-H'14', H'1B'-H'1E'
    __BADRAM H'87'-H'89', H'8D', H'8F'-H'91', H'93'-H'97', H'9E'
    __BADRAM H'105', H'107'-H'109', H'10C'-H'11F', H'150'-H'16F'
    __BADRAM H'185', H'187'-H'189', H'18C'-H'1EF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_BODEN_ON                    EQU     H'3FFF'
_BODEN_OFF                   EQU     H'3FBF'
_CP_ALL                      EQU     H'03FF'
_CP_75                       EQU     H'17FF'
_CP_50                       EQU     H'2BFF'
_CP_OFF                      EQU     H'3FFF'
_DATA_CP_ON                  EQU     H'3EFF'
_DATA_CP_OFF                 EQU     H'3FFF'
_PWRTE_OFF                   EQU     H'3FFF'
_PWRTE_ON                    EQU     H'3FF7'
_WDT_ON                      EQU     H'3FFF'
_WDT_OFF                     EQU     H'3FFB'
_LVP_ON                      EQU     H'3FFF'
_LVP_OFF                     EQU     H'3F7F'
_MCLRE_ON                    EQU     H'3FFF'
_MCLRE_OFF                   EQU     H'3FDF'
_ER_OSC_CLKOUT               EQU     H'3FFF'
_ER_OSC_NOCLKOUT             EQU     H'3FFE'
_INTRC_OSC_CLKOUT            EQU     H'3FFD'
_INTRC_OSC_NOCLKOUT          EQU     H'3FFC'
_EXTCLK_OSC                  EQU     H'3FEF'
_LP_OSC                      EQU     H'3FEC'
_XT_OSC                      EQU     H'3FED'
_HS_OSC                      EQU     H'3FEE'

        LIST
