        LIST
; P16F631.INC  Standard Header File, Version 1.00    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16F631 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16F631
;       2. LIST directive in the source file
;               LIST   P=PIC16F631
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================
;1.00   10/28/05 Original
;1.01	11/08/05 Removed unimplemented bits
;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16F631
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
PIR2                         EQU     H'000D'
TMR1L                        EQU     H'000E'		
TMR1H                        EQU     H'000F'		
T1CON                        EQU     H'0010'		

OPTION_REG                   EQU     H'0081'

TRISA                        EQU     H'0085'
TRISB                        EQU     H'0086'
TRISC                        EQU     H'0087'

PIE1                         EQU     H'008C'
PIE2                         EQU     H'008D'
PCON                         EQU     H'008E'
OSCCON                       EQU     H'008F'
OSCTUNE	               	     EQU     H'0090'

WPU                          EQU     H'0095'
WPUA                         EQU     H'0095'
IOC                          EQU     H'0096'
IOCA                         EQU     H'0096'
WDTCON                       EQU     H'0097'

EEDAT                        EQU     H'010C'
EEDATA                       EQU     H'010C'
EEADR                        EQU     H'010D'

WPUB                         EQU     H'0115'
IOCB                         EQU     H'0116'

VRCON                        EQU     H'0118'
CM1CON0                      EQU     H'0119'
CM2CON0                      EQU     H'011A'
CM2CON1                      EQU     H'011B'

ANSEL                        EQU     H'011E'

EECON1                       EQU     H'018C'
EECON2                       EQU     H'018D'

SRCON                        EQU     H'019E'



;----- BANK 0 REGISTER DEFINITIONS ----------------------------------------
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
RABIE                        EQU     H'0003'
T0IF                         EQU     H'0002'
INTF                         EQU     H'0001'
RABIF                        EQU     H'0000'

;----- PIR1 Bits ----------------------------------------------------------

T1IF                         EQU     H'0000'
TMR1IF                       EQU     H'0000'

;----- PIR2 Bits ----------------------------------------------------------

OSFIF                        EQU     H'0007'
C2IF                         EQU     H'0006'
C1IF                         EQU     H'0005'
EEIF                         EQU     H'0004'

;----- T1CON Bits ---------------------------------------------------------

T1GINV                       EQU     H'0007'
TMR1GE                       EQU     H'0006'
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
TMR1CS                       EQU     H'0001'
TMR1ON                       EQU     H'0000'

;----- BANK 1 REGISTER DEFINITIONS ----------------------------------------
;----- OPTION Bits --------------------------------------------------------

NOT_RABPU            	     EQU     H'0007'
INTEDG                       EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- TRISA Bits --------------------------------------------------------

TRISA5                       EQU     H'0005'
TRISA4                       EQU     H'0004'
TRISA3                       EQU     H'0003'
TRISA2                       EQU     H'0002'
TRISA1                       EQU     H'0001'
TRISA0                       EQU     H'0000'

;----- TRISB Bits --------------------------------------------------------

TRISB7                       EQU     H'0007'
TRISB6                       EQU     H'0006'
TRISB5                       EQU     H'0005'
TRISB4                       EQU     H'0004'

;----- TRISC Bits --------------------------------------------------------

TRISC7                       EQU     H'0007'
TRISC6                       EQU     H'0006'
TRISC5                       EQU     H'0005'
TRISC4                       EQU     H'0004'
TRISC3                       EQU     H'0003'
TRISC2                       EQU     H'0002'
TRISC1                       EQU     H'0001'
TRISC0                       EQU     H'0000'

;----- PIE1 Bits ----------------------------------------------------------

T1IE                         EQU     H'0000'
TMR1IE                       EQU     H'0000'

;----- PIE2 Bits ----------------------------------------------------------

OSFIE                        EQU     H'0007'
C2IE                         EQU     H'0006'
C1IE                         EQU     H'0005'
EEIE                         EQU     H'0004'

;----- PCON Bits ----------------------------------------------------------

ULPWUE                       EQU     H'0005'
SBOREN                       EQU     H'0004'
POR                          EQU     H'0001'
NOT_POR                      EQU     H'0001'
BOR                          EQU     H'0000'
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

;----- WPUA --------------------------------------------------------------

WPUA5                        EQU     H'0005'
WPUA4                        EQU     H'0004'

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

;----- WDTCON Bits --------------------------------------------------------

WDTPS3                       EQU     H'0004'
WDTPS2                       EQU     H'0003'
WDTPS1                       EQU     H'0002'
WDTPS0                       EQU     H'0001'
SWDTEN                       EQU     H'0000'

;----- BANK 2 REGISTER DEFINITIONS ----------------------------------------
;----- WPUB Bits ----------------------------------------------------------

WPUB7                        EQU     H'0007'
WPUB6                        EQU     H'0006'
WPUB5                        EQU     H'0005'
WPUB4                        EQU     H'0004'

;----- IOCB --------------------------------------------------------------

IOCB7                        EQU     H'0007'
IOCB6                        EQU     H'0006'
IOCB5                        EQU     H'0005'
IOCB4                        EQU     H'0004'

;----- VRCON Bits ---------------------------------------------------------

C1VREN                       EQU     H'0007'
C2VREN                       EQU     H'0006'
VRR                          EQU     H'0005'
VP6EN                        EQU     H'0004'
VR3                          EQU     H'0003'
VR2                          EQU     H'0002'
VR1                          EQU     H'0001'
VR0                          EQU     H'0000'

;----- CM1CON0 Bits -------------------------------------------------------

C1ON                         EQU     H'0007'
C1OUT                        EQU     H'0006'
C1OE                         EQU     H'0005'
C1POL                        EQU     H'0004'

C1R                          EQU     H'0002'
C1CH1                        EQU     H'0001'
C1CH0                        EQU     H'0000'

;----- CM2CON0 Bits -------------------------------------------------------

C2ON                         EQU     H'0007'
C2OUT                        EQU     H'0006'
C2OE                         EQU     H'0005'
C2POL                        EQU     H'0004'

C2R                          EQU     H'0002'
C2CH1                        EQU     H'0001'
C2CH0                        EQU     H'0000'

;----- CM2CON1 Bits -------------------------------------------------------

MC1OUT                       EQU      H'0007'
MC2OUT                       EQU      H'0006'
T1GSS                        EQU      H'0001'
C2SYNC                       EQU      H'0000'

;----- ANSEL --------------------------------------------------------------

ANS7                         EQU     H'0007'
ANS6                         EQU     H'0006'
ANS5                         EQU     H'0005'
ANS4                         EQU     H'0004'

ANS1                         EQU     H'0001'
ANS0                         EQU     H'0000'

;----- BANK 3 REGISTER DEFINITIONS ----------------------------------------
;----- EECON1 -------------------------------------------------------------

WRERR                        EQU     H'0003'
WREN                         EQU     H'0002'
WR                           EQU     H'0001'
RD                           EQU     H'0000'

;----- SRCON ---------------------------------------------------------------

SR1                           EQU     H'0007'
SR0                           EQU     H'0006'
C1SEN                         EQU     H'0005'
C2REN                         EQU     H'0004'
PULSS                         EQU     H'0003'
PULSR                         EQU     H'0002'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1FF'
        __BADRAM H'08'-H'09', H'11'-H'3F'
        __BADRAM H'88'-H'89', H'91'-H'94', H'98'-H'EF'
        __BADRAM H'108'-H'109', H'10E'-H'114', H'117', H'11C'-H'11D', H'11F'-H'16F'
        __BADRAM H'188'-H'189', H'18E'-H'19D', H'19F'-H'1EF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================
		
_FCMEN_ON                    EQU     H'3FFF'
_FCMEN_OFF                   EQU     H'37FF'
_IESO_ON                     EQU     H'3FFF'
_IESO_OFF                    EQU     H'3BFF'
_BOR_ON                      EQU     H'3FFF'
_BOR_NSLEEP                  EQU     H'3EFF'
_BOR_SBODEN                  EQU     H'3DFF'
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
