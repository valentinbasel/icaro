	LIST
; P16F506.INC  Standard Header File, Version 1.10    Microchip Technology, Inc.
	NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16F506 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /P16F506
;       2. LIST directive in the source file
;               LIST   P=16F506
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;	   Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   12/13/04  Initial Release
;1.01	13/15/04  Added EC osc mode, COrrected CP on
;1.02	07/14/05  Updated Comparator names, comparator register bit names, and Oscillator fuse options
;1.03   08/26/05  Added port bit names

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __16F506
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                            EQU     H'0000'
F                            EQU     H'0001'

;----- Register Files -----------------------------------------------------

INDF                         EQU     H'0000'
TMR0                         EQU     H'0001'
PCL                          EQU     H'0002'
STATUS                       EQU     H'0003'
FSR                          EQU     H'0004'
OSCCAL                       EQU     H'0005'
PORTB                        EQU     H'0006'
PORTC                        EQU     H'0007'
CM1CON0                      EQU     H'0008'
ADCON0                       EQU     H'0009'
ADRES                        EQU     H'000A'
CM2CON0                      EQU     H'000B'	
VRCON                        EQU     H'000C'

;----- STATUS Bits --------------------------------------------------------

RBWUF                        EQU     H'0007'
CWUF                         EQU     H'0006'
PA0                          EQU     H'0005'
NOT_TO                       EQU     H'0004'
NOT_PD                       EQU     H'0003'
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RBWU                     EQU     H'0007'
NOT_RBPU                     EQU     H'0006'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;----- OSCCAL Bits --------------------------------------------------------

CAL6                         EQU     H'0007'                            
CAL5                         EQU     H'0006'
CAL4                         EQU     H'0005'
CAL3                         EQU     H'0004'
CAL2                         EQU     H'0003'
CAL1                         EQU     H'0002'
CAL0                         EQU     H'0001'

;----- CM1CON0 Bits --------------------------------------------------------

C1OUT                        EQU     H'0007'	
NOT_C1OUTEN                  EQU     H'0006'
C1POL                        EQU     H'0005'
NOT_C1T0CS                   EQU     H'0004'
C1ON                         EQU     H'0003'
C1NREF                       EQU     H'0002'
C1PREF                       EQU     H'0001'	
NOT_C1WU                     EQU     H'0000'

;----- ADCON0 Bits --------------------------------------------------------

ANS1                         EQU     H'0007'	
ANS0                         EQU     H'0006'
ADCS1                        EQU     H'0005'
ADCS0                        EQU     H'0004'
CHS1                         EQU     H'0003'
CHS0                         EQU     H'0002'
GO                           EQU     H'0001'	
NOT_DONE                     EQU     H'0001'
ADON                         EQU     H'0000'

;----- CM2CON0 Bits --------------------------------------------------------

C2OUT                        EQU     H'0007'	
NOT_C2OUTEN                  EQU     H'0006'
C2POL                        EQU     H'0005'
C2PREF2                      EQU     H'0004'
C2ON                         EQU     H'0003'
C2NREF                       EQU     H'0002'
C2PREF1                      EQU     H'0001'	
NOT_C2WU                     EQU     H'0000'

;----- VRCON Bits --------------------------------------------------------

VREN                         EQU     H'0007'	
VROE                         EQU     H'0006'
VRR                          EQU     H'0005'
VR3                          EQU     H'0003'
VR2                          EQU     H'0002'
VR1                          EQU     H'0001'	
VR0                          EQU     H'0000'

;----- PORTB Bits --------------------------------------------------------
RB0                          EQU     H'0000'
RB1                          EQU     H'0001'
RB2                          EQU     H'0002'
RB3                          EQU     H'0003'
RB4                          EQU     H'0004'
RB5                          EQU     H'0005'

;----- PORTC Bits --------------------------------------------------------
RC0                          EQU     H'0000'
RC1                          EQU     H'0001'
RC2                          EQU     H'0002'
RC3                          EQU     H'0003'
RC4                          EQU     H'0004'
RC5                          EQU     H'0005'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'7F'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_IOSCFS_ON                   EQU     H'0FFF'
_IOSCFS_OFF                  EQU     H'0FBF'	
_MCLRE_ON                    EQU     H'0FFF'
_MCLRE_OFF                   EQU     H'0FDF'
_CP_ON                       EQU     H'0FEF'
_CP_OFF                      EQU     H'0FFF'
_WDT_ON                      EQU     H'0FFF'
_WDT_OFF                     EQU     H'0FF7'
_LP_OSC                      EQU     H'0FF8'
_XT_OSC                      EQU     H'0FF9'
_HS_OSC                      EQU     H'0FFA'
_EC_OSC                      EQU     H'0FFB'
_IntRC_OSC_RB4EN             EQU     H'0FFC'
_IntRC_OSC_CLKOUTEN          EQU     H'0FFD'
_ExtRC_OSC_RB4EN             EQU     H'0FFE'
_ExtRC_OSC_CLKOUTEN          EQU     H'0FFF'

	LIST
