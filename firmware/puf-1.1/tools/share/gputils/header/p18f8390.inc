        LIST

;==========================================================================
;  $Id: p18f8390.inc,v 1.3 2006/08/19 02:39:43 craigfranklin Exp $
;  MPASM PIC18F8390 processor include
; 
;  (c) Copyright 1999-2005 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F8390 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC18F8390
;       2. LIST directive in the source file
;               LIST   P=PIC18F8390
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F8390
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF

;==========================================================================
;       18xxxx Family        EQUates
;==========================================================================
FSR0            EQU 0
FSR1            EQU 1
FSR2            EQU 2

FAST            EQU 1

W               EQU 0
A               EQU 0
ACCESS          EQU 0
BANKED          EQU 1
;==========================================================================

;==========================================================================
;       16Cxxx/17Cxxx Substitutions
;==========================================================================
  #define DDRA  TRISA      ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB      ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC      ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD      ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE      ; PIC17Cxxx SFR substitution

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------
LCDPS            EQU  H'0F58'
LCDCON           EQU  H'0F59'
LCDSE0           EQU  H'0F5A'
LCDSE1           EQU  H'0F5B'
LCDSE2           EQU  H'0F5C'
LCDSE3           EQU  H'0F5D'
LCDSE4           EQU  H'0F5E'
LCDSE5           EQU  H'0F5F'
LCDDATA0         EQU  H'0F60'
LCDDATA1         EQU  H'0F61'
LCDDATA2         EQU  H'0F62'
LCDDATA3         EQU  H'0F63'
LCDDATA4         EQU  H'0F64'
LCDDATA5         EQU  H'0F65'
LCDDATA6         EQU  H'0F66'
LCDDATA7         EQU  H'0F67'
LCDDATA8         EQU  H'0F68'
LCDDATA9         EQU  H'0F69'
LCDDATA10        EQU  H'0F6A'
RCSTA2           EQU  H'0F6B'
TXSTA2           EQU  H'0F6C'
TXREG2           EQU  H'0F6D'
RCREG2           EQU  H'0F6E'
SPBRG2           EQU  H'0F6F'
LCDDATA11        EQU  H'0F70'
LCDDATA12        EQU  H'0F71'
LCDDATA13        EQU  H'0F72'
LCDDATA14        EQU  H'0F73'
LCDDATA15        EQU  H'0F74'
LCDDATA16        EQU  H'0F75'
LCDDATA17        EQU  H'0F76'
LCDDATA18        EQU  H'0F77'
LCDDATA19        EQU  H'0F78'
LCDDATA20        EQU  H'0F79'
LCDDATA21        EQU  H'0F7A'
LCDDATA22        EQU  H'0F7B'
LCDDATA23        EQU  H'0F7C'
BAUDCON1         EQU  H'0F7E'
BAUDCTL1         EQU  H'0F7E'
SPBRGH1          EQU  H'0F7F'
PORTA            EQU  H'0F80'
PORTB            EQU  H'0F81'
PORTC            EQU  H'0F82'
PORTD            EQU  H'0F83'
PORTE            EQU  H'0F84'
PORTF            EQU  H'0F85'
PORTG            EQU  H'0F86'
PORTH            EQU  H'0F87'
PORTJ            EQU  H'0F88'
LATA             EQU  H'0F89'
LATB             EQU  H'0F8A'
LATC             EQU  H'0F8B'
LATD             EQU  H'0F8C'
LATE             EQU  H'0F8D'
LATF             EQU  H'0F8E'
LATG             EQU  H'0F8F'
LATH             EQU  H'0F90'
LATJ             EQU  H'0F91'
DDRA             EQU  H'0F92'
TRISA            EQU  H'0F92'
DDRB             EQU  H'0F93'
TRISB            EQU  H'0F93'
DDRC             EQU  H'0F94'
TRISC            EQU  H'0F94'
DDRD             EQU  H'0F95'
TRISD            EQU  H'0F95'
DDRE             EQU  H'0F96'
TRISE            EQU  H'0F96'
DDRF             EQU  H'0F97'
TRISF            EQU  H'0F97'
DDRG             EQU  H'0F98'
TRISG            EQU  H'0F98'
DDRH             EQU  H'0F99'
TRISH            EQU  H'0F99'
DDRJ             EQU  H'0F9A'
TRISJ            EQU  H'0F9A'
OSCTUNE          EQU  H'0F9B'
PIE1             EQU  H'0F9D'
PIR1             EQU  H'0F9E'
IPR1             EQU  H'0F9F'
PIE2             EQU  H'0FA0'
PIR2             EQU  H'0FA1'
IPR2             EQU  H'0FA2'
PIE3             EQU  H'0FA3'
PIR3             EQU  H'0FA4'
IPR3             EQU  H'0FA5'
RCSTA            EQU  H'0FAB'
RCSTA1           EQU  H'0FAB'
TXSTA            EQU  H'0FAC'
TXSTA1           EQU  H'0FAC'
TXREG            EQU  H'0FAD'
TXREG1           EQU  H'0FAD'
RCREG1           EQU  H'0FAE'
SPBRG            EQU  H'0FAF'
SPBRG1           EQU  H'0FAF'
T3CON            EQU  H'0FB1'
TMR3L            EQU  H'0FB2'
TMR3H            EQU  H'0FB3'
CMCON            EQU  H'0FB4'
CVRCON           EQU  H'0FB5'
CCP2CON          EQU  H'0FBA'
CCPR2            EQU  H'0FBB'
CCPR2L           EQU  H'0FBB'
CCPR2H           EQU  H'0FBC'
CCP1CON          EQU  H'0FBD'
CCPR1            EQU  H'0FBE'
CCPR1L           EQU  H'0FBE'
CCPR1H           EQU  H'0FBF'
ADCON2           EQU  H'0FC0'
ADCON1           EQU  H'0FC1'
ADCON0           EQU  H'0FC2'
ADRES            EQU  H'0FC3'
ADRESL           EQU  H'0FC3'
ADRESH           EQU  H'0FC4'
SSPCON2          EQU  H'0FC5'
SSPCON1          EQU  H'0FC6'
SSPSTAT          EQU  H'0FC7'
SSPADD           EQU  H'0FC8'
SSPBUF           EQU  H'0FC9'
T2CON            EQU  H'0FCA'
PR2              EQU  H'0FCB'
TMR2             EQU  H'0FCC'
T1CON            EQU  H'0FCD'
TMR1L            EQU  H'0FCE'
TMR1H            EQU  H'0FCF'
RCON             EQU  H'0FD0'
WDTCON           EQU  H'0FD1'
HLVDCON          EQU  H'0FD2'
OSCCON           EQU  H'0FD3'
T0CON            EQU  H'0FD5'
TMR0L            EQU  H'0FD6'
TMR0H            EQU  H'0FD7'
STATUS           EQU  H'0FD8'
FSR2L            EQU  H'0FD9'
FSR2H            EQU  H'0FDA'
PLUSW2           EQU  H'0FDB'
PREINC2          EQU  H'0FDC'
POSTDEC2         EQU  H'0FDD'
POSTINC2         EQU  H'0FDE'
INDF2            EQU  H'0FDF'
BSR              EQU  H'0FE0'
FSR1L            EQU  H'0FE1'
FSR1H            EQU  H'0FE2'
PLUSW1           EQU  H'0FE3'
PREINC1          EQU  H'0FE4'
POSTDEC1         EQU  H'0FE5'
POSTINC1         EQU  H'0FE6'
INDF1            EQU  H'0FE7'
WREG             EQU  H'0FE8'
FSR0L            EQU  H'0FE9'
FSR0H            EQU  H'0FEA'
PLUSW0           EQU  H'0FEB'
PREINC0          EQU  H'0FEC'
POSTDEC0         EQU  H'0FED'
POSTINC0         EQU  H'0FEE'
INDF0            EQU  H'0FEF'
INTCON3          EQU  H'0FF0'
INTCON2          EQU  H'0FF1'
INTCON           EQU  H'0FF2'
PROD             EQU  H'0FF3'
PRODL            EQU  H'0FF3'
PRODH            EQU  H'0FF4'
TABLAT           EQU  H'0FF5'
TBLPTR           EQU  H'0FF6'
TBLPTRL          EQU  H'0FF6'
TBLPTRH          EQU  H'0FF7'
TBLPTRU          EQU  H'0FF8'
PC               EQU  H'0FF9'
PCL              EQU  H'0FF9'
PCLATH           EQU  H'0FFA'
PCLATU           EQU  H'0FFB'
STKPTR           EQU  H'0FFC'
TOS              EQU  H'0FFD'
TOSL             EQU  H'0FFD'
TOSH             EQU  H'0FFE'
TOSU             EQU  H'0FFF'

;----- LCDPS Bits -----------------------------------------------------
LP0              EQU  H'0000'
LP1              EQU  H'0001'
LP2              EQU  H'0002'
LP3              EQU  H'0003'
WA               EQU  H'0004'
LCDA             EQU  H'0005'
BIASMD           EQU  H'0006'
WFT              EQU  H'0007'

LCDPS0           EQU  H'0000'
LCDPS1           EQU  H'0001'
LCDPS2           EQU  H'0002'
LCDPS3           EQU  H'0003'


;----- LCDCON Bits -----------------------------------------------------
LMUX0            EQU  H'0000'
LMUX1            EQU  H'0001'
CS0              EQU  H'0002'
CS1              EQU  H'0003'
WERR             EQU  H'0005'
SLPEN            EQU  H'0006'
LCDEN            EQU  H'0007'

LCDCS0           EQU  H'0002'
LCDCS1           EQU  H'0003'
LCDWERR          EQU  H'0005'
LCDSLPEN         EQU  H'0006'


;----- LCDSE0 Bits -----------------------------------------------------
SE0              EQU  H'0000'
SE1              EQU  H'0001'
SE2              EQU  H'0002'
SE3              EQU  H'0003'
SE4              EQU  H'0004'
SE5              EQU  H'0005'
SE6              EQU  H'0006'
SE7              EQU  H'0007'

SEGEN0           EQU  H'0000'
SEGEN1           EQU  H'0001'
SEGEN2           EQU  H'0002'
SEGEN3           EQU  H'0003'
SEGEN4           EQU  H'0004'
SEGEN5           EQU  H'0005'
SEGEN6           EQU  H'0006'
SEGEN7           EQU  H'0007'


;----- LCDSE1 Bits -----------------------------------------------------
SE8              EQU  H'0000'
SE9              EQU  H'0001'
SE10             EQU  H'0002'
SE11             EQU  H'0003'
SE12             EQU  H'0004'
SE13             EQU  H'0005'
SE14             EQU  H'0006'
SE15             EQU  H'0007'

SEGEN8           EQU  H'0000'
SEGEN9           EQU  H'0001'
SEGEN10          EQU  H'0002'
SEGEN11          EQU  H'0003'
SEGEN12          EQU  H'0004'
SEGEN13          EQU  H'0005'
SEGEN14          EQU  H'0006'
SEGEN15          EQU  H'0007'


;----- LCDSE2 Bits -----------------------------------------------------
SE16             EQU  H'0000'
SE17             EQU  H'0001'
SE18             EQU  H'0002'
SE19             EQU  H'0003'
SE20             EQU  H'0004'
SE21             EQU  H'0005'
SE22             EQU  H'0006'
SE23             EQU  H'0007'

SEGEN16          EQU  H'0000'
SEGEN17          EQU  H'0001'
SEGEN18          EQU  H'0002'
SEGEN19          EQU  H'0003'
SEGEN20          EQU  H'0004'
SEGEN21          EQU  H'0005'
SEGEN22          EQU  H'0006'
SEGEN23          EQU  H'0007'


;----- LCDSE3 Bits -----------------------------------------------------
SE24             EQU  H'0000'
SE25             EQU  H'0001'
SE26             EQU  H'0002'
SE27             EQU  H'0003'
SE28             EQU  H'0004'
SE29             EQU  H'0005'
SE30             EQU  H'0006'
SE31             EQU  H'0007'

SEGEN24          EQU  H'0000'
SEGEN25          EQU  H'0001'
SEGEN26          EQU  H'0002'
SEGEN27          EQU  H'0003'
SEGEN28          EQU  H'0004'
SEGEN29          EQU  H'0005'
SEGEN30          EQU  H'0006'
SEGEN31          EQU  H'0007'


;----- LCDSE4 Bits -----------------------------------------------------
SE32             EQU  H'0000'
SE33             EQU  H'0001'
SE34             EQU  H'0002'
SE35             EQU  H'0003'
SE36             EQU  H'0004'
SE37             EQU  H'0005'
SE38             EQU  H'0006'
SE39             EQU  H'0007'

SEGEN32          EQU  H'0000'
SEGEN33          EQU  H'0001'
SEGEN34          EQU  H'0002'
SEGEN35          EQU  H'0003'
SEGEN36          EQU  H'0004'
SEGEN37          EQU  H'0005'
SEGEN38          EQU  H'0006'
SEGEN39          EQU  H'0007'


;----- LCDSE5 Bits -----------------------------------------------------
SE40             EQU  H'0000'
SE41             EQU  H'0001'
SE42             EQU  H'0002'
SE43             EQU  H'0003'
SE44             EQU  H'0004'
SE45             EQU  H'0005'
SE46             EQU  H'0006'
SE47             EQU  H'0007'

SEGEN40          EQU  H'0000'
SEGEN41          EQU  H'0001'
SEGEN42          EQU  H'0002'
SEGEN43          EQU  H'0003'
SEGEN44          EQU  H'0004'
SEGEN45          EQU  H'0005'
SEGEN46          EQU  H'0006'
SEGEN47          EQU  H'0007'


;----- LCDDATA0 Bits -----------------------------------------------------
S0C0             EQU  H'0000'
S1C0             EQU  H'0001'
S2C0             EQU  H'0002'
S3C0             EQU  H'0003'
S4C0             EQU  H'0004'
S5C0             EQU  H'0005'
S6C0             EQU  H'0006'
S7C0             EQU  H'0007'

SEG0COM0         EQU  H'0000'
SEG1COM0         EQU  H'0001'
SEG2COM0         EQU  H'0002'
SEG3COM0         EQU  H'0003'
SEG4COM0         EQU  H'0004'
SEG5COM0         EQU  H'0005'
SEG6COM0         EQU  H'0006'
SEG7COM0         EQU  H'0007'

S00C0            EQU  H'0000'
S01C0            EQU  H'0001'
S02C0            EQU  H'0002'
S03C0            EQU  H'0003'
S04C0            EQU  H'0004'
S05C0            EQU  H'0005'
S06C0            EQU  H'0006'
S07C0            EQU  H'0007'


;----- LCDDATA1 Bits -----------------------------------------------------
S8C0             EQU  H'0000'
S9C0             EQU  H'0001'
S10C0            EQU  H'0002'
S11C0            EQU  H'0003'
S12C0            EQU  H'0004'
S13C0            EQU  H'0005'
S14C0            EQU  H'0006'
S15C0            EQU  H'0007'

SEG8COM0         EQU  H'0000'
SEG9COM0         EQU  H'0001'
SEG10COM0        EQU  H'0002'
SEG11COM0        EQU  H'0003'
SEG12COM0        EQU  H'0004'
SEG13COM0        EQU  H'0005'
SEG14COM0        EQU  H'0006'
SEG15COM0        EQU  H'0007'

S08C0            EQU  H'0000'
S09C0            EQU  H'0001'


;----- LCDDATA2 Bits -----------------------------------------------------
S16C0            EQU  H'0000'
S17C0            EQU  H'0001'
S18C0            EQU  H'0002'
S19C0            EQU  H'0003'
S20C0            EQU  H'0004'
S21C0            EQU  H'0005'
S22C0            EQU  H'0006'
S23C0            EQU  H'0007'

SEG16COM0        EQU  H'0000'
SEG17COM0        EQU  H'0001'
SEG18COM0        EQU  H'0002'
SEG19COM0        EQU  H'0003'
SEG20COM0        EQU  H'0004'
SEG21COM0        EQU  H'0005'
SEG22COM0        EQU  H'0006'
SEG23COM0        EQU  H'0007'


;----- LCDDATA3 Bits -----------------------------------------------------
S24C0            EQU  H'0000'
S25C0            EQU  H'0001'
S26C0            EQU  H'0002'
S27C0            EQU  H'0003'
S28C0            EQU  H'0004'
S29C0            EQU  H'0005'
S30C0            EQU  H'0006'
S31C0            EQU  H'0007'

SEG24COM0        EQU  H'0000'
SEG25COM0        EQU  H'0001'
SEG26COM0        EQU  H'0002'
SEG27COM0        EQU  H'0003'
SEG28COM0        EQU  H'0004'
SEG29COM0        EQU  H'0005'
SEG30COM0        EQU  H'0006'
SEG31COM0        EQU  H'0007'


;----- LCDDATA4 Bits -----------------------------------------------------
S32C0            EQU  H'0000'
S33C0            EQU  H'0001'
S34C0            EQU  H'0002'
S35C0            EQU  H'0003'
S36C0            EQU  H'0004'
S37C0            EQU  H'0005'
S38C0            EQU  H'0006'
S39C0            EQU  H'0007'

SEG32COM0        EQU  H'0000'
SEG33COM0        EQU  H'0001'
SEG34COM0        EQU  H'0002'
SEG35COM0        EQU  H'0003'
SEG36COM0        EQU  H'0004'
SEG37COM0        EQU  H'0005'
SEG38COM0        EQU  H'0006'
SEG39COM0        EQU  H'0007'


;----- LCDDATA5 Bits -----------------------------------------------------
S40C0            EQU  H'0000'
S41C0            EQU  H'0001'
S42C0            EQU  H'0002'
S43C0            EQU  H'0003'
S44C0            EQU  H'0004'
S45C0            EQU  H'0005'
S46C0            EQU  H'0006'
S47C0            EQU  H'0007'

SEG40COM0        EQU  H'0000'
SEG41COM0        EQU  H'0001'
SEG42COM0        EQU  H'0002'
SEG43COM0        EQU  H'0003'
SEG44COM0        EQU  H'0004'
SEG45COM0        EQU  H'0005'
SEG46COM0        EQU  H'0006'
SEG47COM0        EQU  H'0007'


;----- LCDDATA6 Bits -----------------------------------------------------
S0C1             EQU  H'0000'
S1C1             EQU  H'0001'
S2C1             EQU  H'0002'
S3C1             EQU  H'0003'
S4C1             EQU  H'0004'
S5C1             EQU  H'0005'
S6C1             EQU  H'0006'
S7C1             EQU  H'0007'

SEG0COM1         EQU  H'0000'
SEG1COM1         EQU  H'0001'
SEG2COM1         EQU  H'0002'
SEG3COM1         EQU  H'0003'
SEG4COM1         EQU  H'0004'
SEG5COM1         EQU  H'0005'
SEG6COM1         EQU  H'0006'
SEG7COM1         EQU  H'0007'

S00C1            EQU  H'0000'
S01C1            EQU  H'0001'
S02C1            EQU  H'0002'
S03C1            EQU  H'0003'
S04C1            EQU  H'0004'
S05C1            EQU  H'0005'
S06C1            EQU  H'0006'
S07C1            EQU  H'0007'


;----- LCDDATA7 Bits -----------------------------------------------------
S8C1             EQU  H'0000'
S9C1             EQU  H'0001'
S10C1            EQU  H'0002'
S11C1            EQU  H'0003'
S12C1            EQU  H'0004'
S13C1            EQU  H'0005'
S14C1            EQU  H'0006'
S15C1            EQU  H'0007'

SEG8COM1         EQU  H'0000'
SEG9COM1         EQU  H'0001'
SEG10COM1        EQU  H'0002'
SEG11COM1        EQU  H'0003'
SEG12COM1        EQU  H'0004'
SEG13COM1        EQU  H'0005'
SEG14COM1        EQU  H'0006'
SEG15COM1        EQU  H'0007'

S08C1            EQU  H'0000'
S09C1            EQU  H'0001'


;----- LCDDATA8 Bits -----------------------------------------------------
S16C1            EQU  H'0000'
S17C1            EQU  H'0001'
S18C1            EQU  H'0002'
S19C1            EQU  H'0003'
S20C1            EQU  H'0004'
S21C1            EQU  H'0005'
S22C1            EQU  H'0006'
S23C1            EQU  H'0007'

SEG16COM1        EQU  H'0000'
SEG17COM1        EQU  H'0001'
SEG18COM1        EQU  H'0002'
SEG19COM1        EQU  H'0003'
SEG20COM1        EQU  H'0004'
SEG21COM1        EQU  H'0005'
SEG22COM1        EQU  H'0006'
SEG23COM1        EQU  H'0007'


;----- LCDDATA9 Bits -----------------------------------------------------
S24C1            EQU  H'0000'
S25C1            EQU  H'0001'
S26C1            EQU  H'0002'
S27C1            EQU  H'0003'
S28C1            EQU  H'0004'
S29C1            EQU  H'0005'
S30C1            EQU  H'0006'
S31C1            EQU  H'0007'

SEG24COM1        EQU  H'0000'
SEG25COM1        EQU  H'0001'
SEG26COM1        EQU  H'0002'
SEG27COM1        EQU  H'0003'
SEG28COM1        EQU  H'0004'
SEG29COM1        EQU  H'0005'
SEG30COM1        EQU  H'0006'
SEG31COM1        EQU  H'0007'


;----- LCDDATA10 Bits -----------------------------------------------------
S32C1            EQU  H'0000'
S33C1            EQU  H'0001'
S34C1            EQU  H'0002'
S35C1            EQU  H'0003'
S36C1            EQU  H'0004'
S37C1            EQU  H'0005'
S38C1            EQU  H'0006'
S39C1            EQU  H'0007'

SEG32COM1        EQU  H'0000'
SEG33COM1        EQU  H'0001'
SEG34COM1        EQU  H'0002'
SEG35COM1        EQU  H'0003'
SEG36COM1        EQU  H'0004'
SEG37COM1        EQU  H'0005'
SEG38COM1        EQU  H'0006'
SEG39COM1        EQU  H'0007'


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADEN             EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

RCD8             EQU  H'0000'
RC9              EQU  H'0006'

NOT_RC8          EQU  H'0006'

RC8_9            EQU  H'0006'

ADDEN            EQU  H'0003'


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'

TXD8             EQU  H'0000'
TX8_9            EQU  H'0006'

NOT_TX8          EQU  H'0006'


;----- LCDDATA11 Bits -----------------------------------------------------
S40C1            EQU  H'0000'
S41C1            EQU  H'0001'
S42C1            EQU  H'0002'
S43C1            EQU  H'0003'
S44C1            EQU  H'0004'
S45C1            EQU  H'0005'
S46C1            EQU  H'0006'
S47C1            EQU  H'0007'

SEG40COM1        EQU  H'0000'
SEG41COM1        EQU  H'0001'
SEG42COM1        EQU  H'0002'
SEG43COM1        EQU  H'0003'
SEG44COM1        EQU  H'0004'
SEG45COM1        EQU  H'0005'
SEG46COM1        EQU  H'0006'
SEG47COM1        EQU  H'0007'


;----- LCDDATA12 Bits -----------------------------------------------------
S0C2             EQU  H'0000'
S1C2             EQU  H'0001'
S2C2             EQU  H'0002'
S3C2             EQU  H'0003'
S4C2             EQU  H'0004'
S5C2             EQU  H'0005'
S6C2             EQU  H'0006'
S7C2             EQU  H'0007'

SEG0COM2         EQU  H'0000'
SEG1COM2         EQU  H'0001'
SEG2COM2         EQU  H'0002'
SEG3COM2         EQU  H'0003'
SEG4COM2         EQU  H'0004'
SEG5COM2         EQU  H'0005'
SEG6COM2         EQU  H'0006'
SEG7COM2         EQU  H'0007'

S00C2            EQU  H'0000'
S01C2            EQU  H'0001'
S02C2            EQU  H'0002'
S03C2            EQU  H'0003'
S04C2            EQU  H'0004'
S05C2            EQU  H'0005'
S06C2            EQU  H'0006'
S07C2            EQU  H'0007'


;----- LCDDATA13 Bits -----------------------------------------------------
S8C2             EQU  H'0000'
S9C2             EQU  H'0001'
S10C2            EQU  H'0002'
S11C2            EQU  H'0003'
S12C2            EQU  H'0004'
S13C2            EQU  H'0005'
S14C2            EQU  H'0006'
S15C2            EQU  H'0007'

SEG8COM2         EQU  H'0000'
SEG9COM2         EQU  H'0001'
SEG10COM2        EQU  H'0002'
SEG11COM2        EQU  H'0003'
SEG12COM2        EQU  H'0004'
SEG13COM2        EQU  H'0005'
SEG14COM2        EQU  H'0006'
SEG15COM2        EQU  H'0007'

S08C2            EQU  H'0000'
S09C2            EQU  H'0001'


;----- LCDDATA14 Bits -----------------------------------------------------
S16C2            EQU  H'0000'
S17C2            EQU  H'0001'
S18C2            EQU  H'0002'
S19C2            EQU  H'0003'
S20C2            EQU  H'0004'
S21C2            EQU  H'0005'
S22C2            EQU  H'0006'
S23C2            EQU  H'0007'

SEG16COM2        EQU  H'0000'
SEG17COM2        EQU  H'0001'
SEG18COM2        EQU  H'0002'
SEG19COM2        EQU  H'0003'
SEG20COM2        EQU  H'0004'
SEG21COM2        EQU  H'0005'
SEG22COM2        EQU  H'0006'
SEG23COM2        EQU  H'0007'


;----- LCDDATA15 Bits -----------------------------------------------------
S24C2            EQU  H'0000'
S25C2            EQU  H'0001'
S26C2            EQU  H'0002'
S27C2            EQU  H'0003'
S28C2            EQU  H'0004'
S29C2            EQU  H'0005'
S30C2            EQU  H'0006'
S31C2            EQU  H'0007'

SEG24COM2        EQU  H'0000'
SEG25COM2        EQU  H'0001'
SEG26COM2        EQU  H'0002'
SEG27COM2        EQU  H'0003'
SEG28COM2        EQU  H'0004'
SEG29COM2        EQU  H'0005'
SEG30COM2        EQU  H'0006'
SEG31COM2        EQU  H'0007'


;----- LCDDATA16 Bits -----------------------------------------------------
S32C2            EQU  H'0000'
S33C2            EQU  H'0001'
S34C2            EQU  H'0002'
S35C2            EQU  H'0003'
S36C2            EQU  H'0004'
S37C2            EQU  H'0005'
S38C2            EQU  H'0006'
S39C2            EQU  H'0007'

SEG32COM2        EQU  H'0000'
SEG33COM2        EQU  H'0001'
SEG34COM2        EQU  H'0002'
SEG35COM2        EQU  H'0003'
SEG36COM2        EQU  H'0004'
SEG37COM2        EQU  H'0005'
SEG38COM2        EQU  H'0006'
SEG39COM2        EQU  H'0007'


;----- LCDDATA17 Bits -----------------------------------------------------
S40C2            EQU  H'0000'
S41C2            EQU  H'0001'
S42C2            EQU  H'0002'
S43C2            EQU  H'0003'
S44C2            EQU  H'0004'
S45C2            EQU  H'0005'
S46C2            EQU  H'0006'
S47C2            EQU  H'0007'

SEG40COM2        EQU  H'0000'
SEG41COM2        EQU  H'0001'
SEG42COM2        EQU  H'0002'
SEG43COM2        EQU  H'0003'
SEG44COM2        EQU  H'0004'
SEG45COM2        EQU  H'0005'
SEG46COM2        EQU  H'0006'
SEG47COM2        EQU  H'0007'


;----- LCDDATA18 Bits -----------------------------------------------------
S0C3             EQU  H'0000'
S1C3             EQU  H'0001'
S2C3             EQU  H'0002'
S3C3             EQU  H'0003'
S4C3             EQU  H'0004'
S5C3             EQU  H'0005'
S6C3             EQU  H'0006'
S7C3             EQU  H'0007'

SEG0COM3         EQU  H'0000'
SEG1COM3         EQU  H'0001'
SEG2COM3         EQU  H'0002'
SEG3COM3         EQU  H'0003'
SEG4COM3         EQU  H'0004'
SEG5COM3         EQU  H'0005'
SEG6COM3         EQU  H'0006'
SEG7COM3         EQU  H'0007'

S00C3            EQU  H'0000'
S01C3            EQU  H'0001'
S02C3            EQU  H'0002'
S03C3            EQU  H'0003'
S04C3            EQU  H'0004'
S05C3            EQU  H'0005'
S06C3            EQU  H'0006'
S07C3            EQU  H'0007'


;----- LCDDATA19 Bits -----------------------------------------------------
S8C3             EQU  H'0000'
S9C3             EQU  H'0001'
S10C3            EQU  H'0002'
S11C3            EQU  H'0003'
S12C3            EQU  H'0004'
S13C3            EQU  H'0005'
S14C3            EQU  H'0006'
S15C3            EQU  H'0007'

SEG8COM3         EQU  H'0000'
SEG9COM3         EQU  H'0001'
SEG10COM3        EQU  H'0002'
SEG11COM3        EQU  H'0003'
SEG12COM3        EQU  H'0004'
SEG13COM3        EQU  H'0005'
SEG14COM3        EQU  H'0006'
SEG15COM3        EQU  H'0007'

S08C3            EQU  H'0000'
S09C3            EQU  H'0001'


;----- LCDDATA20 Bits -----------------------------------------------------
S16C3            EQU  H'0000'
S17C3            EQU  H'0001'
S18C3            EQU  H'0002'
S19C3            EQU  H'0003'
S20C3            EQU  H'0004'
S21C3            EQU  H'0005'
S22C3            EQU  H'0006'
S23C3            EQU  H'0007'

SEG16COM3        EQU  H'0000'
SEG17COM3        EQU  H'0001'
SEG18COM3        EQU  H'0002'
SEG19COM3        EQU  H'0003'
SEG20COM3        EQU  H'0004'
SEG21COM3        EQU  H'0005'
SEG22COM3        EQU  H'0006'
SEG23COM3        EQU  H'0007'


;----- LCDDATA21 Bits -----------------------------------------------------
S24C3            EQU  H'0000'
S25C3            EQU  H'0001'
S26C3            EQU  H'0002'
S27C3            EQU  H'0003'
S28C3            EQU  H'0004'
S29C3            EQU  H'0005'
S30C3            EQU  H'0006'
S31C3            EQU  H'0007'

SEG24COM3        EQU  H'0000'
SEG25COM3        EQU  H'0001'
SEG26COM3        EQU  H'0002'
SEG27COM3        EQU  H'0003'
SEG28COM3        EQU  H'0004'
SEG29COM3        EQU  H'0005'
SEG30COM3        EQU  H'0006'
SEG31COM3        EQU  H'0007'


;----- LCDDATA22 Bits -----------------------------------------------------
S32C3            EQU  H'0000'
S33C3            EQU  H'0001'
S34C3            EQU  H'0002'
S35C3            EQU  H'0003'
S36C3            EQU  H'0004'
S37C3            EQU  H'0005'
S38C3            EQU  H'0006'
S39C3            EQU  H'0007'

SEG32COM3        EQU  H'0000'
SEG33COM3        EQU  H'0001'
SEG34COM3        EQU  H'0002'
SEG35COM3        EQU  H'0003'
SEG36COM3        EQU  H'0004'
SEG37COM3        EQU  H'0005'
SEG38COM3        EQU  H'0006'
SEG39COM3        EQU  H'0007'


;----- LCDDATA23 Bits -----------------------------------------------------
S40C3            EQU  H'0000'
S41C3            EQU  H'0001'
S42C3            EQU  H'0002'
S43C3            EQU  H'0003'
S44C3            EQU  H'0004'
S45C3            EQU  H'0005'
S46C3            EQU  H'0006'
S47C3            EQU  H'0007'

SEG40COM3        EQU  H'0000'
SEG41COM3        EQU  H'0001'
SEG42COM3        EQU  H'0002'
SEG43COM3        EQU  H'0003'
SEG44COM3        EQU  H'0004'
SEG45COM3        EQU  H'0005'
SEG46COM3        EQU  H'0006'
SEG47COM3        EQU  H'0007'


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'

RCMT             EQU  H'0006'


;----- BAUDCTL1 Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'

RCMT             EQU  H'0006'


;----- PORTA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'
RA7              EQU  H'0007'

AN0              EQU  H'0000'
AN1              EQU  H'0001'
AN2              EQU  H'0002'
AN3              EQU  H'0003'
T0CKI            EQU  H'0004'
AN4              EQU  H'0005'
OSC2             EQU  H'0006'
OSC1             EQU  H'0007'

VREFM            EQU  H'0002'
VREFP            EQU  H'0003'
LVDIN            EQU  H'0005'
CLKO             EQU  H'0006'
CLKI             EQU  H'0007'

SEG16            EQU  H'0002'
SEG17            EQU  H'0003'
SEG14            EQU  H'0004'
SEG15            EQU  H'0005'


;----- PORTB Bits -----------------------------------------------------
RB0              EQU  H'0000'
RB1              EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'

INT0             EQU  H'0000'
INT1             EQU  H'0001'
INT2             EQU  H'0002'
INT3             EQU  H'0003'
KBI0             EQU  H'0004'
KBI1             EQU  H'0005'
KBI2             EQU  H'0006'
KBI3             EQU  H'0007'

CCP2B            EQU  H'0003'
PGM              EQU  H'0005'
PGC              EQU  H'0006'
PGD              EQU  H'0007'

SEG8             EQU  H'0001'
SEG9             EQU  H'0002'
SEG10            EQU  H'0003'
SEG11            EQU  H'0004'


;----- PORTC Bits -----------------------------------------------------
RC0              EQU  H'0000'
RC1              EQU  H'0001'
RC2              EQU  H'0002'
RC3              EQU  H'0003'
RC4              EQU  H'0004'
RC5              EQU  H'0005'
RC6              EQU  H'0006'
RC7              EQU  H'0007'

T1OSO            EQU  H'0000'
T1OSI            EQU  H'0001'
CCP1             EQU  H'0002'
SCK              EQU  H'0003'
SDI              EQU  H'0004'
SDO              EQU  H'0005'
TX               EQU  H'0006'
RX               EQU  H'0007'

T13CKI           EQU  H'0000'
CCP2C            EQU  H'0001'
SCL              EQU  H'0003'
SDA              EQU  H'0004'
CK               EQU  H'0006'
; DT is a reserved word
; DT               EQU  H'0007'

SEG13            EQU  H'0002'
SEG12            EQU  H'0003'


;----- PORTD Bits -----------------------------------------------------
RD0              EQU  H'0000'
RD1              EQU  H'0001'
RD2              EQU  H'0002'
RD3              EQU  H'0003'
RD4              EQU  H'0004'
RD5              EQU  H'0005'
RD6              EQU  H'0006'
RD7              EQU  H'0007'

AD0              EQU  H'0000'
AD1              EQU  H'0001'
AD2              EQU  H'0002'
AD3              EQU  H'0003'
AD4              EQU  H'0004'
AD5              EQU  H'0005'
AD6              EQU  H'0006'
AD7              EQU  H'0007'

SEG0             EQU  H'0000'
SEG1             EQU  H'0001'
SEG2             EQU  H'0002'
SEG3             EQU  H'0003'
SEG4             EQU  H'0004'
SEG5             EQU  H'0005'
SEG6             EQU  H'0006'
SEG7             EQU  H'0007'


;----- PORTE Bits -----------------------------------------------------
RE0              EQU  H'0000'
RE1              EQU  H'0001'
RE2              EQU  H'0002'
RE3              EQU  H'0003'
RE4              EQU  H'0004'
RE5              EQU  H'0005'
RE6              EQU  H'0006'
RE7              EQU  H'0007'

CCP2E            EQU  H'0007'

AD8              EQU  H'0000'
AD9              EQU  H'0001'
AD10             EQU  H'0002'
AD11             EQU  H'0003'
AD12             EQU  H'0004'
AD13             EQU  H'0005'
AD14             EQU  H'0006'
AD15             EQU  H'0007'

LCDBIAS1         EQU  H'0000'
LCDBIAS2         EQU  H'0001'
LCDBIAS3         EQU  H'0002'
COM0             EQU  H'0003'
COM1             EQU  H'0004'
COM2             EQU  H'0005'
COM3             EQU  H'0006'
SEG31            EQU  H'0007'

BIAS1            EQU  H'0000'
BIAS2            EQU  H'0001'
BIAS3            EQU  H'0002'


;----- PORTF Bits -----------------------------------------------------
RF0              EQU  H'0000'
RF1              EQU  H'0001'
RF2              EQU  H'0002'
RF3              EQU  H'0003'
RF4              EQU  H'0004'
RF5              EQU  H'0005'
RF6              EQU  H'0006'
RF7              EQU  H'0007'

AN5              EQU  H'0000'
AN6              EQU  H'0001'
AN7              EQU  H'0002'
AN8              EQU  H'0003'
AN9              EQU  H'0004'
AN10             EQU  H'0005'
AN11             EQU  H'0006'
SS               EQU  H'0007'

C2OUTF           EQU  H'0001'
C1OUTF           EQU  H'0002'
CVREFF           EQU  H'0005'

SEG18            EQU  H'0000'
SEG19            EQU  H'0001'
SEG20            EQU  H'0002'
SEG21            EQU  H'0003'
SEG22            EQU  H'0004'
SEG23            EQU  H'0005'
SEG24            EQU  H'0006'
SEG25            EQU  H'0007'


;----- PORTG Bits -----------------------------------------------------
RG0              EQU  H'0000'
RG1              EQU  H'0001'
RG2              EQU  H'0002'
RG3              EQU  H'0003'
RG4              EQU  H'0004'
RG5              EQU  H'0005'

TX2              EQU  H'0001'
RX2              EQU  H'0002'
MCLR             EQU  H'0005'

CK2              EQU  H'0001'
DT2              EQU  H'0002'
VPP              EQU  H'0005'

SEG30            EQU  H'0000'
SEG29            EQU  H'0001'
SEG28            EQU  H'0002'
SEG27            EQU  H'0003'
SEG26            EQU  H'0004'


;----- PORTH Bits -----------------------------------------------------
RH0              EQU  H'0000'
RH1              EQU  H'0001'
RH2              EQU  H'0002'
RH3              EQU  H'0003'
RH4              EQU  H'0004'
RH5              EQU  H'0005'
RH6              EQU  H'0006'
RH7              EQU  H'0007'

SEG47            EQU  H'0000'
SEG46            EQU  H'0001'
SEG45            EQU  H'0002'
SEG44            EQU  H'0003'
SEG40            EQU  H'0004'
SEG41            EQU  H'0005'
SEG42            EQU  H'0006'
SEG43            EQU  H'0007'


;----- PORTJ Bits -----------------------------------------------------
RJ0              EQU  H'0000'
RJ1              EQU  H'0001'
RJ2              EQU  H'0002'
RJ3              EQU  H'0003'
RJ4              EQU  H'0004'
RJ5              EQU  H'0005'
RJ6              EQU  H'0006'
RJ7              EQU  H'0007'

SEG32            EQU  H'0000'
SEG33            EQU  H'0001'
SEG34            EQU  H'0002'
SEG35            EQU  H'0003'
SEG39            EQU  H'0004'
SEG38            EQU  H'0005'
SEG37            EQU  H'0006'
SEG36            EQU  H'0007'


;----- LATA Bits -----------------------------------------------------
LATA0            EQU  H'0000'
LATA1            EQU  H'0001'
LATA2            EQU  H'0002'
LATA3            EQU  H'0003'
LATA4            EQU  H'0004'
LATA5            EQU  H'0005'
LATA6            EQU  H'0006'
LATA7            EQU  H'0007'


;----- LATB Bits -----------------------------------------------------
LATB0            EQU  H'0000'
LATB1            EQU  H'0001'
LATB2            EQU  H'0002'
LATB3            EQU  H'0003'
LATB4            EQU  H'0004'
LATB5            EQU  H'0005'
LATB6            EQU  H'0006'
LATB7            EQU  H'0007'


;----- LATC Bits -----------------------------------------------------
LATC0            EQU  H'0000'
LATC1            EQU  H'0001'
LATC2            EQU  H'0002'
LATC3            EQU  H'0003'
LATC4            EQU  H'0004'
LATC5            EQU  H'0005'
LATC6            EQU  H'0006'
LATC7            EQU  H'0007'


;----- LATD Bits -----------------------------------------------------
LATD0            EQU  H'0000'
LATD1            EQU  H'0001'
LATD2            EQU  H'0002'
LATD3            EQU  H'0003'
LATD4            EQU  H'0004'
LATD5            EQU  H'0005'
LATD6            EQU  H'0006'
LATD7            EQU  H'0007'


;----- LATE Bits -----------------------------------------------------
LATE0            EQU  H'0000'
LATE1            EQU  H'0001'
LATE2            EQU  H'0002'
LATE3            EQU  H'0003'
LATE4            EQU  H'0004'
LATE5            EQU  H'0005'
LATE6            EQU  H'0006'
LATE7            EQU  H'0007'


;----- LATF Bits -----------------------------------------------------
LATF0            EQU  H'0000'
LATF1            EQU  H'0001'
LATF2            EQU  H'0002'
LATF3            EQU  H'0003'
LATF4            EQU  H'0004'
LATF5            EQU  H'0005'
LATF6            EQU  H'0006'
LATF7            EQU  H'0007'


;----- LATG Bits -----------------------------------------------------
LATG0            EQU  H'0000'
LATG1            EQU  H'0001'
LATG2            EQU  H'0002'
LATG3            EQU  H'0003'
LATG4            EQU  H'0004'


;----- LATH Bits -----------------------------------------------------
LATH0            EQU  H'0000'
LATH1            EQU  H'0001'
LATH2            EQU  H'0002'
LATH3            EQU  H'0003'
LATH4            EQU  H'0004'
LATH5            EQU  H'0005'
LATH6            EQU  H'0006'
LATH7            EQU  H'0007'


;----- LATJ Bits -----------------------------------------------------
LATJ0            EQU  H'0000'
LATJ1            EQU  H'0001'
LATJ2            EQU  H'0002'
LATJ3            EQU  H'0003'
LATJ4            EQU  H'0004'
LATJ5            EQU  H'0005'
LATJ6            EQU  H'0006'
LATJ7            EQU  H'0007'


;----- DDRA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'
RA7              EQU  H'0007'


;----- TRISA Bits -----------------------------------------------------
TRISA0           EQU  H'0000'
TRISA1           EQU  H'0001'
TRISA2           EQU  H'0002'
TRISA3           EQU  H'0003'
TRISA4           EQU  H'0004'
TRISA5           EQU  H'0005'
TRISA6           EQU  H'0006'
TRISA7           EQU  H'0007'


;----- DDRB Bits -----------------------------------------------------
RB0              EQU  H'0000'
RB1              EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'


;----- TRISB Bits -----------------------------------------------------
TRISB0           EQU  H'0000'
TRISB1           EQU  H'0001'
TRISB2           EQU  H'0002'
TRISB3           EQU  H'0003'
TRISB4           EQU  H'0004'
TRISB5           EQU  H'0005'
TRISB6           EQU  H'0006'
TRISB7           EQU  H'0007'


;----- DDRC Bits -----------------------------------------------------
RC0              EQU  H'0000'
RC1              EQU  H'0001'
RC2              EQU  H'0002'
RC3              EQU  H'0003'
RC4              EQU  H'0004'
RC5              EQU  H'0005'
RC6              EQU  H'0006'
RC7              EQU  H'0007'


;----- TRISC Bits -----------------------------------------------------
TRISC0           EQU  H'0000'
TRISC1           EQU  H'0001'
TRISC2           EQU  H'0002'
TRISC3           EQU  H'0003'
TRISC4           EQU  H'0004'
TRISC5           EQU  H'0005'
TRISC6           EQU  H'0006'
TRISC7           EQU  H'0007'


;----- DDRD Bits -----------------------------------------------------
RD0              EQU  H'0000'
RD1              EQU  H'0001'
RD2              EQU  H'0002'
RD3              EQU  H'0003'
RD4              EQU  H'0004'
RD5              EQU  H'0005'
RD6              EQU  H'0006'
RD7              EQU  H'0007'


;----- TRISD Bits -----------------------------------------------------
TRISD0           EQU  H'0000'
TRISD1           EQU  H'0001'
TRISD2           EQU  H'0002'
TRISD3           EQU  H'0003'
TRISD4           EQU  H'0004'
TRISD5           EQU  H'0005'
TRISD6           EQU  H'0006'
TRISD7           EQU  H'0007'


;----- DDRE Bits -----------------------------------------------------
RE0              EQU  H'0000'
RE1              EQU  H'0001'
RE2              EQU  H'0002'
RE3              EQU  H'0003'
RE4              EQU  H'0004'
RE5              EQU  H'0005'
RE6              EQU  H'0006'
RE7              EQU  H'0007'


;----- TRISE Bits -----------------------------------------------------
TRISE0           EQU  H'0000'
TRISE1           EQU  H'0001'
TRISE2           EQU  H'0002'
TRISE3           EQU  H'0003'
TRISE4           EQU  H'0004'
TRISE5           EQU  H'0005'
TRISE6           EQU  H'0006'
TRISE7           EQU  H'0007'


;----- DDRF Bits -----------------------------------------------------
RF0              EQU  H'0000'
RF1              EQU  H'0001'
RF2              EQU  H'0002'
RF3              EQU  H'0003'
RF4              EQU  H'0004'
RF5              EQU  H'0005'
RF6              EQU  H'0006'
RF7              EQU  H'0007'


;----- TRISF Bits -----------------------------------------------------
TRISF0           EQU  H'0000'
TRISF1           EQU  H'0001'
TRISF2           EQU  H'0002'
TRISF3           EQU  H'0003'
TRISF4           EQU  H'0004'
TRISF5           EQU  H'0005'
TRISF6           EQU  H'0006'
TRISF7           EQU  H'0007'


;----- DDRG Bits -----------------------------------------------------
RG0              EQU  H'0000'
RG1              EQU  H'0001'
RG2              EQU  H'0002'
RG3              EQU  H'0003'
RG4              EQU  H'0004'


;----- TRISG Bits -----------------------------------------------------
TRISG0           EQU  H'0000'
TRISG1           EQU  H'0001'
TRISG2           EQU  H'0002'
TRISG3           EQU  H'0003'
TRISG4           EQU  H'0004'


;----- DDRH Bits -----------------------------------------------------
RH0              EQU  H'0000'
RH1              EQU  H'0001'
RH2              EQU  H'0002'
RH3              EQU  H'0003'
RH4              EQU  H'0004'
RH5              EQU  H'0005'
RH6              EQU  H'0006'
RH7              EQU  H'0007'


;----- TRISH Bits -----------------------------------------------------
TRISH0           EQU  H'0000'
TRISH1           EQU  H'0001'
TRISH2           EQU  H'0002'
TRISH3           EQU  H'0003'
TRISH4           EQU  H'0004'
TRISH5           EQU  H'0005'
TRISH6           EQU  H'0006'
TRISH7           EQU  H'0007'


;----- DDRJ Bits -----------------------------------------------------
RJ0              EQU  H'0000'
RJ1              EQU  H'0001'
RJ2              EQU  H'0002'
RJ3              EQU  H'0003'
RJ4              EQU  H'0004'
RJ5              EQU  H'0005'
RJ6              EQU  H'0006'
RJ7              EQU  H'0007'


;----- TRISJ Bits -----------------------------------------------------
TRISJ0           EQU  H'0000'
TRISJ1           EQU  H'0001'
TRISJ2           EQU  H'0002'
TRISJ3           EQU  H'0003'
TRISJ4           EQU  H'0004'
TRISJ5           EQU  H'0005'
TRISJ6           EQU  H'0006'
TRISJ7           EQU  H'0007'


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'
PLLEN            EQU  H'0006'
INTSRC           EQU  H'0007'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
SSPIE            EQU  H'0003'
TX1IE            EQU  H'0004'
RC1IE            EQU  H'0005'
ADIE             EQU  H'0006'

TXIE             EQU  H'0004'
RCIE             EQU  H'0005'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
CCP1IF           EQU  H'0002'
SSPIF            EQU  H'0003'
TX1IF            EQU  H'0004'
RC1IF            EQU  H'0005'
ADIF             EQU  H'0006'

TXIF             EQU  H'0004'
RCIF             EQU  H'0005'


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           EQU  H'0000'
TMR2IP           EQU  H'0001'
CCP1IP           EQU  H'0002'
SSPIP            EQU  H'0003'
TX1IP            EQU  H'0004'
RC1IP            EQU  H'0005'
ADIP             EQU  H'0006'

TXIP             EQU  H'0004'
RCIP             EQU  H'0005'


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           EQU  H'0000'
TMR3IE           EQU  H'0001'
LVDIE            EQU  H'0002'
BCLIE            EQU  H'0003'
CMIE             EQU  H'0006'
OSCFIE           EQU  H'0007'

HLVDIE           EQU  H'0002'


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           EQU  H'0000'
TMR3IF           EQU  H'0001'
LVDIF            EQU  H'0002'
BCLIF            EQU  H'0003'
CMIF             EQU  H'0006'
OSCFIF           EQU  H'0007'

HLVDIF           EQU  H'0002'


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           EQU  H'0000'
TMR3IP           EQU  H'0001'
LVDIP            EQU  H'0002'
BCLIP            EQU  H'0003'
CMIP             EQU  H'0006'
OSCFIP           EQU  H'0007'

HLVDIP           EQU  H'0002'


;----- PIE3 Bits -----------------------------------------------------
TX2IE            EQU  H'0004'
RC2IE            EQU  H'0005'
LCDIE            EQU  H'0006'


;----- PIR3 Bits -----------------------------------------------------
TX2IF            EQU  H'0004'
RC2IF            EQU  H'0005'
LCDIF            EQU  H'0006'


;----- IPR3 Bits -----------------------------------------------------
TX2IP            EQU  H'0004'
RC2IP            EQU  H'0005'
LCDIP            EQU  H'0006'


;----- RCSTA Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADEN             EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

ADDEN            EQU  H'0003'


;----- RCSTA1 Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADEN             EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

ADDEN            EQU  H'0003'


;----- TXSTA Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- T3CON Bits -----------------------------------------------------
TMR3ON           EQU  H'0000'
TMR3CS           EQU  H'0001'
NOT_T3SYNC       EQU  H'0002'
T3CCP1           EQU  H'0003'
T3CKPS0          EQU  H'0004'
T3CKPS1          EQU  H'0005'
T3CCP2           EQU  H'0006'
RD16             EQU  H'0007'

T3SYNC           EQU  H'0002'

T3INSYNC         EQU  H'0002'


;----- CMCON Bits -----------------------------------------------------
CM0              EQU  H'0000'
CM1              EQU  H'0001'
CM2              EQU  H'0002'
CIS              EQU  H'0003'
C1INV            EQU  H'0004'
C2INV            EQU  H'0005'
C1OUT            EQU  H'0006'
C2OUT            EQU  H'0007'


;----- CVRCON Bits -----------------------------------------------------
CVR0             EQU  H'0000'
CVR1             EQU  H'0001'
CVR2             EQU  H'0002'
CVR3             EQU  H'0003'
CVRSS            EQU  H'0004'
CVRR             EQU  H'0005'
CVROE            EQU  H'0006'
CVREN            EQU  H'0007'

CVREF            EQU  H'0004'


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           EQU  H'0000'
CCP2M1           EQU  H'0001'
CCP2M2           EQU  H'0002'
CCP2M3           EQU  H'0003'
DCCP2Y           EQU  H'0004'
DCCP2X           EQU  H'0005'

CCP2Y            EQU  H'0004'
CCP2X            EQU  H'0005'

DC2B0            EQU  H'0004'
DC2B1            EQU  H'0005'


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
DCCP1Y           EQU  H'0004'
DCCP1X           EQU  H'0005'

CCP1Y            EQU  H'0004'
CCP1X            EQU  H'0005'

DC1B0            EQU  H'0004'
DC1B1            EQU  H'0005'


;----- ADCON2 Bits -----------------------------------------------------
ADCS0            EQU  H'0000'
ADCS1            EQU  H'0001'
ADCS2            EQU  H'0002'
ACQT0            EQU  H'0003'
ACQT1            EQU  H'0004'
ACQT2            EQU  H'0005'
ADFM             EQU  H'0007'


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            EQU  H'0000'
PCFG1            EQU  H'0001'
PCFG2            EQU  H'0002'
PCFG3            EQU  H'0003'
VCFG0            EQU  H'0004'
VCFG1            EQU  H'0005'


;----- ADCON0 Bits -----------------------------------------------------
ADON             EQU  H'0000'
GO_DONE          EQU  H'0001'
CHS0             EQU  H'0002'
CHS1             EQU  H'0003'
CHS2             EQU  H'0004'
CHS3             EQU  H'0005'

DONE             EQU  H'0001'

GO               EQU  H'0001'

NOT_DONE         EQU  H'0001'


;----- SSPCON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- SSPCON1 Bits -----------------------------------------------------
SSPM0            EQU  H'0000'
SSPM1            EQU  H'0001'
SSPM2            EQU  H'0002'
SSPM3            EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'


;----- SSPSTAT Bits -----------------------------------------------------
BF               EQU  H'0000'
UA               EQU  H'0001'
R_W              EQU  H'0002'
S                EQU  H'0003'
P                EQU  H'0004'
D_A              EQU  H'0005'
CKE              EQU  H'0006'
SMP              EQU  H'0007'

I2C_READ         EQU  H'0002'
I2C_START        EQU  H'0003'
I2C_STOP         EQU  H'0004'
I2C_DAT          EQU  H'0005'

NOT_W            EQU  H'0002'
NOT_A            EQU  H'0005'

NOT_WRITE        EQU  H'0002'
NOT_ADDRESS      EQU  H'0005'

READ_WRITE       EQU  H'0002'
DATA_ADDRESS     EQU  H'0005'

R                EQU  H'0002'
D                EQU  H'0005'


;----- T2CON Bits -----------------------------------------------------
T2CKPS0          EQU  H'0000'
T2CKPS1          EQU  H'0001'
TMR2ON           EQU  H'0002'
T2OUTPS0         EQU  H'0003'
T2OUTPS1         EQU  H'0004'
T2OUTPS2         EQU  H'0005'
T2OUTPS3         EQU  H'0006'


;----- T1CON Bits -----------------------------------------------------
TMR1ON           EQU  H'0000'
TMR1CS           EQU  H'0001'
NOT_T1SYNC       EQU  H'0002'
T1OSCEN          EQU  H'0003'
T1CKPS0          EQU  H'0004'
T1CKPS1          EQU  H'0005'
T1RUN            EQU  H'0006'
RD16             EQU  H'0007'

T1SYNC           EQU  H'0002'

T1INSYNC         EQU  H'0002'


;----- RCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_PD           EQU  H'0002'
NOT_TO           EQU  H'0003'
NOT_RI           EQU  H'0004'
SBOREN           EQU  H'0006'
IPEN             EQU  H'0007'

BOR              EQU  H'0000'
POR              EQU  H'0001'
PD               EQU  H'0002'
TO               EQU  H'0003'
RI               EQU  H'0004'


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           EQU  H'0000'

SWDTE            EQU  H'0000'


;----- HLVDCON Bits -----------------------------------------------------
LVDL0            EQU  H'0000'
LVDL1            EQU  H'0001'
LVDL2            EQU  H'0002'
LVDL3            EQU  H'0003'
LVDEN            EQU  H'0004'
IRVST            EQU  H'0005'
VDIRMAG          EQU  H'0007'

LVV0             EQU  H'0000'
LVV1             EQU  H'0001'
LVV2             EQU  H'0002'
LVV3             EQU  H'0003'
BGST             EQU  H'0005'

HLVDL0           EQU  H'0000'
HLVDL1           EQU  H'0001'
HLVDL2           EQU  H'0002'
HLVDL3           EQU  H'0003'
HLVDEN           EQU  H'0004'


;----- OSCCON Bits -----------------------------------------------------
SCS0             EQU  H'0000'
SCS1             EQU  H'0001'
IOFS             EQU  H'0002'
OSTS             EQU  H'0003'
IRCF0            EQU  H'0004'
IRCF1            EQU  H'0005'
IRCF2            EQU  H'0006'
IDLEN            EQU  H'0007'

FLTS             EQU  H'0002'


;----- T0CON Bits -----------------------------------------------------
T0PS0            EQU  H'0000'
T0PS1            EQU  H'0001'
T0PS2            EQU  H'0002'
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
T08BIT           EQU  H'0006'
TMR0ON           EQU  H'0007'


;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
OV               EQU  H'0003'
N                EQU  H'0004'


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           EQU  H'0000'
INT2IF           EQU  H'0001'
INT3IF           EQU  H'0002'
INT1IE           EQU  H'0003'
INT2IE           EQU  H'0004'
INT3IE           EQU  H'0005'
INT1IP           EQU  H'0006'
INT2IP           EQU  H'0007'

INT1F            EQU  H'0000'
INT2F            EQU  H'0001'
INT3F            EQU  H'0002'
INT1E            EQU  H'0003'
INT2E            EQU  H'0004'
INT3E            EQU  H'0005'
INT1P            EQU  H'0006'
INT2P            EQU  H'0007'


;----- INTCON2 Bits -----------------------------------------------------
RBIP             EQU  H'0000'
INT3IP           EQU  H'0001'
TMR0IP           EQU  H'0002'
INTEDG3          EQU  H'0003'
INTEDG2          EQU  H'0004'
INTEDG1          EQU  H'0005'
INTEDG0          EQU  H'0006'
NOT_RBPU         EQU  H'0007'

INT3P            EQU  H'0001'
T0IP             EQU  H'0002'
RBPU             EQU  H'0007'


;----- INTCON Bits -----------------------------------------------------
RBIF             EQU  H'0000'
INT0IF           EQU  H'0001'
TMR0IF           EQU  H'0002'
RBIE             EQU  H'0003'
INT0IE           EQU  H'0004'
TMR0IE           EQU  H'0005'
PEIE             EQU  H'0006'
GIE              EQU  H'0007'

INT0F            EQU  H'0001'
T0IF             EQU  H'0002'
INT0E            EQU  H'0004'
T0IE             EQU  H'0005'
GIEL             EQU  H'0006'
GIEH             EQU  H'0007'


;----- STKPTR Bits -----------------------------------------------------
STKPTR0          EQU  H'0000'
STKPTR1          EQU  H'0001'
STKPTR2          EQU  H'0002'
STKPTR3          EQU  H'0003'
STKPTR4          EQU  H'0004'
STKUNF           EQU  H'0006'
STKOVF           EQU  H'0007'

STKFUL           EQU  H'0007'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'0FFF'
       __BADRAM  H'0300'-H'0F3F'
       __BADRAM  H'0F7D'
       __BADRAM  H'0F9C'
       __BADRAM  H'0FA6'-H'0FAA'
       __BADRAM  H'0FB0'
       __BADRAM  H'0FB6'-H'0FB9'
       __BADRAM  H'0FD4'

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Oscillator Selection bits:
;     OSC = LP             LP oscillator
;     OSC = XT             XT oscillator
;     OSC = HS             HS oscillator
;     OSC = RC             External RC oscillator, CLKO function on RA6
;     OSC = EC             EC oscillator, CLKO function on RA6
;     OSC = ECIO           EC oscillator, port function on RA6
;     OSC = HSPLL          HS oscillator, PLL enabled (clock frequency = 4 x FOSC1)
;     OSC = RCIO           External RC oscillator, port function on RA6
;     OSC = INTIO67        Internal oscillator block, port function on RA6 and RA7
;     OSC = INTIO7         Internal oscillator block, CLKO function on RA6, port function on RA7
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal/External Oscillator Switchover bit:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power-up Timer Enable bit:
;     PWRT = ON            PWRT enabled
;     PWRT = OFF           PWRT disabled
;
;   Brown-out Reset Enable bits:
;     BOREN = OFF          Brown-out Reset disabled in hardware and software
;     BOREN = ON           Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOREN = NOSLP        Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOREN = SBORDIS      Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown Out Voltage:
;     BORV = 0             Maximum Setting
;     BORV = 1             
;     BORV = 2             
;     BORV = 3             Minimum Setting
;
;   Watchdog Timer Enable bit:
;     WDT = OFF            WDT disabled (control is placed on the SWDTEN bit)
;     WDT = ON             WDT enabled
;
;   Watchdog Timer Postscale Select bits:
;     WDTPS = 1            1:1
;     WDTPS = 2            1:2
;     WDTPS = 4            1:4
;     WDTPS = 8            1:8
;     WDTPS = 16           1:16
;     WDTPS = 32           1:32
;     WDTPS = 64           1:64
;     WDTPS = 128          1:128
;     WDTPS = 256          1:256
;     WDTPS = 512          1:512
;     WDTPS = 1024         1:1024
;     WDTPS = 2048         1:2048
;     WDTPS = 4096         1:4096
;     WDTPS = 8192         1:8192
;     WDTPS = 16384        1:16384
;     WDTPS = 32768        1:32768
;
;   MCLR Pin Enable bit:
;     MCLRE = OFF          RG5 input pin enabled; MCLR disabled
;     MCLRE = ON           MCLR pin enabled; RG5 input pin disabled
;
;   Low-Power Timer 1 Oscillator Enable bit:
;     LPT1OSC = OFF        Timer1 configured for higher power operation
;     LPT1OSC = ON         Timer1 configured for low-power operation
;
;   CCP2 MUX bit:
;     CCP2MX = PORTBE      CCP2 input/output is multiplexed with RE7
;     CCP2MX = PORTC       CCP2 input/output is multiplexed with RC1
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protection bit:
;     CP = ON              Program memory block (000000-003FFFh) code-protected
;     CP = OFF             Program memory block (000000-003FFFh) not code-protected
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
;   CONFIG3H        300005h
;   CONFIG4L        300006h
;   CONFIG5L        300008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1H        EQU  H'300001'
_CONFIG2L        EQU  H'300002'
_CONFIG2H        EQU  H'300003'
_CONFIG3H        EQU  H'300005'
_CONFIG4L        EQU  H'300006'
_CONFIG5L        EQU  H'300008'

;----- CONFIG1H Options --------------------------------------------------
_OSC_LP_1H           EQU  H'F0'    ; LP oscillator
_OSC_XT_1H           EQU  H'F1'    ; XT oscillator
_OSC_HS_1H           EQU  H'F2'    ; HS oscillator
_OSC_RC_1H           EQU  H'F3'    ; External RC oscillator, CLKO function on RA6
_OSC_EC_1H           EQU  H'F4'    ; EC oscillator, CLKO function on RA6
_OSC_ECIO_1H         EQU  H'F5'    ; EC oscillator, port function on RA6
_OSC_HSPLL_1H        EQU  H'F6'    ; HS oscillator, PLL enabled (clock frequency = 4 x FOSC1)
_OSC_RCIO_1H         EQU  H'F7'    ; External RC oscillator, port function on RA6
_OSC_INTIO67_1H      EQU  H'F8'    ; Internal oscillator block, port function on RA6 and RA7
_OSC_INTIO7_1H       EQU  H'F9'    ; Internal oscillator block, CLKO function on RA6, port function on RA7

_FCMEN_OFF_1H        EQU  H'BF'    ; Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         EQU  H'FF'    ; Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         EQU  H'7F'    ; Oscillator Switchover mode disabled
_IESO_ON_1H          EQU  H'FF'    ; Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          EQU  H'FE'    ; PWRT enabled
_PWRT_OFF_2L         EQU  H'FF'    ; PWRT disabled

_BOREN_OFF_2L        EQU  H'F9'    ; Brown-out Reset disabled in hardware and software
_BOREN_ON_2L         EQU  H'FB'    ; Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOREN_NOSLP_2L      EQU  H'FD'    ; Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOREN_SBORDIS_2L    EQU  H'FF'    ; Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_0_2L           EQU  H'E7'    ; Maximum Setting
_BORV_1_2L           EQU  H'EF'    ; 
_BORV_2_2L           EQU  H'F7'    ; 
_BORV_3_2L           EQU  H'FF'    ; Minimum Setting

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          EQU  H'FE'    ; WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_2H           EQU  H'FF'    ; WDT enabled

_WDTPS_1_2H          EQU  H'E1'    ; 1:1
_WDTPS_2_2H          EQU  H'E3'    ; 1:2
_WDTPS_4_2H          EQU  H'E5'    ; 1:4
_WDTPS_8_2H          EQU  H'E7'    ; 1:8
_WDTPS_16_2H         EQU  H'E9'    ; 1:16
_WDTPS_32_2H         EQU  H'EB'    ; 1:32
_WDTPS_64_2H         EQU  H'ED'    ; 1:64
_WDTPS_128_2H        EQU  H'EF'    ; 1:128
_WDTPS_256_2H        EQU  H'F1'    ; 1:256
_WDTPS_512_2H        EQU  H'F3'    ; 1:512
_WDTPS_1024_2H       EQU  H'F5'    ; 1:1024
_WDTPS_2048_2H       EQU  H'F7'    ; 1:2048
_WDTPS_4096_2H       EQU  H'F9'    ; 1:4096
_WDTPS_8192_2H       EQU  H'FB'    ; 1:8192
_WDTPS_16384_2H      EQU  H'FD'    ; 1:16384
_WDTPS_32768_2H      EQU  H'FF'    ; 1:32768

;----- CONFIG3H Options --------------------------------------------------
_MCLRE_OFF_3H        EQU  H'7F'    ; RG5 input pin enabled; MCLR disabled
_MCLRE_ON_3H         EQU  H'FF'    ; MCLR pin enabled; RG5 input pin disabled

_LPT1OSC_OFF_3H      EQU  H'FB'    ; Timer1 configured for higher power operation
_LPT1OSC_ON_3H       EQU  H'FF'    ; Timer1 configured for low-power operation

_CCP2MX_PORTBE_3H    EQU  H'FE'    ; CCP2 input/output is multiplexed with RE7
_CCP2MX_PORTC_3H     EQU  H'FF'    ; CCP2 input/output is multiplexed with RC1

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       EQU  H'FE'    ; Stack full/underflow will not cause Reset
_STVREN_ON_4L        EQU  H'FF'    ; Stack full/underflow will cause Reset

_XINST_OFF_4L        EQU  H'BF'    ; Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
_XINST_ON_4L         EQU  H'FF'    ; Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         EQU  H'7F'    ; Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        EQU  H'FF'    ; Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP_ON_5L            EQU  H'FE'    ; Program memory block (000000-003FFFh) code-protected
_CP_OFF_5L           EQU  H'FF'    ; Program memory block (000000-003FFFh) not code-protected


_DEVID1          EQU  H'3FFFFE'
_DEVID2          EQU  H'3FFFFF'

_IDLOC0          EQU  H'200000'
_IDLOC1          EQU  H'200001'
_IDLOC2          EQU  H'200002'
_IDLOC3          EQU  H'200003'
_IDLOC4          EQU  H'200004'
_IDLOC5          EQU  H'200005'
_IDLOC6          EQU  H'200006'
_IDLOC7          EQU  H'200007'

        LIST
