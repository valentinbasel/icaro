        LIST
; P16C782.INC  Standard Header File, Version 1.00    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16C782 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16C782
;       2. LIST directive in the source file
;               LIST   P=PIC16C782
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   16May2001 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16C782
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
ADRES                        EQU     H'001E'
ADCON0                       EQU     H'001F'

OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
PIE1                         EQU     H'008C'
PCON                         EQU     H'008E'
WPUB			     EQU     H'0095'
IOCB                         EQU     H'0096'
REFCON                       EQU     H'009B'
LVDCON                       EQU     H'009C'
ANSEL                        EQU     H'009D'
ADCON1                       EQU     H'009F'

PMDATL                       EQU     H'010C'
PMADRL                       EQU     H'010D'
PMDATH                       EQU     H'010E'
PMADRH                       EQU     H'010F'
CALCON                       EQU     H'0110'
PSMCCON0                     EQU     H'0111'
PSMCCON1                     EQU     H'0112'
CM1CON0                      EQU     H'0119'
CM2CON0                      EQU     H'011A'
CM2CON1                      EQU     H'011B'
OPACON                       EQU     H'011C'
DAC                          EQU     H'011E'
DACON0                       EQU     H'011F'

PMCON1                       EQU     H'018C'

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

LVDIF                        EQU     H'0007'
ADIF                         EQU     H'0006'
C2IF                         EQU     H'0005'
C1IF                         EQU     H'0004'
TMR1IF                       EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------

TMR1GE                       EQU     H'0006'
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
T1INSYNC                     EQU     H'0002'    ; Backward compatibility only
TMR1CS                       EQU     H'0001'
TMR1ON                       EQU     H'0000'

;----- ADCON0 Bits --------------------------------------------------------

ADCS1                        EQU     H'0007'
ADCS0                        EQU     H'0006'
CHS2                         EQU     H'0005'
CHS1                         EQU     H'0004'
CHS0                         EQU     H'0003'
GO                           EQU     H'0002'
NOT_DONE                     EQU     H'0002'
GO_DONE                      EQU     H'0002'
CHS3                         EQU     H'0001'
ADON                         EQU     H'0000'

;----- OPTION_REG Bits ----------------------------------------------------

NOT_RBPU                     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- PIE1 Bits ----------------------------------------------------------

LVDIE                        EQU     H'0007'
ADIE                         EQU     H'0006'
C2IE                         EQU     H'0005'
C1IE                         EQU     H'0004'
TMR1IE                       EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

WDTON                        EQU     H'0004'
OSCF                         EQU     H'0003'
NOT_POR                      EQU     H'0001'
NOT_BO                       EQU     H'0000'
NOT_BOR                      EQU     H'0000'

;----- REFCON Bits --------------------------------------------------------

VREFEN                       EQU     H'0003'
VREFOE                       EQU     H'0002'

;----- LVDCON Bits --------------------------------------------------------

BGST                         EQU     H'0005'
LVDEN                        EQU     H'0004'
LV3                          EQU     H'0003'
LV2                          EQU     H'0002'
LV1                          EQU     H'0001'
LV0                          EQU     H'0000'

;----- ADCON1 Bits --------------------------------------------------------

VCFG1                        EQU     H'0005'
VCFG0                        EQU     H'0004'

;----- CALCON Bits --------------------------------------------------------

CAL                          EQU     H'0007'
CALERR                       EQU     H'0006'
CALREF                       EQU     H'0005'

;----- PSMCCON0 Bits ------------------------------------------------------

SMCCL1                       EQU     H'0007'
SMCCL0                       EQU     H'0006'
MINDC1                       EQU     H'0005'
MINDC0                       EQU     H'0004'
MAXDC1                       EQU     H'0003'
MAXDC0                       EQU     H'0002'
DC1                          EQU     H'0001'
DC0                          EQU     H'0000'

;----- PSMCCON1 Bits ------------------------------------------------------

SMCON                        EQU     H'0007'
S1APOL                       EQU     H'0006'
S1BPOL                       EQU     H'0005'
SCEN                         EQU     H'0003'
SMCOM                        EQU     H'0002'
PWM                          EQU     H'0001'
PSM                          EQU     H'0001'
NOT_PSM                      EQU     H'0001'
SMCCS                        EQU     H'0000'

;----- CM1CON0 Bits ------------------------------------------------------

C1ON                         EQU     H'0007'
C1OUT                        EQU     H'0006'
C1OE                         EQU     H'0005'
C1POL                        EQU     H'0004'
C1SP                         EQU     H'0003'
C1R                          EQU     H'0002'
C1CH1                        EQU     H'0001'
C1CH0                        EQU     H'0000'

;----- CM2CON0 Bits ------------------------------------------------------

C2ON                         EQU     H'0007'
C2OUT                        EQU     H'0006'
C2OE                         EQU     H'0005'
C2POL                        EQU     H'0004'
C2SP                         EQU     H'0003'
C2R                          EQU     H'0002'
C2CH1                        EQU     H'0001'
C2CH0                        EQU     H'0000'

;----- CM2CON1 Bits ------------------------------------------------------

MC1OUT                       EQU     H'0007'
MC2OUT                       EQU     H'0006'
C2SYNC                       EQU     H'0000'

;----- OPACON Bits -------------------------------------------------------

OPAON                        EQU     H'0007'
CMPEN                        EQU     H'0006'
GBWP                         EQU     H'0000'

;----- DACON Bits --------------------------------------------------------

DAON                         EQU     H'0007'
DAOE                         EQU     H'0006'
DARS1                        EQU     H'0001'
DARS0                        EQU     H'0000'

;----- PMCON1 Bits -------------------------------------------------------

RD                           EQU     H'0000'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1FF'
	__BADRAM H'07'-H'09', H'0D', H'11'-H'1D'
	__BADRAM H'87'-H'89', H'8D'
        __BADRAM H'8F'-H'94', H'97'-H'9A', H'9E', H'C0'-H'EF'
        __BADRAM H'105', H'107'-H'109', H'113'-H'118'
        __BADRAM H'11D', H'120'-H'16F'
        __BADRAM H'185', H'187'-H'189', H'18D'-H'1EF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_BODEN_ON                    EQU     H'3FFF'
_BODEN_OFF                   EQU     H'3FBF'
_CP_ALL                      EQU     H'0CFF'
_CP_OFF                      EQU     H'3FFF'
_VBOR_25                     EQU     H'3FFF'
_VBOR_27                     EQU     H'3BFF'
_VBOR_42                     EQU     H'37FF'
_VBOR_45                     EQU     H'33FF'
_PWRTE_OFF                   EQU     H'3FFF'
_PWRTE_ON                    EQU     H'3FEF'
_MCLRE_OFF                   EQU     H'3FDF'
_MCLRE_ON                    EQU     H'3FFF'
_WDT_ON                      EQU     H'3FFF'
_WDT_OFF                     EQU     H'3FF7'
_ER_OSC_CLKOUT               EQU     H'3FFF'
_ER_OSC_NOCLKOUT             EQU     H'3FFE'
_INTRC_OSC_CLKOUT            EQU     H'3FFD'
_INTRC_OSC_NOCLKOUT          EQU     H'3FFC'
_EXTCLK_OSC                  EQU     H'3FFB'
_HS_OSC                      EQU     H'3FFA'
_XT_OSC                      EQU     H'3FF9'
_LP_OSC                      EQU     H'3FF8'

        LIST
