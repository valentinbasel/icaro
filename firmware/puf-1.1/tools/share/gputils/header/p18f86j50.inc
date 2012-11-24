        LIST

;==========================================================================
;  $Id: p18f86j50.inc,v 1.1 2006/08/19 02:52:41 craigfranklin Exp $
;  MPASM PIC18F86J50 processor include
; 
;  (c) Copyright 1999-2006 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F86J50 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC18F86J50
;       2. LIST directive in the source file
;               LIST   P=PIC18F86J50
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F86J50
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
PMSTAT           EQU  H'0F40'
PMSTATL          EQU  H'0F40'
PMSTATH          EQU  H'0F41'
PMPENL           EQU  H'0F42'
PMPENH           EQU  H'0F43'
PMPDATA2         EQU  H'0F44'
PMPDATA2L        EQU  H'0F44'
PMPDATA2H        EQU  H'0F45'
PMDOUT2          EQU  H'0F46'
PMDOUT2L         EQU  H'0F46'
PMDOUT2H         EQU  H'0F47'
PMPMODE          EQU  H'0F48'
PMPMODEL         EQU  H'0F48'
PMPMODEH         EQU  H'0F49'
PMPCON           EQU  H'0F4A'
PMPCONL          EQU  H'0F4A'
PMPCONH          EQU  H'0F4B'
UEP0             EQU  H'0F4C'
UEP1             EQU  H'0F4D'
UEP2             EQU  H'0F4E'
UEP3             EQU  H'0F4F'
UEP4             EQU  H'0F50'
UEP5             EQU  H'0F51'
UEP6             EQU  H'0F52'
UEP7             EQU  H'0F53'
UEP8             EQU  H'0F54'
UEP9             EQU  H'0F55'
UEP10            EQU  H'0F56'
UEP11            EQU  H'0F57'
UEP12            EQU  H'0F58'
UEP13            EQU  H'0F59'
UEP14            EQU  H'0F5A'
UEP15            EQU  H'0F5B'
UIE              EQU  H'0F5C'
UEIE             EQU  H'0F5D'
UADDR            EQU  H'0F5E'
UCFG             EQU  H'0F5F'
UFRM             EQU  H'0F60'
UFRML            EQU  H'0F60'
UFRMH            EQU  H'0F61'
UIR              EQU  H'0F62'
UEIR             EQU  H'0F63'
USTAT            EQU  H'0F64'
UCON             EQU  H'0F65'
PMPDATA1         EQU  H'0F66'
PMPDATA1L        EQU  H'0F66'
PMPDATA1H        EQU  H'0F67'
PMDOUT1          EQU  H'0F68'
PMDOUT1L         EQU  H'0F68'
PMPADDR          EQU  H'0F68'
PMPADDRL         EQU  H'0F68'
PMDOUT1H         EQU  H'0F69'
PMPADDRH         EQU  H'0F69'
CMSTATUS         EQU  H'0F6A'
SSP2CON2         EQU  H'0F6B'
SSP2CON1         EQU  H'0F6C'
SSP2STAT         EQU  H'0F6D'
SSP2ADD          EQU  H'0F6E'
SSP2MSK          EQU  H'0F6E'
SSP2BUF          EQU  H'0F6F'
CCP5CON          EQU  H'0F70'
CCPR5            EQU  H'0F71'
CCPR5L           EQU  H'0F71'
CCPR5H           EQU  H'0F72'
CCP4CON          EQU  H'0F73'
CCPR4            EQU  H'0F74'
CCPR4L           EQU  H'0F74'
CCPR4H           EQU  H'0F75'
T4CON            EQU  H'0F76'
CVRCON           EQU  H'0F77'
PR4              EQU  H'0F77'
TMR4             EQU  H'0F78'
T3CON            EQU  H'0F79'
TMR3L            EQU  H'0F7A'
TMR3H            EQU  H'0F7B'
BAUDCON2         EQU  H'0F7C'
SPBRGH2          EQU  H'0F7D'
BAUDCON1         EQU  H'0F7E'
SPBRGH1          EQU  H'0F7F'
PORTA            EQU  H'0F80'
PORTB            EQU  H'0F81'
PORTC            EQU  H'0F82'
PORTD            EQU  H'0F83'
PORTE            EQU  H'0F84'
PORTF            EQU  H'0F85'
PORTG            EQU  H'0F86'
PORTH            EQU  H'0F87'
PORTJ            EQU  H'0F88'
LATA             EQU  H'0F89'
LATB             EQU  H'0F8A'
LATC             EQU  H'0F8B'
LATD             EQU  H'0F8C'
LATE             EQU  H'0F8D'
LATF             EQU  H'0F8E'
LATG             EQU  H'0F8F'
LATH             EQU  H'0F90'
LATJ             EQU  H'0F91'
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
DDRH             EQU  H'0F99'
TRISH            EQU  H'0F99'
DDRJ             EQU  H'0F9A'
TRISJ            EQU  H'0F9A'
OSCTUNE          EQU  H'0F9B'
RCSTA2           EQU  H'0F9C'
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
TXSTA2           EQU  H'0FA8'
TXREG2           EQU  H'0FA9'
RCREG2           EQU  H'0FAA'
SPBRG2           EQU  H'0FAB'
RCSTA            EQU  H'0FAC'
RCSTA1           EQU  H'0FAC'
TXSTA            EQU  H'0FAD'
TXSTA1           EQU  H'0FAD'
TXREG            EQU  H'0FAE'
TXREG1           EQU  H'0FAE'
RCREG            EQU  H'0FAF'
RCREG1           EQU  H'0FAF'
SPBRG            EQU  H'0FB0'
SPBRG1           EQU  H'0FB0'
CCP3CON          EQU  H'0FB1'
ECCP3CON         EQU  H'0FB1'
CCPR3            EQU  H'0FB2'
CCPR3L           EQU  H'0FB2'
CCPR3H           EQU  H'0FB3'
PWM3CON          EQU  H'0FB4'
ECCP3AS          EQU  H'0FB5'
CCP2CON          EQU  H'0FB6'
ECCP2CON         EQU  H'0FB6'
CCPR2            EQU  H'0FB7'
CCPR2L           EQU  H'0FB7'
CCPR2H           EQU  H'0FB8'
PWM2CON          EQU  H'0FB9'
ECCP2AS          EQU  H'0FBA'
CCP1CON          EQU  H'0FBB'
ECCP1CON         EQU  H'0FBB'
CCPR1            EQU  H'0FBC'
CCPR1L           EQU  H'0FBC'
CCPR1H           EQU  H'0FBD'
PWM1CON          EQU  H'0FBE'
ECCP1AS          EQU  H'0FBF'
WDTCON           EQU  H'0FC0'
ADCON2           EQU  H'0FC1'
ADPCFG           EQU  H'0FC1'
ADPCFGL          EQU  H'0FC1'
ADCON1           EQU  H'0FC2'
ADPCFGH          EQU  H'0FC2'
ADRES            EQU  H'0FC3'
ADRESL           EQU  H'0FC3'
ADRESH           EQU  H'0FC4'
SSP1CON2         EQU  H'0FC5'
SSPCON2          EQU  H'0FC5'
SSP1CON1         EQU  H'0FC6'
SSPCON1          EQU  H'0FC6'
SSP1STAT         EQU  H'0FC7'
SSPSTAT          EQU  H'0FC7'
SSP1ADD          EQU  H'0FC8'
SSP1MSK          EQU  H'0FC8'
SSPADD           EQU  H'0FC8'
SSP1BUF          EQU  H'0FC9'
SSPBUF           EQU  H'0FC9'
T2CON            EQU  H'0FCA'
MEMCON           EQU  H'0FCB'
PR2              EQU  H'0FCB'
PADCFG1          EQU  H'0FCC'
TMR2             EQU  H'0FCC'
ODCON3           EQU  H'0FCD'
T1CON            EQU  H'0FCD'
ODCON2           EQU  H'0FCE'
TMR1L            EQU  H'0FCE'
ODCON1           EQU  H'0FCF'
TMR1H            EQU  H'0FCF'
RCON             EQU  H'0FD0'
CM2CON1          EQU  H'0FD1'
CM1CON1          EQU  H'0FD2'
OSCCON           EQU  H'0FD3'
RF0CON           EQU  H'0FD3'
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

;----- PMSTATL Bits -----------------------------------------------------
OB0E             EQU  H'0000'
OB1E             EQU  H'0001'
OB2E             EQU  H'0002'
OB3E             EQU  H'0003'
OBUF             EQU  H'0006'
OBE              EQU  H'0007'


;----- PMSTATH Bits -----------------------------------------------------
IB0F             EQU  H'0000'
IB1F             EQU  H'0001'
IB2F             EQU  H'0002'
IB3F             EQU  H'0003'
IBOV             EQU  H'0006'
IBF              EQU  H'0007'


;----- PMPENL Bits -----------------------------------------------------
PTEN7            EQU  H'0000'
PTEN6            EQU  H'0001'
PTEN5            EQU  H'0002'
PTEN4            EQU  H'0003'
PTEN3            EQU  H'0004'
PTEN2            EQU  H'0005'
PTEN1            EQU  H'0006'
PTEN0            EQU  H'0007'


;----- PMPENH Bits -----------------------------------------------------
PTEN15           EQU  H'0000'
PTEN14           EQU  H'0001'
PTEN13           EQU  H'0002'
PTEN12           EQU  H'0003'
PTEN11           EQU  H'0004'
PTEN10           EQU  H'0005'
PTEN9            EQU  H'0006'
PTEN8            EQU  H'0007'


;----- PMPMODEL Bits -----------------------------------------------------
WAITE0           EQU  H'0000'
WAITE1           EQU  H'0001'
WAITM0           EQU  H'0002'
WAITM1           EQU  H'0003'
WAITM2           EQU  H'0004'
WAITM3           EQU  H'0005'
WAITB0           EQU  H'0006'
WAITB1           EQU  H'0007'


;----- PMPMODEH Bits -----------------------------------------------------
MODE0            EQU  H'0000'
MODE1            EQU  H'0001'
MODE16           EQU  H'0002'
INCM0            EQU  H'0003'
INCM1            EQU  H'0004'
IRQM0            EQU  H'0005'
IRQM1            EQU  H'0006'
BUSY             EQU  H'0007'


;----- PMPCONL Bits -----------------------------------------------------
RDSP             EQU  H'0000'
WRSP             EQU  H'0001'
BEP              EQU  H'0002'
CS1P             EQU  H'0003'
CS2P             EQU  H'0004'
ALP              EQU  H'0005'
CSF0             EQU  H'0006'
CSF1             EQU  H'0007'


;----- PMPCONH Bits -----------------------------------------------------
PTRDEN           EQU  H'0000'
PTWREN           EQU  H'0001'
PTBEEN           EQU  H'0002'
ADRMUX0          EQU  H'0003'
ADRMUX1          EQU  H'0004'
PSIDL            EQU  H'0005'
PFRZ             EQU  H'0006'
PMPEN            EQU  H'0007'


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


;----- UIE Bits -----------------------------------------------------
URSTIE           EQU  H'0000'
UERRIE           EQU  H'0001'
ACTVIE           EQU  H'0002'
TRNIE            EQU  H'0003'
IDLEIE           EQU  H'0004'
STALLIE          EQU  H'0005'
SOFIE            EQU  H'0006'


;----- UEIE Bits -----------------------------------------------------
PIDEE            EQU  H'0000'
CRC5EE           EQU  H'0001'
CRC16EE          EQU  H'0002'
DFN8EE           EQU  H'0003'
BTOEE            EQU  H'0004'
BTSEE            EQU  H'0007'


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


;----- UFRML Bits -----------------------------------------------------
FRM0             EQU  H'0000'
FRM1             EQU  H'0001'
FRM2             EQU  H'0002'
FRM3             EQU  H'0003'
FRM4             EQU  H'0004'
FRM5             EQU  H'0005'
FRM6             EQU  H'0006'
FRM7             EQU  H'0007'


;----- UFRMH Bits -----------------------------------------------------
FRM8             EQU  H'0000'
FRM9             EQU  H'0001'
FRM10            EQU  H'0002'


;----- UIR Bits -----------------------------------------------------
URSTIF           EQU  H'0000'
UERRIF           EQU  H'0001'
ACTVIF           EQU  H'0002'
TRNIF            EQU  H'0003'
IDLEIF           EQU  H'0004'
STALLIF          EQU  H'0005'
SOFIF            EQU  H'0006'


;----- UEIR Bits -----------------------------------------------------
PIDEF            EQU  H'0000'
CRC5EF           EQU  H'0001'
CRC16EF          EQU  H'0002'
DFN8EF           EQU  H'0003'
BTOEF            EQU  H'0004'
BTSEF            EQU  H'0007'


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


;----- PMPADDRH Bits -----------------------------------------------------
CS1              EQU  H'0006'
CS2              EQU  H'0007'


;----- CMSTATUS Bits -----------------------------------------------------
COUT1            EQU  H'0000'
COUT2            EQU  H'0001'


;----- SSP2CON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- SSP2CON1 Bits -----------------------------------------------------
SSPM0            EQU  H'0000'
SSPM1            EQU  H'0001'
SSPM2            EQU  H'0002'
SSPM3            EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'


;----- SSP2STAT Bits -----------------------------------------------------
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


;----- SSP2MSK Bits -----------------------------------------------------
MSK0             EQU  H'0000'
MSK1             EQU  H'0001'
MSK2             EQU  H'0002'
MSK3             EQU  H'0003'
MSK4             EQU  H'0004'
MSK5             EQU  H'0005'
MSK6             EQU  H'0006'
MSK7             EQU  H'0007'


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           EQU  H'0000'
CCP5M1           EQU  H'0001'
CCP5M2           EQU  H'0002'
CCP5M3           EQU  H'0003'
DCCP5Y           EQU  H'0004'
DCCP5X           EQU  H'0005'

DC5B0            EQU  H'0004'
DC5B1            EQU  H'0005'


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           EQU  H'0000'
CCP4M1           EQU  H'0001'
CCP4M2           EQU  H'0002'
CCP4M3           EQU  H'0003'
DCCP4Y           EQU  H'0004'
DCCP4X           EQU  H'0005'

DC4B0            EQU  H'0004'
DC4B1            EQU  H'0005'


;----- T4CON Bits -----------------------------------------------------
T4CKPS0          EQU  H'0000'
T4CKPS1          EQU  H'0001'
TMR4ON           EQU  H'0002'
T4OUTPS0         EQU  H'0003'
T4OUTPS1         EQU  H'0004'
T4OUTPS2         EQU  H'0005'
T4OUTPS3         EQU  H'0006'


;----- CVRCON Bits -----------------------------------------------------
CVR0             EQU  H'0000'
CVR1             EQU  H'0001'
CVR2             EQU  H'0002'
CVR3             EQU  H'0003'
CVRSS            EQU  H'0004'
CVRR             EQU  H'0005'
CVROE            EQU  H'0006'
CVREN            EQU  H'0007'


;----- T3CON Bits -----------------------------------------------------
TMR3ON           EQU  H'0000'
TMR3CS           EQU  H'0001'
T3SYNC           EQU  H'0002'
T3CCP1           EQU  H'0003'
T3CKPS0          EQU  H'0004'
T3CKPS1          EQU  H'0005'
T3CCP2           EQU  H'0006'
RD16             EQU  H'0007'

T3INSYNC         EQU  H'0002'

NOT_T3SYNC       EQU  H'0002'


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
DTRXP            EQU  H'0005'
RCMT             EQU  H'0006'
ABDOVF           EQU  H'0007'

RCIDL            EQU  H'0006'


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
DTRXP            EQU  H'0005'
RCMT             EQU  H'0006'
ABDOVF           EQU  H'0007'

RCIDL            EQU  H'0006'


;----- PORTA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'

AN0              EQU  H'0000'
AN1              EQU  H'0001'
AN2              EQU  H'0002'
AN3              EQU  H'0003'
T0CKI            EQU  H'0004'
AN4              EQU  H'0005'
OSC2             EQU  H'0006'

VREFM            EQU  H'0002'
VREFP            EQU  H'0003'
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

PGM              EQU  H'0004'
PGC              EQU  H'0005'
PGD              EQU  H'0006'


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
TX               EQU  H'0006'
RX               EQU  H'0007'

T13CKI           EQU  H'0000'
CCP2             EQU  H'0001'
SCL              EQU  H'0003'
SDA              EQU  H'0004'
CK               EQU  H'0006'
; DT is a reserved word
; DT               EQU  H'0007'


;----- PORTD Bits -----------------------------------------------------
RD0              EQU  H'0000'
RD1              EQU  H'0001'
RD2              EQU  H'0002'
RD3              EQU  H'0003'
RD4              EQU  H'0004'
RD5              EQU  H'0005'
RD6              EQU  H'0006'
RD7              EQU  H'0007'

PMPD0            EQU  H'0000'
PMPD1            EQU  H'0001'
PMPD2            EQU  H'0002'
PMPD3            EQU  H'0003'
PMPD4            EQU  H'0004'
PMPD5            EQU  H'0005'
PMPD6            EQU  H'0006'
PMPD7            EQU  H'0007'

AD00             EQU  H'0000'
AD01             EQU  H'0001'
AD02             EQU  H'0002'
AD03             EQU  H'0003'
AD04             EQU  H'0004'
AD05             EQU  H'0005'
AD06             EQU  H'0006'
AD07             EQU  H'0007'

SDA2             EQU  H'0005'
SCL2             EQU  H'0006'
SS2              EQU  H'0007'

SDO2             EQU  H'0004'
SDI2             EQU  H'0005'
SCK2             EQU  H'0006'


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

AD8              EQU  H'0000'
AD9              EQU  H'0001'
AD10             EQU  H'0002'
AD11             EQU  H'0003'
AD12             EQU  H'0004'
AD13             EQU  H'0005'
AD14             EQU  H'0006'
AD15             EQU  H'0007'


;----- PORTF Bits -----------------------------------------------------
RF1              EQU  H'0001'
RF2              EQU  H'0002'
RF3              EQU  H'0003'
RF4              EQU  H'0004'
RF5              EQU  H'0005'
RF6              EQU  H'0006'
RF7              EQU  H'0007'

AN6              EQU  H'0001'
AN7              EQU  H'0002'
AN8              EQU  H'0003'
AN9              EQU  H'0004'
AN10             EQU  H'0005'
AN11             EQU  H'0006'
SS               EQU  H'0007'

CVREF            EQU  H'0003'

C2OUT            EQU  H'0001'
C1OUT            EQU  H'0002'
C2INB            EQU  H'0003'
C2INA            EQU  H'0004'
C1INB            EQU  H'0005'
C1INA            EQU  H'0006'


;----- PORTG Bits -----------------------------------------------------
RG0              EQU  H'0000'
RG1              EQU  H'0001'
RG2              EQU  H'0002'
RG3              EQU  H'0003'
RG4              EQU  H'0004'

CCP3             EQU  H'0000'
TX2              EQU  H'0001'
RX2              EQU  H'0002'
CCP4             EQU  H'0003'
CCP5             EQU  H'0004'

CK2              EQU  H'0001'
DT2              EQU  H'0002'

RJPU             EQU  H'0005'
REPU             EQU  H'0006'
RDPU             EQU  H'0007'


;----- PORTH Bits -----------------------------------------------------
RH0              EQU  H'0000'
RH1              EQU  H'0001'
RH2              EQU  H'0002'
RH3              EQU  H'0003'
RH4              EQU  H'0004'
RH5              EQU  H'0005'
RH6              EQU  H'0006'
RH7              EQU  H'0007'

AD16             EQU  H'0000'
AD17             EQU  H'0001'
AD18             EQU  H'0002'
AD19             EQU  H'0003'
AN12             EQU  H'0004'
AN13             EQU  H'0005'
AN14             EQU  H'0006'
AN15             EQU  H'0007'


;----- PORTJ Bits -----------------------------------------------------
RJ0              EQU  H'0000'
RJ1              EQU  H'0001'
RJ2              EQU  H'0002'
RJ3              EQU  H'0003'
RJ4              EQU  H'0004'
RJ5              EQU  H'0005'
RJ6              EQU  H'0006'
RJ7              EQU  H'0007'

ALE              EQU  H'0000'
OE               EQU  H'0001'
WRL              EQU  H'0002'
WRH              EQU  H'0003'
BA0              EQU  H'0004'
CE               EQU  H'0005'
LB               EQU  H'0006'
UB               EQU  H'0007'


;----- LATA Bits -----------------------------------------------------
LATA0            EQU  H'0000'
LATA1            EQU  H'0001'
LATA2            EQU  H'0002'
LATA3            EQU  H'0003'
LATA4            EQU  H'0004'
LATA5            EQU  H'0005'


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
LATF2            EQU  H'0002'
LATF5            EQU  H'0005'
LATF6            EQU  H'0006'
LATF7            EQU  H'0007'


;----- LATG Bits -----------------------------------------------------
LATG0            EQU  H'0000'
LATG1            EQU  H'0001'
LATG2            EQU  H'0002'
LATG3            EQU  H'0003'
LATG4            EQU  H'0004'


;----- LATH Bits -----------------------------------------------------
LATH0            EQU  H'0000'
LATH1            EQU  H'0001'
LATH2            EQU  H'0002'
LATH3            EQU  H'0003'
LATH4            EQU  H'0004'
LATH5            EQU  H'0005'
LATH6            EQU  H'0006'
LATH7            EQU  H'0007'


;----- LATJ Bits -----------------------------------------------------
LATJ0            EQU  H'0000'
LATJ1            EQU  H'0001'
LATJ2            EQU  H'0002'
LATJ3            EQU  H'0003'
LATJ4            EQU  H'0004'
LATJ5            EQU  H'0005'
LATJ6            EQU  H'0006'
LATJ7            EQU  H'0007'


;----- DDRA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'


;----- TRISA Bits -----------------------------------------------------
TRISA0           EQU  H'0000'
TRISA1           EQU  H'0001'
TRISA2           EQU  H'0002'
TRISA3           EQU  H'0003'
TRISA4           EQU  H'0004'
TRISA5           EQU  H'0005'


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
RF1              EQU  H'0001'
RF2              EQU  H'0002'
RF3              EQU  H'0003'
RF4              EQU  H'0004'
RF5              EQU  H'0005'
RF6              EQU  H'0006'
RF7              EQU  H'0007'


;----- TRISF Bits -----------------------------------------------------
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


;----- TRISG Bits -----------------------------------------------------
TRISG0           EQU  H'0000'
TRISG1           EQU  H'0001'
TRISG2           EQU  H'0002'
TRISG3           EQU  H'0003'
TRISG4           EQU  H'0004'


;----- DDRH Bits -----------------------------------------------------
RH0              EQU  H'0000'
RH1              EQU  H'0001'
RH2              EQU  H'0002'
RH3              EQU  H'0003'
RH4              EQU  H'0004'
RH5              EQU  H'0005'
RH6              EQU  H'0006'
RH7              EQU  H'0007'


;----- TRISH Bits -----------------------------------------------------
TRISH0           EQU  H'0000'
TRISH1           EQU  H'0001'
TRISH2           EQU  H'0002'
TRISH3           EQU  H'0003'
TRISH4           EQU  H'0004'
TRISH5           EQU  H'0005'
TRISH6           EQU  H'0006'
TRISH7           EQU  H'0007'


;----- DDRJ Bits -----------------------------------------------------
RJ0              EQU  H'0000'
RJ1              EQU  H'0001'
RJ2              EQU  H'0002'
RJ3              EQU  H'0003'
RJ4              EQU  H'0004'
RJ5              EQU  H'0005'
RJ6              EQU  H'0006'
RJ7              EQU  H'0007'


;----- TRISJ Bits -----------------------------------------------------
TRISJ0           EQU  H'0000'
TRISJ1           EQU  H'0001'
TRISJ2           EQU  H'0002'
TRISJ3           EQU  H'0003'
TRISJ4           EQU  H'0004'
TRISJ5           EQU  H'0005'
TRISJ6           EQU  H'0006'
TRISJ7           EQU  H'0007'


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'
TUN5             EQU  H'0005'
PLLEN            EQU  H'0006'
HF256DIV         EQU  H'0007'


;----- RCSTA2 Bits -----------------------------------------------------
RCD8             EQU  H'0000'
RC9              EQU  H'0006'

NOT_RC8          EQU  H'0006'

RC8_9            EQU  H'0006'

RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADDEN            EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
SSPIE            EQU  H'0003'
TXIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'
PMPIE            EQU  H'0007'

SSP1IE           EQU  H'0003'
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
PMPIF            EQU  H'0007'

SSP1IF           EQU  H'0003'
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
PMPIP            EQU  H'0007'

SSP1IP           EQU  H'0003'
TX1IP            EQU  H'0004'
RC1IP            EQU  H'0005'


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           EQU  H'0000'
TMR3IE           EQU  H'0001'
LVDIE            EQU  H'0002'
BCLIE            EQU  H'0003'
USBIE            EQU  H'0004'
CM1IE            EQU  H'0005'
CM2IE            EQU  H'0006'
OSCFIE           EQU  H'0007'

BCL1IE           EQU  H'0003'


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           EQU  H'0000'
TMR3IF           EQU  H'0001'
LVDIF            EQU  H'0002'
BCLIF            EQU  H'0003'
USBIF            EQU  H'0004'
CM1IF            EQU  H'0005'
CM2IF            EQU  H'0006'
OSCFIF           EQU  H'0007'

BCL1IF           EQU  H'0003'


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           EQU  H'0000'
TMR3IP           EQU  H'0001'
LVDIP            EQU  H'0002'
BCLIP            EQU  H'0003'
USBIP            EQU  H'0004'
CM1IP            EQU  H'0005'
CM2IP            EQU  H'0006'
OSCFIP           EQU  H'0007'

BCL1IP           EQU  H'0003'


;----- PIE3 Bits -----------------------------------------------------
CCP3IE           EQU  H'0000'
CCP4IE           EQU  H'0001'
CCP5IE           EQU  H'0002'
TMR4IE           EQU  H'0003'
TX2IE            EQU  H'0004'
RC2IE            EQU  H'0005'
BCL2IE           EQU  H'0006'
SSP2IE           EQU  H'0007'


;----- PIR3 Bits -----------------------------------------------------
CCP3IF           EQU  H'0000'
CCP4IF           EQU  H'0001'
CCP5IF           EQU  H'0002'
TMR4IF           EQU  H'0003'
TX2IF            EQU  H'0004'
RC2IF            EQU  H'0005'
BCL2IF           EQU  H'0006'
SSP2IF           EQU  H'0007'


;----- IPR3 Bits -----------------------------------------------------
CCP3IP           EQU  H'0000'
CCP4IP           EQU  H'0001'
CCP5IP           EQU  H'0002'
TMR4IP           EQU  H'0003'
TX2IP            EQU  H'0004'
RC2IP            EQU  H'0005'
BCL2IP           EQU  H'0006'
SSP2IP           EQU  H'0007'


;----- EECON1 Bits -----------------------------------------------------
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
FREE             EQU  H'0004'
WPROG            EQU  H'0005'


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'

TXD8             EQU  H'0000'
TX8_9            EQU  H'0006'

NOT_TX8          EQU  H'0006'


;----- RCSTA Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADDEN            EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

RCD8             EQU  H'0000'
RC9              EQU  H'0006'

NOT_RC8          EQU  H'0006'

RC8_9            EQU  H'0006'


;----- RCSTA1 Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADDEN            EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

RCD8             EQU  H'0000'
RC9              EQU  H'0006'

NOT_RC8          EQU  H'0006'

RC8_9            EQU  H'0006'


;----- TXSTA Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'

TXD8             EQU  H'0000'
TX8_9            EQU  H'0006'

NOT_TX8          EQU  H'0006'


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'

TXD8             EQU  H'0000'
TX8_9            EQU  H'0006'

NOT_TX8          EQU  H'0006'


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           EQU  H'0000'
CCP3M1           EQU  H'0001'
CCP3M2           EQU  H'0002'
CCP3M3           EQU  H'0003'
DC3B0            EQU  H'0004'
DC3B1            EQU  H'0005'
P3M0             EQU  H'0006'
P3M1             EQU  H'0007'

CCP3Y            EQU  H'0004'
CCP3X            EQU  H'0005'


;----- ECCP3CON Bits -----------------------------------------------------
CCP3M0           EQU  H'0000'
CCP3M1           EQU  H'0001'
CCP3M2           EQU  H'0002'
CCP3M3           EQU  H'0003'
DC3B0            EQU  H'0004'
DC3B1            EQU  H'0005'
P3M0             EQU  H'0006'
P3M1             EQU  H'0007'

CCP3Y            EQU  H'0004'
CCP3X            EQU  H'0005'


;----- PWM3CON Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'


;----- ECCP3AS Bits -----------------------------------------------------
PSSBD0           EQU  H'0000'
PSSBD1           EQU  H'0001'
PSSAC0           EQU  H'0002'
PSSAC1           EQU  H'0003'
ECCPAS0          EQU  H'0004'
ECCPAS1          EQU  H'0005'
ECCPAS2          EQU  H'0006'
ECCPASE          EQU  H'0007'

PSS3BD0          EQU  H'0000'
PSS3BD1          EQU  H'0001'
PSS3AC0          EQU  H'0002'
PSS3AC1          EQU  H'0003'
ECCP3AS0         EQU  H'0004'
ECCP3AS1         EQU  H'0005'
ECCP3AS2         EQU  H'0006'
ECCP3ASE         EQU  H'0007'


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           EQU  H'0000'
CCP2M1           EQU  H'0001'
CCP2M2           EQU  H'0002'
CCP2M3           EQU  H'0003'
DC2B0            EQU  H'0004'
DC2B1            EQU  H'0005'
P2M0             EQU  H'0006'
P2M1             EQU  H'0007'

CCP2Y            EQU  H'0004'
CCP2X            EQU  H'0005'


;----- ECCP2CON Bits -----------------------------------------------------
CCP2M0           EQU  H'0000'
CCP2M1           EQU  H'0001'
CCP2M2           EQU  H'0002'
CCP2M3           EQU  H'0003'
DC2B0            EQU  H'0004'
DC2B1            EQU  H'0005'
P2M0             EQU  H'0006'
P2M1             EQU  H'0007'

CCP2Y            EQU  H'0004'
CCP2X            EQU  H'0005'


;----- PWM2CON Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'


;----- ECCP2AS Bits -----------------------------------------------------
PSSBD0           EQU  H'0000'
PSSBD1           EQU  H'0001'
PSSAC0           EQU  H'0002'
PSSAC1           EQU  H'0003'
ECCPAS0          EQU  H'0004'
ECCPAS1          EQU  H'0005'
ECCPAS2          EQU  H'0006'
ECCPASE          EQU  H'0007'

PSS2BD0          EQU  H'0000'
PSS2BD1          EQU  H'0001'
PSS2AC0          EQU  H'0002'
PSS2AC1          EQU  H'0003'
ECCP2AS0         EQU  H'0004'
ECCP2AS1         EQU  H'0005'
ECCP2AS2         EQU  H'0006'
ECCP2ASE         EQU  H'0007'


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
DC1B0            EQU  H'0004'
DC1B1            EQU  H'0005'
P1M0             EQU  H'0006'
P1M1             EQU  H'0007'

CCP1Y            EQU  H'0004'
CCP1X            EQU  H'0005'


;----- ECCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
DC1B0            EQU  H'0004'
DC1B1            EQU  H'0005'
P1M0             EQU  H'0006'
P1M1             EQU  H'0007'

CCP1Y            EQU  H'0004'
CCP1X            EQU  H'0005'


;----- PWM1CON Bits -----------------------------------------------------
PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'
PRSEN            EQU  H'0007'


;----- ECCP1AS Bits -----------------------------------------------------
PSSBD0           EQU  H'0000'
PSSBD1           EQU  H'0001'
PSSAC0           EQU  H'0002'
PSSAC1           EQU  H'0003'
ECCPAS0          EQU  H'0004'
ECCPAS1          EQU  H'0005'
ECCPAS2          EQU  H'0006'
ECCPASE          EQU  H'0007'

PSS1BD0          EQU  H'0000'
PSS1BD1          EQU  H'0001'
PSS1AC0          EQU  H'0002'
PSS1AC1          EQU  H'0003'
ECCP1AS0         EQU  H'0004'
ECCP1AS1         EQU  H'0005'
ECCP1AS2         EQU  H'0006'
ECCP1ASE         EQU  H'0007'


;----- WDTCON Bits -----------------------------------------------------
SWDTE            EQU  H'0000'

SWDTEN           EQU  H'0000'
DEVCFG           EQU  H'0004'
VREGSLP          EQU  H'0007'


;----- ADCON2 Bits -----------------------------------------------------
ADCS0            EQU  H'0000'
ADCS1            EQU  H'0001'
ADCS2            EQU  H'0002'
ACQT0            EQU  H'0003'
ACQT1            EQU  H'0004'
ACQT2            EQU  H'0005'
ADCAL            EQU  H'0006'
ADFM             EQU  H'0007'


;----- ADPCFGL Bits -----------------------------------------------------
PCFG0            EQU  H'0000'
PCFG1            EQU  H'0001'
PCFG2            EQU  H'0002'
PCFG3            EQU  H'0003'
PCFG4            EQU  H'0004'
PCFG5            EQU  H'0005'
PCFG6            EQU  H'0006'
PCFG7            EQU  H'0007'


;----- ADCON1 Bits -----------------------------------------------------
DONE             EQU  H'0001'

GO_DONE          EQU  H'0001'

ADON             EQU  H'0000'
GO               EQU  H'0001'
CHS0             EQU  H'0002'
CHS1             EQU  H'0003'
CHS2             EQU  H'0004'
CHS3             EQU  H'0005'
VCFG0            EQU  H'0006'
VCFG1            EQU  H'0007'

NOT_DONE         EQU  H'0001'


;----- ADPCFGH Bits -----------------------------------------------------
PCFG8            EQU  H'0000'
PCFG9            EQU  H'0001'
PCFG10           EQU  H'0002'
PCFG11           EQU  H'0003'
PCFG12           EQU  H'0004'
PCFG13           EQU  H'0005'
PCFG14           EQU  H'0006'
PCFG15           EQU  H'0007'


;----- SSP1CON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- SSPCON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- SSP1CON1 Bits -----------------------------------------------------
SSPM0            EQU  H'0000'
SSPM1            EQU  H'0001'
SSPM2            EQU  H'0002'
SSPM3            EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'


;----- SSPCON1 Bits -----------------------------------------------------
SSPM0            EQU  H'0000'
SSPM1            EQU  H'0001'
SSPM2            EQU  H'0002'
SSPM3            EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'


;----- SSP1STAT Bits -----------------------------------------------------
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


;----- MEMCON Bits -----------------------------------------------------
WM0              EQU  H'0000'
WM1              EQU  H'0001'
WAIT0            EQU  H'0004'
WAIT1            EQU  H'0005'
EDBIS            EQU  H'0007'


;----- PADCFG1 Bits -----------------------------------------------------
PMPTTL           EQU  H'0000'


;----- ODCON3 Bits -----------------------------------------------------
SPI1OD           EQU  H'0000'
SPI2OD           EQU  H'0001'


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


;----- ODCON2 Bits -----------------------------------------------------
USART1OD         EQU  H'0000'
USART2OD         EQU  H'0001'


;----- ODCON1 Bits -----------------------------------------------------
ECCP1OD          EQU  H'0000'
ECCP2OD          EQU  H'0001'
ECCP3OD          EQU  H'0002'
CCP4OD           EQU  H'0003'
CCP5OD           EQU  H'0004'


;----- RCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_PD           EQU  H'0002'
NOT_TO           EQU  H'0003'
NOT_RI           EQU  H'0004'
NOT_CM           EQU  H'0005'
IPEN             EQU  H'0007'

BOR              EQU  H'0000'
POR              EQU  H'0001'
PD               EQU  H'0002'
TO               EQU  H'0003'
RI               EQU  H'0004'
CM               EQU  H'0005'


;----- CM2CON1 Bits -----------------------------------------------------
C1CH0            EQU  H'0000'
C1CH1            EQU  H'0001'
CREF             EQU  H'0002'
EVPOL0           EQU  H'0003'
EVPOL1           EQU  H'0004'
CPOL             EQU  H'0005'
COE              EQU  H'0006'
CON              EQU  H'0007'


;----- CM1CON1 Bits -----------------------------------------------------
C1CH0            EQU  H'0000'
C1CH1            EQU  H'0001'
CREF             EQU  H'0002'
EVPOL0           EQU  H'0003'
EVPOL1           EQU  H'0004'
CPOL             EQU  H'0005'
COE              EQU  H'0006'
CON              EQU  H'0007'


;----- OSCCON Bits -----------------------------------------------------
SCS0             EQU  H'0000'
SCS1             EQU  H'0001'
IOFS             EQU  H'0002'
OSTS             EQU  H'0003'
IRCF0            EQU  H'0004'
IRCF1            EQU  H'0005'
IRCF2            EQU  H'0006'
IDLEN            EQU  H'0007'

FLTS             EQU  H'0002'


;----- RF0CON Bits -----------------------------------------------------
RODIV0           EQU  H'0000'
RODIV1           EQU  H'0001'
RODIV2           EQU  H'0002'
RODIV3           EQU  H'0003'
ROSEL            EQU  H'0004'
ROSSLP           EQU  H'0005'
ROON             EQU  H'0007'


;----- T0CON Bits -----------------------------------------------------
T0PS0            EQU  H'0000'
T0PS1            EQU  H'0001'
T0PS2            EQU  H'0002'
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
T08BIT           EQU  H'0006'
TMR0ON           EQU  H'0007'

T0PS3            EQU  H'0003'


;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
OV               EQU  H'0003'
N                EQU  H'0004'


;----- INTCON3 Bits -----------------------------------------------------
INT1F            EQU  H'0000'
INT2F            EQU  H'0001'
INT3F            EQU  H'0002'
INT1E            EQU  H'0003'
INT2E            EQU  H'0004'
INT3E            EQU  H'0005'
INT1P            EQU  H'0006'
INT2P            EQU  H'0007'

INT1IF           EQU  H'0000'
INT2IF           EQU  H'0001'
INT3IF           EQU  H'0002'
INT1IE           EQU  H'0003'
INT2IE           EQU  H'0004'
INT3IE           EQU  H'0005'
INT1IP           EQU  H'0006'
INT2IP           EQU  H'0007'


;----- INTCON2 Bits -----------------------------------------------------
RBIP             EQU  H'0000'
INT3P            EQU  H'0001'
T0IP             EQU  H'0002'
INTEDG3          EQU  H'0003'
INTEDG2          EQU  H'0004'
INTEDG1          EQU  H'0005'
INTEDG0          EQU  H'0006'
NOT_RBPU         EQU  H'0007'

INT3IP           EQU  H'0001'
TMR0IP           EQU  H'0002'
RBPU             EQU  H'0007'


;----- INTCON Bits -----------------------------------------------------
RBIF             EQU  H'0000'
INT0F            EQU  H'0001'
T0IF             EQU  H'0002'
RBIE             EQU  H'0003'
INT0E            EQU  H'0004'
T0IE             EQU  H'0005'
PEIE             EQU  H'0006'
GIE              EQU  H'0007'

INT0IF           EQU  H'0001'
TMR0IF           EQU  H'0002'
INT0IE           EQU  H'0004'
TMR0IE           EQU  H'0005'
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

SP0              EQU  H'0000'
SP1              EQU  H'0001'
SP2              EQU  H'0002'
SP3              EQU  H'0003'
SP4              EQU  H'0004'
STKFUL           EQU  H'0007'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'0FFF'
       __BADRAM  H'0FD4'

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled; RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled; RB6 and RB7 configured as general purpose I/O pins
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Stack Overflow/Underflow Reset Enable bit:
;     STVREN = OFF         Reset on stack overflow/underflow disabled
;     STVREN = ON          Reset on stack overflow/underflow enabled
;
;   PLL Prescaler Selection bits:
;     PLLDIV = 12          Divide by 12 (48 MHz oscillator input)
;     PLLDIV = 10          Divide by 10 (40 MHz oscillator input)
;     PLLDIV = 6           Divide by 6 (24 MHz oscillator input)
;     PLLDIV = 5           Divide by 5 (20 MHz oscillator input)
;     PLLDIV = 4           Divide by 4 (16 MHz oscillator input)
;     PLLDIV = 3           Divide by 3 (12 MHz oscillator input)
;     PLLDIV = 2           Divide by 2 (8 MHz oscillator input)
;     PLLDIV = 1           No prescale (4 MHz oscillator input drives PLL directly)
;
;   Watchdog Timer Enable bit:
;     WDTEN = OFF          WDT disabled (control is placed on SWDTEN bit)
;     WDTEN = ON           WDT enabled
;
;   Code Protection bit:
;     CP0 = ON             Program memory is code-protected
;     CP0 = OFF            Program memory is not code-protected
;
;   CPU System Clock Postscaler:
;     CPUDIV = OSC1_PLL2   [OSC1/OSC2 Src: /1][96 MHz PLL Src: /2]
;     CPUDIV = OSC2_PLL3   [OSC1/OSC2 Src: /2][96 MHz PLL Src: /3]
;     CPUDIV = OSC3_PLL4   [OSC1/OSC2 Src: /3][96 MHz PLL Src: /4]
;     CPUDIV = OSC4_PLL6   [OSC1/OSC2 Src: /4][96 MHz PLL Src: /6]
;
;   Two-Speed Start-up (Internal/External Oscillator Switchover) Control bit:
;     IESO = OFF           Two-Speed Start-up disabled
;     IESO = ON            Two-Speed Start-up enabled
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Oscillator Selection bits:
;     FOSC = INTOSCIO      Internal oscillator, port function on RA6 and RA7 
;     FOSC = INTOSC        Internal oscillator, CLKOUT on RA6 and port function on RA7
;     FOSC = INTOSCPLLIO_HSINTOSC with PLL enabled, port function on RA6 and RA7, HS used by USB
;     FOSC = INTOSCPLL_HS   INTOSC with PLL enabled,CLKOUT on RA6 and port function on RA7, HS used by USB
;     FOSC = HS            HS oscillator, HS used by USB
;     FOSC = HSPLL_HS      HS oscillator, PLL enabled, HS used by USB
;     FOSC = EC            EC Oscillator with clock out on RA6, EC used by USB
;     FOSC = ECPLL_EC      EC Oscillator with PLL , CLKOUT on RA6, EC used by USB
;
;   Watchdog Timer Postscaler Select bits:
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
;   External Bus Wait Enable bit:
;     WAIT = ON            Wait states for operations on external memory bus enabled
;     WAIT = OFF           Wait states for operations on external memory bus disabled
;
;   Data Bus Width Select bit:
;     BW = 8               8-bit external bus mode
;     BW = 16              16-bit external bus mode
;
;   Processor Mode Selection:
;     MODE = XM20          Extended Microcontroller mode - 20-bit Address mode
;     MODE = XM16          Extended Microcontroller mode - 16-bit Address mode
;     MODE = XM12          Extended Microcontroller mode - 12-bit Address mode
;     MODE = MM            Microcontroller mode - External bus disabled
;
;   External Address Bus Shift Enable bit:
;     EASHFT = OFF         Address shifting disabled, address on external bus reflects the PC value
;     EASHFT = ON          Address shifting enabled, address on external bus is offset to start at 000000h
;
;   MSSP address select:
;     MSSPSEL = ALTERNATE  5 Bit address mode
;     MSSPSEL = MSSPPADDRX 7 Bit address mode
;
;   PMP pin select:
;     PMPMX = ALTERNATE    PMP port pins not connected to EMB
;     PMPMX = DEFAULT      PMP port pins connected to EMB
;
;   ECCPx MUX bit:
;     ECCPMX = ALTERNATE   ECCP1 outputs (P1B/P1C) are multiplexed with RH7 and RH6; ECCP3 outputs (P3B/P3C) are multiplexed with RH5 and RH4
;     ECCPMX = DEFAULT     ECCP1 outputs (P1B/P1C) are multiplexed with RE6 and RE5; ECCP3 outputs (P3B/P3C) are multiplexed with RE4 and RE3
;
;   ECCP2 MUX bit:
;     CCP2MX = ALTERNATE   ECCP2/P2A is multiplexed with RE7 in Microcontroller mode or with RB3 in Extended Microcontroller mode
;     CCP2MX = DEFAULT     ECCP2/P2A is multiplexed with RC1
;
;==========================================================================
_DEVID1          EQU  H'3FFFFE'
_DEVID2          EQU  H'3FFFFF'


        LIST
