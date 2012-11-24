        LIST
; P18C252.INC  Standard Header File, Version 0.12   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC18C252 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC18C252
;       2. LIST directive in the source file
;               LIST   P=PIC18C252
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog

;==========================================================================
;
;       Revision History
;
;==========================================================================
;Rev:   Date:      Details:                                           Who:
;0.02  25 Nov 98   Preliminary Release                                 drj
;0.03  07 Dec 98   Added compatibility #defines                        drj
;0.04  10 Dec 98   Added bits defs and new config                       jt
;0.05  14 Dec 98   Incorporated ko comments                             dj
;0.06  12 Jan 99   Changed config bits                                  dj
;0.07  13 Jan 99   Changed BODEN to BOREN                               dj
;0.08   1 Apr 99   Added TRIS aliases                                   
;0.09  17 Jun 99   Clean up                                             
;0.10  23 Sep 99   Compatibility with PIC18Cxx2 Data Sheet (Rev B)
;                  and Added I/O Pin definitions                        mp
;0.11  29 Jun 00   Added support for Device ID/Revision & ID locations  rr
;0.12    09/26/02   Include both names SWDTE and SWDTEN                pas

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18C252
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
;RESERVED_0FA9   EQU  H'0FA9'
;RESERVED_0FA8   EQU  H'0FA8'
;RESERVED_0FA7   EQU  H'0FA7'
;RESERVED_0FA6   EQU  H'0FA6'
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
LWRT            EQU  H'0006'
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
T3INSYNC        EQU  H'0002'    ; Backward compatibility only
TMR3CS          EQU  H'0001'
TMR3ON          EQU  H'0000'

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

;----- IPR2 Bits ----------------------------------------------------------
BCLIP           EQU  H'0003'
LVDIP           EQU  H'0002'
TMR3IP          EQU  H'0001'
CCP2IP          EQU  H'0000'

;----- PIR2 Bits ----------------------------------------------------------
BCLIF           EQU  H'0003'
LVDIF           EQU  H'0002'
TMR3IF          EQU  H'0001'
CCP2IF          EQU  H'0000'

;----- PIE2 Bits ----------------------------------------------------------
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
OSC2	EQU 6
CLKO	EQU 6


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
;   CCP2 MUX:
;     CCP2MUX = OFF        Disable (RB3)
;     CCP2MUX = ON         Enable (RC1)
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
_CP_ON_0          EQU  H'00'	; Code Protect enable   
_CP_OFF_0         EQU  H'FF'

;Configuration Byte 1 Options
_OSCS_ON_1        EQU  H'DF'	; Oscillator Switch enable
_OSCS_OFF_1       EQU  H'FF'

_LP_OSC_1         EQU  H'F8'	; Oscillator type
_XT_OSC_1         EQU  H'F9'
_HS_OSC_1         EQU  H'FA'
_RC_OSC_1         EQU  H'FB'
_EC_OSC_1         EQU  H'FC'	; External Clock w/OSC2 output divide by 4
_ECIO_OSC_1       EQU  H'FD'	; w/OSC2 as an IO pin (RA6)
_HSPLL_OSC_1      EQU  H'FE'	; HS PLL
_RCIO_OSC_1       EQU  H'FF'	; RC w/OSC2 as an IO pin (RA6)

;Configuration Byte 2 Options
_BOR_ON_2         EQU  H'FF'	; Brown-out Reset enable
_BOR_OFF_2        EQU  H'FD'
_PWRT_OFF_2       EQU  H'FF'	; Power-up Timer enable
_PWRT_ON_2        EQU  H'FE'
_BORV_25_2        EQU  H'FF'	; BOR Voltage - 2.5v
_BORV_27_2        EQU  H'FB'	;               2.7v
_BORV_42_2        EQU  H'F7' 	;               4.2v
_BORV_45_2        EQU  H'F3'	;               4.5v

;Configuration Byte 3 Options
_WDT_ON_3         EQU  H'FF'	; Watch Dog Timer enable
_WDT_OFF_3        EQU  H'FE'
_WDTPS_128_3      EQU  H'FF'	; Watch Dog Timer PostScaler count
_WDTPS_64_3       EQU  H'FD'
_WDTPS_32_3       EQU  H'FB'
_WDTPS_16_3       EQU  H'F9'
_WDTPS_8_3        EQU  H'F7'
_WDTPS_4_3        EQU  H'F5'
_WDTPS_2_3        EQU  H'F3'
_WDTPS_1_3        EQU  H'F1'

;Configuration Byte 5 Options
_CCP2MX_ON_5      EQU  H'FF'	; CCP2 pin MUX enable
_CCP2MX_OFF_5     EQU  H'FE'

;Configuration Byte 6 Options
_STVR_ON_6        EQU  H'FF'	; Stack over/underflow Reset enable
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
;		__CONFIG    _CONFIG0, _CP_OFF_0

;Program Configuration Register 1
;		__CONFIG    _CONFIG1, _OSCS_OFF_1 & _RCIO_OSC_1

;Program Configuration Register 2
;		__CONFIG    _CONFIG2, _BOR_ON_2 & _BORV_25_2 & _PWRT_OFF_2

;Program Configuration Register 3
;		__CONFIG    _CONFIG3, _WDT_ON_3 & _WDTPS_128_3

;Program Configuration Register 5
		;__CONFIG    _CONFIG5, _CCP2MX_ON_5

;Program Configuration Register 6
;		__CONFIG    _CONFIG6, _STVR_ON_6

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
