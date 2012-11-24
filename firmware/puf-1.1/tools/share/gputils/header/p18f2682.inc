        LIST

;==========================================================================
;  $Id: p18f2682.inc,v 1.1 2006/08/19 02:52:39 craigfranklin Exp $
;  MPASM PIC18F2682 processor include
; 
;  (c) Copyright 1999-2006 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F2682 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC18F2682
;       2. LIST directive in the source file
;               LIST   P=PIC18F2682
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __18F2682
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
RXF6SIDH         EQU  H'0D60'
RXF6SIDL         EQU  H'0D61'
RXF6EIDH         EQU  H'0D62'
RXF6EIDL         EQU  H'0D63'
RXF7SIDH         EQU  H'0D64'
RXF7SIDL         EQU  H'0D65'
RXF7EIDH         EQU  H'0D66'
RXF7EIDL         EQU  H'0D67'
RXF8SIDH         EQU  H'0D68'
RXF8SIDL         EQU  H'0D69'
RXF8EIDH         EQU  H'0D6A'
RXF8EIDL         EQU  H'0D6B'
RXF9SIDH         EQU  H'0D70'
RXF9SIDL         EQU  H'0D71'
RXF9EIDH         EQU  H'0D72'
RXF9EIDL         EQU  H'0D73'
RXF10SIDH        EQU  H'0D74'
RXF10SIDL        EQU  H'0D75'
RXF10EIDH        EQU  H'0D76'
RXF10EIDL        EQU  H'0D77'
RXF11SIDH        EQU  H'0D78'
RXF11SIDL        EQU  H'0D79'
RXF11EIDH        EQU  H'0D7A'
RXF11EIDL        EQU  H'0D7B'
RXF12SIDH        EQU  H'0D80'
RXF12SIDL        EQU  H'0D81'
RXF12EIDH        EQU  H'0D82'
RXF12EIDL        EQU  H'0D83'
RXF13SIDH        EQU  H'0D84'
RXF13SIDL        EQU  H'0D85'
RXF13EIDH        EQU  H'0D86'
RXF13EIDL        EQU  H'0D87'
RXF14SIDH        EQU  H'0D88'
RXF14SIDL        EQU  H'0D89'
RXF14EIDH        EQU  H'0D8A'
RXF14EIDL        EQU  H'0D8B'
RXF15SIDH        EQU  H'0D90'
RXF15SIDL        EQU  H'0D91'
RXF15EIDH        EQU  H'0D92'
RXF15EIDL        EQU  H'0D93'
RXFCON0          EQU  H'0DD4'
RXFCON1          EQU  H'0DD5'
SDFLC            EQU  H'0DD8'
RXFBCON0         EQU  H'0DE0'
RXFBCON1         EQU  H'0DE1'
RXFBCON2         EQU  H'0DE2'
RXFBCON3         EQU  H'0DE3'
RXFBCON4         EQU  H'0DE4'
RXFBCON5         EQU  H'0DE5'
RXFBCON6         EQU  H'0DE6'
RXFBCON7         EQU  H'0DE7'
MSEL0            EQU  H'0DF0'
MSEL1            EQU  H'0DF1'
MSEL2            EQU  H'0DF2'
MSEL3            EQU  H'0DF3'
BSEL0            EQU  H'0DF8'
BIE0             EQU  H'0DFA'
TXBIE            EQU  H'0DFC'
B0CON            EQU  H'0E20'
B0SIDH           EQU  H'0E21'
B0SIDL           EQU  H'0E22'
B0EIDH           EQU  H'0E23'
B0EIDL           EQU  H'0E24'
B0DLC            EQU  H'0E25'
B0D0             EQU  H'0E26'
B0D1             EQU  H'0E27'
B0D2             EQU  H'0E28'
B0D3             EQU  H'0E29'
B0D4             EQU  H'0E2A'
B0D5             EQU  H'0E2B'
B0D6             EQU  H'0E2C'
B0D7             EQU  H'0E2D'
CANSTAT_RO9      EQU  H'0E2E'
CANCON_RO9       EQU  H'0E2F'
B1CON            EQU  H'0E30'
B1SIDH           EQU  H'0E31'
B1SIDL           EQU  H'0E32'
B1EIDH           EQU  H'0E33'
B1EIDL           EQU  H'0E34'
B1DLC            EQU  H'0E35'
B1D0             EQU  H'0E36'
B1D1             EQU  H'0E37'
B1D2             EQU  H'0E38'
B1D3             EQU  H'0E39'
B1D4             EQU  H'0E3A'
B1D5             EQU  H'0E3B'
B1D6             EQU  H'0E3C'
B1D7             EQU  H'0E3D'
CANSTAT_RO8      EQU  H'0E3E'
CANCON_RO8       EQU  H'0E3F'
B2CON            EQU  H'0E40'
B2SIDH           EQU  H'0E41'
B2SIDL           EQU  H'0E42'
B2EIDH           EQU  H'0E43'
B2EIDL           EQU  H'0E44'
B2DLC            EQU  H'0E45'
B2D0             EQU  H'0E46'
B2D1             EQU  H'0E47'
B2D2             EQU  H'0E48'
B2D3             EQU  H'0E49'
B2D4             EQU  H'0E4A'
B2D5             EQU  H'0E4B'
B2D6             EQU  H'0E4C'
B2D7             EQU  H'0E4D'
CANSTAT_RO7      EQU  H'0E4E'
CANCON_RO7       EQU  H'0E4F'
B3CON            EQU  H'0E50'
B3SIDH           EQU  H'0E51'
B3SIDL           EQU  H'0E52'
B3EIDH           EQU  H'0E53'
B3EIDL           EQU  H'0E54'
B3DLC            EQU  H'0E55'
B3D0             EQU  H'0E56'
B3D1             EQU  H'0E57'
B3D2             EQU  H'0E58'
B3D3             EQU  H'0E59'
B3D4             EQU  H'0E5A'
B3D5             EQU  H'0E5B'
B3D6             EQU  H'0E5C'
B3D7             EQU  H'0E5D'
CANSTAT_RO6      EQU  H'0E5E'
CANCON_RO6       EQU  H'0E5F'
B4CON            EQU  H'0E60'
B4SIDH           EQU  H'0E61'
B4SIDL           EQU  H'0E62'
B4EIDH           EQU  H'0E63'
B4EIDL           EQU  H'0E64'
B4DLC            EQU  H'0E65'
B4D0             EQU  H'0E66'
B4D1             EQU  H'0E67'
B4D2             EQU  H'0E68'
B4D3             EQU  H'0E69'
B4D4             EQU  H'0E6A'
B4D5             EQU  H'0E6B'
B4D6             EQU  H'0E6C'
B4D7             EQU  H'0E6D'
CANSTAT_RO5      EQU  H'0E6E'
CANCON_RO5       EQU  H'0E6F'
B5CON            EQU  H'0E70'
B5SIDH           EQU  H'0E71'
B5SIDL           EQU  H'0E72'
B5EIDH           EQU  H'0E73'
B5EIDL           EQU  H'0E74'
B5DLC            EQU  H'0E75'
B5D0             EQU  H'0E76'
B5D1             EQU  H'0E77'
B5D2             EQU  H'0E78'
B5D3             EQU  H'0E79'
B5D4             EQU  H'0E7A'
B5D5             EQU  H'0E7B'
B5D6             EQU  H'0E7C'
B5D7             EQU  H'0E7D'
CANSTAT_RO4      EQU  H'0E7E'
CANCON_RO4       EQU  H'0E7F'
RXF0SIDH         EQU  H'0F00'
RXF0SIDL         EQU  H'0F01'
RXF0EIDH         EQU  H'0F02'
RXF0EIDL         EQU  H'0F03'
RXF1SIDH         EQU  H'0F04'
RXF1SIDL         EQU  H'0F05'
RXF1EIDH         EQU  H'0F06'
RXF1EIDL         EQU  H'0F07'
RXF2SIDH         EQU  H'0F08'
RXF2SIDL         EQU  H'0F09'
RXF2EIDH         EQU  H'0F0A'
RXF2EIDL         EQU  H'0F0B'
RXF3SIDH         EQU  H'0F0C'
RXF3SIDL         EQU  H'0F0D'
RXF3EIDH         EQU  H'0F0E'
RXF3EIDL         EQU  H'0F0F'
RXF4SIDH         EQU  H'0F10'
RXF4SIDL         EQU  H'0F11'
RXF4EIDH         EQU  H'0F12'
RXF4EIDL         EQU  H'0F13'
RXF5SIDH         EQU  H'0F14'
RXF5SIDL         EQU  H'0F15'
RXF5EIDH         EQU  H'0F16'
RXF5EIDL         EQU  H'0F17'
RXM0SIDH         EQU  H'0F18'
RXM0SIDL         EQU  H'0F19'
RXM0EIDH         EQU  H'0F1A'
RXM0EIDL         EQU  H'0F1B'
RXM1SIDH         EQU  H'0F1C'
RXM1SIDL         EQU  H'0F1D'
RXM1EIDH         EQU  H'0F1E'
RXM1EIDL         EQU  H'0F1F'
TXB2CON          EQU  H'0F20'
TXB2SIDH         EQU  H'0F21'
TXB2SIDL         EQU  H'0F22'
TXB2EIDH         EQU  H'0F23'
TXB2EIDL         EQU  H'0F24'
TXB2DLC          EQU  H'0F25'
TXB2D0           EQU  H'0F26'
TXB2D1           EQU  H'0F27'
TXB2D2           EQU  H'0F28'
TXB2D3           EQU  H'0F29'
TXB2D4           EQU  H'0F2A'
TXB2D5           EQU  H'0F2B'
TXB2D6           EQU  H'0F2C'
TXB2D7           EQU  H'0F2D'
CANSTAT_RO3      EQU  H'0F2E'
CANCON_RO3       EQU  H'0F2F'
TXB1CON          EQU  H'0F30'
TXB1SIDH         EQU  H'0F31'
TXB1SIDL         EQU  H'0F32'
TXB1EIDH         EQU  H'0F33'
TXB1EIDL         EQU  H'0F34'
TXB1DLC          EQU  H'0F35'
TXB1D0           EQU  H'0F36'
TXB1D1           EQU  H'0F37'
TXB1D2           EQU  H'0F38'
TXB1D3           EQU  H'0F39'
TXB1D4           EQU  H'0F3A'
TXB1D5           EQU  H'0F3B'
TXB1D6           EQU  H'0F3C'
TXB1D7           EQU  H'0F3D'
CANSTAT_RO2      EQU  H'0F3E'
CANCON_RO2       EQU  H'0F3F'
TXB0CON          EQU  H'0F40'
TXB0SIDH         EQU  H'0F41'
TXB0SIDL         EQU  H'0F42'
TXB0EIDH         EQU  H'0F43'
TXB0EIDL         EQU  H'0F44'
TXB0DLC          EQU  H'0F45'
TXB0D0           EQU  H'0F46'
TXB0D1           EQU  H'0F47'
TXB0D2           EQU  H'0F48'
TXB0D3           EQU  H'0F49'
TXB0D4           EQU  H'0F4A'
TXB0D5           EQU  H'0F4B'
TXB0D6           EQU  H'0F4C'
TXB0D7           EQU  H'0F4D'
CANSTAT_RO1      EQU  H'0F4E'
CANCON_RO1       EQU  H'0F4F'
RXB1CON          EQU  H'0F50'
RXB1SIDH         EQU  H'0F51'
RXB1SIDL         EQU  H'0F52'
RXB1EIDH         EQU  H'0F53'
RXB1EIDL         EQU  H'0F54'
RXB1DLC          EQU  H'0F55'
RXB1D0           EQU  H'0F56'
RXB1D1           EQU  H'0F57'
RXB1D2           EQU  H'0F58'
RXB1D3           EQU  H'0F59'
RXB1D4           EQU  H'0F5A'
RXB1D5           EQU  H'0F5B'
RXB1D6           EQU  H'0F5C'
RXB1D7           EQU  H'0F5D'
CANSTAT_RO0      EQU  H'0F5E'
CANCON_RO0       EQU  H'0F5F'
RXB0CON          EQU  H'0F60'
RXB0SIDH         EQU  H'0F61'
RXB0SIDL         EQU  H'0F62'
RXB0EIDH         EQU  H'0F63'
RXB0EIDL         EQU  H'0F64'
RXB0DLC          EQU  H'0F65'
RXB0D0           EQU  H'0F66'
RXB0D1           EQU  H'0F67'
RXB0D2           EQU  H'0F68'
RXB0D3           EQU  H'0F69'
RXB0D4           EQU  H'0F6A'
RXB0D5           EQU  H'0F6B'
RXB0D6           EQU  H'0F6C'
RXB0D7           EQU  H'0F6D'
CANSTAT          EQU  H'0F6E'
CANCON           EQU  H'0F6F'
BRGCON1          EQU  H'0F70'
BRGCON2          EQU  H'0F71'
BRGCON3          EQU  H'0F72'
CIOCON           EQU  H'0F73'
COMSTAT          EQU  H'0F74'
RXERRCNT         EQU  H'0F75'
TXERRCNT         EQU  H'0F76'
ECANCON          EQU  H'0F77'
PORTA            EQU  H'0F80'
PORTB            EQU  H'0F81'
PORTC            EQU  H'0F82'
PORTE            EQU  H'0F84'
LATA             EQU  H'0F89'
LATB             EQU  H'0F8A'
LATC             EQU  H'0F8B'
DDRA             EQU  H'0F92'
TRISA            EQU  H'0F92'
DDRB             EQU  H'0F93'
TRISB            EQU  H'0F93'
DDRC             EQU  H'0F94'
TRISC            EQU  H'0F94'
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
EECON1           EQU  H'0FA6'
EECON2           EQU  H'0FA7'
EEDATA           EQU  H'0FA8'
EEADR            EQU  H'0FA9'
EEADRH           EQU  H'0FAA'
RCSTA            EQU  H'0FAB'
TXSTA            EQU  H'0FAC'
TXREG            EQU  H'0FAD'
RCREG            EQU  H'0FAE'
SPBRG            EQU  H'0FAF'
SPBRGH           EQU  H'0FB0'
T3CON            EQU  H'0FB1'
TMR3L            EQU  H'0FB2'
TMR3H            EQU  H'0FB3'
BAUDCON          EQU  H'0FB8'
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
LVDCON           EQU  H'0FD2'
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

;----- RXF6SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF6SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF6EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF6EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF7SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF7SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF7EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF7EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF8SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF8SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF8EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF8EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF9SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF9SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF9EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF9EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF10SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF10SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF10EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF10EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF11SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF11SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF11EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF11EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF12SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF12SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF12EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF12EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF13SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF13SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF13EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF13EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF14SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF14SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF14EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF14EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF15SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF15SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF15EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF15EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXFCON0 Bits -----------------------------------------------------
RXF0EN           EQU  H'0000'
RXF1EN           EQU  H'0001'
RXF2EN           EQU  H'0002'
RXF3EN           EQU  H'0003'
RXF4EN           EQU  H'0004'
RXF5EN           EQU  H'0005'
RXF6EN           EQU  H'0006'
RXF7EN           EQU  H'0007'


;----- RXFCON1 Bits -----------------------------------------------------
RXF8EN           EQU  H'0000'
RXF9EN           EQU  H'0001'
RXF10EN          EQU  H'0002'
RXF11EN          EQU  H'0003'
RXF12EN          EQU  H'0004'
RXF13EN          EQU  H'0005'
RXF14EN          EQU  H'0006'
RXF15EN          EQU  H'0007'


;----- SDFLC Bits -----------------------------------------------------
DFLC0            EQU  H'0000'
DFLC1            EQU  H'0001'
DFLC2            EQU  H'0002'
DFLC3            EQU  H'0003'
DFLC4            EQU  H'0004'

FLC0             EQU  H'0000'
FLC1             EQU  H'0001'
FLC2             EQU  H'0002'
FLC3             EQU  H'0003'
FLC4             EQU  H'0004'


;----- RXFBCON0 Bits -----------------------------------------------------
F0BP_0           EQU  H'0000'
F0BP_1           EQU  H'0001'
F0BP_2           EQU  H'0002'
F0BP_3           EQU  H'0003'
F1BP_0           EQU  H'0004'
F1BP_1           EQU  H'0005'
F1BP_2           EQU  H'0006'
F1BP_3           EQU  H'0007'


;----- RXFBCON1 Bits -----------------------------------------------------
F2BP_0           EQU  H'0000'
F2BP_1           EQU  H'0001'
F2BP_2           EQU  H'0002'
F2BP_3           EQU  H'0003'
F3BP_0           EQU  H'0004'
F3BP_1           EQU  H'0005'
F3BP_2           EQU  H'0006'
F3BP_3           EQU  H'0007'


;----- RXFBCON2 Bits -----------------------------------------------------
F4BP_0           EQU  H'0000'
F4BP_1           EQU  H'0001'
F4BP_2           EQU  H'0002'
F4BP_3           EQU  H'0003'
F5BP_0           EQU  H'0004'
F5BP_1           EQU  H'0005'
F5BP_2           EQU  H'0006'
F5BP_3           EQU  H'0007'


;----- RXFBCON3 Bits -----------------------------------------------------
F6BP_0           EQU  H'0000'
F6BP_1           EQU  H'0001'
F6BP_2           EQU  H'0002'
F6BP_3           EQU  H'0003'
F7BP_0           EQU  H'0004'
F7BP_1           EQU  H'0005'
F7BP_2           EQU  H'0006'
F7BP_3           EQU  H'0007'


;----- RXFBCON4 Bits -----------------------------------------------------
F8BP_0           EQU  H'0000'
F8BP_1           EQU  H'0001'
F8BP_2           EQU  H'0002'
F8BP_3           EQU  H'0003'
F9BP_0           EQU  H'0004'
F9BP_1           EQU  H'0005'
F9BP_2           EQU  H'0006'
F9BP_3           EQU  H'0007'


;----- RXFBCON5 Bits -----------------------------------------------------
F10BP_0          EQU  H'0000'
F10BP_1          EQU  H'0001'
F10BP_2          EQU  H'0002'
F10BP_3          EQU  H'0003'
F11BP_0          EQU  H'0004'
F11BP_1          EQU  H'0005'
F11BP_2          EQU  H'0006'
F11BP_3          EQU  H'0007'


;----- RXFBCON6 Bits -----------------------------------------------------
F12BP_0          EQU  H'0000'
F12BP_1          EQU  H'0001'
F12BP_2          EQU  H'0002'
F12BP_3          EQU  H'0003'
F13BP_0          EQU  H'0004'
F13BP_1          EQU  H'0005'
F13BP_2          EQU  H'0006'
F13BP_3          EQU  H'0007'


;----- RXFBCON7 Bits -----------------------------------------------------
F14BP_0          EQU  H'0000'
F14BP_1          EQU  H'0001'
F14BP_2          EQU  H'0002'
F14BP_3          EQU  H'0003'
F15BP_0          EQU  H'0004'
F15BP_1          EQU  H'0005'
F15BP_2          EQU  H'0006'
F15BP_3          EQU  H'0007'


;----- MSEL0 Bits -----------------------------------------------------
FIL0_0           EQU  H'0000'
FIL0_1           EQU  H'0001'
FIL1_0           EQU  H'0002'
FIL1_1           EQU  H'0003'
FIL2_0           EQU  H'0004'
FIL2_1           EQU  H'0005'
FIL3_0           EQU  H'0006'
FIL3_1           EQU  H'0007'


;----- MSEL1 Bits -----------------------------------------------------
FIL4_0           EQU  H'0000'
FIL4_1           EQU  H'0001'
FIL5_0           EQU  H'0002'
FIL5_1           EQU  H'0003'
FIL6_0           EQU  H'0004'
FIL6_1           EQU  H'0005'
FIL7_0           EQU  H'0006'
FIL7_1           EQU  H'0007'


;----- MSEL2 Bits -----------------------------------------------------
FIL8_0           EQU  H'0000'
FIL8_1           EQU  H'0001'
FIL9_0           EQU  H'0002'
FIL9_1           EQU  H'0003'
FIL10_0          EQU  H'0004'
FIL10_1          EQU  H'0005'
FIL11_0          EQU  H'0006'
FIL11_1          EQU  H'0007'


;----- MSEL3 Bits -----------------------------------------------------
FIL12_0          EQU  H'0000'
FIL12_1          EQU  H'0001'
FIL13_0          EQU  H'0002'
FIL13_1          EQU  H'0003'
FIL14_0          EQU  H'0004'
FIL14_1          EQU  H'0005'
FIL15_0          EQU  H'0006'
FIL15_1          EQU  H'0007'


;----- BSEL0 Bits -----------------------------------------------------
B0TXEN           EQU  H'0002'
B1TXEN           EQU  H'0003'
B2TXEN           EQU  H'0004'
B3TXEN           EQU  H'0005'
B4TXEN           EQU  H'0006'
B5TXEN           EQU  H'0007'


;----- BIE0 Bits -----------------------------------------------------
RXB0IE           EQU  H'0000'
RXB1IE           EQU  H'0001'
B0IE             EQU  H'0002'
B1IE             EQU  H'0003'
B2IE             EQU  H'0004'
B3IE             EQU  H'0005'
B4IE             EQU  H'0006'
B5IE             EQU  H'0007'


;----- TXBIE Bits -----------------------------------------------------
TXB0IE           EQU  H'0002'
TXB1IE           EQU  H'0003'
TXB2IE           EQU  H'0004'


;----- B0CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
RTREN            EQU  H'0002'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIF            EQU  H'0007'

RXRTRRO_B0CON    EQU  H'0005'


;----- B0SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- B0SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDE            EQU  H'0003'


;----- B0EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- B0EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- B0DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

TXRTR            EQU  H'0006'

RB0_B0DLC        EQU  H'0004'
RB1_B0DLC        EQU  H'0005'


;----- B0D0 Bits -----------------------------------------------------
B0D00            EQU  H'0000'
B0D01            EQU  H'0001'
B0D02            EQU  H'0002'
B0D03            EQU  H'0003'
B0D04            EQU  H'0004'
B0D05            EQU  H'0005'
B0D06            EQU  H'0006'
B0D07            EQU  H'0007'


;----- B0D1 Bits -----------------------------------------------------
B0D10            EQU  H'0000'
B0D11            EQU  H'0001'
B0D12            EQU  H'0002'
B0D13            EQU  H'0003'
B0D14            EQU  H'0004'
B0D15            EQU  H'0005'
B0D16            EQU  H'0006'
B0D17            EQU  H'0007'


;----- B0D2 Bits -----------------------------------------------------
B0D20            EQU  H'0000'
B0D21            EQU  H'0001'
B0D22            EQU  H'0002'
B0D23            EQU  H'0003'
B0D24            EQU  H'0004'
B0D25            EQU  H'0005'
B0D26            EQU  H'0006'
B0D27            EQU  H'0007'


;----- B0D3 Bits -----------------------------------------------------
B0D30            EQU  H'0000'
B0D31            EQU  H'0001'
B0D32            EQU  H'0002'
B0D33            EQU  H'0003'
B0D34            EQU  H'0004'
B0D35            EQU  H'0005'
B0D36            EQU  H'0006'
B0D37            EQU  H'0007'


;----- B0D4 Bits -----------------------------------------------------
B0D40            EQU  H'0000'
B0D41            EQU  H'0001'
B0D42            EQU  H'0002'
B0D43            EQU  H'0003'
B0D44            EQU  H'0004'
B0D45            EQU  H'0005'
B0D46            EQU  H'0006'
B0D47            EQU  H'0007'


;----- B0D5 Bits -----------------------------------------------------
B0D50            EQU  H'0000'
B0D51            EQU  H'0001'
B0D52            EQU  H'0002'
B0D53            EQU  H'0003'
B0D54            EQU  H'0004'
B0D55            EQU  H'0005'
B0D56            EQU  H'0006'
B0D57            EQU  H'0007'


;----- B0D6 Bits -----------------------------------------------------
B0D60            EQU  H'0000'
B0D61            EQU  H'0001'
B0D62            EQU  H'0002'
B0D63            EQU  H'0003'
B0D64            EQU  H'0004'
B0D65            EQU  H'0005'
B0D66            EQU  H'0006'
B0D67            EQU  H'0007'


;----- B0D7 Bits -----------------------------------------------------
B0D70            EQU  H'0000'
B0D71            EQU  H'0001'
B0D72            EQU  H'0002'
B0D73            EQU  H'0003'
B0D74            EQU  H'0004'
B0D75            EQU  H'0005'
B0D76            EQU  H'0006'
B0D77            EQU  H'0007'


;----- CANSTAT_RO9 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO9 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- B1CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
RTREN            EQU  H'0002'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIF            EQU  H'0007'

RXRTRRO_B1CON    EQU  H'0005'


;----- B1SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- B1SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDE            EQU  H'0003'


;----- B1EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- B1EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- B1DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

RB0_B1DLC        EQU  H'0004'
RB1_B1DLC        EQU  H'0005'

TXRTR            EQU  H'0006'


;----- B1D0 Bits -----------------------------------------------------
B1D00            EQU  H'0000'
B1D01            EQU  H'0001'
B1D02            EQU  H'0002'
B1D03            EQU  H'0003'
B1D04            EQU  H'0004'
B1D05            EQU  H'0005'
B1D06            EQU  H'0006'
B1D07            EQU  H'0007'


;----- B1D1 Bits -----------------------------------------------------
B1D10            EQU  H'0000'
B1D11            EQU  H'0001'
B1D12            EQU  H'0002'
B1D13            EQU  H'0003'
B1D14            EQU  H'0004'
B1D15            EQU  H'0005'
B1D16            EQU  H'0006'
B1D17            EQU  H'0007'


;----- B1D2 Bits -----------------------------------------------------
B1D20            EQU  H'0000'
B1D21            EQU  H'0001'
B1D22            EQU  H'0002'
B1D23            EQU  H'0003'
B1D24            EQU  H'0004'
B1D25            EQU  H'0005'
B1D26            EQU  H'0006'
B1D27            EQU  H'0007'


;----- B1D3 Bits -----------------------------------------------------
B1D30            EQU  H'0000'
B1D31            EQU  H'0001'
B1D32            EQU  H'0002'
B1D33            EQU  H'0003'
B1D34            EQU  H'0004'
B1D35            EQU  H'0005'
B1D36            EQU  H'0006'
B1D37            EQU  H'0007'


;----- B1D4 Bits -----------------------------------------------------
B1D40            EQU  H'0000'
B1D41            EQU  H'0001'
B1D42            EQU  H'0002'
B1D43            EQU  H'0003'
B1D44            EQU  H'0004'
B1D45            EQU  H'0005'
B1D46            EQU  H'0006'
B1D47            EQU  H'0007'


;----- B1D5 Bits -----------------------------------------------------
B1D50            EQU  H'0000'
B1D51            EQU  H'0001'
B1D52            EQU  H'0002'
B1D53            EQU  H'0003'
B1D54            EQU  H'0004'
B1D55            EQU  H'0005'
B1D56            EQU  H'0006'
B1D57            EQU  H'0007'


;----- B1D6 Bits -----------------------------------------------------
B1D60            EQU  H'0000'
B1D61            EQU  H'0001'
B1D62            EQU  H'0002'
B1D63            EQU  H'0003'
B1D64            EQU  H'0004'
B1D65            EQU  H'0005'
B1D66            EQU  H'0006'
B1D67            EQU  H'0007'


;----- B1D7 Bits -----------------------------------------------------
B1D70            EQU  H'0000'
B1D71            EQU  H'0001'
B1D72            EQU  H'0002'
B1D73            EQU  H'0003'
B1D74            EQU  H'0004'
B1D75            EQU  H'0005'
B1D76            EQU  H'0006'
B1D77            EQU  H'0007'


;----- CANSTAT_RO8 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO8 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- B2CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
RTREN            EQU  H'0002'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIF            EQU  H'0007'

RXRTRRO_B2CON    EQU  H'0005'


;----- B2SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- B2SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDE            EQU  H'0003'


;----- B2EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- B2EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- B2DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

TXRTR            EQU  H'0006'

RB0_B2DLC        EQU  H'0004'
RB1_B2DLC        EQU  H'0005'


;----- B2D0 Bits -----------------------------------------------------
B2D00            EQU  H'0000'
B2D01            EQU  H'0001'
B2D02            EQU  H'0002'
B2D03            EQU  H'0003'
B2D04            EQU  H'0004'
B2D05            EQU  H'0005'
B2D06            EQU  H'0006'
B2D07            EQU  H'0007'


;----- B2D1 Bits -----------------------------------------------------
B2D10            EQU  H'0000'
B2D11            EQU  H'0001'
B2D12            EQU  H'0002'
B2D13            EQU  H'0003'
B2D14            EQU  H'0004'
B2D15            EQU  H'0005'
B2D16            EQU  H'0006'
B2D17            EQU  H'0007'


;----- B2D2 Bits -----------------------------------------------------
B2D20            EQU  H'0000'
B2D21            EQU  H'0001'
B2D22            EQU  H'0002'
B2D23            EQU  H'0003'
B2D24            EQU  H'0004'
B2D25            EQU  H'0005'
B2D26            EQU  H'0006'
B2D27            EQU  H'0007'


;----- B2D3 Bits -----------------------------------------------------
B2D30            EQU  H'0000'
B2D31            EQU  H'0001'
B2D32            EQU  H'0002'
B2D33            EQU  H'0003'
B2D34            EQU  H'0004'
B2D35            EQU  H'0005'
B2D36            EQU  H'0006'
B2D37            EQU  H'0007'


;----- B2D4 Bits -----------------------------------------------------
B2D40            EQU  H'0000'
B2D41            EQU  H'0001'
B2D42            EQU  H'0002'
B2D43            EQU  H'0003'
B2D44            EQU  H'0004'
B2D45            EQU  H'0005'
B2D46            EQU  H'0006'
B2D47            EQU  H'0007'


;----- B2D5 Bits -----------------------------------------------------
B2D50            EQU  H'0000'
B2D51            EQU  H'0001'
B2D52            EQU  H'0002'
B2D53            EQU  H'0003'
B2D54            EQU  H'0004'
B2D55            EQU  H'0005'
B2D56            EQU  H'0006'
B2D57            EQU  H'0007'


;----- B2D6 Bits -----------------------------------------------------
B2D60            EQU  H'0000'
B2D61            EQU  H'0001'
B2D62            EQU  H'0002'
B2D63            EQU  H'0003'
B2D64            EQU  H'0004'
B2D65            EQU  H'0005'
B2D66            EQU  H'0006'
B2D67            EQU  H'0007'


;----- B2D7 Bits -----------------------------------------------------
B2D70            EQU  H'0000'
B2D71            EQU  H'0001'
B2D72            EQU  H'0002'
B2D73            EQU  H'0003'
B2D74            EQU  H'0004'
B2D75            EQU  H'0005'
B2D76            EQU  H'0006'
B2D77            EQU  H'0007'


;----- CANSTAT_RO7 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO7 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- B3CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
RTREN            EQU  H'0002'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIF            EQU  H'0007'

RXRTRRO_B3CON    EQU  H'0005'


;----- B3SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- B3SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDE            EQU  H'0003'


;----- B3EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- B3EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- B3DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

TXRTR            EQU  H'0006'

RB0_B3DLC        EQU  H'0004'
RB1_B3DLC        EQU  H'0005'


;----- B3D0 Bits -----------------------------------------------------
B3D00            EQU  H'0000'
B3D01            EQU  H'0001'
B3D02            EQU  H'0002'
B3D03            EQU  H'0003'
B3D04            EQU  H'0004'
B3D05            EQU  H'0005'
B3D06            EQU  H'0006'
B3D07            EQU  H'0007'


;----- B3D1 Bits -----------------------------------------------------
B3D10            EQU  H'0000'
B3D11            EQU  H'0001'
B3D12            EQU  H'0002'
B3D13            EQU  H'0003'
B3D14            EQU  H'0004'
B3D15            EQU  H'0005'
B3D16            EQU  H'0006'
B3D17            EQU  H'0007'


;----- B3D2 Bits -----------------------------------------------------
B3D20            EQU  H'0000'
B3D21            EQU  H'0001'
B3D22            EQU  H'0002'
B3D23            EQU  H'0003'
B3D24            EQU  H'0004'
B3D25            EQU  H'0005'
B3D26            EQU  H'0006'
B3D27            EQU  H'0007'


;----- B3D3 Bits -----------------------------------------------------
B3D30            EQU  H'0000'
B3D31            EQU  H'0001'
B3D32            EQU  H'0002'
B3D33            EQU  H'0003'
B3D34            EQU  H'0004'
B3D35            EQU  H'0005'
B3D36            EQU  H'0006'
B3D37            EQU  H'0007'


;----- B3D4 Bits -----------------------------------------------------
B3D40            EQU  H'0000'
B3D41            EQU  H'0001'
B3D42            EQU  H'0002'
B3D43            EQU  H'0003'
B3D44            EQU  H'0004'
B3D45            EQU  H'0005'
B3D46            EQU  H'0006'
B3D47            EQU  H'0007'


;----- B3D5 Bits -----------------------------------------------------
B3D50            EQU  H'0000'
B3D51            EQU  H'0001'
B3D52            EQU  H'0002'
B3D53            EQU  H'0003'
B3D54            EQU  H'0004'
B3D55            EQU  H'0005'
B3D56            EQU  H'0006'
B3D57            EQU  H'0007'


;----- B3D6 Bits -----------------------------------------------------
B3D60            EQU  H'0000'
B3D61            EQU  H'0001'
B3D62            EQU  H'0002'
B3D63            EQU  H'0003'
B3D64            EQU  H'0004'
B3D65            EQU  H'0005'
B3D66            EQU  H'0006'
B3D67            EQU  H'0007'


;----- B3D7 Bits -----------------------------------------------------
B3D70            EQU  H'0000'
B3D71            EQU  H'0001'
B3D72            EQU  H'0002'
B3D73            EQU  H'0003'
B3D74            EQU  H'0004'
B3D75            EQU  H'0005'
B3D76            EQU  H'0006'
B3D77            EQU  H'0007'


;----- CANSTAT_RO6 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO6 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- B4CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
RTREN            EQU  H'0002'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIF            EQU  H'0007'

RXRTRRO_B4CON    EQU  H'0005'


;----- B4SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- B4SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDE            EQU  H'0003'


;----- B4EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- B4EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- B4DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

TXRTR            EQU  H'0006'

RB0_B4DLC        EQU  H'0004'
RB1_B4DLC        EQU  H'0005'


;----- B4D0 Bits -----------------------------------------------------
B4D00            EQU  H'0000'
B4D01            EQU  H'0001'
B4D02            EQU  H'0002'
B4D03            EQU  H'0003'
B4D04            EQU  H'0004'
B4D05            EQU  H'0005'
B4D06            EQU  H'0006'
B4D07            EQU  H'0007'


;----- B4D1 Bits -----------------------------------------------------
B4D10            EQU  H'0000'
B4D11            EQU  H'0001'
B4D12            EQU  H'0002'
B4D13            EQU  H'0003'
B4D14            EQU  H'0004'
B4D15            EQU  H'0005'
B4D16            EQU  H'0006'
B4D17            EQU  H'0007'


;----- B4D2 Bits -----------------------------------------------------
B4D20            EQU  H'0000'
B4D21            EQU  H'0001'
B4D22            EQU  H'0002'
B4D23            EQU  H'0003'
B4D24            EQU  H'0004'
B4D25            EQU  H'0005'
B4D26            EQU  H'0006'
B4D27            EQU  H'0007'


;----- B4D3 Bits -----------------------------------------------------
B4D30            EQU  H'0000'
B4D31            EQU  H'0001'
B4D32            EQU  H'0002'
B4D33            EQU  H'0003'
B4D34            EQU  H'0004'
B4D35            EQU  H'0005'
B4D36            EQU  H'0006'
B4D37            EQU  H'0007'


;----- B4D4 Bits -----------------------------------------------------
B4D40            EQU  H'0000'
B4D41            EQU  H'0001'
B4D42            EQU  H'0002'
B4D43            EQU  H'0003'
B4D44            EQU  H'0004'
B4D45            EQU  H'0005'
B4D46            EQU  H'0006'
B4D47            EQU  H'0007'


;----- B4D5 Bits -----------------------------------------------------
B4D50            EQU  H'0000'
B4D51            EQU  H'0001'
B4D52            EQU  H'0002'
B4D53            EQU  H'0003'
B4D54            EQU  H'0004'
B4D55            EQU  H'0005'
B4D56            EQU  H'0006'
B4D57            EQU  H'0007'


;----- B4D6 Bits -----------------------------------------------------
B4D60            EQU  H'0000'
B4D61            EQU  H'0001'
B4D62            EQU  H'0002'
B4D63            EQU  H'0003'
B4D64            EQU  H'0004'
B4D65            EQU  H'0005'
B4D66            EQU  H'0006'
B4D67            EQU  H'0007'


;----- B4D7 Bits -----------------------------------------------------
B4D70            EQU  H'0000'
B4D71            EQU  H'0001'
B4D72            EQU  H'0002'
B4D73            EQU  H'0003'
B4D74            EQU  H'0004'
B4D75            EQU  H'0005'
B4D76            EQU  H'0006'
B46D77           EQU  H'0007'

B4D77            EQU  H'0007'


;----- CANSTAT_RO5 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO5 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- B5CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
RTREN            EQU  H'0002'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIF            EQU  H'0007'

RXRTRRO_B5CON    EQU  H'0005'


;----- B5SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- B5SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- B5EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- B5EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- B5DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

RB0_B5DLC        EQU  H'0004'
RB1_B5DLC        EQU  H'0005'


;----- B5D0 Bits -----------------------------------------------------
B5D00            EQU  H'0000'
B5D01            EQU  H'0001'
B5D02            EQU  H'0002'
B5D03            EQU  H'0003'
B5D04            EQU  H'0004'
B5D05            EQU  H'0005'
B5D06            EQU  H'0006'
B57D07           EQU  H'0007'

B5D07            EQU  H'0007'


;----- B5D1 Bits -----------------------------------------------------
B5D10            EQU  H'0000'
B5D11            EQU  H'0001'
B5D12            EQU  H'0002'
B5D13            EQU  H'0003'
B5D14            EQU  H'0004'
B5D15            EQU  H'0005'
B5D16            EQU  H'0006'
B5D17            EQU  H'0007'


;----- B5D2 Bits -----------------------------------------------------
B5D20            EQU  H'0000'
B5D21            EQU  H'0001'
B5D22            EQU  H'0002'
B57D23           EQU  H'0003'
B5D24            EQU  H'0004'
B5D25            EQU  H'0005'
B5D26            EQU  H'0006'
B5D27            EQU  H'0007'

B5D23            EQU  H'0003'


;----- B5D3 Bits -----------------------------------------------------
B5D30            EQU  H'0000'
B5D31            EQU  H'0001'
B5D32            EQU  H'0002'
B5D33            EQU  H'0003'
B5D34            EQU  H'0004'
B5D35            EQU  H'0005'
B5D36            EQU  H'0006'
B5D37            EQU  H'0007'


;----- B5D4 Bits -----------------------------------------------------
B5D40            EQU  H'0000'
B5D41            EQU  H'0001'
B5D42            EQU  H'0002'
B5D43            EQU  H'0003'
B5D44            EQU  H'0004'
B5D45            EQU  H'0005'
B5D46            EQU  H'0006'
B5D47            EQU  H'0007'


;----- B5D5 Bits -----------------------------------------------------
B5D50            EQU  H'0000'
B5D51            EQU  H'0001'
B5D52            EQU  H'0002'
B5D53            EQU  H'0003'
B5D54            EQU  H'0004'
B5D55            EQU  H'0005'
B5D56            EQU  H'0006'
B5D57            EQU  H'0007'


;----- B5D6 Bits -----------------------------------------------------
B5D60            EQU  H'0000'
B5D61            EQU  H'0001'
B5D62            EQU  H'0002'
B5D63            EQU  H'0003'
B5D64            EQU  H'0004'
B5D65            EQU  H'0005'
B5D66            EQU  H'0006'
B5D67            EQU  H'0007'


;----- B5D7 Bits -----------------------------------------------------
B5D70            EQU  H'0000'
B5D71            EQU  H'0001'
B5D72            EQU  H'0002'
B5D73            EQU  H'0003'
B5D74            EQU  H'0004'
B5D75            EQU  H'0005'
B5D76            EQU  H'0006'
B5D77            EQU  H'0007'


;----- CANSTAT_RO4 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO4 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- RXF0SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF0SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF0EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF0EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF1SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF1SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF1EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF1EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF2SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF2SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF2EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF2EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF3SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF3SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF3EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF3EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF4SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF4SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF4EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF4EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXF5SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXF5SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'

EXIDEN           EQU  H'0003'


;----- RXF5EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXF5EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXM0SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXM0SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDEN           EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'


;----- RXM0EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXM0EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXM1SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXM1SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDEN           EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'


;----- RXM1EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXM1EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- TXB2CON Bits -----------------------------------------------------
TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIFBXB2CON     EQU  H'0007'

TXBIF            EQU  H'0007'


;----- TXB2SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- TXB2SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'


;----- TXB2EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- TXB2EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- TXB2DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
TXRTR            EQU  H'0006'


;----- TXB2D0 Bits -----------------------------------------------------
TXB2D00          EQU  H'0000'
TXB2D01          EQU  H'0001'
TXB2D02          EQU  H'0002'
TXB2D03          EQU  H'0003'
TXB2D04          EQU  H'0004'
TXB2D05          EQU  H'0005'
TXB2D06          EQU  H'0006'
TXB2D07          EQU  H'0007'


;----- TXB2D1 Bits -----------------------------------------------------
TXB2D10          EQU  H'0000'
TXB2D11          EQU  H'0001'
TXB2D12          EQU  H'0002'
TXB2D13          EQU  H'0003'
TXB2D14          EQU  H'0004'
TXB2D15          EQU  H'0005'
TXB2D16          EQU  H'0006'
TXB2D17          EQU  H'0007'


;----- TXB2D2 Bits -----------------------------------------------------
TXB2D20          EQU  H'0000'
TXB2D21          EQU  H'0001'
TXB2D22          EQU  H'0002'
TXB2D23          EQU  H'0003'
TXB2D24          EQU  H'0004'
TXB2D25          EQU  H'0005'
TXB2D26          EQU  H'0006'
TXB2D27          EQU  H'0007'


;----- TXB2D3 Bits -----------------------------------------------------
TXB2D30          EQU  H'0000'
TXB2D31          EQU  H'0001'
TXB2D32          EQU  H'0002'
TXB2D33          EQU  H'0003'
TXB2D34          EQU  H'0004'
TXB2D35          EQU  H'0005'
TXB2D36          EQU  H'0006'
TXB2D37          EQU  H'0007'


;----- TXB2D4 Bits -----------------------------------------------------
TXB2D40          EQU  H'0000'
TXB2D41          EQU  H'0001'
TXB2D42          EQU  H'0002'
TXB2D43          EQU  H'0003'
TXB2D44          EQU  H'0004'
TXB2D45          EQU  H'0005'
TXB2D46          EQU  H'0006'
TXB2D47          EQU  H'0007'


;----- TXB2D5 Bits -----------------------------------------------------
TXB2D50          EQU  H'0000'
TXB2D51          EQU  H'0001'
TXB2D52          EQU  H'0002'
TXB2D53          EQU  H'0003'
TXB2D54          EQU  H'0004'
TXB2D55          EQU  H'0005'
TXB2D56          EQU  H'0006'
TXB2D57          EQU  H'0007'


;----- TXB2D6 Bits -----------------------------------------------------
TXB2D60          EQU  H'0000'
TXB2D61          EQU  H'0001'
TXB2D62          EQU  H'0002'
TXB2D63          EQU  H'0003'
TXB2D64          EQU  H'0004'
TXB2D65          EQU  H'0005'
TXB2D66          EQU  H'0006'
TXB2D67          EQU  H'0007'


;----- TXB2D7 Bits -----------------------------------------------------
TXB2D70          EQU  H'0000'
TXB2D71          EQU  H'0001'
TXB2D72          EQU  H'0002'
TXB2D73          EQU  H'0003'
TXB2D74          EQU  H'0004'
TXB2D75          EQU  H'0005'
TXB2D76          EQU  H'0006'
TXB2D77          EQU  H'0007'


;----- CANSTAT_RO3 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO3 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- TXB1CON Bits -----------------------------------------------------
TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'
TXBIFTXB1CON     EQU  H'0007'

TXBIF            EQU  H'0007'


;----- TXB1SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- TXB1SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'


;----- TXB1EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- TXB1EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- TXB1DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
TXRTR            EQU  H'0006'


;----- TXB1D0 Bits -----------------------------------------------------
TXB1D00          EQU  H'0000'
TXB1D01          EQU  H'0001'
TXB1D02          EQU  H'0002'
TXB1D03          EQU  H'0003'
TXB1D04          EQU  H'0004'
TXB1D05          EQU  H'0005'
TXB1D06          EQU  H'0006'
TXB1D07          EQU  H'0007'


;----- TXB1D1 Bits -----------------------------------------------------
TXB1D10          EQU  H'0000'
TXB1D11          EQU  H'0001'
TXB1D12          EQU  H'0002'
TXB1D13          EQU  H'0003'
TXB1D14          EQU  H'0004'
TXB1D15          EQU  H'0005'
TXB1D16          EQU  H'0006'
TXB1D17          EQU  H'0007'


;----- TXB1D2 Bits -----------------------------------------------------
TXB1D20          EQU  H'0000'
TXB1D21          EQU  H'0001'
TXB1D22          EQU  H'0002'
TXB1D23          EQU  H'0003'
TXB1D24          EQU  H'0004'
TXB1D25          EQU  H'0005'
TXB1D26          EQU  H'0006'
TXB1D27          EQU  H'0007'


;----- TXB1D3 Bits -----------------------------------------------------
TXB1D30          EQU  H'0000'
TXB1D31          EQU  H'0001'
TXB1D32          EQU  H'0002'
TXB1D33          EQU  H'0003'
TXB1D34          EQU  H'0004'
TXB1D35          EQU  H'0005'
TXB1D36          EQU  H'0006'
TXB1D37          EQU  H'0007'


;----- TXB1D4 Bits -----------------------------------------------------
TXB1D40          EQU  H'0000'
TXB1D41          EQU  H'0001'
TXB1D42          EQU  H'0002'
TXB1D43          EQU  H'0003'
TXB1D44          EQU  H'0004'
TXB1D45          EQU  H'0005'
TXB1D46          EQU  H'0006'
TXB1D47          EQU  H'0007'


;----- TXB1D5 Bits -----------------------------------------------------
TXB1D50          EQU  H'0000'
TXB1D51          EQU  H'0001'
TXB1D52          EQU  H'0002'
TXB1D53          EQU  H'0003'
TXB1D54          EQU  H'0004'
TXB1D55          EQU  H'0005'
TXB1D56          EQU  H'0006'
TXB1D57          EQU  H'0007'


;----- TXB1D6 Bits -----------------------------------------------------
TXB1D60          EQU  H'0000'
TXB1D61          EQU  H'0001'
TXB1D62          EQU  H'0002'
TXB1D63          EQU  H'0003'
TXB1D64          EQU  H'0004'
TXB1D65          EQU  H'0005'
TXB1D66          EQU  H'0006'
TXB1D67          EQU  H'0007'


;----- TXB1D7 Bits -----------------------------------------------------
TXB1D70          EQU  H'0000'
TXB1D71          EQU  H'0001'
TXB1D72          EQU  H'0002'
TXB1D73          EQU  H'0003'
TXB1D74          EQU  H'0004'
TXB1D75          EQU  H'0005'
TXB1D76          EQU  H'0006'
TXB1D77          EQU  H'0007'


;----- CANSTAT_RO2 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO2 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- TXB0CON Bits -----------------------------------------------------
TXPRI0           EQU  H'0000'
TXPRI1           EQU  H'0001'
TXREQ            EQU  H'0003'
TXERR            EQU  H'0004'
TXLARB           EQU  H'0005'
TXABT            EQU  H'0006'

TXBIF            EQU  H'0007'


;----- TXB0SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- TXB0SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXIDE            EQU  H'0003'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'


;----- TXB0EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- TXB0EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- TXB0DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
TXRTR            EQU  H'0006'


;----- TXB0D0 Bits -----------------------------------------------------
TXB0D00          EQU  H'0000'
TXB0D01          EQU  H'0001'
TXB0D02          EQU  H'0002'
TXB0D03          EQU  H'0003'
TXB0D04          EQU  H'0004'
TXB0D05          EQU  H'0005'
TXB0D06          EQU  H'0006'
TXB0D07          EQU  H'0007'


;----- TXB0D1 Bits -----------------------------------------------------
TXB0D10          EQU  H'0000'
TXB0D11          EQU  H'0001'
TXB0D12          EQU  H'0002'
TXB0D13          EQU  H'0003'
TXB0D14          EQU  H'0004'
TXB0D15          EQU  H'0005'
TXB0D16          EQU  H'0006'
TXB0D17          EQU  H'0007'


;----- TXB0D2 Bits -----------------------------------------------------
TXB0D20          EQU  H'0000'
TXB0D21          EQU  H'0001'
TXB0D22          EQU  H'0002'
TXB0D23          EQU  H'0003'
TXB0D24          EQU  H'0004'
TXB0D25          EQU  H'0005'
TXB0D26          EQU  H'0006'
TXB0D27          EQU  H'0007'


;----- TXB0D3 Bits -----------------------------------------------------
TXB0D30          EQU  H'0000'
TXB0D31          EQU  H'0001'
TXB0D32          EQU  H'0002'
TXB0D33          EQU  H'0003'
TXB0D34          EQU  H'0004'
TXB0D35          EQU  H'0005'
TXB0D36          EQU  H'0006'
TXB0D37          EQU  H'0007'


;----- TXB0D4 Bits -----------------------------------------------------
TXB0D40          EQU  H'0000'
TXB0D41          EQU  H'0001'
TXB0D42          EQU  H'0002'
TXB0D43          EQU  H'0003'
TXB0D44          EQU  H'0004'
TXB0D45          EQU  H'0005'
TXB0D46          EQU  H'0006'
TXB0D47          EQU  H'0007'


;----- TXB0D5 Bits -----------------------------------------------------
TXB0D50          EQU  H'0000'
TXB0D51          EQU  H'0001'
TXB0D52          EQU  H'0002'
TXB0D53          EQU  H'0003'
TXB0D54          EQU  H'0004'
TXB0D55          EQU  H'0005'
TXB0D56          EQU  H'0006'
TXB0D57          EQU  H'0007'


;----- TXB0D6 Bits -----------------------------------------------------
TXB0D60          EQU  H'0000'
TXB0D61          EQU  H'0001'
TXB0D62          EQU  H'0002'
TXB0D63          EQU  H'0003'
TXB0D64          EQU  H'0004'
TXB0D65          EQU  H'0005'
TXB0D66          EQU  H'0006'
TXB0D67          EQU  H'0007'


;----- TXB0D7 Bits -----------------------------------------------------
TXB0D70          EQU  H'0000'
TXB0D71          EQU  H'0001'
TXB0D72          EQU  H'0002'
TXB0D73          EQU  H'0003'
TXB0D74          EQU  H'0004'
TXB0D75          EQU  H'0005'
TXB0D76          EQU  H'0006'
TXB0D77          EQU  H'0007'


;----- CANSTAT_RO1 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO1 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- RXB1CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
RXRTRRO_RXB1CON  EQU  H'0003'
RXM0             EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'


;----- RXB1SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXB1SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'


;----- RXB1EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXB1EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXB1DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

RB0_RXB1DLC      EQU  H'0004'
RB1_RXB1DLC      EQU  H'0005'


;----- RXB1D0 Bits -----------------------------------------------------
RXB1D00          EQU  H'0000'
RXB1D01          EQU  H'0001'
RXB1D02          EQU  H'0002'
RXB1D03          EQU  H'0003'
RXB1D04          EQU  H'0004'
RXB1D05          EQU  H'0005'
RXB1D06          EQU  H'0006'
RXB1D07          EQU  H'0007'


;----- RXB1D1 Bits -----------------------------------------------------
RXB1D10          EQU  H'0000'
RXB1D11          EQU  H'0001'
RXB1D12          EQU  H'0002'
RXB1D13          EQU  H'0003'
RXB1D14          EQU  H'0004'
RXB1D15          EQU  H'0005'
RXB1D16          EQU  H'0006'
RXB1D17          EQU  H'0007'


;----- RXB1D2 Bits -----------------------------------------------------
RXB1D20          EQU  H'0000'
RXB1D21          EQU  H'0001'
RXB1D22          EQU  H'0002'
RXB1D23          EQU  H'0003'
RXB1D24          EQU  H'0004'
RXB1D25          EQU  H'0005'
RXB1D26          EQU  H'0006'
RXB1D27          EQU  H'0007'


;----- RXB1D3 Bits -----------------------------------------------------
RXB1D30          EQU  H'0000'
RXB1D31          EQU  H'0001'
RXB1D32          EQU  H'0002'
RXB1D33          EQU  H'0003'
RXB1D34          EQU  H'0004'
RXB1D35          EQU  H'0005'
RXB1D36          EQU  H'0006'
RXB1D37          EQU  H'0007'


;----- RXB1D4 Bits -----------------------------------------------------
RXB1D40          EQU  H'0000'
RXB1D41          EQU  H'0001'
RXB1D42          EQU  H'0002'
RXB1D43          EQU  H'0003'
RXB1D44          EQU  H'0004'
RXB1D45          EQU  H'0005'
RXB1D46          EQU  H'0006'
RXB1D47          EQU  H'0007'


;----- RXB1D5 Bits -----------------------------------------------------
RXB1D50          EQU  H'0000'
RXB1D51          EQU  H'0001'
RXB1D52          EQU  H'0002'
RXB1D53          EQU  H'0003'
RXB1D54          EQU  H'0004'
RXB1D55          EQU  H'0005'
RXB1D56          EQU  H'0006'
RXB1D57          EQU  H'0007'


;----- RXB1D6 Bits -----------------------------------------------------
RXB1D60          EQU  H'0000'
RXB1D61          EQU  H'0001'
RXB1D62          EQU  H'0002'
RXB1D63          EQU  H'0003'
RXB1D64          EQU  H'0004'
RXB1D65          EQU  H'0005'
RXB1D66          EQU  H'0006'
RXB1D67          EQU  H'0007'


;----- RXB1D7 Bits -----------------------------------------------------
RXB1D70          EQU  H'0000'
RXB1D71          EQU  H'0001'
RXB1D72          EQU  H'0002'
RXB1D73          EQU  H'0003'
RXB1D74          EQU  H'0004'
RXB1D75          EQU  H'0005'
RXB1D76          EQU  H'0006'
RXB1D77          EQU  H'0007'


;----- CANSTAT_RO0 Bits -----------------------------------------------------
ICODE0           EQU  H'0000'
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
ICODE4           EQU  H'0004'
OPMODE           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- CANCON_RO0 Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'


;----- RXB0CON Bits -----------------------------------------------------
FILHIT0          EQU  H'0000'
JTOFF            EQU  H'0001'
RXB0DBEN         EQU  H'0002'
RXRTRRO_RXB0CON  EQU  H'0003'
RXM0             EQU  H'0005'
RXM1             EQU  H'0006'
RXFUL            EQU  H'0007'

FILHIT1          EQU  H'0001'
FILHIT2          EQU  H'0002'
FILHIT3          EQU  H'0003'
FILHIT4          EQU  H'0004'
RTRRO            EQU  H'0005'

RXBODBEN         EQU  H'0002'


;----- RXB0SIDH Bits -----------------------------------------------------
SID3             EQU  H'0000'
SID4             EQU  H'0001'
SID5             EQU  H'0002'
SID6             EQU  H'0003'
SID7             EQU  H'0004'
SID8             EQU  H'0005'
SID9             EQU  H'0006'
SID10            EQU  H'0007'


;----- RXB0SIDL Bits -----------------------------------------------------
EID16            EQU  H'0000'
EID17            EQU  H'0001'
EXID             EQU  H'0003'
SRR              EQU  H'0004'
SID0             EQU  H'0005'
SID1             EQU  H'0006'
SID2             EQU  H'0007'


;----- RXB0EIDH Bits -----------------------------------------------------
EID8             EQU  H'0000'
EID9             EQU  H'0001'
EID10            EQU  H'0002'
EID11            EQU  H'0003'
EID12            EQU  H'0004'
EID13            EQU  H'0005'
EID14            EQU  H'0006'
EID15            EQU  H'0007'


;----- RXB0EIDL Bits -----------------------------------------------------
EID0             EQU  H'0000'
EID1             EQU  H'0001'
EID2             EQU  H'0002'
EID3             EQU  H'0003'
EID4             EQU  H'0004'
EID5             EQU  H'0005'
EID6             EQU  H'0006'
EID7             EQU  H'0007'


;----- RXB0DLC Bits -----------------------------------------------------
DLC0             EQU  H'0000'
DLC1             EQU  H'0001'
DLC2             EQU  H'0002'
DLC3             EQU  H'0003'
RESRB0           EQU  H'0004'
RESRB1           EQU  H'0005'
RXRTR            EQU  H'0006'

RB0_RXB0DLC      EQU  H'0004'
RB1_RXB0DLC      EQU  H'0005'


;----- RXB0D0 Bits -----------------------------------------------------
RXB0D00          EQU  H'0000'
RXB0D01          EQU  H'0001'
RXB0D02          EQU  H'0002'
RXB0D03          EQU  H'0003'
RXB0D04          EQU  H'0004'
RXB0D05          EQU  H'0005'
RXB0D06          EQU  H'0006'
RXB0D07          EQU  H'0007'


;----- RXB0D1 Bits -----------------------------------------------------
RXB0D10          EQU  H'0000'
RXB0D11          EQU  H'0001'
RXB0D12          EQU  H'0002'
RXB0D13          EQU  H'0003'
RXB0D14          EQU  H'0004'
RXB0D15          EQU  H'0005'
RXB0D16          EQU  H'0006'
RXB0D17          EQU  H'0007'


;----- RXB0D2 Bits -----------------------------------------------------
RXB0D20          EQU  H'0000'
RXB0D21          EQU  H'0001'
RXB0D22          EQU  H'0002'
RXB0D23          EQU  H'0003'
RXB0D24          EQU  H'0004'
RXB0D25          EQU  H'0005'
RXB0D26          EQU  H'0006'
RXB0D27          EQU  H'0007'


;----- RXB0D3 Bits -----------------------------------------------------
RXB0D30          EQU  H'0000'
RXB0D31          EQU  H'0001'
RXB0D32          EQU  H'0002'
RXB0D33          EQU  H'0003'
RXB0D34          EQU  H'0004'
RXB0D35          EQU  H'0005'
RXB0D36          EQU  H'0006'
RXB0D37          EQU  H'0007'


;----- RXB0D4 Bits -----------------------------------------------------
RXB0D40          EQU  H'0000'
RXB0D41          EQU  H'0001'
RXB0D42          EQU  H'0002'
RXB0D43          EQU  H'0003'
RXB0D44          EQU  H'0004'
RXB0D45          EQU  H'0005'
RXB0D46          EQU  H'0006'
RXB0D47          EQU  H'0007'


;----- RXB0D5 Bits -----------------------------------------------------
RXB0D50          EQU  H'0000'
RXB0D51          EQU  H'0001'
RXB0D52          EQU  H'0002'
RXB0D53          EQU  H'0003'
RXB0D54          EQU  H'0004'
RXB0D55          EQU  H'0005'
RXB0D56          EQU  H'0006'
RXB0D57          EQU  H'0007'


;----- RXB0D6 Bits -----------------------------------------------------
RXB0D60          EQU  H'0000'
RXB0D61          EQU  H'0001'
RXB0D62          EQU  H'0002'
RXB0D63          EQU  H'0003'
RXB0D64          EQU  H'0004'
RXB0D65          EQU  H'0005'
RXB0D66          EQU  H'0006'
RXB0D67          EQU  H'0007'


;----- RXB0D7 Bits -----------------------------------------------------
RXB0D70          EQU  H'0000'
RXB0D71          EQU  H'0001'
RXB0D72          EQU  H'0002'
RXB0D73          EQU  H'0003'
RXB0D74          EQU  H'0004'
RXB0D75          EQU  H'0005'
RXB0D76          EQU  H'0006'
RXB0D77          EQU  H'0007'


;----- CANSTAT Bits -----------------------------------------------------
ICODE1           EQU  H'0001'
ICODE2           EQU  H'0002'
ICODE3           EQU  H'0003'
OPMODE0          EQU  H'0005'
OPMODE1          EQU  H'0006'
OPMODE2          EQU  H'0007'

EICODE0          EQU  H'0000'
EICODE1          EQU  H'0001'
EICODE2          EQU  H'0002'
EICODE3          EQU  H'0003'
EICODE4          EQU  H'0004'


;----- CANCON Bits -----------------------------------------------------
WIN0             EQU  H'0001'
WIN1             EQU  H'0002'
WIN2             EQU  H'0003'
ABAT             EQU  H'0004'
REQOP0           EQU  H'0005'
REQOP1           EQU  H'0006'
REQOP2           EQU  H'0007'

FP0              EQU  H'0000'
FP1              EQU  H'0001'
FP2              EQU  H'0002'
FP3              EQU  H'0003'


;----- BRGCON1 Bits -----------------------------------------------------
BRP0             EQU  H'0000'
BRP1             EQU  H'0001'
BRP2             EQU  H'0002'
BRP3             EQU  H'0003'
BRP4             EQU  H'0004'
BRP5             EQU  H'0005'
SJW0             EQU  H'0006'
SJW1             EQU  H'0007'


;----- BRGCON2 Bits -----------------------------------------------------
PRSEG0           EQU  H'0000'
PRSEG1           EQU  H'0001'
PRSEG2           EQU  H'0002'
SEG1PH0          EQU  H'0003'
SEG1PH1          EQU  H'0004'
SEG1PH2          EQU  H'0005'
SAM              EQU  H'0006'
SEG2PHTS         EQU  H'0007'

SEG2PHT          EQU  H'0007'


;----- BRGCON3 Bits -----------------------------------------------------
SEG2PH0          EQU  H'0000'
SEG2PH1          EQU  H'0001'
SEG2PH2          EQU  H'0002'
WAKFIL           EQU  H'0006'
WAKDIS           EQU  H'0007'


;----- CIOCON Bits -----------------------------------------------------
CANCAP           EQU  H'0004'
ENDRHI           EQU  H'0005'


;----- COMSTAT Bits -----------------------------------------------------
EWARN            EQU  H'0000'
RXWARN           EQU  H'0001'
TXWARN           EQU  H'0002'
RXBP             EQU  H'0003'
TXBP             EQU  H'0004'
TXBO             EQU  H'0005'
RXB1OVFL         EQU  H'0006'
RXB0OVFL         EQU  H'0007'

RXBnOVFL         EQU  H'0006'

FIFOEMPTY        EQU  H'0007'


;----- RXERRCNT Bits -----------------------------------------------------
REC0             EQU  H'0000'
REC1             EQU  H'0001'
REC2             EQU  H'0002'
REC3             EQU  H'0003'
REC4             EQU  H'0004'
REC5             EQU  H'0005'
REC6             EQU  H'0006'
REC7             EQU  H'0007'


;----- TXERRCNT Bits -----------------------------------------------------
TEC0             EQU  H'0000'
TEC1             EQU  H'0001'
TEC2             EQU  H'0002'
TEC3             EQU  H'0003'
TEC4             EQU  H'0004'
TEC5             EQU  H'0005'
TEC6             EQU  H'0006'
TEC7             EQU  H'0007'


;----- ECANCON Bits -----------------------------------------------------
EWIN0            EQU  H'0000'
EWIN1            EQU  H'0001'
EWIN2            EQU  H'0002'
EWIN3            EQU  H'0003'
EWIN4            EQU  H'0004'
FIFOWM           EQU  H'0005'
MDSEL0           EQU  H'0006'
MDSEL1           EQU  H'0007'

F                EQU  H'0005'


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

CVREF            EQU  H'0000'
VREFM            EQU  H'0002'
VREFP            EQU  H'0003'
LVDIN            EQU  H'0005'
CLKO             EQU  H'0006'
CLKI             EQU  H'0007'

SS               EQU  H'0005'

NOT_SS           EQU  H'0005'

HLVDIN           EQU  H'0005'


;----- PORTB Bits -----------------------------------------------------
RB0_PORTB        EQU  H'0000'
RB1_PORTB        EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'

INT0             EQU  H'0000'
INT1             EQU  H'0001'
INT2             EQU  H'0002'
CANRX            EQU  H'0003'
KBI0             EQU  H'0004'
KBI1             EQU  H'0005'
KBI2             EQU  H'0006'
KBI3             EQU  H'0007'

AN10             EQU  H'0000'

FLT0             EQU  H'0000'
AN8              EQU  H'0001'
CANTX            EQU  H'0002'
AN9              EQU  H'0004'
PGM              EQU  H'0005'
PGC              EQU  H'0006'
PGD              EQU  H'0007'


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
SCL              EQU  H'0003'
SDA              EQU  H'0004'
CK               EQU  H'0006'
; DT is a reserved word
; DT               EQU  H'0007'


;----- PORTE Bits -----------------------------------------------------
RE3              EQU  H'0003'


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


;----- DDRA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'


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
RB0_DDRB         EQU  H'0000'
RB1_DDRB         EQU  H'0001'
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


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'
PLLEN            EQU  H'0006'
INTSCR           EQU  H'0007'

INTSRC           EQU  H'0007'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
SSPIE            EQU  H'0003'
TXIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
CCP1IF           EQU  H'0002'
SSPIF            EQU  H'0003'
TXIF             EQU  H'0004'
RCIF             EQU  H'0005'
ADIF             EQU  H'0006'


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           EQU  H'0000'
TMR2IP           EQU  H'0001'
CCP1IP           EQU  H'0002'
SSPIP            EQU  H'0003'
TXBIP            EQU  H'0004'
RCIP             EQU  H'0005'
ADIP             EQU  H'0006'

TXIP             EQU  H'0004'


;----- PIE2 Bits -----------------------------------------------------
TMR3IE           EQU  H'0001'
LVDIE            EQU  H'0002'
BCLIE            EQU  H'0003'
EEIE             EQU  H'0004'
OSCFIE           EQU  H'0007'

HLVDIE           EQU  H'0002'


;----- PIR2 Bits -----------------------------------------------------
TMR3IF           EQU  H'0001'
LVDIF            EQU  H'0002'
BCLIF            EQU  H'0003'
EEIF             EQU  H'0004'
OSCFIF           EQU  H'0007'

HLVDIF           EQU  H'0002'


;----- IPR2 Bits -----------------------------------------------------
TMR3IP           EQU  H'0001'
LVDIP            EQU  H'0002'
BCLIP            EQU  H'0003'
EEIP             EQU  H'0004'
OSCFIP           EQU  H'0007'

HLVDIP           EQU  H'0002'


;----- PIE3 Bits -----------------------------------------------------
RXB0IE           EQU  H'0000'
RXB1IE           EQU  H'0001'
TXB0IE           EQU  H'0002'
TXB1IE           EQU  H'0003'
TXB2IE           EQU  H'0004'
ERRIE            EQU  H'0005'
WAKIE            EQU  H'0006'
IRXIE            EQU  H'0007'

FIFOWMIE         EQU  H'0000'
RXBnIE           EQU  H'0001'
TXBnIE           EQU  H'0004'

FIFOMWIE         EQU  H'0000'


;----- PIR3 Bits -----------------------------------------------------
RXB0IF           EQU  H'0000'
RXB1IF           EQU  H'0001'
TXB0IF           EQU  H'0002'
TXB1IF           EQU  H'0003'
TXB2IF           EQU  H'0004'
ERRIF            EQU  H'0005'
WAKIF            EQU  H'0006'
IRXIF            EQU  H'0007'

FIFOWMIF         EQU  H'0000'
RXBnIF           EQU  H'0001'
TXBnIF           EQU  H'0004'


;----- IPR3 Bits -----------------------------------------------------
RXB0IP           EQU  H'0000'
RXB1IP           EQU  H'0001'
TXB0IP           EQU  H'0002'
TXB1IP           EQU  H'0003'
TXB2IP           EQU  H'0004'
ERRIP            EQU  H'0005'
WAKIP            EQU  H'0006'
IRXIP            EQU  H'0007'

FIFOWMIP         EQU  H'0000'
RXBnIP           EQU  H'0001'
TXBnIP           EQU  H'0004'


;----- EECON1 Bits -----------------------------------------------------
RD               EQU  H'0000'
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
FREE             EQU  H'0004'
CFGS             EQU  H'0006'
EEPGD            EQU  H'0007'


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


;----- TXSTA Bits -----------------------------------------------------
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
T3SYNC           EQU  H'0002'
T3CCP1           EQU  H'0003'
T3CKPS0          EQU  H'0004'
T3CKPS1          EQU  H'0005'
T3CCP2           EQU  H'0006'
RD16             EQU  H'0007'

T3NSYNC          EQU  H'0002'

T3ECCP1          EQU  H'0006'

NOT_T3SYNC       EQU  H'0002'


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
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
T1SYNC           EQU  H'0002'
T1OSCEN          EQU  H'0003'
T1CKPS0          EQU  H'0004'
T1CKPS1          EQU  H'0005'
T1RUN            EQU  H'0006'
RD16             EQU  H'0007'

T1INSYNC         EQU  H'0002'

NOT_T1SYNC       EQU  H'0002'


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
VDIRMAG          EQU  H'0007'

IVRST            EQU  H'0005'


;----- LVDCON Bits -----------------------------------------------------
LVDL0            EQU  H'0000'
LVDL1            EQU  H'0001'
LVDL2            EQU  H'0002'
LVDL3            EQU  H'0003'
LVDEN            EQU  H'0004'
IRVST            EQU  H'0005'

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
VDIRMAG          EQU  H'0007'

IVRST            EQU  H'0005'


;----- OSCCON Bits -----------------------------------------------------
SCS0             EQU  H'0000'
SCS1             EQU  H'0001'
IOFS             EQU  H'0002'
OSTS             EQU  H'0003'
IRCF0            EQU  H'0004'
IRCF1            EQU  H'0005'
IRCF2            EQU  H'0006'
IDLEN            EQU  H'0007'


;----- T0CON Bits -----------------------------------------------------
T0PS0            EQU  H'0000'
T0PS1            EQU  H'0001'
T0PS2            EQU  H'0002'
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
T08BIT           EQU  H'0006'
TMR0ON           EQU  H'0007'

T0PS3            EQU  H'0003'


;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
OV               EQU  H'0003'
N                EQU  H'0004'


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           EQU  H'0000'
INT2IF           EQU  H'0001'
INT1IE           EQU  H'0003'
INT2IE           EQU  H'0004'
INT1IP           EQU  H'0006'
INT2IP           EQU  H'0007'

INT1F            EQU  H'0000'
INT2F            EQU  H'0001'
INT1E            EQU  H'0003'
INT2E            EQU  H'0004'
INT1P            EQU  H'0006'
INT2P            EQU  H'0007'


;----- INTCON2 Bits -----------------------------------------------------
RBIP             EQU  H'0000'
TMR0IP           EQU  H'0002'
INTEDG2          EQU  H'0004'
INTEDG1          EQU  H'0005'
INTEDG0          EQU  H'0006'
NOT_RBPU         EQU  H'0007'

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

SP0              EQU  H'0000'
SP1              EQU  H'0001'
SP2              EQU  H'0002'
SP3              EQU  H'0003'
SP4              EQU  H'0004'
STKFUL           EQU  H'0007'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'0FFF'
       __BADRAM  H'0D6C'-H'0D6F'
       __BADRAM  H'0D7C'-H'0D7F'
       __BADRAM  H'0D8C'-H'0D8F'
       __BADRAM  H'0D94'-H'0DD3'
       __BADRAM  H'0DD6'-H'0DD7'
       __BADRAM  H'0DD9'-H'0DDF'
       __BADRAM  H'0DE8'-H'0DEF'
       __BADRAM  H'0DF4'-H'0DF7'
       __BADRAM  H'0DF9'
       __BADRAM  H'0DFB'
       __BADRAM  H'0DFD'-H'0E1F'
       __BADRAM  H'0E80'-H'0EFF'
       __BADRAM  H'0F78'-H'0F7F'
       __BADRAM  H'0F83'
       __BADRAM  H'0F85'-H'0F88'
       __BADRAM  H'0F8C'-H'0F91'
       __BADRAM  H'0F95'-H'0F9A'
       __BADRAM  H'0F9C'
       __BADRAM  H'0FB4'-H'0FB7'
       __BADRAM  H'0FB9'-H'0FBC'
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
;     OSC = HSPLL          HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
;     OSC = RCIO           External RC oscillator, port function on RA6
;     OSC = IRCIO67        Internal oscillator block, port function on RA6 and RA7
;     OSC = IRCIO7         Internal oscillator block, CLKO function on RA6, port function on RA7
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
;     BOREN = SBORENCTRL   Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOREN = BOACTIVE     Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOREN = BOHW         Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown-out Reset Voltage bits:
;     BORV = 0             Maximum setting
;     BORV = 1             
;     BORV = 2             
;     BORV = 3             Minimum setting
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
;     MCLRE = OFF          RE3 input pin enabled; MCLR disabled
;     MCLRE = ON           MCLR pin enabled; RE3 input pin disabled
;
;   Low Power Timer1 Oscillator Enable bit:
;     LPT1OSC = OFF        Timer1 configured for higher power operation
;     LPT1OSC = ON         Timer1 configured for low-power operation
;
;   PORTB Pins Configured for A/D:
;     PBADEN = OFF         PORTB<4> and PORTB<1:0> Configured as Digital I/O Pins on Reset
;     PBADEN = ON          PORTB<4> and PORTB<1:0> Configured as Analog Pins on Reset
;
;   BackGround Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Boot Block Size Select Bits:
;     BBSIZ = 1024         1K words (2K bytes) Boot Block
;     BBSIZ = 2048         2K words (4K bytes) Boot Block
;     BBSIZ = 4096         4K words (8K bytes) Boot Block
;
;   Low Voltage Programming:
;     LVP = OFF            Disabled
;     LVP = ON             Enabled
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Code Protection Block 0:
;     CP0 = ON             Block 0 (000800-003FFFh) code-protected
;     CP0 = OFF            Block 0 (000800-003FFFh) not code-protected
;
;   Code Protection Block 1:
;     CP1 = ON             Block 1 (004000-007FFFh) code-protected
;     CP1 = OFF            Block 1 (004000-007FFFh) not code-protected
;
;   Code Protection Block 2:
;     CP2 = ON             Block 2 (008000-00BFFFh) code-protected
;     CP2 = OFF            Block 2 (008000-00BFFFh) not code-protected
;
;   Code Protection Block 3:
;     CP3 = ON             Block 3 (00C000-00FFFFh) code-protected
;     CP3 = OFF            Block 3 (00C000-00FFFFh) not code-protected
;
;   Code Protection Block 4:
;     CP4 = ON             Block 4 (010000-013FFFh) code-protected
;     CP4 = OFF            Block 4 (010000-013FFFh) not code-protected
;
;   Boot Block Code Protection:
;     CPB = ON             Boot Block (000000-0007FFh) code-protected
;     CPB = OFF            Boot Block (000000-0007FFh) not code-protected
;
;   Data EEPROM Code Protection:
;     CPD = ON             Data EEPROM code-protected
;     CPD = OFF            Data EEPROM not code-protected
;
;   Write Protection Block 0:
;     WRT0 = ON            Block 0 (000800-003FFFh) write-protected
;     WRT0 = OFF           Block 0 (000800-003FFFh) not write-protected
;
;   Write Protection Block 1:
;     WRT1 = ON            Block 1 (004000-007FFFh) write-protected
;     WRT1 = OFF           Block 1 (004000-007FFFh) not write-protected
;
;   Write Protection Block 2:
;     WRT2 = ON            Block 2 (008000-00BFFFh) write-protected
;     WRT2 = OFF           Block 2 (008000-00BFFFh) not write-protected
;
;   Write Protection Block 3:
;     WRT3 = ON            Block 3 (00C000-00FFFFh) write-protected
;     WRT3 = OFF           Block 3 (00C000-00FFFFh) not write-protected
;
;   Write Protection Block 4:
;     WRT4 = ON            Block 4 (010000-013FFFh) write-protected
;     WRT4 = OFF           Block 4 (010000-013FFFh) not write-protected
;
;   Boot Block Write Protection:
;     WRTB = ON            Boot Block (000000-0007FFh) write-protected
;     WRTB = OFF           Boot Block (000000-0007FFh) not write-protected
;
;   Configuration Register Write Protection:
;     WRTC = ON            Configuration registers (300000-3000FFh) write-protected
;     WRTC = OFF           Configuration registers (300000-3000FFh) not write-protected
;
;   Data EEPROM Write Protection:
;     WRTD = ON            Data EEPROM write-protected
;     WRTD = OFF           Data EEPROM not write-protected
;
;   Table Read Protection Block 0:
;     EBTR0 = ON           Block 0 (000800-003FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000800-003FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 1:
;     EBTR1 = ON           Block 1 (004000-007FFFh) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (004000-007FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 2:
;     EBTR2 = ON           Block 2 (008000-00BFFFh) protected from table reads executed in other blocks
;     EBTR2 = OFF          Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 3:
;     EBTR3 = ON           Block 3 (00C000-00FFFFh) protected from table reads executed in other blocks
;     EBTR3 = OFF          Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 4:
;     EBTR4 = ON           Block 4 (010000-013FFFh) protected from table reads executed in other blocks
;     EBTR4 = OFF          Block 4 (010000-013FFFh) not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection:
;     EBTRB = ON           Boot Block (000000-0007FFh) protected from table reads executed in other blocks
;     EBTRB = OFF          Boot Block (000000-0007FFh) not protected from table reads executed in other blocks
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
;   CONFIG5H        300009h
;   CONFIG6L        30000Ah
;   CONFIG6H        30000Bh
;   CONFIG7L        30000Ch
;   CONFIG7H        30000Dh
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
_CONFIG5H        EQU  H'300009'
_CONFIG6L        EQU  H'30000A'
_CONFIG6H        EQU  H'30000B'
_CONFIG7L        EQU  H'30000C'
_CONFIG7H        EQU  H'30000D'

;----- CONFIG1H Options --------------------------------------------------
_OSC_LP_1H           EQU  H'F0'    ; LP oscillator
_OSC_XT_1H           EQU  H'F1'    ; XT oscillator
_OSC_HS_1H           EQU  H'F2'    ; HS oscillator
_OSC_RC_1H           EQU  H'F3'    ; External RC oscillator, CLKO function on RA6
_OSC_EC_1H           EQU  H'F4'    ; EC oscillator, CLKO function on RA6
_OSC_ECIO_1H         EQU  H'F5'    ; EC oscillator, port function on RA6
_OSC_HSPLL_1H        EQU  H'F6'    ; HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
_OSC_RCIO_1H         EQU  H'F7'    ; External RC oscillator, port function on RA6
_OSC_IRCIO67_1H      EQU  H'F8'    ; Internal oscillator block, port function on RA6 and RA7
_OSC_IRCIO7_1H       EQU  H'F9'    ; Internal oscillator block, CLKO function on RA6, port function on RA7

_FCMEN_OFF_1H        EQU  H'BF'    ; Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         EQU  H'FF'    ; Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         EQU  H'7F'    ; Oscillator Switchover mode disabled
_IESO_ON_1H          EQU  H'FF'    ; Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          EQU  H'FE'    ; PWRT enabled
_PWRT_OFF_2L         EQU  H'FF'    ; PWRT disabled

_BOREN_OFF_2L        EQU  H'F9'    ; Brown-out Reset disabled in hardware and software
_BOREN_SBORENCTRL_2L EQU  H'FB'    ; Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOREN_BOACTIVE_2L   EQU  H'FD'    ; Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOREN_BOHW_2L       EQU  H'FF'    ; Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_0_2L           EQU  H'E7'    ; Maximum setting
_BORV_1_2L           EQU  H'EF'    ; 
_BORV_2_2L           EQU  H'F7'    ; 
_BORV_3_2L           EQU  H'FF'    ; Minimum setting

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
_MCLRE_OFF_3H        EQU  H'7F'    ; RE3 input pin enabled; MCLR disabled
_MCLRE_ON_3H         EQU  H'FF'    ; MCLR pin enabled; RE3 input pin disabled

_LPT1OSC_OFF_3H      EQU  H'FB'    ; Timer1 configured for higher power operation
_LPT1OSC_ON_3H       EQU  H'FF'    ; Timer1 configured for low-power operation

_PBADEN_OFF_3H       EQU  H'FD'    ; PORTB<4> and PORTB<1:0> Configured as Digital I/O Pins on Reset
_PBADEN_ON_3H        EQU  H'FF'    ; PORTB<4> and PORTB<1:0> Configured as Analog Pins on Reset

;----- CONFIG4L Options --------------------------------------------------
_DEBUG_ON_4L         EQU  H'7F'    ; Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        EQU  H'FF'    ; Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

_XINST_OFF_4L        EQU  H'BF'    ; Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
_XINST_ON_4L         EQU  H'FF'    ; Instruction set extension and Indexed Addressing mode enabled

_BBSIZ_1024_4L       EQU  H'CF'    ; 1K words (2K bytes) Boot Block
_BBSIZ_2048_4L       EQU  H'DF'    ; 2K words (4K bytes) Boot Block
_BBSIZ_4096_4L       EQU  H'EF'    ; 4K words (8K bytes) Boot Block

_LVP_OFF_4L          EQU  H'FB'    ; Disabled
_LVP_ON_4L           EQU  H'FF'    ; Enabled

_STVREN_OFF_4L       EQU  H'FE'    ; Stack full/underflow will not cause Reset
_STVREN_ON_4L        EQU  H'FF'    ; Stack full/underflow will cause Reset

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           EQU  H'FE'    ; Block 0 (000800-003FFFh) code-protected
_CP0_OFF_5L          EQU  H'FF'    ; Block 0 (000800-003FFFh) not code-protected

_CP1_ON_5L           EQU  H'FD'    ; Block 1 (004000-007FFFh) code-protected
_CP1_OFF_5L          EQU  H'FF'    ; Block 1 (004000-007FFFh) not code-protected

_CP2_ON_5L           EQU  H'FB'    ; Block 2 (008000-00BFFFh) code-protected
_CP2_OFF_5L          EQU  H'FF'    ; Block 2 (008000-00BFFFh) not code-protected

_CP3_ON_5L           EQU  H'F7'    ; Block 3 (00C000-00FFFFh) code-protected
_CP3_OFF_5L          EQU  H'FF'    ; Block 3 (00C000-00FFFFh) not code-protected

_CP4_ON_5L           EQU  H'EF'    ; Block 4 (010000-013FFFh) code-protected
_CP4_OFF_5L          EQU  H'FF'    ; Block 4 (010000-013FFFh) not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           EQU  H'BF'    ; Boot Block (000000-0007FFh) code-protected
_CPB_OFF_5H          EQU  H'FF'    ; Boot Block (000000-0007FFh) not code-protected

_CPD_ON_5H           EQU  H'7F'    ; Data EEPROM code-protected
_CPD_OFF_5H          EQU  H'FF'    ; Data EEPROM not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          EQU  H'FE'    ; Block 0 (000800-003FFFh) write-protected
_WRT0_OFF_6L         EQU  H'FF'    ; Block 0 (000800-003FFFh) not write-protected

_WRT1_ON_6L          EQU  H'FD'    ; Block 1 (004000-007FFFh) write-protected
_WRT1_OFF_6L         EQU  H'FF'    ; Block 1 (004000-007FFFh) not write-protected

_WRT2_ON_6L          EQU  H'FB'    ; Block 2 (008000-00BFFFh) write-protected
_WRT2_OFF_6L         EQU  H'FF'    ; Block 2 (008000-00BFFFh) not write-protected

_WRT3_ON_6L          EQU  H'F7'    ; Block 3 (00C000-00FFFFh) write-protected
_WRT3_OFF_6L         EQU  H'FF'    ; Block 3 (00C000-00FFFFh) not write-protected

_WRT4_ON_6L          EQU  H'EF'    ; Block 4 (010000-013FFFh) write-protected
_WRT4_OFF_6L         EQU  H'FF'    ; Block 4 (010000-013FFFh) not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTB_ON_6H          EQU  H'BF'    ; Boot Block (000000-0007FFh) write-protected
_WRTB_OFF_6H         EQU  H'FF'    ; Boot Block (000000-0007FFh) not write-protected

_WRTC_ON_6H          EQU  H'DF'    ; Configuration registers (300000-3000FFh) write-protected
_WRTC_OFF_6H         EQU  H'FF'    ; Configuration registers (300000-3000FFh) not write-protected

_WRTD_ON_6H          EQU  H'7F'    ; Data EEPROM write-protected
_WRTD_OFF_6H         EQU  H'FF'    ; Data EEPROM not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         EQU  H'FE'    ; Block 0 (000800-003FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_7L        EQU  H'FF'    ; Block 0 (000800-003FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_7L         EQU  H'FD'    ; Block 1 (004000-007FFFh) protected from table reads executed in other blocks
_EBTR1_OFF_7L        EQU  H'FF'    ; Block 1 (004000-007FFFh) not protected from table reads executed in other blocks

_EBTR2_ON_7L         EQU  H'FB'    ; Block 2 (008000-00BFFFh) protected from table reads executed in other blocks
_EBTR2_OFF_7L        EQU  H'FF'    ; Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks

_EBTR3_ON_7L         EQU  H'F7'    ; Block 3 (00C000-00FFFFh) protected from table reads executed in other blocks
_EBTR3_OFF_7L        EQU  H'FF'    ; Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks

_EBTR4_ON_7L         EQU  H'EF'    ; Block 4 (010000-013FFFh) protected from table reads executed in other blocks
_EBTR4_OFF_7L        EQU  H'FF'    ; Block 4 (010000-013FFFh) not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         EQU  H'BF'    ; Boot Block (000000-0007FFh) protected from table reads executed in other blocks
_EBTRB_OFF_7H        EQU  H'FF'    ; Boot Block (000000-0007FFh) not protected from table reads executed in other blocks


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
