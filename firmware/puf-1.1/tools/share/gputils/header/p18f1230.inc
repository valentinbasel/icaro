        LIST

;==========================================================================
;  $Id: p18f1230.inc,v 1.1 2006/08/19 02:52:39 craigfranklin Exp $
;  MPASM PIC18F1230 processor include
; 
;  (c) Copyright 1999-2006 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F1230 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC18F1230
;       2. LIST directive in the source file
;               LIST   P=PIC18F1230
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F1230
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;       18xxxx Family        EQUates
;==========================================================================
FSR0            EQU 0
FSR1            EQU 1
FSR2            EQU 2

FAST            EQU 1

W               EQU 0
A               EQU 0
ACCESS          EQU 0
BANKED          EQU 1
;==========================================================================

;==========================================================================
;       16Cxxx/17Cxxx Substitutions
;==========================================================================
  #define DDRA  TRISA      ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB      ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC      ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD      ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE      ; PIC17Cxxx SFR substitution

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------
PORTA            EQU  H'0F80'
PORTB            EQU  H'0F81'
OVDCONS          EQU  H'0F82'
OVDCOND          EQU  H'0F83'
DTCON            EQU  H'0F84'
PWMCON1          EQU  H'0F85'
PWMCON0          EQU  H'0F86'
SEVTCMPH         EQU  H'0F87'
SEVTCMPL         EQU  H'0F88'
LATA             EQU  H'0F89'
LATB             EQU  H'0F8A'
FLTCONFIG        EQU  H'0F8B'
PDC2H            EQU  H'0F8C'
PDC2L            EQU  H'0F8D'
PDC1H            EQU  H'0F8E'
PDC1L            EQU  H'0F8F'
PDC0H            EQU  H'0F90'
PDC0L            EQU  H'0F91'
DDRA             EQU  H'0F92'
TRISA            EQU  H'0F92'
DDRB             EQU  H'0F93'
TRISB            EQU  H'0F93'
PTPERH           EQU  H'0F95'
PTPERL           EQU  H'0F96'
PTMRH            EQU  H'0F97'
PTMRL            EQU  H'0F98'
PTCON1           EQU  H'0F99'
PTCON0           EQU  H'0F9A'
OSCTUNE          EQU  H'0F9B'
PIE1             EQU  H'0F9D'
PIR1             EQU  H'0F9E'
IPR1             EQU  H'0F9F'
PIE2             EQU  H'0FA0'
PIR2             EQU  H'0FA1'
IPR2             EQU  H'0FA2'
PIE3             EQU  H'0FA3'
PIR3             EQU  H'0FA4'
IPR3             EQU  H'0FA5'
EECON1           EQU  H'0FA6'
EECON2           EQU  H'0FA7'
EEDATA           EQU  H'0FA8'
EEADR            EQU  H'0FA9'
RCSTA            EQU  H'0FAB'
TXSTA            EQU  H'0FAC'
TXREG            EQU  H'0FAD'
RCREG            EQU  H'0FAE'
SPBRG            EQU  H'0FAF'
SPBRGH           EQU  H'0FB0'
CMCON            EQU  H'0FB4'
CVRCON           EQU  H'0FB5'
BAUDCON          EQU  H'0FB8'
BAUDCTL          EQU  H'0FB8'
ADCON2           EQU  H'0FC0'
ADCON1           EQU  H'0FC1'
ADCON0           EQU  H'0FC2'
ADRES            EQU  H'0FC3'
ADRESL           EQU  H'0FC3'
ADRESH           EQU  H'0FC4'
T1CON            EQU  H'0FCD'
TMR1L            EQU  H'0FCE'
TMR1H            EQU  H'0FCF'
RCON             EQU  H'0FD0'
WDTCON           EQU  H'0FD1'
LVDCON           EQU  H'0FD2'
OSCCON           EQU  H'0FD3'
T0CON            EQU  H'0FD5'
TMR0L            EQU  H'0FD6'
TMR0H            EQU  H'0FD7'
STATUS           EQU  H'0FD8'
FSR2L            EQU  H'0FD9'
FSR2H            EQU  H'0FDA'
PLUSW2           EQU  H'0FDB'
PREINC2          EQU  H'0FDC'
POSTDEC2         EQU  H'0FDD'
POSTINC2         EQU  H'0FDE'
INDF2            EQU  H'0FDF'
BSR              EQU  H'0FE0'
FSR1L            EQU  H'0FE1'
FSR1H            EQU  H'0FE2'
PLUSW1           EQU  H'0FE3'
PREINC1          EQU  H'0FE4'
POSTDEC1         EQU  H'0FE5'
POSTINC1         EQU  H'0FE6'
INDF1            EQU  H'0FE7'
WREG             EQU  H'0FE8'
FSR0L            EQU  H'0FE9'
FSR0H            EQU  H'0FEA'
PLUSW0           EQU  H'0FEB'
PREINC0          EQU  H'0FEC'
POSTDEC0         EQU  H'0FED'
POSTINC0         EQU  H'0FEE'
INDF0            EQU  H'0FEF'
INTCON3          EQU  H'0FF0'
INTCON2          EQU  H'0FF1'
INTCON           EQU  H'0FF2'
PROD             EQU  H'0FF3'
PRODL            EQU  H'0FF3'
PRODH            EQU  H'0FF4'
TABLAT           EQU  H'0FF5'
TBLPTR           EQU  H'0FF6'
TBLPTRL          EQU  H'0FF6'
TBLPTRH          EQU  H'0FF7'
TBLPTRU          EQU  H'0FF8'
PC               EQU  H'0FF9'
PCL              EQU  H'0FF9'
PCLATH           EQU  H'0FFA'
PCLATU           EQU  H'0FFB'
STKPTR           EQU  H'0FFC'
TOS              EQU  H'0FFD'
TOSL             EQU  H'0FFD'
TOSH             EQU  H'0FFE'
TOSU             EQU  H'0FFF'

;----- PORTA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'
RA7              EQU  H'0007'

AN0              EQU  H'0000'
AN1              EQU  H'0001'
TX               EQU  H'0002'
RX               EQU  H'0003'
AN2              EQU  H'0004'
MCLR             EQU  H'0005'
OSC2             EQU  H'0006'
OSC1             EQU  H'0007'

INT0             EQU  H'0000'
INT1             EQU  H'0001'
CK               EQU  H'0002'
; DT is a reserved word
; DT               EQU  H'0003'
T0CKI            EQU  H'0004'
CLKO             EQU  H'0006'
CLKI             EQU  H'0007'

KBI0             EQU  H'0000'
KBI1             EQU  H'0001'
VREFP            EQU  H'0004'
T1OSO_PORTA      EQU  H'0006'
T1OSI_PORTA      EQU  H'0007'

CMP0             EQU  H'0000'
NOT_MCLR         EQU  H'0005'
AN3              EQU  H'0006'

T1CKI_PORTA      EQU  H'0006'


;----- PORTB Bits -----------------------------------------------------
RB0              EQU  H'0000'
RB1              EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'

PWM0             EQU  H'0000'
PWM1             EQU  H'0001'
INT2             EQU  H'0002'
INT3             EQU  H'0003'
PWM2             EQU  H'0004'
PWM3             EQU  H'0005'
PWM4             EQU  H'0006'
PWM5             EQU  H'0007'

KBI2             EQU  H'0002'
KBI3             EQU  H'0003'
PGC              EQU  H'0006'
PGD              EQU  H'0007'

CMP2             EQU  H'0002'
CMP1             EQU  H'0003'

T1OSO_PORTB      EQU  H'0002'
T1OSI_PORTB      EQU  H'0003'

T1CKI_PORTB      EQU  H'0002'


;----- OVDCONS Bits -----------------------------------------------------
POUT0            EQU  H'0000'
POUT1            EQU  H'0001'
POUT2            EQU  H'0002'
POUT3            EQU  H'0003'
POUT4            EQU  H'0004'
POUT5            EQU  H'0005'


;----- OVDCOND Bits -----------------------------------------------------
POVD0            EQU  H'0000'
POVD1            EQU  H'0001'
POVD2            EQU  H'0002'
POVD3            EQU  H'0003'
POVD4            EQU  H'0004'
POVD5            EQU  H'0005'


;----- DTCON Bits -----------------------------------------------------
DT0              EQU  H'0000'
DT1              EQU  H'0001'
DT2              EQU  H'0002'
DT3              EQU  H'0003'
DT4              EQU  H'0004'
DT5              EQU  H'0005'
DTPS0            EQU  H'0006'
DTPS1            EQU  H'0007'


;----- PWMCON1 Bits -----------------------------------------------------
OSYNC            EQU  H'0000'
UDIS             EQU  H'0001'
SEVTDIR          EQU  H'0003'
SEVOPS0          EQU  H'0004'
SEVOPS1          EQU  H'0005'
SEVOPS2          EQU  H'0006'
SEVOPS3          EQU  H'0007'


;----- PWMCON0 Bits -----------------------------------------------------
PMOD0            EQU  H'0000'
PMOD1            EQU  H'0001'
PMOD2            EQU  H'0002'
PWMEN0           EQU  H'0004'
PWMEN1           EQU  H'0005'
PWMEN2           EQU  H'0006'


;----- LATA Bits -----------------------------------------------------
LATA0            EQU  H'0000'
LATA1            EQU  H'0001'
LATA2            EQU  H'0002'
LATA3            EQU  H'0003'
LATA4            EQU  H'0004'
LATA6            EQU  H'0006'
LATA7            EQU  H'0007'


;----- LATB Bits -----------------------------------------------------
LATB0            EQU  H'0000'
LATB1            EQU  H'0001'
LATB2            EQU  H'0002'
LATB3            EQU  H'0003'
LATB4            EQU  H'0004'
LATB5            EQU  H'0005'
LATB6            EQU  H'0006'
LATB7            EQU  H'0007'


;----- FLTCONFIG Bits -----------------------------------------------------
FLTAEN           EQU  H'0000'
FLTAMOD          EQU  H'0001'
FLTAS            EQU  H'0002'
BRFEN            EQU  H'0007'


;----- DDRA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'
RA7              EQU  H'0007'


;----- TRISA Bits -----------------------------------------------------
TRISA0           EQU  H'0000'
TRISA1           EQU  H'0001'
TRISA2           EQU  H'0002'
TRISA3           EQU  H'0003'
TRISA4           EQU  H'0004'
TRISA6           EQU  H'0006'
TRISA7           EQU  H'0007'


;----- DDRB Bits -----------------------------------------------------
RB0              EQU  H'0000'
RB1              EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'


;----- TRISB Bits -----------------------------------------------------
TRISB0           EQU  H'0000'
TRISB1           EQU  H'0001'
TRISB2           EQU  H'0002'
TRISB3           EQU  H'0003'
TRISB4           EQU  H'0004'
TRISB5           EQU  H'0005'
TRISB6           EQU  H'0006'
TRISB7           EQU  H'0007'


;----- PTCON1 Bits -----------------------------------------------------
PTDIR            EQU  H'0006'
PTEN             EQU  H'0007'


;----- PTCON0 Bits -----------------------------------------------------
PTMOD0           EQU  H'0000'
PTMOD1           EQU  H'0001'
PTCKPS0          EQU  H'0002'
PTCKPS1          EQU  H'0003'
PTOPS0           EQU  H'0004'
PTOPS1           EQU  H'0005'
PTOPS2           EQU  H'0006'
PTOPS3           EQU  H'0007'


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'
PLLEN            EQU  H'0006'
INTSRC           EQU  H'0007'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
CMP0IE           EQU  H'0001'
CMP1IE           EQU  H'0002'
CMP2IE           EQU  H'0003'
TXIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
CMP0IF           EQU  H'0001'
CMP1IF           EQU  H'0002'
CMP2IF           EQU  H'0003'
TXIF             EQU  H'0004'
RCIF             EQU  H'0005'
ADIF             EQU  H'0006'


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           EQU  H'0000'
CMP0IP           EQU  H'0001'
CMP1IP           EQU  H'0002'
CMP2IP           EQU  H'0003'
TXIP             EQU  H'0004'
RCIP             EQU  H'0005'
ADIP             EQU  H'0006'


;----- PIE2 Bits -----------------------------------------------------
LVDIE            EQU  H'0002'
EEIE             EQU  H'0004'
OSCFIE           EQU  H'0007'


;----- PIR2 Bits -----------------------------------------------------
LVDIF            EQU  H'0002'
EEIF             EQU  H'0004'
OSCFIF           EQU  H'0007'


;----- IPR2 Bits -----------------------------------------------------
LVDIP            EQU  H'0002'
EEIP             EQU  H'0004'
OSCFIP           EQU  H'0007'


;----- PIE3 Bits -----------------------------------------------------
PTIE             EQU  H'0004'


;----- PIR3 Bits -----------------------------------------------------
PTIF             EQU  H'0004'


;----- IPR3 Bits -----------------------------------------------------
PTIP             EQU  H'0004'


;----- EECON1 Bits -----------------------------------------------------
RD               EQU  H'0000'
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
FREE             EQU  H'0004'
CFGS             EQU  H'0006'
EEPGD            EQU  H'0007'


;----- RCSTA Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADEN             EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

ADDEN            EQU  H'0003'


;----- TXSTA Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- CMCON Bits -----------------------------------------------------
CMEN0            EQU  H'0000'
CMEN1            EQU  H'0001'
CMEN2            EQU  H'0002'
C0OUT            EQU  H'0005'
C1OUT            EQU  H'0006'
C2OUT            EQU  H'0007'


;----- CVRCON Bits -----------------------------------------------------
CVR0             EQU  H'0000'
CVR1             EQU  H'0001'
CVR2             EQU  H'0002'
CVR3             EQU  H'0003'
CVREF            EQU  H'0004'
CVRR             EQU  H'0005'
CVREN            EQU  H'0007'

CVRSS            EQU  H'0004'


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'

RCMT             EQU  H'0006'


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'

RCMT             EQU  H'0006'


;----- ADCON2 Bits -----------------------------------------------------
ADCS0            EQU  H'0000'
ADCS1            EQU  H'0001'
ADCS2            EQU  H'0002'
ACQT0            EQU  H'0003'
ACQT1            EQU  H'0004'
ACQT2            EQU  H'0005'
ADFM             EQU  H'0007'


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            EQU  H'0000'
PCFG1            EQU  H'0001'
PCFG2            EQU  H'0002'
PCFG3            EQU  H'0003'
VCFG0            EQU  H'0004'


;----- ADCON0 Bits -----------------------------------------------------
ADON             EQU  H'0000'
GO               EQU  H'0001'
CHS0             EQU  H'0002'
CHS1             EQU  H'0003'
SEVTEN           EQU  H'0007'

DONE             EQU  H'0001'

NOT_DONE         EQU  H'0001'

GO_DONE          EQU  H'0001'


;----- T1CON Bits -----------------------------------------------------
TMR1ON           EQU  H'0000'
TMR1CS           EQU  H'0001'
NOT_T1SYNC       EQU  H'0002'
T1OSCEN          EQU  H'0003'
T1CKPS0          EQU  H'0004'
T1CKPS1          EQU  H'0005'
T1RUN            EQU  H'0006'
RD16             EQU  H'0007'

T1SYNC           EQU  H'0002'


;----- RCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_PD           EQU  H'0002'
NOT_TO           EQU  H'0003'
NOT_RI           EQU  H'0004'
SBOREN           EQU  H'0006'
IPEN             EQU  H'0007'

BOR              EQU  H'0000'
POR              EQU  H'0001'
PD               EQU  H'0002'
TO               EQU  H'0003'
RI               EQU  H'0004'


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           EQU  H'0000'

SWDTE            EQU  H'0000'


;----- LVDCON Bits -----------------------------------------------------
LVDL0            EQU  H'0000'
LVDL1            EQU  H'0001'
LVDL2            EQU  H'0002'
LVDL3            EQU  H'0003'
LVDEN            EQU  H'0004'
IRVST            EQU  H'0005'

IVRST            EQU  H'0005'


;----- OSCCON Bits -----------------------------------------------------
SCS0             EQU  H'0000'
SCS1             EQU  H'0001'
FLTS             EQU  H'0002'
OSTS             EQU  H'0003'
IRCF0            EQU  H'0004'
IRCF1            EQU  H'0005'
IRCF2            EQU  H'0006'
IDLEN            EQU  H'0007'

IOFS             EQU  H'0002'


;----- T0CON Bits -----------------------------------------------------
T0PS0            EQU  H'0000'
T0PS1            EQU  H'0001'
T0PS2            EQU  H'0002'
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
T016BIT          EQU  H'0006'
TMR0ON           EQU  H'0007'

T08BIT           EQU  H'0006'


;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
OV               EQU  H'0003'
N                EQU  H'0004'


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           EQU  H'0000'
INT2IF           EQU  H'0001'
INT3IF           EQU  H'0002'
INT1IE           EQU  H'0003'
INT2IE           EQU  H'0004'
INT3IE           EQU  H'0005'
INT1IP           EQU  H'0006'
INT2IP           EQU  H'0007'

INT1F            EQU  H'0000'
INT2F            EQU  H'0001'
INT3F            EQU  H'0002'
INT1E            EQU  H'0003'
INT2E            EQU  H'0004'
INT3E            EQU  H'0005'
INT1P            EQU  H'0006'
INT2P            EQU  H'0007'


;----- INTCON2 Bits -----------------------------------------------------
RBIP             EQU  H'0000'
INT3IP           EQU  H'0001'
TMR0IP           EQU  H'0002'
INTEDG3          EQU  H'0003'
INTEDG2          EQU  H'0004'
INTEDG1          EQU  H'0005'
INTEDG0          EQU  H'0006'
NOT_RBPU         EQU  H'0007'

INT3P            EQU  H'0001'
RBPU             EQU  H'0007'


;----- INTCON Bits -----------------------------------------------------
RBIF             EQU  H'0000'
INT0IF           EQU  H'0001'
TMR0IF           EQU  H'0002'
RBIE             EQU  H'0003'
INT0IE           EQU  H'0004'
TMR0IE           EQU  H'0005'
PEIE             EQU  H'0006'
GIE              EQU  H'0007'

INT0F            EQU  H'0001'
T0IF             EQU  H'0002'
INT0E            EQU  H'0004'
T0IE             EQU  H'0005'
GIEL             EQU  H'0006'
GIEH             EQU  H'0007'


;----- STKPTR Bits -----------------------------------------------------
SP0              EQU  H'0000'
SP1              EQU  H'0001'
SP2              EQU  H'0002'
SP3              EQU  H'0003'
SP4              EQU  H'0004'
STKUNF           EQU  H'0006'
STKOVF           EQU  H'0007'

STKFUL           EQU  H'0006'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'0FFF'
       __BADRAM  H'0100'-H'0F7F'
       __BADRAM  H'0F94'
       __BADRAM  H'0F9C'
       __BADRAM  H'0FAA'
       __BADRAM  H'0FB1'-H'0FB3'
       __BADRAM  H'0FB6'-H'0FB7'
       __BADRAM  H'0FB9'-H'0FBF'
       __BADRAM  H'0FC5'-H'0FCC'
       __BADRAM  H'0FD4'

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Oscillator Selection bits:
;     OSC = LP             LP Oscillator
;     OSC = XT             XT Oscillator
;     OSC = HS             HS Oscillator
;     OSC = RC             External RC oscillator, CLKO function on RA6
;     OSC = EC             EC oscillator, CLKO function on RA6
;     OSC = ECIO           EC oscillator, port function on RA6
;     OSC = HSPLL          HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
;     OSC = RCIO           External RC oscillator, port function on RA6
;     OSC = INTIO2         Internal oscillator, port function on RA6 and RA7
;     OSC = INTIO1         Internal oscillator, CLKO function on RA6, port function on RA7
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal/External Oscillator Switchover bit:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power-up Timer Enable bit:
;     PWRT = ON            PWRT enabled
;     PWRT = OFF           PWRT disabled
;
;   Brown-out Reset Enable bits:
;     BOR = OFF            Brown-out Reset disabled in hardware and software
;     BOR = SBORENCTRL     Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOR = BOACTIVE       Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOR = BOHW           Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown-out Voltage bits:
;     BORV = 0             Maximum setting
;     BORV = 1             
;     BORV = 2             
;     BORV = 3             Minimum setting
;
;   Watchdog Timer Enable bit:
;     WDT = OFF            WDT disabled (control is placed on the SWDTEN bit)
;     WDT = ON             WDT enabled
;
;   Watchdog Timer Postscale Select bits:
;     WDTPS = 1            1:1
;     WDTPS = 2            1:2
;     WDTPS = 4            1:4
;     WDTPS = 8            1:8
;     WDTPS = 16           1:16
;     WDTPS = 32           1:32
;     WDTPS = 64           1:64
;     WDTPS = 128          1:128
;     WDTPS = 256          1:256
;     WDTPS = 512          1:512
;     WDTPS = 1024         1:1024
;     WDTPS = 2048         1:2048
;     WDTPS = 4096         1:4096
;     WDTPS = 8192         1:8192
;     WDTPS = 16384        1:16384
;     WDTPS = 32768        1:32768
;
;   High Side Transistors Polarity bit (Odd PWM Output Polarity Control bit):
;     HPOL = LOW           PWM1, PWM3 and PWM5 are active-low
;     HPOL = HIGH          PWM1, PWM3 and PWM5 are active-high (default)
;
;   Low-Side Transistors Polarity bit (Even PWM Output Polarity Control bit):
;     LPOL = LOW           PWM0, PWM2 and PWM4 are active-low
;     LPOL = HIGH          PWM0, PWM2 and PWM4 are active-high (default)
;
;   PWM Output Pins Reset State Control bit:
;     PWMPIN = ON          PWM outputs drive active states upon Reset
;     PWMPIN = OFF         PWM outputs disabled upon Reset
;
;   FLTA MUX bit:
;     FLTAMX = RA7         FLTA input is muxed onto RA7
;     FLTAMX = RA5         FLTA input is muxed onto RA5
;
;   T1OSO/T1CKI MUX bit:
;     T1OSCMX = LOW        T1OSO/T1CKI pin resides on RB2
;     T1OSCMX = HIGH       T1OSO/T1CKI pin resides on RA6
;
;   Master Clear Enable bit:
;     MCLRE = OFF          RA5 input pin enabled, MCLR pin disabled
;     MCLRE = ON           MCLR pin enabled, RA5 input pin disabled
;
;   Stack Overflow/Underflow Reset Enable bit:
;     STVREN = OFF         Reset on stack overflow/underflow disabled
;     STVREN = ON          Reset on stack overflow/underflow enabled
;
;   Boot Block Size Select bits:
;     BBSIZ = BB256        256 Words (512 Bytes)
;     BBSIZ = BB512        512 Words (1024 Bytes)
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protection bit Block 0 (00400-007FF):
;     CP0 = ON             Block 0 is code-protected
;     CP0 = OFF            Block 0 is not code-protected
;
;   Code Protection bit Block 1 (00800-00FFF):
;     CP1 = ON             Block 1 is code-protected
;     CP1 = OFF            Block 1 is not code-protected
;
;   Code Protection bit (Boot Block Memory Area):
;     CPB = ON             Boot Block is code-protected
;     CPB = OFF            Boot Block is not code-protected
;
;   Code Protection bit (Data EEPROM):
;     CPD = ON             Data EEPROM is code-protected
;     CPD = OFF            Data EEPROM is not code-protected
;
;   Write Protection bit Block 0 (00400-007FF):
;     WRT0 = ON            Block 0 is write-protected
;     WRT0 = OFF           Block 0 is not write-protected
;
;   Write Protection bit Block 1 (00800-00FFF):
;     WRT1 = ON            Block 1 is write-protected
;     WRT1 = OFF           Block 1 is not write-protected
;
;   Write Protection bit (Boot Block Memory Area):
;     WRTB = ON            Boot Block is write-protected
;     WRTB = OFF           Boot Block is not write-protected
;
;   Write Protection bit (Configuration Registers):
;     WRTC = ON            Configuration registers are write-protected
;     WRTC = OFF           Configuration registers are not write-protected
;
;   Write Protection bit (Data EEPROM):
;     WRTD = ON            Data EEPROM is write-protected
;     WRTD = OFF           Data EEPROM is not write-protected
;
;   Table Read Protection bit Block 0 (00400-007FF):
;     EBTR0 = ON           Block 0 is protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 is not protected from table reads executed in other blocks
;
;   Table Read Protection bit Block 1 (00800-00FFF):
;     EBTR1 = ON           Block 1 is protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 is not protected from table reads executed in other blocks
;
;   Table Read Protection bit (Boot Block Memory Area):
;     EBTRB = ON           Boot Block is protected from table reads executed in other blocks
;     EBTRB = OFF          Boot Block is not protected from table reads executed in other blocks
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
;   CONFIG3L        300004h
;   CONFIG3H        300005h
;   CONFIG4L        300006h
;   CONFIG5L        300008h
;   CONFIG5H        300009h
;   CONFIG6L        30000Ah
;   CONFIG6H        30000Bh
;   CONFIG7L        30000Ch
;   CONFIG7H        30000Dh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1H        EQU  H'300001'
_CONFIG2L        EQU  H'300002'
_CONFIG2H        EQU  H'300003'
_CONFIG3L        EQU  H'300004'
_CONFIG3H        EQU  H'300005'
_CONFIG4L        EQU  H'300006'
_CONFIG5L        EQU  H'300008'
_CONFIG5H        EQU  H'300009'
_CONFIG6L        EQU  H'30000A'
_CONFIG6H        EQU  H'30000B'
_CONFIG7L        EQU  H'30000C'
_CONFIG7H        EQU  H'30000D'

;----- CONFIG1H Options --------------------------------------------------
_OSC_LP_1H           EQU  H'F0'    ; LP Oscillator
_OSC_XT_1H           EQU  H'F1'    ; XT Oscillator
_OSC_HS_1H           EQU  H'F2'    ; HS Oscillator
_OSC_RC_1H           EQU  H'F3'    ; External RC oscillator, CLKO function on RA6
_OSC_EC_1H           EQU  H'F4'    ; EC oscillator, CLKO function on RA6
_OSC_ECIO_1H         EQU  H'F5'    ; EC oscillator, port function on RA6
_OSC_HSPLL_1H        EQU  H'F6'    ; HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
_OSC_RCIO_1H         EQU  H'F7'    ; External RC oscillator, port function on RA6
_OSC_INTIO2_1H       EQU  H'F8'    ; Internal oscillator, port function on RA6 and RA7
_OSC_INTIO1_1H       EQU  H'F9'    ; Internal oscillator, CLKO function on RA6, port function on RA7

_FCMEN_OFF_1H        EQU  H'BF'    ; Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         EQU  H'FF'    ; Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         EQU  H'7F'    ; Oscillator Switchover mode disabled
_IESO_ON_1H          EQU  H'FF'    ; Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          EQU  H'FE'    ; PWRT enabled
_PWRT_OFF_2L         EQU  H'FF'    ; PWRT disabled

_BOR_OFF_2L          EQU  H'F9'    ; Brown-out Reset disabled in hardware and software
_BOR_SBORENCTRL_2L   EQU  H'FB'    ; Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOR_BOACTIVE_2L     EQU  H'FD'    ; Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOR_BOHW_2L         EQU  H'FF'    ; Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_0_2L           EQU  H'F3'    ; Maximum setting
_BORV_1_2L           EQU  H'F7'    ; 
_BORV_2_2L           EQU  H'FB'    ; 
_BORV_3_2L           EQU  H'FF'    ; Minimum setting

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          EQU  H'FE'    ; WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_2H           EQU  H'FF'    ; WDT enabled

_WDTPS_1_2H          EQU  H'E1'    ; 1:1
_WDTPS_2_2H          EQU  H'E3'    ; 1:2
_WDTPS_4_2H          EQU  H'E5'    ; 1:4
_WDTPS_8_2H          EQU  H'E7'    ; 1:8
_WDTPS_16_2H         EQU  H'E9'    ; 1:16
_WDTPS_32_2H         EQU  H'EB'    ; 1:32
_WDTPS_64_2H         EQU  H'ED'    ; 1:64
_WDTPS_128_2H        EQU  H'EF'    ; 1:128
_WDTPS_256_2H        EQU  H'F1'    ; 1:256
_WDTPS_512_2H        EQU  H'F3'    ; 1:512
_WDTPS_1024_2H       EQU  H'F5'    ; 1:1024
_WDTPS_2048_2H       EQU  H'F7'    ; 1:2048
_WDTPS_4096_2H       EQU  H'F9'    ; 1:4096
_WDTPS_8192_2H       EQU  H'FB'    ; 1:8192
_WDTPS_16384_2H      EQU  H'FD'    ; 1:16384
_WDTPS_32768_2H      EQU  H'FF'    ; 1:32768

;----- CONFIG3L Options --------------------------------------------------
_HPOL_LOW_3L         EQU  H'F7'    ; PWM1, PWM3 and PWM5 are active-low
_HPOL_HIGH_3L        EQU  H'FF'    ; PWM1, PWM3 and PWM5 are active-high (default)

_LPOL_LOW_3L         EQU  H'FB'    ; PWM0, PWM2 and PWM4 are active-low
_LPOL_HIGH_3L        EQU  H'FF'    ; PWM0, PWM2 and PWM4 are active-high (default)

_PWMPIN_ON_3L        EQU  H'FD'    ; PWM outputs drive active states upon Reset
_PWMPIN_OFF_3L       EQU  H'FF'    ; PWM outputs disabled upon Reset

;----- CONFIG3H Options --------------------------------------------------
_FLTAMX_RA7_3H       EQU  H'FE'    ; FLTA input is muxed onto RA7
_FLTAMX_RA5_3H       EQU  H'FF'    ; FLTA input is muxed onto RA5

_T1OSCMX_LOW_3H      EQU  H'FF'    ; T1OSO/T1CKI pin resides on RB2
_T1OSCMX_HIGH_3H     EQU  H'FF'    ; T1OSO/T1CKI pin resides on RA6

_MCLRE_OFF_3H        EQU  H'7F'    ; RA5 input pin enabled, MCLR pin disabled
_MCLRE_ON_3H         EQU  H'FF'    ; MCLR pin enabled, RA5 input pin disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       EQU  H'FE'    ; Reset on stack overflow/underflow disabled
_STVREN_ON_4L        EQU  H'FF'    ; Reset on stack overflow/underflow enabled

_BBSIZ_BB256_4L      EQU  H'CF'    ; 256 Words (512 Bytes)
_BBSIZ_BB512_4L      EQU  H'FF'    ; 512 Words (1024 Bytes)

_XINST_OFF_4L        EQU  H'FF'    ; Instruction set extension and Indexed Addressing mode disabled
_XINST_ON_4L         EQU  H'FF'    ; Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         EQU  H'7F'    ; Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        EQU  H'FF'    ; Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           EQU  H'FE'    ; Block 0 is code-protected
_CP0_OFF_5L          EQU  H'FF'    ; Block 0 is not code-protected

_CP1_ON_5L           EQU  H'FD'    ; Block 1 is code-protected
_CP1_OFF_5L          EQU  H'FF'    ; Block 1 is not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           EQU  H'BF'    ; Boot Block is code-protected
_CPB_OFF_5H          EQU  H'FF'    ; Boot Block is not code-protected

_CPD_ON_5H           EQU  H'7F'    ; Data EEPROM is code-protected
_CPD_OFF_5H          EQU  H'FF'    ; Data EEPROM is not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          EQU  H'FE'    ; Block 0 is write-protected
_WRT0_OFF_6L         EQU  H'FF'    ; Block 0 is not write-protected

_WRT1_ON_6L          EQU  H'FD'    ; Block 1 is write-protected
_WRT1_OFF_6L         EQU  H'FF'    ; Block 1 is not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTB_ON_6H          EQU  H'BF'    ; Boot Block is write-protected
_WRTB_OFF_6H         EQU  H'FF'    ; Boot Block is not write-protected

_WRTC_ON_6H          EQU  H'DF'    ; Configuration registers are write-protected
_WRTC_OFF_6H         EQU  H'FF'    ; Configuration registers are not write-protected

_WRTD_ON_6H          EQU  H'7F'    ; Data EEPROM is write-protected
_WRTD_OFF_6H         EQU  H'FF'    ; Data EEPROM is not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         EQU  H'FE'    ; Block 0 is protected from table reads executed in other blocks
_EBTR0_OFF_7L        EQU  H'FF'    ; Block 0 is not protected from table reads executed in other blocks

_EBTR1_ON_7L         EQU  H'FD'    ; Block 1 is protected from table reads executed in other blocks
_EBTR1_OFF_7L        EQU  H'FF'    ; Block 1 is not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         EQU  H'BF'    ; Boot Block is protected from table reads executed in other blocks
_EBTRB_OFF_7H        EQU  H'FF'    ; Boot Block is not protected from table reads executed in other blocks


_DEVID1          EQU  H'3FFFFE'
_DEVID2          EQU  H'3FFFFF'

_IDLOC0          EQU  H'200000'
_IDLOC1          EQU  H'200001'
_IDLOC2          EQU  H'200002'
_IDLOC3          EQU  H'200003'
_IDLOC4          EQU  H'200004'
_IDLOC5          EQU  H'200005'
_IDLOC6          EQU  H'200006'
_IDLOC7          EQU  H'200007'

        LIST
