;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	___uflags
	global	_i
	global	__cdc_buffer
	global	_hidRxLen
	global	_hidProtocol
	global	_hidIdleRate
	global	_HIDPostProcess
	global	_deviceAddress
	global	_loopvar
	global	_timingindex
	global	__cpu_clock_
	global	_EnableUSBModule
	global	_ProcessUSBTransactions
	global	_ProcessCDCRequest
	global	_CDCgets
	global	_CDCInitEndpoint
	global	__entry
	global	__startup
	global	_main
	global	_phase
	global	_needreordering
	global	_timedivision
	global	_mascaratotal
	global	_timevalue
	global	_timings
	global	_activatedservos
	global	_servovalues
	global	_maxminpos
	global	_CONTROL_LINE
	global	_deviceState
	global	_remoteWakeup
	global	_selfPowered
	global	_currentConfiguration
	global	_ctrlTransferStage
	global	_requestHandled
	global	_outPtr
	global	_inPtr
	global	_wCount
	global	_ep_bdt
	global	_SetupPacket
	global	_controlTransferBuffer
	global	_CDCControlBuffer
	global	_CDCRxBuffer
	global	_CDCTxBuffer
	global	_line_config
	global	_zlp
	global	_receivedbyte
	global	_receivedbyte2
	global	_rxstr
	global	_rxstr2
	global	_valor
	global	_caracter
	global	_System_readFlashMemory
	global	_System_getCpuFrequency
	global	_Delayms
	global	_pinmode
	global	_digitalwrite
	global	_digitalread
	global	_toggle
	global	_servos_init
	global	_ServoAttach
	global	_ServoDetach
	global	_ServoWrite
	global	_ServoRead
	global	_ServoMinimumPulse
	global	_ServoMaximumPulse
	global	_servos_interrupt
	global	_analog_init
	global	_analogreference
	global	_analogread
	global	_analogwrite_init
	global	_analogwrite
	global	_IO_init
	global	_IO_digital
	global	_ProcessStandardRequest
	global	_InDataStage
	global	_OutDataStage
	global	_SetupStage
	global	_WaitForSetupStage
	global	_ProcessControlTransfer
	global	_UnSuspend
	global	_StartOfFrame
	global	_Stall
	global	_Suspend
	global	_BusReset
	global	_CDCputs
	global	_CDCputc
	global	_CDC_init
	global	_CDC_interrupt
	global	_digital
	global	_leo_puerto
	global	_l293d
	global	_analogico
	global	_puertob
	global	_servos
	global	_setup
	global	_comparo
	global	_loop
	global	_high_priority_isr
	global	_low_priority_isr
	global	_mask
	global	_port
	global	_libdevice_descriptor
	global	_libconfiguration_descriptor
	global	_lang
	global	_manu
	global	_prod
	global	_libstring_descriptor

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrput1
	extern	_SPPDATAbits
	extern	_SPPCFGbits
	extern	_SPPEPSbits
	extern	_SPPCONbits
	extern	_UFRMLbits
	extern	_UFRMHbits
	extern	_UIRbits
	extern	_UIEbits
	extern	_UEIRbits
	extern	_UEIEbits
	extern	_USTATbits
	extern	_UCONbits
	extern	_UADDRbits
	extern	_UCFGbits
	extern	_UEP0bits
	extern	_UEP1bits
	extern	_UEP2bits
	extern	_UEP3bits
	extern	_UEP4bits
	extern	_UEP5bits
	extern	_UEP6bits
	extern	_UEP7bits
	extern	_UEP8bits
	extern	_UEP9bits
	extern	_UEP10bits
	extern	_UEP11bits
	extern	_UEP12bits
	extern	_UEP13bits
	extern	_UEP14bits
	extern	_UEP15bits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTDbits
	extern	_PORTEbits
	extern	_LATAbits
	extern	_LATBbits
	extern	_LATCbits
	extern	_LATDbits
	extern	_LATEbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TRISCbits
	extern	_TRISDbits
	extern	_TRISEbits
	extern	_OSCTUNEbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_EECON1bits
	extern	_RCSTAbits
	extern	_TXSTAbits
	extern	_T3CONbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_ECCP1ASbits
	extern	_ECCP1DELbits
	extern	_BAUDCONbits
	extern	_CCP2CONbits
	extern	_CCP1CONbits
	extern	_ADCON2bits
	extern	_ADCON1bits
	extern	_ADCON0bits
	extern	_SSPCON2bits
	extern	_SSPCON1bits
	extern	_SSPSTATbits
	extern	_T2CONbits
	extern	_T1CONbits
	extern	_RCONbits
	extern	_WDTCONbits
	extern	_HLVDCONbits
	extern	_OSCCONbits
	extern	_T0CONbits
	extern	_STATUSbits
	extern	_FSR2Hbits
	extern	_BSRbits
	extern	_FSR1Hbits
	extern	_FSR0Hbits
	extern	_INTCON3bits
	extern	_INTCON2bits
	extern	_INTCONbits
	extern	_TBLPTRUbits
	extern	_PCLATHbits
	extern	_PCLATUbits
	extern	_STKPTRbits
	extern	_TOSUbits
	extern	_stack_end
	extern	_SPPDATA
	extern	_SPPCFG
	extern	_SPPEPS
	extern	_SPPCON
	extern	_UFRML
	extern	_UFRMH
	extern	_UIR
	extern	_UIE
	extern	_UEIR
	extern	_UEIE
	extern	_USTAT
	extern	_UCON
	extern	_UADDR
	extern	_UCFG
	extern	_UEP0
	extern	_UEP1
	extern	_UEP2
	extern	_UEP3
	extern	_UEP4
	extern	_UEP5
	extern	_UEP6
	extern	_UEP7
	extern	_UEP8
	extern	_UEP9
	extern	_UEP10
	extern	_UEP11
	extern	_UEP12
	extern	_UEP13
	extern	_UEP14
	extern	_UEP15
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_LATA
	extern	_LATB
	extern	_LATC
	extern	_LATD
	extern	_LATE
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_TRISD
	extern	_TRISE
	extern	_OSCTUNE
	extern	_PIE1
	extern	_PIR1
	extern	_IPR1
	extern	_PIE2
	extern	_PIR2
	extern	_IPR2
	extern	_EECON1
	extern	_EECON2
	extern	_EEDATA
	extern	_EEADR
	extern	_RCSTA
	extern	_TXSTA
	extern	_TXREG
	extern	_RCREG
	extern	_SPBRG
	extern	_SPBRGH
	extern	_T3CON
	extern	_TMR3L
	extern	_TMR3H
	extern	_CMCON
	extern	_CVRCON
	extern	_ECCP1AS
	extern	_ECCP1DEL
	extern	_BAUDCON
	extern	_CCP2CON
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP1CON
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
	extern	_ADRESL
	extern	_ADRESH
	extern	_SSPCON2
	extern	_SSPCON1
	extern	_SSPSTAT
	extern	_SSPADD
	extern	_SSPBUF
	extern	_T2CON
	extern	_PR2
	extern	_TMR2
	extern	_T1CON
	extern	_TMR1L
	extern	_TMR1H
	extern	_RCON
	extern	_WDTCON
	extern	_HLVDCON
	extern	_OSCCON
	extern	_T0CON
	extern	_TMR0L
	extern	_TMR0H
	extern	_STATUS
	extern	_FSR2L
	extern	_FSR2H
	extern	_PLUSW2
	extern	_PREINC2
	extern	_POSTDEC2
	extern	_POSTINC2
	extern	_INDF2
	extern	_BSR
	extern	_FSR1L
	extern	_FSR1H
	extern	_PLUSW1
	extern	_PREINC1
	extern	_POSTDEC1
	extern	_POSTINC1
	extern	_INDF1
	extern	_WREG
	extern	_FSR0L
	extern	_FSR0H
	extern	_PLUSW0
	extern	_PREINC0
	extern	_POSTDEC0
	extern	_POSTINC0
	extern	_INDF0
	extern	_INTCON3
	extern	_INTCON2
	extern	_INTCON
	extern	_PRODL
	extern	_PRODH
	extern	_TABLAT
	extern	_TBLPTRL
	extern	_TBLPTRH
	extern	_TBLPTRU
	extern	_PCL
	extern	_PCLATH
	extern	_PCLATU
	extern	_STKPTR
	extern	_TOSL
	extern	_TOSH
	extern	_TOSU
	extern	__divslong
	extern	__divulong
	extern	__mulint
	extern	_delay100tcy
	extern	__divsint
	extern	_x_ftoa
	extern	_strcat
	extern	_strlen
	extern	___uint2fs
	extern	_cinit

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
PCL	equ	0xff9
PCLATH	equ	0xffa
PCLATU	equ	0xffb
WREG	equ	0xfe8
BSR	equ	0xfe0
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTINC0	equ	0xfee
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


	idata
_phase	db	0x00
_needreordering	db	0x00
_timedivision	db	0x00
_CONTROL_LINE	db	0x00
_rxstr	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00
_rxstr2	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00
_valor	db	0x00, 0x00
___uflags	db	0x00


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1


usbram5	udata
_SetupPacket	res	64
_controlTransferBuffer	res	64
_CDCRxBuffer	res	64
_CDCTxBuffer	res	64

udata_tortucaro_0	udata
__cpu_clock_	res	4

udata_tortucaro_1	udata
_timingindex	res	1

udata_tortucaro_2	udata
_loopvar	res	1

udata_tortucaro_3	udata
_deviceAddress	res	1

udata_tortucaro_4	udata
_HIDPostProcess	res	1

udata_tortucaro_5	udata
_hidIdleRate	res	1

udata_tortucaro_6	udata
_hidProtocol	res	1

udata_tortucaro_7	udata
_hidRxLen	res	1

udata_tortucaro_8	udata
__cdc_buffer	res	64

udata_tortucaro_9	udata
_i	res	1

udata_tortucaro_10	udata
_servovalues	res	30

udata_tortucaro_11	udata
_maxminpos	res	60

udata_tortucaro_12	udata
_activatedservos	res	5

udata_tortucaro_13	udata
_ServosPulseDown_timingindex_1_28	res	1

udata_tortucaro_14	udata
_timings	res	150

udata_tortucaro_15	udata
_timevalue	res	30

udata_tortucaro_16	udata
_SortServoTimings_t_1_32	res	1

udata_tortucaro_17	udata
_SortServoTimings_totalservos_1_32	res	1

udata_tortucaro_18	udata
_SortServoTimings_numservos_1_32	res	1

udata_tortucaro_19	udata
_SortServoTimings_s_1_32	res	1

udata_tortucaro_20	udata
_mascaratotal	res	5

udata_tortucaro_21	udata
_requestHandled	res	1

udata_tortucaro_22	udata
_outPtr	res	3

udata_tortucaro_23	udata
_wCount	res	2

udata_tortucaro_24	udata
_inPtr	res	3

udata_tortucaro_25	udata
_selfPowered	res	1

udata_tortucaro_26	udata
_remoteWakeup	res	1

udata_tortucaro_27	udata
_deviceState	res	1

udata_tortucaro_28	udata
_currentConfiguration	res	1

udata_tortucaro_29	udata
_ctrlTransferStage	res	1

udata_tortucaro_30	udata
_line_config	res	7

udata_tortucaro_31	udata
_zlp	res	8

udata_tortucaro_32	udata
_CDCControlBuffer	res	16

udata_tortucaro_33	udata
_caracter	res	2

udata_tortucaro_34	udata
_receivedbyte	res	1

udata_tortucaro_35	udata
_receivedbyte2	res	1

udata_tortucaro_36	udata
_analogico_chaine_1_236	res	0


ustat_tortucaro_00	udata	0X0400
_ep_bdt        	res	128

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_tortucaro___entry	code	0X000C00
__entry:
	goto	__startup
	
; ; Starting pCode block for absolute section
; ;-----------------------------------------
S_tortucaro_ivec_0x1_high_priority_isr	code	0X000C08
ivec_0x1_high_priority_isr:
	GOTO	_high_priority_isr

; ; Starting pCode block for absolute section
; ;-----------------------------------------
S_tortucaro_ivec_0x2_low_priority_isr	code	0X000C18
ivec_0x2_low_priority_isr:
	GOTO	_low_priority_isr

; I code from now on!
; ; Starting pCode block
S_tortucaro__main	code
_main:
;	.line	199; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	if (OSCCONbits.SCS > 0x01)
	MOVF	_OSCCONbits, W
	ANDLW	0x03
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ADDLW	0x80
	ADDLW	0x7e
	BNC	_01816_DS_
_01812_DS_:
;	.line	201; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	while (!OSCCONbits.IOFS);
	BTFSS	_OSCCONbits, 2
	BRA	_01812_DS_
_01816_DS_:
;	.line	245; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	IO_init();
	CALL	_IO_init
;	.line	246; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	IO_digital();
	CALL	_IO_digital
;	.line	266; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	CDC_init();
	CALL	_CDC_init
;	.line	274; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	analog_init();
	CALL	_analog_init
;	.line	290; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	servos_init();
	CALL	_servos_init
;	.line	302; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	setup();
	CALL	_setup
_01818_DS_:
;	.line	329; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	loop();
	CALL	_loop
	BRA	_01818_DS_
	RETURN	

; ; Starting pCode block
S_tortucaro__low_priority_isr	code
_low_priority_isr:
;	.line	537; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	void low_priority_isr(void) __interrupt 2
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	_TBLPTRL, POSTDEC1
	MOVFF	_TBLPTRH, POSTDEC1
	MOVFF	_TBLPTRU, POSTDEC1
	MOVFF	_TABLAT, POSTDEC1
	
	MOVFF	PREINC1, _TABLAT
	MOVFF	PREINC1, _TBLPTRU
	MOVFF	PREINC1, _TBLPTRH
	MOVFF	PREINC1, _TBLPTRL
	
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, PCLATU
	MOVFF	PREINC1, PCLATH
	MOVFF	PREINC1, FSR0H
	MOVFF	PREINC1, FSR0L
	MOVFF	PREINC1, PRODH
	MOVFF	PREINC1, PRODL
	MOVF	PREINC1, W
	MOVFF	PREINC1, BSR
	MOVFF	PREINC1, STATUS
	RETFIE	

; ; Starting pCode block
S_tortucaro__high_priority_isr	code
_high_priority_isr:
;	.line	440; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	void high_priority_isr(void) __interrupt 1
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	_TBLPTRL, POSTDEC1
	MOVFF	_TBLPTRH, POSTDEC1
	MOVFF	_TBLPTRU, POSTDEC1
	MOVFF	_TABLAT, POSTDEC1
	
;	.line	453; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	CDC_interrupt();
	CALL	_CDC_interrupt
;	.line	477; /home/vbasel/.icaro/v4/firmware/source/tortucaro/tortucaro.c	servos_interrupt();
	CALL	_servos_interrupt
	MOVFF	PREINC1, _TABLAT
	MOVFF	PREINC1, _TBLPTRU
	MOVFF	PREINC1, _TBLPTRH
	MOVFF	PREINC1, _TBLPTRL
	
	MOVFF	PREINC1, FSR2L
	MOVFF	PREINC1, PCLATU
	MOVFF	PREINC1, PCLATH
	MOVFF	PREINC1, FSR0H
	MOVFF	PREINC1, FSR0L
	MOVFF	PREINC1, PRODH
	MOVFF	PREINC1, PRODL
	MOVF	PREINC1, W
	MOVFF	PREINC1, BSR
	MOVFF	PREINC1, STATUS
	RETFIE	

; ; Starting pCode block
S_tortucaro___startup	code
__startup:
	;	Initialize the stack pointer
	lfsr	1, _stack_end
	lfsr	2, _stack_end
	;	1st silicon does not do this on POR
	clrf	_TBLPTRU, 0
	;	Initialize the flash memory access configuration.
	;	This is harmless for non-flash devices, so we do it on all parts.
	bsf	0xa6, 7, 0 ; EECON1.EEPGD = 1, TBLPTR accesses program memory
	bcf	0xa6, 6, 0 ; EECON1.CFGS = 0, TBLPTR accesses program memory
	;	Load FSR0 with top of RAM.
	movlw	0xbf
	movwf	_FSR0L, 0
	movlw	0x0e
	movwf	_FSR0H, 0
	;	Place 0xff at address 0x00 as a sentinel.
	setf	0x00, 0
clear_loop:
	clrf	_POSTDEC0, 0
	movf	0x00, w, 0
	bnz	clear_loop
	;	TBLPTR = &cinit
	movlw	low(_cinit)
	movwf	_TBLPTRL, 0
	movlw	high(_cinit)
	movwf	_TBLPTRH, 0
	movlw	upper(_cinit)
	movwf	_TBLPTRU, 0
	;	0x05 = cinit.num_init
	tblrd*+
	movff	_TABLAT, 0x05
	tblrd*+
	movff	_TABLAT, (0x05 + 1)
	;	while (0x05)
	bra	entry_loop_dec
entry_loop:
	;	Count down so we only have to look up the data in _cinit once.
	;	At this point we know that TBLPTR points to the top of the current
	;	entry in _cinit, so we can just start reading the from, to, and
	;	size values.
	;	Read the source address low.
	;	0x00 = 0x07 ->from;
	tblrd*+
	movff	_TABLAT, 0x00
	;	source address high
	tblrd*+
	movff	_TABLAT, (0x00 + 1)
	;	source address upper
	tblrd*+
	movff	_TABLAT, (0x00 + 2)
	;	Skip a byte since it is stored as a 32bit int.
	tblrd*+
	;	Read the destination address directly into FSR0
	;	destination address low.
	;	FSR0 = (unsigned short)0x07 ->to;
	tblrd*+
	movff	_TABLAT, _FSR0L
	;	destination address high
	tblrd*+
	movff	_TABLAT, _FSR0H
	;	Skip two bytes since it is stored as a 32bit int.
	tblrd*+
	tblrd*+
	;	Read the size of data to transfer to destination address.
	;	0x03 = (unsigned short)0x07 ->size;
	tblrd*+
	movff	_TABLAT, 0x03
	tblrd*+
	movff	_TABLAT, (0x03 + 1)
	;	Skip two bytes since it is stored as a 32bit int.
	tblrd*+
	tblrd*+
	;	0x00 = 0x07 ->from;
	;	FSR0 = (unsigned short)0x07 ->to;
	;	0x03 = (unsigned short)0x07 ->size;
	;	The table pointer now points to the next entry. Save it
	;	off since we will be using the table pointer to do the copying
	;	for the entry.
	;	0x07 = TBLPTR
	movff	_TBLPTRL, 0x07
	movff	_TBLPTRH, (0x07 + 1)
	movff	_TBLPTRU, (0x07 + 2)
	;	Now assign the source address to the table pointer.
	;	TBLPTR = 0x00
	movff	0x00, _TBLPTRL
	movff	(0x00 + 1), _TBLPTRH
	movff	(0x00 + 2), _TBLPTRU
	bra	copy_loop_dec
copy_loop:
	tblrd*+
	movff	_TABLAT, _POSTINC0
copy_loop_dec:
	;	while (--0x03);
	;	Decrement and test the byte counter.
	;	The cycle ends when the value of counter reaches the -1.
	decf	0x03, f, 0
	bc	copy_loop
	decf	(0x03 + 1), f, 0
	bc	copy_loop
	;	Restore the table pointer for the next entry.
	;	TBLPTR = 0x07
	movff	0x07, _TBLPTRL
	movff	(0x07 + 1), _TBLPTRH
	movff	(0x07 + 2), _TBLPTRU
entry_loop_dec:
	;	while (--0x05);
	;	Decrement and test the entry counter.
	;	The cycle ends when the value of counter reaches the -1.
	decf	0x05, f, 0
	bc	entry_loop
	decf	(0x05 + 1), f, 0
	bc	entry_loop
	
;	.line	259; /home/vbasel/.icaro/v4/firmware/source/tortucaro/crt0iz.c	main ();
	CALL	_main
lockup:
	;	Returning from main will lock up.
	bra	lockup
	
; ; Starting pCode block
S_tortucaro__loop	code
_loop:
;	.line	241; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	void loop()
	MOVFF	r0x01, POSTDEC1
_01786_DS_:
	BANKSEL	_valor
;	.line	253; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	PORTD=valor;
	MOVF	_valor, W, B
	MOVWF	_PORTD
;	.line	254; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(leo_puerto()==1)
	CALL	_leo_puerto
	MOVFF	PRODL, r0x01
	XORLW	0x01
	BNZ	_01796_DS_
	MOVF	r0x01, W
	BZ	_01797_DS_
_01796_DS_:
	BRA	_01784_DS_
_01797_DS_:
;	.line	256; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	comparo();
	CALL	_comparo
_01784_DS_:
	BANKSEL	_caracter
;	.line	259; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	caracter=0;
	CLRF	_caracter, B
; removed redundant BANKSEL
	CLRF	(_caracter + 1), B
	BANKSEL	_receivedbyte
;	.line	260; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
	BRA	_01786_DS_
	MOVFF	PREINC1, r0x01
	RETURN	

; ; Starting pCode block
S_tortucaro__leo_puerto	code
_leo_puerto:
;	.line	230; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	int leo_puerto()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
_01773_DS_:
;	.line	232; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x00
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x00, _receivedbyte
	MOVF	r0x00, W
	BZ	_01773_DS_
;	.line	233; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	234; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01777_DS_
;	.line	236; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	caracter=rxstr[0];
	MOVFF	_rxstr, _caracter
	BANKSEL	(_caracter + 1)
	CLRF	(_caracter + 1), B
;	.line	237; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	return 1;
	CLRF	PRODL
	MOVLW	0x01
	BRA	_01778_DS_
_01777_DS_:
;	.line	239; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	return 0;
	CLRF	PRODL
	CLRF	WREG
_01778_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__comparo	code
_comparo:
	BANKSEL	_caracter
;	.line	204; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(caracter=='b')
	MOVF	_caracter, W, B
	XORLW	0x62
	BNZ	_01757_DS_
; removed redundant BANKSEL
	MOVF	(_caracter + 1), W, B
	BZ	_01758_DS_
_01757_DS_:
	BRA	_01726_DS_
_01758_DS_:
;	.line	206; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	CDCputs("icaro USB 02 \n",14);
	MOVLW	0x0e
	MOVWF	POSTDEC1
	MOVLW	UPPER(___str_3)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_3)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_3)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
_01726_DS_:
	BANKSEL	_caracter
;	.line	208; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(caracter=='m')
	MOVF	_caracter, W, B
	XORLW	0x6d
	BNZ	_01759_DS_
; removed redundant BANKSEL
	MOVF	(_caracter + 1), W, B
	BZ	_01760_DS_
_01759_DS_:
	BRA	_01728_DS_
_01760_DS_:
;	.line	210; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	servos();
	CALL	_servos
_01728_DS_:
	BANKSEL	_caracter
;	.line	212; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(caracter=='e')
	MOVF	_caracter, W, B
	XORLW	0x65
	BNZ	_01761_DS_
; removed redundant BANKSEL
	MOVF	(_caracter + 1), W, B
	BZ	_01762_DS_
_01761_DS_:
	BRA	_01730_DS_
_01762_DS_:
;	.line	214; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	analogico();
	CALL	_analogico
_01730_DS_:
	BANKSEL	_caracter
;	.line	216; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(caracter=='l')
	MOVF	_caracter, W, B
	XORLW	0x6c
	BNZ	_01763_DS_
; removed redundant BANKSEL
	MOVF	(_caracter + 1), W, B
	BZ	_01764_DS_
_01763_DS_:
	BRA	_01732_DS_
_01764_DS_:
;	.line	218; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	l293d();
	CALL	_l293d
_01732_DS_:
	BANKSEL	_caracter
;	.line	220; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(caracter=='d')
	MOVF	_caracter, W, B
	XORLW	0x64
	BNZ	_01765_DS_
; removed redundant BANKSEL
	MOVF	(_caracter + 1), W, B
	BZ	_01766_DS_
_01765_DS_:
	BRA	_01734_DS_
_01766_DS_:
;	.line	222; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	digital();
	CALL	_digital
_01734_DS_:
	BANKSEL	_caracter
;	.line	224; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(caracter=='s')
	MOVF	_caracter, W, B
	XORLW	0x73
	BNZ	_01767_DS_
; removed redundant BANKSEL
	MOVF	(_caracter + 1), W, B
	BZ	_01768_DS_
_01767_DS_:
	BRA	_01737_DS_
_01768_DS_:
;	.line	226; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	puertob();
	CALL	_puertob
_01737_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__setup	code
_setup:
;	.line	182; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	TRISB=0;
	CLRF	_TRISB
;	.line	183; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(21,INPUT);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x15
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	184; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(22,INPUT);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x16
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	185; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(23,INPUT);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	186; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(24,INPUT);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	187; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(25,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x19
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	188; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(26,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x1a
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	189; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(27,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x1b
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	190; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	pinmode(28,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	191; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(8);
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	192; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(9);
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	193; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(10);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	194; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(11);
	MOVLW	0x0b
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	195; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(12);
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	196; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	PORTD=0;
	CLRF	_PORTD
;	.line	197; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	PORTB=0;
	CLRF	_PORTB
	RETURN	

; ; Starting pCode block
S_tortucaro__servos	code
_servos:
;	.line	141; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	void servos()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	146; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	int val=0;
	CLRF	r0x00
;	.line	147; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if (leo_puerto()==1)
	CALL	_leo_puerto
	MOVFF	PRODL, r0x03
	XORLW	0x01
	BNZ	_01709_DS_
	MOVF	r0x03, W
	BZ	_01710_DS_
_01709_DS_:
	BRA	_01692_DS_
_01710_DS_:
	BANKSEL	(_caracter + 1)
;	.line	149; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	switch(caracter)
	MOVF	(_caracter + 1), W, B
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01711_DS_
	MOVLW	0x31
; removed redundant BANKSEL
	SUBWF	_caracter, W, B
_01711_DS_:
	BNC	_01692_DS_
	BANKSEL	(_caracter + 1)
	MOVF	(_caracter + 1), W, B
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01712_DS_
	MOVLW	0x36
; removed redundant BANKSEL
	SUBWF	_caracter, W, B
_01712_DS_:
	BC	_01692_DS_
	MOVLW	0xcf
	BANKSEL	_caracter
	ADDWF	_caracter, W, B
	MOVWF	r0x02
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x02, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_01713_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_01713_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_01713_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_01713_DS_:
	GOTO	_01685_DS_
	GOTO	_01686_DS_
	GOTO	_01687_DS_
	GOTO	_01688_DS_
	GOTO	_01689_DS_
_01685_DS_:
;	.line	152; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_SRV1;
	MOVLW	0x0a
	MOVWF	r0x00
;	.line	153; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01692_DS_
_01686_DS_:
;	.line	155; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_SRV2;
	MOVLW	0x0b
	MOVWF	r0x00
;	.line	156; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01692_DS_
_01687_DS_:
;	.line	158; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_SRV3;
	MOVLW	0x0c
	MOVWF	r0x00
;	.line	159; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01692_DS_
_01688_DS_:
;	.line	161; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_SRV4;
	MOVLW	0x09
	MOVWF	r0x00
;	.line	162; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01692_DS_
_01689_DS_:
;	.line	164; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_SRV5;
	MOVLW	0x08
	MOVWF	r0x00
_01692_DS_:
	BANKSEL	_caracter
;	.line	168; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	caracter=0;
	CLRF	_caracter, B
; removed redundant BANKSEL
	CLRF	(_caracter + 1), B
	BANKSEL	_receivedbyte
;	.line	169; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
;	.line	170; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if (leo_puerto()==1)
	CALL	_leo_puerto
	MOVFF	PRODL, r0x03
	XORLW	0x01
	BNZ	_01714_DS_
	MOVF	r0x03, W
	BZ	_01715_DS_
_01714_DS_:
	BRA	_01694_DS_
_01715_DS_:
;	.line	172; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	resultado = caracter;
	MOVFF	_caracter, r0x02
	MOVFF	(_caracter + 1), r0x03
;	.line	173; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	ServoWrite(val,resultado);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BANKSEL	_caracter
;	.line	174; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	caracter=0;
	CLRF	_caracter, B
; removed redundant BANKSEL
	CLRF	(_caracter + 1), B
_01694_DS_:
	BANKSEL	_receivedbyte
;	.line	176; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
;	.line	177; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	return;
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__puertob	code
_puertob:
;	.line	127; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	void puertob()
	MOVFF	r0x01, POSTDEC1
;	.line	133; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if (leo_puerto()==1)
	CALL	_leo_puerto
	MOVFF	PRODL, r0x01
	XORLW	0x01
	BNZ	_01679_DS_
	MOVF	r0x01, W
	BZ	_01680_DS_
_01679_DS_:
	BRA	_01674_DS_
_01680_DS_:
	BANKSEL	_caracter
;	.line	136; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	PORTB=caracter;
	MOVF	_caracter, W, B
	MOVWF	_PORTB
; removed redundant BANKSEL
;	.line	137; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	caracter=0;
	CLRF	_caracter, B
; removed redundant BANKSEL
	CLRF	(_caracter + 1), B
	BANKSEL	_receivedbyte
;	.line	138; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
_01674_DS_:
	MOVFF	PREINC1, r0x01
	RETURN	

; ; Starting pCode block
S_tortucaro__analogico	code
_analogico:
;	.line	72; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	void analogico()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	76; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	unsigned int val=0;
	CLRF	r0x00
_01618_DS_:
;	.line	81; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	receivedbyte2=CDCgets(rxstr2);
	MOVLW	0x80
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr2)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr2)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	BANKSEL	_receivedbyte2
	MOVWF	_receivedbyte2, B
	MOVLW	0x03
	ADDWF	FSR1L, F
; removed redundant BANKSEL
;	.line	82; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte2>0)
	MOVF	_receivedbyte2, W, B
	BZ	_01618_DS_
;	.line	84; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='1')
	MOVFF	_rxstr2, r0x02
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01600_DS_
;	.line	86; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=13;
	MOVLW	0x0d
	MOVWF	r0x00
_01600_DS_:
;	.line	88; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01602_DS_
;	.line	90; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=14;
	MOVLW	0x0e
	MOVWF	r0x00
_01602_DS_:
;	.line	92; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01604_DS_
;	.line	94; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=15;
	MOVLW	0x0f
	MOVWF	r0x00
_01604_DS_:
;	.line	96; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='4')
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01606_DS_
;	.line	98; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=16;
	MOVLW	0x10
	MOVWF	r0x00
_01606_DS_:
;	.line	100; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='5')
	MOVF	r0x02, W
	XORLW	0x35
	BNZ	_01608_DS_
;	.line	102; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=17;
	MOVLW	0x11
	MOVWF	r0x00
_01608_DS_:
;	.line	104; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='6')
	MOVF	r0x02, W
	XORLW	0x36
	BNZ	_01610_DS_
;	.line	106; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=18;
	MOVLW	0x12
	MOVWF	r0x00
_01610_DS_:
;	.line	108; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='7')
	MOVF	r0x02, W
	XORLW	0x37
	BNZ	_01612_DS_
;	.line	110; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=19;
	MOVLW	0x13
	MOVWF	r0x00
_01612_DS_:
;	.line	112; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='8')
	MOVF	r0x02, W
	XORLW	0x38
	BNZ	_01614_DS_
;	.line	114; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=20;
	MOVLW	0x14
	MOVWF	r0x00
_01614_DS_:
	BANKSEL	_receivedbyte2
;	.line	116; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	receivedbyte2=0;
	CLRF	_receivedbyte2, B
;	.line	120; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	valor=analogread(val);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_analogread
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	POSTINC1, F
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___uint2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	121; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	x_ftoa(valor,chaine,2,2);
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_x_ftoa
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	122; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	strcat(chaine,"f\n");
	MOVLW	UPPER(___str_2)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_2)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_2)
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	CALL	_strcat
	MOVLW	0x06
	ADDWF	FSR1L, F
;	.line	123; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	tam=strlen(chaine);
	MOVLW	0x80
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	CALL	_strlen
	MOVWF	r0x00
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	124; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	CDCputs(chaine,tam);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_236)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__l293d	code
_l293d:
;	.line	44; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	void l293d()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	46; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	int val=0;
	CLRF	r0x00
	CLRF	r0x01
;	.line	47; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if(leo_puerto()==1)
	CALL	_leo_puerto
	MOVFF	PRODL, r0x03
	XORLW	0x01
	BNZ	_01590_DS_
	MOVF	r0x03, W
	BZ	_01591_DS_
_01590_DS_:
	BRA	_01578_DS_
_01591_DS_:
	BANKSEL	(_caracter + 1)
;	.line	49; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	switch(caracter)
	MOVF	(_caracter + 1), W, B
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01592_DS_
	MOVLW	0x31
; removed redundant BANKSEL
	SUBWF	_caracter, W, B
_01592_DS_:
	BNC	_01575_DS_
	BANKSEL	(_caracter + 1)
	MOVF	(_caracter + 1), W, B
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01593_DS_
	MOVLW	0x36
; removed redundant BANKSEL
	SUBWF	_caracter, W, B
_01593_DS_:
	BC	_01575_DS_
	MOVLW	0xcf
	BANKSEL	_caracter
	ADDWF	_caracter, W, B
	MOVWF	r0x02
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x02, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_01594_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_01594_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_01594_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_01594_DS_:
	GOTO	_01570_DS_
	GOTO	_01571_DS_
	GOTO	_01572_DS_
	GOTO	_01573_DS_
	GOTO	_01574_DS_
_01570_DS_:
;	.line	52; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_MOTS_AD;
	MOVLW	0x60
	MOVWF	r0x00
	CLRF	r0x01
;	.line	53; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01578_DS_
_01571_DS_:
;	.line	55; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_MOTS_AT;
	MOVLW	0x90
	MOVWF	r0x00
	CLRF	r0x01
;	.line	56; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01578_DS_
_01572_DS_:
;	.line	58; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_MOTS_IZ;
	MOVLW	0x40
	MOVWF	r0x00
	CLRF	r0x01
;	.line	59; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01578_DS_
_01573_DS_:
;	.line	61; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=ICR_MOTS_DE;
	MOVLW	0x20
	MOVWF	r0x00
	CLRF	r0x01
;	.line	62; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01578_DS_
_01574_DS_:
;	.line	64; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=0;
	CLRF	r0x00
	CLRF	r0x01
;	.line	65; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01578_DS_
_01575_DS_:
;	.line	67; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	val=0;
	CLRF	r0x00
	CLRF	r0x01
_01578_DS_:
;	.line	70; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	valor=val;
	MOVFF	r0x00, _valor
	MOVFF	r0x01, (_valor + 1)
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__digital	code
_digital:
;	.line	13; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	void digital()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	15; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	int sens=0;
	CLRF	r0x00
;	.line	17; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if (leo_puerto()==1)
	CALL	_leo_puerto
	MOVFF	PRODL, r0x03
	XORLW	0x01
	BNZ	_01559_DS_
	MOVF	r0x03, W
	BZ	_01560_DS_
_01559_DS_:
	BRA	_01541_DS_
_01560_DS_:
	BANKSEL	(_caracter + 1)
;	.line	19; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	switch(caracter)
	MOVF	(_caracter + 1), W, B
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01561_DS_
	MOVLW	0x31
; removed redundant BANKSEL
	SUBWF	_caracter, W, B
_01561_DS_:
	BNC	_01541_DS_
	BANKSEL	(_caracter + 1)
	MOVF	(_caracter + 1), W, B
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01562_DS_
	MOVLW	0x35
; removed redundant BANKSEL
	SUBWF	_caracter, W, B
_01562_DS_:
	BC	_01541_DS_
	MOVLW	0xcf
	BANKSEL	_caracter
	ADDWF	_caracter, W, B
	MOVWF	r0x02
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x02, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_01563_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_01563_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_01563_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_01563_DS_:
	GOTO	_01535_DS_
	GOTO	_01536_DS_
	GOTO	_01537_DS_
	GOTO	_01538_DS_
_01535_DS_:
;	.line	22; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	sens=21;
	MOVLW	0x15
	MOVWF	r0x00
;	.line	23; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01541_DS_
_01536_DS_:
;	.line	25; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	sens=22;
	MOVLW	0x16
	MOVWF	r0x00
;	.line	26; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01541_DS_
_01537_DS_:
;	.line	28; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	sens=23;
	MOVLW	0x17
	MOVWF	r0x00
;	.line	29; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	break;
	BRA	_01541_DS_
_01538_DS_:
;	.line	31; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	sens=24;
	MOVLW	0x18
	MOVWF	r0x00
_01541_DS_:
	BANKSEL	_caracter
;	.line	35; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	caracter=0;
	CLRF	_caracter, B
; removed redundant BANKSEL
	CLRF	(_caracter + 1), B
	BANKSEL	_receivedbyte
;	.line	36; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
;	.line	37; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	r=digitalread(sens);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVF	POSTINC1, F
	CLRF	r0x01
;	.line	38; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	if (r==1) 
	XORLW	0x01
	BNZ	_01564_DS_
	MOVF	r0x01, W
	BZ	_01565_DS_
_01564_DS_:
	BRA	_01543_DS_
_01565_DS_:
;	.line	39; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	CDCputs("0",1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	UPPER(___str_0)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_0)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_0)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01545_DS_
_01543_DS_:
;	.line	41; /home/vbasel/.icaro/v4/firmware/source/tortucaro/user-tortucaro.c	CDCputs("1",1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	UPPER(___str_1)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_1)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
_01545_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__CDC_interrupt	code
_CDC_interrupt:
;	.line	341; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	if(PIR2bits.USBIF)
	BTFSS	_PIR2bits, 5
	BRA	_01530_DS_
;	.line	343; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	PIR2bits.USBIF = 0;
	BCF	_PIR2bits, 5
;	.line	345; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	ProcessUSBTransactions();
	CALL	_ProcessUSBTransactions
;	.line	346; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	UIRbits.SOFIF = 0;
	BCF	_UIRbits, 6
;	.line	347; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	UIRbits.URSTIF = 0;
	BCF	_UIRbits, 0
;	.line	348; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	UEIR = 0;
	CLRF	_UEIR
_01530_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__CDC_init	code
_CDC_init:
;	.line	53; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	void CDC_init(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
;	.line	58; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	INTCONbits.GIEH = 0;
	BCF	_INTCONbits, 7
;	.line	59; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	INTCONbits.GIEL = 0;
	BCF	_INTCONbits, 6
;	.line	76; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	UCFG = 0x14;            // Enable pullup resistors; full speed mode
	MOVLW	0x14
	MOVWF	_UCFG
	BANKSEL	_deviceState
;	.line	77; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	deviceState = DETACHED;
	CLRF	_deviceState, B
	BANKSEL	_remoteWakeup
;	.line	78; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	remoteWakeup = 0x00;
	CLRF	_remoteWakeup, B
	BANKSEL	_currentConfiguration
;	.line	79; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	currentConfiguration = 0x00;
	CLRF	_currentConfiguration, B
;	.line	89; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	while ( counter++ && deviceState != CONFIGURED )
	MOVLW	0x01
	MOVWF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
_01506_DS_:
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
	MOVFF	r0x02, r0x06
	MOVFF	r0x03, r0x07
	INCF	r0x00, F
	BNC	_01521_DS_
	INCF	r0x01, F
	BNC	_01521_DS_
	INFSNZ	r0x02, F
	INCF	r0x03, F
_01521_DS_:
	MOVF	r0x04, W
	IORWF	r0x05, W
	IORWF	r0x06, W
	IORWF	r0x07, W
	BZ	_01508_DS_
	BANKSEL	_deviceState
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_01508_DS_
;	.line	91; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	EnableUSBModule();
	CALL	_EnableUSBModule
;	.line	92; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	ProcessUSBTransactions();
	CALL	_ProcessUSBTransactions
	BRA	_01506_DS_
_01508_DS_:
;	.line	102; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	PIR2bits.USBIF = 0;     // clear usb interrupt flag
	BCF	_PIR2bits, 5
;	.line	103; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	PIE2bits.USBIE = 1;     // enable usb interrupt
	BSF	_PIE2bits, 5
;	.line	104; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	IPR2bits.USBIP = 1;     // high priority interrupt
	BSF	_IPR2bits, 5
;	.line	107; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	INTCONbits.GIEH = 1;   // Enable global HP interrupts
	BSF	_INTCONbits, 7
;	.line	108; /home/vbasel/.icaro/v4/firmware/libraries/__cdc.c	INTCONbits.GIEL = 1;   // Enable global LP interrupts
	BSF	_INTCONbits, 6
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCInitEndpoint	code
_CDCInitEndpoint:
	BANKSEL	_line_config
;	.line	220; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	line_config.dwDTERate = USB_CDC_BAUD_RATE;
	CLRF	_line_config, B
	MOVLW	0xc2
; removed redundant BANKSEL
	MOVWF	(_line_config + 1), B
	MOVLW	0x01
; removed redundant BANKSEL
	MOVWF	(_line_config + 2), B
; removed redundant BANKSEL
	CLRF	(_line_config + 3), B
; removed redundant BANKSEL
;	.line	221; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	line_config.bCharFormat = USB_CDC_STOP_BITS;
	CLRF	(_line_config + 4), B
; removed redundant BANKSEL
;	.line	222; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	line_config.bParityType = USB_CDC_PARITY;
	CLRF	(_line_config + 5), B
;	.line	223; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	line_config.bDataBits = USB_CDC_DATA_BITS;
	MOVLW	0x08
; removed redundant BANKSEL
	MOVWF	(_line_config + 6), B
	BANKSEL	_zlp
;	.line	224; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue0=0;
	CLRF	_zlp, B
; removed redundant BANKSEL
;	.line	225; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue1=0;
	CLRF	(_zlp + 1), B
; removed redundant BANKSEL
;	.line	226; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue2=0;
	CLRF	(_zlp + 2), B
; removed redundant BANKSEL
;	.line	227; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue3=0;
	CLRF	(_zlp + 3), B
; removed redundant BANKSEL
;	.line	228; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue4=0;
	CLRF	(_zlp + 4), B
; removed redundant BANKSEL
;	.line	229; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue5=0;
	CLRF	(_zlp + 5), B
; removed redundant BANKSEL
;	.line	230; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue6=0;
	CLRF	(_zlp + 6), B
; removed redundant BANKSEL
;	.line	231; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	zlp.wValue7=0;
	CLRF	(_zlp + 7), B
;	.line	236; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	USB_COMM_EP_UEP = EP_IN | HSHK_EN;
	MOVLW	0x1a
	MOVWF	_UEP2
;	.line	239; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	CDC_DATA_EP_UEP = EP_OUT_IN | HSHK_EN;
	MOVLW	0x1e
	MOVWF	_UEP3
;	.line	243; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(USB_COMM_EP_NUM).ADDR = PTR16(&CDCControlBuffer);
	MOVLW	LOW(_CDCControlBuffer)
	BANKSEL	(_ep_bdt + 22)
	MOVWF	(_ep_bdt + 22), B
	MOVLW	HIGH(_CDCControlBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 23), B
; #	MOVLW	0x40
; #	MOVWF	(_ep_bdt + 20), B
; #	MOVLW	0x40
;	.line	244; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(USB_COMM_EP_NUM).Stat.uc = BDS_DAT1 | BDS_COWN;
	MOVLW	0x40
; removed redundant BANKSEL
;	.line	247; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Cnt = sizeof(CDCRxBuffer);
	MOVWF	(_ep_bdt + 20), B
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 25), B
;	.line	248; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).ADDR = PTR16(&CDCRxBuffer);
	MOVLW	LOW(_CDCRxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 26), B
	MOVLW	HIGH(_CDCRxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 27), B
;	.line	249; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc = BDS_UOWN | BDS_DAT0 | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 24), B
;	.line	251; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).ADDR = PTR16(&CDCTxBuffer); // +1 
	MOVLW	LOW(_CDCTxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 30), B
	MOVLW	HIGH(_CDCTxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 31), B
;	.line	252; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc = BDS_DAT1 | BDS_COWN; 
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 28), B
;	.line	253; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	deviceState=CONFIGURED; 
	MOVLW	0x05
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCputc	code
_CDCputc:
;	.line	190; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	void CDCputc(u8 c)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	BANKSEL	_deviceState
;	.line	192; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (deviceState != CONFIGURED) return;
	MOVF	_deviceState, W, B
	XORLW	0x05
	BNZ	_01483_DS_
_01478_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	194; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (!CONTROL_LINE) return;
	MOVF	_CONTROL_LINE, W, B
	BZ	_01483_DS_
_01480_DS_:
	BANKSEL	(_ep_bdt + 28)
;	.line	196; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (!EP_IN_BD(CDC_DATA_EP_NUM).Stat.UOWN)
	BTFSC	(_ep_bdt + 28), 7, B
	BRA	_01483_DS_
;	.line	198; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	CDCTxBuffer[0] = c;
	MOVF	r0x00, W
	BANKSEL	_CDCTxBuffer
	MOVWF	_CDCTxBuffer, B
;	.line	201; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Cnt = 1;
	MOVLW	0x01
	BANKSEL	(_ep_bdt + 29)
	MOVWF	(_ep_bdt + 29), B
;	.line	203; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc &= 0x40;
	MOVLW	0x40
; removed redundant BANKSEL
	ANDWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 28), B
;	.line	204; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS = !EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS;
	CLRF	r0x00
; removed redundant BANKSEL
	BTFSC	(_ep_bdt + 28), 6, B
	INCF	r0x00, F
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	ANDLW	0x01
	RRNCF	WREG, W
	RRNCF	WREG, W
	MOVWF	PRODH
; removed redundant BANKSEL
	MOVF	(_ep_bdt + 28), W, B
	ANDLW	0xbf
	IORWF	PRODH, W
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 28), B
;	.line	206; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc |= BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	IORWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 28), B
_01483_DS_:
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCputs	code
_CDCputs:
;	.line	153; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	u8 CDCputs(u8 *buffer, u8 length)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	BANKSEL	_deviceState
;	.line	157; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (deviceState != CONFIGURED) return 0;
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_01437_DS_
	CLRF	WREG
	BRA	_01448_DS_
_01437_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	159; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (!CONTROL_LINE) return 0;
	MOVF	_CONTROL_LINE, W, B
	BNZ	_01439_DS_
	CLRF	WREG
	BRA	_01448_DS_
_01439_DS_:
	BANKSEL	(_ep_bdt + 28)
;	.line	161; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (!EP_IN_BD(CDC_DATA_EP_NUM).Stat.UOWN)
	BTFSC	(_ep_bdt + 28), 7, B
	BRA	_01444_DS_
;	.line	163; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (length > CDC_BULK_IN_SIZE)
	MOVLW	0x41
	SUBWF	r0x03, W
	BNC	_01455_DS_
;	.line	164; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	length = CDC_BULK_IN_SIZE;
	MOVLW	0x40
	MOVWF	r0x03
_01455_DS_:
;	.line	166; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	for (i=0; i < length; i++)
	CLRF	r0x04
_01446_DS_:
	MOVF	r0x03, W
	SUBWF	r0x04, W
	BC	_01456_DS_
;	.line	168; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	CDCTxBuffer[i] = buffer[i];
	MOVLW	LOW(_CDCTxBuffer)
	ADDWF	r0x04, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_CDCTxBuffer)
	ADDWFC	r0x06, F
	MOVF	r0x04, W
	ADDWF	r0x00, W
	MOVWF	r0x07
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x08
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	CALL	__gptrget1
	MOVWF	r0x07
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x07, INDF0
;	.line	166; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	for (i=0; i < length; i++)
	INCF	r0x04, F
	BRA	_01446_DS_
_01456_DS_:
	MOVFF	r0x04, r0x00
;	.line	180; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Cnt = i;
	MOVF	r0x04, W
	BANKSEL	(_ep_bdt + 29)
	MOVWF	(_ep_bdt + 29), B
;	.line	182; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc &= 0x40;
	MOVLW	0x40
; removed redundant BANKSEL
	ANDWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	(_ep_bdt + 28), B
;	.line	183; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS = !EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS;
	CLRF	r0x01
; removed redundant BANKSEL
	BTFSC	(_ep_bdt + 28), 6, B
	INCF	r0x01, F
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	MOVF	r0x01, W
	ANDLW	0x01
	RRNCF	WREG, W
	RRNCF	WREG, W
	MOVWF	PRODH
; removed redundant BANKSEL
	MOVF	(_ep_bdt + 28), W, B
	ANDLW	0xbf
	IORWF	PRODH, W
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 28), B
;	.line	185; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc |= BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	IORWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	(_ep_bdt + 28), B
_01444_DS_:
;	.line	187; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	return i;
	MOVF	r0x00, W
_01448_DS_:
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCgets	code
_CDCgets:
;	.line	106; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	u8 CDCgets(u8 *buffer)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	108; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	u8 i=0;
	CLRF	r0x03
	BANKSEL	_deviceState
;	.line	111; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (deviceState != CONFIGURED)
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_01396_DS_
;	.line	112; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	return 0;
	CLRF	WREG
	BRA	_01407_DS_
_01396_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	115; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (!CONTROL_LINE)
	MOVF	_CONTROL_LINE, W, B
	BNZ	_01398_DS_
;	.line	116; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	return 0;
	CLRF	WREG
	BRA	_01407_DS_
_01398_DS_:
	BANKSEL	(_ep_bdt + 24)
;	.line	119; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (!EP_OUT_BD(CDC_DATA_EP_NUM).Stat.UOWN)
	BTFSC	(_ep_bdt + 24), 7, B
	BRA	_01403_DS_
;	.line	126; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (length > EP_OUT_BD(CDC_DATA_EP_NUM).Cnt)
	MOVLW	0x40
; #	SUBWF	(_ep_bdt + 25), W, B
; #	BTFSC	STATUS, 0
; #	GOTO	_01414_DS_
; #;;;!!! pic16_aopOp:1118 called for a spillLocation -- assigning WREG instead --- CHECK
; #	MOVFF	(_ep_bdt + 25), WREG
; #	CLRF	r0x04
; removed redundant BANKSEL
;	.line	127; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	length = EP_OUT_BD(CDC_DATA_EP_NUM).Cnt;
	SUBWF	(_ep_bdt + 25), W, B
;	.line	129; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	for (i=0; i < EP_OUT_BD(CDC_DATA_EP_NUM).Cnt; i++)
	BTFSS	STATUS, 0
	MOVFF	(_ep_bdt + 25), WREG
	CLRF	r0x04
_01405_DS_:
	BANKSEL	(_ep_bdt + 25)
	MOVF	(_ep_bdt + 25), W, B
	SUBWF	r0x04, W
	BC	_01415_DS_
;	.line	131; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	buffer[i] = CDCRxBuffer[i];
	MOVF	r0x04, W
	ADDWF	r0x00, W
	MOVWF	r0x05
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x06
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVWF	r0x07
	MOVLW	LOW(_CDCRxBuffer)
	ADDWF	r0x04, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_CDCRxBuffer)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	INDF0, r0x08
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
;	.line	129; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	for (i=0; i < EP_OUT_BD(CDC_DATA_EP_NUM).Cnt; i++)
	INCF	r0x04, F
	BRA	_01405_DS_
_01415_DS_:
	MOVFF	r0x04, r0x03
;	.line	143; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc &= 0x40;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 24)
	ANDWF	(_ep_bdt + 24), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 24), B
;	.line	144; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.DTS = !EP_OUT_BD(CDC_DATA_EP_NUM).Stat.DTS;
	CLRF	r0x00
; removed redundant BANKSEL
	BTFSC	(_ep_bdt + 24), 6, B
	INCF	r0x00, F
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	ANDLW	0x01
	RRNCF	WREG, W
	RRNCF	WREG, W
	MOVWF	PRODH
; removed redundant BANKSEL
	MOVF	(_ep_bdt + 24), W, B
	ANDLW	0xbf
	IORWF	PRODH, W
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 24), B
;	.line	146; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Cnt = sizeof(CDCRxBuffer);
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 25), B
;	.line	147; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc |= BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	IORWF	(_ep_bdt + 24), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 24), B
_01403_DS_:
;	.line	150; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	return i;
	MOVF	r0x03, W
_01407_DS_:
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessCDCRequest	code
_ProcessCDCRequest:
;	.line	29; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	void ProcessCDCRequest(void)
	MOVFF	r0x00, POSTDEC1
;	.line	40; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if ((SetupPacket.bmRequestType & USB_TYPE_MASK) != USB_TYPE_CLASS) return;
	MOVLW	0x60
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	XORLW	0x20
	BZ	_01343_DS_
	BRA	_01353_DS_
_01343_DS_:
;	.line	46; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	switch(SetupPacket.bRequest)
	MOVFF	(_SetupPacket + 1), r0x00
	MOVF	r0x00, W
	BNZ	_01380_DS_
	BRA	_01353_DS_
_01380_DS_:
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01382_DS_
	BRA	_01353_DS_
_01382_DS_:
	MOVF	r0x00, W
	XORLW	0x20
	BZ	_01346_DS_
	MOVF	r0x00, W
	XORLW	0x21
	BZ	_01347_DS_
	MOVF	r0x00, W
	XORLW	0x22
	BZ	_01348_DS_
	BRA	_01353_DS_
_01346_DS_:
;	.line	68; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	outPtr = (__data u8 *)&line_config;
	MOVLW	HIGH(_line_config)
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_line_config)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	69; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	wCount = sizeof(USB_CDC_Line_Coding) ;
	MOVLW	0x07
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	70; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	requestHandled = 1;				
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	71; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	break;
	BRA	_01353_DS_
_01347_DS_:
;	.line	78; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	outPtr = (__data u8 *)&line_config;
	MOVLW	HIGH(_line_config)
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_line_config)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	79; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	wCount = sizeof(USB_CDC_Line_Coding) ;
	MOVLW	0x07
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	80; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	81; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	break;
	BRA	_01353_DS_
_01348_DS_:
	BANKSEL	(_SetupPacket + 2)
;	.line	90; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	if (SetupPacket.wValue0==3) CONTROL_LINE=1;
	MOVF	(_SetupPacket + 2), W, B
	XORLW	0x03
	BNZ	_01350_DS_
	MOVLW	0x01
	BANKSEL	_CONTROL_LINE
	MOVWF	_CONTROL_LINE, B
	BRA	_01351_DS_
_01350_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	91; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	else CONTROL_LINE=0;		
	CLRF	_CONTROL_LINE, B
_01351_DS_:
;	.line	92; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	outPtr = (__data u8 *)&zlp;
	MOVLW	HIGH(_zlp)
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_zlp)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	93; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	wCount = sizeof(Zero_Packet_Length) ;
	MOVLW	0x08
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	94; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	requestHandled = 1;						
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_01353_DS_:
;	.line	96; /home/vbasel/.icaro/v4/firmware/libraries/usb/usb_cdc.c	}
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessUSBTransactions	code
_ProcessUSBTransactions:
;	.line	838; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void ProcessUSBTransactions(void)
	MOVFF	r0x00, POSTDEC1
; #	MOVF	_deviceState, W, B
; #	BTFSS	STATUS, 2
; #	GOTO	_01256_DS_
; #	GOTO	_01282_DS_
; #	BTFSS	_UIRbits, 2
	BANKSEL	_deviceState
;	.line	841; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(deviceState == DETACHED)
	MOVF	_deviceState, W, B
;	.line	842; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	return;
	BZ	_01282_DS_
;	.line	845; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(UIRbits.ACTVIF && UIEbits.ACTVIE)
	BTFSS	_UIRbits, 2
; #	GOTO	_01258_DS_
; #	BTFSS	_UIEbits, 2
; #	GOTO	_01258_DS_
; #	CALL	_UnSuspend
; #	CLRF	r0x00
;	.line	846; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UnSuspend();
	BRA	_01258_DS_
;	.line	850; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(UCONbits.SUSPND == 1)
	BTFSC	_UIEbits, 2
	CALL	_UnSuspend
_01258_DS_:
	CLRF	r0x00
	BTFSC	_UCONbits, 1
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
;	.line	851; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	return;
	BZ	_01282_DS_
;	.line	854; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (UIRbits.URSTIF && UIEbits.URSTIE)
	BTFSS	_UIRbits, 0
; #	GOTO	_01263_DS_
; #	BTFSS	_UIEbits, 0
; #	GOTO	_01263_DS_
; #	CALL	_BusReset
; #	BTFSS	_UIRbits, 4
;	.line	855; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	BusReset();
	BRA	_01263_DS_
;	.line	858; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (UIRbits.IDLEIF && UIEbits.IDLEIE)
	BTFSC	_UIEbits, 0
	CALL	_BusReset
_01263_DS_:
	BTFSS	_UIRbits, 4
; #	GOTO	_01266_DS_
; #	BTFSS	_UIEbits, 4
; #	GOTO	_01266_DS_
; #	CALL	_Suspend
; #	BTFSS	_UIRbits, 6
;	.line	859; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	Suspend();
	BRA	_01266_DS_
;	.line	861; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (UIRbits.SOFIF && UIEbits.SOFIE)
	BTFSC	_UIEbits, 4
	CALL	_Suspend
_01266_DS_:
	BTFSS	_UIRbits, 6
; #	GOTO	_01269_DS_
; #	BTFSS	_UIEbits, 6
; #	GOTO	_01269_DS_
; #	CALL	_StartOfFrame
; #	BTFSS	_UIRbits, 5
;	.line	862; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	StartOfFrame();
	BRA	_01269_DS_
;	.line	864; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (UIRbits.STALLIF && UIEbits.STALLIE)
	BTFSC	_UIEbits, 6
	CALL	_StartOfFrame
_01269_DS_:
	BTFSS	_UIRbits, 5
; #	GOTO	_01272_DS_
; #	BTFSS	_UIEbits, 5
; #	GOTO	_01272_DS_
; #	CALL	_Stall
; #	BTFSS	_UIRbits, 1
;	.line	865; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	Stall();
	BRA	_01272_DS_
;	.line	869; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (UIRbits.UERRIF && UIEbits.UERRIE)
	BTFSC	_UIEbits, 5
	CALL	_Stall
_01272_DS_:
	BTFSS	_UIRbits, 1
; #	GOTO	_01275_DS_
; #	BTFSS	_UIEbits, 1
; #	GOTO	_01275_DS_
; #	BCF	_UIRbits, 1
; #	MOVLW	0x03
;	.line	870; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIRbits.UERRIF = 0;
	BRA	_01275_DS_
;	.line	873; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (deviceState < DEFAULT_STATUS)
	BTFSC	_UIEbits, 1
	BCF	_UIRbits, 1
_01275_DS_:
	MOVLW	0x03
; #	SUBWF	_deviceState, W, B
; #	BTFSC	STATUS, 0
; #	GOTO	_01278_DS_
; #	GOTO	_01282_DS_
; #	BTFSS	_UIRbits, 3
	BANKSEL	_deviceState
;	.line	874; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	return;
	SUBWF	_deviceState, W, B
;	.line	877; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(UIRbits.TRNIF && UIEbits.TRNIE)
	BNC	_01282_DS_
	BTFSS	_UIRbits, 3
	BRA	_01282_DS_
	BTFSS	_UIEbits, 3
	BRA	_01282_DS_
;	.line	879; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	ProcessControlTransfer();
	CALL	_ProcessControlTransfer
;	.line	881; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIRbits.TRNIF = 0;
	BCF	_UIRbits, 3
_01282_DS_:
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__BusReset	code
_BusReset:
;	.line	808; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void BusReset()
	MOVFF	r0x00, POSTDEC1
;	.line	810; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UEIR  = 0x00;
	CLRF	_UEIR
;	.line	811; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIR   = 0x00;
	CLRF	_UIR
;	.line	812; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UEIE  = 0x9f;
	MOVLW	0x9f
	MOVWF	_UEIE
;	.line	813; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIE   = 0x7b;
	MOVLW	0x7b
	MOVWF	_UIE
;	.line	814; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UADDR = 0x00;
	CLRF	_UADDR
;	.line	817; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UEP0 = EP_CTRL | HSHK_EN;
	MOVLW	0x16
	MOVWF	_UEP0
_01238_DS_:
;	.line	821; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	while (UIRbits.TRNIF == 1)
	CLRF	r0x00
	BTFSC	_UIRbits, 3
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01240_DS_
;	.line	822; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIRbits.TRNIF = 0;
	BCF	_UIRbits, 3
	BRA	_01238_DS_
_01240_DS_:
;	.line	825; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UCONbits.PKTDIS = 0;
	BCF	_UCONbits, 4
;	.line	828; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
	BANKSEL	_remoteWakeup
;	.line	830; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	remoteWakeup = 0;                     // Remote wakeup is off by default
	CLRF	_remoteWakeup, B
	BANKSEL	_selfPowered
;	.line	831; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	selfPowered = 0;                      // Self powered is off by default
	CLRF	_selfPowered, B
	BANKSEL	_currentConfiguration
;	.line	832; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	currentConfiguration = 0;             // Clear active configuration
	CLRF	_currentConfiguration, B
;	.line	833; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceState = DEFAULT_STATUS;
	MOVLW	0x03
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__Suspend	code
_Suspend:
;	.line	735; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void Suspend(void)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	741; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIEbits.ACTVIE = 1;
	BSF	_UIEbits, 2
;	.line	742; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIRbits.IDLEIF = 0;
	BCF	_UIRbits, 4
;	.line	743; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UCONbits.SUSPND = 1;
	BSF	_UCONbits, 1
;	.line	748; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	PIR2bits.USBIF = 0;
	BCF	_PIR2bits, 5
;	.line	754; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	INTCONbits.RBIF = 0;
	BCF	_INTCONbits, 0
;	.line	760; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	PIE2bits.USBIE = 1;
	BSF	_PIE2bits, 5
;	.line	766; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	INTCONbits.RBIE = 1;
	BSF	_INTCONbits, 3
	sleep	
;	.line	796; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	PIE2bits.USBIE = 0;
	BCF	_PIE2bits, 5
;	.line	802; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	INTCONbits.RBIE = 0;
	BCF	_INTCONbits, 3
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__Stall	code
_Stall:
;	.line	719; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void Stall(void)
	MOVFF	r0x00, POSTDEC1
;	.line	724; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(UEP0bits.EPSTALL == 1)
	CLRF	r0x00
	BTFSC	_UEP0bits, 0
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01221_DS_
;	.line	727; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
;	.line	728; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UEP0bits.EPSTALL = 0;
	BCF	_UEP0bits, 0
_01221_DS_:
;	.line	730; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIRbits.STALLIF = 0;
	BCF	_UIRbits, 5
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__StartOfFrame	code
_StartOfFrame:
;	.line	715; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIRbits.SOFIF = 0;
	BCF	_UIRbits, 6
	RETURN	

; ; Starting pCode block
S_tortucaro__UnSuspend	code
_UnSuspend:
;	.line	704; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UCONbits.SUSPND = 0;
	BCF	_UCONbits, 1
;	.line	705; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIEbits.ACTVIE = 0;
	BCF	_UIEbits, 2
;	.line	706; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIRbits.ACTVIF = 0;
	BCF	_UIRbits, 2
	RETURN	

; ; Starting pCode block
S_tortucaro__EnableUSBModule	code
_EnableUSBModule:
;	.line	670; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(UCONbits.USBEN == 0)
	BTFSC	_UCONbits, 3
	BRA	_01189_DS_
;	.line	675; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UCON = 0;
	CLRF	_UCON
;	.line	676; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIE = 0;
	CLRF	_UIE
;	.line	677; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UCONbits.USBEN = 1;
	BSF	_UCONbits, 3
;	.line	678; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceState = ATTACHED;
	MOVLW	0x01
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_01189_DS_:
	BANKSEL	_deviceState
;	.line	683; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if ((deviceState == ATTACHED) && !UCONbits.SE0)
	MOVF	_deviceState, W, B
	XORLW	0x01
	BNZ	_01193_DS_
	BTFSC	_UCONbits, 5
	BRA	_01193_DS_
;	.line	685; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIR = 0;
	CLRF	_UIR
;	.line	686; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIE = 0;
	CLRF	_UIE
;	.line	687; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIEbits.URSTIE = 1;
	BSF	_UIEbits, 0
;	.line	688; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UIEbits.IDLEIE = 1;
	BSF	_UIEbits, 4
;	.line	689; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceState = POWERED;
	MOVLW	0x02
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_01193_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessControlTransfer	code
_ProcessControlTransfer:
;	.line	564; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void ProcessControlTransfer(void)
	MOVFF	r0x00, POSTDEC1
;	.line	569; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (USTATbits.DIR == OUT)
	BTFSC	_USTATbits, 2
	BRA	_01139_DS_
;	.line	573; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 PID = (EP_OUT_BD(0).Stat.uc & 0x3C) >> 2;
	MOVLW	0x3c
	BANKSEL	_ep_bdt
	ANDWF	_ep_bdt, W, B
	MOVWF	r0x00
	RRNCF	r0x00, W
	RRNCF	WREG, W
	ANDLW	0x3f
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
;	.line	575; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (PID == 0x0D)
	XORLW	0x0d
	BNZ	_01123_DS_
;	.line	578; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	SetupStage();
	CALL	_SetupStage
	BRA	_01141_DS_
_01123_DS_:
	BANKSEL	_ctrlTransferStage
;	.line	580; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (ctrlTransferStage == DATA_OUT_STAGE)
	MOVF	_ctrlTransferStage, W, B
	XORLW	0x01
	BNZ	_01120_DS_
;	.line	584; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	OutDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_OutDataStage
	MOVF	POSTINC1, F
	BANKSEL	_ep_bdt
;	.line	612; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(EP_OUT_BD(0).Stat.DTS)
	BTFSS	_ep_bdt, 6, B
	BRA	_01117_DS_
;	.line	613; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
	BRA	_01141_DS_
_01117_DS_:
;	.line	615; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
	BANKSEL	_ep_bdt
	MOVWF	_ep_bdt, B
	BRA	_01141_DS_
_01120_DS_:
;	.line	620; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
	BRA	_01141_DS_
_01139_DS_:
;	.line	623; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if(USTATbits.DIR == IN)
	CLRF	r0x00
	BTFSC	_USTATbits, 2
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01141_DS_
;	.line	626; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if ((UADDR == 0) && (deviceState == ADDRESS))
	MOVF	_UADDR, W
	BNZ	_01128_DS_
	BANKSEL	_deviceState
	MOVF	_deviceState, W, B
	XORLW	0x04
	BNZ	_01128_DS_
;	.line	630; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UADDR = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _UADDR
;	.line	634; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(UADDR == 0)
	MOVF	_UADDR, W
	BNZ	_01128_DS_
;	.line	637; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceState = DEFAULT_STATUS;
	MOVLW	0x03
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_01128_DS_:
	BANKSEL	_ctrlTransferStage
;	.line	640; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (ctrlTransferStage == DATA_IN_STAGE)
	MOVF	_ctrlTransferStage, W, B
	XORLW	0x02
	BNZ	_01134_DS_
;	.line	643; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	InDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_InDataStage
	MOVF	POSTINC1, F
	BANKSEL	(_ep_bdt + 4)
;	.line	646; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(EP_IN_BD(0).Stat.DTS)
	BTFSS	(_ep_bdt + 4), 6, B
	BRA	_01131_DS_
;	.line	647; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_01141_DS_
_01131_DS_:
;	.line	649; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
	BANKSEL	(_ep_bdt + 4)
	MOVWF	(_ep_bdt + 4), B
	BRA	_01141_DS_
_01134_DS_:
;	.line	654; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
_01141_DS_:
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__WaitForSetupStage	code
_WaitForSetupStage:
	BANKSEL	_ctrlTransferStage
;	.line	551; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	ctrlTransferStage = SETUP_STAGE;
	CLRF	_ctrlTransferStage, B
;	.line	552; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	553; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	555; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
; removed redundant BANKSEL
;	.line	556; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Stat.uc = 0x00;           // Give control to CPU
	CLRF	(_ep_bdt + 4), B
	RETURN	

; ; Starting pCode block
S_tortucaro__SetupStage	code
_SetupStage:
;	.line	481; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Stat.uc &= ~BDS_UOWN;
	MOVLW	0x7f
	BANKSEL	(_ep_bdt + 4)
	ANDWF	(_ep_bdt + 4), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 4), B
;	.line	482; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Stat.uc &= ~BDS_UOWN;
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	_ep_bdt, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	_ep_bdt, B
	BANKSEL	_ctrlTransferStage
;	.line	485; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	ctrlTransferStage = SETUP_STAGE;
	CLRF	_ctrlTransferStage, B
	BANKSEL	_requestHandled
;	.line	486; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 0;                   // Default is that request hasn't been handled
	CLRF	_requestHandled, B
	BANKSEL	_HIDPostProcess
;	.line	487; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	HIDPostProcess = 0;                   // Assume standard request until know otherwise
	CLRF	_HIDPostProcess, B
	BANKSEL	_wCount
;	.line	488; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = 0;                           // No bytes transferred
	CLRF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	491; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	ProcessStandardRequest();
	CALL	_ProcessStandardRequest
;	.line	501; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if ((SetupPacket.bmRequestType & USB_RECIP_MASK) == USB_RECIP_INTERFACE)  
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01076_DS_
;	.line	502; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	ProcessCDCRequest();
	CALL	_ProcessCDCRequest
_01076_DS_:
	BANKSEL	_requestHandled
;	.line	505; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (!requestHandled) {
	MOVF	_requestHandled, W, B
	BNZ	_01083_DS_
;	.line	507; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	508; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
; #	MOVLW	0x84
; #	MOVWF	_ep_bdt, B
; #	MOVLW	0x84
;	.line	509; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_BSTALL;
	MOVLW	0x84
; removed redundant BANKSEL
;	.line	510; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_BSTALL;
	MOVWF	_ep_bdt, B
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_01084_DS_
_01083_DS_:
	BANKSEL	_SetupPacket
;	.line	512; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (SetupPacket.bmRequestType & 0x80) {
	BTFSS	_SetupPacket, 7, B
	BRA	_01080_DS_
	BANKSEL	(_wCount + 1)
;	.line	514; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(SetupPacket.wLength < wCount)
	MOVF	(_wCount + 1), W, B
	BANKSEL	(_SetupPacket + 7)
	SUBWF	(_SetupPacket + 7), W, B
	BNZ	_01106_DS_
	BANKSEL	_wCount
	MOVF	_wCount, W, B
	BANKSEL	(_SetupPacket + 6)
	SUBWF	(_SetupPacket + 6), W, B
_01106_DS_:
	BC	_01078_DS_
;	.line	515; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = SetupPacket.wLength;
	MOVFF	(_SetupPacket + 6), _wCount
	MOVFF	(_SetupPacket + 7), (_wCount + 1)
_01078_DS_:
;	.line	516; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	InDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_InDataStage
	MOVF	POSTINC1, F
;	.line	517; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	ctrlTransferStage = DATA_IN_STAGE;
	MOVLW	0x02
	BANKSEL	_ctrlTransferStage
	MOVWF	_ctrlTransferStage, B
;	.line	519; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	520; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	521; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN;
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
;	.line	524; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).ADDR = PTR16(&controlTransferBuffer);
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 6), B
	MOVLW	HIGH(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 7), B
;	.line	526; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_01084_DS_
_01080_DS_:
;	.line	530; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	ctrlTransferStage = DATA_OUT_STAGE;
	MOVLW	0x01
	BANKSEL	_ctrlTransferStage
	MOVWF	_ctrlTransferStage, B
	BANKSEL	(_ep_bdt + 5)
;	.line	533; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Cnt = 0;
	CLRF	(_ep_bdt + 5), B
;	.line	534; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
;	.line	537; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 1), B
;	.line	538; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&controlTransferBuffer);
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	540; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
_01084_DS_:
;	.line	544; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	UCONbits.PKTDIS = 0;
	BCF	_UCONbits, 4
	RETURN	

; ; Starting pCode block
S_tortucaro__OutDataStage	code
_OutDataStage:
;	.line	442; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void OutDataStage(unsigned char ep) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	445; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	bufferSize = ((0x03 & EP_OUT_BD(ep).Stat.uc) << 8) | EP_OUT_BD(ep).Cnt;
	RLNCF	r0x00, W
	ANDLW	0xfe
; #	MOVWF	r0x01
; #;;multiply lit val:0x04 by variable r0x01 and store in r0x00
; #	MOVF	r0x01, W
	MULLW	0x04
	MOVF	PRODH, W
	MOVWF	r0x02
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x01
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x02, W
	MOVWF	r0x03
	MOVFF	r0x01, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x01
	MOVLW	0x03
	ANDWF	r0x01, F
	MOVF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x04
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, F
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x02, F
	INFSNZ	r0x00, F
	INCF	r0x02, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x00
	CLRF	r0x01
	MOVF	r0x04, W
	IORWF	r0x00, F
	MOVF	r0x05, W
	IORWF	r0x01, F
;	.line	452; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = wCount + bufferSize;
	MOVF	r0x00, W
	BANKSEL	_wCount
	ADDWF	_wCount, F, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	ADDWFC	(_wCount + 1), F, B
;	.line	454; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	outPtr = (u8*)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	458; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	CLRF	r0x02
	CLRF	r0x03
_01055_DS_:
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_01068_DS_
	MOVF	r0x00, W
	SUBWF	r0x02, W
_01068_DS_:
	BC	_01057_DS_
;	.line	462; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	*inPtr++ = *outPtr++;
	MOVFF	_inPtr, r0x04
	MOVFF	(_inPtr + 1), r0x05
	MOVFF	(_inPtr + 2), r0x06
	MOVFF	_outPtr, r0x07
	MOVFF	(_outPtr + 1), r0x08
	MOVFF	(_outPtr + 2), r0x09
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrget1
	MOVWF	r0x07
	BANKSEL	_outPtr
	INCF	_outPtr, F, B
	BNC	_01069_DS_
; removed redundant BANKSEL
	INCFSZ	(_outPtr + 1), F, B
	BRA	_11838_DS_
; removed redundant BANKSEL
	INCF	(_outPtr + 2), F, B
_11838_DS_:
_01069_DS_:
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrput1
	BANKSEL	_inPtr
	INCF	_inPtr, F, B
	BNC	_01070_DS_
; removed redundant BANKSEL
	INCFSZ	(_inPtr + 1), F, B
	BRA	_21839_DS_
; removed redundant BANKSEL
	INCF	(_inPtr + 2), F, B
_21839_DS_:
_01070_DS_:
;	.line	458; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	INFSNZ	r0x02, F
	INCF	r0x03, F
	BRA	_01055_DS_
_01057_DS_:
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__InDataStage	code
_InDataStage:
;	.line	395; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void InDataStage(unsigned char ep) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	402; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(wCount < EP0_BUFFER_SIZE)
	MOVLW	0x00
	BANKSEL	(_wCount + 1)
	SUBWF	(_wCount + 1), W, B
	BNZ	_01040_DS_
	MOVLW	0x40
; removed redundant BANKSEL
	SUBWF	_wCount, W, B
_01040_DS_:
	BC	_01022_DS_
;	.line	403; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	bufferSize = wCount;
	MOVFF	_wCount, r0x01
	MOVFF	(_wCount + 1), r0x02
	BRA	_01023_DS_
_01022_DS_:
;	.line	405; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	bufferSize = EP0_BUFFER_SIZE;
	MOVLW	0x40
	MOVWF	r0x01
	CLRF	r0x02
_01023_DS_:
;	.line	413; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(ep).Stat.uc &= ~(BDS_BC8 | BDS_BC9);
	RLNCF	r0x00, W
	ANDLW	0xfe
	MOVWF	r0x03
	INCF	r0x03, W
; #	MOVWF	r0x00
; #;;multiply lit val:0x04 by variable r0x00 and store in r0x00
; #	MOVF	r0x00, W
	MULLW	0x04
	MOVF	PRODH, W
	MOVWF	r0x03
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x03, W
	MOVWF	r0x05
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x06
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x03, W
	MOVWF	r0x07
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	MOVLW	0xfc
	ANDWF	r0x06, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x06, INDF0
;	.line	414; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(ep).Stat.uc |= (u8)((bufferSize & 0x0300) >> 8);
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x03, W
	MOVWF	r0x05
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x06
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x03, W
	MOVWF	r0x07
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	MOVLW	0x03
	ANDWF	r0x02, W
; #	MOVWF	r0x08
; #	MOVF	r0x08, W
	IORWF	r0x06, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x06, INDF0
;	.line	415; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(ep).Cnt = (u8)(bufferSize & 0xFF);
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x03, W
	MOVWF	r0x05
	INFSNZ	r0x04, F
	INCF	r0x05, F
	MOVF	r0x01, W
	MOVWF	r0x06
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x06, INDF0
;	.line	416; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	EP_IN_BD(ep).ADDR = PTR16(&controlTransferBuffer);
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, F
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x03, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	MOVLW	LOW(_controlTransferBuffer)
	MOVWF	r0x04
	MOVLW	HIGH(_controlTransferBuffer)
	MOVWF	r0x05
	MOVFF	r0x00, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	r0x04, POSTINC0
	MOVFF	r0x05, INDF0
;	.line	421; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = wCount - bufferSize;
	MOVF	r0x01, W
	BANKSEL	_wCount
	SUBWF	_wCount, F, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	SUBWFB	(_wCount + 1), F, B
;	.line	424; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	inPtr = (u8 *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_inPtr + 1)
	MOVWF	(_inPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_inPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_inPtr + 2), B
;	.line	429; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	CLRF	r0x00
_01026_DS_:
	MOVFF	r0x00, r0x03
	CLRF	r0x04
	MOVF	r0x02, W
	SUBWF	r0x04, W
	BNZ	_01046_DS_
	MOVF	r0x01, W
	SUBWF	r0x03, W
_01046_DS_:
	BC	_01028_DS_
;	.line	433; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	*inPtr++ = *outPtr++;
	MOVFF	_inPtr, r0x03
	MOVFF	(_inPtr + 1), r0x04
	MOVFF	(_inPtr + 2), r0x05
	MOVFF	_outPtr, r0x06
	MOVFF	(_outPtr + 1), r0x07
	MOVFF	(_outPtr + 2), r0x08
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x06
	BANKSEL	_outPtr
	INCF	_outPtr, F, B
	BNC	_01047_DS_
; removed redundant BANKSEL
	INCFSZ	(_outPtr + 1), F, B
	BRA	_31840_DS_
; removed redundant BANKSEL
	INCF	(_outPtr + 2), F, B
_31840_DS_:
_01047_DS_:
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
	BANKSEL	_inPtr
	INCF	_inPtr, F, B
	BNC	_01048_DS_
; removed redundant BANKSEL
	INCFSZ	(_inPtr + 1), F, B
	BRA	_41841_DS_
; removed redundant BANKSEL
	INCF	(_inPtr + 2), F, B
_41841_DS_:
_01048_DS_:
;	.line	429; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	INCF	r0x00, F
	BRA	_01026_DS_
_01028_DS_:
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessStandardRequest	code
_ProcessStandardRequest:
;	.line	284; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	void ProcessStandardRequest(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	285; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 request = SetupPacket.bRequest;
	MOVFF	(_SetupPacket + 1), r0x00
	BANKSEL	_SetupPacket
;	.line	287; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if((SetupPacket.bmRequestType & 0x60) != 0x00)
	MOVF	_SetupPacket, W, B
; #	ANDLW	0x60
; #	BTFSC	STATUS, 2
; #	GOTO	_00935_DS_
; #	GOTO	_00967_DS_
; #	MOVF	r0x00, W
;	.line	290; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	return;
	ANDLW	0x60
;	.line	292; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (request == SET_ADDRESS) {
	BTFSS	STATUS, 2
	BRA	_00967_DS_
	MOVF	r0x00, W
	XORLW	0x05
	BNZ	_00965_DS_
;	.line	300; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	301; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceState = ADDRESS;
	MOVLW	0x04
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
;	.line	302; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceAddress = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _deviceAddress
	BRA	_00967_DS_
_00965_DS_:
;	.line	304; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (request == GET_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x06
	BNZ	_00962_DS_
;	.line	305; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	GetDescriptor();
	CALL	_GetDescriptor
	BRA	_00967_DS_
_00962_DS_:
;	.line	307; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (request == SET_CONFIGURATION) {
	MOVF	r0x00, W
	XORLW	0x09
	BNZ	_00959_DS_
;	.line	311; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	312; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	currentConfiguration = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _currentConfiguration
	BANKSEL	_currentConfiguration
;	.line	315; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (currentConfiguration == 0)
	MOVF	_currentConfiguration, W, B
	BNZ	_00937_DS_
;	.line	318; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceState = ADDRESS;
	MOVLW	0x04
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	BRA	_00967_DS_
_00937_DS_:
;	.line	321; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	deviceState = CONFIGURED;
	MOVLW	0x05
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
;	.line	331; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	CDCInitEndpoint();
	CALL	_CDCInitEndpoint
	BRA	_00967_DS_
_00959_DS_:
;	.line	341; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (request == GET_CONFIGURATION) {
	MOVF	r0x00, W
	XORLW	0x08
	BNZ	_00956_DS_
;	.line	345; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	346; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	outPtr = (u8*)&currentConfiguration;
	MOVLW	HIGH(_currentConfiguration)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_currentConfiguration)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	347; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = 1;
	MOVLW	0x01
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00967_DS_
_00956_DS_:
;	.line	349; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (request == GET_STATUS) {
	MOVF	r0x00, W
	BNZ	_00953_DS_
;	.line	350; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	GetStatus();
	CALL	_GetStatus
	BRA	_00967_DS_
_00953_DS_:
;	.line	352; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if ((request == CLEAR_FEATURE) ||
	MOVF	r0x00, W
	XORLW	0x01
	BZ	_00948_DS_
;	.line	353; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	(request == SET_FEATURE)) {
	MOVF	r0x00, W
	XORLW	0x03
	BNZ	_00949_DS_
_00948_DS_:
;	.line	354; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	SetFeature();
	CALL	_SetFeature
	BRA	_00967_DS_
_00949_DS_:
;	.line	356; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (request == GET_INTERFACE) {
	MOVF	r0x00, W
	XORLW	0x0a
	BNZ	_00946_DS_
;	.line	362; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	_controlTransferBuffer
;	.line	363; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	controlTransferBuffer[0] = 0;
	CLRF	_controlTransferBuffer, B
;	.line	364; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	outPtr = (u8 *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	365; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = 1;
	MOVLW	0x01
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00967_DS_
_00946_DS_:
;	.line	367; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (request == SET_INTERFACE) {
	MOVF	r0x00, W
	XORLW	0x0b
	BNZ	_00967_DS_
;	.line	372; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_00967_DS_:
;	.line	379; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (request == SYNCH_FRAME) {
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__SetFeature	code
_SetFeature:
;	.line	240; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	static void SetFeature(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	241; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 recipient = SetupPacket.bmRequestType & 0x1F;
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
	MOVWF	r0x00
;	.line	242; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 feature = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), r0x01
;	.line	247; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (recipient == 0x00) {
	MOVF	r0x00, W
	BNZ	_00886_DS_
;	.line	249; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (feature == DEVICE_REMOTE_WAKEUP) {
	MOVF	r0x01, W
	XORLW	0x01
	BZ	_00919_DS_
	BRA	_00888_DS_
_00919_DS_:
;	.line	250; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	(_SetupPacket + 1)
;	.line	251; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (SetupPacket.bRequest == SET_FEATURE)
	MOVF	(_SetupPacket + 1), W, B
	XORLW	0x03
	BNZ	_00868_DS_
;	.line	252; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	remoteWakeup = 1;
	MOVLW	0x01
	BANKSEL	_remoteWakeup
	MOVWF	_remoteWakeup, B
	BRA	_00888_DS_
_00868_DS_:
	BANKSEL	_remoteWakeup
;	.line	254; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	remoteWakeup = 0;
	CLRF	_remoteWakeup, B
	BRA	_00888_DS_
_00886_DS_:
;	.line	258; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (recipient == 0x02) {
	MOVF	r0x00, W
	XORLW	0x02
	BZ	_00923_DS_
	BRA	_00888_DS_
_00923_DS_:
;	.line	260; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 endpointNum = SetupPacket.wIndex0 & 0x0F;
	MOVLW	0x0f
	BANKSEL	(_SetupPacket + 4)
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x00
;	.line	261; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 endpointDir = SetupPacket.wIndex0 & 0x80;
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x02
;	.line	262; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if ((feature == ENDPOINT_HALT) && (endpointNum != 0)) {
	MOVF	r0x01, W
	BTFSS	STATUS, 2
	BRA	_00888_DS_
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_00888_DS_
;	.line	264; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	267; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	inPtr = (u8 *)&EP_OUT_BD(0) + (endpointNum * 8);
	MOVLW	HIGH(_ep_bdt)
	MOVWF	r0x03
	MOVLW	LOW(_ep_bdt)
	MOVWF	r0x01
	MOVLW	0x80
	MOVWF	r0x04
; ;multiply lit val:0x08 by variable r0x00 and store in r0x00
	MOVF	r0x00, W
	MULLW	0x08
	MOVF	PRODH, W
	MOVWF	r0x05
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	ADDWF	r0x01, W
	BANKSEL	_inPtr
	MOVWF	_inPtr, B
	MOVF	r0x05, W
	ADDWFC	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 1), B
	CLRF	WREG
	BTFSC	r0x05, 7
	SETF	WREG
	ADDWFC	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 2), B
;	.line	268; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (endpointDir)
	MOVF	r0x02, W
	BZ	_00873_DS_
;	.line	269; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	inPtr += 4;
	MOVLW	0x04
; removed redundant BANKSEL
	ADDWF	_inPtr, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 2), F, B
_00873_DS_:
	BANKSEL	(_SetupPacket + 1)
;	.line	271; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(SetupPacket.bRequest == SET_FEATURE)
	MOVF	(_SetupPacket + 1), W, B
	XORLW	0x03
	BNZ	_00878_DS_
;	.line	272; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	*inPtr = 0x84;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x03
	MOVLW	0x84
	MOVWF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x03, W
	CALL	__gptrput1
	BRA	_00888_DS_
_00878_DS_:
;	.line	274; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(endpointDir == 1)
	MOVF	r0x02, W
	XORLW	0x01
	BNZ	_00875_DS_
;	.line	275; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	*inPtr = 0x00;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	CLRF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
	BRA	_00888_DS_
_00875_DS_:
;	.line	277; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	*inPtr = 0x88;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	MOVLW	0x88
	MOVWF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
_00888_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__GetStatus	code
_GetStatus:
;	.line	195; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	static void GetStatus(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	197; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 recipient = SetupPacket.bmRequestType & 0x1F;
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
	MOVWF	r0x00
	BANKSEL	_controlTransferBuffer
;	.line	201; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	controlTransferBuffer[0] = 0;
	CLRF	_controlTransferBuffer, B
; removed redundant BANKSEL
;	.line	202; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	controlTransferBuffer[1] = 0;
	CLRF	(_controlTransferBuffer + 1), B
;	.line	205; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (recipient == 0x00) {
	MOVF	r0x00, W
	BNZ	_00823_DS_
;	.line	207; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	_selfPowered
;	.line	209; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (selfPowered)
	MOVF	_selfPowered, W, B
	BZ	_00810_DS_
;	.line	210; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	controlTransferBuffer[0] |= 0x01;
	MOVLW	0x01
	BANKSEL	_controlTransferBuffer
	IORWF	_controlTransferBuffer, W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	_controlTransferBuffer, B
_00810_DS_:
	BANKSEL	_remoteWakeup
;	.line	211; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (remoteWakeup)
	MOVF	_remoteWakeup, W, B
	BTFSC	STATUS, 2
	BRA	_00824_DS_
;	.line	212; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	controlTransferBuffer[0] |= 0x02;
	MOVLW	0x02
	BANKSEL	_controlTransferBuffer
	IORWF	_controlTransferBuffer, W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	_controlTransferBuffer, B
	BRA	_00824_DS_
_00823_DS_:
;	.line	214; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (recipient == 0x01) {
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00820_DS_
;	.line	216; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BRA	_00824_DS_
_00820_DS_:
;	.line	218; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (recipient == 0x02) {
	MOVF	r0x00, W
	XORLW	0x02
	BZ	_00859_DS_
	BRA	_00824_DS_
_00859_DS_:
;	.line	220; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 endpointNum = SetupPacket.wIndex0 & 0x0F;
	MOVLW	0x0f
	BANKSEL	(_SetupPacket + 4)
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x00
;	.line	221; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 endpointDir = SetupPacket.wIndex0 & 0x80;
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x01
;	.line	222; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	225; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	inPtr = (u8 *)&EP_OUT_BD(0) + (endpointNum * 8);
	MOVLW	HIGH(_ep_bdt)
	MOVWF	r0x03
	MOVLW	LOW(_ep_bdt)
	MOVWF	r0x02
	MOVLW	0x80
	MOVWF	r0x04
; ;multiply lit val:0x08 by variable r0x00 and store in r0x00
	MOVF	r0x00, W
	MULLW	0x08
	MOVF	PRODH, W
	MOVWF	r0x05
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	ADDWF	r0x02, W
	BANKSEL	_inPtr
	MOVWF	_inPtr, B
	MOVF	r0x05, W
	ADDWFC	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 1), B
	CLRF	WREG
	BTFSC	r0x05, 7
	SETF	WREG
	ADDWFC	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 2), B
;	.line	226; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (endpointDir)
	MOVF	r0x01, W
	BZ	_00814_DS_
;	.line	227; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	inPtr += 4;
	MOVLW	0x04
; removed redundant BANKSEL
	ADDWF	_inPtr, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 2), F, B
_00814_DS_:
;	.line	228; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(*inPtr & BDS_BSTALL)
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
	BTFSS	r0x00, 2
	BRA	_00824_DS_
;	.line	229; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	controlTransferBuffer[0] = 0x01;
	MOVLW	0x01
	BANKSEL	_controlTransferBuffer
	MOVWF	_controlTransferBuffer, B
_00824_DS_:
	BANKSEL	_requestHandled
;	.line	232; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (requestHandled) {
	MOVF	_requestHandled, W, B
	BZ	_00827_DS_
;	.line	233; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	outPtr = (u8 *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	234; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = 2;
	MOVLW	0x02
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
_00827_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__GetDescriptor	code
_GetDescriptor:
;	.line	110; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	static void GetDescriptor(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	BANKSEL	_SetupPacket
;	.line	116; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if(SetupPacket.bmRequestType == 0x80)
	MOVF	_SetupPacket, W, B
	XORLW	0x80
	BZ	_00796_DS_
	BRA	_00778_DS_
_00796_DS_:
;	.line	118; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 descriptorType  = SetupPacket.wValue1;
	MOVFF	(_SetupPacket + 3), r0x00
;	.line	119; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	u8 descriptorIndex = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), r0x01
;	.line	121; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	if (descriptorType == DEVICE_DESCRIPTOR)
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00774_DS_
;	.line	126; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	127; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	outPtr = (u8 *)&libdevice_descriptor;
	MOVLW	UPPER(_libdevice_descriptor)
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVLW	HIGH(_libdevice_descriptor)
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_libdevice_descriptor)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	128; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = sizeof(USB_Device_Descriptor);
	MOVLW	0x12
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00778_DS_
_00774_DS_:
;	.line	131; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (descriptorType == CONFIGURATION_DESCRIPTOR)
	MOVF	r0x00, W
	XORLW	0x02
	BNZ	_00771_DS_
;	.line	137; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	149; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	outPtr = (u8 *)&libconfiguration_descriptor;
	MOVLW	UPPER(_libconfiguration_descriptor)
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVLW	HIGH(_libconfiguration_descriptor)
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_libconfiguration_descriptor)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	151; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = libconfiguration_descriptor.Header.wTotalLength;
	MOVLW	LOW(_libconfiguration_descriptor + 2)
	MOVWF	TBLPTRL
	MOVLW	HIGH(_libconfiguration_descriptor + 2)
	MOVWF	TBLPTRH
	MOVLW	UPPER(_libconfiguration_descriptor + 2)
	MOVWF	TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, _wCount
	TBLRD*+	
	MOVFF	TABLAT, (_wCount + 1)
	BRA	_00778_DS_
_00771_DS_:
;	.line	159; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (descriptorType == STRING_DESCRIPTOR)
	MOVF	r0x00, W
	XORLW	0x03
	BNZ	_00768_DS_
;	.line	165; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
; ;multiply lit val:0x03 by variable r0x01 and store in r0x01
;	.line	167; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	outPtr = libstring_descriptor[descriptorIndex];
	MOVF	r0x01, W
	MULLW	0x03
	MOVF	PRODH, W
	MOVWF	r0x02
	MOVFF	PRODL, r0x01
	CLRF	r0x03
	MOVLW	LOW(_libstring_descriptor)
	ADDWF	r0x01, F
	MOVLW	HIGH(_libstring_descriptor)
	ADDWFC	r0x02, F
	MOVLW	UPPER(_libstring_descriptor)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, _outPtr
	TBLRD*+	
	MOVFF	TABLAT, (_outPtr + 1)
	TBLRD*+	
	MOVFF	TABLAT, (_outPtr + 2)
;	.line	168; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	wCount = *outPtr;
	MOVFF	_outPtr, r0x01
	MOVFF	(_outPtr + 1), r0x02
	MOVFF	(_outPtr + 2), r0x03
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, PRODL
	MOVF	r0x03, W
	CALL	__gptrget1
	MOVWF	r0x01
	MOVFF	r0x01, _wCount
	BANKSEL	(_wCount + 1)
	CLRF	(_wCount + 1), B
	BRA	_00778_DS_
_00768_DS_:
;	.line	171; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	else if (descriptorType == DEVICE_QUALIFIER_DESCRIPTOR)
	MOVF	r0x00, W
	XORLW	0x06
	BNZ	_00778_DS_
;	.line	177; /home/vbasel/.icaro/v4/firmware/libraries/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_00778_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__IO_digital	code
_IO_digital:
;	.line	123; /home/vbasel/.icaro/v4/firmware/core/io.c	ADCON1 = 0x0F;				// AN0 to AN12 Digital I/O
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	124; /home/vbasel/.icaro/v4/firmware/core/io.c	CMCON = 0x07;               // Comparators as Digital I/O
	MOVLW	0x07
	MOVWF	_CMCON
	RETURN	

; ; Starting pCode block
S_tortucaro__IO_init	code
_IO_init:
;	.line	53; /home/vbasel/.icaro/v4/firmware/core/io.c	LATA  = 0x00;
	CLRF	_LATA
;	.line	54; /home/vbasel/.icaro/v4/firmware/core/io.c	LATB  = 0x00;
	CLRF	_LATB
;	.line	72; /home/vbasel/.icaro/v4/firmware/core/io.c	LATC  = 0x00;
	CLRF	_LATC
;	.line	79; /home/vbasel/.icaro/v4/firmware/core/io.c	LATD  = 0x00; 
	CLRF	_LATD
;	.line	80; /home/vbasel/.icaro/v4/firmware/core/io.c	LATE  = 0x00; 
	CLRF	_LATE
;	.line	83; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISA = 0x00;
	CLRF	_TRISA
;	.line	85; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISB = 0x00;
	CLRF	_TRISB
;	.line	91; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISCbits.TRISC0 = 0x00;
	BCF	_TRISCbits, 0
;	.line	92; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISCbits.TRISC1 = 0x00;
	BCF	_TRISCbits, 1
;	.line	93; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISCbits.TRISC2 = 0x00;
	BCF	_TRISCbits, 2
;	.line	94; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISCbits.TRISC6 = 0x00;
	BCF	_TRISCbits, 6
;	.line	95; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISCbits.TRISC7 = 0x00;
	BCF	_TRISCbits, 7
;	.line	101; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISD = 0x00; 
	CLRF	_TRISD
;	.line	102; /home/vbasel/.icaro/v4/firmware/core/io.c	TRISE = 0x00; 
	CLRF	_TRISE
;	.line	106; /home/vbasel/.icaro/v4/firmware/core/io.c	PORTA  = 0x00;
	CLRF	_PORTA
;	.line	107; /home/vbasel/.icaro/v4/firmware/core/io.c	PORTB  = 0x00;
	CLRF	_PORTB
;	.line	108; /home/vbasel/.icaro/v4/firmware/core/io.c	PORTC  = 0x00;
	CLRF	_PORTC
;	.line	112; /home/vbasel/.icaro/v4/firmware/core/io.c	PORTD  = 0x00; 
	CLRF	_PORTD
;	.line	113; /home/vbasel/.icaro/v4/firmware/core/io.c	PORTE  = 0x00; 
	CLRF	_PORTE
	RETURN	

; ; Starting pCode block
S_tortucaro__analogwrite	code
_analogwrite:
;	.line	241; /home/vbasel/.icaro/v4/firmware/core/analog.c	void analogwrite(u8 pin, u16 duty)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	243; /home/vbasel/.icaro/v4/firmware/core/analog.c	switch (pin)
	MOVF	r0x00, W
	XORLW	0x0b
	BZ	_00737_DS_
	MOVF	r0x00, W
	XORLW	0x0c
	BNZ	_00738_DS_
;	.line	306; /home/vbasel/.icaro/v4/firmware/core/analog.c	CCP1CON  = 0b00001100;
	MOVLW	0x0c
	MOVWF	_CCP1CON
;	.line	307; /home/vbasel/.icaro/v4/firmware/core/analog.c	CCPR1L   = ( duty >> 2 ) & 0xFF;    // 8 LSB
	BCF	STATUS, 0
	RRCF	r0x02, W
	MOVWF	r0x03
	RRCF	r0x01, W
	MOVWF	r0x00
	BCF	STATUS, 0
	RRCF	r0x03, F
	RRCF	r0x00, F
	MOVF	r0x00, W
	MOVWF	_CCPR1L
;	.line	308; /home/vbasel/.icaro/v4/firmware/core/analog.c	CCP1CON |= ((u8)duty & 0x03) << 4;  // 2 MSB in <5:4>
	MOVF	r0x01, W
	MOVWF	r0x00
	MOVLW	0x03
	ANDWF	r0x00, F
	SWAPF	r0x00, W
	ANDLW	0xf0
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
	IORWF	_CCP1CON, F
;	.line	309; /home/vbasel/.icaro/v4/firmware/core/analog.c	break;
	BRA	_00738_DS_
_00737_DS_:
;	.line	312; /home/vbasel/.icaro/v4/firmware/core/analog.c	CCP2CON  = 0b00001100;
	MOVLW	0x0c
	MOVWF	_CCP2CON
;	.line	313; /home/vbasel/.icaro/v4/firmware/core/analog.c	CCPR2L   = ( duty >> 2 ) & 0xFF;    // 8 LSB
	BCF	STATUS, 0
	RRCF	r0x02, W
	MOVWF	r0x03
	RRCF	r0x01, W
	MOVWF	r0x00
	BCF	STATUS, 0
	RRCF	r0x03, F
	RRCF	r0x00, F
	MOVF	r0x00, W
	MOVWF	_CCPR2L
;	.line	314; /home/vbasel/.icaro/v4/firmware/core/analog.c	CCP2CON |= ((u8)duty & 0x03) << 4;  // 2 MSB in <5:4>
	MOVLW	0x03
	ANDWF	r0x01, F
	SWAPF	r0x01, W
	ANDLW	0xf0
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	IORWF	_CCP2CON, F
_00738_DS_:
;	.line	321; /home/vbasel/.icaro/v4/firmware/core/analog.c	PIR1bits.TMR2IF = 0;
	BCF	_PIR1bits, 1
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__analogwrite_init	code
_analogwrite_init:
;	.line	237; /home/vbasel/.icaro/v4/firmware/core/analog.c	PR2 = 0xFF;                         // set PWM period to the max. to get 10-bit res.
	SETF	_PR2
;	.line	238; /home/vbasel/.icaro/v4/firmware/core/analog.c	T2CON = 0b00000100;                 // Timer2 on, prescaler is 1
	MOVLW	0x04
	MOVWF	_T2CON
	RETURN	

; ; Starting pCode block
S_tortucaro__analogread	code
_analogread:
;	.line	134; /home/vbasel/.icaro/v4/firmware/core/analog.c	u16 analogread(u8 channel)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	173; /home/vbasel/.icaro/v4/firmware/core/analog.c	if(channel>=13 && channel<=20)
	MOVLW	0x0d
	SUBWF	r0x00, W
	BNC	_00690_DS_
	MOVLW	0x15
	SUBWF	r0x00, W
	BC	_00690_DS_
;	.line	174; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0=(channel-13) << 2;   // A0 = 13, ..., A4 = 17
	MOVLW	0xf3
	ADDWF	r0x00, W
	MOVWF	r0x01
	RLNCF	r0x01, W
	RLNCF	WREG, W
	ANDLW	0xfc
	MOVWF	_ADCON0
	BRA	_00691_DS_
_00690_DS_:
;	.line	175; /home/vbasel/.icaro/v4/firmware/core/analog.c	else if(channel<=5)
	MOVLW	0x06
	SUBWF	r0x00, W
	BC	_00691_DS_
;	.line	176; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0 = channel << 2;      // A0 = 0, ..., A4 = 4
	RLNCF	r0x00, W
	RLNCF	WREG, W
	ANDLW	0xfc
	MOVWF	_ADCON0
_00691_DS_:
;	.line	180; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0bits.ADON=1;                  // A/D Converter module is enabled
	BSF	_ADCON0bits, 0
;	.line	182; /home/vbasel/.icaro/v4/firmware/core/analog.c	for (result=1;result<10;result++)   // Acquisition time
	MOVLW	0x09
	MOVWF	r0x00
	CLRF	r0x01
_00699_DS_:
	NOP
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
;	.line	182; /home/vbasel/.icaro/v4/firmware/core/analog.c	for (result=1;result<10;result++)   // Acquisition time
	MOVF	r0x00, W
	IORWF	r0x01, W
	BNZ	_00699_DS_
;	.line	185; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0bits.GO=1;                    // Start A/D Conversion
	BSF	_ADCON0bits, 1
_00694_DS_:
;	.line	187; /home/vbasel/.icaro/v4/firmware/core/analog.c	while (ADCON0bits.GO);              // Wait for conversion stop
	BTFSC	_ADCON0bits, 1
	BRA	_00694_DS_
;	.line	189; /home/vbasel/.icaro/v4/firmware/core/analog.c	result = ADRESH << 8;
	MOVFF	_ADRESH, r0x00
	CLRF	r0x01
	MOVF	r0x00, W
	MOVWF	r0x03
	CLRF	r0x02
;	.line	190; /home/vbasel/.icaro/v4/firmware/core/analog.c	result += ADRESL;
	MOVFF	_ADRESL, r0x00
	CLRF	r0x01
	MOVF	r0x00, W
	ADDWF	r0x02, F
	MOVF	r0x01, W
	ADDWFC	r0x03, F
;	.line	192; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0bits.ADON = 0;                // A/D Converter module is disabled
	BCF	_ADCON0bits, 0
;	.line	194; /home/vbasel/.icaro/v4/firmware/core/analog.c	return(result);
	MOVFF	r0x03, PRODL
	MOVF	r0x02, W
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__analogreference	code
_analogreference:
;	.line	103; /home/vbasel/.icaro/v4/firmware/core/analog.c	void analogreference(u8 Type)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; #	MOVF	r0x00, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00671_DS_
; #	GOTO	_00673_DS_
; #	MOVF	r0x00, W
;	.line	108; /home/vbasel/.icaro/v4/firmware/core/analog.c	if(Type == DEFAULT)			//the default analog reference of 5 volts (on 5V Arduino boards) or 3.3 volts (on 3.3V Arduino boards)
	MOVF	r0x00, W
;	.line	109; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON1|=0x00;			//Vref+ = VDD
	BZ	_00673_DS_
;	.line	110; /home/vbasel/.icaro/v4/firmware/core/analog.c	else if(Type == EXTERNAL)	//the voltage applied to the AREF pin (0 to 5V only) is used as the reference.
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00673_DS_
;	.line	111; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON1|=0x10;			//Vref+ = External source
	BSF	_ADCON1, 4
_00673_DS_:
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__analog_init	code
_analog_init:
;	.line	36; /home/vbasel/.icaro/v4/firmware/core/analog.c	TRISA=TRISA | 0x2F;
	MOVLW	0x2f
	IORWF	_TRISA, F
;	.line	37; /home/vbasel/.icaro/v4/firmware/core/analog.c	TRISE=TRISE | 0x07;	
	MOVLW	0x07
	IORWF	_TRISE, F
;	.line	38; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON1=0x07;
	MOVWF	_ADCON1
;	.line	39; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON2=0xBD;
	MOVLW	0xbd
	MOVWF	_ADCON2
	RETURN	

; ; Starting pCode block
S_tortucaro__servos_interrupt	code
_servos_interrupt:
;	.line	543; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (PIR1bits.TMR1IF)
	BTFSS	_PIR1bits, 0
	BRA	_00658_DS_
	BANKSEL	_phase
;	.line	549; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (phase)
	MOVF	_phase, W, B
	BZ	_00654_DS_
;	.line	551; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	ServosPulseUp();
	CALL	_ServosPulseUp
;	.line	553; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1H= 0xe9;//0xe9;
	MOVLW	0xe9
	MOVWF	_TMR1H
;	.line	554; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1L= 0x59;
	MOVLW	0x59
	MOVWF	_TMR1L
;	.line	556; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	T1CON=1;
	MOVLW	0x01
	MOVWF	_T1CON
	BANKSEL	_phase
;	.line	557; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	phase = 0;
	CLRF	_phase, B
	BRA	_00655_DS_
_00654_DS_:
;	.line	565; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	ServosPulseDown();
	CALL	_ServosPulseDown
;	.line	569; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1H= 0x32;
	MOVLW	0x32
	MOVWF	_TMR1H
;	.line	570; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1L= 0xeb;
	MOVLW	0xeb
	MOVWF	_TMR1L
; #	MOVF	_needreordering, W, B
; #	BTFSC	STATUS, 2
; #	GOTO	_00652_DS_
; #	CALL	_SortServoTimings
; #	MOVLW	0x21
	BANKSEL	_needreordering
;	.line	572; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (needreordering)
	MOVF	_needreordering, W, B
;	.line	573; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	SortServoTimings(); // This takes more than 1 ms, but it's call only if needed.
	BTFSS	STATUS, 2
;	.line	574; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	T1CON= ( 1 | 2 << 4 ) ; // activate timer1 and prescaler = 1:4
	CALL	_SortServoTimings
	MOVLW	0x21
	MOVWF	_T1CON
;	.line	575; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	phase = 1;  			//This indicates that after next interrupt it will start the servos cycle.
	MOVLW	0x01
	BANKSEL	_phase
	MOVWF	_phase, B
_00655_DS_:
;	.line	579; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PIR1bits.TMR1IF=0;
	BCF	_PIR1bits, 0
_00658_DS_:
;	.line	581; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return;
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoMaximumPulse	code
_ServoMaximumPulse:
;	.line	526; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoMaximumPulse(unsigned char servo,int max_microseconds)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	529; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00628_DS_
; #	GOTO	_00633_DS_
; #	MOVF	r0x02, W
;	.line	530; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return;
	SUBWF	r0x00, W
;	.line	533; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (max_microseconds < MIDUS) max_microseconds = MIDUS;
	BC	_00633_DS_
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x7b
	BNZ	_00645_DS_
	MOVLW	0xdc
	SUBWF	r0x01, W
_00645_DS_:
	BC	_00630_DS_
	MOVLW	0xdc
	MOVWF	r0x01
	MOVLW	0x05
	MOVWF	r0x02
_00630_DS_:
;	.line	534; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (max_microseconds > MAXUS) max_microseconds = MAXUS;
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x77
	BNZ	_00646_DS_
	MOVLW	0xc5
	SUBWF	r0x01, W
_00646_DS_:
	BNC	_00632_DS_
	MOVLW	0xc4
	MOVWF	r0x01
	MOVLW	0x09
	MOVWF	r0x02
_00632_DS_:
;	.line	537; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	maxminpos[1][servo]=(max_microseconds - MINUS)>>3;   // 125 < final_max < 250
	CLRF	r0x03
	MOVLW	LOW(_maxminpos + 30)
	ADDWF	r0x00, F
	MOVLW	HIGH(_maxminpos + 30)
	ADDWFC	r0x03, F
	MOVLW	0x0c
	ADDWF	r0x01, F
	MOVLW	0xfe
	ADDWFC	r0x02, F
	RLCF	r0x02, W
	RRCF	r0x02, F
	RRCF	r0x01, F
	RLCF	r0x02, W
	RRCF	r0x02, F
	RRCF	r0x01, F
	RLCF	r0x02, W
	RRCF	r0x02, F
	RRCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	r0x01, INDF0
_00633_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoMinimumPulse	code
_ServoMinimumPulse:
;	.line	512; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoMinimumPulse(unsigned char servo,int min_microseconds)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	515; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00604_DS_
; #	GOTO	_00609_DS_
; #	MOVF	r0x02, W
;	.line	516; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return;
	SUBWF	r0x00, W
;	.line	519; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (min_microseconds < MINUS) min_microseconds = MINUS;
	BC	_00609_DS_
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x7f
	BNZ	_00621_DS_
	MOVLW	0xf4
	SUBWF	r0x01, W
_00621_DS_:
	BC	_00606_DS_
	MOVLW	0xf4
	MOVWF	r0x01
	MOVLW	0x01
	MOVWF	r0x02
_00606_DS_:
;	.line	520; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (min_microseconds > MIDUS) min_microseconds = MIDUS;
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x7b
	BNZ	_00622_DS_
	MOVLW	0xdd
	SUBWF	r0x01, W
_00622_DS_:
	BNC	_00608_DS_
	MOVLW	0xdc
	MOVWF	r0x01
	MOVLW	0x05
	MOVWF	r0x02
_00608_DS_:
;	.line	523; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	maxminpos[0][servo]=(min_microseconds - MINUS)>>3;   // 0 < final_min < 125
	CLRF	r0x03
	MOVLW	LOW(_maxminpos)
	ADDWF	r0x00, F
	MOVLW	HIGH(_maxminpos)
	ADDWFC	r0x03, F
	MOVLW	0x0c
	ADDWF	r0x01, F
	MOVLW	0xfe
	ADDWFC	r0x02, F
	RLCF	r0x02, W
	RRCF	r0x02, F
	RRCF	r0x01, F
	RLCF	r0x02, W
	RRCF	r0x02, F
	RRCF	r0x01, F
	RLCF	r0x02, W
	RRCF	r0x02, F
	RRCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	r0x01, INDF0
_00609_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoRead	code
_ServoRead:
;	.line	504; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	unsigned char ServoRead(unsigned char servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	506; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)        // test if numservo is valid
	MOVLW	0x1e
	SUBWF	r0x00, W
	BNC	_00592_DS_
;	.line	507; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return 0;
	CLRF	WREG
	BRA	_00593_DS_
_00592_DS_:
;	.line	509; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return servovalues[servo];
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
_00593_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoWrite	code
_ServoWrite:
;	.line	480; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoWrite(unsigned char servo,unsigned char degrees)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	487; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00574_DS_
; #	GOTO	_00577_DS_
; #	MOVLW	0xb5
;	.line	488; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return;
	SUBWF	r0x00, W
;	.line	491; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(degrees>180) degrees=180;
	BTFSC	STATUS, 0
	BRA	_00577_DS_
	MOVLW	0xb5
	SUBWF	r0x01, W
	BNC	_00576_DS_
	MOVLW	0xb4
	MOVWF	r0x01
_00576_DS_:
;	.line	494; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	range = (maxminpos[1][servo]  - maxminpos[0][servo]);
	MOVLW	LOW(_maxminpos + 30)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_maxminpos + 30)
	ADDWFC	r0x03, F
	MOVLW	LOW(_maxminpos)
	ADDWF	r0x00, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_maxminpos)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x04
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x04, W
	SUBWF	r0x02, F
; ;multiply variable :r0x02 by variable r0x01 and store in r0x01
;	.line	495; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	value = (degrees*range) / 180 + maxminpos[0][servo];
	MOVF	r0x01, W
	MULWF	r0x02
	MOVFF	PRODH, r0x03
	MOVFF	PRODL, r0x01
	CLRF	POSTDEC1
	MOVLW	0xb4
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__divsint
	MOVWF	r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVF	r0x04, W
	ADDWF	r0x01, F
;	.line	499; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	servovalues[servo]= value;
	CLRF	r0x02
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x01, INDF0
;	.line	501; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00577_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoDetach	code
_ServoDetach:
;	.line	455; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoDetach(unsigned char pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	457; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(pin>=TotalPICpins) return;
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00551_DS_
; #	GOTO	_00558_DS_
; #	MOVLW	LOW(_port)
;	.line	459; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	switch (port[pin])
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00558_DS_
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_port)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_port)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVLW	0x05
	SUBWF	r0x01, W
	BTFSC	STATUS, 0
	BRA	_00558_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x01, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00568_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00568_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00568_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00568_DS_:
	GOTO	_00552_DS_
	GOTO	_00553_DS_
	GOTO	_00554_DS_
	GOTO	_00555_DS_
	GOTO	_00556_DS_
_00552_DS_:
;	.line	461; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pA: activatedservos[pA] = activatedservos[pA] ^ mask[pin];
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	_activatedservos, B
;	.line	462; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00558_DS_
_00553_DS_:
;	.line	463; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pB: activatedservos[pB] = activatedservos[pB] ^ mask[pin];
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 1), B
;	.line	464; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00558_DS_
_00554_DS_:
;	.line	466; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pC: activatedservos[pC] = activatedservos[pC] ^ mask[pin];
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 2), B
;	.line	467; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00558_DS_
_00555_DS_:
;	.line	470; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pD: activatedservos[pD] = activatedservos[pD] ^ mask[pin];
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	(_activatedservos + 3)
	MOVF	(_activatedservos + 3), W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 3), B
;	.line	471; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00558_DS_
_00556_DS_:
;	.line	474; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pE: activatedservos[pE] = activatedservos[pE] ^ mask[pin];
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_activatedservos + 4)
	MOVF	(_activatedservos + 4), W, B
	XORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 4), B
_00558_DS_:
;	.line	477; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoAttach	code
_ServoAttach:
;	.line	420; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoAttach(unsigned char pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	422; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(pin>=TotalPICpins) return;
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00528_DS_
; #	GOTO	_00535_DS_
; #	MOVLW	LOW(_port)
;	.line	424; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	switch (port[pin])
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00535_DS_
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_port)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_port)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVLW	0x05
	SUBWF	r0x01, W
	BTFSC	STATUS, 0
	BRA	_00535_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x01, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00545_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00545_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00545_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00545_DS_:
	GOTO	_00529_DS_
	GOTO	_00530_DS_
	GOTO	_00531_DS_
	GOTO	_00532_DS_
	GOTO	_00533_DS_
_00529_DS_:
;	.line	427; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pA] = activatedservos[pA] | mask[pin];  // list pin as servo driver.
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	IORWF	r0x04, F
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	_activatedservos, B
;	.line	428; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISA = TRISA & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISA, F
;	.line	429; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00535_DS_
_00530_DS_:
;	.line	431; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pB] = activatedservos[pB] | mask[pin];  // list pin as servo driver.
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	IORWF	r0x04, F
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 1), B
;	.line	432; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISB = TRISB & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISB, F
;	.line	433; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00535_DS_
_00531_DS_:
;	.line	436; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pC] = activatedservos[pC] | mask[pin];  // list pin as servo driver.
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	IORWF	r0x04, F
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 2), B
;	.line	437; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISC = TRISC & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISC, F
;	.line	438; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00535_DS_
_00532_DS_:
;	.line	442; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pD] = activatedservos[pD] | mask[pin];  // list pin as servo driver.
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	(_activatedservos + 3)
	MOVF	(_activatedservos + 3), W, B
	IORWF	r0x04, F
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 3), B
;	.line	443; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISD = TRISD & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISD, F
;	.line	444; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00535_DS_
_00533_DS_:
;	.line	448; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pE] = activatedservos[pE] | mask[pin];  // list pin as servo driver.
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x03
	BANKSEL	(_activatedservos + 4)
	MOVF	(_activatedservos + 4), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 4), B
;	.line	449; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISE = TRISE & (~mask[pin]); 					// set as output pin
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	COMF	r0x00, F
	MOVF	r0x00, W
	ANDWF	_TRISE, F
_00535_DS_:
;	.line	452; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__SortServoTimings	code
_SortServoTimings:
;	.line	245; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	static void SortServoTimings()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	BANKSEL	_SortServoTimings_t_1_32
;	.line	250; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICpins;t++)
	CLRF	_SortServoTimings_t_1_32, B
_00411_DS_:
	MOVLW	0x1e
	BANKSEL	_SortServoTimings_t_1_32
	SUBWF	_SortServoTimings_t_1_32, W, B
	BTFSC	STATUS, 0
	BRA	_00358_DS_
;	.line	252; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=255; 
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	SETF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	253; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	254; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	256; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	259; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	262; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	250; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICpins;t++)
	INCF	_SortServoTimings_t_1_32, F, B
	BRA	_00411_DS_
_00358_DS_:
	BANKSEL	_SortServoTimings_t_1_32
;	.line	267; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICports;t++)
	CLRF	_SortServoTimings_t_1_32, B
_00414_DS_:
	MOVLW	0x05
	BANKSEL	_SortServoTimings_t_1_32
	SUBWF	_SortServoTimings_t_1_32, W, B
	BC	_00359_DS_
;	.line	268; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[t]=0x00;
	MOVLW	LOW(_mascaratotal)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_mascaratotal)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	267; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICports;t++)
	INCF	_SortServoTimings_t_1_32, F, B
	BRA	_00414_DS_
_00359_DS_:
	BANKSEL	_SortServoTimings_totalservos_1_32
;	.line	270; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	totalservos=0; // Total servos revised. This helps to keep within "while"
	CLRF	_SortServoTimings_totalservos_1_32, B
	BANKSEL	_SortServoTimings_t_1_32
;	.line	271; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	t=0;           // Index to go through timevalue and timings tables.
	CLRF	_SortServoTimings_t_1_32, B
_00407_DS_:
;	.line	272; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	while(totalservos<TotalPICpins)
	MOVLW	0x1e
	BANKSEL	_SortServoTimings_totalservos_1_32
	SUBWF	_SortServoTimings_totalservos_1_32, W, B
	BTFSC	STATUS, 0
	GOTO	_00409_DS_
;	.line	274; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_32
	MOVWF	_SortServoTimings_numservos_1_32, B
	BANKSEL	_SortServoTimings_s_1_32
;	.line	276; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(s=0;s<TotalPICpins;s++)
	CLRF	_SortServoTimings_s_1_32, B
_00417_DS_:
	MOVLW	0x1e
	BANKSEL	_SortServoTimings_s_1_32
	SUBWF	_SortServoTimings_s_1_32, W, B
	BTFSC	STATUS, 0
	GOTO	_00406_DS_
;	.line	279; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	switch (port[s])
	MOVLW	LOW(_port)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, F
	CLRF	r0x02
	MOVLW	UPPER(_port)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVLW	0x05
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00418_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x00, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00498_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00498_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00498_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00498_DS_:
	GOTO	_00360_DS_
	GOTO	_00369_DS_
	GOTO	_00378_DS_
	GOTO	_00387_DS_
	GOTO	_00396_DS_
_00360_DS_:
;	.line	282; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pA] & activatedservos[pA]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	CLRF	r0x02
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	_mascaratotal
	MOVF	_mascaratotal, W, B
	ANDWF	r0x00, F
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	GOTO	_00418_DS_
;	.line	285; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x01, W
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00364_DS_
;	.line	286; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	287; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	288; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	290; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	293; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	296; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
;	.line	298; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_32
	MOVWF	_SortServoTimings_numservos_1_32, B
	GOTO	_00418_DS_
_00364_DS_:
;	.line	300; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00502_DS_
	GOTO	_00418_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
_00502_DS_:
	BANKSEL	_SortServoTimings_t_1_32
;	.line	301; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA] |= mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x03
	MOVFF	PRODL, r0x02
	MOVLW	LOW(_timings)
	ADDWF	r0x02, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x03, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_mask)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	IORWF	r0x04, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
	BANKSEL	_SortServoTimings_numservos_1_32
;	.line	302; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_32, F, B
;	.line	304; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;      		
	GOTO	_00418_DS_
_00369_DS_:
;	.line	307; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pB] & activatedservos[pB]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	CLRF	r0x02
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_mascaratotal + 1)
	MOVF	(_mascaratotal + 1), W, B
	ANDWF	r0x00, F
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	GOTO	_00418_DS_
;	.line	310; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x01, W
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00373_DS_
;	.line	311; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	312; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	313; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	315; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	318; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	321; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
;	.line	323; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_32
	MOVWF	_SortServoTimings_numservos_1_32, B
	GOTO	_00418_DS_
_00373_DS_:
;	.line	325; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00507_DS_
	GOTO	_00418_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
_00507_DS_:
	BANKSEL	_SortServoTimings_t_1_32
;	.line	326; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB] |= mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x03
	MOVFF	PRODL, r0x02
	MOVLW	LOW(_timings)
	ADDWF	r0x02, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x03, F
	INFSNZ	r0x02, F
	INCF	r0x03, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_mask)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	IORWF	r0x04, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
	BANKSEL	_SortServoTimings_numservos_1_32
;	.line	327; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_32, F, B
;	.line	329; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	GOTO	_00418_DS_
_00378_DS_:
;	.line	333; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pC] & activatedservos[pC]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	CLRF	r0x02
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_mascaratotal + 2)
	MOVF	(_mascaratotal + 2), W, B
	ANDWF	r0x00, F
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	GOTO	_00418_DS_
;	.line	336; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x01, W
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00382_DS_
;	.line	337; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	338; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	339; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	340; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	342; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	345; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
;	.line	347; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_32
	MOVWF	_SortServoTimings_numservos_1_32, B
	GOTO	_00418_DS_
_00382_DS_:
;	.line	349; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00512_DS_
	GOTO	_00418_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
_00512_DS_:
	BANKSEL	_SortServoTimings_t_1_32
;	.line	350; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC] |= mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x03
	MOVFF	PRODL, r0x02
	MOVLW	LOW(_timings)
	ADDWF	r0x02, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x03, F
	MOVLW	0x02
	ADDWF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_mask)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	IORWF	r0x04, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
	BANKSEL	_SortServoTimings_numservos_1_32
;	.line	351; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_32, F, B
;	.line	353; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	GOTO	_00418_DS_
_00387_DS_:
;	.line	358; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pD] & activatedservos[pD]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	CLRF	r0x02
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_mascaratotal + 3)
	MOVF	(_mascaratotal + 3), W, B
	ANDWF	r0x00, F
	BANKSEL	(_activatedservos + 3)
	MOVF	(_activatedservos + 3), W, B
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	GOTO	_00418_DS_
;	.line	361; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x01, W
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00391_DS_
;	.line	362; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	363; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	364; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	365; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	366; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	368; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
;	.line	370; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_32
	MOVWF	_SortServoTimings_numservos_1_32, B
	BRA	_00418_DS_
_00391_DS_:
;	.line	372; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00517_DS_
	BRA	_00418_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
_00517_DS_:
	BANKSEL	_SortServoTimings_t_1_32
;	.line	373; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD] |= mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x03
	MOVFF	PRODL, r0x02
	MOVLW	LOW(_timings)
	ADDWF	r0x02, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x03, F
	MOVLW	0x03
	ADDWF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_mask)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	IORWF	r0x04, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
	BANKSEL	_SortServoTimings_numservos_1_32
;	.line	374; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_32, F, B
;	.line	376; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00418_DS_
_00396_DS_:
;	.line	381; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pE] & activatedservos[pE]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	CLRF	r0x02
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_mascaratotal + 4)
	MOVF	(_mascaratotal + 4), W, B
	ANDWF	r0x00, F
	BANKSEL	(_activatedservos + 4)
	MOVF	(_activatedservos + 4), W, B
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	BRA	_00418_DS_
;	.line	384; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x01, W
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00400_DS_
;	.line	385; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	386; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	387; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	388; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	389; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
; removed redundant BANKSEL
;	.line	390; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x02, INDF0
;	.line	391; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_32
	MOVWF	_SortServoTimings_numservos_1_32, B
	BRA	_00418_DS_
_00400_DS_:
;	.line	393; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_32
	ADDWF	_SortServoTimings_t_1_32, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00522_DS_
	BRA	_00418_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
_00522_DS_:
	BANKSEL	_SortServoTimings_t_1_32
;	.line	394; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE] |= mask[s];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x03
	MOVFF	PRODL, r0x02
	MOVLW	LOW(_timings)
	ADDWF	r0x02, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x03, F
	MOVLW	0x04
	ADDWF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_32
	ADDWF	_SortServoTimings_s_1_32, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_mask)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	IORWF	r0x04, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
	BANKSEL	_SortServoTimings_numservos_1_32
;	.line	395; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_32, F, B
_00418_DS_:
	BANKSEL	_SortServoTimings_s_1_32
;	.line	276; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(s=0;s<TotalPICpins;s++)
	INCF	_SortServoTimings_s_1_32, F, B
	GOTO	_00417_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
_00406_DS_:
	BANKSEL	_SortServoTimings_t_1_32
;	.line	401; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pA] |= timings[t][pA];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	BANKSEL	_mascaratotal
	MOVF	_mascaratotal, W, B
	IORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_mascaratotal, B
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	402; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pB] |= timings[t][pB];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	BANKSEL	(_mascaratotal + 1)
	MOVF	(_mascaratotal + 1), W, B
	IORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_mascaratotal + 1), B
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	404; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pC] |= timings[t][pC];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	BANKSEL	(_mascaratotal + 2)
	MOVF	(_mascaratotal + 2), W, B
	IORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_mascaratotal + 2), B
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	407; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pD] |= timings[t][pD];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	BANKSEL	(_mascaratotal + 3)
	MOVF	(_mascaratotal + 3), W, B
	IORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_mascaratotal + 3), B
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_32 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_32
;	.line	410; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pE] |= timings[t][pE];
	MOVF	_SortServoTimings_t_1_32, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	BANKSEL	(_mascaratotal + 4)
	MOVF	(_mascaratotal + 4), W, B
	IORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_mascaratotal + 4), B
	BANKSEL	_SortServoTimings_numservos_1_32
;	.line	413; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	totalservos += numservos;
	MOVF	_SortServoTimings_numservos_1_32, W, B
	BANKSEL	_SortServoTimings_totalservos_1_32
	ADDWF	_SortServoTimings_totalservos_1_32, F, B
	BANKSEL	_SortServoTimings_t_1_32
;	.line	414; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	t++;
	INCF	_SortServoTimings_t_1_32, F, B
	GOTO	_00407_DS_
_00409_DS_:
	BANKSEL	_needreordering
;	.line	417; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	needreordering=0;  // This indicates that servo timings are sorted.
	CLRF	_needreordering, B
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__ServosPulseUp	code
_ServosPulseUp:
	BANKSEL	_activatedservos
;	.line	228; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTA = PORTA | activatedservos[pA];
	MOVF	_activatedservos, W, B
	IORWF	_PORTA, F
; removed redundant BANKSEL
;	.line	229; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTB = PORTB | activatedservos[pB];
	MOVF	(_activatedservos + 1), W, B
	IORWF	_PORTB, F
; removed redundant BANKSEL
;	.line	231; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTC = PORTC | activatedservos[pC];
	MOVF	(_activatedservos + 2), W, B
	IORWF	_PORTC, F
; removed redundant BANKSEL
;	.line	234; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTD = PORTD | activatedservos[pD];
	MOVF	(_activatedservos + 3), W, B
	IORWF	_PORTD, F
; removed redundant BANKSEL
;	.line	237; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTE = PORTE | activatedservos[pE];
	MOVF	(_activatedservos + 4), W, B
	IORWF	_PORTE, F
	RETURN	

; ; Starting pCode block
S_tortucaro__ServosPulseDown	code
_ServosPulseDown:
;	.line	185; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	static void ServosPulseDown()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	_ServosPulseDown_timingindex_1_28
;	.line	187; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	volatile unsigned char timingindex = 0;
	CLRF	_ServosPulseDown_timingindex_1_28, B
	BANKSEL	_timedivision
;	.line	189; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(timedivision=0;timedivision < 251;timedivision++)
	CLRF	_timedivision, B
_00331_DS_:
;	.line	191; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (timevalue[timingindex] == timedivision)
	MOVLW	LOW(_timevalue)
	BANKSEL	_ServosPulseDown_timingindex_1_28
	ADDWF	_ServosPulseDown_timingindex_1_28, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	BANKSEL	_timedivision
	XORWF	_timedivision, W, B
	BZ	_00342_DS_
	BRA	_00329_DS_
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_28 and store in r0x00
_00342_DS_:
	BANKSEL	_ServosPulseDown_timingindex_1_28
;	.line	193; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTA = PORTA ^ timings[timingindex][pA];
	MOVF	_ServosPulseDown_timingindex_1_28, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTA, F
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_28 and store in r0x00
; removed redundant BANKSEL
;	.line	194; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTB = PORTB ^ timings[timingindex][pB];
	MOVF	_ServosPulseDown_timingindex_1_28, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTB, F
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_28 and store in r0x00
; removed redundant BANKSEL
;	.line	196; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTC = PORTC ^ timings[timingindex][pC];
	MOVF	_ServosPulseDown_timingindex_1_28, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTC, F
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_28 and store in r0x00
; removed redundant BANKSEL
;	.line	199; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTD = PORTD ^ timings[timingindex][pD];
	MOVF	_ServosPulseDown_timingindex_1_28, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x03
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTD, F
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_28 and store in r0x00
; removed redundant BANKSEL
;	.line	202; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTE = PORTE ^ timings[timingindex][pE];
	MOVF	_ServosPulseDown_timingindex_1_28, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	0x04
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTE, F
; removed redundant BANKSEL
;	.line	204; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timingindex++;
	INCF	_ServosPulseDown_timingindex_1_28, F, B
_00329_DS_:
	movlw	7
	movwf	_loopvar
bucle:
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	decfsz	_loopvar,1
	goto	bucle
	
	BANKSEL	_timedivision
;	.line	189; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(timedivision=0;timedivision < 251;timedivision++)
	INCF	_timedivision, F, B
	MOVLW	0xfb
; removed redundant BANKSEL
	SUBWF	_timedivision, W, B
	BTFSS	STATUS, 0
	BRA	_00331_DS_
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__servos_init	code
_servos_init:
;	.line	152; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void servos_init()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	157; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(a=0;a<TotalPICpins;a++)
	CLRF	r0x00
_00302_DS_:
;	.line	159; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	servovalues[a]=255;  //Filling up the servovalues table to 255.
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	SETF	INDF0
;	.line	160; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	maxminpos[0][a]= DefaultSERVOMIN; // Setting min servo position to 1000 usec.
	MOVLW	LOW(_maxminpos)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_maxminpos)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVLW	0x40
	MOVWF	INDF0
;	.line	161; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	maxminpos[1][a]= DefaultSERVOMAX; // Setting max servo position to 2000 usec.
	MOVLW	LOW(_maxminpos + 30)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_maxminpos + 30)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVLW	0xc0
	MOVWF	INDF0
;	.line	157; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(a=0;a<TotalPICpins;a++)
	INCF	r0x00, F
	MOVLW	0x1e
	SUBWF	r0x00, W
	BNC	_00302_DS_
;	.line	165; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(a=0;a<TotalPICports;a++)
	CLRF	r0x00
_00304_DS_:
;	.line	166; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[a]=0x00;  // Setting all pins as deactivated as servo.
	MOVLW	LOW(_activatedservos)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_activatedservos)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	165; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(a=0;a<TotalPICports;a++)
	INCF	r0x00, F
	MOVLW	0x05
	SUBWF	r0x00, W
	BNC	_00304_DS_
;	.line	168; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	INTCONbits.GIEH    = 0; // Disable global HP interrupts
	BCF	_INTCONbits, 7
;	.line	169; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	INTCONbits.GIEL    = 0; // Disable global LP interrupts
	BCF	_INTCONbits, 6
;	.line	171; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	T1CON=0x01; 			//timer 1 prescaler 1 source is internal oscillator
	MOVLW	0x01
	MOVWF	_T1CON
;	.line	172; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1H=0xFF; 			// First value on timer to start up...
	MOVLW	0xff
	SETF	_TMR1H
;	.line	173; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1L=0x00; 			// ...now the first interrupt will be generated by timer after 9 ms.
	CLRF	_TMR1L
;	.line	174; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	IPR1bits.TMR1IP = 1; 	// INT_HIGH_PRIORITY
	BSF	_IPR1bits, 0
;	.line	175; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PIR1bits.TMR1IF = 0; 	// Setting flag to 0
	BCF	_PIR1bits, 0
;	.line	176; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PIE1bits.TMR1IE = 1; 	// INT_ENABLE
	BSF	_PIE1bits, 0
;	.line	177; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	T1CONbits.TMR1ON   = 1; // Starting TMR1
	BSF	_T1CONbits, 0
;	.line	179; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	INTCONbits.GIEH    = 1; // Enable global HP interrupts
	BSF	_INTCONbits, 7
;	.line	180; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	INTCONbits.GIEL    = 1; // Enable global LP interrupts
	BSF	_INTCONbits, 6
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__toggle	code
_toggle:
;	.line	47; /home/vbasel/.icaro/v4/firmware/core/digitalt.c	void toggle(u8 pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	50; /home/vbasel/.icaro/v4/firmware/core/digitalt.c	state = digitalread(pin);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVWF	r0x01
	MOVF	POSTINC1, F
;	.line	51; /home/vbasel/.icaro/v4/firmware/core/digitalt.c	digitalwrite(pin, state^1);
	BTG	r0x01, 0
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__digitalread	code
_digitalread:
;	.line	48; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	u8 digitalread(u8 pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	54; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	switch (port[pin])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_port)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_port)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVLW	0x05
	SUBWF	r0x01, W
	BTFSC	STATUS, 0
	BRA	_00258_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x01, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00290_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00290_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00290_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00290_DS_:
	GOTO	_00253_DS_
	GOTO	_00254_DS_
	GOTO	_00255_DS_
	GOTO	_00256_DS_
	GOTO	_00257_DS_
_00253_DS_:
;	.line	57; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	return ((PORTA & mask[pin])!=0);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	_PORTA, W
	ANDWF	r0x01, F
	MOVF	r0x01, W
	BZ	_00261_DS_
	MOVLW	0x01
	MOVWF	r0x01
	BRA	_00262_DS_
_00261_DS_:
	CLRF	r0x01
_00262_DS_:
	MOVF	r0x01, W
	BRA	_00259_DS_
_00254_DS_:
;	.line	60; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	return ((PORTB & mask[pin])!=0);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	_PORTB, W
	ANDWF	r0x01, F
	MOVF	r0x01, W
	BZ	_00263_DS_
	MOVLW	0x01
	MOVWF	r0x01
	BRA	_00264_DS_
_00263_DS_:
	CLRF	r0x01
_00264_DS_:
	MOVF	r0x01, W
	BRA	_00259_DS_
_00255_DS_:
;	.line	63; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	return ((PORTC & mask[pin])!=0);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	_PORTC, W
	ANDWF	r0x01, F
	MOVF	r0x01, W
	BZ	_00265_DS_
	MOVLW	0x01
	MOVWF	r0x01
	BRA	_00266_DS_
_00265_DS_:
	CLRF	r0x01
_00266_DS_:
	MOVF	r0x01, W
	BRA	_00259_DS_
_00256_DS_:
;	.line	70; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	return ((PORTD & mask[pin])!=0);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	_PORTD, W
	ANDWF	r0x01, F
	MOVF	r0x01, W
	BZ	_00267_DS_
	MOVLW	0x01
	MOVWF	r0x01
	BRA	_00268_DS_
_00267_DS_:
	CLRF	r0x01
_00268_DS_:
	MOVF	r0x01, W
	BRA	_00259_DS_
_00257_DS_:
;	.line	73; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	return ((PORTE & mask[pin])!=0);
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	_PORTE, W
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BZ	_00269_DS_
	MOVLW	0x01
	MOVWF	r0x00
	BRA	_00270_DS_
_00269_DS_:
	CLRF	r0x00
_00270_DS_:
	MOVF	r0x00, W
	BRA	_00259_DS_
_00258_DS_:
;	.line	77; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	return 0;
	CLRF	WREG
_00259_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__digitalwrite	code
_digitalwrite:
;	.line	48; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	void digitalwrite(u8 pin, u8 state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	54; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	switch (port[pin])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_port)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_port)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVLW	0x05
	SUBWF	r0x02, W
	BTFSC	STATUS, 0
	BRA	_00227_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x02, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00248_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00248_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00248_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00248_DS_:
	GOTO	_00206_DS_
	GOTO	_00210_DS_
	GOTO	_00214_DS_
	GOTO	_00218_DS_
	GOTO	_00222_DS_
_00206_DS_:
;	.line	57; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	if (state) LATA=LATA | mask[pin];
	MOVF	r0x01, W
	BZ	_00208_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_LATA, F
	BRA	_00227_DS_
_00208_DS_:
;	.line	58; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	else LATA=LATA & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_LATA, F
;	.line	59; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	break;
	BRA	_00227_DS_
_00210_DS_:
;	.line	61; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	if (state) LATB=LATB | mask[pin]; 
	MOVF	r0x01, W
	BZ	_00212_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_LATB, F
	BRA	_00227_DS_
_00212_DS_:
;	.line	62; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	else LATB=LATB & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_LATB, F
;	.line	63; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	break;
	BRA	_00227_DS_
_00214_DS_:
;	.line	65; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	if (state) LATC=LATC | mask[pin];
	MOVF	r0x01, W
	BZ	_00216_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_LATC, F
	BRA	_00227_DS_
_00216_DS_:
;	.line	66; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	else LATC=LATC & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_LATC, F
;	.line	67; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	break;
	BRA	_00227_DS_
_00218_DS_:
;	.line	72; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	if (state) LATD=LATD | mask[pin]; 
	MOVF	r0x01, W
	BZ	_00220_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_LATD, F
	BRA	_00227_DS_
_00220_DS_:
;	.line	73; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	else LATD=LATD & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_LATD, F
;	.line	74; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	break;
	BRA	_00227_DS_
_00222_DS_:
;	.line	76; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	if (state) LATE=LATE | mask[pin]; 
	MOVF	r0x01, W
	BZ	_00224_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	IORWF	_LATE, F
	BRA	_00227_DS_
_00224_DS_:
;	.line	77; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	else LATE=LATE & (255-mask[pin]);
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_LATE, F
_00227_DS_:
;	.line	80; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__pinmode	code
_pinmode:
;	.line	44; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	void pinmode(u8 pin, u8 state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	46; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	switch (port[pin])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_port)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_port)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVLW	0x05
	SUBWF	r0x02, W
	BTFSC	STATUS, 0
	BRA	_00180_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x02, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00201_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00201_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00201_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00201_DS_:
	GOTO	_00159_DS_
	GOTO	_00163_DS_
	GOTO	_00167_DS_
	GOTO	_00171_DS_
	GOTO	_00175_DS_
_00159_DS_:
;	.line	49; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	if (state) TRISA=TRISA | mask[pin];
	MOVF	r0x01, W
	BZ	_00161_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_TRISA, F
	BRA	_00180_DS_
_00161_DS_:
;	.line	50; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	else TRISA=TRISA & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_TRISA, F
;	.line	51; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	break;
	BRA	_00180_DS_
_00163_DS_:
;	.line	53; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	if (state) TRISB=TRISB | mask[pin];
	MOVF	r0x01, W
	BZ	_00165_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_TRISB, F
	BRA	_00180_DS_
_00165_DS_:
;	.line	54; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	else TRISB=TRISB & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_TRISB, F
;	.line	55; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	break;
	BRA	_00180_DS_
_00167_DS_:
;	.line	57; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	if (state) TRISC=TRISC | mask[pin];
	MOVF	r0x01, W
	BZ	_00169_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_TRISC, F
	BRA	_00180_DS_
_00169_DS_:
;	.line	58; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	else TRISC=TRISC & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_TRISC, F
;	.line	59; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	break;
	BRA	_00180_DS_
_00171_DS_:
;	.line	64; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	if (state) TRISD=TRISD | mask[pin];
	MOVF	r0x01, W
	BZ	_00173_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_TRISD, F
	BRA	_00180_DS_
_00173_DS_:
;	.line	65; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	else TRISD=TRISD & (255-mask[pin]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_mask)
	ADDWFC	r0x03, F
	CLRF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	SUBLW	0xff
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	ANDWF	_TRISD, F
;	.line	66; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	break;
	BRA	_00180_DS_
_00175_DS_:
;	.line	68; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	if (state) TRISE=TRISE | mask[pin];
	MOVF	r0x01, W
	BZ	_00177_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_mask)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	IORWF	_TRISE, F
	BRA	_00180_DS_
_00177_DS_:
;	.line	69; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	else TRISE=TRISE & (255-mask[pin]);
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_TRISE, F
_00180_DS_:
;	.line	72; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__Delayms	code
_Delayms:
;	.line	93; /home/vbasel/.icaro/v4/firmware/core/delayms.c	void Delayms(u16 milliseconds)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	100; /home/vbasel/.icaro/v4/firmware/core/delayms.c	u16 n100tcy = System_getPeripheralFrequency() / 100000;
	CALL	_System_getCpuFrequency
	MOVWF	r0x02
	MOVFF	PRODL, r0x03
	MOVFF	PRODH, r0x04
	MOVFF	FSR0L, r0x05
	BCF	STATUS, 0
	RRCF	r0x05, F
	RRCF	r0x04, F
	RRCF	r0x03, F
	RRCF	r0x02, F
	BCF	STATUS, 0
	RRCF	r0x05, F
	RRCF	r0x04, F
	RRCF	r0x03, F
	RRCF	r0x02, F
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x86
	MOVWF	POSTDEC1
	MOVLW	0xa0
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x02
	MOVLW	0x08
	ADDWF	FSR1L, F
_00151_DS_:
;	.line	101; /home/vbasel/.icaro/v4/firmware/core/delayms.c	while (milliseconds--)
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00154_DS_
;	.line	102; /home/vbasel/.icaro/v4/firmware/core/delayms.c	delay100tcy(n100tcy-3);
	MOVF	r0x02, W
	MOVWF	r0x04
	MOVLW	0xfd
	ADDWF	r0x04, F
	MOVF	r0x04, W
	CALL	_delay100tcy
	BRA	_00151_DS_
_00154_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__System_getCpuFrequency	code
_System_getCpuFrequency:
;	.line	227; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	u32 System_getCpuFrequency() 
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	242; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	if (OSCCONbits.SCS == 0)
	MOVF	_OSCCONbits, W
	ANDLW	0x03
	MOVWF	r0x00
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	BRA	_00116_DS_
;	.line	268; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	CPUDIV  = ( System_readFlashMemory(__CONFIG1L) & 0b00011000 ) >> 3;
	CLRF	POSTDEC1
	MOVLW	0x30
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	_System_readFlashMemory
	MOVWF	r0x00
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	0x18
	ANDWF	r0x00, F
	CLRF	r0x01
	BCF	STATUS, 0
	RRCF	r0x01, F
	RRCF	r0x00, F
	BCF	STATUS, 0
	RRCF	r0x01, F
	RRCF	r0x00, F
	BCF	STATUS, 0
	RRCF	r0x01, F
	RRCF	r0x00, F
;	.line	269; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	CPUDIV_XTAL = cpudiv_xtal[CPUDIV];
	MOVLW	LOW(_cpudiv_xtal)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_cpudiv_xtal)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_cpudiv_xtal)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
;	.line	270; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	fosc  = System_readFlashMemory(__CONFIG1H) & 0b00001111;
	CLRF	POSTDEC1
	MOVLW	0x30
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_System_readFlashMemory
	MOVWF	r0x02
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	0x0f
	ANDWF	r0x02, F
;	.line	284; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	CPUDIV = cpudiv[CPUDIV];
	MOVLW	LOW(_cpudiv)
	ADDWF	r0x00, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_cpudiv)
	ADDWFC	r0x04, F
	CLRF	r0x05
	MOVLW	UPPER(_cpudiv)
	ADDWFC	r0x05, F
	MOVFF	r0x03, TBLPTRL
	MOVFF	r0x04, TBLPTRH
	MOVFF	r0x05, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
;	.line	292; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	fosc >>=1;
	BCF	STATUS, 0
	RRCF	r0x02, F
;	.line	293; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	if( (fosc==0) || (fosc==2) || (fosc==6) )
	MOVF	r0x02, W
	BZ	_00110_DS_
	MOVF	r0x02, W
	XORLW	0x02
	BZ	_00110_DS_
	MOVF	r0x02, W
	XORLW	0x06
	BNZ	_00111_DS_
_00110_DS_:
;	.line	295; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	return CRYSTAL / CPUDIV_XTAL;
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x7a
	MOVWF	POSTDEC1
	MOVLW	0x12
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	__divslong
	MOVWF	r0x01
	MOVFF	PRODL, r0x02
	MOVFF	PRODH, r0x03
	MOVFF	FSR0L, r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x03, PRODH
	MOVFF	r0x02, PRODL
	MOVF	r0x01, W
	BRA	_00121_DS_
_00111_DS_:
;	.line	299; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	return 96000000UL / CPUDIV;
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x05
	MOVWF	POSTDEC1
	MOVLW	0xb8
	MOVWF	POSTDEC1
	MOVLW	0xd8
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00121_DS_
_00116_DS_:
;	.line	312; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	if (OSCCONbits.SCS == 1)
	MOVF	_OSCCONbits, W
	ANDLW	0x03
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00118_DS_
;	.line	313; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	return 32768;
	CLRF	FSR0L
	CLRF	PRODH
	MOVLW	0x80
	MOVWF	PRODL
	CLRF	WREG
	BRA	_00121_DS_
_00118_DS_:
;	.line	316; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	if (OSCCONbits.SCS >= 2)
	MOVF	_OSCCONbits, W
	ANDLW	0x03
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ADDLW	0x80
	ADDLW	0x7e
	BNC	_00120_DS_
;	.line	317; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	return ircf[OSCCONbits.IRCF];
	MOVF	_OSCCONbits, W
	SWAPF	WREG, W
	ANDLW	0x07
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
	CLRF	r0x02
	MOVLW	LOW(_ircf)
	ADDWF	r0x00, F
	MOVLW	HIGH(_ircf)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_ircf)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	TBLRD*+	
	MOVFF	TABLAT, r0x03
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00121_DS_
_00120_DS_:
;	.line	319; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	return 0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
_00121_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__System_readFlashMemory	code
_System_readFlashMemory:
;	.line	190; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	u16 System_readFlashMemory(u32 address)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	194; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	TBLPTRU = address >> 16;
	MOVF	r0x02, W
	MOVWF	r0x04
	MOVF	r0x03, W
	MOVWF	r0x05
	CLRF	r0x06
	CLRF	r0x07
	MOVF	r0x04, W
	MOVWF	_TBLPTRU
;	.line	195; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	TBLPTRH = address >> 8;
	MOVF	r0x01, W
	MOVWF	r0x04
	MOVF	r0x02, W
	MOVWF	r0x05
	MOVF	r0x03, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVF	r0x04, W
	MOVWF	_TBLPTRH
;	.line	196; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	TBLPTRL = address;
	MOVF	r0x00, W
	MOVWF	_TBLPTRL
	tblrd*+
;	.line	198; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	l8 = TABLAT;
	MOVFF	_TABLAT, r0x00
	tblrd*+
;	.line	200; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	h8 = TABLAT;
	MOVFF	_TABLAT, r0x01
;	.line	202; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	return ((h8 << 8) + l8);
	CLRF	r0x02
	MOVF	r0x01, W
	MOVWF	r0x04
	CLRF	r0x03
	CLRF	r0x05
	MOVF	r0x00, W
	ADDWF	r0x03, F
	MOVF	r0x05, W
	ADDWFC	r0x04, F
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block for Ival
	code
_cpudiv:
	DB	0x02, 0x03, 0x04, 0x06
; ; Starting pCode block for Ival
_cpudiv_xtal:
	DB	0x01, 0x02, 0x03, 0x04
; ; Starting pCode block for Ival
_ircf:
	DB	0x12, 0x7a, 0x00, 0x00, 0x48, 0xe8, 0x01, 0x00, 0x90, 0xd0, 0x03, 0x00
	DB	0x20, 0xa1, 0x07, 0x00, 0x40, 0x42, 0x0f, 0x00, 0x80, 0x84, 0x1e, 0x00
	DB	0x00, 0x09, 0x3d, 0x00, 0x00, 0x12, 0x7a, 0x00
; ; Starting pCode block for Ival
_mask:
	DB	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x40, 0x80, 0x01, 0x02
	DB	0x04, 0x01, 0x02, 0x04, 0x08, 0x20, 0x01, 0x02, 0x04, 0x01, 0x02, 0x04
	DB	0x08, 0x10, 0x20, 0x40, 0x80, 0x10
; ; Starting pCode block for Ival
_port:
	DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02
	DB	0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x03, 0x03, 0x03
	DB	0x03, 0x03, 0x03, 0x03, 0x03, 0x00
; ; Starting pCode block for Ival
_libdevice_descriptor:
	DB	0x12, 0x01, 0x00, 0x02, 0x02, 0x00, 0x00, 0x40, 0xd8, 0x04, 0xab, 0xfe
	DB	0x00, 0x00, 0x01, 0x02, 0x00, 0x01
; ; Starting pCode block for Ival
_libconfiguration_descriptor:
	DB	0x09, 0x02, 0x43, 0x00, 0x02, 0x01, 0x00, 0xc0, 0x14, 0x09, 0x04, 0x00
	DB	0x00, 0x01, 0x02, 0x02, 0x01, 0x00, 0x05, 0x24, 0x00, 0x10, 0x01, 0x04
	DB	0x24, 0x02, 0x00, 0x05, 0x24, 0x06, 0x00, 0x01, 0x05, 0x24, 0x01, 0x00
	DB	0x01, 0x07, 0x05, 0x82, 0x03, 0x10, 0x00, 0x02, 0x09, 0x04, 0x01, 0x00
	DB	0x02, 0x0a, 0x00, 0x00, 0x00, 0x07, 0x05, 0x03, 0x02, 0x40, 0x00, 0x00
	DB	0x07, 0x05, 0x83, 0x02, 0x40, 0x00, 0x00
; ; Starting pCode block for Ival
_lang:
	DB	0x04, 0x03, 0x09, 0x04
; ; Starting pCode block for Ival
_manu:
	DB	0x16, 0x03, 0x4a, 0x00, 0x50, 0x00, 0x20, 0x00, 0x4d, 0x00, 0x41, 0x00
	DB	0x4e, 0x00, 0x44, 0x00, 0x4f, 0x00, 0x4e, 0x00, 0x20, 0x00
; ; Starting pCode block for Ival
_prod:
	DB	0x12, 0x03, 0x50, 0x00, 0x69, 0x00, 0x6e, 0x00, 0x67, 0x00, 0x75, 0x00
	DB	0x69, 0x00, 0x6e, 0x00, 0x6f, 0x00
; ; Starting pCode block for Ival
_libstring_descriptor:
	DB	LOW(_lang), HIGH(_lang), UPPER(_lang), LOW(_manu), HIGH(_manu), UPPER(_manu), LOW(_prod), HIGH(_prod), UPPER(_prod)
; ; Starting pCode block
___str_0:
	DB	0x30, 0x00
; ; Starting pCode block
___str_1:
	DB	0x31, 0x00
; ; Starting pCode block
___str_2:
	DB	0x66, 0x0a, 0x00
; ; Starting pCode block
___str_3:
	DB	0x69, 0x63, 0x61, 0x72, 0x6f, 0x20, 0x55, 0x53, 0x42, 0x20, 0x30, 0x32
	DB	0x20, 0x0a, 0x00


; Statistics:
; code size:	14374 (0x3826) bytes (10.97%)
;           	 7187 (0x1c13) words
; udata size:	  794 (0x031a) bytes (44.31%)
; access size:	   10 (0x000a) bytes


	end
