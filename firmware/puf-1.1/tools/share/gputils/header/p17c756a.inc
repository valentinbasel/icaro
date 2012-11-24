        LIST
; P17C756A.INC  Standard Header File, Version 1.0   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC17C756A microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC17C756A
;       2. LIST directive in the source file
;               LIST   P=PIC17C756A
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   05/01/98 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __17C756A
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                               EQU     H'0000'
F                               EQU     H'0001'

BANK0                           EQU     H'0000'
BANK1                           EQU     H'0001'
BANK2                           EQU     H'0002'
BANK3                           EQU     H'0003'
BANK4                           EQU     H'0004'
BANK5                           EQU     H'0005'
BANK6                           EQU     H'0006'
BANK7                           EQU     H'0007'

GPR_BANK0                       EQU    H'0000'
GPR_BANK1                       EQU    H'0008'
GPR_BANK2                       EQU    H'0010'
GPR_BANK3                       EQU    H'0018'

;----- Register Files -----------------------------------------------------

INDF0                           EQU     H'0000'
FSR0                            EQU     H'0001'
PCL                             EQU     H'0002'
PCLATH                          EQU     H'0003'
ALUSTA                          EQU     H'0004'
T0STA                           EQU     H'0005'
CPUSTA                          EQU     H'0006'
INTSTA                          EQU     H'0007'
INDF1                           EQU     H'0008'
FSR1                            EQU     H'0009'
WREG                            EQU     H'000A'
TMR0L                           EQU     H'000B'
TMR0H                           EQU     H'000C'
TBLPTRL                         EQU     H'000D'
TBLPTRH                         EQU     H'000E'
BSR                             EQU     H'000F'

;----- Bank 0 -------------------------------------------------------------

PORTA                           EQU     H'0010'
DDRB                            EQU     H'0011'
PORTB                           EQU     H'0012'
RCSTA                           EQU     H'0013'
RCSTA1                          EQU     H'0013'
RCREG                           EQU     H'0014'    ; Backward compatibility only
RCREG1                          EQU     H'0014'
TXSTA                           EQU     H'0015'    ; Backward compatibility only
TXSTA1                          EQU     H'0015'
TXREG                           EQU     H'0016'    ; Backward compatibility only
TXREG1                          EQU     H'0016'
SPBRG                           EQU     H'0017'    ; Backward compatibility only
SPBRG1                          EQU     H'0017'

;----- Bank 1 -------------------------------------------------------------

DDRC                            EQU     H'0110'
PORTC                           EQU     H'0111'
DDRD                            EQU     H'0112'
PORTD                           EQU     H'0113'
DDRE                            EQU     H'0114'
PORTE                           EQU     H'0115'
PIR                             EQU     H'0116'    ; Backward compatibility only
PIR1                            EQU     H'0116'
PIE                             EQU     H'0117'    ; Backward compatibility only
PIE1                            EQU     H'0117'

;----- Bank 2 -------------------------------------------------------------

TMR1                            EQU     H'0210'
TMR2                            EQU     H'0211'
TMR3L                           EQU     H'0212'
TMR3H                           EQU     H'0213'
PR1                             EQU     H'0214'
PR2                             EQU     H'0215'
PR3L                            EQU     H'0216'
PR3H                            EQU     H'0217'

CA1L                            EQU     H'0216'
CA1H                            EQU     H'0217'

;----- Bank 3 -------------------------------------------------------------

PW1DCL                          EQU     H'0310'
PW2DCL                          EQU     H'0311'
PW1DCH                          EQU     H'0312'
PW2DCH                          EQU     H'0313'
CA2L                            EQU     H'0314'
CA2H                            EQU     H'0315'
TCON1                           EQU     H'0316'
TCON2                           EQU     H'0317'

;----- Bank 4 -------------------------------------------------------------

PIR2                            EQU     H'0410'
PIE2                            EQU     H'0411'

RCSTA2                          EQU     H'0413'
RCREG2                          EQU     H'0414'
TXSTA2                          EQU     H'0415'
TXREG2                          EQU     H'0416'
SPBRG2                          EQU     H'0417'

;----- Bank 5 -------------------------------------------------------------

DDRF                            EQU     H'0510'
PORTF                           EQU     H'0511'
DDRG                            EQU     H'0512'
PORTG                           EQU     H'0513'
ADCON0                          EQU     H'0514'
ADCON1                          EQU     H'0515'
ADRESL                          EQU     H'0516'
ADRESH                          EQU     H'0517'

;----- Bank 6 -------------------------------------------------------------

SSPADD                          EQU     H'0610'
SSPCON1                         EQU     H'0611'
SSPCON2                         EQU     H'0612'
SSPSTAT                         EQU     H'0613'
SSPBUF                          EQU     H'0614'

;----- Bank 7 -------------------------------------------------------------

PW3DCL                          EQU     H'0710'
PW3DCH                          EQU     H'0711'
CA3L                            EQU     H'0712'
CA3H                            EQU     H'0713'
CA4L                            EQU     H'0714'
CA4H                            EQU     H'0715'
TCON3                           EQU     H'0716'


;----- Unbanked -----------------------------------------------------------

PRODL                           EQU     H'0018'
PL                              EQU     H'0018'    ; Backward compatibility only
PRODH                           EQU     H'0019'
PH                              EQU     H'0019'    ; Backward compatibility only

;----- Special Function Register Bit Definitions --------------------------
;
;----- ALUSTA Bits --------------------------------------------------------

FS3                             EQU     H'0007'
FS2                             EQU     H'0006'
FS1                             EQU     H'0005'
FS0                             EQU     H'0004'
OV                              EQU     H'0003'
Z                               EQU     H'0002'
DC                              EQU     H'0001'
C                               EQU     H'0000'

;----- CPUSTA Bits --------------------------------------------------------

STKAV                           EQU     H'0005'
GLINTD                          EQU     H'0004'
NOT_TO                          EQU     H'0003'
TO                              EQU     H'0003'
NOT_PD                          EQU     H'0002'
PD                              EQU     H'0002'
NOT_POR                         EQU     H'0001'
POR                             EQU     H'0001'
NOT_BOR                         EQU     H'0000'
BOR                             EQU     H'0000'

;----- INTSTA Bits --------------------------------------------------------

PEIF                            EQU     H'0007'
T0CKIF                          EQU     H'0006'
T0IF                            EQU     H'0005'
INTF                            EQU     H'0004'
PEIE                            EQU     H'0003'
T0CKIE                          EQU     H'0002'
T0IE                            EQU     H'0001'
INTE                            EQU     H'0000'

;----- PIR1 Bits ----------------------------------------------------------

RBIF                            EQU     H'0007'
TMR3IF                          EQU     H'0006'
TMR2IF                          EQU     H'0005'
TMR1IF                          EQU     H'0004'
CA2IF                           EQU     H'0003'
CA1IF                           EQU     H'0002'
TXIF                            EQU     H'0001'    ; Backward compatibility only
TX1IF                           EQU     H'0001'
RCIF                            EQU     H'0000'    ; Backward compatibility only
RC1IF                           EQU     H'0000'

;----- PIE1 Bits -----------------------------------------------------------

RBIE                            EQU     H'0007'
TMR3IE                          EQU     H'0006'
TMR2IE                          EQU     H'0005'
TMR1IE                          EQU     H'0004'
CA2IE                           EQU     H'0003'
CA1IE                           EQU     H'0002'
TXIE                            EQU     H'0001'    ; Backward compatibility only
TX1IE                           EQU     H'0001'
RCIE                            EQU     H'0000'    ; Backward compatibility only
RC1IE                           EQU     H'0000'

;----- PORTA Bits ---------------------------------------------------------

NOT_RBPU                        EQU    H'0007'
RBPU                            EQU    H'0007'

;----- RCSTA1 and 2 Bits --------------------------------------------------

SPEN                            EQU     H'0007'
RX9                             EQU     H'0006'
RC9                             EQU     H'0006'    ; Backward compatibility only
NOT_RC8                         EQU     H'0006'    ; Backward compatibility only
RC8_9                           EQU     H'0006'    ; Backward compatibility only
SREN                            EQU     H'0005'
CREN                            EQU     H'0004'
FERR                            EQU     H'0002'
OERR                            EQU     H'0001'
RX9D                            EQU     H'0000'
RCD8                            EQU     H'0000'    ; Backward compatibility only

;----- T0STA Bits --------------------------------------------------------

INTEDG                          EQU     H'0007'
T0SE                            EQU     H'0006'
T0CS                            EQU     H'0005'
T0PS3                           EQU     H'0004'
PS3                             EQU     H'0004'    ; Backward compatibility only
T0PS2                           EQU     H'0003'
PS2                             EQU     H'0003'    ; Backward compatibility only
T0PS1                           EQU     H'0002'
PS1                             EQU     H'0002'    ; Backward compatibility only
T0PS0                           EQU     H'0001'
PS0                             EQU     H'0001'    ; Backward compatibility only

;----- TCON1 Bits ---------------------------------------------------------

CA2ED1                          EQU     H'0007'
CA2ED0                          EQU     H'0006'
CA1ED1                          EQU     H'0005'
CA1ED0                          EQU     H'0004'
T16                             EQU     H'0003'
TMR3CS                          EQU     H'0002'
TMR2CS                          EQU     H'0001'
TMR1CS                          EQU     H'0000'

;----- TCON2 Bits ---------------------------------------------------------

CA2OVF                          EQU     H'0007'
CA1OVF                          EQU     H'0006'
PWM2ON                          EQU     H'0005'
PWM1ON                          EQU     H'0004'
CA1                             EQU     H'0003'
NOT_PR3                         EQU     H'0003'
PR3                             EQU     H'0003'
CA1_PR3                         EQU     H'0003'
TMR3ON                          EQU     H'0002'
TMR2ON                          EQU     H'0001'
TMR1ON                          EQU     H'0000'

;----- PIR2 Bits ----------------------------------------------------------

SSPIF                           EQU    H'0007'
BCLIF                           EQU    H'0006'
ADIF                            EQU    H'0005'
CA4IF                           EQU    H'0003'
CA3IF                           EQU    H'0002'
TX2IF                           EQU    H'0001'
RC2IF                           EQU    H'0000'

;----- PIE2 Bits ----------------------------------------------------------

SSPIE                           EQU    H'0007'
BCLIE                           EQU    H'0006'
ADIE                            EQU    H'0005'
CA4IE                           EQU    H'0003'
CA3IE                           EQU    H'0002'
TX2IE                           EQU    H'0001'
RC2IE                           EQU    H'0000'

;----- TXSTA1 and 2 Bits --------------------------------------------------

CSRC                            EQU     H'0007'
TX9                             EQU     H'0006'
NOT_TX8                         EQU     H'0006'    ; Backward compatibility only
TX8_9                           EQU     H'0006'    ; Backward compatibility only
TXEN                            EQU     H'0005'
SYNC                            EQU     H'0004'
TRMT                            EQU     H'0001'
TX9D                            EQU     H'0000'
TXD8                            EQU     H'0000'    ; Backward compatibility only

;----- ADCON0 Bits --------------------------------------------------------

CHS3                            EQU    H'0007'
CHS2                            EQU    H'0006'
CHS1                            EQU    H'0005'
CHS0                            EQU    H'0004'
GO                              EQU    H'0002'
NOT_DONE                        EQU    H'0002'
DONE                            EQU    H'0002'
ADON                            EQU    H'0000'

;----- ADCON1 Bits --------------------------------------------------------

ADCS1                           EQU    H'0007'
ADCS0                           EQU    H'0006'
ADFM                            EQU    H'0005'
PCFG3                           EQU    H'0003'
PCFG2                           EQU    H'0002'
PCFG1                           EQU    H'0001'
PCFG0                           EQU    H'0000'

;----- SSPCON1 Bits -------------------------------------------------------

WCOL                            EQU    H'0007'
SSPOV                           EQU    H'0006'
SSPEN                           EQU    H'0005'
CKP                             EQU    H'0004'
SSPM3                           EQU    H'0003'
SSPM2                           EQU    H'0002'
SSPM1                           EQU    H'0001'
SSPM0                           EQU    H'0000'

;----- SSPCON2 Bits -------------------------------------------------------

GCEN                            EQU    H'0007'
ACKSTAT                         EQU    H'0006'
AKSTAT                          EQU    H'0006'
ACKDT                           EQU    H'0005'
AKDT                            EQU    H'0005'
ACKEN                           EQU    H'0004'
AKEN                            EQU    H'0004'
RCEN                            EQU    H'0003'
PEN                             EQU    H'0002'
RSEN                            EQU    H'0001'
SEN                             EQU    H'0000'

;----- SSPSTAT Bits -------------------------------------------------------

SMP                             EQU    H'0007'
CKE                             EQU    H'0006'
D                               EQU    H'0005'
NOT_A                           EQU    H'0005'
D_A                             EQU    H'0005'
P                               EQU    H'0004'
S                               EQU    H'0003'
R                               EQU    H'0002'
NOT_W                           EQU    H'0002'
R_W                             EQU    H'0002'
UA                              EQU    H'0001'
BF                              EQU    H'0000'

;----- TCON3 Bits ---------------------------------------------------------

CA4OVF                          EQU    H'0006'
CA3OVF                          EQU    H'0005'
CA4ED1                          EQU    H'0004'
CA4ED0                          EQU    H'0003'
CA3ED1                          EQU    H'0002'
CA3ED0                          EQU    H'0001'
PWM3ON                          EQU    H'0000'

;----- PW2DCL Bit ---------------------------------------------------------

TM2PW2                          EQU    H'0005'


;----- PW3DCL Bit ---------------------------------------------------------

TM2PW3                          EQU    H'0005'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM        H'8FF'
        __BADRAM        H'118'-H'11F', H'218'-H'21F', H'318'-H'31F'
        __BADRAM        H'412', H'418'-H'4FF'
        __BADRAM        H'518'-H'5FF'
        __BADRAM        H'615'-H'6FF'
        __BADRAM        H'717'-H'7FF'
        __BADRAM        H'814'-H'8FF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_PMC_MODE                       EQU     H'7FAF'
_XMC_MODE                       EQU     H'FFBF'
_MC_MODE                        EQU     H'FFEF'
_MP_MODE                        EQU     H'FFFF'

_BODEN_OFF                      EQU     H'BFFF'
_BODEN_ON                       EQU     H'FFFF'

_WDT_NORM                       EQU     H'FFF3'
_WDT_OFF                        EQU     H'FFF3'
_WDT_64                         EQU     H'FFF7'
_WDT_256                        EQU     H'FFFB'
_WDT_1                          EQU     H'FFFF'
_WDT_0                          EQU     H'FFFF'

_LF_OSC                         EQU     H'FFFC'
_RC_OSC                         EQU     H'FFFD'
_XT_OSC                         EQU     H'FFFE'
_EC_OSC                         EQU     H'FFFF'

        LIST
