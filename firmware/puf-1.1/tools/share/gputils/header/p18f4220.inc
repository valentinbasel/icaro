        LIST
; P18F4220.INC  Standard Header File, Version 0.1   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful
; bits of information for the PIC18F4220 microcontroller.  These names
; are taken to match the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC18F4220
;       2. LIST directive in the source file
;               LIST   P=PIC18F4220
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog

;=======================================================================
;
;       Revision History
;
;=======================================================================
;Rev:   Date:        Details:                                       Who:
;0.10  07 Dec 2001   Initial revision                                BD
;0.11  22 Mar 2002   ECCP registers and bit names revised            BD
;0.12  16 Apr 2002   Configuration bit MCLRE moved from 2L to 3H     BD
;0.13  22 Apr 2002   T0CON<T0PS3> changed back to T0CON<PSA>         BD
;0.14  09 May 2002   ECCP1CON changed to CCP1CON                     BD
;0.15  5 May 2002    _OSO_ON_1H changed to _IESO_ON_1H               BD
;                    _MCLRE_ON_2L moved/changed to _MCLRE_ON_3H
;
;0.16  24 May 2002   OSCCON<OSTS> bit name corrected                 BD
;                    OSCCON register name above bit equates fixed
;                    T1CON<T1RUN/NOT_T1RUN> added
;                    _MCLRE_ON_3H moved to correct register and renamed (again)
;0.17  30 May 2002   _PBAD_DIG_3H had wrong bit cleared              BD
;0.18  13 Jun 2002  LVDCON,IRVST added to LVDCON                     BD
;0.19    09/26/02   Include both names SWDTE and SWDTEN                pas
;
;0.20  27 Sep 2002  Add IOFS bit name to OSCCON register             BD
;                   Add ECIO, RCIO, INTIO1, INTIO2 bits to Config Reg 1H
;                   Add DEBUG bits to Config Reg 4L
;0.21  21 Jan 2003  Changed _MCLRE_OFF_3H from 0xEF to 0x7F          BD
;
;0.22   1 Oct 2003  Bit names changed                                BD
;                      LVVn   to LVDLn     IVRST to IRVST
;                      FSCMEN to FSCM
;                   Bit names removed - EPWM1M1,EPWM1M0,EDC1B1,
;                      EDC1B0,ECCP1M3,ECCP1M2,ECCP1M1,ECCP1M0,
;                      CVREF,CVRSS
;                   Removed redundant bit names
;                      RCIO6 use RCIO      INTIO7   use INTIO1
;                      ECIO6 use ECIO      INTIO67  use INTIO2
;                      BKBUG use DEBUG     SWDTE    use SWDTEN
;                      T0IE  use TMR0IE    INT0E    use INT0IE
;                      T0IF  use TMR0IF    INT0F    use INT0IE
;                      BGST  use IRVST     T1INSYNC use T1SYNC
;                      TXD8  use TX9D      T3INSYNC use T3SYNC
;                      TX8_9 use TX9       NOT_TX8  use TX9
;                      RC9   use RX9       NOT_RC8  use RX9
;                      RC8_9 use RX9       RCD8     use RX9D
;                      INT2P use INT2IP    INT1P use INT1IP
;                      INT2E use INT2IE    INT1E use INT1IE
;                      INT2F use INT2IF    INT1F use INT1IF
;                   Added equates for PIC16 Compatability
;                      ADRES, INTF, INTE, CCPnX, CCPnY
;                   General clean-up (removed some comments)

;=======================================================================
;
;       Verify Processor
;
;=======================================================================

  IFNDEF __18F4220
     MESSG "Processor-header file mismatch.  Verify selected processor."
  ENDIF

;=======================================================================
;       18Fxxx Family        EQUates
;=======================================================================

FSR0            EQU 0
FSR1            EQU 1
FSR2            EQU 2

FAST            EQU 1

W               EQU 0
A               EQU 0
ACCESS          EQU 0
BANKED          EQU 1

;=======================================================================
;       16Cxxx/17Cxxx Substitutions
;=======================================================================

  #define DDRA  TRISA          ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB          ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC          ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD          ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE          ; PIC17Cxxx SFR substitution
  #define ADRES ADRESH         ; PIC16     SFR substitution
  #define INTE  INT0IE         ; PIC16     bit substitution
  #define INTF  INT0IF         ; PIC16     bit substitution
  #define CCP1X DC1B1          ; PIC16     bit substitution
  #define CCP1Y DC1B0          ; PIC16     bit substitution
  #define CCP2X DC2B1          ; PIC16     bit substitution
  #define CCP2Y DC2B0          ; PIC16     bit substitution
  #define SCS   SCS0           ; PIC18     bit substitution

;=======================================================================
;
;       Register Definitions
;
;=======================================================================

;----- Register Files --------------------------------------------------
TOSU            EQU  H'0FFF'
TOSH            EQU  H'0FFE'
TOSL            EQU  H'0FFD'
STKPTR          EQU  H'0FFC'
PCLATU          EQU  H'0FFB'
PCLATH          EQU  H'0FFA'
PCL             EQU  H'0FF9'
TBLPTRU         EQU  H'0FF8'
TBLPTRH         EQU  H'0FF7'
TBLPTRL         EQU  H'0FF6'
TABLAT          EQU  H'0FF5'
PRODH           EQU  H'0FF4'
PRODL           EQU  H'0FF3'
INTCON          EQU  H'0FF2'
INTCON2         EQU  H'0FF1'
INTCON3         EQU  H'0FF0'

INDF0           EQU  H'0FEF'
POSTINC0        EQU  H'0FEE'
POSTDEC0        EQU  H'0FED'
PREINC0         EQU  H'0FEC'
PLUSW0          EQU  H'0FEB'
FSR0H           EQU  H'0FEA'
FSR0L           EQU  H'0FE9'
WREG            EQU  H'0FE8'
INDF1           EQU  H'0FE7'
POSTINC1        EQU  H'0FE6'
POSTDEC1        EQU  H'0FE5'
PREINC1         EQU  H'0FE4'
PLUSW1          EQU  H'0FE3'
FSR1H           EQU  H'0FE2'
FSR1L           EQU  H'0FE1'
BSR             EQU  H'0FE0'

INDF2           EQU  H'0FDF'
POSTINC2        EQU  H'0FDE'
POSTDEC2        EQU  H'0FDD'
PREINC2         EQU  H'0FDC'
PLUSW2          EQU  H'0FDB'
FSR2H           EQU  H'0FDA'
FSR2L           EQU  H'0FD9'
STATUS          EQU  H'0FD8'
TMR0H           EQU  H'0FD7'
TMR0L           EQU  H'0FD6'
T0CON           EQU  H'0FD5'
; reserved           H'0FD4'
OSCCON          EQU  H'0FD3'
LVDCON          EQU  H'0FD2'
WDTCON          EQU  H'0FD1'
RCON            EQU  H'0FD0'

TMR1H           EQU  H'0FCF'
TMR1L           EQU  H'0FCE'
T1CON           EQU  H'0FCD'
TMR2            EQU  H'0FCC'
PR2             EQU  H'0FCB'
T2CON           EQU  H'0FCA'
SSPBUF          EQU  H'0FC9'
SSPADD          EQU  H'0FC8'
SSPSTAT         EQU  H'0FC7'
SSPCON1         EQU  H'0FC6'
SSPCON2         EQU  H'0FC5'
ADRESH          EQU  H'0FC4'
ADRESL          EQU  H'0FC3'
ADCON0          EQU  H'0FC2'
ADCON1          EQU  H'0FC1'
ADCON2          EQU  H'0FC0'

CCPR1H          EQU  H'0FBF'
CCPR1L          EQU  H'0FBE'
CCP1CON         EQU  H'0FBD'
CCPR2H          EQU  H'0FBC'
CCPR2L          EQU  H'0FBB'
CCP2CON         EQU  H'0FBA'
; reserved      EQU  H'0FB9'
; reserved      EQU  H'0FB8'
PWM1CON         EQU  H'0FB7'
ECCPAS          EQU  H'0FB6'
CVRCON          EQU  H'0FB5'
CMCON           EQU  H'0FB4'
TMR3H           EQU  H'0FB3'
TMR3L           EQU  H'0FB2'
T3CON           EQU  H'0FB1'
; reserved      EQU  H'0FB0'

SPBRG           EQU  H'0FAF'
RCREG           EQU  H'0FAE'
TXREG           EQU  H'0FAD'
TXSTA           EQU  H'0FAC'
RCSTA           EQU  H'0FAB'
; reserved      EQU  H'0FAA'
EEADR           EQU  H'0FA9'
EEDATA          EQU  H'0FA8'
EECON2          EQU  H'0FA7'
EECON1          EQU  H'0FA6'
; reserved      EQU  H'0FB5'
; reserved      EQU  H'0FB4'
; reserved      EQU  H'0FB3'
IPR2            EQU  H'0FA2'
PIR2            EQU  H'0FA1'
PIE2            EQU  H'0FA0'

IPR1            EQU  H'0F9F'
PIR1            EQU  H'0F9E'
PIE1            EQU  H'0F9D'
OSCTUNE         EQU  H'0F9B'
; reserved      EQU  H'0F9A'
; reserved      EQU  H'0F99'
; reserved      EQU  H'0F98'
; reserved      EQU  H'0F97'
TRISE           EQU  H'0F96'
TRISD           EQU  H'0F95'
TRISC           EQU  H'0F94'
TRISB           EQU  H'0F93'
TRISA           EQU  H'0F92'
; reserved      EQU  H'0F91'
; reserved      EQU  H'0F90'

; reserved      EQU  H'0F8F'
; reserved      EQU  H'0F8E'
LATE            EQU  H'0F8D'
LATD            EQU  H'0F8C'
LATC            EQU  H'0F8B'
LATB            EQU  H'0F8A'
LATA            EQU  H'0F89'
; reserved      EQU  H'0F88'
; reserved      EQU  H'0F87'
; reserved      EQU  H'0F86'
; reserved      EQU  H'0F85'
PORTE           EQU  H'0F84'
PORTD           EQU  H'0F83'
PORTC           EQU  H'0F82'
PORTB           EQU  H'0F81'
PORTA           EQU  H'0F80'

;----- STKPTR Bits -----------------------------------------------------
STKFUL          EQU  H'0007'
STKUNF          EQU  H'0006'

;----- INTCON Bits -----------------------------------------------------
GIE             EQU  H'0007'
GIEH            EQU  H'0007'
PEIE            EQU  H'0006'
GIEL            EQU  H'0006'
TMR0IE          EQU  H'0005'
INT0IE          EQU  H'0004'
RBIE            EQU  H'0003'
TMR0IF          EQU  H'0002'
INT0IF          EQU  H'0001'
RBIF            EQU  H'0000'

;----- INTCON2 Bits ----------------------------------------------------
NOT_RBPU        EQU  H'0007'
RBPU            EQU  H'0007'
INTEDG0         EQU  H'0006'
INTEDG1         EQU  H'0005'
INTEDG2         EQU  H'0004'
TMR0IP          EQU  H'0002'
T0IP            EQU  H'0002'
RBIP            EQU  H'0000'

;----- INTCON3 Bits ----------------------------------------------------
INT2IP          EQU  H'0007'
INT1IP          EQU  H'0006'
INT2IE          EQU  H'0004'
INT1IE          EQU  H'0003'
INT2IF          EQU  H'0001'
INT1IF          EQU  H'0000'

;----- STATUS Bits -----------------------------------------------------
N               EQU  H'0004'
OV              EQU  H'0003'
Z               EQU  H'0002'
DC              EQU  H'0001'
C               EQU  H'0000'

;----- T0CON Bits ------------------------------------------------------
TMR0ON          EQU  H'0007'
T08BIT          EQU  H'0006'
T0CS            EQU  H'0005'
T0SE            EQU  H'0004'
PSA             EQU  H'0003'
T0PS2           EQU  H'0002'
T0PS1           EQU  H'0001'
T0PS0           EQU  H'0000'

;----- OSCCON Bits ------------------------------------------------------ 
IDLEN           EQU  H'0007'
IRCF2           EQU  H'0006'
IRCF1           EQU  H'0005'
IRCF0           EQU  H'0004'
OSTS            EQU  H'0003'    
IOFS            EQU  H'0002'	  
FLTS            EQU  H'0002'	  
SCS1            EQU  H'0001'
SCS0            EQU  H'0000'

;----- LVDCON Bits -----------------------------------------------------
IRVST           EQU  H'0005'
LVDEN           EQU  H'0004'
LVDL3           EQU  H'0003'
LVDL2           EQU  H'0002'
LVDL1           EQU  H'0001'
LVDL0           EQU  H'0000'

;----- WDTCON Bits -----------------------------------------------------
SWDTEN          EQU  H'0000'

;----- RCON Bits -------------------------------------------------------
IPEN            EQU  H'0007'
NOT_RI          EQU  H'0004'
RI              EQU  H'0004'
NOT_TO          EQU  H'0003'
TO              EQU  H'0003'
NOT_PD          EQU  H'0002'
PD              EQU  H'0002'
NOT_POR         EQU  H'0001'
POR             EQU  H'0001'
NOT_BOR         EQU  H'0000'
BOR             EQU  H'0000'

;----- T1CON Bits ------------------------------------------------------
RD16            EQU  H'0007'
T1RUN           EQU  H'0006'
T1CKPS1         EQU  H'0005'
T1CKPS0         EQU  H'0004'
T1OSCEN         EQU  H'0003'
NOT_T1SYNC      EQU  H'0002'
T1SYNC          EQU  H'0002'
TMR1CS          EQU  H'0001'
TMR1ON          EQU  H'0000'

;----- T2CON Bits ------------------------------------------------------
TOUTPS3         EQU  H'0006'
TOUTPS2         EQU  H'0005'
TOUTPS1         EQU  H'0004'
TOUTPS0         EQU  H'0003'
TMR2ON          EQU  H'0002'
T2CKPS1         EQU  H'0001'
T2CKPS0         EQU  H'0000'

;----- SSPSTAT Bits ----------------------------------------------------
SMP             EQU  H'0007'
CKE             EQU  H'0006'
D               EQU  H'0005'
D_A             EQU  H'0005'
I2C_DAT         EQU  H'0005'
NOT_A           EQU  H'0005'
NOT_ADDRESS     EQU  H'0005'
DATA_ADDRESS    EQU  H'0005'
P               EQU  H'0004'
I2C_STOP        EQU  H'0004'
S               EQU  H'0003'
I2C_START       EQU  H'0003'
R               EQU  H'0002'
R_W             EQU  H'0002'
I2C_READ        EQU  H'0002'
NOT_W           EQU  H'0002'
NOT_WRITE       EQU  H'0002'
READ_WRITE      EQU  H'0002'
UA              EQU  H'0001'
BF              EQU  H'0000'

;----- SSPCON1 Bits ----------------------------------------------------
WCOL            EQU  H'0007'
SSPOV           EQU  H'0006'
SSPEN           EQU  H'0005'
CKP             EQU  H'0004'
SSPM3           EQU  H'0003'
SSPM2           EQU  H'0002'
SSPM1           EQU  H'0001'
SSPM0           EQU  H'0000'

;----- SSPCON2 Bits ----------------------------------------------------
GCEN            EQU  H'0007'
ACKSTAT         EQU  H'0006'
ACKDT           EQU  H'0005'
ACKEN           EQU  H'0004'
RCEN            EQU  H'0003'
PEN             EQU  H'0002'
RSEN            EQU  H'0001'
SEN             EQU  H'0000'

;----- ADCON0 Bits -----------------------------------------------------
CHS3            EQU  H'0005'
CHS2            EQU  H'0004'
CHS1            EQU  H'0003'
CHS0            EQU  H'0002'
GO              EQU  H'0001'
NOT_DONE        EQU  H'0001'
DONE            EQU  H'0001'
GO_DONE         EQU  H'0001'
ADON            EQU  H'0000'

;----- ADCON1 Bits -----------------------------------------------------
VCFG1           EQU  H'0005'
VCFG0           EQU  H'0004'
PCFG3           EQU  H'0003'
PCFG2           EQU  H'0002'
PCFG1           EQU  H'0001'
PCFG0           EQU  H'0000'

;----- ADCON2 Bits -----------------------------------------------------
ADFM            EQU  H'0007'
ACQT2           EQU  H'0005'
ACQT1           EQU  H'0004'
ACQT0           EQU  H'0003'
ADCS2           EQU  H'0002'
ADCS1           EQU  H'0001'
ADCS0           EQU  H'0000'

;----- CCP1CON Bits -----------------------------------------------------
P1M1            EQU  H'0007'
P1M0            EQU  H'0006'
DC1B1           EQU  H'0005'
DC1B0           EQU  H'0004'
CCP1M3          EQU  H'0003'
CCP1M2          EQU  H'0002'
CCP1M1          EQU  H'0001'
CCP1M0          EQU  H'0000'

;----- CCP2CON Bits ----------------------------------------------------
DC2B1           EQU  H'0005'
DC2B0           EQU  H'0004'
CCP2M3          EQU  H'0003'
CCP2M2          EQU  H'0002'
CCP2M1          EQU  H'0001'
CCP2M0          EQU  H'0000'

;----- PWM1CON bits ----------------------------------------------------
PRSEN           EQU  H'0007'
PDC6            EQU  H'0006'
PDC5            EQU  H'0005'
PDC4            EQU  H'0004'
PDC3            EQU  H'0003'
PDC2            EQU  H'0002'
PDC1            EQU  H'0001'
PDC0            EQU  H'0000'

;----- ECCPAS Bits -----------------------------------------------------
ECCPASE         EQU  H'0007'
ECCPAS2         EQU  H'0006'
ECCPAS1         EQU  H'0005'
ECCPAS0         EQU  H'0004'
PSSAC1          EQU  H'0003'
PSSAC0          EQU  H'0002'
PSSBD1          EQU  H'0001'
PSSBD0          EQU  H'0000'

;----- CVRCON Bits -----------------------------------------------------
CVREN           EQU  H'0007'
CVROE           EQU  H'0006'
CVRR            EQU  H'0005'
CVR3            EQU  H'0003'
CVR2            EQU  H'0002'
CVR1            EQU  H'0001'
CVR0            EQU  H'0000'

;----- CMCON Bits ------------------------------------------------------
C2OUT           EQU  H'0007'
C1OUT           EQU  H'0006'
C2INV           EQU  H'0005'
C1INV           EQU  H'0004'
CIS             EQU  H'0003'
CM2             EQU  H'0002'
CM1             EQU  H'0001'
CM0             EQU  H'0000'

;----- T3CON Bits ------------------------------------------------------
RD16            EQU  H'0007'
T3CCP2          EQU  H'0006'
T3CKPS1         EQU  H'0005'
T3CKPS0         EQU  H'0004'
T3CCP1          EQU  H'0003'
NOT_T3SYNC      EQU  H'0002'
T3SYNC          EQU  H'0002'
TMR3CS          EQU  H'0001'
TMR3ON          EQU  H'0000'

;----- TXSTA Bits ------------------------------------------------------
CSRC            EQU  H'0007'
TX9             EQU  H'0006'
TXEN            EQU  H'0005'
SYNC            EQU  H'0004'
BRGH            EQU  H'0002'
TRMT            EQU  H'0001'
TX9D            EQU  H'0000'

;----- RCSTA Bits ------------------------------------------------------
SPEN            EQU  H'0007'
RX9             EQU  H'0006'
SREN            EQU  H'0005'
CREN            EQU  H'0004'
ADDEN           EQU  H'0003'
FERR            EQU  H'0002'
OERR            EQU  H'0001'
RX9D            EQU  H'0000'

;----- EECON1 Bits -----------------------------------------------------
EEPGD           EQU  H'0007'
CFGS            EQU  H'0006'
FREE            EQU  H'0004'
WRERR           EQU  H'0003'
WREN            EQU  H'0002'
WR              EQU  H'0001'
RD              EQU  H'0000'

;----- IPR2 Bits -------------------------------------------------------
OSCFIP          EQU  H'0007'
CMIP            EQU  H'0006'
EEIP            EQU  H'0004'
BCLIP           EQU  H'0003'
LVDIP           EQU  H'0002'
TMR3IP          EQU  H'0001'
CCP2IP          EQU  H'0000'

;----- PIR2 Bits -------------------------------------------------------
OSCFIF          EQU  H'0007'
CMIF            EQU  H'0006'
EEIF            EQU  H'0004'
BCLIF           EQU  H'0003'
LVDIF           EQU  H'0002'
TMR3IF          EQU  H'0001'
CCP2IF          EQU  H'0000'

;----- PIE2 Bits -------------------------------------------------------
OSCFIE          EQU  H'0007'
CMIE            EQU  H'0006'
EEIE            EQU  H'0004'
BCLIE           EQU  H'0003'
LVDIE           EQU  H'0002'
TMR3IE          EQU  H'0001'
CCP2IE          EQU  H'0000'

;----- IPR1 Bits -------------------------------------------------------
PSPIP           EQU  H'0007'
ADIP            EQU  H'0006'
RCIP            EQU  H'0005'
TXIP            EQU  H'0004'
SSPIP           EQU  H'0003'
CCP1IP          EQU  H'0002'
TMR2IP          EQU  H'0001'
TMR1IP          EQU  H'0000'

;----- PIR1 Bits -------------------------------------------------------
PSPIF           EQU  H'0007'
ADIF            EQU  H'0006'
RCIF            EQU  H'0005'
TXIF            EQU  H'0004'
SSPIF           EQU  H'0003'
CCP1IF          EQU  H'0002'
TMR2IF          EQU  H'0001'
TMR1IF          EQU  H'0000'

;----- PIE1 Bits -------------------------------------------------------
PSPIE           EQU  H'0007'
ADIE            EQU  H'0006'
RCIE            EQU  H'0005'
TXIE            EQU  H'0004'
SSPIE           EQU  H'0003'
CCP1IE          EQU  H'0002'
TMR2IE          EQU  H'0001'
TMR1IE          EQU  H'0000'

;----- OSCTUNE Bits ----------------------------------------------------
TUN5            EQU  H'0005'
TUN4            EQU  H'0004'
TUN3            EQU  H'0003'
TUN2            EQU  H'0002'
TUN1            EQU  H'0001'
TUN0            EQU  H'0000'

;----- TRISE Bits ------------------------------------------------------
IBF             EQU  H'0007'
OBF             EQU  H'0006'
IBOV            EQU  H'0005'
PSPMODE         EQU  H'0004'

;=======================================================================
;
;       I/O Pin Name Definitions
;
;=======================================================================

;----- PORTA -----------------------------------------------------------
RA0             EQU  0
AN0             EQU  0
RA1             EQU  1
AN1             EQU  1
RA2             EQU  2
AN2             EQU  2
VREFM           EQU  2
RA3             EQU  3
AN3             EQU  3
VREFP           EQU  3
RA4             EQU  4
T0CKI           EQU  4
RA5             EQU  5
AN4             EQU  5
SS              EQU  5
LVDIN           EQU  5
RA6             EQU  6
OSC2            EQU  6
CLKO            EQU  6
RA7             EQU  7
OSC1            EQU  7
CLKI            EQU  7

;----- PORTB -----------------------------------------------------------
RB0             EQU  0
INT0            EQU  0
AN12            EQU  0
RB1             EQU  1
INT1            EQU  1
AN10            EQU  1
RB2             EQU  2
INT2            EQU  2
AN8             EQU  2
RB3             EQU  3
CCP2A           EQU  3
AN9             EQU  3
RB4             EQU  4
AN11            EQU  4
RB5             EQU  5
RB6             EQU  6
RB7             EQU  7

;----- PORTC -----------------------------------------------------------
RC0             EQU  0
T1OSO           EQU  0
T1CKI           EQU  0
RC1             EQU  1
T1OSI           EQU  1
CCP2            EQU  1
RC2             EQU  2
CCP1            EQU  2
P1A             EQU  2
RC3             EQU  3
SCK             EQU  3
SCL             EQU  3
RC4             EQU  4
SDI             EQU  4
SDA             EQU  4
RC5             EQU  5
SDO             EQU  5
RC6             EQU  6
TX              EQU  6
CK              EQU  6
RC7             EQU  7
RX              EQU  7

;----- PORTD -----------------------------------------------------------
RD0             EQU  0
PSP0            EQU  0
RD1             EQU  1
PSP1            EQU  1
RD2             EQU  2
PSP2            EQU  2
RD3             EQU  3
PSP3            EQU  3
RD4             EQU  4
PSP4            EQU  4
RD5             EQU  5
PSP5            EQU  5
P1B             EQU  5
RD6             EQU  6
PSP6            EQU  6
P1C             EQU  6
RD7             EQU  7
PSP7            EQU  7
P1D             EQU  7

;----- PORTE -----------------------------------------------------------
RE0             EQU  0
RD              EQU  0
AN5             EQU  0
RE1             EQU  1
AN6             EQU  1
RE2             EQU  2
CS              EQU  2
AN7             EQU  2
RE3             EQU  3
MCLR            EQU  3

;=======================================================================
;
;       RAM Definition
;
;=======================================================================

     __MAXRAM H'FFF'
     __BADRAM H'200'-H'F7F'
     __BADRAM H'F85'-H'F88',H'F8E'-H'F91',H'F97'-H'F9A',H'F9C'
     __BADRAM H'FA3'-H'FA5',H'FAA',H'FB0',H'FB8'-H'FB9'

;=======================================================================
;
;  ID Location Registers
;
;  The following is an assignment of address values for all of the
;  ID Location registers for the purpose of table reads and writes,
;  and for device programming.

_IDLOC0         EQU    H'200000'
_IDLOC1         EQU    H'200001'
_IDLOC2         EQU    H'200002'
_IDLOC3         EQU    H'200003'
_IDLOC4         EQU    H'200004'
_IDLOC5         EQU    H'200005'
_IDLOC6         EQU    H'200006'
_IDLOC7         EQU    H'200007'

; To use the IDLOC registers, place the following lines in your source
; code in the following format, and change <expression> as desired.
; These lines are currently commented out here and each __IDLOCS line
; should have the preceding semicolon removed when pasted into your
; source code.
;
;  <expression> should take the form of B'1111bbbb' or H'Fn'
;  where b = user defined bit, or n = user defined nibble.

;  Program IDLOC registers
;    __IDLOCS  _IDLOC0, <expression>
;    __IDLOCS  _IDLOC1, <expression>
;    __IDLOCS  _IDLOC2, <expression>
;    __IDLOCS  _IDLOC3, <expression>
;    __IDLOCS  _IDLOC4, <expression>
;    __IDLOCS  _IDLOC5, <expression>
;    __IDLOCS  _IDLOC6, <expression>
;    __IDLOCS  _IDLOC7, <expression>


;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Oscillator Selection:
;     OSC = LP             LP Oscillator
;     OSC = XT             XT Oscillator
;     OSC = HS             HS Oscillator
;     OSC = EC             External Clock on OSC1, OSC2 as FOSC/4
;     OSC = ECIO           External Clock on OSC1, OSC2 as RA6
;     OSC = HSPLL          HS + PLL
;     OSC = RCIO           External RC on OSC1, OSC2 as RA6
;     OSC = INTIO2         Internal RC, OSC1 as RA7, OSC2 as RA6
;     OSC = INTIO1         Internal RC, OSC1 as RA7, OSC2 as FOSC/4
;     OSC = RC             External RC on OSC1, OSC2 as FOSC/4
;
;   Fail-Safe Clock Monitor:
;     FSCM = OFF           Fail-Safe Clock Monitor disabled
;     FSCM = ON            Fail-Safe Clock Monitor enabled
;
;   Internal External Switch Over mode:
;     IESO = OFF           Internal External Switch Over mode disabled
;     IESO = ON            Internal External Switch Over mode enabled
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
;   PORTB A/D Enable:
;     PBAD = DIG           Digital
;     PBAD = ANA           Analog
;
;   CCP2 Pin Function:
;     CCP2MX = B3          RB3
;     CCP2MX = OFF         RB3
;     CCP2MX = C1          RC1
;     CCP2MX = ON          RC1
;
;   Stack Full/Overflow Reset:
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
;=======================================================================
;
;       Configuration Bits
;
;  The following is an assignment of address values for all of the
;  configuration registers for the purpose of table reads and writes,
;  and for programming configuration words.

_CONFIG1H       EQU    H'300001'
_CONFIG2L       EQU    H'300002'
_CONFIG2H       EQU    H'300003'
_CONFIG3H       EQU    H'300005'
_CONFIG4L       EQU    H'300006'
_CONFIG5L       EQU    H'300008'
_CONFIG5H       EQU    H'300009'
_CONFIG6L       EQU    H'30000A'
_CONFIG6H       EQU    H'30000B'
_CONFIG7L       EQU    H'30000C'
_CONFIG7H       EQU    H'30000D'

; To embed the Configuration Bits in your source code, paste the
; following lines into your source code in the following format,
; and change the configuration value to the desired setting (such
; as WDT_OFF to WDT_ON).
; These lines are commented out - each __CONFIG line should have the
; preceding semicolon (;) removed when pasted into your source code.

;      __CONFIG  _CONFIG1H, _IESO_OFF_1H & _FSCM_OFF_1H & _RC_OSC_1H
;      __CONFIG  _CONFIG2L, _PWRT_ON_2L & _BOR_OFF_2L & _BORV_20_2L
;      __CONFIG  _CONFIG2H, _WDT_OFF_2H & _WDTPS_32K_2H
;      __CONFIG  _CONFIG3H, _MCLRE_ON_3H & _PBAD_DIG_3H & _CCP2MX_C1_3H
;      __CONFIG  _CONFIG4L, _BKBUG_OFF_4L & _LVP_OFF_4L & _STVR_OFF_4L

;      __CONFIG  _CONFIG5L, _CP0_OFF_5L & _CP1_OFF_5L & _CP2_OFF_5L & _CP3_OFF_5L
;      __CONFIG  _CONFIG5H, _CPB_OFF_5H & _CPD_OFF_5H
;      __CONFIG  _CONFIG6L, _WRT0_OFF_6L & _WRT1_OFF_6L & _WRT2_OFF_6L & _WRT3_OFF_6L
;      __CONFIG  _CONFIG6H, _WRTC_OFF_6H & _WRTB_OFF_6H & _WRTD_OFF_6H
;      __CONFIG  _CONFIG7L, _EBTR0_OFF_7L & _EBTR1_OFF_7L & _EBTR2_OFF_7L & _EBTR3_OFF_7L
;      __CONFIG  _CONFIG7H, _EBTRB_OFF_7H

;Configuration Byte 1H Options
_IESO_ON_1H       EQU  H'FF' ; Internal External oscillator Switch Over mode enabled
_IESO_OFF_1H      EQU  H'7F' ; Internal External oscillator Switch Over mode disabled
_FSCM_ON_1H       EQU  H'FF' ; Fail-Safe Clock Monitor enabled
_FSCM_OFF_1H      EQU  H'BF' ; Fail-Safe Clock Monitor disabled
_RC_OSC_1H        EQU  H'FF' ; External RC on OSC1, OSC2 as FOSC/4
_RCIO_OSC_1H      EQU  H'F7' ; External RC on OSC1, OSC2 as RA6
_LP_OSC_1H        EQU  H'F0' ; LP Oscillator
_XT_OSC_1H        EQU  H'F1' ; XT Oscillator
_HS_OSC_1H        EQU  H'F2' ; HS Oscillator
_HSPLL_OSC_1H     EQU  H'F6' ; HS + PLL
_EC_OSC_1H        EQU  H'F4' ; External Clock on OSC1, OSC2 as FOSC/4
_ECIO_OSC_1H      EQU  H'F5' ; External Clock on OSC1, OSC2 as RA6
_INTIO1_OSC_1H    EQU  H'F9' ; Internal RC, OSC1 as RA7, OSC2 as FOSC/4
_INTIO2_OSC_1H    EQU  H'F8' ; Internal RC, OSC1 as RA7, OSC2 as RA6

;Configuration Byte 2L Options
_BORV_20_2L       EQU  H'FF' ; BOR Voltage - 2.0v
_BORV_27_2L       EQU  H'FB' ;               2.7v
_BORV_42_2L       EQU  H'F7' ;               4.2v
_BORV_45_2L       EQU  H'F3' ;               4.5v
_BOR_ON_2L        EQU  H'FF' ; Brown-out Reset enabled
_BOR_OFF_2L       EQU  H'FD' ; Brown-out Reset disabled
_PWRT_OFF_2L      EQU  H'FF' ; Power-up Timer disabled
_PWRT_ON_2L       EQU  H'FE' ; Power-up Timer enabled

;Configuration Byte 2H Options
_WDT_ON_2H        EQU  H'FF' ; Watch Dog Timer enabled
_WDT_OFF_2H       EQU  H'FE' ; Watch Dog Timer disabled
_WDTPS_32K_2H     EQU  H'FF' ;   1:32,768    WDT Postscaler ratio
_WDTPS_16K_2H     EQU  H'FD' ;   1:16,384
_WDTPS_8K_2H      EQU  H'FB' ;   1: 8,192
_WDTPS_4K_2H      EQU  H'F9' ;   1: 4,096
_WDTPS_2K_2H      EQU  H'F7' ;   1: 2,048
_WDTPS_1K_2H      EQU  H'F5' ;   1: 1,024
_WDTPS_512_2H     EQU  H'F3' ;   1:   512
_WDTPS_256_2H     EQU  H'F1' ;   1:   256
_WDTPS_128_2H     EQU  H'EF' ;   1:   128
_WDTPS_64_2H      EQU  H'ED' ;   1:    64
_WDTPS_32_2H      EQU  H'EB' ;   1:    32
_WDTPS_16_2H      EQU  H'E9' ;   1:    16
_WDTPS_8_2H       EQU  H'E7' ;   1:     8
_WDTPS_4_2H       EQU  H'E5' ;   1:     4
_WDTPS_2_2H       EQU  H'E3' ;   1:     2
_WDTPS_1_2H       EQU  H'E1' ;   1:     1

;Configuration Byte 3H Options
_MCLRE_ON_3H      EQU  H'FF' ; MCLR enabled, RE3 input disabled
_MCLRE_OFF_3H     EQU  H'7F' ; MCLR disabled, RE3 input enabled
_PBAD_ANA_3H      EQU  H'FF' ; ADCON<3:0> resets to B'0000'
_PBAD_DIG_3H      EQU  H'FD' ; ADCON<3:0> resets to B'0111'
_CCP2MX_ON_3H     EQU  H'FF' ; CCP2 pin function on RC1
_CCP2MX_OFF_3H    EQU  H'FE' ; CCP2 pin function on RB3
_CCP2MX_C1_3H     EQU  H'FF' ; CCP2 pin function on RC1 (alt defn)
_CCP2MX_B3_3H     EQU  H'FE' ; CCP2 pin function on RB3 (alt defn)

;Configuration Byte 4L Options
_DEBUG_ON_4L      EQU  H'7F' ; DEBUGger enabled
_DEBUG_OFF_4L     EQU  H'FF' ; DEBUGger disabled
_LVP_ON_4L        EQU  H'FF' ; Low Voltage Prgramming enabled
_LVP_OFF_4L       EQU  H'FB' ; Low Voltage Prgramming disabled
_STVR_ON_4L       EQU  H'FF' ; Stack over/underflow Reset enabled
_STVR_OFF_4L      EQU  H'FE' ; Stack over/underflow Reset disabled

;Configuration Byte 5L Options
; Protect program memory blocks from programmer reads and writes (see Config Byte 6L)
_CP0_ON_5L        EQU  H'FE' ; Block 0 protected
_CP0_OFF_5L       EQU  H'FF' ; Block 0 readable/ may be writable 
_CP1_ON_5L        EQU  H'FD' ; Block 1 protected
_CP1_OFF_5L       EQU  H'FF' ; Block 1 readable/ may be writable

;Configuration Byte 5H Options
; Protect blocks from programmer reads and writes (see Config Byte 6H)
_CPB_ON_5H        EQU  H'BF' ; Boot Block protected
_CPB_OFF_5H       EQU  H'FF' ; Boot Block readable / may be writable 
_CPD_ON_5H        EQU  H'7F' ; Data EE memory protected
_CPD_OFF_5H       EQU  H'FF' ; Data EE memory readable / may be writable

;Configuration Byte 6L Options
; Protect program memory blocks from table writes and programmer writes
_WRT0_ON_6L       EQU  H'FE' ; Block 0 write protected
_WRT0_OFF_6L      EQU  H'FF' ; Block 0 writable
_WRT1_ON_6L       EQU  H'FD' ; Block 1 write protected
_WRT1_OFF_6L      EQU  H'FF' ; Block 1 writable

;Configuration Byte 6H Options
; Protect blocks from table writes and programmer writes
_WRTC_ON_6H       EQU  H'DF' ; Config registers write protected
_WRTC_OFF_6H      EQU  H'FF' ; Config registers writable
_WRTB_ON_6H       EQU  H'BF' ; Boot block write protected
_WRTB_OFF_6H      EQU  H'FF' ; Boot block writable
_WRTD_ON_6H       EQU  H'7F' ; Data EE write protected
_WRTD_OFF_6H      EQU  H'FF' ; Data EE writable 

;Configuration Byte 7L Options
; Protect program memory blocks from table reads executed from other blocks
_EBTR0_ON_7L      EQU  H'FE' ; Block 0 protected 
_EBTR0_OFF_7L     EQU  H'FF' ; Block 0 readable
_EBTR1_ON_7L      EQU  H'FD' ; Block 1 protected
_EBTR1_OFF_7L     EQU  H'FF' ; Block 1 readable

;Configuration Byte 7H Options
;  Protect block from table reads executed in other blocks
_EBTRB_ON_7H      EQU  H'BF' ; Boot block read protected
_EBTRB_OFF_7H     EQU  H'FF' ; Boot block readable

;=======================================================================
;
;   Device ID registers
;
;  The following is an assignment of address values for the Device ID
;  registers for the purpose of table reads.

_DEVID1         EQU    H'3FFFFE'
_DEVID2         EQU    H'3FFFFF'

; Device ID registers hold device ID and revision number and are
; read-only
;
;Device ID Register 1
;               DEV2, DEV1, DEV0, REV4, REV3, REV2, REV1, REV0
;
;Device ID Register 2
;               DEV10, DEV9, DEV8, DEV7, DEV6, DEV5, DEV4, DEV3

;=======================================================================
        LIST
