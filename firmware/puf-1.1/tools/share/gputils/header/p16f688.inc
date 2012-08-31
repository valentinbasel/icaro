        LIST
; P16F688.INC  Standard Header File, Version 1.00    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16F688 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16F688
;       2. LIST directive in the source file
;               LIST   P=PIC16F688
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================
;1.00   07/28/03 Original
;1.01	09/02/03 Modified to match datasheet
;1.02 09/19/03 Changed CMCON1 from 0x20 to 0x1A (pas)
;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16F688
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

PORTC                        EQU     H'0007'

PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'

TMR1L                        EQU     H'000E'		
TMR1H                        EQU     H'000F'		
T1CON                        EQU     H'0010'		
BAUDCTL                      EQU     H'0011'
SPBRGH                       EQU     H'0012'
SPBRG                        EQU     H'0013'
RCREG                        EQU     H'0014'
TXREG                        EQU     H'0015'
TXSTA                        EQU     H'0016'
RCSTA                        EQU     H'0017'
WDTCON                       EQU     H'0018'
CMCON0                       EQU     H'0019'		
CMCON1                       EQU     H'001A'		

ADRESH                       EQU     H'001E'		
ADCON0                       EQU     H'001F'		


OPTION_REG                   EQU     H'0081'

TRISA                        EQU     H'0085'
TRISC                        EQU     H'0087'

PIE1                         EQU     H'008C'

PCON                         EQU     H'008E'
OSCCON                       EQU     H'008F'
OSCTUNE	               	     EQU     H'0090'
ANSEL                        EQU     H'0091'

WPU                          EQU     H'0095'
WPUA                         EQU     H'0095'
IOC                          EQU     H'0096'
IOCA                         EQU     H'0096'
EEDATH                       EQU     H'0097'
EEADRH                       EQU     H'0098'
VRCON                        EQU     H'0099'
EEDAT                        EQU     H'009A'	
EEDATA                       EQU     H'009A'	
EEADR                        EQU     H'009B'	
EECON1                       EQU     H'009C'
EECON2                       EQU     H'009D'
ADRESL                       EQU     H'009E'		
ADCON1                       EQU     H'009F'


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
RCIF                         EQU     H'0005'
C2IF                         EQU     H'0004'
C1IF                         EQU     H'0003'
OSFIF                        EQU     H'0002'
TXIF                         EQU     H'0001'
T1IF                         EQU     H'0000'
TMR1IF                       EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------

T1GINV                       EQU     H'0007'
TMR1GE                       EQU     H'0006'
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
TMR1CS                       EQU     H'0001'
TMR1ON                       EQU     H'0000'

;----- BAUDCTL Bits --------------------------------------------------------

ABDOVF                       EQU     H'0007'
RCIDL                        EQU     H'0006'
SCKP                         EQU     H'0004'
BRG16                        EQU     H'0003'
WUE                          EQU     H'0001'
ABDEN                        EQU     H'0000'

;----- TXSTA Bits --------------------------------------------------------

CSRC                         EQU     H'0007'
TX9                          EQU     H'0006'
TXEN                         EQU     H'0005'
SYNC                         EQU     H'0004'
SENDB                        EQU     H'0003'
BRGH                         EQU     H'0002'
TRMT                         EQU     H'0001'
TX9D                         EQU     H'0000'

;----- RCSTA Bits --------------------------------------------------------

SPEN                         EQU     H'0007'
RX9                          EQU     H'0006'
SREN                         EQU     H'0005'
CREN                         EQU     H'0004'
ADDEN                        EQU     H'0003'
FERR                         EQU     H'0002'
OERR                         EQU     H'0001'
RX9D                         EQU     H'0000'
;----- WDTCON Bits --------------------------------------------------------

WDTPS3                       EQU     H'0004'
WDTPS2                       EQU     H'0003'
WDTPS1                       EQU     H'0002'
WDTPS0                       EQU     H'0001'
SWDTEN                       EQU     H'0000'

;----- COMCON0 Bits -------------------------------------------------------

C2OUT                        EQU     H'0007'
C1OUT                        EQU     H'0006'
C2INV                        EQU     H'0005'
C1INV                        EQU     H'0004'
CIS                          EQU     H'0003'
CM2                          EQU     H'0002'
CM1                          EQU     H'0001'
CM0                          EQU     H'0000'

;----- COMCON1 Bits -------------------------------------------------------

T1GSS                        EQU      H'0001'
C2SYNC                       EQU      H'0000'

;----- ADCON0 Bits --------------------------------------------------------

ADFM                         EQU     H'0007'
VCFG                         EQU     H'0006'
CHS2                         EQU     H'0004'
CHS1                         EQU     H'0003'
CHS0                         EQU     H'0002'
GO                           EQU     H'0001'
NOT_DONE                     EQU     H'0001'
GO_DONE                      EQU     H'0001'
ADON                         EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RAPU                     EQU     H'0007'
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
C2IE                         EQU     H'0004'
C1IE                         EQU     H'0003'
OSFIE                        EQU     H'0002'
TXIE                         EQU     H'0001'
T1IE                         EQU     H'0000'
TMR1IE                       EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

ULPWUE                       EQU     H'0005'
SBODEN                       EQU     H'0004'
NOT_POR                      EQU     H'0001'
NOT_BOD                      EQU     H'0000'

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

;----- ANSEL --------------------------------------------------------------

ANS7                         EQU     H'0007'
ANS6                         EQU     H'0006'
ANS5                         EQU     H'0005'
ANS4                         EQU     H'0004'
ANS3                         EQU     H'0003'
ANS2                         EQU     H'0002'
ANS1                         EQU     H'0001'
ANS0                         EQU     H'0000'

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

;----- VRCON Bits ---------------------------------------------------------

VREN                         EQU     H'0007'
VRR                          EQU     H'0005'
VR3                          EQU     H'0003'
VR2                          EQU     H'0002'
VR1                          EQU     H'0001'
VR0                          EQU     H'0000'

;----- EECON1 -------------------------------------------------------------

EEPGD                        EQU     H'0007'
WRERR                        EQU     H'0003'
WREN                         EQU     H'0002'
WR                           EQU     H'0001'
RD                           EQU     H'0000'

;----- ADCON1 -------------------------------------------------------------

ADCS2                        EQU     H'0006'
ADCS1                        EQU     H'0005'
ADCS0                        EQU     H'0004'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1FF'
        __BADRAM H'06', H'08'-H'09', H'0D', H'1B'-H'1D'
        __BADRAM H'86', H'88'-H'89', H'8D', H'92'-H'94'
	__BADRAM H'106', H'108'-H'109', H'10C'-H'11F'
        __BADRAM H'186', H'188'-H'189', H'18C'-H'18D', H'190'-H'1EF'

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
