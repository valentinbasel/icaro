        LIST

;==========================================================================
;  $Id: p18f2450.inc,v 1.1 2006/08/19 02:52:39 craigfranklin Exp $
;  MPASM PIC18F2450 processor include
; 
;  (c) Copyright 1999-2005 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F2450 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC18F2450
;       2. LIST directive in the source file
;               LIST   P=PIC18F2450
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F2450
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
UFRM             EQU  H'0F66'
UFRML            EQU  H'0F66'
UFRMH            EQU  H'0F67'
UIR              EQU  H'0F68'
UIE              EQU  H'0F69'
UEIR             EQU  H'0F6A'
UEIE             EQU  H'0F6B'
USTAT            EQU  H'0F6C'
UCON             EQU  H'0F6D'
UADDR            EQU  H'0F6E'
UCFG             EQU  H'0F6F'
UEP0             EQU  H'0F70'
UEP1             EQU  H'0F71'
UEP2             EQU  H'0F72'
UEP3             EQU  H'0F73'
UEP4             EQU  H'0F74'
UEP5             EQU  H'0F75'
UEP6             EQU  H'0F76'
UEP7             EQU  H'0F77'
UEP8             EQU  H'0F78'
UEP9             EQU  H'0F79'
UEP10            EQU  H'0F7A'
UEP11            EQU  H'0F7B'
UEP12            EQU  H'0F7C'
UEP13            EQU  H'0F7D'
UEP14            EQU  H'0F7E'
UEP15            EQU  H'0F7F'
PORTA            EQU  H'0F80'
PORTB            EQU  H'0F81'
PORTC            EQU  H'0F82'
PORTE            EQU  H'0F84'
LATA             EQU  H'0F89'
LATB             EQU  H'0F8A'
LATC             EQU  H'0F8B'
DDRA             EQU  H'0F92'
TRISA            EQU  H'0F92'
DDRB             EQU  H'0F93'
TRISB            EQU  H'0F93'
DDRC             EQU  H'0F94'
TRISC            EQU  H'0F94'
PIE1             EQU  H'0F9D'
PIR1             EQU  H'0F9E'
IPR1             EQU  H'0F9F'
PIE2             EQU  H'0FA0'
PIR2             EQU  H'0FA1'
IPR2             EQU  H'0FA2'
EECON1           EQU  H'0FA6'
EECON2           EQU  H'0FA7'
RCSTA            EQU  H'0FAB'
TXSTA            EQU  H'0FAC'
TXREG            EQU  H'0FAD'
RCREG            EQU  H'0FAE'
SPBRG            EQU  H'0FAF'
SPBRGH           EQU  H'0FB0'
BAUDCON          EQU  H'0FB8'
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
T2CON            EQU  H'0FCA'
PR2              EQU  H'0FCB'
TMR2             EQU  H'0FCC'
T1CON            EQU  H'0FCD'
TMR1L            EQU  H'0FCE'
TMR1H            EQU  H'0FCF'
RCON             EQU  H'0FD0'
WDTCON           EQU  H'0FD1'
HLVDCON          EQU  H'0FD2'
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

;----- UIR Bits -----------------------------------------------------
URSTIF           EQU  H'0000'
UERRIF           EQU  H'0001'
ACTVIF           EQU  H'0002'
TRNIF            EQU  H'0003'
IDLEIF           EQU  H'0004'
STALLIF          EQU  H'0005'
SOFIF            EQU  H'0006'


;----- UIE Bits -----------------------------------------------------
URSTIE           EQU  H'0000'
UERRIE           EQU  H'0001'
ACTVIE           EQU  H'0002'
TRNIE            EQU  H'0003'
IDLEIE           EQU  H'0004'
STALLIE          EQU  H'0005'
SOFIE            EQU  H'0006'


;----- UEIR Bits -----------------------------------------------------
PIDEF            EQU  H'0000'
CRC5EF           EQU  H'0001'
CRC16EF          EQU  H'0002'
DFN8EF           EQU  H'0003'
BTOEF            EQU  H'0004'
BTSEF            EQU  H'0007'


;----- UEIE Bits -----------------------------------------------------
PIDEE            EQU  H'0000'
CRC5EE           EQU  H'0001'
CRC16EE          EQU  H'0002'
DFN8EE           EQU  H'0003'
BTOEE            EQU  H'0004'
BTSEE            EQU  H'0007'


;----- USTAT Bits -----------------------------------------------------
PPBI             EQU  H'0001'
DIR              EQU  H'0002'
ENDP0            EQU  H'0003'
ENDP1            EQU  H'0004'
ENDP2            EQU  H'0005'
ENDP3            EQU  H'0006'


;----- UCON Bits -----------------------------------------------------
SUSPND           EQU  H'0001'
RESUME           EQU  H'0002'
USBEN            EQU  H'0003'
PKTDIS           EQU  H'0004'
SE0              EQU  H'0005'
PPBRST           EQU  H'0006'


;----- UADDR Bits -----------------------------------------------------
ADDR0            EQU  H'0000'
ADDR1            EQU  H'0001'
ADDR2            EQU  H'0002'
ADDR3            EQU  H'0003'
ADDR4            EQU  H'0004'
ADDR5            EQU  H'0005'
ADDR6            EQU  H'0006'


;----- UCFG Bits -----------------------------------------------------
PPB0             EQU  H'0000'
PPB1             EQU  H'0001'
FSEN             EQU  H'0002'
UTRDIS           EQU  H'0003'
UPUEN            EQU  H'0004'
UOEMON           EQU  H'0006'
UTEYE            EQU  H'0007'


;----- UEP0 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP1 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP2 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP3 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP4 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP5 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP6 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP7 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP8 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP9 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP10 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP11 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP12 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP13 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP14 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP15 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


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
RCV              EQU  H'0004'
LVDIN            EQU  H'0005'

HLVDIN           EQU  H'0005'


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

AN12             EQU  H'0000'
AN10             EQU  H'0001'
AN8              EQU  H'0002'
AN9              EQU  H'0003'
AN11             EQU  H'0004'
PGM              EQU  H'0005'
PGC              EQU  H'0006'
PGD              EQU  H'0007'

VMO              EQU  H'0002'
VPO              EQU  H'0003'
KBI0             EQU  H'0004'
KBI1             EQU  H'0005'
KBI2             EQU  H'0006'
KBI3             EQU  H'0007'


;----- PORTC Bits -----------------------------------------------------
RC0              EQU  H'0000'
RC1              EQU  H'0001'
RC2              EQU  H'0002'
RC4              EQU  H'0004'
RC5              EQU  H'0005'
RC6              EQU  H'0006'
RC7              EQU  H'0007'

T1OSO            EQU  H'0000'
T1OSI            EQU  H'0001'
CCP1             EQU  H'0002'
TX               EQU  H'0006'
RX               EQU  H'0007'

T1CKI            EQU  H'0000'
NOT_UOE          EQU  H'0001'
P1A              EQU  H'0002'
CK               EQU  H'0006'
; DT is a reserved word
; DT               EQU  H'0007'

UOE              EQU  H'0001'


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
RC6              EQU  H'0006'
RC7              EQU  H'0007'


;----- TRISC Bits -----------------------------------------------------
TRISC0           EQU  H'0000'
TRISC1           EQU  H'0001'
TRISC2           EQU  H'0002'
TRISC6           EQU  H'0006'
TRISC7           EQU  H'0007'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
TXIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
CCP1IF           EQU  H'0002'
TXIF             EQU  H'0004'
RCIF             EQU  H'0005'
ADIF             EQU  H'0006'


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           EQU  H'0000'
TMR2IP           EQU  H'0001'
CCP1IP           EQU  H'0002'
TXIP             EQU  H'0004'
RCIP             EQU  H'0005'
ADIP             EQU  H'0006'


;----- PIE2 Bits -----------------------------------------------------
LVDIE            EQU  H'0002'
USBIE            EQU  H'0005'
OSCFIE           EQU  H'0007'

HLVDIE           EQU  H'0002'


;----- PIR2 Bits -----------------------------------------------------
LVDIF            EQU  H'0002'
USBIF            EQU  H'0005'
OSCFIF           EQU  H'0007'

HLVDIF           EQU  H'0002'


;----- IPR2 Bits -----------------------------------------------------
LVDIP            EQU  H'0002'
USBIP            EQU  H'0005'
OSCFIP           EQU  H'0007'

HLVDIP           EQU  H'0002'


;----- EECON1 Bits -----------------------------------------------------
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
FREE             EQU  H'0004'
CFGS             EQU  H'0006'


;----- RCSTA Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADDEN            EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

ADEN             EQU  H'0003'


;----- TXSTA Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'

RCMT             EQU  H'0006'


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
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

NOT_T1SYNC       EQU  H'0002'


;----- RCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_PD           EQU  H'0002'
NOT_TO           EQU  H'0003'
NOT_RI           EQU  H'0004'
SBOREN           EQU  H'0006'
NOT_IPEN         EQU  H'0007'

BOR              EQU  H'0000'
POR              EQU  H'0001'
PD               EQU  H'0002'
TO               EQU  H'0003'
RI               EQU  H'0004'
IPEN             EQU  H'0007'


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           EQU  H'0000'

SWDTE            EQU  H'0000'


;----- HLVDCON Bits -----------------------------------------------------
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

HLVDL0           EQU  H'0000'
HLVDL1           EQU  H'0001'
HLVDL2           EQU  H'0002'
HLVDL3           EQU  H'0003'
HLVDEN           EQU  H'0004'
VDIRMAG          EQU  H'0007'

IVRST            EQU  H'0005'


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

HLVDL0           EQU  H'0000'
HLVDL1           EQU  H'0001'
HLVDL2           EQU  H'0002'
HLVDL3           EQU  H'0003'
HLVDEN           EQU  H'0004'
VDIRMAG          EQU  H'0007'

IVRST            EQU  H'0005'


;----- OSCCON Bits -----------------------------------------------------
SCS0             EQU  H'0000'
SCS1             EQU  H'0001'
OSTS             EQU  H'0003'
IDLEN            EQU  H'0007'


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
STKFUL           EQU  H'0007'

STKOVF           EQU  H'0007'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'0FFF'
       __BADRAM  H'0200'-H'03FF'
       __BADRAM  H'0500'-H'0F5F'
       __BADRAM  H'0F83'
       __BADRAM  H'0F85'-H'0F88'
       __BADRAM  H'0F8C'-H'0F91'
       __BADRAM  H'0F95'-H'0F9C'
       __BADRAM  H'0FA3'-H'0FA5'
       __BADRAM  H'0FA8'-H'0FAA'
       __BADRAM  H'0FB1'-H'0FB7'
       __BADRAM  H'0FB9'-H'0FBC'
       __BADRAM  H'0FC5'-H'0FC9'
       __BADRAM  H'0FD4'

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   96 MHz PLL Prescaler:
;     PLLDIV = 1           No divide (4 MHz input)
;     PLLDIV = 2           Divide by 2 (8 MHz input)
;     PLLDIV = 3           Divide by 3 (12 MHz input)
;     PLLDIV = 4           Divide by 4 (16 MHz input)
;     PLLDIV = 5           Divide by 5 (20 MHz input)
;     PLLDIV = 6           Divide by 6 (24 MHz input)
;     PLLDIV = 10          Divide by 10 (40 MHz input)
;     PLLDIV = 12          Divide by 12 (48 MHz input)
;
;   CPU System Clock Postscaler:
;     CPUDIV = OSC1_PLL2   [OSC1/OSC2 Src: /1][96 MHz PLL Src: /2]
;     CPUDIV = OSC2_PLL3   [OSC1/OSC2 Src: /2][96 MHz PLL Src: /3]
;     CPUDIV = OSC3_PLL4   [OSC1/OSC2 Src: /3][96 MHz PLL Src: /4]
;     CPUDIV = OSC4_PLL6   [OSC1/OSC2 Src: /4][96 MHz PLL Src: /6]
;
;   Full-Speed USB Clock Source Selection:
;     USBDIV = 1           Clock source from OSC1/OSC2
;     USBDIV = 2           Clock source from 96 MHz PLL/2
;
;   Oscillator Selection bits:
;     FOSC = XT_XT         XT oscillator, XT used by USB
;     FOSC = XTPLL_XT      XT oscillator, PLL enabled, XT used by USB
;     FOSC = ECIO_EC       External clock, port function on RA6, EC used by USB
;     FOSC = EC_EC         External clock, CLKOUT on RA6, EC used by USB
;     FOSC = ECPLLIO_EC    External clock, PLL enabled, port function on RA6, EC used by USB
;     FOSC = ECPLL_EC      External clock, PLL enabled, CLKOUT on RA6, EC used by USB
;     FOSC = INTOSCIO_EC   Internal oscillator, port function on RA6, EC used by USB
;     FOSC = INTOSC_EC     Internal oscillator, CLKOUT on RA6, EC used by USB
;     FOSC = INTOSC_XT     Internal oscillator, XT used by USB
;     FOSC = INTOSC_HS     Internal oscillator, HS used by USB
;     FOSC = HS            HS oscillator, HS used by USB
;     FOSC = HSPLL_HS      HS oscillator, PLL enabled, HS used by USB
;
;   Fail-Safe Clock Monitor:
;     FCMEM = OFF          Disabled
;     FCMEM = ON           Enabled
;
;   Internal/External Switch Over:
;     IESO = OFF           Disabled
;     IESO = ON            Enabled
;
;   Power-up Timer:
;     PWRT = ON            Enabled
;     PWRT = OFF           Disabled
;
;   Brown-out Reset:
;     BOR = OFF            Disabled
;     BOR = SOFT           Controlled by SBOREN
;     BOR = ON_ACTIVE      Enabled when the device is not in Sleep, SBOREN bit is disabled
;     BOR = ON             Enabled, SBOREN bit is disabled
;
;   Brown-out Voltage:
;     BORV = 46            4.6V
;     BORV = 43            4.3V
;     BORV = 28            2.8V
;     BORV = 21            2.1V
;
;   USB Voltage Regulator Enable:
;     VREGEN = OFF         Disabled
;     VREGEN = ON          Enabled
;
;   Watchdog Timer:
;     WDT = OFF            HW Disabled - SW Controlled
;     WDT = ON             HW Enabled - SW Disabled
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
;   Low Power Timer1 Oscillator Enable:
;     LPT1OSC = OFF        Timer1 oscillator configured for high power
;     LPT1OSC = ON         Timer1 oscillator configured for low power
;
;   PORTB A/D Enable:
;     PBADEN = OFF         PORTB<4:0> pins are configured as digital I/O on Reset
;     PBADEN = ON          PORTB<4:0> pins are configured as analog input on Reset
;
;   Stack Overflow Reset:
;     STVREN = OFF         Disabled
;     STVREN = ON          Enabled
;
;   Low Voltage ICSP:
;     LVP = OFF            Disabled
;     LVP = ON             Enabled
;
;   Boot Block Size Select Bit:
;     BBSIZ = BB2K         2KW Boot Block Size
;     BBSIZ = BB1K         1KW Boot Block Size
;
;   Dedicated In-Circuit Debug/Programming Enable:
;     ICPRT = OFF          Disabled
;     ICPRT = ON           Enabled
;
;   Extended Instruction Set Enable:
;     XINST = OFF          Disabled
;     XINST = ON           Enabled
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
;   CONFIG1L        300000h
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
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
_CONFIG1L        EQU  H'300000'
_CONFIG1H        EQU  H'300001'
_CONFIG2L        EQU  H'300002'
_CONFIG2H        EQU  H'300003'
_CONFIG3H        EQU  H'300005'
_CONFIG4L        EQU  H'300006'
_CONFIG5L        EQU  H'300008'
_CONFIG5H        EQU  H'300009'
_CONFIG6L        EQU  H'30000A'
_CONFIG6H        EQU  H'30000B'
_CONFIG7L        EQU  H'30000C'
_CONFIG7H        EQU  H'30000D'

;----- CONFIG1L Options --------------------------------------------------
_PLLDIV_1_1L         EQU  H'F8'    ; No divide (4 MHz input)
_PLLDIV_2_1L         EQU  H'F9'    ; Divide by 2 (8 MHz input)
_PLLDIV_3_1L         EQU  H'FA'    ; Divide by 3 (12 MHz input)
_PLLDIV_4_1L         EQU  H'FB'    ; Divide by 4 (16 MHz input)
_PLLDIV_5_1L         EQU  H'FC'    ; Divide by 5 (20 MHz input)
_PLLDIV_6_1L         EQU  H'FD'    ; Divide by 6 (24 MHz input)
_PLLDIV_10_1L        EQU  H'FE'    ; Divide by 10 (40 MHz input)
_PLLDIV_12_1L        EQU  H'FF'    ; Divide by 12 (48 MHz input)

_CPUDIV_OSC1_PLL2_1L EQU  H'E7'    ; [OSC1/OSC2 Src: /1][96 MHz PLL Src: /2]
_CPUDIV_OSC2_PLL3_1L EQU  H'EF'    ; [OSC1/OSC2 Src: /2][96 MHz PLL Src: /3]
_CPUDIV_OSC3_PLL4_1L EQU  H'F7'    ; [OSC1/OSC2 Src: /3][96 MHz PLL Src: /4]
_CPUDIV_OSC4_PLL6_1L EQU  H'FF'    ; [OSC1/OSC2 Src: /4][96 MHz PLL Src: /6]

_USBDIV_1_1L         EQU  H'DF'    ; Clock source from OSC1/OSC2
_USBDIV_2_1L         EQU  H'FF'    ; Clock source from 96 MHz PLL/2

;----- CONFIG1H Options --------------------------------------------------
_FOSC_XT_XT_1H       EQU  H'F0'    ; XT oscillator, XT used by USB
_FOSC_XTPLL_XT_1H    EQU  H'F2'    ; XT oscillator, PLL enabled, XT used by USB
_FOSC_ECIO_EC_1H     EQU  H'F4'    ; External clock, port function on RA6, EC used by USB
_FOSC_EC_EC_1H       EQU  H'F5'    ; External clock, CLKOUT on RA6, EC used by USB
_FOSC_ECPLLIO_EC_1H  EQU  H'F6'    ; External clock, PLL enabled, port function on RA6, EC used by USB
_FOSC_ECPLL_EC_1H    EQU  H'F7'    ; External clock, PLL enabled, CLKOUT on RA6, EC used by USB
_FOSC_INTOSCIO_EC_1H EQU  H'F8'    ; Internal oscillator, port function on RA6, EC used by USB
_FOSC_INTOSC_EC_1H   EQU  H'F9'    ; Internal oscillator, CLKOUT on RA6, EC used by USB
_FOSC_INTOSC_XT_1H   EQU  H'FA'    ; Internal oscillator, XT used by USB
_FOSC_INTOSC_HS_1H   EQU  H'FB'    ; Internal oscillator, HS used by USB
_FOSC_HS_1H          EQU  H'FC'    ; HS oscillator, HS used by USB
_FOSC_HSPLL_HS_1H    EQU  H'FE'    ; HS oscillator, PLL enabled, HS used by USB

_FCMEM_OFF_1H        EQU  H'BF'    ; Disabled
_FCMEM_ON_1H         EQU  H'FF'    ; Enabled

_IESO_OFF_1H         EQU  H'7F'    ; Disabled
_IESO_ON_1H          EQU  H'FF'    ; Enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          EQU  H'FE'    ; Enabled
_PWRT_OFF_2L         EQU  H'FF'    ; Disabled

_BOR_OFF_2L          EQU  H'F9'    ; Disabled
_BOR_SOFT_2L         EQU  H'FB'    ; Controlled by SBOREN
_BOR_ON_ACTIVE_2L    EQU  H'FD'    ; Enabled when the device is not in Sleep, SBOREN bit is disabled
_BOR_ON_2L           EQU  H'FF'    ; Enabled, SBOREN bit is disabled

_BORV_46_2L          EQU  H'E7'    ; 4.6V
_BORV_43_2L          EQU  H'EF'    ; 4.3V
_BORV_28_2L          EQU  H'F7'    ; 2.8V
_BORV_21_2L          EQU  H'FF'    ; 2.1V

_VREGEN_OFF_2L       EQU  H'DF'    ; Disabled
_VREGEN_ON_2L        EQU  H'FF'    ; Enabled

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          EQU  H'FE'    ; HW Disabled - SW Controlled
_WDT_ON_2H           EQU  H'FF'    ; HW Enabled - SW Disabled

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

;----- CONFIG3H Options --------------------------------------------------
_MCLRE_OFF_3H        EQU  H'7F'    ; Disabled
_MCLRE_ON_3H         EQU  H'FF'    ; Enabled

_LPT1OSC_OFF_3H      EQU  H'FB'    ; Timer1 oscillator configured for high power
_LPT1OSC_ON_3H       EQU  H'FF'    ; Timer1 oscillator configured for low power

_PBADEN_OFF_3H       EQU  H'FD'    ; PORTB<4:0> pins are configured as digital I/O on Reset
_PBADEN_ON_3H        EQU  H'FF'    ; PORTB<4:0> pins are configured as analog input on Reset

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       EQU  H'FE'    ; Disabled
_STVREN_ON_4L        EQU  H'FF'    ; Enabled

_LVP_OFF_4L          EQU  H'FB'    ; Disabled
_LVP_ON_4L           EQU  H'FF'    ; Enabled

_BBSIZ_BB2K_4L       EQU  H'F7'    ; 2KW Boot Block Size
_BBSIZ_BB1K_4L       EQU  H'FF'    ; 1KW Boot Block Size

_ICPRT_OFF_4L        EQU  H'DF'    ; Disabled
_ICPRT_ON_4L         EQU  H'FF'    ; Enabled

_XINST_OFF_4L        EQU  H'BF'    ; Disabled
_XINST_ON_4L         EQU  H'FF'    ; Enabled

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
