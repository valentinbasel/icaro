        LIST
; P16HV785.INC  Standard Header File, Version 1.10    Microchip Technology, Inc.
        NOLIST

; Based on P16F785.INC
; This header file defines configurations, registers, and other useful bits of
; information for the PIC16HV785 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16HV785
;       2. LIST directive in the source file
;               LIST   P=PIC16HV785
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================
;1.00   03/26/04 Original
;1.10	07/12/04 Updated for changes to REFCON and VRCON
;1.20   08/26/04 Updated for changes from BOD to BOR
;1.30   09/23/04 Corrected addresses for OPA1CON and OPA2CON
;1.40   10/25/04 Added WPUA3 bit to WPUA register
;                Deleted OVRLP bit from PWMCON1 register
;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16HV785
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

PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'

TMR1L                        EQU     H'000E'		
TMR1H                        EQU     H'000F'		
T1CON                        EQU     H'0010'		
TMR2                         EQU     H'0011'
T2CON                        EQU     H'0012'
CCPR1L                       EQU     H'0013'
CCPR1H                       EQU     H'0014'
CCP1CON                      EQU     H'0015'

WDTCON                       EQU     H'0018'

ADRESH                       EQU     H'001E'		
ADCON0                       EQU     H'001F'		


OPTION_REG                   EQU     H'0081'

TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
TRISC                        EQU     H'0087'

PIE1                         EQU     H'008C'

PCON                         EQU     H'008E'
OSCCON                       EQU     H'008F'
OSCTUNE	               	     EQU     H'0090'
ANSEL                        EQU     H'0091'
ANSEL0                       EQU     H'0091'
PR2                          EQU     H'0092'
ANSEL1                       EQU     H'0093'

WPU                          EQU     H'0095'
WPUA                         EQU     H'0095'
IOC                          EQU     H'0096'
IOCA                         EQU     H'0096'

REFCON                       EQU     H'0098'
VRCON                        EQU     H'0099'
EEDAT                        EQU     H'009A'	
EEDATA                       EQU     H'009A'	
EEADR                        EQU     H'009B'	
EECON1                       EQU     H'009C'
EECON2                       EQU     H'009D'
ADRESL                       EQU     H'009E'		
ADCON1                       EQU     H'009F'


PWMCON1                      EQU     H'0110'
PWMCON0                      EQU     H'0111'
PWMCLK                       EQU     H'0112'
PWMPH1                       EQU     H'0113'
PWMPH2                       EQU     H'0114'

CM1CON0                      EQU     H'0119'
CM2CON0                      EQU     H'011A'
CM2CON1                      EQU     H'011B'
OPA1CON                      EQU     H'011C'
OPA2CON                      EQU     H'011D'

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
RAIE                         EQU     H'0003'
T0IF                         EQU     H'0002'
INTF                         EQU     H'0001'
RAIF                         EQU     H'0000'

;----- PIR1 Bits ----------------------------------------------------------

EEIF                         EQU     H'0007'
ADIF                         EQU     H'0006'
CCP1IF                       EQU     H'0005'
C2IF                         EQU     H'0004'
C1IF                         EQU     H'0003'
OSFIF                        EQU     H'0002'
T2IF                         EQU     H'0001'
TMR2IF                       EQU     H'0001'
T1IF                         EQU     H'0000'
TMR1IF                       EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------

T1GINV                       EQU     H'0007'
TMR1GE                       EQU     H'0006'
T1GE                         EQU     H'0006'
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
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

;----- CCP1CON Bits -------------------------------------------------------

DC1B1                        EQU     H'0005'
DC1B0                        EQU     H'0004'
CCP1M3                       EQU     H'0003'
CCP1M2                       EQU     H'0002'
CCP1M1                       EQU     H'0001'
CCP1M0                       EQU     H'0000'

;----- WDTCON Bits --------------------------------------------------------

WDTPS3                       EQU     H'0004'
WDTPS2                       EQU     H'0003'
WDTPS1                       EQU     H'0002'
WDTPS0                       EQU     H'0001'
SWDTEN                       EQU     H'0000'

;----- ADCON0 Bits --------------------------------------------------------

ADFM                         EQU     H'0007'
VCFG                         EQU     H'0006'
CHS3                         EQU     H'0005'
CHS2                         EQU     H'0004'
CHS1                         EQU     H'0003'
CHS0                         EQU     H'0002'
GO                           EQU     H'0001'
NOT_DONE                     EQU     H'0001'
GO_DONE                      EQU     H'0001'
ADON                         EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RAPU            	     EQU     H'0007'
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
CCP1IE                       EQU     H'0005'
C2IE                         EQU     H'0004'
C1IE                         EQU     H'0003'
OSFIE                        EQU     H'0002'
T2IE                         EQU     H'0001'
TMR2IE                       EQU     H'0001'
T1IE                         EQU     H'0000'
TMR1IE                       EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

SBODEN                       EQU     H'0004'
SBOREN                       EQU     H'0004'
NOT_POR                      EQU     H'0001'
NOT_BOD                      EQU     H'0000'
NOT_BOR                      EQU     H'0000'

;----- OSCCON Bits --------------------------------------------------------

IRCF2                        EQU     H'0006'
IRCF1                        EQU     H'0005'
IRCF0                        EQU     H'0004'
OSTS                         EQU     H'0003'
HTS                          EQU     H'0002'
LTS                          EQU     H'0001'
SCS                          EQU     H'0000'

;----- OSCTUNE Bits -------------------------------------------------------

TUN4                         EQU     H'0004'
TUN3                         EQU     H'0003'
TUN2                         EQU     H'0002'
TUN1                         EQU     H'0001'
TUN0                         EQU     H'0000'

;----- ANSEL or ANSEL0 ----------------------------------------------------

ANS7                         EQU     H'0007'
ANS6                         EQU     H'0006'
ANS5                         EQU     H'0005'
ANS4                         EQU     H'0004'
ANS3                         EQU     H'0003'
ANS2                         EQU     H'0002'
ANS1                         EQU     H'0001'
ANS0                         EQU     H'0000'

;----- ANSEL1 -------------------------------------------------------------

ANS11                        EQU     H'0003'
ANS10                        EQU     H'0002'
ANS9                         EQU     H'0001'
ANS8                         EQU     H'0000'

;----- WPUA --------------------------------------------------------------

WPUA5                        EQU     H'0005'
WPUA4                        EQU     H'0004'
WPUA3                        EQU     H'0003'
WPUA2                        EQU     H'0002'
WPUA1                        EQU     H'0001'
WPUA0                        EQU     H'0000'

;----- IOC --------------------------------------------------------------

IOC5                         EQU     H'0005'
IOC4                         EQU     H'0004'
IOC3                         EQU     H'0003'
IOC2                         EQU     H'0002'
IOC1                         EQU     H'0001'
IOC0                         EQU     H'0000'

;----- IOCA --------------------------------------------------------------

IOCA5                        EQU     H'0005'
IOCA4                        EQU     H'0004'
IOCA3                        EQU     H'0003'
IOCA2                        EQU     H'0002'
IOCA1                        EQU     H'0001'
IOCA0                        EQU     H'0000'

;----- REFCON -------------------------------------------------------------

BGST                         EQU     H'0005'
VRBB                         EQU     H'0004'
VREN                         EQU     H'0003'
VROE                         EQU     H'0002'
CVROE                        EQU     H'0001'

;----- VRCON Bits ---------------------------------------------------------

C1VREN                       EQU     H'0007'
C2VREN                       EQU     H'0006'
VRR                          EQU     H'0005'
VR3                          EQU     H'0003'
VR2                          EQU     H'0002'
VR1                          EQU     H'0001'
VR0                          EQU     H'0000'

;----- EECON1 -------------------------------------------------------------

WRERR                        EQU     H'0003'
WREN                         EQU     H'0002'
WR                           EQU     H'0001'
RD                           EQU     H'0000'

;----- ADCON1 -------------------------------------------------------------

ADCS2                        EQU     H'0006'
ADCS1                        EQU     H'0005'
ADCS0                        EQU     H'0004'

;----- PWMCON1 -------------------------------------------------------------

COMOD1                       EQU     H'0006'
COMOD0                       EQU     H'0005'
CMDLY4                       EQU     H'0004'
CMDLY3                       EQU     H'0003'
CMDLY2                       EQU     H'0002'
CMDLY1                       EQU     H'0001'
CMDLY0                       EQU     H'0000'

;----- PWMCON0 -------------------------------------------------------------

PRSEN                        EQU     H'0007'
PASEN                        EQU     H'0006'
BLANK2                       EQU     H'0005'
BLANK1                       EQU     H'0004'
SYNC1                        EQU     H'0003'
SYNC0                        EQU     H'0002'
PH2EN                        EQU     H'0001'
PH1EN                        EQU     H'0000'

;----- PWMCLK -------------------------------------------------------------

PWMASE                       EQU     H'0007'
PWMP1                        EQU     H'0006'
PWMP0                        EQU     H'0005'
PER4                         EQU     H'0004'
PER3                         EQU     H'0003'
PER2                         EQU     H'0002'
PER1                         EQU     H'0001'
PER0                         EQU     H'0000'

;----- PWMPH1 & PWMPH2 ----------------------------------------------------

POL                          EQU     H'0007'
C2EN                         EQU     H'0006'
C1EN                         EQU     H'0005'
PH4                          EQU     H'0004'
PH3                          EQU     H'0003'
PH2                          EQU     H'0002'
PH1                          EQU     H'0001'
PH0                          EQU     H'0000'

;----- CM1CON0 -------------------------------------------------------------

C1ON                         EQU     H'0007'
C1OUT                        EQU     H'0006'
C1OE                         EQU     H'0005'
C1POL                        EQU     H'0004'
C1SP                         EQU     H'0003'
C1R                          EQU     H'0002'
C1CH1                        EQU     H'0001'
C1CH0                        EQU     H'0000'

;----- CM2CON0 -------------------------------------------------------------

C2ON                         EQU     H'0007'
C2OUT                        EQU     H'0006'
C2OE                         EQU     H'0005'
C2POL                        EQU     H'0004'
C2SP                         EQU     H'0003'
C2R                          EQU     H'0002'
C2CH1                        EQU     H'0001'
C2CH0                        EQU     H'0000'

;----- CM2CON1 -------------------------------------------------------------

MC1OUT                       EQU     H'0007'
MC2OUT                       EQU     H'0006'
T1GSS                        EQU     H'0001'
C2SYNC                       EQU     H'0000'

;----- OPA1CON & OPA2CON ---------------------------------------------------

OPAON                        EQU     H'0007'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1FF'
        __BADRAM  H'08'-H'09', H'0D', H'16'-H'17', H'19'-H'1D'
        __BADRAM  H'88'-H'89', H'8D', H'94', H'97', H'C0'-H'EF'
        __BADRAM  H'108'-H'109', H'10C'-H'10F', H'115'-H'118', H'11E'-H'16F'
        __BADRAM  H'188'-H'189', H'18C'-H'1EF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================
		
_FCMEN_ON                    EQU     H'3FFF'
_FCMEN_OFF                   EQU     H'37FF'
_IESO_ON                     EQU     H'3FFF'
_IESO_OFF                    EQU     H'3BFF'
_BOD_ON                      EQU     H'3FFF'
_BOD_NSLEEP                  EQU     H'3EFF'
_BOD_SBODEN                  EQU     H'3DFF'
_BOD_OFF                     EQU     H'3CFF'
_BOR_ON                      EQU     H'3FFF'
_BOR_NSLEEP                  EQU     H'3EFF'
_BOR_SBOREN                  EQU     H'3DFF'
_BOR_OFF                     EQU     H'3CFF'
_CPD_ON                      EQU     H'3F7F'
_CPD_OFF                     EQU     H'3FFF'
_CP_ON                       EQU     H'3FBF'
_CP_OFF                      EQU     H'3FFF'
_MCLRE_ON                    EQU     H'3FFF'
_MCLRE_OFF                   EQU     H'3FDF'
_PWRTE_OFF                   EQU     H'3FFF'
_PWRTE_ON                    EQU     H'3FEF'
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
