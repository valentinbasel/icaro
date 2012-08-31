        LIST
; P16F716.INC  Standard Header File, Version 1.01    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16F716 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16F716
;       2. LIST directive in the source file
;               LIST   P=PIC16F716
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:      Date:     Reason:

;1.00   16 Apr 2003  Initial Release
;1.01   30 Apr 2003  Added references for backward compatibility to PIC16C716

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16F716
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
DATACCP                      EQU     H'0006' ; C712/C716 compatibility

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
PWM1CON                      EQU     H'0018'
ECCPAS                       EQU     H'0019'
ADRES                        EQU     H'001E'
ADCON0                       EQU     H'001F'

OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
TRISCP                       EQU     H'0086' ; C712/C716 compatibility

PIE1                         EQU     H'008C'
PCON                         EQU     H'008E'
PR2                          EQU     H'0092'
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

;----- PORTB Bits --------------------------------------------------------

DCCP                         EQU     H'0003' ; C712/C716 compatibility     
DT1CK                        EQU     H'0001' ; C712/C716 compatibility

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
CCP1IF                       EQU     H'0002'
TMR2IF                       EQU     H'0001'
TMR1IF                       EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------

T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
T1SYNC                       EQU     H'0002'
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


;----- CCP1CON Bits -------------------------------------------------------

P1M1                         EQU     H'0007'
P1M0                         EQU     H'0006'
DC1B1                        EQU     H'0005'
DC1B0                        EQU     H'0004'
CCP1M3                       EQU     H'0003'
CCP1M2                       EQU     H'0002'
CCP1M1                       EQU     H'0001'
CCP1M0                       EQU     H'0000'

;----- PWM1CON Bits -------------------------------------------------------

PRSEN                        EQU     H'0007'
PDC6                         EQU     H'0006'
PDC5                         EQU     H'0005'
PDC4                         EQU     H'0004'
PDC3                         EQU     H'0003'
PDC2                         EQU     H'0002'
PDC1                         EQU     H'0001'
PDC0                         EQU     H'0000'

;----- ECCPAS Bits --------------------------------------------------------

ECCPASE                      EQU     H'0007'
ECCPAS1                      EQU     H'0005'
ECCPAS0                      EQU     H'0004'
PSSAC1                       EQU     H'0003'
PSSAC0                       EQU     H'0002'
PSSBD1                       EQU     H'0001'
PSSBD0                       EQU     H'0000'


;----- ADCON0 Bits --------------------------------------------------------

ADCS1                        EQU     H'0007'
ADCS0                        EQU     H'0006'
CHS2                         EQU     H'0005'
CHS1                         EQU     H'0004'
CHS0                         EQU     H'0003'
GO                           EQU     H'0002'
NOT_DONE                     EQU     H'0002'
GO_DONE                      EQU     H'0002'
ADON                         EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RBPU                     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- TRISB Bits --------------------------------------------------------


TCCP                         EQU     H'0003'
TT1CK                        EQU     H'0001'

;----- PIE1 Bits ----------------------------------------------------------

ADIE                         EQU     H'0006'
CCP1IE                       EQU     H'0002'
TMR2IE                       EQU     H'0001'
TMR1IE                       EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

NOT_POR                      EQU     H'0001'
NOT_BO                       EQU     H'0000' ; C712/C716 compatibility
NOT_BOD                      EQU     H'0000' ; C712/C716 compatibility
NOT_BOR                      EQU     H'0000'


;----- ADCON1 Bits --------------------------------------------------------

PCFG2                     EQU     H'0002'
PCFG1                     EQU     H'0001'
PCFG0                     EQU     H'0000'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'BF'
        __BADRAM H'07'-H'09', H'0D', H'13'-H'14', H'1A'-H'1D'
        __BADRAM H'87'-H'89', H'8D', H'8F'-H'91', H'93'-H'9E'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_BODEN_ON                    EQU     H'3FFF' ; C712/C716 compatibility
_BODEN_OFF                   EQU     H'3FBF' ; C712/C716 compatibility
_BOREN_ON                    EQU     H'3FFF'
_BOREN_OFF                   EQU     H'3FBF'
_VBOR_25                     EQU     H'3F7F'
_VBOR_40                     EQU     H'3FFF'
_CP_ON                       EQU     H'1FFF'
_CP_ALL                      EQU     H'1FFF' ; C712/C716 compatibility
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
