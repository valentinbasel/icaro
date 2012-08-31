        LIST
; P16F916.INC  Standard Header File, Version 1.04    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16F916 microcontroller.
; These names are taken to match the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16F916
;       2. LIST directive in the source file
;               LIST   P=PIC16F916
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:
;1.00   06/11/04 Initial Release 
;1.01	06/18/04 Corrected typo in 'bad ram' section
;1.02	08/16/04 Added EECON2
;1.03	05/20/05 Removed EECON2 from badram
;1.04   10/05/05 Correct names of bits in ANSEL, Add EEADRH and EEADRL bit 
;			definitions


;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16F916
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
PORTE                        EQU     H'0009'
PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'
PIR2                         EQU     H'000D'
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
RCSTA                        EQU     H'0018'
TXREG                        EQU     H'0019'
RCREG                        EQU     H'001A'
ADRESH                       EQU     H'001E'
ADCON0                       EQU     H'001F'

OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
TRISC                        EQU     H'0087'
TRISE                        EQU     H'0089'
PIE1                         EQU     H'008C'
PIE2                         EQU     H'008D'
PCON                         EQU     H'008E'
OSCCON			     EQU     H'008F'
OSCTUNE			     EQU     H'0090'
ANSEL	                     EQU     H'0091'
PR2                          EQU     H'0092'
SSPADD                       EQU     H'0093'
SSPSTAT                      EQU     H'0094'
WPUB			     EQU     H'0095'
WPU			     EQU     H'0095'
IOCB			     EQU     H'0096'
IOC			     EQU     H'0096'
CMCON1   		     EQU     H'0097'
TXSTA                        EQU     H'0098'
SPBRG                        EQU     H'0099'
CMCON0                       EQU     H'009C'
VRCON                        EQU     H'009D'
ADRESL                       EQU     H'009E'
ADCON1                       EQU     H'009F'

WDTCON			     EQU     H'0105'
LCDCON			     EQU     H'0107'
LCDPS			     EQU     H'0108'
LVDCON			     EQU     H'0109'
EEDATL	                     EQU     H'010C'
EEADRL                       EQU     H'010D'
EEDATH                       EQU     H'010E'
EEADRH                       EQU     H'010F'
LCDDATA0		     EQU     H'0110'
LCDDATA1		     EQU     H'0111'
LCDDATA3		     EQU     H'0113'
LCDDATA4		     EQU     H'0114'
LCDDATA6		     EQU     H'0116'
LCDDATA7		     EQU     H'0117'
LCDDATA9		     EQU     H'0119'
LCDDATA10		     EQU     H'011A'
LCDSE0			     EQU     H'011C'
LCDSE1			     EQU     H'011D'

EECON1                       EQU     H'018C'
EECON2			     EQU     H'018D'


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
TMR0IE                       EQU     H'0005'
INTE                         EQU     H'0004'
RBIE                         EQU     H'0003'
T0IF                         EQU     H'0002'
TMR0IF                       EQU     H'0002'
INTF                         EQU     H'0001'
RBIF                         EQU     H'0000'

;----- PIR1 Bits ----------------------------------------------------------

EEIF                         EQU     H'0007'
ADIF                         EQU     H'0006'
RCIF                         EQU     H'0005'
TXIF                         EQU     H'0004'
SSPIF                        EQU     H'0003'
CCP1IF                       EQU     H'0002'
TMR2IF                       EQU     H'0001'
TMR1IF                       EQU     H'0000'

;----- PIR2 Bits ----------------------------------------------------------

OSFIF  			     EQU     H'0007'
C2IF			     EQU     H'0006'
C1IF                         EQU     H'0005'
LCDIF                        EQU     H'0004'
LVDIF			     EQU     H'0002'

;----- T1CON Bits ---------------------------------------------------------

T1GINV			     EQU     H'0007'
T1GE			     EQU     H'0006'
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
T1INSYNC                     EQU     H'0002'    ; Backward compatibility only
T1SYNC                       EQU     H'0002'
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

;----- RCSTA Bits ---------------------------------------------------------

SPEN                         EQU     H'0007'
RX9                          EQU     H'0006'
RC9                          EQU     H'0006'    ; Backward compatibility only
NOT_RC8                      EQU     H'0006'    ; Backward compatibility only
RC8_9                        EQU     H'0006'    ; Backward compatibility only
SREN                         EQU     H'0005'
CREN                         EQU     H'0004'
ADDEN                        EQU     H'0003'
FERR                         EQU     H'0002'
OERR                         EQU     H'0001'
RX9D                         EQU     H'0000'
RCD8                         EQU     H'0000'    ; Backward compatibility only


;----- ADCON0 Bits --------------------------------------------------------

ADFM                         EQU     H'0007'
VCFG1                        EQU     H'0006'
VCFG0                        EQU     H'0005'
CHS2                         EQU     H'0004'
CHS1                         EQU     H'0003'
CHS0                         EQU     H'0002'
NOT_DONE                     EQU     H'0001'
GO_DONE                      EQU     H'0001'
ADON                         EQU     H'0000'

;----- OPTION_REG Bits -----------------------------------------------------

NOT_RBPU                     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- PIE1 Bits ----------------------------------------------------------

EEIE                         EQU     H'0007'
ADIE                         EQU     H'0006'
RCIE                         EQU     H'0005'
TXIE                         EQU     H'0004'
SSPIE                        EQU     H'0003'
CCP1IE                       EQU     H'0002'
TMR2IE                       EQU     H'0001'
TMR1IE                       EQU     H'0000'

;----- PIE2 Bits ----------------------------------------------------------

OSFIE		 	     EQU     H'0007'
C2IE			     EQU     H'0006'
C1IE			     EQU     H'0005'
LCDIE			     EQU     H'0004'
LVDIE                        EQU     H'0002'

;----- PCON Bits ----------------------------------------------------------

SBOREN			     EQU     H'0004'
NOT_POR                      EQU     H'0001'
NOT_BO                       EQU     H'0000'
NOT_BOR                      EQU     H'0000'

;----- OSCCON Bits -------------------------------------------------------

IRCF2	     		     EQU     H'0006'
IRCF1			     EQU     H'0005'
IRCF0			     EQU     H'0004'
OSTS                         EQU     H'0003'
HTS			     EQU     H'0002'
LTS                          EQU     H'0001'
SCS                          EQU     H'0000'

;----- OSCTUNE Bits -------------------------------------------------------

TUN4                         EQU     H'0004'
TUN3                         EQU     H'0003'
TUN2		             EQU     H'0002'
TUN1                         EQU     H'0001'
TUN0		             EQU     H'0000'


;----- ANSEL Bits ---------------------------------------------------------

ANS4			     EQU     H'0004'
AN4                          EQU     H'0004'    ; Backward compatibility only
ANS3			     EQU     H'0003'
AN3                          EQU     H'0003'    ; Backward compatibility only
ANS2			     EQU     H'0002'
AN2                          EQU     H'0002'    ; Backward compatibility only
ANS1			     EQU     H'0001'
AN1                          EQU     H'0001'    ; Backward compatibility only
ANS0			     EQU     H'0000'
AN0                          EQU     H'0000'    ; Backward compatibility only


;----- SSPSTAT Bits -------------------------------------------------------

SMP                          EQU     H'0007'
CKE                          EQU     H'0006'
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


;----- WPUB Bits -------------------------------------------------------

WPUB7                        EQU     H'0007'
WPUB6                        EQU     H'0006'
WPUB5                        EQU     H'0005'
WPUB4                        EQU     H'0004'
WPUB3                        EQU     H'0003'
WPUB2                        EQU     H'0002'
WPUB1                        EQU     H'0001'
WPUB0                        EQU     H'0000'

;----- WPU Bits -------------------------------------------------------

WPU7                         EQU     H'0007'
WPU6                         EQU     H'0006'
WPU5                         EQU     H'0005'
WPU4                         EQU     H'0004'
WPU3                         EQU     H'0003'
WPU2                         EQU     H'0002'
WPU1                         EQU     H'0001'
WPU0                         EQU     H'0000'


;----- IOCB Bits -------------------------------------------------------

IOCB7                        EQU     H'0007'
IOCB6                        EQU     H'0006'
IOCB5                        EQU     H'0005'
IOCB4                        EQU     H'0004'


;----- IOC Bits -------------------------------------------------------

IOC7                         EQU     H'0007'
IOC6                         EQU     H'0006'
IOC5                         EQU     H'0005'
IOC4                         EQU     H'0004'


;----- CMCON1 Bits --------------------------------------------------------
T1GSS			     EQU     H'0001'
C2SYNC                       EQU     H'0000'


;----- TXSTA Bits ---------------------------------------------------------

CSRC                         EQU     H'0007'
TX9                          EQU     H'0006'
NOT_TX8                      EQU     H'0006'    ; Backward compatibility only
TX8_9                        EQU     H'0006'    ; Backward compatibility only
TXEN                         EQU     H'0005'
SYNC                         EQU     H'0004'
BRGH                         EQU     H'0002'
TRMT                         EQU     H'0001'
TX9D                         EQU     H'0000'
TXD8                         EQU     H'0000'    ; Backward compatibility only


;----- CMCON0 Bits ---------------------------------------------------------

C2OUT                        EQU     H'0007'
C1OUT                        EQU     H'0006'
C2INV                        EQU     H'0005'
C1INV                        EQU     H'0004'
CIS                          EQU     H'0003'
CM2                          EQU     H'0002'
CM1                          EQU     H'0001'
CM0                          EQU     H'0000'

;----- VRCON Bits --------------------------------------------------------

VREN                         EQU     H'0007'
VRR                          EQU     H'0005'
VR3                          EQU     H'0003'
VR2                          EQU     H'0002'
VR1                          EQU     H'0001'
VR0                          EQU     H'0000'

;----- ADCON1 Bits --------------------------------------------------------

ADCS2			     EQU     H'0006'
ADCS1			     EQU     H'0005'
ADCS0			     EQU     H'0004'

;----- WDTCON Bits --------------------------------------------------------

WDTPS3                       EQU     H'0004'
WDTPS2                       EQU     H'0003'
WDTPS1                       EQU     H'0002'
WDTPS0                       EQU     H'0001'
SWDTEN                       EQU     H'0000'
SWDTE                        EQU     H'0000'

;----- LCDCON Bits --------------------------------------------------------

LCDEN			     EQU     H'0007'
SLPEN			     EQU     H'0006'
WERR			     EQU     H'0005'
VLCDEN			     EQU     H'0004'
CS1			     EQU     H'0003'
CS0                          EQU     H'0002'
LMUX1                        EQU     H'0001'
LMUX0                        EQU     H'0000'

;----- LCDPS Bits ---------------------------------------------------------

WFT			     EQU     H'0007'
BIASMD			     EQU     H'0006'
LCDA			     EQU     H'0005'
WA			     EQU     H'0004'
LP3			     EQU     H'0003'
LP2			     EQU     H'0002'
LP1                          EQU     H'0001'
LP0                          EQU     H'0000'

;----- LVDCON Bits --------------------------------------------------------

IRVST                        EQU     H'0005'
LVDEN                        EQU     H'0004'
LVDL2                        EQU     H'0002'
LVDL1                        EQU     H'0001'
LVDL0                        EQU     H'0000'

;----- LCDDATA0 Bits -------------------------------------------------------

SEG7COM0		     EQU     H'0007'
SEG6COM0		     EQU     H'0006'
SEG5COM0		     EQU     H'0005'
SEG4COM0		     EQU     H'0004'
SEG3COM0		     EQU     H'0003'
SEG2COM0		     EQU     H'0002'
SEG1COM0		     EQU     H'0001'
SEG0COM0		     EQU     H'0000'

S7C0			     EQU     H'0007'
S6C0			     EQU     H'0006'
S5C0			     EQU     H'0005'
S4C0			     EQU     H'0004'
S3C0			     EQU     H'0003'
S2C0			     EQU     H'0002'
S1C0			     EQU     H'0001'
S0C0	 		     EQU     H'0000'

;----- LCDDATA1 Bits -------------------------------------------------------

SEG15COM0		     EQU     H'0007'
SEG14COM0		     EQU     H'0006'
SEG13COM0		     EQU     H'0005'
SEG12COM0		     EQU     H'0004'
SEG11COM0		     EQU     H'0003'
SEG10COM0		     EQU     H'0002'
SEG9COM0		     EQU     H'0001'
SEG8COM0		     EQU     H'0000'

S15C0			     EQU     H'0007'
S14C0			     EQU     H'0006'
S13C0			     EQU     H'0005'
S12C0			     EQU     H'0004'
S11C0			     EQU     H'0003'
S10C0			     EQU     H'0002'
S9C0			     EQU     H'0001'
S8C0	 		     EQU     H'0000'


;----- LCDDATA3 Bits -------------------------------------------------------

SEG7COM1		     EQU     H'0007'
SEG6COM1		     EQU     H'0006'
SEG5COM1		     EQU     H'0005'
SEG4COM1		     EQU     H'0004'
SEG3COM1		     EQU     H'0003'
SEG2COM1		     EQU     H'0002'
SEG1COM1		     EQU     H'0001'
SEG0COM1		     EQU     H'0000'

S7C1			     EQU     H'0007'
S6C1			     EQU     H'0006'
S5C1			     EQU     H'0005'
S4C1			     EQU     H'0004'
S3C1			     EQU     H'0003'
S2C1			     EQU     H'0002'
S1C1			     EQU     H'0001'
S0C1	 		     EQU     H'0000'

;----- LCDDATA4 Bits -------------------------------------------------------

SEG15COM1		     EQU     H'0007'
SEG14COM1		     EQU     H'0006'
SEG13COM1		     EQU     H'0005'
SEG12COM1		     EQU     H'0004'
SEG11COM1		     EQU     H'0003'
SEG10COM1		     EQU     H'0002'
SEG9COM1		     EQU     H'0001'
SEG8COM1		     EQU     H'0000'

S15C1			     EQU     H'0007'
S14C1			     EQU     H'0006'
S13C1			     EQU     H'0005'
S12C1			     EQU     H'0004'
S11C1			     EQU     H'0003'
S10C1			     EQU     H'0002'
S9C1			     EQU     H'0001'
S8C1	 		     EQU     H'0000'


;----- LCDDATA6 Bits -------------------------------------------------------

SEG7COM2		     EQU     H'0007'
SEG6COM2		     EQU     H'0006'
SEG5COM2		     EQU     H'0005'
SEG4COM2		     EQU     H'0004'
SEG3COM2		     EQU     H'0003'
SEG2COM2		     EQU     H'0002'
SEG1COM2		     EQU     H'0001'
SEG0COM2		     EQU     H'0000'

S7C2			     EQU     H'0007'
S6C2			     EQU     H'0006'
S5C2			     EQU     H'0005'
S4C2			     EQU     H'0004'
S3C2			     EQU     H'0003'
S2C2			     EQU     H'0002'
S1C2			     EQU     H'0001'
S0C2	 		     EQU     H'0000'

;----- LCDDATA7 Bits -------------------------------------------------------

SEG15COM2		     EQU     H'0007'
SEG14COM2		     EQU     H'0006'
SEG13COM2		     EQU     H'0005'
SEG12COM2		     EQU     H'0004'
SEG11COM2		     EQU     H'0003'
SEG10COM2		     EQU     H'0002'
SEG9COM2		     EQU     H'0001'
SEG8COM2		     EQU     H'0000'

S15C2			     EQU     H'0007'
S14C2			     EQU     H'0006'
S13C2			     EQU     H'0005'
S12C2			     EQU     H'0004'
S11C2			     EQU     H'0003'
S10C2			     EQU     H'0002'
S9C2			     EQU     H'0001'
S8C2	 		     EQU     H'0000'


;----- LCDDATA9 Bits -------------------------------------------------------

SEG7COM3		     EQU     H'0007'
SEG6COM3		     EQU     H'0006'
SEG5COM3		     EQU     H'0005'
SEG4COM3		     EQU     H'0004'
SEG3COM3		     EQU     H'0003'
SEG2COM3		     EQU     H'0002'
SEG1COM3		     EQU     H'0001'
SEG0COM3		     EQU     H'0000'

S7C3			     EQU     H'0007'
S6C3			     EQU     H'0006'
S5C3			     EQU     H'0005'
S4C3			     EQU     H'0004'
S3C3			     EQU     H'0003'
S2C3			     EQU     H'0002'
S1C3			     EQU     H'0001'
S0C3	 		     EQU     H'0000'

;----- LCDDATA10 Bits -------------------------------------------------------

SEG15COM3		     EQU     H'0007'
SEG14COM3		     EQU     H'0006'
SEG13COM3		     EQU     H'0005'
SEG12COM3		     EQU     H'0004'
SEG11COM3		     EQU     H'0003'
SEG10COM3		     EQU     H'0002'
SEG9COM3		     EQU     H'0001'
SEG8COM3		     EQU     H'0000'

S15C3			     EQU     H'0007'
S14C3			     EQU     H'0006'
S13C3			     EQU     H'0005'
S12C3			     EQU     H'0004'
S11C3			     EQU     H'0003'
S10C3			     EQU     H'0002'
S9C3			     EQU     H'0001'
S8C3	 		     EQU     H'0000'


;----- LCDSE0 Bits --------------------------------------------------------

SE7			     EQU     H'0007'
SE6			     EQU     H'0006'
SE5			     EQU     H'0005'
SE4		             EQU     H'0004'
SE3 			     EQU     H'0003'
SE2			     EQU     H'0002'
SE1			     EQU     H'0001'
SE0			     EQU     H'0000'

SEGEN7			     EQU     H'0007'
SEGEN6			     EQU     H'0006'
SEGEN5			     EQU     H'0005'
SEGEN4		             EQU     H'0004'
SEGEN3 			     EQU     H'0003'
SEGEN2			     EQU     H'0002'
SEGEN1			     EQU     H'0001'
SEGEN0			     EQU     H'0000'

;----- LCDSE1 Bits --------------------------------------------------------

SE15			     EQU     H'0007'
SE14			     EQU     H'0006'
SE13			     EQU     H'0005'
SE12		             EQU     H'0004'
SE11			     EQU     H'0003'
SE10			     EQU     H'0002'
SE9			     EQU     H'0001'
SE8			     EQU     H'0000'

SEGEN15			     EQU     H'0007'
SEGEN14			     EQU     H'0006'
SEGEN13			     EQU     H'0005'
SEGEN12		             EQU     H'0004'
SEGEN11			     EQU     H'0003'
SEGEN10			     EQU     H'0002'
SEGEN9			     EQU     H'0001'
SEGEN8			     EQU     H'0000'


;----- EECON1 Bits --------------------------------------------------------

EEPGD			     EQU     H'0007'
WRERR			     EQU     H'0003'
WREN			     EQU     H'0002'
WR			     EQU     H'0001'
EEWR			     EQU     H'0001'
RD			     EQU     H'0000'
EERD			     EQU     H'0000'

;----- EEADRH Bits --------------------------------------------------------

EEADRH4			     EQU     H'0004'
EEADRH3			     EQU     H'0003'
EEADRH2			     EQU     H'0002'
EEADRH1			     EQU     H'0001'
EEADRH0			     EQU     H'0000'

;----- EEADRL Bits --------------------------------------------------------

EEADRL7			     EQU     H'0007'
EEADRL6			     EQU     H'0006'
EEADRL5			     EQU     H'0005'
EEADRL4			     EQU     H'0004'
EEADRL3			     EQU     H'0003'
EEADRL2			     EQU     H'0002'
EEADRL1			     EQU     H'0001'
EEADRL0			     EQU     H'0000'


;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1FF'
        __BADRAM H'08', H'1B'-H'1D'
        __BADRAM H'88', H'9A'-H'9B'
        __BADRAM H'112', H'115', H'118', H'11B',H'11E'-H'11F'
        __BADRAM H'185', H'187'-H'189', H'18E'-H'18F'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_CONFIG                      EQU     H'2007'

;Configuration Byte 1 Options
_DEBUG_ON		     EQU     H'2FFF'
_DEBUG_OFF                   EQU     H'3FFF'
_FCMEN_ON                    EQU     H'3FFF'
_FCMEN_OFF                   EQU     H'37FF'
_IESO_ON                     EQU     H'3FFF'
_IESO_OFF                    EQU     H'3BFF'
_BOD_ON                      EQU     H'3FFF'
_BOD_NSLEEP                  EQU     H'3EFF'
_BOD_SBODEN                  EQU     H'3DFF'
_BOD_OFF                     EQU     H'3CFF'
_CPD_ON                      EQU     H'3F7F'
_CPD_OFF                     EQU     H'3FFF'
_CP_ON                       EQU     H'3FBF'
_CP_OFF                      EQU     H'3FFF'
_MCLRE_ON                    EQU     H'3FFF'
_MCLRE_OFF                   EQU     H'3FDF'
_PWRTE_ON                    EQU     H'3FEF'
_PWRTE_OFF                   EQU     H'3FFF'
_WDT_ON                      EQU     H'3FFF'
_WDT_OFF                     EQU     H'3FF7'
_LP_OSC                      EQU     H'3FF8'
_XT_OSC                      EQU     H'3FF9'
_HS_OSC                      EQU     H'3FFA'
_EC_OSC                      EQU     H'3FFB'
_INTRC_OSC_NOCLKOUT          EQU     H'3FFC'
_INTRC_OSC_CLKOUT            EQU     H'3FFD'
_EXTRC_OSC_NOCLKOUT          EQU     H'3FFE'
_EXTRC_OSC_CLKOUT            EQU     H'3FFF'
_INTOSCIO                    EQU     H'3FFC'
_INTOSC                      EQU     H'3FFD'
_EXTRCIO                     EQU     H'3FFE'
_EXTRC                       EQU     H'3FFF'


        LIST
