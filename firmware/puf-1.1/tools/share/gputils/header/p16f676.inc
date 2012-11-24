        LIST
; P16F676.INC  Standard Header File, Version 1.00    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16F676 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC16F676
;       2. LIST directive in the source file
;               LIST   P=PIC16F676
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================
;1.00   05/13/02 Original

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16F676
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
PIR1			     EQU     H'000C'

TMR1L			     EQU     H'000E'		
TMR1H			     EQU     H'000F'		
T1CON			     EQU     H'0010'		

CMCON			     EQU     H'0019'		

ADRESH			     EQU     H'001E'		
ADCON0			     EQU     H'001F'		


OPTION_REG	             EQU     H'0081'

TRISA			     EQU     H'0085'
TRISC			     EQU     H'0087'

PIE1			     EQU     H'008C'

PCON			     EQU     H'008E'

OSCCAL			     EQU     H'0090'
ANSEL			     EQU     H'0091'		

WPU			     EQU     H'0095'
WPUA			     EQU     H'0095'
IOC			     EQU     H'0096'
IOCA			     EQU     H'0096'

VRCON			     EQU     H'0099'
EEDATA			     EQU     H'009A'	
EEDAT			     EQU     H'009A'	
EEADR			     EQU     H'009B'	
EECON1			     EQU     H'009C'
EECON2			     EQU     H'009D'
ADRESL			     EQU     H'009E'		
ADCON1			     EQU     H'009F'


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
CMIF                         EQU     H'0003'
T1IF                         EQU     H'0000'
TMR1IF                       EQU     H'0000'

;----- T1CON Bits ---------------------------------------------------------

TMR1GE                       EQU     H'0006'
T1CKPS1                      EQU     H'0005'
T1CKPS0                      EQU     H'0004'
T1OSCEN                      EQU     H'0003'
NOT_T1SYNC                   EQU     H'0002'
TMR1CS                       EQU     H'0001'
TMR1ON                       EQU     H'0000'

;----- COMCON Bits --------------------------------------------------------

COUT                         EQU     H'0006'
CINV                         EQU     H'0004'
CIS                          EQU     H'0003'
CM2                          EQU     H'0002'
CM1                          EQU     H'0001'
CM0                          EQU     H'0000'

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

NOT_GPPU            		     EQU     H'0007'
NOT_RAPU		                 EQU     H'0007'
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
CMIE                         EQU     H'0003'
T1IE                         EQU     H'0000'
TMR1IE                       EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

NOT_POR                      EQU     H'0001'
NOT_BOD                      EQU     H'0000'

;----- OSCCAL Bits --------------------------------------------------------

CAL5                         EQU     H'0007'
CAL4                         EQU     H'0006'
CAL3                         EQU     H'0005'
CAL2                         EQU     H'0004'
CAL1                         EQU     H'0003'
CAL0                         EQU     H'0002'

;----- ANSEL --------------------------------------------------------------

ANS7                         EQU     H'0007'
ANS6                         EQU     H'0006'
ANS5                         EQU     H'0005'
ANS4                         EQU     H'0004'
ANS3                         EQU     H'0003'
ANS2                         EQU     H'0002'
ANS1                         EQU     H'0001'
ANS0                         EQU     H'0000'

;----- VRCON Bits ---------------------------------------------------------

VREN                         EQU     H'0007'
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

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'FF'
        __BADRAM H'06', H'08'-H'09', H'0D', H'11'-H'18', H'1A'-H'1D', H'60'-H'7F'
        __BADRAM H'86', H'88'-H'89', H'8D', H'8F', H'92'-H'94', H'97'-H'98', H'E0'-H'FF'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_CPD                         EQU     H'3EFF'
_CPD_OFF                     EQU     H'3FFF'
_CP                          EQU     H'3F7F'
_CP_OFF                      EQU     H'3FFF'
_BODEN                       EQU     H'3FFF'
_BODEN_OFF                   EQU     H'3FBF'
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

        LIST
