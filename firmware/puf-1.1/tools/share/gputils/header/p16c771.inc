        LIST
; P16C771.INC  Standard Header File, Version 1.00    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16C771 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16C771
;       2. LIST directive in the source file
;               LIST   P=PIC16C771
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   14Sep1999 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16C771
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
PIR2                         EQU     H'000D'
TMR1L                        EQU     H'000E'
TMR1H                        EQU     H'000F'
T1CON                        EQU     H'0010'
TMR2                         EQU     H'0011'
T2CON                        EQU     H'0012'
SSPBUF                       EQU     H'0013'
SSPCON                       EQU     H'0014'
CCPR1L                       EQU     H'0015'
CCPR1H                       EQU     H'0016'
CCP1CON                      EQU     H'0017'
ADRESH                       EQU     H'001E'
ADCON0                       EQU     H'001F'

OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
PIE1                         EQU     H'008C'
PIE2                         EQU     H'008D'
PCON                         EQU     H'008E'
SSPCON2                      EQU     H'0091'
PR2                          EQU     H'0092'
SSPADD                       EQU     H'0093'
SSPSTAT                      EQU     H'0094'
WPUB			     EQU     H'0095'
IOCB                         EQU     H'0096'
P1DEL                        EQU     H'0097'
REFCON                       EQU     H'009B'
LVDCON                       EQU     H'009C'
ANSEL                        EQU     H'009D'
ADRESL                       EQU     H'009E'
ADCON1                       EQU     H'009F'

PMDATL                       EQU     H'010C'
PMADRL                       EQU     H'010D'
PMDATH                       EQU     H'010E'
PMADRH                       EQU     H'010F'

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

ADIF                         EQU     H'0006'
SSPIF                        EQU     H'0003'
CCP1IF                       EQU     H'0002'
TMR2IF                       EQU     H'0001'
TMR1IF                       EQU     H'0000'

;----- PIR2 Bits ----------------------------------------------------------

LVDIF                        EQU     H'0007'
BCLIF                        EQU     H'0003'

;----- T1CON Bits ---------------------------------------------------------

T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
T1INSYNC                     EQU     H'0002'    ; Backward compatibility only
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

;----- SSPCON Bits --------------------------------------------------------

WCOL                         EQU     H'0007'
SSPOV                        EQU     H'0006'
SSPEN                        EQU     H'0005'
CKP                          EQU     H'0004'
SSPM3                        EQU     H'0003'
SSPM2                        EQU     H'0002'
SSPM1                        EQU     H'0001'
SSPM0                        EQU     H'0000'

;----- CCP1CON Bits -------------------------------------------------------

PWM1M1                       EQU     H'0007'
PWM1M0                       EQU     H'0006'
DC1B1                        EQU     H'0005'
DC1B0                        EQU     H'0004'
CCP1M3                       EQU     H'0003'
CCP1M2                       EQU     H'0002'
CCP1M1                       EQU     H'0001'
CCP1M0                       EQU     H'0000'

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

ADIE                         EQU     H'0006'
SSPIE                        EQU     H'0003'
CCP1IE                       EQU     H'0002'
TMR2IE                       EQU     H'0001'
TMR1IE                       EQU     H'0000'

;----- PIE2 Bits ----------------------------------------------------------

LVDIE                        EQU     H'0007'
BCLIE                        EQU     H'0003'

;----- PCON Bits ----------------------------------------------------------

OSCF                         EQU     H'0003'
NOT_POR                      EQU     H'0001'
NOT_BO                       EQU     H'0000'
NOT_BOR                      EQU     H'0000'

;----- SSPCON2 Bits --------------------------------------------------------

GCEN                         EQU     H'0007'
ACKSTAT                      EQU     H'0006'
ACKDT                        EQU     H'0005'
ACKEN                        EQU     H'0004'
RCEN                         EQU     H'0003'
PEN                          EQU     H'0002'
RSEN                         EQU     H'0001'   
SEN                          EQU     H'0000'   

;----- SSPSTAT Bits -------------------------------------------------------

SMP                          EQU     H'0007'
CKE                          EQU     H'0006'
D                            EQU     H'0005'
I2C_DATA                     EQU     H'0005'
NOT_A                        EQU     H'0005'
NOT_ADDRESS                  EQU     H'0005'
D_A                          EQU     H'0005'
DATA_ADDRESS                 EQU     H'0005'
P                            EQU     H'0004'
I2C_STOP                     EQU     H'0004'
S                            EQU     H'0003'
I2C_START                    EQU     H'0003'
R                            EQU     H'0002'
I2C_READ                     EQU     H'0002'
NOT_W                        EQU     H'0002'
NOT_WRITE                    EQU     H'0002'
R_W                          EQU     H'0002'
READ_WRITE                   EQU     H'0002'
UA                           EQU     H'0001'
BF                           EQU     H'0000'

;----- REFCON Bits --------------------------------------------------------

VRHEN                        EQU     H'0007'
VRLEN                        EQU     H'0006'
VRHOEN                       EQU     H'0005'
VRLOEN                       EQU     H'0004'

;----- LVDCON Bits --------------------------------------------------------

BGST                         EQU     H'0005'
LVDEN                        EQU     H'0004'
LV3                          EQU     H'0003'
LV2                          EQU     H'0002'
LV1                          EQU     H'0001'
LV0                          EQU     H'0000'

;----- ADCON1 Bits --------------------------------------------------------

ADFM                         EQU     H'0007'
VCFG2                        EQU     H'0006'
VCFG1                        EQU     H'0005'
VCFG0                        EQU     H'0004'

;----- PMCON1 Bits --------------------------------------------------------

RD                           EQU     H'0000'


;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1FF'
	__BADRAM H'07'-H'09', H'18'-H'1D'
	__BADRAM H'87'-H'89'
        __BADRAM H'8F'-H'90', H'98'-H'9A'
        __BADRAM H'105', H'107'-H'109', H'110'-H'11F'
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
