	LIST
; P10F200.INC  Standard Header File, Version 1.02    Microchip Technology, Inc.
 	NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC10f200 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /P10F200
;       2. LIST directive in the source file
;               LIST   P=10F200
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;	   Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   04/14/04 Initial Release
;1.01	07/07/04 Add bad ram
;1.02	10/05/05 Add IntRC_OSC comment
;1.03   01/13/06 Added GPIO bit descriptions

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __10F200
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
CAL0			     EQU     H'0001'
FOSC4			     EQU     H'0000'

;----- GPIO Bits --------------------------------------------------------
GP0                         EQU     H'0000'
GP1                         EQU     H'0001'
GP2                         EQU     H'0002'
GP3                         EQU     H'0003'



;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'1F'
	__BADRAM H'07'-H'0F'

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
_IntRC_OSC                   EQU     H'0FFF';IntRC_OSC is the only option.
                                            ;It is here for backwards compatibility
                                            ;only.

	LIST
