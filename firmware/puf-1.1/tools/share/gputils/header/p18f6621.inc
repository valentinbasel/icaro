        LIST

;==========================================================================
;  $Id: p18f6621.inc,v 1.7 2006/08/19 02:39:40 craigfranklin Exp $
;  MPASM PIC18F6621 processor include
; 
;  (c) Copyright 1999-2005 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F6621 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC18F6621
;       2. LIST directive in the source file
;               LIST   P=PIC18F6621
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F6621
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
ECCP2DEL         EQU  H'0F67'
PWM2CON          EQU  H'0F67'
ECCP2AS          EQU  H'0F68'
ECCP3DEL         EQU  H'0F69'
PWM3CON          EQU  H'0F69'
ECCP3AS          EQU  H'0F6A'
RCSTA2           EQU  H'0F6B'
TXSTA2           EQU  H'0F6C'
TXREG2           EQU  H'0F6D'
RCREG2           EQU  H'0F6E'
SPBRG2           EQU  H'0F6F'
CCP5CON          EQU  H'0F70'
CCPR5            EQU  H'0F71'
CCPR5L           EQU  H'0F71'
CCPR5H           EQU  H'0F72'
CCP4CON          EQU  H'0F73'
CCPR4            EQU  H'0F74'
CCPR4L           EQU  H'0F74'
CCPR4H           EQU  H'0F75'
T4CON            EQU  H'0F76'
PR4              EQU  H'0F77'
TMR4             EQU  H'0F78'
ECCP1DEL         EQU  H'0F79'
PWM1CON          EQU  H'0F79'
BAUDCON2         EQU  H'0F7C'
BAUDCTL2         EQU  H'0F7C'
SPBRGH2          EQU  H'0F7D'
BAUDCON1         EQU  H'0F7E'
BAUDCTL1         EQU  H'0F7E'
SPBRGH1          EQU  H'0F7F'
PORTA            EQU  H'0F80'
PORTB            EQU  H'0F81'
PORTC            EQU  H'0F82'
PORTD            EQU  H'0F83'
PORTE            EQU  H'0F84'
PORTF            EQU  H'0F85'
PORTG            EQU  H'0F86'
LATA             EQU  H'0F89'
LATB             EQU  H'0F8A'
LATC             EQU  H'0F8B'
LATD             EQU  H'0F8C'
LATE             EQU  H'0F8D'
LATF             EQU  H'0F8E'
LATG             EQU  H'0F8F'
DDRA             EQU  H'0F92'
TRISA            EQU  H'0F92'
DDRB             EQU  H'0F93'
TRISB            EQU  H'0F93'
DDRC             EQU  H'0F94'
TRISC            EQU  H'0F94'
DDRD             EQU  H'0F95'
TRISD            EQU  H'0F95'
DDRE             EQU  H'0F96'
TRISE            EQU  H'0F96'
DDRF             EQU  H'0F97'
TRISF            EQU  H'0F97'
DDRG             EQU  H'0F98'
TRISG            EQU  H'0F98'
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
EEADRH           EQU  H'0FAA'
RCSTA            EQU  H'0FAB'
RCSTA1           EQU  H'0FAB'
TXSTA            EQU  H'0FAC'
TXSTA1           EQU  H'0FAC'
TXREG            EQU  H'0FAD'
TXREG1           EQU  H'0FAD'
RCREG            EQU  H'0FAE'
RCREG1           EQU  H'0FAE'
SPBRG            EQU  H'0FAF'
SPBRG1           EQU  H'0FAF'
PSPCON           EQU  H'0FB0'
T3CON            EQU  H'0FB1'
TMR3L            EQU  H'0FB2'
TMR3H            EQU  H'0FB3'
CMCON            EQU  H'0FB4'
CVRCON           EQU  H'0FB5'
ECCP1AS          EQU  H'0FB6'
CCP3CON          EQU  H'0FB7'
CCPR3            EQU  H'0FB8'
CCPR3L           EQU  H'0FB8'
CCPR3H           EQU  H'0FB9'
CCP2CON          EQU  H'0FBA'
CCPR2            EQU  H'0FBB'
CCPR2L           EQU  H'0FBB'
CCPR2H           EQU  H'0FBC'
CCP1CON          EQU  H'0FBD'
CCPR1            EQU  H'0FBE'
CCPR1L           EQU  H'0FBE'
CCPR1H           EQU  H'0FBF'
ADCON2           EQU  H'0FC0'
ADCON1           EQU  H'0FC1'
ADCON0           EQU  H'0FC2'
ADRES            EQU  H'0FC3'
ADRESL           EQU  H'0FC3'
ADRESH           EQU  H'0FC4'
SSPCON2          EQU  H'0FC5'
SSPCON1          EQU  H'0FC6'
SSPSTAT          EQU  H'0FC7'
SSPADD           EQU  H'0FC8'
SSPBUF           EQU  H'0FC9'
T2CON            EQU  H'0FCA'
PR2              EQU  H'0FCB'
TMR2             EQU  H'0FCC'
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

;----- ECCP2DEL Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'

P2DC0            EQU  H'0000'
P2DC1            EQU  H'0001'
P2DC2            EQU  H'0002'
P2DC3            EQU  H'0003'
P2DC4            EQU  H'0004'
P2DC5            EQU  H'0005'
P2DC6            EQU  H'0006'
P2RSEN           EQU  H'0007'


;----- PWM2CON Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'

P2DC0            EQU  H'0000'
P2DC1            EQU  H'0001'
P2DC2            EQU  H'0002'
P2DC3            EQU  H'0003'
P2DC4            EQU  H'0004'
P2DC5            EQU  H'0005'
P2DC6            EQU  H'0006'
P2RSEN           EQU  H'0007'


;----- ECCP2AS Bits -----------------------------------------------------
PSSBD0           EQU  H'0000'
PSSBD1           EQU  H'0001'
PSSAC0           EQU  H'0002'
PSSAC1           EQU  H'0003'
ECCP2AS0         EQU  H'0004'
ECCP2AS1         EQU  H'0005'
ECCP2AS2         EQU  H'0006'
ECCP2ASE         EQU  H'0007'

PSS2BD0          EQU  H'0000'
PSS2BD1          EQU  H'0001'
PSS2AC0          EQU  H'0002'
PSS2AC1          EQU  H'0003'


;----- ECCP3DEL Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'

P3DC0            EQU  H'0000'
P3DC1            EQU  H'0001'
P3DC2            EQU  H'0002'
P3DC3            EQU  H'0003'
P3DC4            EQU  H'0004'
P3DC5            EQU  H'0005'
P3DC6            EQU  H'0006'
P3RSEN           EQU  H'0007'


;----- PWM3CON Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'

P3DC0            EQU  H'0000'
P3DC1            EQU  H'0001'
P3DC2            EQU  H'0002'
P3DC3            EQU  H'0003'
P3DC4            EQU  H'0004'
P3DC5            EQU  H'0005'
P3DC6            EQU  H'0006'
P3RSEN           EQU  H'0007'


;----- ECCP3AS Bits -----------------------------------------------------
PSSBD0           EQU  H'0000'
PSSBD1           EQU  H'0001'
PSSAC0           EQU  H'0002'
PSSAC1           EQU  H'0003'
ECCP3AS0         EQU  H'0004'
ECCP3AS1         EQU  H'0005'
ECCP3AS2         EQU  H'0006'
ECCP3ASE         EQU  H'0007'

PSS3BD0          EQU  H'0000'
PSS3BD1          EQU  H'0001'
PSS3AC0          EQU  H'0002'
PSS3AC1          EQU  H'0003'


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADEN             EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

ADDEN            EQU  H'0003'


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           EQU  H'0000'
CCP5M1           EQU  H'0001'
CCP5M2           EQU  H'0002'
CCP5M3           EQU  H'0003'
CCP5Y            EQU  H'0004'
CCP5X            EQU  H'0005'

DC5B0            EQU  H'0004'
DC5B1            EQU  H'0005'


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           EQU  H'0000'
CCP4M1           EQU  H'0001'
CCP4M2           EQU  H'0002'
CCP4M3           EQU  H'0003'
CCP4Y            EQU  H'0004'
CCP4X            EQU  H'0005'

DC4B0            EQU  H'0004'
DC4B1            EQU  H'0005'


;----- T4CON Bits -----------------------------------------------------
T4CKPS0          EQU  H'0000'
T4CKPS1          EQU  H'0001'
TMR4ON           EQU  H'0002'
TOUTPS0          EQU  H'0003'
TOUTPS1          EQU  H'0004'
TOUTPS2          EQU  H'0005'
TOUTPS3          EQU  H'0006'

T4OUTPS0         EQU  H'0003'
T4OUTPS1         EQU  H'0004'
T4OUTPS2         EQU  H'0005'
T4OUTPS3         EQU  H'0006'


;----- ECCP1DEL Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'

P1DC0            EQU  H'0000'
P1DC1            EQU  H'0001'
P1DC2            EQU  H'0002'
P1DC3            EQU  H'0003'
P1DC4            EQU  H'0004'
P1DC5            EQU  H'0005'
P1DC6            EQU  H'0006'
P1DC7            EQU  H'0007'


;----- PWM1CON Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'

P1DC0            EQU  H'0000'
P1DC1            EQU  H'0001'
P1DC2            EQU  H'0002'
P1DC3            EQU  H'0003'
P1DC4            EQU  H'0004'
P1DC5            EQU  H'0005'
P1DC6            EQU  H'0006'
P1DC7            EQU  H'0007'


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCMT             EQU  H'0006'

RCIDL            EQU  H'0006'


;----- BAUDCTL2 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCMT             EQU  H'0006'

RCIDL            EQU  H'0006'


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCMT             EQU  H'0006'

RCIDL            EQU  H'0006'


;----- BAUDCTL1 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCMT             EQU  H'0006'

RCIDL            EQU  H'0006'


;----- PORTA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'

AN0              EQU  H'0000'
AN1              EQU  H'0001'
AN2              EQU  H'0002'
AN3              EQU  H'0003'
T0CKI            EQU  H'0004'
AN4              EQU  H'0005'
OSC2             EQU  H'0006'

VREFM            EQU  H'0002'
VREFP            EQU  H'0003'
LVDIN            EQU  H'0005'
CLKO             EQU  H'0006'


;----- PORTB Bits -----------------------------------------------------
RB0              EQU  H'0000'
RB1              EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'

INT0             EQU  H'0000'
INT1             EQU  H'0001'
INT2             EQU  H'0002'
INT3             EQU  H'0003'
KBI0             EQU  H'0004'
KBI1             EQU  H'0005'
KBI2             EQU  H'0006'
KBI3             EQU  H'0007'

PGM              EQU  H'0005'
PGC              EQU  H'0006'
PGD              EQU  H'0007'


;----- PORTC Bits -----------------------------------------------------
RC0              EQU  H'0000'
RC1              EQU  H'0001'
RC2              EQU  H'0002'
RC3              EQU  H'0003'
RC4              EQU  H'0004'
RC5              EQU  H'0005'
RC6              EQU  H'0006'
RC7              EQU  H'0007'

T1OSO            EQU  H'0000'
T1OSI            EQU  H'0001'
CCP1             EQU  H'0002'
SCK              EQU  H'0003'
SDI              EQU  H'0004'
SDO              EQU  H'0005'
TX1              EQU  H'0006'
RX1              EQU  H'0007'

T13CKI           EQU  H'0000'
P1A              EQU  H'0002'
SCL              EQU  H'0003'
SDA              EQU  H'0004'
CK1              EQU  H'0006'
DT1              EQU  H'0007'


;----- PORTD Bits -----------------------------------------------------
RD0              EQU  H'0000'
RD1              EQU  H'0001'
RD2              EQU  H'0002'
RD3              EQU  H'0003'
RD4              EQU  H'0004'
RD5              EQU  H'0005'
RD6              EQU  H'0006'
RD7              EQU  H'0007'

PSP0             EQU  H'0000'
PSP1             EQU  H'0001'
PSP2             EQU  H'0002'
PSP3             EQU  H'0003'
PSP4             EQU  H'0004'
PSP5             EQU  H'0005'
PSP6             EQU  H'0006'
PSP7             EQU  H'0007'

AD0              EQU  H'0000'
AD1              EQU  H'0001'
AD2              EQU  H'0002'
AD3              EQU  H'0003'
AD4              EQU  H'0004'
AD5              EQU  H'0005'
AD6              EQU  H'0006'
AD7              EQU  H'0007'


;----- PORTE Bits -----------------------------------------------------
RE0              EQU  H'0000'
RE1              EQU  H'0001'
RE2              EQU  H'0002'
RE3              EQU  H'0003'
RE4              EQU  H'0004'
RE5              EQU  H'0005'
RE6              EQU  H'0006'
RE7              EQU  H'0007'

RD               EQU  H'0000'
WR               EQU  H'0001'
CS               EQU  H'0002'

P2D              EQU  H'0000'
P2C              EQU  H'0001'
P2B              EQU  H'0002'
P3C              EQU  H'0003'
P3B              EQU  H'0004'
P1C              EQU  H'0005'
P1B              EQU  H'0006'


;----- PORTF Bits -----------------------------------------------------
RF0              EQU  H'0000'
RF1              EQU  H'0001'
RF2              EQU  H'0002'
RF3              EQU  H'0003'
RF4              EQU  H'0004'
RF5              EQU  H'0005'
RF6              EQU  H'0006'
RF7              EQU  H'0007'

AN5              EQU  H'0000'
AN6              EQU  H'0001'
AN7              EQU  H'0002'
AN8              EQU  H'0003'
AN9              EQU  H'0004'
AN10             EQU  H'0005'
AN11             EQU  H'0006'
SS               EQU  H'0007'

C2OUTF           EQU  H'0001'
C1OUTF           EQU  H'0002'
CVREFF           EQU  H'0005'


;----- PORTG Bits -----------------------------------------------------
RG0              EQU  H'0000'
RG1              EQU  H'0001'
RG2              EQU  H'0002'
RG3              EQU  H'0003'
RG4              EQU  H'0004'
RG5              EQU  H'0005'

CCP3             EQU  H'0000'
TX2              EQU  H'0001'
RX2              EQU  H'0002'
CCP4             EQU  H'0003'
CCP5             EQU  H'0004'
MCLR             EQU  H'0005'

P3A              EQU  H'0000'
CK2              EQU  H'0001'
DT2              EQU  H'0002'
P3D              EQU  H'0003'
P1D              EQU  H'0004'
VPP              EQU  H'0005'


;----- LATA Bits -----------------------------------------------------
LATA0            EQU  H'0000'
LATA1            EQU  H'0001'
LATA2            EQU  H'0002'
LATA3            EQU  H'0003'
LATA4            EQU  H'0004'
LATA5            EQU  H'0005'
LATA6            EQU  H'0006'


;----- LATB Bits -----------------------------------------------------
LATB0            EQU  H'0000'
LATB1            EQU  H'0001'
LATB2            EQU  H'0002'
LATB3            EQU  H'0003'
LATB4            EQU  H'0004'
LATB5            EQU  H'0005'
LATB6            EQU  H'0006'
LATB7            EQU  H'0007'


;----- LATC Bits -----------------------------------------------------
LATC0            EQU  H'0000'
LATC1            EQU  H'0001'
LATC2            EQU  H'0002'
LATC3            EQU  H'0003'
LATC4            EQU  H'0004'
LATC5            EQU  H'0005'
LATC6            EQU  H'0006'
LATC7            EQU  H'0007'


;----- LATD Bits -----------------------------------------------------
LATD0            EQU  H'0000'
LATD1            EQU  H'0001'
LATD2            EQU  H'0002'
LATD3            EQU  H'0003'
LATD4            EQU  H'0004'
LATD5            EQU  H'0005'
LATD6            EQU  H'0006'
LATD7            EQU  H'0007'


;----- LATE Bits -----------------------------------------------------
LATE0            EQU  H'0000'
LATE1            EQU  H'0001'
LATE2            EQU  H'0002'
LATE3            EQU  H'0003'
LATE4            EQU  H'0004'
LATE5            EQU  H'0005'
LATE6            EQU  H'0006'
LATE7            EQU  H'0007'


;----- LATF Bits -----------------------------------------------------
LATF0            EQU  H'0000'
LATF1            EQU  H'0001'
LATF2            EQU  H'0002'
LATF3            EQU  H'0003'
LATF4            EQU  H'0004'
LATF5            EQU  H'0005'
LATF6            EQU  H'0006'
LATF7            EQU  H'0007'


;----- LATG Bits -----------------------------------------------------
LATG0            EQU  H'0000'
LATG1            EQU  H'0001'
LATG2            EQU  H'0002'
LATG3            EQU  H'0003'
LATG4            EQU  H'0004'
LATG5            EQU  H'0005'


;----- DDRA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'


;----- TRISA Bits -----------------------------------------------------
TRISA0           EQU  H'0000'
TRISA1           EQU  H'0001'
TRISA2           EQU  H'0002'
TRISA3           EQU  H'0003'
TRISA4           EQU  H'0004'
TRISA5           EQU  H'0005'
TRISA6           EQU  H'0006'


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


;----- DDRC Bits -----------------------------------------------------
RC0              EQU  H'0000'
RC1              EQU  H'0001'
RC2              EQU  H'0002'
RC3              EQU  H'0003'
RC4              EQU  H'0004'
RC5              EQU  H'0005'
RC6              EQU  H'0006'
RC7              EQU  H'0007'


;----- TRISC Bits -----------------------------------------------------
TRISC0           EQU  H'0000'
TRISC1           EQU  H'0001'
TRISC2           EQU  H'0002'
TRISC3           EQU  H'0003'
TRISC4           EQU  H'0004'
TRISC5           EQU  H'0005'
TRISC6           EQU  H'0006'
TRISC7           EQU  H'0007'


;----- DDRD Bits -----------------------------------------------------
RD0              EQU  H'0000'
RD1              EQU  H'0001'
RD2              EQU  H'0002'
RD3              EQU  H'0003'
RD4              EQU  H'0004'
RD5              EQU  H'0005'
RD6              EQU  H'0006'
RD7              EQU  H'0007'


;----- TRISD Bits -----------------------------------------------------
TRISD0           EQU  H'0000'
TRISD1           EQU  H'0001'
TRISD2           EQU  H'0002'
TRISD3           EQU  H'0003'
TRISD4           EQU  H'0004'
TRISD5           EQU  H'0005'
TRISD6           EQU  H'0006'
TRISD7           EQU  H'0007'


;----- DDRE Bits -----------------------------------------------------
RE0              EQU  H'0000'
RE1              EQU  H'0001'
RE2              EQU  H'0002'
RE3              EQU  H'0003'
RE4              EQU  H'0004'
RE5              EQU  H'0005'
RE6              EQU  H'0006'
RE7              EQU  H'0007'


;----- TRISE Bits -----------------------------------------------------
TRISE0           EQU  H'0000'
TRISE1           EQU  H'0001'
TRISE2           EQU  H'0002'
TRISE3           EQU  H'0003'
TRISE4           EQU  H'0004'
TRISE5           EQU  H'0005'
TRISE6           EQU  H'0006'
TRISE7           EQU  H'0007'


;----- DDRF Bits -----------------------------------------------------
RF0              EQU  H'0000'
RF1              EQU  H'0001'
RF2              EQU  H'0002'
RF3              EQU  H'0003'
RF4              EQU  H'0004'
RF5              EQU  H'0005'
RF6              EQU  H'0006'
RF7              EQU  H'0007'


;----- TRISF Bits -----------------------------------------------------
TRISF0           EQU  H'0000'
TRISF1           EQU  H'0001'
TRISF2           EQU  H'0002'
TRISF3           EQU  H'0003'
TRISF4           EQU  H'0004'
TRISF5           EQU  H'0005'
TRISF6           EQU  H'0006'
TRISF7           EQU  H'0007'


;----- DDRG Bits -----------------------------------------------------
RG0              EQU  H'0000'
RG1              EQU  H'0001'
RG2              EQU  H'0002'
RG3              EQU  H'0003'
RG4              EQU  H'0004'
RG5              EQU  H'0005'


;----- TRISG Bits -----------------------------------------------------
TRISG0           EQU  H'0000'
TRISG1           EQU  H'0001'
TRISG2           EQU  H'0002'
TRISG3           EQU  H'0003'
TRISG4           EQU  H'0004'
TRISG5           EQU  H'0005'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
SSPIE            EQU  H'0003'
TXIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'
PSPIE            EQU  H'0007'

TX1IE            EQU  H'0004'
RC1IE            EQU  H'0005'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
CCP1IF           EQU  H'0002'
SSPIF            EQU  H'0003'
TXIF             EQU  H'0004'
RCIF             EQU  H'0005'
ADIF             EQU  H'0006'
PSPIF            EQU  H'0007'

TX1IF            EQU  H'0004'
RC1IF            EQU  H'0005'


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           EQU  H'0000'
TMR2IP           EQU  H'0001'
CCP1IP           EQU  H'0002'
SSPIP            EQU  H'0003'
TXIP             EQU  H'0004'
RCIP             EQU  H'0005'
ADIP             EQU  H'0006'
PSPIP            EQU  H'0007'

TX1IP            EQU  H'0004'
RC1IP            EQU  H'0005'


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           EQU  H'0000'
TMR3IE           EQU  H'0001'
LVDIE            EQU  H'0002'
BCLIE            EQU  H'0003'
EEIE             EQU  H'0004'
CMIE             EQU  H'0006'


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           EQU  H'0000'
TMR3IF           EQU  H'0001'
LVDIF            EQU  H'0002'
BCLIF            EQU  H'0003'
EEIF             EQU  H'0004'
CMIF             EQU  H'0006'


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           EQU  H'0000'
TMR3IP           EQU  H'0001'
LVDIP            EQU  H'0002'
BCLIP            EQU  H'0003'
EEIP             EQU  H'0004'
CMIP             EQU  H'0006'


;----- PIE3 Bits -----------------------------------------------------
CCP3IE           EQU  H'0000'
CCP4IE           EQU  H'0001'
CCP5IE           EQU  H'0002'
TMR4IE           EQU  H'0003'
TX2IE            EQU  H'0004'
RC2IE            EQU  H'0005'


;----- PIR3 Bits -----------------------------------------------------
CCP3IF           EQU  H'0000'
CCP4IF           EQU  H'0001'
CCP5IF           EQU  H'0002'
TMR4IF           EQU  H'0003'
TX2IF            EQU  H'0004'
RC2IF            EQU  H'0005'


;----- IPR3 Bits -----------------------------------------------------
CCP3IP           EQU  H'0000'
CCP4IP           EQU  H'0001'
CCP5IP           EQU  H'0002'
TMR4IP           EQU  H'0003'
TX2IP            EQU  H'0004'
RC2IP            EQU  H'0005'


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


;----- RCSTA1 Bits -----------------------------------------------------
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


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- PSPCON Bits -----------------------------------------------------
PSPMODE          EQU  H'0004'
IBOV             EQU  H'0005'
OBF              EQU  H'0006'
IBF              EQU  H'0007'


;----- T3CON Bits -----------------------------------------------------
TMR3ON           EQU  H'0000'
TMR3CS           EQU  H'0001'
T3SYNC           EQU  H'0002'
T3CCP1           EQU  H'0003'
T3CKPS0          EQU  H'0004'
T3CKPS1          EQU  H'0005'
T3CCP2           EQU  H'0006'
RD16             EQU  H'0007'

T3NSYNC          EQU  H'0002'

NOT_T3SYNC       EQU  H'0002'


;----- CMCON Bits -----------------------------------------------------
CM0              EQU  H'0000'
CM1              EQU  H'0001'
CM2              EQU  H'0002'
CIS              EQU  H'0003'
C1INV            EQU  H'0004'
C2INV            EQU  H'0005'
C1OUT            EQU  H'0006'
C2OUT            EQU  H'0007'


;----- CVRCON Bits -----------------------------------------------------
CVR0             EQU  H'0000'
CVR1             EQU  H'0001'
CVR2             EQU  H'0002'
CVR3             EQU  H'0003'
CVREF            EQU  H'0004'
CVRR             EQU  H'0005'
CVROE            EQU  H'0006'
CVREN            EQU  H'0007'


;----- ECCP1AS Bits -----------------------------------------------------
PSSBD0           EQU  H'0000'
PSSBD1           EQU  H'0001'
PSSAC0           EQU  H'0002'
PSSAC1           EQU  H'0003'
ECCP1AS0         EQU  H'0004'
ECCP1AS1         EQU  H'0005'
ECCP1AS2         EQU  H'0006'
ECCP1ASE         EQU  H'0007'


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           EQU  H'0000'
CCP3M1           EQU  H'0001'
CCP3M2           EQU  H'0002'
CCP3M3           EQU  H'0003'
CCP3Y            EQU  H'0004'
CCP3X            EQU  H'0005'
P3M0             EQU  H'0006'
P3M1             EQU  H'0007'

DC3B0            EQU  H'0004'
DC3B1            EQU  H'0005'


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           EQU  H'0000'
CCP2M1           EQU  H'0001'
CCP2M2           EQU  H'0002'
CCP2M3           EQU  H'0003'
CCP2Y            EQU  H'0004'
CCP2X            EQU  H'0005'
P2M0             EQU  H'0006'
P2M1             EQU  H'0007'

DC2B0            EQU  H'0004'
DC2B1            EQU  H'0005'


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
CCP1Y            EQU  H'0004'
CCP1X            EQU  H'0005'
P1M0             EQU  H'0006'
P1M1             EQU  H'0007'

DC1B0            EQU  H'0004'
DC1B1            EQU  H'0005'


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
VCFG1            EQU  H'0005'


;----- ADCON0 Bits -----------------------------------------------------
ADON             EQU  H'0000'
GO_DONE          EQU  H'0001'
CHS0             EQU  H'0002'
CHS1             EQU  H'0003'
CHS2             EQU  H'0004'
CHS3             EQU  H'0005'

DONE             EQU  H'0001'

GO               EQU  H'0001'

NOT_DONE         EQU  H'0001'


;----- SSPCON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- SSPCON1 Bits -----------------------------------------------------
SSPM0            EQU  H'0000'
SSPM1            EQU  H'0001'
SSPM2            EQU  H'0002'
SSPM3            EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'


;----- SSPSTAT Bits -----------------------------------------------------
BF               EQU  H'0000'
UA               EQU  H'0001'
R_W              EQU  H'0002'
S                EQU  H'0003'
P                EQU  H'0004'
D_A              EQU  H'0005'
CKE              EQU  H'0006'
SMP              EQU  H'0007'

I2C_READ         EQU  H'0002'
I2C_START        EQU  H'0003'
I2C_STOP         EQU  H'0004'
I2C_DAT          EQU  H'0005'

NOT_W            EQU  H'0002'
NOT_A            EQU  H'0005'

NOT_WRITE        EQU  H'0002'
NOT_ADDRESS      EQU  H'0005'

READ_WRITE       EQU  H'0002'
DATA_ADDRESS     EQU  H'0005'

R                EQU  H'0002'
D                EQU  H'0005'


;----- T2CON Bits -----------------------------------------------------
T2CKPS0          EQU  H'0000'
T2CKPS1          EQU  H'0001'
TMR2ON           EQU  H'0002'
T2OUTPS0         EQU  H'0003'
T2OUTPS1         EQU  H'0004'
T2OUTPS2         EQU  H'0005'
T2OUTPS3         EQU  H'0006'


;----- T1CON Bits -----------------------------------------------------
TMR1ON           EQU  H'0000'
TMR1CS           EQU  H'0001'
T1SYNC           EQU  H'0002'
T1OSCEN          EQU  H'0003'
T1CKPS0          EQU  H'0004'
T1CKPS1          EQU  H'0005'
RD16             EQU  H'0007'

T1INSYNC         EQU  H'0002'

NOT_T1SYNC       EQU  H'0002'


;----- RCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_PD           EQU  H'0002'
NOT_TO           EQU  H'0003'
NOT_RI           EQU  H'0004'
NOT_LWRT         EQU  H'0006'
NOT_IPEN         EQU  H'0007'

BOR              EQU  H'0000'
POR              EQU  H'0001'
PD               EQU  H'0002'
TO               EQU  H'0003'
RI               EQU  H'0004'
LWRT             EQU  H'0006'
IPEN             EQU  H'0007'


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

LVV0             EQU  H'0000'
LVV1             EQU  H'0001'
LVV2             EQU  H'0002'
LVV3             EQU  H'0003'
BGST             EQU  H'0005'


;----- OSCCON Bits -----------------------------------------------------
SCS0             EQU  H'0000'
SCS1             EQU  H'0001'
PLLEN            EQU  H'0002'
LOCK             EQU  H'0003'


;----- T0CON Bits -----------------------------------------------------
T0PS0            EQU  H'0000'
T0PS1            EQU  H'0001'
T0PS2            EQU  H'0002'
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
T08BIT           EQU  H'0006'
TMR0ON           EQU  H'0007'


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
T0IP             EQU  H'0002'
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
STKPTR0          EQU  H'0000'
STKPTR1          EQU  H'0001'
STKPTR2          EQU  H'0002'
STKPTR3          EQU  H'0003'
STKPTR4          EQU  H'0004'
STKUNF           EQU  H'0006'
STKOVF           EQU  H'0007'

STKFUL           EQU  H'0007'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'0FFF'
       __BADRAM  H'0F00'-H'0F5F'
       __BADRAM  H'0F7A'-H'0F7B'
       __BADRAM  H'0F87'-H'0F88'
       __BADRAM  H'0F90'-H'0F91'
       __BADRAM  H'0F99'-H'0F9C'
       __BADRAM  H'0FD4'

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Oscillator Selection:
;     OSC = LP             LP
;     OSC = XT             XT
;     OSC = HS             HS
;     OSC = RC             RC
;     OSC = EC             EC-OSC2 as Clock Out
;     OSC = ECIO           EC-OSC2 as RA6
;     OSC = HSPLL          HS-PLL Enabled
;     OSC = RCIO           RC-OSC2 as RA6
;     OSC = ECIOPLL        EC-OSC2 as RA6 and PLL
;     OSC = ECIOSWPLL      EC-OSC2 as RA6 and SW PLL
;     OSC = HSSWPLL        HS with SW PLL
;
;   Osc. Switch Enable:
;     OSCS = ON            Enabled
;     OSCS = OFF           Disabled
;
;   Power-up Timer:
;     PWRT = ON            Enabled
;     PWRT = OFF           Disabled
;
;   Brown-out Reset:
;     BOR = OFF            Disabled
;     BOR = ON             Enabled
;
;   Brown-out Voltage:
;     BORV = 45            4.5V
;     BORV = 42            4.2V
;     BORV = 27            2.7V
;     BORV = 20            2.0V
;
;   Watchdog Timer:
;     WDT = OFF            Disabled
;     WDT = ON             Enabled
;
;   Watchdog Postscaler:
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
;   MCLR Enable:
;     MCLRE = OFF          Disabled
;     MCLRE = ON           Enabled
;
;   CCP2 MUX:
;     CCP2MX = PORTBE      Multiplexed with RB3 or RE7
;     CCP2MX = PORTC       Multiplexed with RC1
;
;   Stack Overflow Reset:
;     STVR = OFF           Disabled
;     STVR = ON            Enabled
;
;   Low Voltage ICSP:
;     LVP = OFF            Disabled
;     LVP = ON             Enabled
;
;   Background Debugger Enable:
;     DEBUG = ON           Enabled
;     DEBUG = OFF          Disabled
;
;   Code Protection Block 0:
;     CP0 = ON             Enabled
;     CP0 = OFF            Disabled
;
;   Code Protection Block 1:
;     CP1 = ON             Enabled
;     CP1 = OFF            Disabled
;
;   Code Protection Block 2:
;     CP2 = ON             Enabled
;     CP2 = OFF            Disabled
;
;   Code Protection Block 3:
;     CP3 = ON             Enabled
;     CP3 = OFF            Disabled
;
;   Boot Block Code Protection:
;     CPB = ON             Enabled
;     CPB = OFF            Disabled
;
;   Data EEPROM Code Protection:
;     CPD = ON             Enabled
;     CPD = OFF            Disabled
;
;   Write Protection Block 0:
;     WRT0 = ON            Enabled
;     WRT0 = OFF           Disabled
;
;   Write Protection Block 1:
;     WRT1 = ON            Enabled
;     WRT1 = OFF           Disabled
;
;   Write Protection Block 2:
;     WRT2 = ON            Enabled
;     WRT2 = OFF           Disabled
;
;   Write Protection Block 3:
;     WRT3 = ON            Enabled
;     WRT3 = OFF           Disabled
;
;   Boot Block Write Protection:
;     WRTB = ON            Enabled
;     WRTB = OFF           Disabled
;
;   Configuration Register Write Protection:
;     WRTC = ON            Enabled
;     WRTC = OFF           Disabled
;
;   Data EEPROM Write Protection:
;     WRTD = ON            Enabled
;     WRTD = OFF           Disabled
;
;   Table Read Protection Block 0:
;     EBTR0 = ON           Enabled
;     EBTR0 = OFF          Disabled
;
;   Table Read Protection Block 1:
;     EBTR1 = ON           Enabled
;     EBTR1 = OFF          Disabled
;
;   Table Read Protection Block 2:
;     EBTR2 = ON           Enabled
;     EBTR2 = OFF          Disabled
;
;   Table Read Protection Block 3:
;     EBTR3 = ON           Enabled
;     EBTR3 = OFF          Disabled
;
;   Boot Block Table Read Protection:
;     EBTRB = ON           Enabled
;     EBTRB = OFF          Disabled
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
_OSC_LP_1H           EQU  H'F0'    ; LP
_OSC_XT_1H           EQU  H'F1'    ; XT
_OSC_HS_1H           EQU  H'F2'    ; HS
_OSC_RC_1H           EQU  H'F3'    ; RC
_OSC_EC_1H           EQU  H'F4'    ; EC-OSC2 as Clock Out
_OSC_ECIO_1H         EQU  H'F5'    ; EC-OSC2 as RA6
_OSC_HSPLL_1H        EQU  H'F6'    ; HS-PLL Enabled
_OSC_RCIO_1H         EQU  H'F7'    ; RC-OSC2 as RA6
_OSC_ECIOPLL_1H      EQU  H'FC'    ; EC-OSC2 as RA6 and PLL
_OSC_ECIOSWPLL_1H    EQU  H'FD'    ; EC-OSC2 as RA6 and SW PLL
_OSC_HSSWPLL_1H      EQU  H'FE'    ; HS with SW PLL

_OSCS_ON_1H          EQU  H'DF'    ; Enabled
_OSCS_OFF_1H         EQU  H'FF'    ; Disabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          EQU  H'FE'    ; Enabled
_PWRT_OFF_2L         EQU  H'FF'    ; Disabled

_BOR_OFF_2L          EQU  H'FD'    ; Disabled
_BOR_ON_2L           EQU  H'FF'    ; Enabled

_BORV_45_2L          EQU  H'F3'    ; 4.5V
_BORV_42_2L          EQU  H'F7'    ; 4.2V
_BORV_27_2L          EQU  H'FB'    ; 2.7V
_BORV_20_2L          EQU  H'FF'    ; 2.0V

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          EQU  H'FE'    ; Disabled
_WDT_ON_2H           EQU  H'FF'    ; Enabled

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
;----- CONFIG3H Options --------------------------------------------------
_MCLRE_OFF_3H        EQU  H'7F'    ; Disabled
_MCLRE_ON_3H         EQU  H'FF'    ; Enabled

_CCP2MX_PORTBE_3H    EQU  H'FE'    ; Multiplexed with RB3 or RE7
_CCP2MX_PORTC_3H     EQU  H'FF'    ; Multiplexed with RC1

;----- CONFIG4L Options --------------------------------------------------
_STVR_OFF_4L         EQU  H'FE'    ; Disabled
_STVR_ON_4L          EQU  H'FF'    ; Enabled

_LVP_OFF_4L          EQU  H'FB'    ; Disabled
_LVP_ON_4L           EQU  H'FF'    ; Enabled

_DEBUG_ON_4L         EQU  H'7F'    ; Enabled
_DEBUG_OFF_4L        EQU  H'FF'    ; Disabled

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           EQU  H'FE'    ; Enabled
_CP0_OFF_5L          EQU  H'FF'    ; Disabled

_CP1_ON_5L           EQU  H'FD'    ; Enabled
_CP1_OFF_5L          EQU  H'FF'    ; Disabled

_CP2_ON_5L           EQU  H'FB'    ; Enabled
_CP2_OFF_5L          EQU  H'FF'    ; Disabled

_CP3_ON_5L           EQU  H'F7'    ; Enabled
_CP3_OFF_5L          EQU  H'FF'    ; Disabled

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           EQU  H'BF'    ; Enabled
_CPB_OFF_5H          EQU  H'FF'    ; Disabled

_CPD_ON_5H           EQU  H'7F'    ; Enabled
_CPD_OFF_5H          EQU  H'FF'    ; Disabled

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          EQU  H'FE'    ; Enabled
_WRT0_OFF_6L         EQU  H'FF'    ; Disabled

_WRT1_ON_6L          EQU  H'FD'    ; Enabled
_WRT1_OFF_6L         EQU  H'FF'    ; Disabled

_WRT2_ON_6L          EQU  H'FB'    ; Enabled
_WRT2_OFF_6L         EQU  H'FF'    ; Disabled

_WRT3_ON_6L          EQU  H'F7'    ; Enabled
_WRT3_OFF_6L         EQU  H'FF'    ; Disabled

;----- CONFIG6H Options --------------------------------------------------
_WRTB_ON_6H          EQU  H'BF'    ; Enabled
_WRTB_OFF_6H         EQU  H'FF'    ; Disabled

_WRTC_ON_6H          EQU  H'DF'    ; Enabled
_WRTC_OFF_6H         EQU  H'FF'    ; Disabled

_WRTD_ON_6H          EQU  H'7F'    ; Enabled
_WRTD_OFF_6H         EQU  H'FF'    ; Disabled

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         EQU  H'FE'    ; Enabled
_EBTR0_OFF_7L        EQU  H'FF'    ; Disabled

_EBTR1_ON_7L         EQU  H'FD'    ; Enabled
_EBTR1_OFF_7L        EQU  H'FF'    ; Disabled

_EBTR2_ON_7L         EQU  H'FB'    ; Enabled
_EBTR2_OFF_7L        EQU  H'FF'    ; Disabled

_EBTR3_ON_7L         EQU  H'F7'    ; Enabled
_EBTR3_OFF_7L        EQU  H'FF'    ; Disabled

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         EQU  H'BF'    ; Enabled
_EBTRB_OFF_7H        EQU  H'FF'    ; Disabled


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
