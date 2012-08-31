        LIST
; P18C601.INC  Standard Header File, Version 0.01   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC18C601 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC18C601
;       2. LIST directive in the source file
;               LIST   P=PIC18C601
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog

;==========================================================================
;
;       Revision History
;
;==========================================================================
; Rev:   Date:         Details:                                        Who:
; 0.01   11 Oct 2000   Original                                         nr
; 0.02 	 09 May 2001   Added Configuration bits	                        nr
; 0.03   13 Jun 2001   Fixed RAM map and changed config bit labels      MG
; 0.04	 22 Jun 2001   Fixed OSCCON bits								nr	
; 0.05	 27 Jun 2001   Fixed LVDCON, IPR2, PIR2, PIE2 bits				nr
; 0.06   22 Oct 2001   Added __MAXROM / __BADROM directive for bad
;		       ROM between external memory and boot ram	 	pas
;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __18C601
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
;RESERVED_0FB5  EQU  H'0FB5'
;RESERVED_0FB4  EQU  H'0FB4'

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

CSEL2		EQU	H'0FA7'
CSELIO		EQU	H'0FA6'

;RESERVED_0FA5   EQU  H'0FA5'
;RESERVED_0FA4   EQU  H'0FA4'
;RESERVED_0FA3   EQU  H'0FA3'

IPR2            EQU  H'0FA2'
PIR2            EQU  H'0FA1'
PIE2            EQU  H'0FA0'
IPR1            EQU  H'0F9F'
PIR1            EQU  H'0F9E'
PIE1            EQU  H'0F9D'

MEMCON          EQU  H'0F9C'

;RESERVED_0F9B   EQU  H'0F9B'
;TRISJ           EQU  H'0F9A'
;TRISH           EQU  H'0F99'
TRISG           EQU  H'0F98'
TRISF           EQU  H'0F97'
TRISE           EQU  H'0F96'
TRISD           EQU  H'0F95'
TRISC           EQU  H'0F94'
TRISB           EQU  H'0F93'
TRISA           EQU  H'0F92'

;DDRJ            EQU  H'0F9A'
;DDRH            EQU  H'0F99'
DDRG            EQU  H'0F98'
DDRF            EQU  H'0F97'
DDRE            EQU  H'0F96'
DDRD            EQU  H'0F95'
DDRC            EQU  H'0F94'
DDRB            EQU  H'0F93'
DDRA            EQU  H'0F92'

;LATJ            EQU  H'0F91'
;LATH            EQU  H'0F90'
LATG            EQU  H'0F8F'
LATF            EQU  H'0F8E'
LATE            EQU  H'0F8D'
LATD            EQU  H'0F8C'
LATC            EQU  H'0F8B'
LATB            EQU  H'0F8A'
LATA            EQU  H'0F89'

;PORTJ           EQU     H'0F88'
;PORTH           EQU     H'0F87'
PORTG           EQU     H'0F86'
PORTF           EQU     H'0F85'
PORTE           EQU     H'0F84'
PORTD           EQU     H'0F83'
PORTC           EQU     H'0F82'
PORTB           EQU     H'0F81'
PORTA           EQU     H'0F80'

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
TMR0IP          EQU  H'0002'
T0IP            EQU  H'0002'      ; For compatibility with T0IE and T0IF
RBIP            EQU  H'0000'

;----- INTCON3 Bits --------------------------------------------------------
INT2IP          EQU  H'0007'
INT2P           EQU  H'0007'
INT1IP          EQU  H'0006'
INT1P           EQU  H'0006'
INT2IE          EQU  H'0004'
INT2E           EQU  H'0004'
INT1IE          EQU  H'0003'
INT1E           EQU  H'0003'
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
LOCK			EQU	 H'0003'
PLLEN			EQU  H'0002'
SCS1            EQU  H'0001'
SCS0            EQU  H'0000'

;----- LVDCON Bits ---------------------------------------------------------
IRVST           EQU  H'0005'
LVDEN           EQU  H'0004'
LVDL3           EQU  H'0003'
LVDL2           EQU  H'0002'
LVDL1           EQU  H'0001'
LVDL0           EQU  H'0000'

;----- WDTCON Bits ---------------------------------------------------------
WDPS2		EQU  H'0003'
WDPS1		EQU  H'0002'
WDPS0		EQU  H'0001'
SWDTE           EQU  H'0000'
SWDTEN          EQU  H'0000'

;----- RCON Bits -----------------------------------------------------------
IPEN            EQU  H'0007'
NOT_IPEN        EQU  H'0007'
RI              EQU  H'0004'
NOT_RI          EQU  H'0004'
TO              EQU  H'0003'
NOT_TO          EQU  H'0003'
PD              EQU  H'0002'
NOT_PD          EQU  H'0002'
POR             EQU  H'0001'
NOT_POR         EQU  H'0001'

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
CMLK1		EQU  H'0001'
CMLK0		EQU  H'0000'

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
ADIP            EQU  H'0006'
RCIP            EQU  H'0005'
TXIP            EQU  H'0004'
SSPIP           EQU  H'0003'
CCP1IP          EQU  H'0002'
TMR2IP          EQU  H'0001'
TMR1IP          EQU  H'0000'

;----- PIR1 Bits ----------------------------------------------------------
ADIF            EQU  H'0006'
RCIF            EQU  H'0005'
TXIF            EQU  H'0004'
SSPIF           EQU  H'0003'
CCP1IF          EQU  H'0002'
TMR2IF          EQU  H'0001'
TMR1IF          EQU  H'0000'

;----- PIE1 Bits ----------------------------------------------------------
ADIE            EQU  H'0006'
RCIE            EQU  H'0005'
TXIE            EQU  H'0004'
SSPIE           EQU  H'0003'
CCP1IE          EQU  H'0002'
TMR2IE          EQU  H'0001'
TMR1IE          EQU  H'0000'

;----- MEMCON Bits ----------------------------------------------------------
EBDIS           EQU  H'0007'
PGRM		EQU  H'0006'
WAIT1           EQU  H'0005'
WAIT0           EQU  H'0004'
WM1             EQU  H'0001'
WM0             EQU  H'0000'

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
VREFN           EQU  2
RA3             EQU  3
AN3             EQU  3
VREFP           EQU  3
RA4             EQU  4
T0CKI           EQU  4
RA5             EQU  5
AN4             EQU  5
SS              EQU  5
LVDIN           EQU  5

;----- PORTB ------------------------------------------------------------------
RB0             EQU  0
INT0            EQU  0
RB1             EQU  1
INT1            EQU  1
RB2             EQU  2
INT2            EQU  2
RB3             EQU  3
CCP2            EQU  3
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
AD0		EQU  0
RD1             EQU  1
AD1             EQU  1
RD2             EQU  2
AD2             EQU  2
RD3             EQU  3
AD3             EQU  3
RD4             EQU  4
AD4             EQU  4
RD5             EQU  5
AD5             EQU  5
RD6             EQU  6
AD6             EQU  6
RD7             EQU  7
AD7             EQU  7

;----- PORTE ------------------------------------------------------------------
RE0             EQU  0
AD8             EQU  0
RE1             EQU  1
AD9             EQU  1
RE2             EQU  2
AD10            EQU  2
RE3             EQU  3
AD11            EQU  3
RE4             EQU  4
AD12            EQU  4
RE5             EQU  5
AD13            EQU  5
RE6             EQU  6
AD14            EQU  6
RE7             EQU  7
AD15            EQU  7

;----- PORTF ------------------------------------------------------------------
RF0             EQU  0
AN5             EQU  0
RF1             EQU  1
AN6             EQU  1
RF2             EQU  2
AN7             EQU  2
RF3             EQU  3
CSIO            EQU  3
RF4             EQU  4
AD16            EQU  4
RF5             EQU  5
CS1             EQU  5
RF6             EQU  6
LB              EQU  6
RF7             EQU  7
UB              EQU  7

;----- PORTG ------------------------------------------------------------------
RG0             EQU  0
ALE             EQU  0
RG1             EQU  1
OE              EQU  1
RG2             EQU  2
WRL             EQU  2
RG3             EQU  3
WRH             EQU  3
RG4             EQU  4
BA0             EQU  4

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

       __MAXRAM H'FFF'
       __BADRAM H'400'-H'F7F', H'F9B', H'FA3'-H'FA5'
       __BADRAM H'FA8'-H'FAA', H'FB4'-H'FB9', H'FD4'
        
;==========================================================================
;
;       ROM Definition
;
;==========================================================================

       __MAXROM H'1FFFFF'
       __BADROM H'40000' - H'1FFDFF'


;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Oscillator Selection:
;     OSC = LP             LP Oscillator
;     OSC = EC             EC Oscillator
;     OSC = HS             HS Oscillator
;     OSC = RC             RC Oscillator
;
;   Power-up Timer:
;     PWRT = ON            Enable
;     PWRT = OFF           Disable
;
;   External Bus Data Width:
;     BW = 8               8-bit External Bus mode
;     BW = 16              16-bit External Bus mode
;
;   Watchdog Timer:
;     WDT = OFF            Disabled
;     WDT = ON             Enabled
;
;   Watchdog Timer Postscale Selection:
;     WDTPS = 1            1:1
;     WDTPS = 2            1:2
;     WDTPS = 4            1:4
;     WDTPS = 8            1:8
;     WDTPS = 16           1:16
;     WDTPS = 32           1:32
;     WDTPS = 64           1:64
;     WDTPS = 128          1:128
;
;   Stack Full/Underflow Reset:
;     STVR = OFF           Disabled
;     STVR = ON            Enabled
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
;
;==========================================================================

;Configuration Byte 1H Options
_RC_OSC_1H        EQU  H'FF'
_HS_OSC_1H        EQU  H'FE'	; Default mode. 4x PLL enabled in S/W
_EC_OSC_1H        EQU  H'FD'    ; External Clock w/OSC2 output divide by 4
_LP_OSC_1H        EQU  H'FC'    ; Oscillator type

;Configuration Byte 2L Options
_BW_16_BIT_2L	  EQU  H'FF'	; Default bus width
_BW_8_BIT_2L	  EQU  H'BF'	; 
_PWRT_OFF_2L      EQU  H'FF'    ; Disable Power-up Timer
_PWRT_ON_2L       EQU  H'FE'	; Enable Power-up Timer

;Configuration Byte 2H Options
_WDT_ON_2H        EQU  H'FF'    ; Watch Dog Timer enable
_WDT_OFF_2H       EQU  H'FE'
_WDTPS_128_2H     EQU  H'FF'    ; Watch Dog Timer PostScaler count
_WDTPS_64_2H      EQU  H'FD'
_WDTPS_32_2H      EQU  H'FB'
_WDTPS_16_2H      EQU  H'F9'
_WDTPS_8_2H       EQU  H'F7'
_WDTPS_4_2H       EQU  H'F5'
_WDTPS_2_2H       EQU  H'F3'
_WDTPS_1_2H       EQU  H'F1'

;Configuration Byte 4L Options
_STVR_ON_4L       EQU  H'FF'    ; Stack over/underflow Reset enable
_STVR_OFF_4L      EQU  H'FE'

; To use the Configuration Bits, place the following lines in your source code
;  in the following format, and change the configuration value to the desired 
;  setting (such as _HS_OSC_1H).  These are currently commented out here
;  and each __CONFIG line should have the preceding semicolon removed when
;  pasted into your source code.

;Program _CONFIG1H
;               __CONFIG    _CONFIG1H, _RC_OSC_1H

;Program _CONFIG2L
;               __CONFIG    _CONFIG2L, _BW_16_BIT_2L & _PWRT_OFF_2L

;Program _CONFIG2H
;               __CONFIG    _CONFIG2H, _WDT_ON_2H & _WDTPS_128_2H

;Program _CONFIG4L
;               __CONFIG    _CONFIG4L, _STVR_ON_4L

;  The following is a assignment of address values for all of the configuration
;  registers for the purpose of table reads
_CONFIG1H       EQU    H'300001'
_CONFIG2L       EQU    H'300002'
_CONFIG2H       EQU    H'300003'
_CONFIG4L       EQU    H'300006'
_DEVID1         EQU    H'3FFFFE'
_DEVID2         EQU    H'3FFFFF'

;Device ID registers hold device ID and revision number and can only be read
;Device ID Register 1
;               DEV2, DEV1, DEV0, REV4, REV3, REV2, REV1, REV0
;Device ID Register 2
;               DEV10, DEV9, DEV8, DEV7, DEV6, DEV5, DEV4, DEV3

;==========================================================================
        LIST
