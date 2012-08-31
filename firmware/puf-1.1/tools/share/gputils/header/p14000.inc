        LIST
; P14000.INC  Standard Header File, Version 1.01    Microchip Technology, Inc.
        NOLIST

; This header file defines configurations, registers, and other useful bits of
; information for the PIC14000 microcontroller.  These names are taken to match 
; the data sheets as closely as possible.  

; Note that the processor must be selected before this file is 
; included.  The processor may be selected the following ways:

;       1. Command line switch:
;               C:\ MPASM MYFILE.ASM /PIC14000
;       2. LIST directive in the source file
;               LIST   P=PIC14000
;       3. Processor Type entry in the MPASM full-screen interface

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.01   11/18/96 SSR 2824 Updated according to Applications' requirements
;1.00   10/31/95 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================

        IFNDEF __14000 
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
PORTD                        EQU     H'0008'
PCLATH                       EQU     H'000A'
INTCON                       EQU     H'000B'
PIR1                         EQU     H'000C'
ADTMRL                       EQU     H'000E'
ADTMRH                       EQU     H'000F'
I2CBUF                       EQU     H'0013'
I2CCON                       EQU     H'0014'
ADCAPL                       EQU     H'0015'
ADCAPH                       EQU     H'0016'
ADCON0                       EQU     H'001F'
   
OPTION_REG                   EQU     H'0081'
TRISA                        EQU     H'0085'
TRISC                        EQU     H'0087'
TRISD                        EQU     H'0088'
PIE1                         EQU     H'008C'
PCON                         EQU     H'008E'
SLPCON                       EQU     H'008F'
I2CADD                       EQU     H'0093'
I2CSTAT                      EQU     H'0094'
LDACA                        EQU     H'009B'
PREFA                        EQU     H'009B'
LDACB                        EQU     H'009C'
PREFB                        EQU     H'009C'
CHGCON                       EQU     H'009D'
CMCON                        EQU     H'009D'
MISC                         EQU     H'009E'
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
T0IF                         EQU     H'0002'

;----- PIR1 Bits ----------------------------------------------------------

WUIF                         EQU     H'0007'
CMIF                         EQU     H'0007'
PBIF                         EQU     H'0004'
I2CIF                        EQU     H'0003'
RCIF                         EQU     H'0002'
ADCIF                        EQU     H'0001'
OVFIF                        EQU     H'0000'

;----- I2CCON Bits --------------------------------------------------------

WCOL                         EQU     H'0007'
I2COV                        EQU     H'0006'
I2CEN                        EQU     H'0005'
CKP                          EQU     H'0004'
I2CM3                        EQU     H'0003'
I2CM2                        EQU     H'0002'
I2CM1                        EQU     H'0001'
I2CM0                        EQU     H'0000'

;----- ADCON0 Bits --------------------------------------------------------

ADCS3                        EQU     H'0007'
ADCS2                        EQU     H'0006'
ADCS1                        EQU     H'0005'
ADCS0                        EQU     H'0004'
AMUXOE                       EQU     H'0002'
ADRST                        EQU     H'0001'
ADZERO                       EQU     H'0000'

;----- OPTION Bits --------------------------------------------------------

NOT_RCPU                     EQU     H'0007'
T0CS                         EQU     H'0005'
T0SE                         EQU     H'0004'
PSA                          EQU     H'0003'
PS2                          EQU     H'0002'
PS1                          EQU     H'0001'
PS0                          EQU     H'0000'

;---- PIE1 Bits ----------------------------------------------------------

WUIE                         EQU     H'0007'
CMIE                         EQU     H'0007'
PBIE                         EQU     H'0004'
I2CIE                        EQU     H'0003'
RCIE                         EQU     H'0002'
ADCIE                        EQU     H'0001'
OVFIE                        EQU     H'0000'

;----- PCON Bits ----------------------------------------------------------

NOT_POR                      EQU     H'0001'
NOT_LVD                      EQU     H'0000'

;----- SLPCON -------------------------------------------------------------

HIBEN                        EQU     H'0007'
REFOFF                       EQU     H'0005'
BIASOFF                      EQU     H'0004'
LSOFF                        EQU     H'0004'
OSCOFF                       EQU     H'0003'
CWUOFF                       EQU     H'0002'
CMOFF                        EQU     H'0002'
TEMPOFF                      EQU     H'0001'
ADOFF                        EQU     H'0000'

;----- I2CSTAT Bits -------------------------------------------------------

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

;----- CMCON --------------------------------------------------------------

CCOMPB                       EQU     H'0006'
CMBOUT                       EQU     H'0006'
CCBEN                        EQU     H'0005'
CMBOE                        EQU     H'0005'
CPOLB                        EQU     H'0004'
CCOMPA                       EQU     H'0002'
CMAOUT                       EQU     H'0002'
CCAEN                        EQU     H'0001'
CMAOE                        EQU     H'0001'
CPOLA                        EQU     H'0000'

;----- MISC Bits ----------------------------------------------------------

SMHOG                        EQU     H'0007'
SPGNDB                       EQU     H'0006'
SPGNDA                       EQU     H'0005'
I2CSEL                       EQU     H'0004'
SMBUS                        EQU     H'0003'
INCLKEN                      EQU     H'0002'
OSC2                         EQU     H'0001'
OSC1                         EQU     H'0000'

;----- ADCON1 Bits --------------------------------------------------------

ADDAC3                       EQU     H'0007'
ADDAC2                       EQU     H'0006'
ADDAC1                       EQU     H'0005'
ADDAC0                       EQU     H'0004'
ACFG3                        EQU     H'0003'
PCFG3                        EQU     H'0003'
ACFG2                        EQU     H'0002'
PCFG2                        EQU     H'0002'
ACFG1                        EQU     H'0001'
ACFG1                        EQU     H'0001'
ACFG0                        EQU     H'0000'
ACFG0                        EQU     H'0000'

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

        __MAXRAM H'0FF'
        __BADRAM H'06',H'09',H'0D',H'10'-H'12',H'17'-H'1E'
        __BADRAM H'86',H'89',H'8D',H'90'-H'92',H'95'-H'9A'

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_CPC_ON                      EQU     H'1E7F'
_CPC_OFF                     EQU     H'3FFF'
_CPU_ON                      EQU     H'2DDF'
_CPU_OFF                     EQU     H'3FFF'
_CPP_ON                      EQU     H'33EF'
_CPP_OFF                     EQU     H'3FFF'
_PWRTE_ON                    EQU     H'3FF7'
_PWRTE_OFF                   EQU     H'3FFF'
_WDT_ON                      EQU     H'3FFF'
_WDT_OFF                     EQU     H'3FFB'
_FOSC_HS                     EQU     H'3FFE'
_FOSC_RC                     EQU     H'3FFF'

	LIST
