        LIST

;==========================================================================
;  $Id: p18f2331.inc,v 1.7 2006/08/19 02:39:38 craigfranklin Exp $
;  MPASM PIC18F2331 processor include
; 
;  (c) Copyright 1999-2006 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F2331 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC18F2331
;       2. LIST directive in the source file
;               LIST   P=PIC18F2331
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F2331
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
DFLTCON          EQU  H'0F60'
CAP3CON          EQU  H'0F61'
CAP2CON          EQU  H'0F62'
CAP1CON          EQU  H'0F63'
CAP3BUFL         EQU  H'0F64'
MAXCNTL          EQU  H'0F64'
CAP3BUFH         EQU  H'0F65'
MAXCNTH          EQU  H'0F65'
CAP2BUFL         EQU  H'0F66'
POSCNTL          EQU  H'0F66'
CAP2BUFH         EQU  H'0F67'
POSCNTH          EQU  H'0F67'
CAP1BUFL         EQU  H'0F68'
VELRL            EQU  H'0F68'
CAP1BUFH         EQU  H'0F69'
VELRH            EQU  H'0F69'
OVDCONS          EQU  H'0F6A'
OVDCOND          EQU  H'0F6B'
FLTCONFIG        EQU  H'0F6C'
DTCON            EQU  H'0F6D'
PWMCON1          EQU  H'0F6E'
PWMCON0          EQU  H'0F6F'
SEVTCMPH         EQU  H'0F70'
SEVTCMPL         EQU  H'0F71'
PDC3H            EQU  H'0F72'
PDC3L            EQU  H'0F73'
PDC2H            EQU  H'0F74'
PDC2L            EQU  H'0F75'
PDC1H            EQU  H'0F76'
PDC1L            EQU  H'0F77'
PDC0H            EQU  H'0F78'
PDC0L            EQU  H'0F79'
PTPERH           EQU  H'0F7A'
PTPERL           EQU  H'0F7B'
PTMRH            EQU  H'0F7C'
PTMRL            EQU  H'0F7D'
PTCON1           EQU  H'0F7E'
PTCON0           EQU  H'0F7F'
PORTA            EQU  H'0F80'
PORTB            EQU  H'0F81'
PORTC            EQU  H'0F82'
PORTE            EQU  H'0F84'
TMR5L            EQU  H'0F87'
TMR5H            EQU  H'0F88'
LATA             EQU  H'0F89'
LATB             EQU  H'0F8A'
LATC             EQU  H'0F8B'
PR5L             EQU  H'0F90'
PR5H             EQU  H'0F91'
DDRA             EQU  H'0F92'
TRISA            EQU  H'0F92'
DDRB             EQU  H'0F93'
TRISB            EQU  H'0F93'
DDRC             EQU  H'0F94'
TRISC            EQU  H'0F94'
ADCHS            EQU  H'0F99'
ADCON3           EQU  H'0F9A'
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
BAUDCON          EQU  H'0FAA'
BAUDCTL          EQU  H'0FAA'
RCSTA            EQU  H'0FAB'
TXSTA            EQU  H'0FAC'
TXREG            EQU  H'0FAD'
RCREG            EQU  H'0FAE'
SPBRG            EQU  H'0FAF'
SPBRGH           EQU  H'0FB0'
QEICON           EQU  H'0FB6'
T5CON            EQU  H'0FB7'
ANSEL0           EQU  H'0FB8'
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
SSPCON           EQU  H'0FC6'
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

;----- DFLTCON Bits -----------------------------------------------------
FLTCK0           EQU  H'0000'
FLTCK1           EQU  H'0001'
FLTCK2           EQU  H'0002'
FLT1EN           EQU  H'0003'
FLT2EN           EQU  H'0004'
FLT3EN           EQU  H'0005'
FLT4EN           EQU  H'0006'


;----- CAP3CON Bits -----------------------------------------------------
CAP3M0           EQU  H'0000'
CAP3M1           EQU  H'0001'
CAP3M2           EQU  H'0002'
CAP3M3           EQU  H'0003'
CAP3TMR          EQU  H'0005'
CAP3REN          EQU  H'0006'


;----- CAP2CON Bits -----------------------------------------------------
CAP2M0           EQU  H'0000'
CAP2M1           EQU  H'0001'
CAP2M2           EQU  H'0002'
CAP2M3           EQU  H'0003'
CAP2TMR          EQU  H'0005'
CAP2REN          EQU  H'0006'


;----- CAP1CON Bits -----------------------------------------------------
CAP1M0           EQU  H'0000'
CAP1M1           EQU  H'0001'
CAP1M2           EQU  H'0002'
CAP1M3           EQU  H'0003'
CAP1TMR          EQU  H'0005'
CAP1REN          EQU  H'0006'


;----- OVDCONS Bits -----------------------------------------------------
POUT0            EQU  H'0000'
POUT1            EQU  H'0001'
POUT2            EQU  H'0002'
POUT3            EQU  H'0003'
POUT4            EQU  H'0004'
POUT5            EQU  H'0005'
POUT6            EQU  H'0006'
POUT7            EQU  H'0007'


;----- OVDCOND Bits -----------------------------------------------------
POVD0            EQU  H'0000'
POVD1            EQU  H'0001'
POVD2            EQU  H'0002'
POVD3            EQU  H'0003'
POVD4            EQU  H'0004'
POVD5            EQU  H'0005'
POVD6            EQU  H'0006'
POVD7            EQU  H'0007'


;----- FLTCONFIG Bits -----------------------------------------------------
FLTAEN           EQU  H'0000'
FLTAMOD          EQU  H'0001'
FLTAS            EQU  H'0002'
FLTCON           EQU  H'0003'
FLTBEN           EQU  H'0004'
FLTBMOD          EQU  H'0005'
FLTBS            EQU  H'0006'


;----- DTCON Bits -----------------------------------------------------
DT0              EQU  H'0000'
DT1              EQU  H'0001'
DT2              EQU  H'0002'
DT3              EQU  H'0003'
DT4              EQU  H'0004'
DT5              EQU  H'0005'
DTPS0            EQU  H'0006'
DTPS1            EQU  H'0007'

DTA0             EQU  H'0000'
DTA1             EQU  H'0001'
DTA2             EQU  H'0002'
DTA3             EQU  H'0003'
DTA4             EQU  H'0004'
DTA5             EQU  H'0005'
DTAPS0           EQU  H'0006'
DTAPS1           EQU  H'0007'


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
PMOD3            EQU  H'0003'
PWMEN0           EQU  H'0004'
PWMEN1           EQU  H'0005'
PWMEN2           EQU  H'0006'


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
AN2              EQU  H'0002'
AN3              EQU  H'0003'
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
INT0             EQU  H'0003'
INT1             EQU  H'0004'
INT2             EQU  H'0005'
TX               EQU  H'0006'
RX               EQU  H'0007'

T13CKI           EQU  H'0000'
CCP2             EQU  H'0001'
T0CKI            EQU  H'0003'
SDA              EQU  H'0004'
SCK              EQU  H'0005'
CK               EQU  H'0006'
; DT is a reserved word
; DT               EQU  H'0007'

NOT_FLTA         EQU  H'0001'
NOT_FLTB         EQU  H'0002'
T5CKI            EQU  H'0003'
SDI              EQU  H'0004'
SCL              EQU  H'0005'
NOT_SS           EQU  H'0006'
SDO              EQU  H'0007'

FLTA             EQU  H'0001'
FLTB             EQU  H'0002'
SS               EQU  H'0006'


;----- PORTE Bits -----------------------------------------------------
RE3              EQU  H'0003'


;----- LATA Bits -----------------------------------------------------
LATA0            EQU  H'0000'
LATA1            EQU  H'0001'
LATA2            EQU  H'0002'
LATA3            EQU  H'0003'
LATA4            EQU  H'0004'
LATA5            EQU  H'0005'
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


;----- LATC Bits -----------------------------------------------------
LATC0            EQU  H'0000'
LATC1            EQU  H'0001'
LATC2            EQU  H'0002'
LATC3            EQU  H'0003'
LATC4            EQU  H'0004'
LATC5            EQU  H'0005'
LATC6            EQU  H'0006'
LATC7            EQU  H'0007'


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
TRISA5           EQU  H'0005'
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


;----- ADCHS Bits -----------------------------------------------------
GASEL0           EQU  H'0000'
GASEL1           EQU  H'0001'
GCSEL0           EQU  H'0002'
GCSEL1           EQU  H'0003'
GBSEL0           EQU  H'0004'
GBSEL1           EQU  H'0005'
GDSEL0           EQU  H'0006'
GDSEL1           EQU  H'0007'

SASEL0           EQU  H'0000'
SASEL1           EQU  H'0001'
SCSEL0           EQU  H'0002'
SCSEL1           EQU  H'0003'
SBSEL0           EQU  H'0004'
SBSEL1           EQU  H'0005'
SDSEL0           EQU  H'0006'
SDSEL1           EQU  H'0007'


;----- ADCON3 Bits -----------------------------------------------------
SSRC0            EQU  H'0000'
SSRC1            EQU  H'0001'
SSRC2            EQU  H'0002'
SSRC3            EQU  H'0003'
SSRC4            EQU  H'0004'
ADRS0            EQU  H'0006'
ADRS1            EQU  H'0007'


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'
TUN5             EQU  H'0005'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
SSPIE            EQU  H'0003'
TBIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'

TXIE             EQU  H'0004'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
CCP1IF           EQU  H'0002'
SSPIF            EQU  H'0003'
TBIF             EQU  H'0004'
RCIF             EQU  H'0005'
ADIF             EQU  H'0006'

TXIF             EQU  H'0004'


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           EQU  H'0000'
TMR2IP           EQU  H'0001'
CCP1IP           EQU  H'0002'
SSPIP            EQU  H'0003'
TBIP             EQU  H'0004'
RCIP             EQU  H'0005'
ADIP             EQU  H'0006'

TXIP             EQU  H'0004'


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           EQU  H'0000'
LVDIE            EQU  H'0002'
EEIE             EQU  H'0004'
OSFIE            EQU  H'0007'


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           EQU  H'0000'
LVDIF            EQU  H'0002'
EEIF             EQU  H'0004'
OSFIF            EQU  H'0007'


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           EQU  H'0000'
LVDIP            EQU  H'0002'
EEIP             EQU  H'0004'
OSFIP            EQU  H'0007'


;----- PIE3 Bits -----------------------------------------------------
TMR5IE           EQU  H'0000'
IC1IE            EQU  H'0001'
IC2QEIE          EQU  H'0002'
IC3DRIE          EQU  H'0003'
PTIE             EQU  H'0004'


;----- PIR3 Bits -----------------------------------------------------
TMR5IF           EQU  H'0000'
IC1IF            EQU  H'0001'
IC2QEIF          EQU  H'0002'
IC3DRIF          EQU  H'0003'
PTIF             EQU  H'0004'


;----- IPR3 Bits -----------------------------------------------------
TMR5IP           EQU  H'0000'
IC1IP            EQU  H'0001'
IC2QEIP          EQU  H'0002'
IC3DRIP          EQU  H'0003'
PTIP             EQU  H'0004'


;----- EECON1 Bits -----------------------------------------------------
RD               EQU  H'0000'
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
FREE             EQU  H'0004'
CFGS             EQU  H'0006'
EEPGD            EQU  H'0007'


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'


;----- RCSTA Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADEN             EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'


;----- TXSTA Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- QEICON Bits -----------------------------------------------------
PDEC0            EQU  H'0000'
PDEC1            EQU  H'0001'
QEIM0            EQU  H'0002'
QEIM1            EQU  H'0003'
QEIM2            EQU  H'0004'
UP_DOWN          EQU  H'0005'
; ERROR is a reserved word
; ERROR            EQU  H'0006'
VELM             EQU  H'0007'

UP               EQU  H'0005'

DOWN             EQU  H'0005'

NOT_DOWN         EQU  H'0005'

NOT_VELM         EQU  H'0007'


;----- T5CON Bits -----------------------------------------------------
TMR5ON           EQU  H'0000'
TMR5CS           EQU  H'0001'
T5SYNC           EQU  H'0002'
T5PS0            EQU  H'0003'
T5PS1            EQU  H'0004'
T5MOD            EQU  H'0005'
RESEN            EQU  H'0006'
T5SEN            EQU  H'0007'

NOT_T5SYNC       EQU  H'0002'
NOT_RESEN        EQU  H'0006'


;----- ANSEL0 Bits -----------------------------------------------------
ANS0             EQU  H'0000'
ANS1             EQU  H'0001'
ANS2             EQU  H'0002'
ANS3             EQU  H'0003'
ANS4             EQU  H'0004'


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           EQU  H'0000'
CCP2M1           EQU  H'0001'
CCP2M2           EQU  H'0002'
CCP2M3           EQU  H'0003'
CCP2Y            EQU  H'0004'
CCP2X            EQU  H'0005'

DC2B0            EQU  H'0004'
DC2B1            EQU  H'0005'


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
CCP1Y            EQU  H'0004'
CCP1X            EQU  H'0005'

DC1B0            EQU  H'0004'
DC1B1            EQU  H'0005'


;----- ADCON2 Bits -----------------------------------------------------
ADCS0            EQU  H'0000'
ADCS1            EQU  H'0001'
ADCS2            EQU  H'0002'
ACQT0            EQU  H'0003'
ACQT1            EQU  H'0004'
ACQT2            EQU  H'0005'
ACQT3            EQU  H'0006'
ADFM             EQU  H'0007'


;----- ADCON1 Bits -----------------------------------------------------
ADPNT0           EQU  H'0000'
ADPNT1           EQU  H'0001'
BFOVFL           EQU  H'0002'
BFEMT            EQU  H'0003'
FIFOEN           EQU  H'0004'
VCFG0            EQU  H'0006'
VCFG1            EQU  H'0007'

FFOVFL           EQU  H'0002'


;----- ADCON0 Bits -----------------------------------------------------
ADON             EQU  H'0000'
GO_DONE          EQU  H'0001'
ACMOD0           EQU  H'0002'
ACMOD1           EQU  H'0003'
ACSCH            EQU  H'0004'
ACONV            EQU  H'0005'

DONE             EQU  H'0001'

GO               EQU  H'0001'

NOT_DONE         EQU  H'0001'


;----- SSPCON Bits -----------------------------------------------------
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
T1RUN            EQU  H'0006'
RD16             EQU  H'0007'

T1INSYNC         EQU  H'0002'

NOT_T1SYNC       EQU  H'0002'


;----- RCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_PD           EQU  H'0002'
NOT_TO           EQU  H'0003'
NOT_RI           EQU  H'0004'
NOT_IPEN         EQU  H'0007'

BOR              EQU  H'0000'
POR              EQU  H'0001'
PD               EQU  H'0002'
TO               EQU  H'0003'
RI               EQU  H'0004'
IPEN             EQU  H'0007'


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           EQU  H'0000'
WDT0             EQU  H'0001'
WDT1             EQU  H'0002'
WDT2             EQU  H'0003'
WDT3             EQU  H'0004'
WDT4             EQU  H'0005'
WDT5             EQU  H'0006'
WDT6             EQU  H'0007'

WDTW             EQU  H'0007'


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

T0PS3            EQU  H'0003'


;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
OV               EQU  H'0003'
N                EQU  H'0004'


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           EQU  H'0000'
INT2IF           EQU  H'0001'
INT1IE           EQU  H'0003'
INT2IE           EQU  H'0004'
INT1IP           EQU  H'0006'
INT2IP           EQU  H'0007'

INT1F            EQU  H'0000'
INT2F            EQU  H'0001'
INT1E            EQU  H'0003'
INT2E            EQU  H'0004'
INT1P            EQU  H'0006'
INT2P            EQU  H'0007'


;----- INTCON2 Bits -----------------------------------------------------
RBIP             EQU  H'0000'
TMR0IP           EQU  H'0002'
INTEDG2          EQU  H'0004'
INTEDG1          EQU  H'0005'
INTEDG0          EQU  H'0006'
NOT_RBPU         EQU  H'0007'

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
       __BADRAM  H'0300'-H'0F5F'
       __BADRAM  H'0F83'
       __BADRAM  H'0F85'-H'0F86'
       __BADRAM  H'0F8C'-H'0F8F'
       __BADRAM  H'0F95'-H'0F98'
       __BADRAM  H'0F9C'
       __BADRAM  H'0FB1'-H'0FB5'
       __BADRAM  H'0FB9'
       __BADRAM  H'0FC5'
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
;     OSC = RC2            External RC, RA6 is CLKOUT
;     OSC = EC             EC, RA6 is CLKOUT
;     OSC = ECIO           EC, RA6 is I/O
;     OSC = HSPLL          HS-PLL Enabled
;     OSC = RCIO           External RC, RA6 is I/O
;     OSC = IRCIO          Internal RC, RA6 & RA7 are I/O
;     OSC = IRC            Internal RC, RA6 is CLKOUT, RA7 is I/O
;     OSC = RC1            External RC, RA6 is CLKOUT
;     OSC = RC             External RC, RA6 is CLKOUT
;
;   Fail-Safe Clock Monitor Enable:
;     FCMEN = OFF          Disabled
;     FCMEN = ON           Enabled
;
;   Internal/External Switch-Over:
;     IESO = OFF           Disabled
;     IESO = ON            Enabled
;
;   Power-up Timer:
;     PWRTEN = ON          Enabled
;     PWRTEN = OFF         Disabled
;
;   Brown-out Reset:
;     BOREN = OFF          Disabled
;     BOREN = ON           Enabled
;
;   Brown-out Voltage:
;     BORV = 45            4.5V
;     BORV = 42            4.2V
;     BORV = 27            2.7V
;     BORV = 20            2.0V
;
;   Watchdog Timer:
;     WDTEN = OFF          Disabled
;     WDTEN = ON           Enabled
;
;   Watchdog Timer Enable Window:
;     WINEN = ON           Enabled
;     WINEN = OFF          Disabled
;
;   Watchdog Postscaler:
;     WDPS = 1             1:1
;     WDPS = 2             1:2
;     WDPS = 4             1:4
;     WDPS = 8             1:8
;     WDPS = 16            1:16
;     WDPS = 32            1:32
;     WDPS = 64            1:64
;     WDPS = 128           1:128
;     WDPS = 256           1:256
;     WDPS = 512           1:512
;     WDPS = 1024          1:1024
;     WDPS = 2048          1:2048
;     WDPS = 4096          1:4096
;     WDPS = 8192          1:8192
;     WDPS = 16384         1:16384
;     WDPS = 32768         1:32768
;
;   Timer1 Oscillator MUX:
;     T1OSCMX = OFF        Active
;     T1OSCMX = ON         Inactive
;
;   High-Side Transistors Polarity:
;     HPOL = LOW           Active low
;     HPOL = HIGH          Active high
;
;   Low-Side Transistors Polarity:
;     LPOL = LOW           Active low
;     LPOL = HIGH          Active high
;
;   PWM output pins Reset state control:
;     PWMPIN = ON          Enabled
;     PWMPIN = OFF         Disabled
;
;   MCLR Enable:
;     MCLRE = OFF          Disabled
;     MCLRE = ON           Enabled
;
;   Stack Overflow Reset:
;     STVREN = OFF         Disabled
;     STVREN = ON          Enabled
;
;   Low Voltage Programming:
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
_OSC_RC2_1H          EQU  H'F3'    ; External RC, RA6 is CLKOUT
_OSC_EC_1H           EQU  H'F4'    ; EC, RA6 is CLKOUT
_OSC_ECIO_1H         EQU  H'F5'    ; EC, RA6 is I/O
_OSC_HSPLL_1H        EQU  H'F6'    ; HS-PLL Enabled
_OSC_RCIO_1H         EQU  H'F7'    ; External RC, RA6 is I/O
_OSC_IRCIO_1H        EQU  H'F8'    ; Internal RC, RA6 & RA7 are I/O
_OSC_IRC_1H          EQU  H'F9'    ; Internal RC, RA6 is CLKOUT, RA7 is I/O
_OSC_RC1_1H          EQU  H'FB'    ; External RC, RA6 is CLKOUT
_OSC_RC_1H           EQU  H'FF'    ; External RC, RA6 is CLKOUT

_FCMEN_OFF_1H        EQU  H'BF'    ; Disabled
_FCMEN_ON_1H         EQU  H'FF'    ; Enabled

_IESO_OFF_1H         EQU  H'7F'    ; Disabled
_IESO_ON_1H          EQU  H'FF'    ; Enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRTEN_ON_2L        EQU  H'FE'    ; Enabled
_PWRTEN_OFF_2L       EQU  H'FF'    ; Disabled

_BOREN_OFF_2L        EQU  H'FD'    ; Disabled
_BOREN_ON_2L         EQU  H'FF'    ; Enabled

_BORV_45_2L          EQU  H'F3'    ; 4.5V
_BORV_42_2L          EQU  H'F7'    ; 4.2V
_BORV_27_2L          EQU  H'FB'    ; 2.7V
_BORV_20_2L          EQU  H'FF'    ; 2.0V

;----- CONFIG2H Options --------------------------------------------------
_WDTEN_OFF_2H        EQU  H'FE'    ; Disabled
_WDTEN_ON_2H         EQU  H'FF'    ; Enabled

_WINEN_ON_2H         EQU  H'DF'    ; Enabled
_WINEN_OFF_2H        EQU  H'FF'    ; Disabled

_WDPS_1_2H           EQU  H'E1'    ; 1:1
_WDPS_2_2H           EQU  H'E3'    ; 1:2
_WDPS_4_2H           EQU  H'E5'    ; 1:4
_WDPS_8_2H           EQU  H'E7'    ; 1:8
_WDPS_16_2H          EQU  H'E9'    ; 1:16
_WDPS_32_2H          EQU  H'EB'    ; 1:32
_WDPS_64_2H          EQU  H'ED'    ; 1:64
_WDPS_128_2H         EQU  H'EF'    ; 1:128
_WDPS_256_2H         EQU  H'F1'    ; 1:256
_WDPS_512_2H         EQU  H'F3'    ; 1:512
_WDPS_1024_2H        EQU  H'F5'    ; 1:1024
_WDPS_2048_2H        EQU  H'F7'    ; 1:2048
_WDPS_4096_2H        EQU  H'F9'    ; 1:4096
_WDPS_8192_2H        EQU  H'FB'    ; 1:8192
_WDPS_16384_2H       EQU  H'FD'    ; 1:16384
_WDPS_32768_2H       EQU  H'FF'    ; 1:32768

;----- CONFIG3L Options --------------------------------------------------
_T1OSCMX_OFF_3L      EQU  H'DF'    ; Active
_T1OSCMX_ON_3L       EQU  H'FF'    ; Inactive

_HPOL_LOW_3L         EQU  H'EF'    ; Active low
_HPOL_HIGH_3L        EQU  H'FF'    ; Active high

_LPOL_LOW_3L         EQU  H'F7'    ; Active low
_LPOL_HIGH_3L        EQU  H'FF'    ; Active high

_PWMPIN_ON_3L        EQU  H'FB'    ; Enabled
_PWMPIN_OFF_3L       EQU  H'FF'    ; Disabled

;----- CONFIG3H Options --------------------------------------------------
_MCLRE_OFF_3H        EQU  H'7F'    ; Disabled
_MCLRE_ON_3H         EQU  H'FF'    ; Enabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       EQU  H'FE'    ; Disabled
_STVREN_ON_4L        EQU  H'FF'    ; Enabled

_LVP_OFF_4L          EQU  H'FB'    ; Disabled
_LVP_ON_4L           EQU  H'FF'    ; Enabled

_DEBUG_ON_4L         EQU  H'7F'    ; Enabled
_DEBUG_OFF_4L        EQU  H'FF'    ; Disabled

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           EQU  H'FE'    ; Enabled
_CP0_OFF_5L          EQU  H'FF'    ; Disabled

_CP1_ON_5L           EQU  H'FD'    ; Enabled
_CP1_OFF_5L          EQU  H'FF'    ; Disabled

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
