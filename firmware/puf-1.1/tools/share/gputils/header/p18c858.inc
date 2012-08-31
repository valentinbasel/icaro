        LIST
; P18C858.INC  Standard Header File, Version 0.03   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC18C858 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC18C858
;       2. LIST directive in the source file
;               LIST   P=PIC18C858
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog

;==========================================================================
;
;       Revision History
;
;==========================================================================
; Rev:   Date:         Details:                                        Who:
; 0.01   15 May 2000   Created from 958                                 dj
; 0.02   06 Jun 2000   Fixed typos                                      fn
; 0.03	 11 Oct 2000   Matched register, configuration defs with	nr
;		       PIC18CXX8 datasheet, fixed RXM1EIDH
;		       address mismatch


;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18C858
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;       18Cxxx Family        EQUates
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

  #define DDRA  TRISA          ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB          ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC          ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD          ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE          ; PIC17Cxxx SFR substitution

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------
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
INTCON1         EQU  H'0FF2'
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

;RESERVED_0FD4   EQU  H'0FD4'

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

;RESERVED_0FB9   EQU  H'0FB9'
;RESERVED_0FB8   EQU  H'0FB8'
;RESERVED_0FB7   EQU  H'0FB7'

;RESERVED_0FB6  EQU  H'0FB6'
CVRCON          EQU  H'0FB5'
CMCON           EQU  H'0FB4'

TMR3H           EQU  H'0FB3'
TMR3L           EQU  H'0FB2'
T3CON           EQU  H'0FB1'

PSPCON          EQU  H'0FB0'
SPBRG           EQU  H'0FAF'
RCREG           EQU  H'0FAE'
TXREG           EQU  H'0FAD'
TXSTA           EQU  H'0FAC'
RCSTA           EQU  H'0FAB'

;RESERVED_0FAA   EQU  H'0FAA'
;RESERVED_0FA9   EQU  H'0FA9'
;RESERVED_0FA8   EQU  H'0FA8'
;RESERVED_0FA7   EQU  H'0FA7'
;RESERVED_0FA6   EQU  H'0FA6'

IPR3            EQU  H'0FA5'
PIR3            EQU  H'0FA4'
PIE3            EQU  H'0FA3'
IPR2            EQU  H'0FA2'
PIR2            EQU  H'0FA1'
PIE2            EQU  H'0FA0'
IPR1            EQU  H'0F9F'
PIR1            EQU  H'0F9E'
PIE1            EQU  H'0F9D'

MEMCON          EQU  H'0F9C'

;RESERVED_0F9B   EQU  H'0F9B'
TRISJ           EQU  H'0F9A'
TRISH           EQU  H'0F99'
TRISG           EQU  H'0F98'
TRISF           EQU  H'0F97'
TRISE           EQU  H'0F96'
TRISD           EQU  H'0F95'
TRISC           EQU  H'0F94'
TRISB           EQU  H'0F93'
TRISA           EQU  H'0F92'

DDRJ            EQU  H'0F9A'
DDRH            EQU  H'0F99'
DDRG            EQU  H'0F98'
DDRF            EQU  H'0F97'
DDRE            EQU  H'0F96'
DDRD            EQU  H'0F95'
DDRC            EQU  H'0F94'
DDRB            EQU  H'0F93'
DDRA            EQU  H'0F92'

LATJ            EQU  H'0F91'
LATH            EQU  H'0F90'
LATG            EQU  H'0F8F'
LATF            EQU  H'0F8E'
LATE            EQU  H'0F8D'
LATD            EQU  H'0F8C'
LATC            EQU  H'0F8B'
LATB            EQU  H'0F8A'
LATA            EQU  H'0F89'

PORTJ           EQU     H'0F88'
PORTH           EQU     H'0F87'
PORTG           EQU     H'0F86'
PORTF           EQU     H'0F85'
PORTE           EQU     H'0F84'
PORTD           EQU     H'0F83'
PORTC           EQU     H'0F82'
PORTB           EQU     H'0F81'
PORTA           EQU     H'0F80'

TRISK           EQU     H'0F7F'
DDRK            EQU     H'0F7F'
LATK            EQU     H'0F7E'
PORTK           EQU     H'0F7D'

;TRISL           EQU     H'0F7C'
;DDRL            EQU     H'0F7C'
;LATL            EQU     H'0F7B'
;PORTL           EQU     H'0F7A'

;RESERVED_0F79   EQU     H'0F79'
;RESERVED_0F78   EQU     H'0F78'
;RESERVED_0F77   EQU     H'0F77'

TXERRCNT        EQU     H'0F76'
RXERRCNT        EQU     H'0F75'
COMSTAT         EQU     H'0F74'

CIOCON          EQU     H'0F73'

BRGCON3         EQU     H'0F72'
BRGCON2         EQU     H'0F71'
BRGCON1         EQU     H'0F70'

CANCON          EQU     H'0F6F'
CANSTAT         EQU     H'0F6E'

RXB0D7          EQU     H'0F6D'
RXB0D6          EQU     H'0F6C'
RXB0D5          EQU     H'0F6B'
RXB0D4          EQU     H'0F6A'
RXB0D3          EQU     H'0F69'
RXB0D2          EQU     H'0F68'
RXB0D1          EQU     H'0F67'
RXB0D0          EQU     H'0F66'

RXB0DLC         EQU     H'0F65'

RXB0EIDL        EQU     H'0F64'
RXB0EIDH        EQU     H'0F63'
RXB0SIDL        EQU     H'0F62'
RXB0SIDH        EQU     H'0F61'
RXB0CON         EQU     H'0F60'

;RESERVED_0F5F   EQU     H'0F5F'

CANSTAT_RO1     EQU     H'0F5E'     ;CANSTAT is repeated

RXB1D7          EQU     H'0F5D'
RXB1D6          EQU     H'0F5C'
RXB1D5          EQU     H'0F5B'
RXB1D4          EQU     H'0F5A'
RXB1D3          EQU     H'0F59'
RXB1D2          EQU     H'0F58'
RXB1D1          EQU     H'0F57'
RXB1D0          EQU     H'0F56'

RXB1DLC         EQU     H'0F55'

RXB1EIDL        EQU     H'0F54'
RXB1EIDH        EQU     H'0F53'
RXB1SIDL        EQU     H'0F52'
RXB1SIDH        EQU     H'0F51'
RXB1CON         EQU     H'0F50'

;RESERVED_0F4F   EQU     H'0F4F'

CANSTAT_RO2     EQU     H'0F4E'     ;CANSTAT is repeated

TXB0D7          EQU     H'0F4D'
TXB0D6          EQU     H'0F4C'
TXB0D5          EQU     H'0F4B'
TXB0D4          EQU     H'0F4A'
TXB0D3          EQU     H'0F49'
TXB0D2          EQU     H'0F48'
TXB0D1          EQU     H'0F47'
TXB0D0          EQU     H'0F46'

TXB0DLC         EQU     H'0F45'

TXB0EIDL        EQU     H'0F44'
TXB0EIDH        EQU     H'0F43'
TXB0SIDL        EQU     H'0F42'
TXB0SIDH        EQU     H'0F41'
TXB0CON         EQU     H'0F40'

;RESERVED_0F3F   EQU     H'0F3F'

CANSTAT_RO3     EQU     H'0F3E'     ;CANSTAT is repeated

TXB1D7          EQU     H'0F3D'
TXB1D6          EQU     H'0F3C'
TXB1D5          EQU     H'0F3B'
TXB1D4          EQU     H'0F3A'
TXB1D3          EQU     H'0F39'
TXB1D2          EQU     H'0F38'
TXB1D1          EQU     H'0F37'
TXB1D0          EQU     H'0F36'

TXB1DLC         EQU     H'0F35'

TXB1EIDL        EQU     H'0F34'
TXB1EIDH        EQU     H'0F33'
TXB1SIDL        EQU     H'0F32'
TXB1SIDH        EQU     H'0F31'
TXB1CON         EQU     H'0F30'

;RESERVED_0F2F   EQU     H'0F2F'

CANSTAT_RO4     EQU     H'0F2E'     ;CANSTAT is repeated

TXB2D7          EQU     H'0F2D'
TXB2D6          EQU     H'0F2C'
TXB2D5          EQU     H'0F2B'
TXB2D4          EQU     H'0F2A'
TXB2D3          EQU     H'0F29'
TXB2D2          EQU     H'0F28'
TXB2D1          EQU     H'0F27'
TXB2D0          EQU     H'0F26'

TXB2DLC         EQU     H'0F25'

TXB2EIDL        EQU     H'0F24'
TXB2EIDH        EQU     H'0F23'
TXB2SIDL        EQU     H'0F22'
TXB2SIDH        EQU     H'0F21'
TXB2CON         EQU     H'0F20'

RXM1EIDL        EQU     H'0F1F'
RXM1EIDH        EQU     H'0F1E'
RXM1SIDL        EQU     H'0F1D'
RXM1SIDH        EQU     H'0F1C'

RXM0EIDL        EQU     H'0F1B'
RXM0EIDH        EQU     H'0F1A'
RXM0SIDL        EQU     H'0F19'
RXM0SIDH        EQU     H'0F18'

RXF5EIDL        EQU     H'0F17'
RXF5EIDH        EQU     H'0F16'
RXF5SIDL        EQU     H'0F15'
RXF5SIDH        EQU     H'0F14'

RXF4EIDL        EQU     H'0F13'
RXF4EIDH        EQU     H'0F12'
RXF4SIDL        EQU     H'0F11'
RXF4SIDH        EQU     H'0F10'

RXF3EIDL        EQU     H'0F0F'
RXF3EIDH        EQU     H'0F0E'
RXF3SIDL        EQU     H'0F0D'
RXF3SIDH        EQU     H'0F0C'

RXF2EIDL        EQU     H'0F0B'
RXF2EIDH        EQU     H'0F0A'
RXF2SIDL        EQU     H'0F09'
RXF2SIDH        EQU     H'0F08'

RXF1EIDL        EQU     H'0F07'
RXF1EIDH        EQU     H'0F06'
RXF1SIDL        EQU     H'0F05'
RXF1SIDH        EQU     H'0F04'

RXF0EIDL        EQU     H'0F03'
RXF0EIDH        EQU     H'0F02'
RXF0SIDL        EQU     H'0F01'
RXF0SIDH        EQU     H'0F00'


;----- STKPTR Bits --------------------------------------------------------
STKFUL          EQU  H'0007'
STKUNF          EQU  H'0006'
STKPTR4         EQU  H'0004'
STKPTR3         EQU  H'0003'
STKPTR2         EQU  H'0002'
STKPTR1         EQU  H'0001'
STKPTR0         EQU  H'0000'

;----- INTCON Bits --------------------------------------------------------
GIE             EQU  H'0007'
GIEH            EQU  H'0007'
PEIE            EQU  H'0006'
GIEL            EQU  H'0006'
TMR0IE          EQU  H'0005'
T0IE            EQU  H'0005'      ; For backward compatibility
INT0IE          EQU  H'0004'
INT0E           EQU  H'0004'      ; For backward compatibility
RBIE            EQU  H'0003'
TMR0IF          EQU  H'0002'
T0IF            EQU  H'0002'      ; For backward compatibility
INT0IF          EQU  H'0001'
INT0F           EQU  H'0001'      ; For backward compatibility
RBIF            EQU  H'0000'

;----- INTCON2 Bits --------------------------------------------------------
NOT_RBPU        EQU  H'0007'
RBPU            EQU  H'0007'
INTEDG0         EQU  H'0006'
INTEDG1         EQU  H'0005'
INTEDG2         EQU  H'0004'
INTEDG3         EQU  h'0003'
TMR0IP          EQU  H'0002'
T0IP            EQU  H'0002'      ; For compatibility with T0IE and T0IF
INT3P           EQU  H'0001'
RBIP            EQU  H'0000'

;----- INTCON3 Bits --------------------------------------------------------
INT2IP          EQU  H'0007'
INT2P           EQU  H'0007'
INT1IP          EQU  H'0006'
INT1P           EQU  H'0006'
INT3IE          EQU  H'0005'
INT3E           EQU  H'0005'
INT2IE          EQU  H'0004'
INT2E           EQU  H'0004'
INT1IE          EQU  H'0003'
INT1E           EQU  H'0003'
INT3IF          EQU  H'0002'
INT3F           EQU  H'0002'
INT2IF          EQU  H'0001'
INT2F           EQU  H'0001'
INT1IF          EQU  H'0000'
INT1F           EQU  H'0000'

;----- STATUS Bits --------------------------------------------------------
N               EQU  H'0004'
OV              EQU  H'0003'
Z               EQU  H'0002'
DC              EQU  H'0001'
C               EQU  H'0000'

;----- T0CON Bits ---------------------------------------------------------
TMR0ON          EQU  H'0007'
T08BIT          EQU  H'0006'
T0CS            EQU  H'0005'
T0SE            EQU  H'0004'
PSA             EQU  H'0003'
T0PS2           EQU  H'0002'
T0PS1           EQU  H'0001'
T0PS0           EQU  H'0000'

;----- OSCCON Bits ---------------------------------------------------------
SCS             EQU  H'0000'

;----- LVDCON Bits ---------------------------------------------------------
IRVST           EQU  H'0005'
LVDEN           EQU  H'0004'
LVDL3           EQU  H'0003'
LVDL2           EQU  H'0002'
LVDL1           EQU  H'0001'
LVDL0           EQU  H'0000'

;----- WDTCON Bits ---------------------------------------------------------
SWDTE           EQU  H'0000'
SWDTEN          EQU  H'0000'

;----- RCON Bits -----------------------------------------------------------
IPEN            EQU  H'0007'
NOT_IPEN        EQU  H'0007'
LWRT            EQU  H'0006'
NOT_LWRT        EQU  H'0006'
RI              EQU  H'0004'
NOT_RI          EQU  H'0004'
TO              EQU  H'0003'
NOT_TO          EQU  H'0003'
PD              EQU  H'0002'
NOT_PD          EQU  H'0002'
POR             EQU  H'0001'
NOT_POR         EQU  H'0001'
BOR             EQU  H'0000'
NOT_BOR         EQU  H'0000'

;----- T1CON Bits ---------------------------------------------------------
RD16            EQU  H'0007'
T1CKPS1         EQU  H'0005'
T1CKPS0         EQU  H'0004'
T1OSCEN         EQU  H'0003'
T1SYNC          EQU  H'0002'
NOT_T1SYNC      EQU  H'0002'
T1INSYNC        EQU  H'0002'    ; Backward compatibility only
TMR1CS          EQU  H'0001'
TMR1ON          EQU  H'0000'

;----- T2CON Bits ---------------------------------------------------------
TOUTPS3         EQU  H'0006'
TOUTPS2         EQU  H'0005'
TOUTPS1         EQU  H'0004'
TOUTPS0         EQU  H'0003'
TMR2ON          EQU  H'0002'
T2CKPS1         EQU  H'0001'
T2CKPS0         EQU  H'0000'

;----- SSPSTAT Bits -------------------------------------------------------
SMP             EQU  H'0007'
CKE             EQU  H'0006'
D               EQU  H'0005'
I2C_DAT         EQU  H'0005'
NOT_A           EQU  H'0005'
NOT_ADDRESS     EQU  H'0005'
D_A             EQU  H'0005'
DATA_ADDRESS    EQU  H'0005'
P               EQU  H'0004'
I2C_STOP        EQU  H'0004'
S               EQU  H'0003'
I2C_START       EQU  H'0003'
R               EQU  H'0002'
I2C_READ        EQU  H'0002'
NOT_W           EQU  H'0002'
NOT_WRITE       EQU  H'0002'
R_W             EQU  H'0002'
READ_WRITE      EQU  H'0002'
UA              EQU  H'0001'
BF              EQU  H'0000'

;----- SSPCON1 Bits --------------------------------------------------------
WCOL            EQU  H'0007'
SSPOV           EQU  H'0006'
SSPEN           EQU  H'0005'
CKP             EQU  H'0004'
SSPM3           EQU  H'0003'
SSPM2           EQU  H'0002'
SSPM1           EQU  H'0001'
SSPM0           EQU  H'0000'

;----- SSPCON2 Bits --------------------------------------------------------
GCEN            EQU  H'0007'
ACKSTAT         EQU  H'0006'
ACKDT           EQU  H'0005'
ACKEN           EQU  H'0004'
RCEN            EQU  H'0003'
PEN             EQU  H'0002'
RSEN            EQU  H'0001'
SEN             EQU  H'0000'

;----- ADCON0 Bits --------------------------------------------------------
CHS3            EQU  H'0005'
CHS2            EQU  H'0004'
CHS1            EQU  H'0003'
CHS0            EQU  H'0002'
GO              EQU  H'0001'
NOT_DONE        EQU  H'0001'
DONE            EQU  H'0001'
GO_DONE         EQU  H'0001'
ADON            EQU  H'0000'

;----- ADCON1 Bits --------------------------------------------------------
VCFG1           EQU  H'0005'
VCFG0           EQU  H'0004'
PCFG3           EQU  H'0003'
PCFG2           EQU  H'0002'
PCFG1           EQU  H'0001'
PCFG0           EQU  H'0000'

;----- ADCON2 Bits --------------------------------------------------------
ADFM            EQU  H'0007'
ADCS2           EQU  H'0002'
ADCS1           EQU  H'0001'
ADCS0           EQU  H'0000'

;----- CCP1CON Bits -------------------------------------------------------
DC1B1           EQU  H'0005'
CCP1X           EQU  H'0005'      ; For backward compatibility
DC1B0           EQU  H'0004'
CCP1Y           EQU  H'0004'      ; For backward compatibility
CCP1M3          EQU  H'0003'
CCP1M2          EQU  H'0002'
CCP1M1          EQU  H'0001'
CCP1M0          EQU  H'0000'

;----- CCP2CON Bits -------------------------------------------------------
DC2B1           EQU  H'0005'
CCP2X           EQU  H'0005'      ; For backward compatibility
DCCPX           EQU  H'0005'
DC2B0           EQU  H'0004'
CCP2Y           EQU  H'0004'      ; For backward compatibility
CCP2M3          EQU  H'0003'
CCP2M2          EQU  H'0002'
CCP2M1          EQU  H'0001'
CCP2M0          EQU  H'0000'

;----- VRCON Bits -------------------------------------------------------
VREN           EQU  H'0007'
VROE           EQU  H'0006'
VRR            EQU  H'0005'
VRSS           EQU  H'0004'
VR3            EQU  H'0003'
VR2            EQU  H'0002'
VR1            EQU  H'0001'
VR0            EQU  H'0000'

;----- CMCON Bits -------------------------------------------------------
C2OUT           EQU  H'0007'
C1OUT           EQU  H'0006'
C2INV           EQU  H'0005'
C1INV           EQU  H'0004'
CIS             EQU  H'0003'
CM2             EQU  H'0002'
CM1             EQU  H'0001'
CM0             EQU  H'0000'

;----- T3CON Bits ---------------------------------------------------------
RD16            EQU  H'0007'
T3CCP2          EQU  H'0006'
T3CKPS1         EQU  H'0005'
T3CKPS0         EQU  H'0004'
T3CCP1          EQU  H'0003'
T3SYNC          EQU  H'0002'
NOT_T3SYNC      EQU  H'0002'
T3INSYNC        EQU  H'0002'    ; Backward compatibility only
TMR3CS          EQU  H'0001'
TMR3ON          EQU  H'0000'

;----- PSPCON Bits ---------------------------------------------------------
IBF             EQU  H'0007'
OBF             EQU  H'0006'
IBOV            EQU  H'0005'
PSPMODE         EQU  H'0004'

;----- TXSTA Bits -------------------------------------------------------
CSRC            EQU  H'0007'
TX9             EQU  H'0006'
TXEN            EQU  H'0005'
SYNC            EQU  H'0004'
BRGH            EQU  H'0002'
TRMT            EQU  H'0001'
TX9D            EQU  H'0000'

;----- RCSTA Bits -------------------------------------------------------
SPEN            EQU  H'0007'
RX9             EQU  H'0006'
SREN            EQU  H'0005'
CREN            EQU  H'0004'
ADEN            EQU  H'0003'
FERR            EQU  H'0002'
OERR            EQU  H'0001'
RX9D            EQU  H'0000'

;----- IPR3 Bits -------------------------------------------------------
IRXIP           EQU  H'0007'
WAKIP           EQU  H'0006'
ERRIP           EQU  H'0005'
TXB2IP          EQU  H'0004'
TXB1IP          EQU  H'0003'
TXB0IP          EQU  H'0002'
RXB1IP          EQU  H'0001'
RXB0IP          EQU  H'0000'

;----- PIR3 Bits -------------------------------------------------------
IRXIF           EQU  H'0007'
WAKIF           EQU  H'0006'
ERRIF           EQU  H'0005'
TXB2IF          EQU  H'0004'
TXB1IF          EQU  H'0003'
TXB0IF          EQU  H'0002'
RXB1IF          EQU  H'0001'
RXB0IF          EQU  H'0000'

;----- PIE3 Bits -------------------------------------------------------
IRXIE           EQU  H'0007'
WAKIE           EQU  H'0006'
ERRIE           EQU  H'0005'
TXB2IE          EQU  H'0004'
TXB1IE          EQU  H'0003'
TXB0IE          EQU  H'0002'
RXB1IE          EQU  H'0001'
RXB0IE          EQU  H'0000'

;----- IPR2 Bits ----------------------------------------------------------
CMIP            EQU  H'0006'
BCLIP           EQU  H'0003'
LVDIP           EQU  H'0002'
TMR3IP          EQU  H'0001'
CCP2IP          EQU  H'0000'

;----- PIR2 Bits ----------------------------------------------------------
CMIF            EQU  H'0006'
BCLIF           EQU  H'0003'
LVDIF           EQU  H'0002'
TMR3IF          EQU  H'0001'
CCP2IF          EQU  H'0000'

;----- PIE2 Bits ----------------------------------------------------------
CMIE            EQU  H'0006'
BCLIE           EQU  H'0003'
LVDIE           EQU  H'0002'
TMR3IE          EQU  H'0001'
CCP2IE          EQU  H'0000'

;----- IPR1 Bits ----------------------------------------------------------
PSPIP           EQU  H'0007'
ADIP            EQU  H'0006'
RCIP            EQU  H'0005'
TXIP            EQU  H'0004'
SSPIP           EQU  H'0003'
CCP1IP          EQU  H'0002'
TMR2IP          EQU  H'0001'
TMR1IP          EQU  H'0000'

;----- PIR1 Bits ----------------------------------------------------------
PSPIF           EQU  H'0007'
ADIF            EQU  H'0006'
RCIF            EQU  H'0005'
TXIF            EQU  H'0004'
SSPIF           EQU  H'0003'
CCP1IF          EQU  H'0002'
TMR2IF          EQU  H'0001'
TMR1IF          EQU  H'0000'

;----- PIE1 Bits ----------------------------------------------------------
PSPIE           EQU  H'0007'
ADIE            EQU  H'0006'
RCIE            EQU  H'0005'
TXIE            EQU  H'0004'
SSPIE           EQU  H'0003'
CCP1IE          EQU  H'0002'
TMR2IE          EQU  H'0001'
TMR1IE          EQU  H'0000'

;----- MEMCON Bits ----------------------------------------------------------
EBDIS           EQU  H'0007'
WAIT1           EQU  H'0005'
WAIT0           EQU  H'0004'
WM1             EQU  H'0001'
WM0             EQU  H'0000'

;----- TXERRCNT Bits ----------------------------------------------------------
TEC7            EQU  H'0007'
TEC6            EQU  H'0006'
TEC5            EQU  H'0005'
TEC4            EQU  H'0004'
TEC3            EQU  H'0003'
TEC2            EQU  H'0002'
TEC1            EQU  H'0001'
TEC0            EQU  H'0000'

;----- RXERRCNT Bits ----------------------------------------------------------
REC7            EQU  H'0007'
REC6            EQU  H'0006'
REC5            EQU  H'0005'
REC4            EQU  H'0004'
REC3            EQU  H'0003'
REC2            EQU  H'0002'
REC1            EQU  H'0001'
REC0            EQU  H'0000'

;----- COMSTAT Bits ----------------------------------------------------------
RXB0OVFL        EQU  H'0007'
RXB1OVFL        EQU  H'0006'
TXBO            EQU  H'0005'
TXBP            EQU  H'0004'
RXBP            EQU  H'0003'
TXWARN          EQU  H'0002'
RXWARN          EQU  H'0001'
EWARN           EQU  H'0000'

;----- TXBxDLC ----------------------------------------------------------
TXRTR           EQU  H'0006'
DLC3            EQU  H'0003'
DLC2            EQU  H'0002'
DLC1            EQU  H'0001'
DCL0            EQU  H'0000'

;----- CIOCON Bits ----------------------------------------------------------
TX1SRC          EQU  H'0007'
TX1EN           EQU  H'0006'
ENDRHI          EQU  H'0005'
CANCAP          EQU  H'0004'

;----- BRGCON1 Bits ----------------------------------------------------------
SJW1            EQU  H'0007'
SJW0            EQU  H'0006'
BRP5            EQU  H'0005'
BRP4            EQU  H'0004'
BRP3            EQU  H'0003'
BRP2            EQU  H'0002'
BRP1            EQU  H'0001'
BRP0            EQU  H'0000'

;----- BRGCON2 Bits ----------------------------------------------------------
SEG2PHTS        EQU  H'0007'
SAM             EQU  H'0006'
SEG1PH2         EQU  H'0005'
SEG1PH1         EQU  H'0004'
SEG1PH0         EQU  H'0003'
PRSEG2          EQU  H'0002'
PRSEG1          EQU  H'0001'
PRSEG0          EQU  H'0000'

;----- BRGCON3 Bits ----------------------------------------------------------
WAKFIL          EQU  H'0006'
SEG2PH2         EQU  H'0002'
SEG2PH1         EQU  H'0001'
SEG2PH0         EQU  H'0000'

;----- CANCON Bits ----------------------------------------------------------
REQOP2          EQU  H'0007'
REQOP1          EQU  H'0006'
REQOP0          EQU  H'0005'
ABAT            EQU  H'0004'
WIN2            EQU  H'0003'
WIN1            EQU  H'0002'
WIN0            EQU  H'0001'


;----- CANSTAT Bits ----------------------------------------------------------
OPMODE2         EQU  H'0007'
OPMODE1         EQU  H'0006'
OPMODE0         EQU  H'0005'
ICODE2          EQU  H'0003'
ICODE1          EQU  H'0002'
ICODE0          EQU  H'0001'

;----- RXFxSIDL Bits ----------------------------------------------------------
SID2            EQU  H'0007'
SID1            EQU  H'0006'
SID0            EQU  H'0005'
EXIDE           EQU  H'0003'
EID17           EQU  H'0001'
EID16           EQU  H'0000'

;----- RXB0D7 Bits ----------------------------------------------------------
RB0D77          EQU  H'0007'
RB0D76          EQU  H'0006'
RB0D75          EQU  H'0005'
RB0D74          EQU  H'0004'
RB0D73          EQU  H'0003'
RB0D72          EQU  H'0002'
RB0D71          EQU  H'0001'
RB0D70          EQU  H'0000'

;----- RXB0D6 Bits ----------------------------------------------------------
RB0D67          EQU  H'0007'
RB0D66          EQU  H'0006'
RB0D65          EQU  H'0005'
RB0D64          EQU  H'0004'
RB0D63          EQU  H'0003'
RB0D62          EQU  H'0002'
RB0D61          EQU  H'0001'
RB0D60          EQU  H'0000'

;----- RXB0D5 Bits ----------------------------------------------------------
RB0D57          EQU  H'0007'
RB0D56          EQU  H'0006'
RB0D55          EQU  H'0005'
RB0D54          EQU  H'0004'
RB0D53          EQU  H'0003'
RB0D52          EQU  H'0002'
RB0D51          EQU  H'0001'
RB0D50          EQU  H'0000'

;----- RXB0D4 Bits ----------------------------------------------------------
RB0D47          EQU  H'0007'
RB0D46          EQU  H'0006'
RB0D45          EQU  H'0005'
RB0D44          EQU  H'0004'
RB0D43          EQU  H'0003'
RB0D42          EQU  H'0002'
RB0D41          EQU  H'0001'
RB0D40          EQU  H'0000'

;----- RXB0D3 Bits ----------------------------------------------------------
RB0D37          EQU  H'0007'
RB0D36          EQU  H'0006'
RB0D35          EQU  H'0005'
RB0D34          EQU  H'0004'
RB0D33          EQU  H'0003'
RB0D32          EQU  H'0002'
RB0D31          EQU  H'0001'
RB0D30          EQU  H'0000'

;----- RXB0D2 Bits ----------------------------------------------------------
RB0D27          EQU  H'0007'
RB0D26          EQU  H'0006'
RB0D25          EQU  H'0005'
RB0D24          EQU  H'0004'
RB0D23          EQU  H'0003'
RB0D22          EQU  H'0002'
RB0D21          EQU  H'0001'
RB0D20          EQU  H'0000'

;----- RXB0D1 Bits ----------------------------------------------------------
RB0D17          EQU  H'0007'
RB0D16          EQU  H'0006'
RB0D15          EQU  H'0005'
RB0D14          EQU  H'0004'
RB0D13          EQU  H'0003'
RB0D12          EQU  H'0002'
RB0D11          EQU  H'0001'
RB0D10          EQU  H'0000'

;----- RXB0D0 Bits ----------------------------------------------------------
RB0D07          EQU  H'0007'
RB0D06          EQU  H'0006'
RB0D05          EQU  H'0005'
RB0D04          EQU  H'0004'
RB0D03          EQU  H'0003'
RB0D02          EQU  H'0002'
RB0D01          EQU  H'0001'
RB0D00          EQU  H'0000'

;----- RXB1D7 Bits ----------------------------------------------------------
RXB1D77          EQU  H'0007'
RXB1D76          EQU  H'0006'
RXB1D75          EQU  H'0005'
RXB1D74          EQU  H'0004'
RXB1D73          EQU  H'0003'
RXB1D72          EQU  H'0002'
RXB1D71          EQU  H'0001'
RXB1D70          EQU  H'0000'

;----- RXB1D6 Bits ----------------------------------------------------------
RXB1D67          EQU  H'0007'
RXB1D66          EQU  H'0006'
RXB1D65          EQU  H'0005'
RXB1D64          EQU  H'0004'
RXB1D63          EQU  H'0003'
RXB1D62          EQU  H'0002'
RXB1D61          EQU  H'0001'
RXB1D60          EQU  H'0000'

;----- RXB1D5 Bits ----------------------------------------------------------
RXB1D57          EQU  H'0007'
RXB1D56          EQU  H'0006'
RXB1D55          EQU  H'0005'
RXB1D54          EQU  H'0004'
RXB1D53          EQU  H'0003'
RXB1D52          EQU  H'0002'
RXB1D51          EQU  H'0001'
RXB1D50          EQU  H'0000'


;----- RXB1D4 Bits ----------------------------------------------------------
RXB1D47          EQU  H'0007'
RXB1D46          EQU  H'0006'
RXB1D45          EQU  H'0005'
RXB1D44          EQU  H'0004'
RXB1D43          EQU  H'0003'
RXB1D42          EQU  H'0002'
RXB1D41          EQU  H'0001'
RXB1D40          EQU  H'0000'


;----- RXB1D3 Bits ----------------------------------------------------------
RXB1D37          EQU  H'0007'
RXB1D36          EQU  H'0006'
RXB1D35          EQU  H'0005'
RXB1D34          EQU  H'0004'
RXB1D33          EQU  H'0003'
RXB1D32          EQU  H'0002'
RXB1D31          EQU  H'0001'
RXB1D30          EQU  H'0000'


;----- RXB1D2 Bits ----------------------------------------------------------
RXB1D27          EQU  H'0007'
RXB1D26          EQU  H'0006'
RXB1D25          EQU  H'0005'
RXB1D24          EQU  H'0004'
RXB1D23          EQU  H'0003'
RXB1D22          EQU  H'0002'
RXB1D21          EQU  H'0001'
RXB1D20          EQU  H'0000'


;----- RXB1D1 Bits ----------------------------------------------------------
RXB1D17          EQU  H'0007'
RXB1D16          EQU  H'0006'
RXB1D15          EQU  H'0005'
RXB1D14          EQU  H'0004'
RXB1D13          EQU  H'0003'
RXB1D12          EQU  H'0002'
RXB1D11          EQU  H'0001'
RXB1D10          EQU  H'0000'

;----- RXB1D0 Bits ----------------------------------------------------------
RXB1D07          EQU  H'0007'
RXB1D06          EQU  H'0006'
RXB1D05          EQU  H'0005'
RXB1D04          EQU  H'0004'
RXB1D03          EQU  H'0003'
RXB1D02          EQU  H'0002'
RXB1D01          EQU  H'0001'
RXB1D00          EQU  H'0000'


;----- TXB2D7 Bits ----------------------------------------------------------
TXB2D77          EQU  H'0007'
TXB2D76          EQU  H'0006'
TXB2D75          EQU  H'0005'
TXB2D74          EQU  H'0004'
TXB2D73          EQU  H'0003'
TXB2D72          EQU  H'0002'
TXB2D71          EQU  H'0001'
TXB2D70          EQU  H'0000'

;----- TXB2D6 Bits ----------------------------------------------------------
TXB2D67          EQU  H'0007'
TXB2D66          EQU  H'0006'
TXB2D65          EQU  H'0005'
TXB2D64          EQU  H'0004'
TXB2D63          EQU  H'0003'
TXB2D62          EQU  H'0002'
TXB2D61          EQU  H'0001'
TXB2D60          EQU  H'0000'

;----- TXB2D5 Bits ----------------------------------------------------------
TXB2D57          EQU  H'0007'
TXB2D56          EQU  H'0006'
TXB2D55          EQU  H'0005'
TXB2D54          EQU  H'0004'
TXB2D53          EQU  H'0003'
TXB2D52          EQU  H'0002'
TXB2D51          EQU  H'0001'
TXB2D50          EQU  H'0000'

;----- TXB2D4 Bits ----------------------------------------------------------
TXB2D47          EQU  H'0007'
TXB2D46          EQU  H'0006'
TXB2D45          EQU  H'0005'
TXB2D44          EQU  H'0004'
TXB2D43          EQU  H'0003'
TXB2D42          EQU  H'0002'
TXB2D41          EQU  H'0001'
TXB2D40          EQU  H'0000'

;----- TXB2D3 Bits ----------------------------------------------------------
TXB2D37          EQU  H'0007'
TXB2D36          EQU  H'0006'
TXB2D35          EQU  H'0005'
TXB2D34          EQU  H'0004'
TXB2D33          EQU  H'0003'
TXB2D32          EQU  H'0002'
TXB2D31          EQU  H'0001'
TXB2D30          EQU  H'0000'

;----- TXB2D2 Bits ----------------------------------------------------------
TXB2D27          EQU  H'0007'
TXB2D26          EQU  H'0006'
TXB2D25          EQU  H'0005'
TXB2D24          EQU  H'0004'
TXB2D23          EQU  H'0003'
TXB2D22          EQU  H'0002'
TXB2D21          EQU  H'0001'
TXB2D20          EQU  H'0000'

;----- TXB2D1 Bits ----------------------------------------------------------
TXB2D17          EQU  H'0007'
TXB2D16          EQU  H'0006'
TXB2D15          EQU  H'0005'
TXB2D14          EQU  H'0004'
TXB2D13          EQU  H'0003'
TXB2D12          EQU  H'0002'
TXB2D11          EQU  H'0001'
TXB2D10          EQU  H'0000'

;----- TXB2D0 Bits ----------------------------------------------------------
TXB2D07          EQU  H'0007'
TXB2D06          EQU  H'0006'
TXB2D05          EQU  H'0005'
TXB2D04          EQU  H'0004'
TXB2D03          EQU  H'0003'
TXB2D02          EQU  H'0002'
TXB2D01          EQU  H'0001'
TXB2D00          EQU  H'0000'


;----- TXB1D7 Bits ----------------------------------------------------------
TXB1D77          EQU  H'0007'
TXB1D76          EQU  H'0006'
TXB1D75          EQU  H'0005'
TXB1D74          EQU  H'0004'
TXB1D73          EQU  H'0003'
TXB1D72          EQU  H'0002'
TXB1D71          EQU  H'0001'
TXB1D70          EQU  H'0000'

;----- TXB1D6 Bits ----------------------------------------------------------
TXB1D67          EQU  H'0007'
TXB1D66          EQU  H'0006'
TXB1D65          EQU  H'0005'
TXB1D64          EQU  H'0004'
TXB1D63          EQU  H'0003'
TXB1D62          EQU  H'0002'
TXB1D61          EQU  H'0001'
TXB1D60          EQU  H'0000'

;----- TXB1D5 Bits ----------------------------------------------------------
TXB1D57          EQU  H'0007'
TXB1D56          EQU  H'0006'
TXB1D55          EQU  H'0005'
TXB1D54          EQU  H'0004'
TXB1D53          EQU  H'0003'
TXB1D52          EQU  H'0002'
TXB1D51          EQU  H'0001'
TXB1D50          EQU  H'0000'

;----- TXB1D4 Bits ----------------------------------------------------------
TXB1D47          EQU  H'0007'
TXB1D46          EQU  H'0006'
TXB1D45          EQU  H'0005'
TXB1D44          EQU  H'0004'
TXB1D43          EQU  H'0003'
TXB1D42          EQU  H'0002'
TXB1D41          EQU  H'0001'
TXB1D40          EQU  H'0000'

;----- TXB1D3 Bits ----------------------------------------------------------
TXB1D37          EQU  H'0007'
TXB1D36          EQU  H'0006'
TXB1D35          EQU  H'0005'
TXB1D34          EQU  H'0004'
TXB1D33          EQU  H'0003'
TXB1D32          EQU  H'0002'
TXB1D31          EQU  H'0001'
TXB1D30          EQU  H'0000'

;----- TXB1D2 Bits ----------------------------------------------------------
TXB1D27          EQU  H'0007'
TXB1D26          EQU  H'0006'
TXB1D25          EQU  H'0005'
TXB1D24          EQU  H'0004'
TBB1D23          EQU  H'0003'
TXB1D22          EQU  H'0002'
TXB1D21          EQU  H'0001'
TXB1D20          EQU  H'0000'

;----- TXB1D1 Bits ----------------------------------------------------------
TXB1D17          EQU  H'0007'
TXB1D16          EQU  H'0006'
TXB1D15          EQU  H'0005'
TXB1D14          EQU  H'0004'
TXB1D13          EQU  H'0003'
TXB1D12          EQU  H'0002'
TXB1D11          EQU  H'0001'
TXB1D10          EQU  H'0000'

;----- TXB1D0 Bits ----------------------------------------------------------
TXB1D07          EQU  H'0007'
TXB1D06          EQU  H'0006'
TXB1D05          EQU  H'0005'
TXB1D04          EQU  H'0004'
TXB1D03          EQU  H'0003'
TXB1D02          EQU  H'0002'
TXB1D01          EQU  H'0001'
TXB1D00          EQU  H'0000'


;----- TXB0D7 Bits ----------------------------------------------------------
TXB0D77          EQU  H'0007'
TXB0D76          EQU  H'0006'
TXB0D75          EQU  H'0005'
TXB0D74          EQU  H'0004'
TXB0D73          EQU  H'0003'
TXB0D72          EQU  H'0002'
TXB0D71          EQU  H'0001'
TXB0D70          EQU  H'0000'

;----- TXB0D6 Bits ----------------------------------------------------------
TXB0D67          EQU  H'0007'
TXB0D66          EQU  H'0006'
TXB0D65          EQU  H'0005'
TXB0D64          EQU  H'0004'
TXB0D63          EQU  H'0003'
TXB0D62          EQU  H'0002'
TXB0D61          EQU  H'0001'
TXB0D60          EQU  H'0000'

;----- TXB0D5 Bits ----------------------------------------------------------
TXB0D57          EQU  H'0007'
TXB0D56          EQU  H'0006'
TXB0D55          EQU  H'0005'
TXB0D54          EQU  H'0004'
TXB0D53          EQU  H'0003'
TXB0D52          EQU  H'0002'
TXB0D51          EQU  H'0001'
TXB0D50          EQU  H'0000'

;----- TXB0D4 Bits ----------------------------------------------------------
TXB0D47          EQU  H'0007'
TXB0D46          EQU  H'0006'
TXB0D45          EQU  H'0005'
TXB0D44          EQU  H'0004'
TXB0D43          EQU  H'0003'
TXB0D42          EQU  H'0002'
TXB0D41          EQU  H'0001'
TXB0D40          EQU  H'0000'

;----- TXB0D3 Bits ----------------------------------------------------------
TXB0D37          EQU  H'0007'
TXB0D36          EQU  H'0006'
TXB0D35          EQU  H'0005'
TXB0D34          EQU  H'0004'
TXB0D33          EQU  H'0003'
TXB0D32          EQU  H'0002'
TXB0D31          EQU  H'0001'
TXB0D30          EQU  H'0000'

;----- TXB0D2 Bits ----------------------------------------------------------
TXB0D27          EQU  H'0007'
TXB0D26          EQU  H'0006'
TXB0D25          EQU  H'0005'
TXB0D24          EQU  H'0004'
TXB0D23          EQU  H'0003'
TXB0D22          EQU  H'0002'
TXB0D21          EQU  H'0001'
TXB0D20          EQU  H'0000'

;----- TXB0D1 Bits ----------------------------------------------------------
TXB0D17          EQU  H'0007'
TXB0D16          EQU  H'0006'
TXB0D15          EQU  H'0005'
TXB0D14          EQU  H'0004'
TXB0D13          EQU  H'0003'
TXB0D12          EQU  H'0002'
TXB0D11          EQU  H'0001'
TXB0D10          EQU  H'0000'

;----- TXB0D0 Bits ----------------------------------------------------------
TXB0D07          EQU  H'0007'
TXB0D06          EQU  H'0006'
TXB0D05          EQU  H'0005'
TXB0D04          EQU  H'0004'
TXB0D03          EQU  H'0003'
TXB0D02          EQU  H'0002'
TXB0D01          EQU  H'0001'
TXB0D00          EQU  H'0000'

;----- RXB0DLC and TXB0DLC Bits ----------------------------------------------------------
RXRTR           EQU  H'0006'
RESB1           EQU  H'0005'
RESBO           EQU  H'0004'
DLC3            EQU  H'0003'
DLC2            EQU  H'0002'
DLC1            EQU  H'0001'
DLC0            EQU  H'0000'

;----- RXB0EIDL and RXB1EIDL Bits ----------------------------------------------------------
EID7            EQU  H'0007'
EID6            EQU  H'0006'
EID5            EQU  H'0005'
EID4            EQU  H'0004'
EID3            EQU  H'0003'
EID2            EQU  H'0002'
EID1            EQU  H'0001'
EID0            EQU  H'0000'

;----- RXB0EIDH, RXFnEIDH, and RXMnEIDH Bits ----------------------------------------------------------
EID15           EQU  H'0007'
EID14           EQU  H'0006'
EID13           EQU  H'0005'
EID12           EQU  H'0004'
EID11           EQU  H'0003'
EID10           EQU  H'0002'
EID9            EQU  H'0001'
EID8            EQU  H'0000'

;----- RXB0EIDL and TXB0EIDL Bits ----------------------------------------------------------
EID7            EQU  H'0007'
EID6            EQU  H'0006'
EID5            EQU  H'0005'
EID4            EQU  H'0004'
EID3            EQU  H'0003'
EID2            EQU  H'0002'
EID1            EQU  H'0001'
EID0            EQU  H'0000'

;----- RXB0SIDL, RXFnSIDL, and RXMnSIDL Bits ----------------------------------------------------------
SID2            EQU  H'0007'
SID1            EQU  H'0006'
SID0            EQU  H'0005'
SRR             EQU  H'0004'
EXID            EQU  H'0003'
EID17           EQU  H'0001'
EID16           EQU  H'0000'

;----- RXB0SIDH, RXFnSIDH, RXMnSIDH Bits ----------------------------------------------------------
SID10           EQU  H'0007'
SID9            EQU  H'0006'
SID8            EQU  H'0005'
SID7            EQU  H'0004'
SID6            EQU  H'0003'
SID5            EQU  H'0002'
SID4            EQU  H'0001'
SID3            EQU  H'0001'

;----- RXB0CON Bits ----------------------------------------------------------
RXFUL           EQU  H'0007'
RXM1            EQU  H'0006'
RXM0            EQU  H'0005'
RXRTRRO         EQU  H'0003'
RX0DBEN         EQU  H'0002'
JTOFF           EQU  H'0001'
FILHIT0         EQU  H'0000'

;----- RXB1CON Bits ----------------------------------------------------------
RXFUL           EQU  H'0007'
RXM1            EQU  H'0006'
RXM0            EQU  H'0005'
RXRTRRO         EQU  H'0003'
FILHIT2         EQU  H'0002'
FILHIT1         EQU  H'0001'

;----- TXB0CON Bits ----------------------------------------------------------
TXABT           EQU  H'0006'
TXLARB          EQU  H'0005'
TXERR           EQU  H'0004'
TXREQ           EQU  H'0003'
TXPRI1          EQU  H'0001'
TXPRI0          EQU  H'0000'

;----- TXBnSIDL Bits ----------------------------------------------------------
SID2            EQU  H'0007'
SID1            EQU  H'0006'
SID0            EQU  H'0005'
EXIDE           EQU  H'0003'
EID17           EQU  H'0001'
EID16           EQU  H'0000'

;==========================================================================
;
;       I/O Pin Name Definitions
;
;==========================================================================

;----- PORTA ------------------------------------------------------------------
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
CLK0            EQU  6


;----- PORTB ------------------------------------------------------------------
RB0             EQU  0
INT0            EQU  0
RB1             EQU  1
INT1            EQU  1
RB2             EQU  2
INT2            EQU  2
RB3             EQU  3
INT3            EQU  3
RB4             EQU  4
RB5             EQU  5
RB6             EQU  6
RB7             EQU  7


;----- PORTC ------------------------------------------------------------------
RC0             EQU  0
T1OSO           EQU  0
T1CKI           EQU  0
RC1             EQU  1
T1OSI           EQU  1
RC2             EQU  2
CCP1            EQU  2
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
;****DT              EQU  7      ;*** Not Available due to conflict with
                                 ;***    Define Table (DT) directive

;----- PORTD ------------------------------------------------------------------
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
RD6             EQU  6
PSP6            EQU  6
RD7             EQU  7
PSP7            EQU  7


;----- PORTE ------------------------------------------------------------------
RE0             EQU  0
ALE             EQU  0
AN5             EQU  0
RE1             EQU  1
OE              EQU  1
RE2             EQU  2
WRL             EQU  2
RE3             EQU  3
WRH             EQU  3
RE4             EQU  4
RE5             EQU  5
RE6             EQU  6
RE7             EQU  7
CCP2            EQU  7


;----- PORTF ------------------------------------------------------------------
RF0             EQU  0
AN5             EQU  0
RF1             EQU  1
AN6             EQU  1
RF2             EQU  2
AN7             EQU  2
RF3             EQU  3
AN8             EQU  3
RF4             EQU  4
AN9             EQU  4
RF5             EQU  5
AN10            EQU  5
RF6             EQU  6
AN11            EQU  6
RF7             EQU  7


;----- PORTG ------------------------------------------------------------------
RG0             EQU  0
CANTX1          EQU  0
RG1             EQU  1
CANTX2          EQU  1
RG2             EQU  2
CANRX           EQU  2
RG3             EQU  3
RG4             EQU  4


;----- PORTH ------------------------------------------------------------------
RH0             EQU  0
;A16            EQU  0
RH1             EQU  1
;A17             EQU  1
RH2             EQU  2
;A18             EQU  2
RH3             EQU  3
;A19             EQU  3
RH4             EQU  4
;AN12            EQU  4
RH5             EQU  5
;AN13            EQU  5
RH6             EQU  6
;AN14            EQU  6
RH7             EQU  7
;AN15            EQU  7


;----- PORTJ ------------------------------------------------------------------
RJ0             EQU  0
RJ1             EQU  1
RJ2             EQU  2
RJ3             EQU  3


;----- PORTK ------------------------------------------------------------------
RK0             EQU  0
RK1             EQU  1
RK2             EQU  2
RK3             EQU  3
RK4             EQU  4
RK5             EQU  5
RK6             EQU  6
RK7             EQU  7


;==========================================================================


;==========================================================================
;
;       RAM Definition
;
;==========================================================================

;       __MAXRAM H'5FF'
        

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Code Protect:
;     CP = ON              Enabled
;     CP = OFF             Disabled
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
;     BORV = 25            2.5V
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
;
;   Stack Overflow Reset:
;     STVR = OFF           Disabled
;     STVR = ON            Enabled
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;     Data Sheet    Include File                  Address
;     CONFIG1L    = Configuration Byte 0          300000h
;     CONFIG1H    = Configuration Byte 1          300001h
;     CONFIG2L    = Configuration Byte 3          300002h
;     CONFIG2H    = Configuration Byte 4          300003h
;     CONFIG3L    = Configuration Byte 5          300004h
;     CONFIG3H    = Configuration Byte 6          300005h
;     CONFIG4L    = Configuration Byte 7          300006h
;     CONFIG4H    = Configuration Byte 8          300007h
;
;==========================================================================
;
;Configuration Byte 0 Options
_CP_ON_0          EQU  H'00'    ; Code Protect enable   
_CP_OFF_0         EQU  H'FF'

;Configuration Byte 1 Options
_OSCS_ON_1        EQU  H'DF'    ; Oscillator Switch enable
_OSCS_OFF_1       EQU  H'FF'

_LP_OSC_1         EQU  H'F8'    ; Oscillator type
_XT_OSC_1         EQU  H'F9'
_HS_OSC_1         EQU  H'FA'
_RC_OSC_1         EQU  H'FB'
_EC_OSC_1         EQU  H'FC'    ; External Clock w/OSC2 output divide by 4
_ECIO_OSC_1       EQU  H'FD'    ; w/OSC2 as an IO pin (RA6)
_HSPLL_OSC_1      EQU  H'FE'    ; HS PLL
_RCIO_OSC_1       EQU  H'FF'    ; RC w/OSC2 as an IO pin (RA6)

;Configuration Byte 2 Options
_BOR_ON_2         EQU  H'FF'    ; Brown-out Reset enable
_BOR_OFF_2        EQU  H'FD'
_PWRT_OFF_2       EQU  H'FF'    ; Power-up Timer enable
_PWRT_ON_2        EQU  H'FE'
_BORV_25_2        EQU  H'FF'    ; BOR Voltage - 2.5v
_BORV_27_2        EQU  H'FB'    ;               2.7v
_BORV_42_2        EQU  H'F7'    ;               4.2v
_BORV_45_2        EQU  H'F3'    ;               4.5v

;Configuration Byte 3 Options
_WDT_ON_3         EQU  H'FF'    ; Watch Dog Timer enable
_WDT_OFF_3        EQU  H'FE'
_WDTPS_128_3      EQU  H'FF'    ; Watch Dog Timer PostScaler count
_WDTPS_64_3       EQU  H'FD'
_WDTPS_32_3       EQU  H'FB'
_WDTPS_16_3       EQU  H'F9'
_WDTPS_8_3        EQU  H'F7'
_WDTPS_4_3        EQU  H'F5'
_WDTPS_2_3        EQU  H'F3'
_WDTPS_1_3        EQU  H'F1'

;Configuration Byte 6 Options
_STVR_ON_6        EQU  H'FF'    ; Stack over/underflow Reset enable
_STVR_OFF_6       EQU  H'FE'

; To use the Configuration Bits, place the following lines in your source code
;  in the following format, and change the configuration value to the desired 
;  setting (such as CP_OFF to CP_ON).  These are currently commented out here
;  and each __CONFIG line should have the preceding semicolon removed when
;  pasted into your source code.

;  The following is a assignment of address values for all of the configuration
;  registers for the purpose of table reads
_CONFIG0        EQU    H'300000'
_CONFIG1        EQU    H'300001'
_CONFIG2        EQU    H'300002'
_CONFIG3        EQU    H'300003'
_CONFIG4        EQU    H'300004'
_CONFIG5        EQU    H'300005'
_CONFIG6        EQU    H'300006'
_CONFIG7        EQU    H'300007'
_DEVID1         EQU    H'3FFFFE'
_DEVID2         EQU    H'3FFFFF'
_IDLOC0         EQU    H'200000'
_IDLOC1         EQU    H'200001'
_IDLOC2         EQU    H'200002'
_IDLOC3         EQU    H'200003'
_IDLOC4         EQU    H'200004'
_IDLOC5         EQU    H'200005'
_IDLOC6         EQU    H'200006'
_IDLOC7         EQU    H'200007'

;Program Configuration Register 0
;               __CONFIG    _CONFIG0, _CP_OFF_0

;Program Configuration Register 1
;               __CONFIG    _CONFIG1, _OSCS_OFF_1 & _RCIO_OSC_1

;Program Configuration Register 2
;               __CONFIG    _CONFIG2, _BOR_ON_2 & _BORV_25_2 & _PWRT_OFF_2

;Program Configuration Register 3
;               __CONFIG    _CONFIG3, _WDT_ON_3 & _WDTPS_128_3

;Program Configuration Register 6
;               __CONFIG    _CONFIG6, _STVR_ON_6

;ID Locations Register 0
;		__IDLOCS    _IDLOC0, <expression>

;ID Locations Register 1
;		__IDLOCS    _IDLOC1, <expression>

;ID Locations Register 2
;		__IDLOCS    _IDLOC2, <expression>

;ID Locations Register 3
;		__IDLOCS    _IDLOC3, <expression>

;ID Locations Register 4
;		__IDLOCS    _IDLOC4, <expression>

;ID Locations Register 5
;		__IDLOCS    _IDLOC5, <expression>

;ID Locations Register 6
;		__IDLOCS    _IDLOC6, <expression>

;ID Locations Register 7
;		__IDLOCS    _IDLOC7, <expression>

;Device ID registers hold device ID and revision number and can only be read
;Device ID Register 1
;               DEV2, DEV1, DEV0, REV4, REV3, REV2, REV1, REV0
;Device ID Register 2
;               DEV10, DEV9, DEV8, DEV7, DEV6, DEV5, DEV4, DEV3

;==========================================================================
        LIST
