	LIST
; P10F220.INC  Standard Header File, Version 1.01    Microchip Technology, Inc.
	NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC10f220 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /P10F220
;       2. LIST directive in the source file
;               LIST   P=10F220
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;	   Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   01/19/05 Initial Release
;1.01	08/09/05 fixed formatting and corrected osc speed select fuse name
;1.02   01/13/06 Added GPIO bit descriptions


;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __10F220
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
GPIO                         EQU     H'0006'
ADCON0                       EQU     H'0007'
ADRES                        EQU     H'0008'			     

;----- STATUS Bits --------------------------------------------------------

GPWUF                        EQU     H'0007'
NOT_TO                       EQU     H'0004'
NOT_PD                       EQU     H'0003'
Z                            EQU     H'0002'
DC                           EQU     H'0001'
C                            EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_GPWU                     EQU     H'0007'
NOT_GPPU                     EQU     H'0006'
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
FOSC4                        EQU     H'0000'

;----- GPIO Bits --------------------------------------------------------
GP0                         EQU     H'0000'
GP1                         EQU     H'0001'
GP2                         EQU     H'0002'
GP3                         EQU     H'0003'

;----- ADCON0 Bits --------------------------------------------------------

ANS1                         EQU     H'0007'
ANS0                         EQU     H'0006'
CHS1                         EQU     H'0003'
CHS0                         EQU     H'0002'
GO                           EQU     H'0001'
NOT_DONE                     EQU     H'0001'
ADON                         EQU     H'0000'

;----- ADRES Bits --------------------------------------------------------

ADRES7                       EQU     H'0007'
ADRES6                       EQU     H'0006'
ADRES5                       EQU     H'0005'
ADRES4                       EQU     H'0004'
ADRES3                       EQU     H'0003'
ADRES2                       EQU     H'0002'
ADRES1                       EQU     H'0001'
ADRES0                       EQU     H'0000'


;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1F'
	__BADRAM H'09'-H'0F'
;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_MCLRE_ON                    EQU     H'0FFF'
_MCLRE_OFF                   EQU     H'0FEF'
_CP_ON                       EQU     H'0FF7'
_CP_OFF                      EQU     H'0FFF'
_WDT_ON                      EQU     H'0FFF'
_WDT_OFF                     EQU     H'0FFB'
_MCPU_ON                     EQU     H'0FFD'
_MCPU_OFF                    EQU     H'0FFF'
_IOFSCS_8MHZ                 EQU     H'0FFF'
_IOFSCS_4MHZ                 EQU     H'0FFE'
_IOSCFS_8MHZ                 EQU     H'0FFF' ;Matches datasheet
_IOSCFS_4MHZ                 EQU     H'0FFE' ;Matches datasheet

	LIST
