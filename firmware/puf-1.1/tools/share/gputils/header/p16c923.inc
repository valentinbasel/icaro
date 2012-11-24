        LIST
; P16C923.INC  Standard Header File, Version 1.02    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16C923 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16C923
;       2. LIST directive in the source file
;               LIST   P=PIC16C923
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.03   09/13/01 Added the SSPSTAT bits CKE and SMP 
;1.02	04/23/00 Added LCD controller bits
;1.01   05/12/97 Corrected ports F and G addresses
;1.00   04/10/96 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16C923
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                            EQU     H'0000'
F                            EQU     H'0001'

;----- Register Files------------------------------------------------------

INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FSR                          EQU     H'0004'
PORTA                        EQU     H'0005'
PORTB                        EQU     H'0006'
PORTC                        EQU     H'0007'
PORTD                        EQU     H'0008'
PORTE                        EQU     H'0009'
PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'
TMR1L                        EQU     H'000E'
TMR1H                        EQU     H'000F'
T1CON                        EQU     H'0010'
TMR2                         EQU     H'0011'
T2CON                        EQU     H'0012'
SSPBUF                       EQU     H'0013'
SSPCON                       EQU     H'0014'
CCPR1L                       EQU     H'0015'
CCPR1H                       EQU     H'0016'
CCP1CON                      EQU     H'0017'

OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
TRISC                        EQU     H'0087'
TRISD                        EQU     H'0088'
TRISE                        EQU     H'0089'
PIE1                         EQU     H'008C'
PCON                         EQU     H'008E'
PR2                          EQU     H'0092'
SSPADD                       EQU     H'0093'
SSPSTAT                      EQU     H'0094'

PORTF                        EQU     H'0107'
PORTG                        EQU     H'0108'
LCDSE                        EQU     H'010D'
LCDPS                        EQU     H'010E'
LCDCON                       EQU     H'010F'
LCDD00                       EQU     H'0110'
LCDD01                       EQU     H'0111'
LCDD02                       EQU     H'0112'
LCDD03                       EQU     H'0113'
LCDD04                       EQU     H'0114'
LCDD05                       EQU     H'0115'
LCDD06                       EQU     H'0116'
LCDD07                       EQU     H'0117'
LCDD08                       EQU     H'0118'
LCDD09                       EQU     H'0119'
LCDD10                       EQU     H'011A'
LCDD11                       EQU     H'011B'
LCDD12                       EQU     H'011C'
LCDD13                       EQU     H'011D'
LCDD14                       EQU     H'011E'
LCDD15                       EQU     H'011F'

TRISF                        EQU     H'0187'
TRISG                        EQU     H'0188'

;----- STATUS Bits --------------------------------------------------------

IRP                          EQU     H'0007'
RP1                          EQU     H'0006'
RP0                          EQU     H'0005'
NOT_TO                       EQU     H'0004'
NOT_PD                       EQU     H'0003'
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- INTCON Bits --------------------------------------------------------

GIE                          EQU     H'0007'
PEIE                         EQU     H'0006'
T0IE                         EQU     H'0005'
INTE                         EQU     H'0004'
RBIE                         EQU     H'0003'
T0IF                         EQU     H'0002'
INTF                         EQU     H'0001'
RBIF                         EQU     H'0000'

;----- PIR1 Bits ----------------------------------------------------------

LCDIF                        EQU     H'0007'
SSPIF                        EQU     H'0003'
CCP1IF                       EQU     H'0002'
TMR2IF                       EQU     H'0001'
TMR1IF                       EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------

T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
T1INSYNC                     EQU     H'0002'    ; Backward compatibility only
TMR1CS                       EQU     H'0001'
TMR1ON                       EQU     H'0000'

;----- T2CON Bits ---------------------------------------------------------

TOUTPS3                      EQU     H'0006'
TOUTPS2                      EQU     H'0005'
TOUTPS1                      EQU     H'0004'
TOUTPS0                      EQU     H'0003'
TMR2ON                       EQU     H'0002'
T2CKPS1                      EQU     H'0001'
T2CKPS0                      EQU     H'0000'

;----- SSPCON Bits --------------------------------------------------------

WCOL                         EQU     H'0007'
SSPOV                        EQU     H'0006'
SSPEN                        EQU     H'0005'
CKP                          EQU     H'0004'
SSPM3                        EQU     H'0003'
SSPM2                        EQU     H'0002'
SSPM1                        EQU     H'0001'
SSPM0                        EQU     H'0000'

;----- CCP1CON Bits -------------------------------------------------------

CCP1X                        EQU     H'0005'
CCP1Y                        EQU     H'0004'
CCP1M3                       EQU     H'0003'
CCP1M2                       EQU     H'0002'
CCP1M1                       EQU     H'0001'
CCP1M0                       EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RBPU                     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- TRISE Bits ---------------------------------------------------------

IBF                          EQU     H'0007'
OBF                          EQU     H'0006'
IBOV                         EQU     H'0005'
PSPMODE                      EQU     H'0004'
TRISE2                       EQU     H'0002'
TRISE1                       EQU     H'0001'
TRISE0                       EQU     H'0000'

;----- PIE1 Bits ----------------------------------------------------------

LCDIE                        EQU     H'0007'
SSPIE                        EQU     H'0003'
CCP1IE                       EQU     H'0002'
TMR2IE                       EQU     H'0001'
TMR1IE                       EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

NOT_POR                      EQU     H'0001'

;----- SSPSTAT Bits -------------------------------------------------------

SMP			     EQU     H'0007' 
CKE			     EQU     H'0006'  
D                            EQU     H'0005'
I2C_DATA                     EQU     H'0005'
NOT_A                        EQU     H'0005'
NOT_ADDRESS                  EQU     H'0005'
D_A                          EQU     H'0005'
DATA_ADDRESS                 EQU     H'0005'
P                            EQU     H'0004'
I2C_STOP                     EQU     H'0004'
S                            EQU     H'0003'
I2C_START                    EQU     H'0003'
R                            EQU     H'0002'
I2C_READ                     EQU     H'0002'
NOT_W                        EQU     H'0002'
NOT_WRITE                    EQU     H'0002'
R_W                          EQU     H'0002'
READ_WRITE                   EQU     H'0002'
UA                           EQU     H'0001'
BF                           EQU     H'0000'

;----- LCDSE Bits ---------------------------------------------------------

SE29                         EQU     H'0007'
SE27                         EQU     H'0006'
SE20                         EQU     H'0005'
SE16                         EQU     H'0004'
SE12                         EQU     H'0003'
SE9                          EQU     H'0002'
SE5                          EQU     H'0001'
SE0                          EQU     H'0000'

;----- LCDPS Bits ---------------------------------------------------------

LP3                          EQU     H'0003'
LP2                          EQU     H'0002'
LP1                          EQU     H'0001'
LP0                          EQU     H'0000'

;----- LCDCON Bits --------------------------------------------------------

LCDEN                        EQU     H'0007'
SLPEN                        EQU     H'0006'
VGEN                         EQU     H'0004'
CS1                          EQU     H'0003'
CS0                          EQU     H'0002'
LMUX1                        EQU     H'0001'
LMUX0                        EQU     H'0000'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1FF'
        __BADRAM H'0D', H'18'-H'1F'
        __BADRAM H'8D', H'8F'-H'91', H'95'-H'9F'
        __BADRAM H'105', H'109', H'10C', H'120'-H'16F'
        __BADRAM H'185', H'189', H'18C'-H'1EF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_CP_ALL                      EQU     H'00CF'
_CP_75                       EQU     H'15DF'
_CP_50                       EQU     H'2AEF'
_CP_OFF                      EQU     H'3FFF'
_PWRTE_OFF                   EQU     H'3FFF'
_PWRTE_ON                    EQU     H'3FF7'
_WDT_ON                      EQU     H'3FFF'
_WDT_OFF                     EQU     H'3FFB'
_LP_OSC                      EQU     H'3FFC'
_XT_OSC                      EQU     H'3FFD'
_HS_OSC                      EQU     H'3FFE'
_RC_OSC                      EQU     H'3FFF'

        LIST
