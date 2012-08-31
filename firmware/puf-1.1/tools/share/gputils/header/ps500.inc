        NOLIST
; Based on P18F1320.INC, and PS500 DOS - WK 10/7/03

        LIST
; PS500.INC  Standard Header File, Version 0.1   Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful
; bits of information for the PS500 Fuel Gage.  These names
; are taken to match the data sheets as closely as possible.

; Note that the processor must be selected before this file is
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PS500
;       2. LIST directive in the source file
;               LIST   P=PS500
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog

;=======================================================================
;
;       Revision History
;
;=======================================================================
;Rev:   Date:        Details:                                       Who:
;0.10  07 Oct 2003   Initial release                                 WK
;0.20  14 Oct 2003   Fix for Unused bits reading '0'                 WK
;0.30  15 Oct 2003   Corrected 4L and 3H config bits                 WK
;0.40  31 Oct 2003   Corrected default of WRT23_ON to OFF            WK
;                    Per DOS Rv.C added new SFR bits
;
;       Verify Processor
;
;=======================================================================

  IFNDEF __PS500
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
;  #define DDRC  TRISC          ; PIC17Cxxx SFR substitution
;  #define DDRD  TRISD          ; PIC17Cxxx SFR substitution
;  #define DDRE  TRISE          ; PIC17Cxxx SFR substitution

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
; reserved           H'0FD2'
WDTCON		EQU  H'0FD1'
RCON            EQU  H'0FD0'

TMR1H           EQU  H'0FCF'
TMR1L           EQU  H'0FCE'
T1CON           EQU  H'0FCD'
TMR2            EQU  H'0FCC'
PR2             EQU  H'0FCB'
T2CON           EQU  H'0FCA'
SSPBUF		EQU  H'0FC9'
SSPADD		EQU  H'0FC8'
SSPSTAT		EQU  H'0FC7'
SSPCON1		EQU  H'0FC6'
SSPCON2		EQU  H'0FC5'
ADRESH          EQU  H'0FC4'
ADRESL          EQU  H'0FC3'
ADCON0          EQU  H'0FC2'
ADCON1          EQU  H'0FC1'
ADCON2          EQU  H'0FC0'

; reserved           H'0FBF'
; reserved           H'0FBE'
; reserved           H'0FBD'
; reserved           H'0FBC'
; reserved           H'0FBB'
; reserved           H'0FBA'
; reserved           H'0FB9'
; reserved           H'0FB8'
; reserved           H'0FB7'
; reserved           H'0FB6'
CVRCON		EQU  H'0FB5'
CMCON		EQU  H'0FB4'
TMR3H           EQU  H'0FB3'
TMR3L           EQU  H'0FB2'
T3CON           EQU  H'0FB1'
; reserved           H'0FB0'

; reserved           H'0FAF'
; reserved           H'0FAE'
; reserved           H'0FAD'
; reserved           H'0FAC'
; reserved           H'0FAB'
; reserved           H'0FAA'
EEADR           EQU  H'0FA9'
EEDATA          EQU  H'0FA8'
EECON2          EQU  H'0FA7'
EECON1          EQU  H'0FA6'
; reserved           H'0FB5'
; reserved           H'0FB4'
; reserved           H'0FB3'
IPR2            EQU  H'0FA2'
PIR2            EQU  H'0FA1'
PIE2            EQU  H'0FA0'

IPR1            EQU  H'0F9F'
PIR1            EQU  H'0F9E'
PIE1            EQU  H'0F9D'
BGCAL		EQU  H'0F9C'
OSCCAL          EQU  H'0F9B'
REFCAL		EQU  H'0F9A'
; reserved           H'0F99'
; reserved           H'0F98'
; reserved           H'0F97'
; reserved           H'0F96'
; reserved           H'0F95'
; reserved           H'0F94'
TRISB           EQU  H'0F93'
TRISA           EQU  H'0F92'
LEDB            EQU  H'0F91'
LEDDC           EQU  H'0F90'

; reserved           H'0F8F'
; reserved           H'0F8E'
; reserved           H'0F8D'
; reserved           H'0F8C'
; reserved           H'0F8B'
LATB            EQU  H'0F8A'
LATA            EQU  H'0F89'
; reserved           H'0F88'
; reserved           H'0F87'
; reserved           H'0F86'
; reserved           H'0F85'
; reserved           H'0F84'
; reserved           H'0F83'
; reserved           H'0F82'
PORTB           EQU  H'0F81'
PORTA           EQU  H'0F80'


;----- STKPTR Bits -----------------------------------------------------
STKFUL          EQU  H'0007'    ;For backward compatibilty
STKOVF          EQU  H'0007'
STKUNF          EQU  H'0006'

;----- INTCON Bits -----------------------------------------------------
GIE             EQU  H'0007'
GIEH            EQU  H'0007'
PEIE            EQU  H'0006'
GIEL            EQU  H'0006'
TMR0IE          EQU  H'0005'
T0IE            EQU  H'0005'      ; For backward compatibility
INT0E           EQU  H'0004'
INT0IE          EQU  H'0004'      ; For backward compatibility
RBIE            EQU  H'0003'
TMR0IF          EQU  H'0002'
T0IF            EQU  H'0002'      ; For backward compatibility
INT0IF          EQU  H'0001'      ; For backward compatibility
INT0F           EQU  H'0001'
RBIF            EQU  H'0000'

;----- INTCON2 Bits ----------------------------------------------------
NOT_RBPU        EQU  H'0007'
RBPU            EQU  H'0007'
INTEDG0         EQU  H'0006'
INTEDG1         EQU  H'0005'
INTEDG2         EQU  H'0004'
TMR0IP          EQU  H'0002'
T0IP            EQU  H'0002'      ; For compatibility with T0IE and T0IF
RBIP            EQU  H'0000'

;----- INTCON3 Bits ----------------------------------------------------
INT2P           EQU  H'0007'
INT2IP          EQU  H'0007'
INT1P           EQU  H'0006'
INT1IP          EQU  H'0006'      ; For backward compatibility
INT2E           EQU  H'0004'
INT2IE          EQU  H'0004'      ; For compatibility
INT1E           EQU  H'0003'
INT1IE          EQU  H'0003'      ; For backward compatibility
INT2F           EQU  H'0001'
INT2IF          EQU  H'0001'      ; For compatibility
INT1F           EQU  H'0000'
INT1IF          EQU  H'0000'      ; For backward compatibility

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
OSTS		EQU  H'0003'
SCS0		EQU  H'0000'

;----- RCON Bits -------------------------------------------------------
IPEN            EQU  H'0007'
GPB             EQU  H'0006'
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
T1INSYNC        EQU  H'0002'    ; Backward compatibility only
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


;----- ADCON0 Bits -----------------------------------------------------
GO              EQU  H'0001'
NOT_DONE        EQU  H'0001'
DONE            EQU  H'0001'
GO_DONE         EQU  H'0001'
ADON            EQU  H'0000'

;----- ADCON1 Bits -----------------------------------------------------
ADCOV           EQU  H'0007'
SIZE2           EQU  H'0006'
SIZE1           EQU  H'0005'
SIZE0           EQU  H'0004'
BALC4           EQU  H'0003'
BALC3           EQU  H'0002'
BALC2           EQU  H'0001'
BALC1           EQU  H'0000'

;----- ADCON2 Bits -----------------------------------------------------
C340            EQU  H'0007'
ADCS3           EQU  H'0003'
ADCS2           EQU  H'0002'
ADCS1           EQU  H'0001'
ADCS0           EQU  H'0000'

;----- CVRCON Bits -----------------------------------------------------
CWI4            EQU  H'0007'
CWI3            EQU  H'0006'
CWI2            EQU  H'0005'
CWI1            EQU  H'0004'
CWI0            EQU  H'0003'
CWV2            EQU  H'0002'
CWV1            EQU  H'0001'
CWV0            EQU  H'0000'

;----- CMCON bits ------------------------------------------------------
CWTST           EQU  H'0007'
CWVI            EQU  H'0004'
CWCI            EQU  H'0003'
CWDI            EQU  H'0002'
CWIEN           EQU  H'0001'
CWVEN           EQU  H'0000'

;----- T3CON Bits ------------------------------------------------------
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

;----- EECON1 Bits -----------------------------------------------------
EEPGD           EQU  H'0007'
CFGS            EQU  H'0006'
COMA            EQU  H'0005'
FREE            EQU  H'0004'
WRERR           EQU  H'0003'
WREN            EQU  H'0002'
WR              EQU  H'0001'
RD              EQU  H'0000'

;----- IPR2 Bits -------------------------------------------------------
CMIP            EQU  H'0006'
EEIP            EQU  H'0004'
BCLIP           EQU  H'0003'
TMR3IP          EQU  H'0001'

;----- PIR2 Bits -------------------------------------------------------
CMIF            EQU  H'0006'
EEIF            EQU  H'0004'
BCLIF           EQU  H'0003'
TMR3IF          EQU  H'0001'

;----- PIE2 Bits -------------------------------------------------------
CMIE            EQU  H'0006'
EEIE            EQU  H'0004'
BCLIE           EQU  H'0003'
TMR3IE          EQU  H'0001'

;----- IPR1 Bits -------------------------------------------------------
ADIP            EQU  H'0006'
SSPIP           EQU  H'0003'
TMR2IP          EQU  H'0001'
TMR1IP          EQU  H'0000'

;----- PIR1 Bits -------------------------------------------------------
ADIF            EQU  H'0006'
SSPIF           EQU  H'0003'
TMR2IF          EQU  H'0001'
TMR1IF          EQU  H'0000'

;----- PIE1 Bits -------------------------------------------------------
ADIE            EQU  H'0006'
SSPIE           EQU  H'0003'
TMR2IE          EQU  H'0001'
TMR1IE          EQU  H'0000'

;----- BGCAL Bits -------------------------------------------------------
BGTC3           EQU  H'0003'
BGTC2           EQU  H'0002'
BGTC1           EQU  H'0001'
BGTC0           EQU  H'0000'

;----- OSCCAL Bits ----------------------------------------------------
REXT            EQU  H'0007'
OSC6            EQU  H'0006'
OSC5            EQU  H'0005'
OSC4            EQU  H'0004'
OSC3            EQU  H'0003'
OSC2            EQU  H'0002'
OSC1            EQU  H'0001'
OSC0            EQU  H'0000'

;----- LEDDC Bits -------------------------------------------------------
LEDC2           EQU  H'0002'
LEDC1           EQU  H'0001'
LEDC0           EQU  H'0000'

;----- WDTCON Bits -------------------------------------------------------
SWDTEN		EQU  H'0000'


;=======================================================================
;
;       I/O Pin Name Definitions
;
;=======================================================================

;----- PORTA -----------------------------------------------------------
RA0             EQU  0
SCK             EQU  0
SCL             EQU  0
RA1             EQU  1
SDI             EQU  1
SDA             EQU  1
RA2             EQU  2
SS              EQU  2
RA3             EQU  3
SDO             EQU  3
RA4             EQU  4
T0CKI           EQU  4
RA5             EQU  5
MCLR            EQU  5
RA6             EQU  6
CLKI            EQU  6

;----- PORTB -----------------------------------------------------------
RB0             EQU  0
INT0            EQU  0
RB1             EQU  1
INT1            EQU  1
RB2             EQU  2
INT2            EQU  2
RB3             EQU  3
RB4             EQU  4
RB5             EQU  5
RB6             EQU  6
PGC             EQU  6
P1C             EQU  7
RB7             EQU  7
PGD             EQU  7







;=======================================================================
;
;       RAM Definition
;
;=======================================================================

     __MAXRAM H'FFF'
     __BADRAM H'200'-H'F7F'
     __BADRAM H'F82'-H'F88',H'F8B'-H'F8F',H'F94'-H'F99'
     __BADRAM H'FA3'-H'FA5',H'FAA'-H'FB0',H'FB6'-H'FBF'
     __BADRAM H'FD1'-H'FD2'

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

;=======================================================================
;
;       Configuration Bits
;
;  The following is an assignment of address values for all of the
;  configuration registers for the purpose of table reads and writes,
;  and for programming configuration words.

_CONFIG1L       EQU    H'300000'
_CONFIG1H       EQU    H'300001'
_CONFIG2L       EQU    H'300002'
_CONFIG2H       EQU    H'300003'
_CONFIG3L       EQU    H'300004'
_CONFIG3H       EQU    H'300005'
_CONFIG4L       EQU    H'300006'
_CONFIG4H       EQU    H'300007'
_CONFIG5L       EQU    H'300008'
_CONFIG5H       EQU    H'300009'
_CONFIG6L       EQU    H'30000A'
_CONFIG6H       EQU    H'30000B'
_CONFIG7L       EQU    H'30000C'
_CONFIG7H       EQU    H'30000D'

; To use the Configuration Bits, place the following lines in your
; source code in the following format, and change the configuration
; value to the desired setting (such as WDT_OFF to WDT_ON).  These are
; currently commented out here and each __CONFIG line should have the
; preceding semicolon removed when pasted into your source code.


;    __CONFIG  _CONFIG1L,  0x00
;    __CONFIG  _CONFIG1H,  0x00
;    __CONFIG  _CONFIG2L,  0x00
;    __CONFIG  _CONFIG2H, _WDT_ON_2H
;    __CONFIG  _CONFIG3L,  0x00
;    __CONFIG  _CONFIG3H, _MCLRE_ON_3H
;    __CONFIG  _CONFIG4L, _BKBUG_OFF_4L | _STVR_ON_4L
;    __CONFIG  _CONFIG4H,  0x00
;    __CONFIG  _CONFIG5L, _CP01_OFF_5L | _CP23_OFF_5L
;    __CONFIG  _CONFIG5H, _CPB_OFF_5H | _CPD_OFF_5H
;    __CONFIG  _CONFIG6L, _WRT01_OFF_6L | _WRT23_OFF_6L
;    __CONFIG  _CONFIG6H, _WRTC_OFF_6H | _WRTB_OFF_6H | _WRTD_OFF_6H
;    __CONFIG  _CONFIG7L, _EBTR01_OFF_7L | _EBTR23_OFF_7L
;    __CONFIG  _CONFIG7H, _EBTRB_OFF_7H

;Configuration Byte 2H Options
_WDT_ON_2H        EQU  H'01' ; Watch Dog Timer enabled
_WDT_OFF_2H       EQU  H'00' ; Watch Dog Timer disabled

;Configuration Byte 3H Options
_MCLRE_ON_3H      EQU  H'80' ; MCLR enabled, RA5 input disabled
_MCLRE_OFF_3H     EQU  H'00' ; MCLR disabled, RA5 input enabled


;Configuration Byte 4L Options
_BKBUG_ON_4L      EQU  H'00' ; BacKground deBUGger enabled
_BKBUG_OFF_4L     EQU  H'80' ; BacKground deBUGger disabled
_STVR_ON_4L       EQU  H'01' ; Stack over/underflow Reset enabled
_STVR_OFF_4L      EQU  H'00' ; Stack over/underflow Reset disabled

;Configuration Byte 5L Options
; Protect program memory blocks from programmer reads and writes (see Config Byte 6L)
_CP01_ON_5L       EQU  H'00' ; Blocks 0 & 1 protected
_CP01_OFF_5L      EQU  H'01' ; Blocks 0 & 1 readable/ may be writable
_CP23_ON_5L       EQU  H'00' ; Blocks 2 & 3 protected
_CP23_OFF_5L      EQU  H'02' ; Blocks 2 & 3 readable/ may be writable

;Configuration Byte 5H Options
;  Protect blocks from programmer reads and writes (see Config Byte 6H)
_CPB_ON_5H        EQU  H'00' ; Boot Block protected
_CPB_OFF_5H       EQU  H'40' ; Boot Block readable / may be writable
_CPD_ON_5H        EQU  H'00' ; Data EE memory protected
_CPD_OFF_5H       EQU  H'80' ; Data EE memory readable / may be writable

;Configuration Byte 6L Options
;  Protect program memory blocks from table writes and programmer writes
_WRT01_ON_6L      EQU  H'00' ; Block 0 & 1 write protected
_WRT01_OFF_6L     EQU  H'01' ; Block 0 & 1 writable
_WRT23_ON_6L      EQU  H'00' ; Block 2 & 3 write protected
_WRT23_OFF_6L     EQU  H'02' ; Block 2 & 3 writable

;Configuration Byte 6H Options
;  Protect blocks from table writes and programmer writes
_WRTC_ON_6H       EQU  H'00' ; Config registers write protected
_WRTC_OFF_6H      EQU  H'20' ; Config registers writable
_WRTB_ON_6H       EQU  H'00' ; Boot block write protected
_WRTB_OFF_6H      EQU  H'40' ; Boot block writable
_WRTD_ON_6H       EQU  H'00' ; Data EE write protected
_WRTD_OFF_6H      EQU  H'80' ; Data EE writable

;Configuration Byte 7L Options
;  Protect program memory blocks from table reads executed from other blocks
_EBTR01_ON_7L     EQU  H'00' ; Block 0 & 1 protected
_EBTR01_OFF_7L    EQU  H'01' ; Block 0 & 1 readable
_EBTR23_ON_7L     EQU  H'00' ; Block 2 & 3 protected
_EBTR23_OFF_7L    EQU  H'02' ; Block 2 & 3 readable

;Configuration Byte 7H Options
;  Protect block from table reads executed in other blocks
_EBTRB_ON_7H      EQU  H'00' ; Boot block read protected
_EBTRB_OFF_7H     EQU  H'40' ; Boot block readable

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
