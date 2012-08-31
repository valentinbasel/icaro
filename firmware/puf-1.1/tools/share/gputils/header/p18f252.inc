        LIST
; P18F252.INC  Standard Header File, Version 1.4   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC18F252 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC18F252
;       2. LIST directive in the source file
;               LIST   P=PIC18F252
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog

;==========================================================================
;
;       Revision History
;
;==========================================================================
;Rev:   Date:      Details:                                           Who:
;1.0    03/23/01   Modified C252 for F252                             tr
;1.1	08/01/01   Added EECON1 bits, corrected code protect config bit inserts 
;1.2    09/17/01   Corrected MAXRAM,BADRAM                            tr
;1.3    10/23/01   Corrected CONFIG bits/registers		      tr/pas
;1.4    09/26/02   Include both names SWDTE and SWDTEN                pas

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F252
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
BANKED		EQU 1
;==========================================================================

;==========================================================================
;       16Cxxx/17Cxxx Substitutions
;==========================================================================

  #define DDRA  TRISA          ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB          ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC          ; PIC17Cxxx SFR substitution

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

;RESERVED_0FC0   EQU  H'0FC0'

CCPR1H          EQU  H'0FBF'
CCPR1L          EQU  H'0FBE'
CCP1CON         EQU  H'0FBD'
CCPR2H          EQU  H'0FBC'
CCPR2L          EQU  H'0FBB'
CCP2CON         EQU  H'0FBA'

;RESERVED_0FB9   EQU  H'0FB9'
;RESERVED_0FB8   EQU  H'0FB8'
;RESERVED_0FB7   EQU  H'0FB7'
;RESERVED_0FB6   EQU  H'0FB6'
;RESERVED_0FB5   EQU  H'0FB5'
;RESERVED_0FB4   EQU  H'0FB4'

TMR3H           EQU  H'0FB3'
TMR3L           EQU  H'0FB2'
T3CON           EQU  H'0FB1'

;RESERVED_0FB0   EQU  H'0FB0'

SPBRG           EQU  H'0FAF'
RCREG           EQU  H'0FAE'
TXREG           EQU  H'0FAD'
TXSTA           EQU  H'0FAC'
RCSTA           EQU  H'0FAB'

;RESERVED_0FAA   EQU  H'0FAA'

EEADR           EQU  H'0FA9'
EEDATA          EQU  H'0FA8'
EECON2          EQU  H'0FA7'
EECON1          EQU  H'0FA6'

;RESERVED_0FA5   EQU  H'0FA5'
;RESERVED_0FA4   EQU  H'0FA4'
;RESERVED_0FA3   EQU  H'0FA3'

IPR2            EQU  H'0FA2'
PIR2            EQU  H'0FA1'
PIE2            EQU  H'0FA0'
IPR1            EQU  H'0F9F'
PIR1            EQU  H'0F9E'
PIE1            EQU  H'0F9D'

;RESERVED_0F9C   EQU  H'0F9C'
;RESERVED_0F9B   EQU  H'0F9B'
;RESERVED_0F9A   EQU  H'0F9A'
;RESERVED_0F99   EQU  H'0F99'
;RESERVED_0F98   EQU  H'0F98'
;RESERVED_0F97   EQU  H'0F97'
;RESERVED_0F96   EQU  H'0F96'
;RESERVED_0F95   EQU  H'0F95'

TRISC           EQU  H'0F94'
TRISB           EQU  H'0F93'
TRISA           EQU  H'0F92'

;RESERVED_0F91   EQU  H'0F91'
;RESERVED_0F90   EQU  H'0F90'
;RESERVED_0F8F   EQU  H'0F8F'
;RESERVED_0F8E   EQU  H'0F8E'
;RESERVED_0F8D   EQU  H'0F8D'
;RESERVED_0F8C   EQU  H'0F8C'

LATC            EQU  H'0F8B'
LATB            EQU  H'0F8A'
LATA            EQU  H'0F89'

;RESERVED_0F88   EQU  H'0F88'
;RESERVED_0F87   EQU  H'0F87'
;RESERVED_0F86   EQU  H'0F86'
;RESERVED_0F85   EQU  H'0F85'
;RESERVED_0F84   EQU  H'0F84'
;RESERVED_0F83   EQU  H'0F83'

PORTC           EQU  H'0F82'
PORTB           EQU  H'0F81'
PORTA           EQU  H'0F80'

;----- STKPTR Bits --------------------------------------------------------
STKFUL          EQU  H'0007'
STKUNF          EQU  H'0006'

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
INT2IP          EQU  H'0007'
INT1IP          EQU  H'0006'
INT2IE          EQU  H'0004'
INT1IE          EQU  H'0003'
INT2IF          EQU  H'0001'
INT1IF          EQU  H'0000'

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
NOT_T1SYNC      EQU  H'0002'
T1SYNC          EQU  H'0002'
T1INSYNC        EQU  H'0002'     ; For backward compatibility
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

;----- CCP2CON Bits -------------------------------------------------------
DC2B1           EQU  H'0005'
CCP2X           EQU  H'0005'      ; For backward compatibility
DC2B0           EQU  H'0004'
CCP2Y           EQU  H'0004'      ; For backward compatibility
CCP2M3          EQU  H'0003'
CCP2M2          EQU  H'0002'
CCP2M1          EQU  H'0001'
CCP2M0          EQU  H'0000'

;----- T3CON Bits ---------------------------------------------------------
RD16            EQU  H'0007'
T3CCP2          EQU  H'0006'
T3CKPS1         EQU  H'0005'
T3CKPS0         EQU  H'0004'
T3CCP1          EQU  H'0003'
NOT_T3SYNC      EQU  H'0002'
T3SYNC          EQU  H'0002'
T3INSYNC        EQU  H'0002'      ; For backward compatibility
TMR3CS          EQU  H'0001'
TMR3ON          EQU  H'0000'

;----- TXSTA Bits ---------------------------------------------------------
CSRC            EQU  H'0007'
TX9             EQU  H'0006'
NOT_TX8         EQU  H'0006'      ; For backward compatibility
TX8_9           EQU  H'0006'      ; For backward compatibility
TXEN            EQU  H'0005'
SYNC            EQU  H'0004'
BRGH            EQU  H'0002'
TRMT            EQU  H'0001'
TX9D            EQU  H'0000'
TXD8            EQU  H'0000'      ; For backward compatibility

;----- RCSTA Bits ---------------------------------------------------------
SPEN            EQU  H'0007'
RX9             EQU  H'0006'
RC9             EQU  H'0006'      ; For backward compatibility
NOT_RC8         EQU  H'0006'      ; For backward compatibility
RC8_9           EQU  H'0006'      ; For backward compatibility
SREN            EQU  H'0005'
CREN            EQU  H'0004'
ADDEN           EQU  H'0003'
FERR            EQU  H'0002'
OERR            EQU  H'0001'
RX9D            EQU  H'0000'
RCD8            EQU  H'0000'      ; For backward compatibility

;----- IPR2 Bits ----------------------------------------------------------
EEIP            EQU  H'0004'
BCLIP           EQU  H'0003'
LVDIP           EQU  H'0002'
TMR3IP          EQU  H'0001'
CCP2IP          EQU  H'0000'

;----- PIR2 Bits ----------------------------------------------------------
EEIF            EQU  H'0004'
BCLIF           EQU  H'0003'
LVDIF           EQU  H'0002'
TMR3IF          EQU  H'0001'
CCP2IF          EQU  H'0000'

;----- PIE2 Bits ----------------------------------------------------------
EEIE            EQU  H'0004'
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

;----- EECON1 Bits ---------------------------------------------------------
EEPGD		EQU  H'0007'
CFGS		EQU  H'0006'
FREE		EQU  H'0004'
WRERR		EQU  H'0003'
WREN		EQU  H'0002'
WR		EQU  H'0001'
RD		EQU  H'0000'

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
OSC2	        EQU  6
CLKO	        EQU  6


;----- PORTB ------------------------------------------------------------------
RB0             EQU  0
INT0            EQU  0
RB1             EQU  1
INT1            EQU  1
RB2             EQU  2
INT2            EQU  2
RB3             EQU  3
CCP2A           EQU  3
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
CCP2            EQU  1
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


;==========================================================================
;
;       RAM Definition
;
;==========================================================================

	__MAXRAM H'FFF'
        __BADRAM H'600'-H'F7F'
	__BADRAM H'F85'-H'F88'
	__BADRAM H'F8E'-H'F91'
	__BADRAM H'F97'-H'F9C'
	__BADRAM H'FA3'-H'FA5'
	__BADRAM H'FAA'
	__BADRAM H'FB4'-H'FB9'
         

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
;   CCP2 MUX:
;     CCP2MUX = OFF        Disable (RB3)
;     CCP2MUX = ON         Enable (RC1)
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
;     CONFIG1L    = Configuration Byte 1L         300000h
;     CONFIG1H    = Configuration Byte 1H         300001h
;     CONFIG2L    = Configuration Byte 2L         300002h
;     CONFIG2H    = Configuration Byte 2H         300003h
;     CONFIG3L    = Configuration Byte 3L         300004h
;     CONFIG3H    = Configuration Byte 3H         300005h
;     CONFIG4L    = Configuration Byte 4L         300006h
;     CONFIG4H    = Configuration Byte 4H         300007h
;     CONFIG5L    = Configuration Byte 5L         300008h
;     CONFIG5H    = Configuration Byte 5H         300009h
;     CONFIG6L    = Configuration Byte 6L         30000ah
;     CONFIG6H    = Configuration Byte 6H         30000bh
;     CONFIG7L    = Configuration Byte 7L         30000ch
;     CONFIG7H    = Configuration Byte 7H         30000dh
;
;==========================================================================

;Configuration Byte 1H Options
_OSCS_ON_1H        EQU  H'DF'	; Oscillator Switch enable
_OSCS_OFF_1H       EQU  H'FF'
_LP_OSC_1H         EQU  H'F8'	; Oscillator type
_XT_OSC_1H         EQU  H'F9'
_HS_OSC_1H         EQU  H'FA'
_RC_OSC_1H         EQU  H'FB'
_EC_OSC_1H         EQU  H'FC'	; External Clock w/OSC2 output divide by 4
_ECIO_OSC_1H       EQU  H'FD'	; w/OSC2 as an IO pin (RA6)
_HSPLL_OSC_1H      EQU  H'FE'	; HS PLL
_RCIO_OSC_1H       EQU  H'FF'	; RC w/OSC2 as an IO pin (RA6)

;Configuration Byte 2L Options
_BOR_ON_2L         EQU  H'FF'	; Brown-out Reset enable
_BOR_OFF_2L        EQU  H'FD'
_PWRT_OFF_2L       EQU  H'FF'	; Power-up Timer enable
_PWRT_ON_2L        EQU  H'FE'
_BORV_20_2L        EQU  H'FF'	; BOR Voltage - 2.0v
_BORV_27_2L        EQU  H'FB'	;               2.7v
_BORV_42_2L        EQU  H'F7' 	;               4.2v
_BORV_45_2L        EQU  H'F3'	;               4.5v

;Configuration Byte 2H Options
_WDT_ON_2H         EQU  H'FF'	; Watch Dog Timer enable
_WDT_OFF_2H        EQU  H'FE'
_WDTPS_128_2H      EQU  H'FF'	; Watch Dog Timer PostScaler count
_WDTPS_64_2H       EQU  H'FD'
_WDTPS_32_2H       EQU  H'FB'
_WDTPS_16_2H       EQU  H'F9'
_WDTPS_8_2H        EQU  H'F7'
_WDTPS_4_2H        EQU  H'F5'
_WDTPS_2_2H        EQU  H'F3'
_WDTPS_1_2H        EQU  H'F1'

;Configuration Byte 3H Options
_CCP2MX_ON_3H      EQU  H'FF'	; CCP2 pin MUX enable
_CCP2MX_OFF_3H     EQU  H'FE'

;Configuration Byte 4L Options
_STVR_ON_4L        EQU  H'FF'	; Stack over/underflow Reset enable
_STVR_OFF_4L       EQU  H'FE'
_LVP_ON_4L         EQU  H'FF'    ; Low-voltage ICSP enable
_LVP_OFF_4L        EQU  H'FB'
_DEBUG_ON_4L       EQU  H'7F'    ; Backgound Debugger enable
_DEBUG_OFF_4L      EQU  H'FF'

;Configuration Byte 5L Options
_CP0_ON_5L         EQU  H'FE'    ; Code protect user block enable
_CP0_OFF_5L        EQU  H'FF'
_CP1_ON_5L         EQU  H'FD'
_CP1_OFF_5L        EQU  H'FF'
_CP2_ON_5L         EQU  H'FB'
_CP2_OFF_5L        EQU  H'FF'
_CP3_ON_5L         EQU  H'F7'
_CP3_OFF_5L        EQU  H'FF'

;Configuration Byte 5H Options
_CPB_ON_5H         EQU  H'BF'    ; Code protect boot block enable
_CPB_OFF_5H        EQU  H'FF'
_CPD_ON_5H         EQU  H'7F'    ; Code protect Data EE enable
_CPD_OFF_5H        EQU  H'FF'

;Configuration Byte 6L Options
_WRT0_ON_6L        EQU  H'FE'    ; Write protect user block enable
_WRT0_OFF_6L       EQU  H'FF'
_WRT1_ON_6L        EQU  H'FD'
_WRT1_OFF_6L       EQU  H'FF'
_WRT2_ON_6L        EQU  H'FB'
_WRT2_OFF_6L       EQU  H'FF'
_WRT3_ON_6L        EQU  H'F7'
_WRT3_OFF_6L       EQU  H'FF'

;Configuration Byte 6H Options
_WRTC_ON_6H        EQU  H'DF'    ; Write protect CONFIG regs enable
_WRTC_OFF_6H       EQU  H'FF'
_WRTB_ON_6H        EQU  H'BF'    ; Write protect boot block enable
_WRTB_OFF_6H       EQU  H'FF'
_WRTD_ON_6H        EQU  H'7F'    ; Write protect Data EE enable
_WRTD_OFF_6H       EQU  H'FF'

;Configuration Byte 7L Options
_EBTR0_ON_7L       EQU  H'FE'    ; Table Read protect user block enable
_EBTR0_OFF_7L      EQU  H'FF'
_EBTR1_ON_7L       EQU  H'FD'
_EBTR1_OFF_7L      EQU  H'FF'
_EBTR2_ON_7L       EQU  H'FB'
_EBTR2_OFF_7L      EQU  H'FF'
_EBTR3_ON_7L       EQU  H'F7'
_EBTR3_OFF_7L      EQU  H'FF'

;Configuration Byte 7H Options
_EBTRB_ON_7H       EQU  H'BF'    ; Table Read protect boot block enable
_EBTRB_OFF_7H      EQU  H'FF'

; To use the Configuration Bits, place the following lines in your source code
;  in the following format, and change the configuration value to the desired 
;  setting (such as CP_OFF to CP_ON).  These are currently commented out here
;  and each __CONFIG line should have the preceding semicolon removed when
;  pasted into your source code.

;  The following is a assignment of address values for all of the configuration
;  registers for the purpose of table reads
_CONFIG1L        EQU    H'300000'
_CONFIG1H        EQU    H'300001'
_CONFIG2L        EQU    H'300002'
_CONFIG2H        EQU    H'300003'
_CONFIG3L        EQU    H'300004'
_CONFIG3H        EQU    H'300005'
_CONFIG4L        EQU    H'300006'
_CONFIG4H        EQU    H'300007'
_CONFIG5L        EQU    H'300008'
_CONFIG5H        EQU    H'300009'
_CONFIG6L        EQU    H'30000A'
_CONFIG6H        EQU    H'30000B'
_CONFIG7L        EQU    H'30000C'
_CONFIG7H        EQU    H'30000D'
_DEVID1          EQU    H'3FFFFE'
_DEVID2          EQU    H'3FFFFF'
_IDLOC0          EQU    H'200000'
_IDLOC1          EQU    H'200001'
_IDLOC2          EQU    H'200002'
_IDLOC3          EQU    H'200003'
_IDLOC4          EQU    H'200004'
_IDLOC5          EQU    H'200005'
_IDLOC6          EQU    H'200006'
_IDLOC7          EQU    H'200007'

;Program Configuration Register 1H
;		__CONFIG    _CONFIG1H, _OSCS_OFF_1H & _RCIO_OSC_1H

;Program Configuration Register 2L
;		__CONFIG    _CONFIG2L, _BOR_ON_2L & _BORV_20_2L & _PWRT_OFF_2L

;Program Configuration Register 2H
;		__CONFIG    _CONFIG2H, _WDT_ON_2H & _WDTPS_128_2H

;Program Configuration Register 3H
;		__CONFIG    _CONFIG3H, _CCP2MX_ON_3H

;Program Configuration Register 4L
;		__CONFIG    _CONFIG4L, _STVR_ON_4L & _LVP_OFF_4L & _DEBUG_OFF_4L

;Program Configuration Register 5L
;		__CONFIG    _CONFIG5L, _CP0_OFF_5L & _CP1_OFF_5L & _CP2_OFF_5L & _CP3_OFF_5L 

;Program Configuration Register 5H
;		__CONFIG    _CONFIG5H, _CPB_ON_5H & _CPD_OFF_5H

;Program Configuration Register 6L
;		__CONFIG    _CONFIG6L, _WRT0_OFF_6L & _WRT1_OFF_6L & _WRT2_OFF_6L & _WRT3_OFF_6L 

;Program Configuration Register 6H
;		__CONFIG    _CONFIG6H, _WRTC_OFF_6H & _WRTB_OFF_6H & _WRTD_OFF_6H

;Program Configuration Register 7L
;		__CONFIG    _CONFIG7L, _EBTR0_OFF_7L & _EBTR1_OFF_7L & _EBTR2_OFF_7L & _EBTR3_OFF_7L

;Program Configuration Register 7H
;		__CONFIG    _CONFIG7H, _EBTRB_OFF_7H

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

        LIST
