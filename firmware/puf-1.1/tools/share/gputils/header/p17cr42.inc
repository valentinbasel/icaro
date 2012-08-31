        LIST
; P17CR42.INC  Standard Header File, Version 1.03    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC17CR42 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC17CR42
;       2. LIST directive in the source file
;               LIST   P=PIC17CR42
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.03   03/14/97 Corrected configuration bits value for protected 
;                microcontroller mode
;1.02   07/15/96 Corrected MAXRAM
;1.01   06/28/96 Corrected MAXRAM, BADRAM, and registers in upper banks
;1.00   04/10/96 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __17CR42
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
PORTA                           EQU     H'0010'
DDRB                            EQU     H'0011'
PORTB                           EQU     H'0012'
RCSTA                           EQU     H'0013'
RCREG                           EQU     H'0014'
TXSTA                           EQU     H'0015'
TXREG                           EQU     H'0016'
SPBRG                           EQU     H'0017'
PRODL                           EQU     H'0018'
PRODH                           EQU     H'0019'

DDRC                            EQU     H'0110'
PORTC                           EQU     H'0111'
DDRD                            EQU     H'0112'
PORTD                           EQU     H'0113'
DDRE                            EQU     H'0114'
PORTE                           EQU     H'0115'
PIR                             EQU     H'0116'
PIE                             EQU     H'0117'

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

PW1DCL                          EQU     H'0310'
PW2DCL                          EQU     H'0311'
PW1DCH                          EQU     H'0312'
PW2DCH                          EQU     H'0313'
CA2L                            EQU     H'0314'
CA2H                            EQU     H'0315'
TCON1                           EQU     H'0316'
TCON2                           EQU     H'0317'

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
NOT_PD                          EQU     H'0002'

;----- INTSTA Bits --------------------------------------------------------

PEIF                            EQU     H'0007'
T0CKIF                          EQU     H'0006'
T0IF                            EQU     H'0005'
INTF                            EQU     H'0004'
PEIE                            EQU     H'0003'
T0CKIE                          EQU     H'0002'
T0IE                            EQU     H'0001'
INTE                            EQU     H'0000'

;----- PIE Bits -----------------------------------------------------------

RBIE                            EQU     H'0007'
TMR3IE                          EQU     H'0006'
TMR2IE                          EQU     H'0005'
TMR1IE                          EQU     H'0004'
CA2IE                           EQU     H'0003'
CA1IE                           EQU     H'0002'
TXIE                            EQU     H'0001'
RCIE                            EQU     H'0000'

;----- PIR Bits -----------------------------------------------------------

RBIF                            EQU     H'0007'
TMR3IF                          EQU     H'0006'
TMR2IF                          EQU     H'0005'
TMR1IF                          EQU     H'0004'
CA2IF                           EQU     H'0003'
CA1IF                           EQU     H'0002'
TXIF                            EQU     H'0001'
RCIF                            EQU     H'0000'

;----- PORTA Bits ---------------------------------------------------------

NOT_RBPU			EQU	H'0007'
T0CKI				EQU	H'0001'
INT				EQU	H'0000'

;----- RCSTA Bits ---------------------------------------------------------

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
PS3                             EQU     H'0004'
T0PS2                           EQU     H'0003'
PS2                             EQU     H'0003'
T0PS1                           EQU     H'0002'
PS1                             EQU     H'0002'
T0PS0                           EQU     H'0001'
PS0                             EQU     H'0001'

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
CA1_PR3                         EQU     H'0003'
TMR3ON                          EQU     H'0002'
TMR2ON                          EQU     H'0001'
TMR1ON                          EQU     H'0000'

;----- TXSTA Bits ---------------------------------------------------------

CSRC                            EQU     H'0007'
TX9                             EQU     H'0006'
NOT_TX8                         EQU     H'0006'    ; Backward compatibility only
TX8_9                           EQU     H'0006'    ; Backward compatibility only
TXEN                            EQU     H'0005'
SYNC                            EQU     H'0004'
TRMT                            EQU     H'0001'
TX9D                            EQU     H'0000'
TXD8                            EQU     H'0000'    ; Backward compatibility only

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM        H'3FF'
        __BADRAM        H'118'-H'11F', H'218'-H'2FF', H'318'-H'3FF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_PMC_MODE                       EQU     H'7FAF'
_XMC_MODE                       EQU     H'FFBF'
_MC_MODE                        EQU     H'FFEF'
_MP_MODE                        EQU     H'FFFF'

_WDT_NORM                       EQU     H'FFF3'
_WDT_OFF                        EQU     H'FFF3'
_WDT_64                         EQU     H'FFF7'
_WDT_256                        EQU     H'FFFB'
_WDT_1                          EQU     H'FFFF'

_LF_OSC                         EQU     H'FFFC'
_RC_OSC                         EQU     H'FFFD'
_XT_OSC                         EQU     H'FFFE'
_EC_OSC                         EQU     H'FFFF'

        LIST
