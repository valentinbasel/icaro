        LIST
; P18F258.INC  Standard Header File, Version 1.10   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC18F258 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC18F258
;       2. LIST directive in the source file
;               LIST   P=PIC18F258
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog

;==========================================================================
;
;       Revision History
;
;==========================================================================
;Rev:   Date:        Details:                                         Who:
;0.90  15 May 2001   Preliminary Release                               dzb
;0.99  29 June2001   Rev 1                                             dzb
;1.00  29 Oct.2001   Corrections & Additions			       cjh
;1.10  25 Jun 2002   Addec CFGS as EECON1 bit 6 name                   pas
;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __18F258
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;       18Fxxx Family        EQUates
;==========================================================================

FSR0            EQU 0
FSR1            EQU 1
FSR2            EQU 2

FAST            EQU 1

W               EQU 0
A               EQU 0
ACCESS          EQU 0
BANKED		EQU 1

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

CCPR1H          EQU  H'0FBF'
CCPR1L          EQU  H'0FBE'
CCP1CON         EQU  H'0FBD'
ECCPR1H         EQU  H'0FBC'
ECCPR1L         EQU  H'0FBB'
ECCP1CON        EQU  H'0FBA'

ECCP1DEL        EQU  H'0FB7'
ECCPAS          EQU  H'0FB6'
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

EEADR           EQU  H'0FA9'
EEDATA          EQU  H'0FA8'
EECON2          EQU  H'0FA7'
EECON1          EQU  H'0FA6'
IPR3            EQU  H'0FA5'
PIR3            EQU  H'0FA4'
PIE3            EQU  H'0FA3'

IPR2            EQU  H'0FA2'
PIR2            EQU  H'0FA1'
PIE2            EQU  H'0FA0'
IPR1            EQU  H'0F9F'
PIR1            EQU  H'0F9E'
PIE1            EQU  H'0F9D'

TRISC           EQU  H'0F94'
TRISB           EQU  H'0F93'
TRISA           EQU  H'0F92'

LATC            EQU  H'0F8B'
LATB            EQU  H'0F8A'
LATA            EQU  H'0F89'

PORTC           EQU  H'0F82'
PORTB           EQU  H'0F81'
PORTA           EQU  H'0F80'

TXERRCNT        EQU  H'0F76'
RXERRCNT        EQU  H'0F75'
COMSTAT         EQU  H'0F74'
CIOCON          EQU  H'0F73'
BRGCON3         EQU  H'0F72'
BRGCON2         EQU  H'0F71'
BRGCON1         EQU  H'0F70'

CANCON          EQU  H'0F6F'
CANSTAT         EQU  H'0F6E'
RXB0D7          EQU  H'0F6D'
RXB0D6          EQU  H'0F6C'
RXB0D5          EQU  H'0F6B'
RXB0D4          EQU  H'0F6A'
RXB0D3          EQU  H'0F69'
RXB0D2          EQU  H'0F68'
RXB0D1          EQU  H'0F67'
RXB0D0          EQU  H'0F66'
RXB0DLC         EQU  H'0F65'
RXB0EIDL       EQU  H'0F64'
RXB0EIDH        EQU  H'0F63'
RXB0SIDL        EQU  H'0F62'
RXB0SIDH        EQU  H'0F61'
RXB0CON         EQU  H'0F60'

CANSTATRO1      EQU  H'0F5E'
RXB1D7          EQU  H'0F5D'
RXB1D6          EQU  H'0F5C'
RXB1D5          EQU  H'0F5B'
RXB1D4          EQU  H'0F5A'
RXB1D3          EQU  H'0F59'
RXB1D2          EQU  H'0F58'
RXB1D1          EQU  H'0F57'
RXB1D0          EQU  H'0F56'
RXB1DLC         EQU  H'0F55'
RXB1EIDL        EQU  H'0F54'
RXB1EIDH        EQU  H'0F53'
RXB1SIDL        EQU  H'0F52'
RXB1SIDH        EQU  H'0F51'
RXB1CON         EQU  H'0F50'

CANSTATRO2      EQU  H'0F4E'
TXB0D7          EQU  H'0F4D'
TXB0D6          EQU  H'0F4C'
TXB0D5          EQU  H'0F4B'
TXB0D4          EQU  H'0F4A'
TXB0D3          EQU  H'0F49'
TXB0D2          EQU  H'0F48'
TXB0D1          EQU  H'0F47'
TXB0D0          EQU  H'0F46'
TXB0DLC         EQU  H'0F45'
TXB0EIDL        EQU  H'0F44'
TXB0EIDH        EQU  H'0F43'
TXB0SIDL        EQU  H'0F42'
TXB0SIDH        EQU  H'0F41'
TXB0CON         EQU  H'0F40'

CANSTATRO3      EQU  H'0F3E'
TXB1D7          EQU  H'0F3D'
TXB1D6          EQU  H'0F3C'
TXB1D5          EQU  H'0F3B'
TXB1D4          EQU  H'0F3A'
TXB1D3          EQU  H'0F39'
TXB1D2          EQU  H'0F38'
TXB1D1          EQU  H'0F37'
TXB1D0          EQU  H'0F36'
TXB1DLC         EQU  H'0F35'
TXB1EIDL        EQU  H'0F34'
TXB1EIDH        EQU  H'0F33'
TXB1SIDL        EQU  H'0F32'
TXB1SIDH        EQU  H'0F31'
TXB1CON         EQU  H'0F30'

CANSTATRO4      EQU  H'0F2E'
TXB2D7          EQU  H'0F2D'
TXB2D6          EQU  H'0F2C'
TXB2D5          EQU  H'0F2B'
TXB2D4          EQU  H'0F2A'
TXB2D3          EQU  H'0F29'
TXB2D2          EQU  H'0F28'
TXB2D1          EQU  H'0F27'
TXB2D0          EQU  H'0F26'
TXB2DLC         EQU  H'0F25'
TXB2EIDL        EQU  H'0F24'
TXB2EIDH        EQU  H'0F23'
TXB2SIDL        EQU  H'0F22'
TXB2SIDH        EQU  H'0F21'
TXB2CON         EQU  H'0F20'

RXM1EIDL        EQU  H'0F1F'
RXM1EIDH        EQU  H'0F1E'
RXM1SIDL        EQU  H'0F1D'
RXM1SIDH        EQU  H'0F1C'

RXM0EIDL        EQU  H'0F1B'
RXM0EIDH        EQU  H'0F1A'
RXM0SIDL        EQU  H'0F19'
RXM0SIDH        EQU  H'0F18'

RXF5EIDL        EQU  H'0F17'
RXF5EIDH        EQU  H'0F16'
RXF5SIDL        EQU  H'0F15'
RXF5SIDH        EQU  H'0F14'

RXF4EIDL        EQU  H'0F13'
RXF4EIDH        EQU  H'0F12'
RXF4SIDL        EQU  H'0F11'
RXF4SIDH        EQU  H'0F10'

RXF3EIDL        EQU  H'0F0F'
RXF3EIDH        EQU  H'0F0E'
RXF3SIDL        EQU  H'0F0D'
RXF3SIDH        EQU  H'0F0C'

RXF2EIDL        EQU  H'0F0B'
RXF2EIDH        EQU  H'0F0A'
RXF2SIDL        EQU  H'0F09'
RXF2SIDH        EQU  H'0F08'

RXF1EIDL        EQU  H'0F07'
RXF1EIDH        EQU  H'0F06'
RXF1SIDL        EQU  H'0F05'
RXF1SIDH        EQU  H'0F04'

RXF0EIDL        EQU  H'0F03'
RXF0EIDH        EQU  H'0F02'
RXF0SIDL        EQU  H'0F01'
RXF0SIDH        EQU  H'0F00'

;----- STKPTR Bits --------------------------------------------------------
STKFUL          EQU  H'0007'
STKUNF          EQU  H'0006'
SP4	        EQU  H'0004'
SP3	        EQU  H'0003'
SP2	        EQU  H'0002'
SP1	        EQU  H'0001'
SP0	        EQU  H'0000'

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
TMR0IP          EQU  H'0002'
T0IP            EQU  H'0002'      ; For compatibility with T0IE and T0IF
RBIP            EQU  H'0000'

;----- INTCON3 Bits --------------------------------------------------------
INT2IP		EQU  H'0007'
INT2P		EQU  H'0007'
INT1IP          EQU  H'0006'
INT1P           EQU  H'0006'
INT2IE		EQU  H'0004'
INT2E		EQU  H'0004'
INT1IE          EQU  H'0003'
INT1E           EQU  H'0003'
INT2IF		EQU  H'0001'
INT2F		EQU  H'0001'
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
IVRST           EQU  H'0005'
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

;----- T1CON Bits ---------------------------------------------------------
RD16            EQU  H'0007'
T1CKPS1         EQU  H'0005'
T1CKPS0         EQU  H'0004'
T1OSCEN         EQU  H'0003'
NOT_T1SYNC      EQU   H'0002'
T1SYNC          EQU   H'0002'
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
ADCS1           EQU  H'0007'
ADCS0           EQU  H'0006'
CHS2            EQU  H'0005'
CHS1            EQU  H'0004'
CHS0            EQU  H'0003'
GO              EQU  H'0002'
NOT_DONE        EQU  H'0002'
DONE            EQU  H'0002'
GO_DONE         EQU  H'0002'
ADON            EQU  H'0000'

;----- ADCON1 Bits --------------------------------------------------------
ADFM            EQU  H'0007'
ADCS2           EQU  H'0006'
PCFG3           EQU  H'0003'
PCFG2           EQU  H'0002'
PCFG1           EQU  H'0001'
PCFG0           EQU  H'0000'

;----- CCP1CON Bits -------------------------------------------------------
DC1B1           EQU  H'0005'
CCP1X           EQU  H'0005'      ; For backward compatibility
DC1B0           EQU  H'0004'
CCP1Y           EQU  H'0004'      ; For backward compatibility
CCP1M3          EQU  H'0003'
CCP1M2          EQU  H'0002'
CCP1M1          EQU  H'0001'
CCP1M0          EQU  H'0000'

;----- ECCP1CON Bits ------------------------------------------------------
EPWM1M1         EQU  H'0007'
EPWM1M0         EQU  H'0006'
EDC2B1          EQU  H'0005'
EDC2B0          EQU  H'0004'
ECCP1M3         EQU  H'0003'
ECCP1M2         EQU  H'0002'
ECCP1M1         EQU  H'0001'
ECCP1M0         EQU  H'0000'

;----- ECCPAS Bits --------------------------------------------------------
ECCPASE         EQU  H'0007'
ECCPAS2         EQU  H'0006'
ECCPAS1         EQU  H'0005'
ECCPAS0         EQU  H'0004'
PSSAC1          EQU  H'0003'
PSSAC0          EQU  H'0002'
PSSBD1          EQU  H'0001'
PSSBD0          EQU  H'0000'

;----- CVRCON Bits --------------------------------------------------------
CVREN           EQU  H'0007'
CVROE           EQU  H'0006'      ; For backward compatibility
CVRR            EQU  H'0005'
CVRSS           EQU  H'0004'      ; For backward compatibility
CVR3            EQU  H'0003'
CVR2            EQU  H'0002'
CVR1            EQU  H'0001'
CVR0            EQU  H'0000'

;----- CMCON Bits ---------------------------------------------------------
C2OUT           EQU  H'0007'
C1OUT           EQU  H'0006'      ; For backward compatibility
C2INV           EQU  H'0005'
C1INV           EQU  H'0004'      ; For backward compatibility
CIS             EQU  H'0003'
CM2             EQU  H'0002'
CM1             EQU  H'0001'
CM0             EQU  H'0000'

;----- T3CON Bits ---------------------------------------------------------
RD16            EQU  H'0007'
T3ECCP1          EQU  H'0006'
T3CKPS1         EQU  H'0005'
T3CKPS0         EQU  H'0004'
T3CCP1          EQU  H'0003'
NOT_T3SYNC      EQU  H'0002'
T3SYNC          EQU  H'0002'
T3INSYNC        EQU  H'0002'    ; Backward compatibility only
TMR3CS          EQU  H'0001'
TMR3ON          EQU  H'0000'

;----- PSPCON Bits --------------------------------------------------------
IBF             EQU  H'0007'
OBF             EQU  H'0006'
IBOV            EQU  H'0005'
PSPMODE         EQU  H'0004'

;----- TXSTA Bits ---------------------------------------------------------
CSRC            EQU  H'0007'
TX9             EQU  H'0006'
NOT_TX8         EQU  H'0006'    ; Backward compatibility only
TX8_9           EQU  H'0006'    ; Backward compatibility only
TXEN            EQU  H'0005'
SYNC            EQU  H'0004'
BRGH            EQU  H'0002'
TRMT            EQU  H'0001'
TX9D            EQU  H'0000'
TXD8            EQU  H'0000'    ; Backward compatibility only

;----- RCSTA Bits ---------------------------------------------------------
SPEN            EQU  H'0007'
RX9             EQU  H'0006'
RC9             EQU  H'0006'    ; Backward compatibility only
NOT_RC8         EQU  H'0006'    ; Backward compatibility only
RC8_9           EQU  H'0006'    ; Backward compatibility only
SREN            EQU  H'0005'
CREN            EQU  H'0004'
ADDEN           EQU  H'0003'
FERR            EQU  H'0002'
OERR            EQU  H'0001'
RX9D            EQU  H'0000'
RCD8            EQU  H'0000'    ; Backward compatibility only

;----- EECON1 Bits --------------------------------------------------------
EEPGD           EQU  H'0007'
EEFS            EQU  H'0006'    ; Backward compatibility only
CFGS            EQU  H'0006'
FREE            EQU  H'0004'
WRERR           EQU  H'0003'
WREN            EQU  H'0002'
WR              EQU  H'0001'
RD              EQU  H'0000'

;----- IPR3 Bits ----------------------------------------------------------
IRXIP           EQU  H'0007'
WAKIP           EQU  H'0006'
ERRIP           EQU  H'0005'
TXB2IP          EQU  H'0004'
TXB1IP          EQU  H'0003'
TXB0IP          EQU  H'0002'
RXB1IP          EQU  H'0001'
RXB0IP          EQU  H'0000'

;----- PIR3 Bits ----------------------------------------------------------
IRXIF           EQU  H'0007'
WAKIF           EQU  H'0006'
ERRIF           EQU  H'0005'
TXB2IF          EQU  H'0004'
TXB1IF          EQU  H'0003'
TXB0IF          EQU  H'0002'
RXB1IF          EQU  H'0001'
RXB0IF          EQU  H'0000'

;----- PIE3 Bits ----------------------------------------------------------
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
EEIP            EQU  H'0004'
BCLIP           EQU  H'0003'
LVDIP           EQU  H'0002'
TMR3IP          EQU  H'0001'
ECCP1IP         EQU  H'0000'

;----- PIR2 Bits ----------------------------------------------------------
CMIF            EQU  H'0006'
EEIF            EQU  H'0004'
BCLIF           EQU  H'0003'
LVDIF           EQU  H'0002'
TMR3IF          EQU  H'0001'
ECCP1IF         EQU  H'0000'

;----- PIE2 Bits ----------------------------------------------------------
CMIE            EQU  H'0006'
EEIE            EQU  H'0004'
BCLIE           EQU  H'0003'
LVDIE           EQU  H'0002'
TMR3IE          EQU  H'0001'
ECCP1IE         EQU  H'0000'

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

;----- COMSTAT Bits ---------------------------------------------------------
RX1OVFL         EQU  H'0007'
RXB0OVFL        EQU  H'0007'
RX2OVFL         EQU  H'0006'
RXB1OVFL        EQU  H'0006'
TXBO            EQU  H'0005'
TXBP            EQU  H'0004'
RXBP            EQU  H'0003'
TXWARN          EQU  H'0002'
RXWARN          EQU  H'0001'
EWARN           EQU  H'0000'

;----- CIOCON Bits -----------------------------------------------------------
ENDRHI          EQU  H'0005'
CANCAP          EQU  H'0004'

;----- BRGCON3 Bits ----------------------------------------------------------
WAKFIL          EQU  H'0006'
SEG2PH2         EQU  H'0002'
SEG2PH1         EQU  H'0001'
SEG2PH0         EQU  H'0000'

;----- BRGCON2 Bits -----------------------------------------------------------
SEG2PHTS        EQU  H'0007'
SAM             EQU  H'0006'
SEG1PH2         EQU  H'0005'
SEG1PH1         EQU  H'0004'
SEG1PH0         EQU  H'0003'
PRSEG2          EQU  H'0002'
PRSEG1          EQU  H'0001'
PRSEG0          EQU  H'0000'

;----- BRGCON1 Bits ------------------------------------------------------------
SJW1            EQU  H'0007'
SJW0            EQU  H'0006'
BRP5            EQU  H'0005'
BRP4            EQU  H'0004'
BRP3            EQU  H'0003'
BRP2            EQU  H'0002'
BRP1            EQU  H'0001'
BRP0            EQU  H'0000'

;----- CANCON Bits -------------------------------------------------------------
REQOP2          EQU  H'0007'
REQOP1          EQU  H'0006'
REQOP0          EQU  H'0005'
ABAT            EQU  H'0004'
WIN2            EQU  H'0003'
WIN1            EQU  H'0002'
WIN0            EQU  H'0001'

;----- CANSTAT Bits -----------------------------------------------------------
OPMODE2         EQU  H'0007'
OPMODE1         EQU  H'0006'
OPMODE0         EQU  H'0005'
ICODE2          EQU  H'0003'
ICODE1          EQU  H'0002'
ICODE0          EQU  H'0001'

;----- RXBnCON Bits -----------------------------------------------------------
RXFUL           EQU  H'0007'
RXM1            EQU  H'0006'
RXM0            EQU  H'0005'
RXRTRRO         EQU  H'0003'
RXB0DBEN        EQU  H'0002'
FILHIT2         EQU  H'0002'
JTOFF           EQU  H'0001'
FILHIT1         EQU  H'0001'
FILHIT0         EQU  H'0000'

;----- TXBnCON Bits ----------------------------------------------------------
TXABT           EQU  H'0006'
TXLARB          EQU  H'0005'
TXERR           EQU  H'0004'
TXREQ           EQU  H'0003'
TXPRI1          EQU  H'0001'
TXPRI0          EQU  H'0000'

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

;----- RXBnDLC and TXBnDLC Bits -----------------------------------------------
RXRTR           EQU  H'0006'
TXRTR           EQU  H'0006'
RESB1           EQU  H'0005'
RESB0           EQU  H'0004'
DLC3            EQU  H'0003'
DLC2            EQU  H'0002'
DLC1            EQU  H'0001'
DLC0            EQU  H'0000'

;----- RXBnEIDL, RXFnEIDL, RXMnEIDL, and TXBnEIDL Bits -------------------------
EID7            EQU  H'0007'
EID6            EQU  H'0006'
EID5            EQU  H'0005'
EID4            EQU  H'0004'
EID3            EQU  H'0003'
EID2            EQU  H'0002'
EID1            EQU  H'0001'
EID0            EQU  H'0000'

;----- RXBnEIDH, RXFnEIDH, RXMnEIDH, and TXBnEIDH Bits -------------------------
EID15           EQU  H'0007'
EID14           EQU  H'0006'
EID13           EQU  H'0005'
EID12           EQU  H'0004'
EID11           EQU  H'0003'
EID10           EQU  H'0002'
EID9            EQU  H'0001'
EID8            EQU  H'0000'

;----- RXBnSIDL, RXFnSIDL, RXMnSIDL, and TXBnSIDL Bits ----------------------
SID2            EQU  H'0007'
SID1            EQU  H'0006'
SID0            EQU  H'0005'
SRR             EQU  H'0004'
EXID            EQU  H'0003'
EXIDE           EQU  H'0003'
EXIDEN          EQU  H'0003'
EID17           EQU  H'0001'
EID16           EQU  H'0000'

;----- RXBnSIDH, RXFnSIDH, RXMnSIDH, and TXBnSIDH Bits ----------------------
SID10           EQU  H'0007'
SID9            EQU  H'0006'
SID8            EQU  H'0005'
SID7            EQU  H'0004'
SID6            EQU  H'0003'
SID5            EQU  H'0002'
SID4            EQU  H'0001'
SID3            EQU  H'0001'

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
NOT_SS          EQU  5
LVDIN           EQU  5
RA6             EQU  6
OSC2            EQU  6
CLKO            EQU  6

;----- PORTB ------------------------------------------------------------------
RB0             EQU  0
INT0            EQU  0
RB1             EQU  1
INT1            EQU  1
RB2             EQU  2
CANTX           EQU  2
RB3             EQU  3
CANRX           EQU  3
RB4             EQU  4
RB5             EQU  5
PGM             EQU  5
RB6             EQU  6
PGC             EQU  6
RB7             EQU  7
PGD             EQU  7

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

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

	__MAXRAM H'FFF'
	__BADRAM H'600'-H'EFF'
	__BADRAM H'FD4',H'FC0',H'FB4'-H'FB9',H'FB0', H'FAA',H'F95'-H'F9C'
	__BADRAM H'F8C'-H'F91',H'F83'-H'F88', H'F79'-H'F7F',H'F77'
	__BADRAM H'F5F',H'F4F',H'F3F',H'F2F'


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
;     Data Sheet    Include File                  Address
;     CONFIG1H    = Configuration Byte 1H         300001h
;     CONFIG2L    = Configuration Byte 2L         300002h
;     CONFIG2H    = Configuration Byte 2H         300003h
;     CONFIG4L    = Configuration Byte 4L         300006h
;     CONFIG5L    = Configuration Byte 5L         300008h
;     CONFIG5H    = Configuration Byte 5H         300009h
;     CONFIG6L    = Configuration Byte 6L         30000Ah
;     CONFIG6H    = Configuration Byte 6H         30000Bh
;     CONFIG7L    = Configuration Byte 7L         30000Ch
;     CONFIG7H    = Configuration Byte 7H         30000Dh
;
;==========================================================================

;Configuration Byte 1H Options
_OSCS_ON_1H       EQU  H'DF'	; Oscillator Switch enable
_OSCS_OFF_1H      EQU  H'FF'

_LP_OSC_1H        EQU  H'F8'	; Oscillator type
_XT_OSC_1H        EQU  H'F9'
_HS_OSC_1H        EQU  H'FA'
_RC_OSC_1H        EQU  H'FB'
_EC_OSC_1H        EQU  H'FC'	; External Clock w/OSC2 output divide by 4
_ECIO_OSC_1H      EQU  H'FD'	; w/OSC2 as an IO pin (RA6)
_HSPLL_OSC_1H     EQU  H'FE'	; HS PLL
_RCIO_OSC_1H      EQU  H'FF'	; RC w/OSC2 as an IO pin (RA6)

;Configuration Byte 2L Options
_BOR_ON_2L        EQU  H'FF'	; Brown-out Reset enable
_BOR_OFF_2L       EQU  H'FD'
_PWRT_OFF_2L      EQU  H'FF'	; Power-up Timer enable
_PWRT_ON_2L       EQU  H'FE'
_BORV_25_2L       EQU  H'FF'	; BOR Voltage - 2.5v
_BORV_27_2L       EQU  H'FB'	;               2.7v
_BORV_42_2L       EQU  H'F7' 	;               4.2v
_BORV_45_2L       EQU  H'F3'	;               4.5v

;Configuration Byte 2H Options
_WDT_ON_2H        EQU  H'FF'	; Watch Dog Timer enable
_WDT_OFF_2H       EQU  H'FE'
_WDTPS_128_2H     EQU  H'FF'	; Watch Dog Timer PostScaler count
_WDTPS_64_2H      EQU  H'FD'
_WDTPS_32_2H      EQU  H'FB'
_WDTPS_16_2H      EQU  H'F9'
_WDTPS_8_2H       EQU  H'F7'
_WDTPS_4_2H       EQU  H'F5'
_WDTPS_2_2H       EQU  H'F3'
_WDTPS_1_2H       EQU  H'F1'

;Configuration Byte 4L Options
_DEBUG_ON_4L      EQU  H'7F'    ; Enabled
_DEBUG_OFF_4L     EQU  H'FF'    ; Disabled

_LVP_ON_4L        EQU  H'FF'    ; Enableda
_LVP_OFF_4L       EQU  H'FB'    ; Disabled

_STVR_ON_4L       EQU  H'FF'	; Stack over/underflow Reset enable
_STVR_OFF_4L      EQU  H'FE'

;Configuration Byte 5L Options
_CP0_ON_5L           EQU  H'FE'    ; Enabled
_CP0_OFF_5L          EQU  H'FF'    ; Disabled

_CP1_ON_5L           EQU  H'FD'    ; Enabled
_CP1_OFF_5L          EQU  H'FF'    ; Disabled

_CP2_ON_5L           EQU  H'FB'    ; Enabled
_CP2_OFF_5L          EQU  H'FF'    ; Disabled

_CP3_ON_5L           EQU  H'F7'    ; Enabled
_CP3_OFF_5L          EQU  H'FF'    ; Disabled

;Configuration Byte 5H Options
_CPB_ON_5H           EQU  H'BF'    ; Enabled
_CPB_OFF_5H          EQU  H'FF'    ; Disabled

_CPD_ON_5H           EQU  H'7F'    ; Enabled
_CPD_OFF_5H          EQU  H'FF'    ; Disabled

;Configuration Byte 6L Options
_WRT0_ON_6L          EQU  H'FE'    ; Enabled
_WRT0_OFF_6L         EQU  H'FF'    ; Disabled

_WRT1_ON_6L          EQU  H'FD'    ; Enabled
_WRT1_OFF_6L         EQU  H'FF'    ; Disabled

_WRT2_ON_6L          EQU  H'FB'    ; Enabled
_WRT2_OFF_6L         EQU  H'FF'    ; Disabled

_WRT3_ON_6L          EQU  H'F7'    ; Enabled
_WRT3_OFF_6L         EQU  H'FF'    ; Disabled

;Configuration Byte 6H Options
_WRTB_ON_6H          EQU  H'BF'    ; Enabled
_WRTB_OFF_6H         EQU  H'FF'    ; Disabled

_WRTC_ON_6H          EQU  H'DF'    ; Enabled
_WRTC_OFF_6H         EQU  H'FF'    ; Disabled

_WRTD_ON_6H          EQU  H'7F'    ; Enabled
_WRTD_OFF_6H         EQU  H'FF'    ; Disabled

;Configuration Byte 7L Options
_EBTR0_ON_7L         EQU  H'FE'    ; Enabled
_EBTR0_OFF_7L        EQU  H'FF'    ; Disabled

_EBTR1_ON_7L         EQU  H'FD'    ; Enabled
_EBTR1_OFF_7L        EQU  H'FF'    ; Disabled

_EBTR2_ON_7L         EQU  H'FB'    ; Enabled
_EBTR2_OFF_7L        EQU  H'FF'    ; Disabled

_EBTR3_ON_7L         EQU  H'F7'    ; Enabled
_EBTR3_OFF_7L        EQU  H'FF'    ; Disabled

;Configuration Byte 7H Options
_EBTRB_ON_7H         EQU  H'BF'    ; Enabled
_EBTRB_OFF_7H        EQU  H'FF'    ; Disabled

; To use the Configuration Bits, place the following lines in your source code
;  in the following format, and change the configuration value to the desired 
;  setting (such as _BOR_ON_2L).  These are currently commented out here
;  and each __CONFIG line should have the preceding semicolon removed when
;  pasted into your source code.

;  The following is a assignment of address values for all of the configuration
;  registers for the purpose of table reads
_CONFIG1H       EQU    H'300001'
_CONFIG2L       EQU    H'300002'
_CONFIG2H       EQU    H'300003'
_CONFIG4L       EQU    H'300006'
_CONFIG5L       EQU    H'300008'
_CONFIG5H       EQU    H'300009'
_CONFIG6L       EQU    H'30000A'
_CONFIG6H       EQU    H'30000B'
_CONFIG7L       EQU    H'30000C'
_CONFIG7H       EQU    H'30000D'
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

;Program Configuration Register 1H
;		__CONFIG    _CONFIG1H, _OSCS_OFF_1H & _RCIO_OSC_1H

;Program Configuration Register 2L
;		__CONFIG    _CONFIG2L, _BOR_ON_2L & _BORV_25_2L & _PWRT_OFF_2L

;Program Configuration Register 2H
;		__CONFIG    _CONFIG2H, _WDT_ON_2H & _WDTPS_128_2H

;Program Configuration Register 4L
;		__CONFIG    _CONFIG4L, _STVR_ON_4L

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
