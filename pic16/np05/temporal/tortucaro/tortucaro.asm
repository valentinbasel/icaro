;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Jul 16 2014) (Linux)
; This file was generated Wed Mar 11 13:46:14 2015
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_i
	global	_hidRxLen
	global	_hidProtocol
	global	_hidIdleRate
	global	_HIDPostProcess
	global	_deviceAddress
	global	_loopvar
	global	_EnableUSBModule
	global	_ProcessUSBTransactions
	global	_ProcessCDCRequest
	global	_CDCgets
	global	_CDCInitEndpoint
	global	_phase
	global	_needreordering
	global	_timingindex
	global	_timedivision
	global	_timings
	global	_activatedservos
	global	_servovalues
	global	__pr2_plus1
	global	__t2con
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
	global	_digitalwrite
	global	_digitalread
	global	_pinmode
	global	_servos_init
	global	_ServoAttach
	global	_ServoDetach
	global	_ServoWrite
	global	_ServoRead
	global	_ServoMinimumPulse
	global	_ServoMaximumPulse
	global	_servos_interrupt
	global	_analog_init
	global	_analogReference
	global	_analogread
	global	_Delayms
	global	_Delayus
	global	_PWM_set_frequency
	global	_PWM_set_dutycycle
	global	_PWM_set_percent_dutycycle
	global	_init_PWM11
	global	_init_PWM12
	global	_set_PWM
	global	_epap_in
	global	_epap_out
	global	_epapin_init
	global	_epapout_init
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
	global	_init_CDC
	global	_env_cdc
	global	_digital
	global	_l293d
	global	_analogico
	global	_puertob
	global	_servos
	global	_setup
	global	_comparo
	global	_loop
	global	_pinguino_main
	global	_high_priority_isr
	global	_low_priority_isr
	global	_mask
	global	_port
	global	_servomasks
	global	_libdevice_descriptor
	global	_libconfiguration_descriptor
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
	extern	_usb_device_state
	extern	_usb_active_cfg
	extern	_usb_active_alt_setting
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
	extern	_delay10ktcy
	extern	__divulong
	extern	__mulint
	extern	__divuint
	extern	_itoa
	extern	_x_ftoa
	extern	_strcat
	extern	_strlen
	extern	___uint2fs

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
_activatedservos	db	0x00, 0x00, 0x00
__pr2_plus1	db	0x00, 0x01
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
r0x0a	res	1
r0x0b	res	1
r0x0c	res	1


usbram5	udata
_SetupPacket	res	64
_controlTransferBuffer	res	64
_CDCRxBuffer	res	64
_CDCTxBuffer	res	64

udata_tortucaro_0	udata
_loopvar	res	1

udata_tortucaro_1	udata
_deviceAddress	res	1

udata_tortucaro_2	udata
_HIDPostProcess	res	1

udata_tortucaro_3	udata
_hidIdleRate	res	1

udata_tortucaro_4	udata
_hidProtocol	res	1

udata_tortucaro_5	udata
_hidRxLen	res	1

udata_tortucaro_6	udata
_i	res	1

udata_tortucaro_7	udata
_servovalues	res	18

udata_tortucaro_8	udata
_timingindex	res	1

udata_tortucaro_9	udata
_timings	res	72

udata_tortucaro_10	udata
_SortServoTimings_mascaratotal_1_27	res	3

udata_tortucaro_11	udata
__t2con	res	1

udata_tortucaro_12	udata
_requestHandled	res	1

udata_tortucaro_13	udata
_outPtr	res	3

udata_tortucaro_14	udata
_wCount	res	2

udata_tortucaro_15	udata
_inPtr	res	3

udata_tortucaro_16	udata
_selfPowered	res	1

udata_tortucaro_17	udata
_remoteWakeup	res	1

udata_tortucaro_18	udata
_deviceState	res	1

udata_tortucaro_19	udata
_currentConfiguration	res	1

udata_tortucaro_20	udata
_ctrlTransferStage	res	1

udata_tortucaro_21	udata
_line_config	res	5

udata_tortucaro_22	udata
_zlp	res	8

udata_tortucaro_23	udata
_CDCControlBuffer	res	16

udata_tortucaro_24	udata
_env_cdc_chaine_1_250	res	0

udata_tortucaro_25	udata
_receivedbyte	res	1

udata_tortucaro_26	udata
_receivedbyte2	res	1

udata_tortucaro_27	udata
_analogico_chaine_1_261	res	0


ustat_tortucaro_00	udata	0X0400
_ep_bdt        	res	128

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_tortucaro__high_priority_isr	code	0X002020
_high_priority_isr:
;	.line	95; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	void high_priority_isr(void) __interrupt
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	98; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	if(PIR2bits.USBIF)
	BTFSS	_PIR2bits, 5
	BRA	_01843_DS_
;	.line	100; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	ProcessUSBTransactions();
	CALL	_ProcessUSBTransactions
;	.line	101; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	UIRbits.SOFIF = 0;
	BCF	_UIRbits, 6
;	.line	102; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	UIRbits.URSTIF = 0;
	BCF	_UIRbits, 0
;	.line	103; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	PIR2bits.USBIF = 0;
	BCF	_PIR2bits, 5
;	.line	104; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	UEIR = 0;
	CLRF	_UEIR
_01843_DS_:
;	.line	131; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	servos_interrupt();
	CALL	_servos_interrupt
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
S_tortucaro__low_priority_isr	code	0X004000
_low_priority_isr:
;	.line	139; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	void low_priority_isr(void) __interrupt
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	141; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	}
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

; I code from now on!
; ; Starting pCode block
S_tortucaro__pinguino_main	code
_pinguino_main:
;	.line	51; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	PIE1=0;
	CLRF	_PIE1
;	.line	52; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	PIE2=0;
	CLRF	_PIE2
;	.line	53; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	ADCON1=0x0F;
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	58; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	setup();
	CALL	_setup
;	.line	60; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	analog_init();
	CALL	_analog_init
;	.line	66; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	servos_init();
	CALL	_servos_init
;	.line	69; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	init_CDC();
	CALL	_init_CDC
;	.line	70; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	PIE2bits.USBIE = 1;
	BSF	_PIE2bits, 5
;	.line	71; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	INTCON = 0xC0;      
	MOVLW	0xc0
	MOVWF	_INTCON
;	.line	82; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	83; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
_01835_DS_:
;	.line	88; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	loop();
	CALL	_loop
	BRA	_01835_DS_
	RETURN	

; ; Starting pCode block
S_tortucaro__loop	code
_loop:
;	.line	257; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	void loop()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	_valor
;	.line	259; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	PORTD=valor;
	MOVF	_valor, W, B
	MOVWF	_PORTD
;	.line	260; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	Delayms(10);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
_01824_DS_:
;	.line	261; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
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
	BZ	_01824_DS_
;	.line	262; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
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
; #	MOVF	_receivedbyte, W, B
; #	BTFSC	STATUS, 2
; #	GOTO	_01828_DS_
; #	CALL	_comparo
; #	CLRF	_rxstr, B
; removed redundant BANKSEL
;	.line	263; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
;	.line	265; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	comparo();
	BTFSS	STATUS, 2
;	.line	267; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[0]=0;
	CALL	_comparo
	BANKSEL	_rxstr
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	268; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__comparo	code
_comparo:
	BANKSEL	_rxstr
;	.line	232; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='b')
	MOVF	_rxstr, W, B
	XORLW	0x62
	BNZ	_01777_DS_
;	.line	234; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	CDCputs("icaro USB 02 \n",14);
	MOVLW	0x0e
	MOVWF	POSTDEC1
	MOVLW	UPPER(__str_4)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_4)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_4)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
_01777_DS_:
	BANKSEL	_rxstr
;	.line	236; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='m')
	MOVF	_rxstr, W, B
	XORLW	0x6d
	BNZ	_01779_DS_
;	.line	238; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	servos();
	CALL	_servos
_01779_DS_:
	BANKSEL	_rxstr
;	.line	240; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='e')
	MOVF	_rxstr, W, B
	XORLW	0x65
	BNZ	_01781_DS_
;	.line	242; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	analogico();
	CALL	_analogico
_01781_DS_:
	BANKSEL	_rxstr
;	.line	244; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='l')
	MOVF	_rxstr, W, B
	XORLW	0x6c
	BNZ	_01783_DS_
;	.line	246; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	l293d();
	CALL	_l293d
_01783_DS_:
	BANKSEL	_rxstr
;	.line	248; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='d')
	MOVF	_rxstr, W, B
	XORLW	0x64
	BNZ	_01785_DS_
;	.line	250; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	digital();
	CALL	_digital
_01785_DS_:
	BANKSEL	_rxstr
;	.line	252; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='s')
	MOVF	_rxstr, W, B
	XORLW	0x73
	BNZ	_01788_DS_
;	.line	254; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	puertob();
	CALL	_puertob
_01788_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__setup	code
_setup:
;	.line	210; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	TRISB=0;
	CLRF	_TRISB
;	.line	211; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(21,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x15
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	212; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(22,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x16
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	213; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(23,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	214; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(24,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	216; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(25,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x19
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	217; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(26,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1a
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	218; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(27,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1b
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	219; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	pinmode(28,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	221; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(8);
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	222; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(9);
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	223; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(10);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	224; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(11);
	MOVLW	0x0b
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	225; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	ServoAttach(12);
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_tortucaro__servos	code
_servos:
;	.line	153; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	void servos()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	158; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	int val=0;
	CLRF	r0x00
_01702_DS_:
;	.line	160; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x02
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x02, _receivedbyte
	MOVF	r0x02, W
	BZ	_01702_DS_
;	.line	161; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	162; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01716_DS_
;	.line	164; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='1')
	MOVFF	_rxstr, r0x02
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01706_DS_
;	.line	166; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=10;
	MOVLW	0x0a
	MOVWF	r0x00
_01706_DS_:
;	.line	168; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01708_DS_
;	.line	170; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=11;
	MOVLW	0x0b
	MOVWF	r0x00
_01708_DS_:
;	.line	172; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01710_DS_
;	.line	174; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=12;
	MOVLW	0x0c
	MOVWF	r0x00
_01710_DS_:
;	.line	176; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='4')
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01712_DS_
;	.line	178; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=8;
	MOVLW	0x08
	MOVWF	r0x00
_01712_DS_:
;	.line	180; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='5')
	MOVF	r0x02, W
	XORLW	0x35
	BNZ	_01716_DS_
;	.line	182; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=9;
	MOVLW	0x09
	MOVWF	r0x00
_01716_DS_:
	BANKSEL	_rxstr
;	.line	185; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[0]=0;
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	186; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
_01717_DS_:
;	.line	187; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x02
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x02, _receivedbyte
	MOVF	r0x02, W
	BZ	_01717_DS_
;	.line	188; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	189; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01721_DS_
;	.line	197; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	resultado = rxstr[0];
	MOVFF	_rxstr, r0x02
;	.line	198; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
; removed redundant BANKSEL
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
;	.line	199; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	ServoWrite(val,resultado);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
_01721_DS_:
	BANKSEL	_rxstr
;	.line	201; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[0]=0;
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	202; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
;	.line	205; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	return;
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__puertob	code
_puertob:
;	.line	132; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	void puertob()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
_01692_DS_:
;	.line	139; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
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
	BZ	_01692_DS_
;	.line	141; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
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
;	.line	142; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01697_DS_
;	.line	145; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	resultado = rxstr[0];
	MOVFF	_rxstr, r0x00
;	.line	146; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
; removed redundant BANKSEL
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	CLRF	INDF0
;	.line	147; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	PORTB=resultado;
	MOVF	r0x00, W
	MOVWF	_PORTB
_01697_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__analogico	code
_analogico:
;	.line	74; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	void analogico()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	80; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	unsigned int val=0;
	CLRF	r0x00
_01638_DS_:
;	.line	86; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte2=CDCgets(rxstr2);
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
;	.line	87; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte2>0)
	MOVF	_receivedbyte2, W, B
	BZ	_01638_DS_
;	.line	89; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='1')
	MOVFF	_rxstr2, r0x02
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01620_DS_
;	.line	91; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=13;
	MOVLW	0x0d
	MOVWF	r0x00
_01620_DS_:
;	.line	93; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01622_DS_
;	.line	95; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=14;
	MOVLW	0x0e
	MOVWF	r0x00
_01622_DS_:
;	.line	97; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01624_DS_
;	.line	99; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=15;
	MOVLW	0x0f
	MOVWF	r0x00
_01624_DS_:
;	.line	101; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='4')
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01626_DS_
;	.line	103; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=16;
	MOVLW	0x10
	MOVWF	r0x00
_01626_DS_:
;	.line	105; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='5')
	MOVF	r0x02, W
	XORLW	0x35
	BNZ	_01628_DS_
;	.line	107; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=17;
	MOVLW	0x11
	MOVWF	r0x00
_01628_DS_:
;	.line	109; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='6')
	MOVF	r0x02, W
	XORLW	0x36
	BNZ	_01630_DS_
;	.line	111; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=18;
	MOVLW	0x12
	MOVWF	r0x00
_01630_DS_:
;	.line	113; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='7')
	MOVF	r0x02, W
	XORLW	0x37
	BNZ	_01632_DS_
;	.line	115; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=19;
	MOVLW	0x13
	MOVWF	r0x00
_01632_DS_:
;	.line	117; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='8')
	MOVF	r0x02, W
	XORLW	0x38
	BNZ	_01634_DS_
;	.line	119; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=20;
	MOVLW	0x14
	MOVWF	r0x00
_01634_DS_:
	BANKSEL	_receivedbyte2
;	.line	121; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte2=0;
	CLRF	_receivedbyte2, B
;	.line	125; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	valor=analogread(val);
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
;	.line	126; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	x_ftoa(valor,chaine,2,2);
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_261)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_261)
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
;	.line	127; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	strcat(chaine,"f\n");
	MOVLW	UPPER(__str_3)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_3)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_3)
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_261)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_261)
	MOVWF	POSTDEC1
	CALL	_strcat
	MOVLW	0x06
	ADDWF	FSR1L, F
;	.line	128; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	tam=strlen(chaine);
	MOVLW	0x80
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_261)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_261)
	MOVWF	POSTDEC1
	CALL	_strlen
	MOVWF	r0x00
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	129; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	CDCputs(chaine,tam);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_analogico_chaine_1_261)
	MOVWF	POSTDEC1
	MOVLW	LOW(_analogico_chaine_1_261)
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
;	.line	34; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	void l293d()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	39; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	int val=0;
	CLRF	r0x00
	CLRF	r0x01
_01580_DS_:
;	.line	43; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte2=CDCgets(rxstr2);
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
;	.line	44; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte2>0)
	MOVF	_receivedbyte2, W, B
	BZ	_01580_DS_
;	.line	46; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='1')
	MOVFF	_rxstr2, r0x02
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01568_DS_
;	.line	48; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=96;
	MOVLW	0x60
	MOVWF	r0x00
	CLRF	r0x01
_01568_DS_:
;	.line	50; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01570_DS_
;	.line	52; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=144;
	MOVLW	0x90
	MOVWF	r0x00
	CLRF	r0x01
_01570_DS_:
;	.line	54; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01572_DS_
;	.line	56; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=64;
	MOVLW	0x40
	MOVWF	r0x00
	CLRF	r0x01
_01572_DS_:
;	.line	58; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='4')
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01574_DS_
;	.line	60; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=32;
	MOVLW	0x20
	MOVWF	r0x00
	CLRF	r0x01
_01574_DS_:
;	.line	62; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr2[0]=='5')
	MOVF	r0x02, W
	XORLW	0x35
	BNZ	_01576_DS_
;	.line	64; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	val=0;
	CLRF	r0x00
	CLRF	r0x01
_01576_DS_:
	BANKSEL	_receivedbyte2
;	.line	66; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte2=0;
	CLRF	_receivedbyte2, B
;	.line	71; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	valor=val;
	MOVFF	r0x00, _valor
	MOVFF	r0x01, (_valor + 1)
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__digital	code
_digital:
;	.line	10; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	void digital()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	12; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	int sens=0;
	CLRF	r0x00
	CLRF	r0x01
_01513_DS_:
;	.line	13; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x02
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x02, _receivedbyte
	MOVF	r0x02, W
	BZ	_01513_DS_
;	.line	14; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	15; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01525_DS_
;	.line	17; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='4')
	MOVFF	_rxstr, r0x02
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01517_DS_
;	.line	18; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	sens=21;
	MOVLW	0x15
	MOVWF	r0x00
	CLRF	r0x01
_01517_DS_:
;	.line	19; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01519_DS_
;	.line	20; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	sens=22;
	MOVLW	0x16
	MOVWF	r0x00
	CLRF	r0x01
_01519_DS_:
;	.line	21; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01521_DS_
;	.line	22; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	sens=23;
	MOVLW	0x17
	MOVWF	r0x00
	CLRF	r0x01
_01521_DS_:
;	.line	23; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if(rxstr[0]=='1')
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01525_DS_
;	.line	24; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	sens=24;
	MOVLW	0x18
	MOVWF	r0x00
	CLRF	r0x01
_01525_DS_:
	BANKSEL	_rxstr
;	.line	26; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	rxstr[0]=0;
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	27; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
;	.line	28; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	if (digitalread(sens)) 
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVFF	PRODL, r0x01
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	IORWF	r0x01, W
	BZ	_01527_DS_
;	.line	29; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	CDCputs("0",1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	UPPER(__str_1)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_1)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01529_DS_
_01527_DS_:
;	.line	31; /home/valentin/.icaro/firmware/source/tortucaro/user-tortucaro.c	CDCputs("1",1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	UPPER(__str_2)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_2)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_2)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
_01529_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__env_cdc	code
_env_cdc:
;	.line	40; /home/valentin/.icaro/firmware/tmp/__cdc.c	void env_cdc(int valor)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	43; /home/valentin/.icaro/firmware/tmp/__cdc.c	int tam=0;
	CLRF	r0x02
;	.line	44; /home/valentin/.icaro/firmware/tmp/__cdc.c	itoa(valor,chaine,10);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVLW	HIGH(_env_cdc_chaine_1_250)
	MOVWF	POSTDEC1
	MOVLW	LOW(_env_cdc_chaine_1_250)
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_itoa
	MOVLW	0x05
	ADDWF	FSR1L, F
;	.line	45; /home/valentin/.icaro/firmware/tmp/__cdc.c	if (valor<1000) tam=4;
	MOVF	r0x01, W
	ADDLW	0x80
	ADDLW	0x7d
	BNZ	_01506_DS_
	MOVLW	0xe8
	SUBWF	r0x00, W
_01506_DS_:
	BC	_01490_DS_
	MOVLW	0x04
	MOVWF	r0x02
_01490_DS_:
;	.line	46; /home/valentin/.icaro/firmware/tmp/__cdc.c	if (valor<100) tam=3;
	MOVF	r0x01, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01507_DS_
	MOVLW	0x64
	SUBWF	r0x00, W
_01507_DS_:
	BC	_01492_DS_
	MOVLW	0x03
	MOVWF	r0x02
_01492_DS_:
;	.line	47; /home/valentin/.icaro/firmware/tmp/__cdc.c	if (valor<10) tam=2;
	MOVF	r0x01, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01508_DS_
	MOVLW	0x0a
	SUBWF	r0x00, W
_01508_DS_:
	BC	_01494_DS_
	MOVLW	0x02
	MOVWF	r0x02
_01494_DS_:
;	.line	48; /home/valentin/.icaro/firmware/tmp/__cdc.c	strcat(chaine,"\n");
	MOVLW	UPPER(__str_0)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_0)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_0)
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_env_cdc_chaine_1_250)
	MOVWF	POSTDEC1
	MOVLW	LOW(_env_cdc_chaine_1_250)
	MOVWF	POSTDEC1
	CALL	_strcat
	MOVLW	0x06
	ADDWF	FSR1L, F
;	.line	49; /home/valentin/.icaro/firmware/tmp/__cdc.c	CDCputs(chaine,tam);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_env_cdc_chaine_1_250)
	MOVWF	POSTDEC1
	MOVLW	LOW(_env_cdc_chaine_1_250)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	50; /home/valentin/.icaro/firmware/tmp/__cdc.c	Delayms(10);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__init_CDC	code
_init_CDC:
;	.line	17; /home/valentin/.icaro/firmware/tmp/__cdc.c	INTCON=0;
	CLRF	_INTCON
;	.line	18; /home/valentin/.icaro/firmware/tmp/__cdc.c	INTCON2=0xC0;
	MOVLW	0xc0
	MOVWF	_INTCON2
;	.line	19; /home/valentin/.icaro/firmware/tmp/__cdc.c	UCON=0;
	CLRF	_UCON
;	.line	20; /home/valentin/.icaro/firmware/tmp/__cdc.c	UCFG=0;
	CLRF	_UCFG
;	.line	21; /home/valentin/.icaro/firmware/tmp/__cdc.c	UEP0=0;UEP1=0;UEP2=0;UEP3=0;UEP4=0;UEP5=0;
	CLRF	_UEP0
	CLRF	_UEP1
	CLRF	_UEP2
	CLRF	_UEP3
	CLRF	_UEP4
	CLRF	_UEP5
;	.line	22; /home/valentin/.icaro/firmware/tmp/__cdc.c	UEP6=0;UEP7=0;UEP8=0;UEP9=0;UEP10=0;UEP11=0;
	CLRF	_UEP6
	CLRF	_UEP7
	CLRF	_UEP8
	CLRF	_UEP9
	CLRF	_UEP10
	CLRF	_UEP11
;	.line	23; /home/valentin/.icaro/firmware/tmp/__cdc.c	UEP12=0;UEP13=0;UEP14=0;UEP15=0;
	CLRF	_UEP12
	CLRF	_UEP13
	CLRF	_UEP14
	CLRF	_UEP15
;	.line	25; /home/valentin/.icaro/firmware/tmp/__cdc.c	Delayms(2000);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x07
	MOVWF	POSTDEC1
	MOVLW	0xd0
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	27; /home/valentin/.icaro/firmware/tmp/__cdc.c	UCFG = 0x14; 				// Enable pullup resistors; full speed mode
	MOVLW	0x14
	MOVWF	_UCFG
	BANKSEL	_deviceState
;	.line	28; /home/valentin/.icaro/firmware/tmp/__cdc.c	deviceState = DETACHED;
	CLRF	_deviceState, B
	BANKSEL	_remoteWakeup
;	.line	29; /home/valentin/.icaro/firmware/tmp/__cdc.c	remoteWakeup = 0x00;
	CLRF	_remoteWakeup, B
	BANKSEL	_currentConfiguration
;	.line	30; /home/valentin/.icaro/firmware/tmp/__cdc.c	currentConfiguration = 0x00;
	CLRF	_currentConfiguration, B
_01472_DS_:
	BANKSEL	_deviceState
;	.line	32; /home/valentin/.icaro/firmware/tmp/__cdc.c	while(deviceState != CONFIGURED)
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_01475_DS_
;	.line	34; /home/valentin/.icaro/firmware/tmp/__cdc.c	EnableUSBModule();
	CALL	_EnableUSBModule
;	.line	35; /home/valentin/.icaro/firmware/tmp/__cdc.c	ProcessUSBTransactions();
	CALL	_ProcessUSBTransactions
	BRA	_01472_DS_
_01475_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCInitEndpoint	code
_CDCInitEndpoint:
	BANKSEL	_line_config
;	.line	167; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	line_config.dwDTERate = USB_CDC_BAUD_RATE;
	CLRF	_line_config, B
	MOVLW	0xc2
; removed redundant BANKSEL
	MOVWF	(_line_config + 1), B
; removed redundant BANKSEL
;	.line	168; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	line_config.bCharFormat = USB_CDC_STOP_BITS;
	CLRF	(_line_config + 2), B
; removed redundant BANKSEL
;	.line	169; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	line_config.bParityType = USB_CDC_PARITY;
	CLRF	(_line_config + 3), B
;	.line	170; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	line_config.bDataBits = USB_CDC_DATA_BITS;
	MOVLW	0x08
; removed redundant BANKSEL
	MOVWF	(_line_config + 4), B
	BANKSEL	_zlp
;	.line	171; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue0=0;
	CLRF	_zlp, B
; removed redundant BANKSEL
;	.line	172; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue1=0;
	CLRF	(_zlp + 1), B
; removed redundant BANKSEL
;	.line	173; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue2=0;
	CLRF	(_zlp + 2), B
; removed redundant BANKSEL
;	.line	174; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue3=0;
	CLRF	(_zlp + 3), B
; removed redundant BANKSEL
;	.line	175; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue4=0;
	CLRF	(_zlp + 4), B
; removed redundant BANKSEL
;	.line	176; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue5=0;
	CLRF	(_zlp + 5), B
; removed redundant BANKSEL
;	.line	177; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue6=0;
	CLRF	(_zlp + 6), B
; removed redundant BANKSEL
;	.line	178; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	zlp.wValue7=0;
	CLRF	(_zlp + 7), B
;	.line	183; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	USB_COMM_EP_UEP = EP_IN | HSHK_EN;
	MOVLW	0x1a
	MOVWF	_UEP2
;	.line	186; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	CDC_DATA_EP_UEP = EP_OUT_IN | HSHK_EN;
	MOVLW	0x1e
	MOVWF	_UEP3
;	.line	190; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(USB_COMM_EP_NUM).ADDR = PTR16(&CDCControlBuffer);
	MOVLW	LOW(_CDCControlBuffer)
	BANKSEL	(_ep_bdt + 22)
	MOVWF	(_ep_bdt + 22), B
	MOVLW	HIGH(_CDCControlBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 23), B
; #	MOVLW	0x40
; #	MOVWF	(_ep_bdt + 20), B
; #	MOVLW	0x40
;	.line	191; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(USB_COMM_EP_NUM).Stat.uc = BDS_DAT1 | BDS_COWN;
	MOVLW	0x40
; removed redundant BANKSEL
;	.line	194; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Cnt = sizeof(CDCRxBuffer);
	MOVWF	(_ep_bdt + 20), B
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 25), B
;	.line	195; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).ADDR = PTR16(&CDCRxBuffer);
	MOVLW	LOW(_CDCRxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 26), B
	MOVLW	HIGH(_CDCRxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 27), B
;	.line	196; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc = BDS_UOWN | BDS_DAT0 | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 24), B
;	.line	198; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).ADDR = PTR16(&CDCTxBuffer); // +1 
	MOVLW	LOW(_CDCTxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 30), B
	MOVLW	HIGH(_CDCTxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 31), B
;	.line	199; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc = BDS_DAT1 | BDS_COWN; 
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 28), B
;	.line	200; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	deviceState=CONFIGURED; 
	MOVLW	0x05
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCputs	code
_CDCputs:
;	.line	131; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	u8 CDCputs(char *buffer, u8 length) {
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
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	132; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	u8 i=0;
	CLRF	r0x04
	BANKSEL	_deviceState
;	.line	134; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (deviceState != CONFIGURED) return 0;
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_01427_DS_
	CLRF	WREG
	BRA	_01438_DS_
_01427_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	135; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (!CONTROL_LINE) return 0;
	MOVF	_CONTROL_LINE, W, B
	BNZ	_01429_DS_
	CLRF	WREG
	BRA	_01438_DS_
_01429_DS_:
	BANKSEL	(_ep_bdt + 28)
;	.line	136; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (!EP_IN_BD(CDC_DATA_EP_NUM).Stat.UOWN) {
	BTFSC	(_ep_bdt + 28), 7, B
	BRA	_01434_DS_
;	.line	137; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (length > CDC_BULK_IN_SIZE) length = CDC_BULK_IN_SIZE;
	MOVLW	0x41
	SUBWF	r0x03, W
	BNC	_01445_DS_
	MOVLW	0x40
	MOVWF	r0x03
_01445_DS_:
;	.line	138; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	for (i=0; i < length; i++) {
	CLRF	r0x05
_01436_DS_:
	MOVF	r0x03, W
	SUBWF	r0x05, W
	BC	_01446_DS_
;	.line	139; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	CDCTxBuffer[i] = buffer[i];
	MOVLW	LOW(_CDCTxBuffer)
	ADDWF	r0x05, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVLW	HIGH(_CDCTxBuffer)
	ADDWFC	r0x07, F
	MOVF	r0x05, W
	ADDWF	r0x00, W
	MOVWF	r0x08
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x09
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	CALL	__gptrget1
	MOVWF	r0x08
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x08, INDF0
;	.line	138; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	for (i=0; i < length; i++) {
	INCF	r0x05, F
	BRA	_01436_DS_
_01446_DS_:
	MOVFF	r0x05, r0x04
;	.line	148; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Cnt = i;
	MOVF	r0x05, W
	BANKSEL	(_ep_bdt + 29)
	MOVWF	(_ep_bdt + 29), B
;	.line	150; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc &= 0x40;
	MOVLW	0x40
; removed redundant BANKSEL
	ANDWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 28), B
;	.line	151; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS = !EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS;
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
;	.line	153; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc |= BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	IORWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 28), B
_01434_DS_:
;	.line	156; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	return i;
	MOVF	r0x04, W
_01438_DS_:
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
S_tortucaro__CDCgets	code
_CDCgets:
;	.line	98; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	u8 CDCgets(char *buffer) {
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
;	.line	99; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	u8 i=0;
	CLRF	r0x03
	BANKSEL	_deviceState
;	.line	101; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (deviceState != CONFIGURED) return 0;
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_01386_DS_
	CLRF	WREG
	BRA	_01397_DS_
_01386_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	103; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (!CONTROL_LINE) return 0;
	MOVF	_CONTROL_LINE, W, B
	BNZ	_01388_DS_
	CLRF	WREG
	BRA	_01397_DS_
_01388_DS_:
	BANKSEL	(_ep_bdt + 24)
;	.line	105; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (!EP_OUT_BD(CDC_DATA_EP_NUM).Stat.UOWN) {
	BTFSC	(_ep_bdt + 24), 7, B
	BRA	_01393_DS_
;	.line	110; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (length > EP_OUT_BD(CDC_DATA_EP_NUM).Cnt) length = EP_OUT_BD(CDC_DATA_EP_NUM).Cnt;
	MOVLW	0x40
; #	SUBWF	(_ep_bdt + 25), W, B
; #	BTFSC	STATUS, 0
; #	GOTO	_01404_DS_
; #;;;!!! pic16_aopOp:1117 called for a spillLocation -- assigning WREG instead --- CHECK
; #	MOVFF	(_ep_bdt + 25), WREG
; #	CLRF	r0x04
; removed redundant BANKSEL
;	.line	111; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	for (i=0; i < EP_OUT_BD(CDC_DATA_EP_NUM).Cnt; i++) {
	SUBWF	(_ep_bdt + 25), W, B
	BTFSS	STATUS, 0
	MOVFF	(_ep_bdt + 25), WREG
	CLRF	r0x04
_01395_DS_:
	BANKSEL	(_ep_bdt + 25)
	MOVF	(_ep_bdt + 25), W, B
	SUBWF	r0x04, W
	BC	_01405_DS_
;	.line	112; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	buffer[i] = CDCRxBuffer[i];
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
;	.line	111; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	for (i=0; i < EP_OUT_BD(CDC_DATA_EP_NUM).Cnt; i++) {
	INCF	r0x04, F
	BRA	_01395_DS_
_01405_DS_:
	MOVFF	r0x04, r0x03
;	.line	121; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc &= 0x40;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 24)
	ANDWF	(_ep_bdt + 24), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 24), B
;	.line	122; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.DTS = !EP_OUT_BD(CDC_DATA_EP_NUM).Stat.DTS;
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
;	.line	124; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Cnt = sizeof(CDCRxBuffer);
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 25), B
;	.line	125; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc |= BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	IORWF	(_ep_bdt + 24), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 24), B
_01393_DS_:
;	.line	128; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	return i;
	MOVF	r0x03, W
_01397_DS_:
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
;	.line	29; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	void ProcessCDCRequest(void)
	MOVFF	r0x00, POSTDEC1
;	.line	38; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if ((SetupPacket.bmRequestType & USB_TYPE_MASK) != USB_TYPE_CLASS) return;
	MOVLW	0x60
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	XORLW	0x20
	BZ	_01333_DS_
	BRA	_01343_DS_
_01333_DS_:
;	.line	42; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	switch(SetupPacket.bRequest)
	MOVFF	(_SetupPacket + 1), r0x00
	MOVF	r0x00, W
	BNZ	_01370_DS_
	BRA	_01343_DS_
_01370_DS_:
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01372_DS_
	BRA	_01343_DS_
_01372_DS_:
	MOVF	r0x00, W
	XORLW	0x20
	BZ	_01336_DS_
	MOVF	r0x00, W
	XORLW	0x21
	BZ	_01337_DS_
	MOVF	r0x00, W
	XORLW	0x22
	BZ	_01338_DS_
	BRA	_01343_DS_
_01336_DS_:
;	.line	62; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	outPtr = (__data u8 *)&line_config;
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
;	.line	63; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	wCount = sizeof(USB_CDC_Line_Coding) ;
	MOVLW	0x05
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	64; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	requestHandled = 1;				
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	65; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	break;
	BRA	_01343_DS_
_01337_DS_:
;	.line	71; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	outPtr = (__data u8 *)&line_config;
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
;	.line	72; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	wCount = sizeof(USB_CDC_Line_Coding) ;
	MOVLW	0x05
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	73; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	74; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	break;
	BRA	_01343_DS_
_01338_DS_:
	BANKSEL	(_SetupPacket + 2)
;	.line	82; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	if (SetupPacket.wValue0==3) CONTROL_LINE=1;
	MOVF	(_SetupPacket + 2), W, B
	XORLW	0x03
	BNZ	_01340_DS_
	MOVLW	0x01
	BANKSEL	_CONTROL_LINE
	MOVWF	_CONTROL_LINE, B
	BRA	_01341_DS_
_01340_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	83; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	else CONTROL_LINE=0;		
	CLRF	_CONTROL_LINE, B
_01341_DS_:
;	.line	84; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	outPtr = (__data u8 *)&zlp;
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
;	.line	85; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	wCount = sizeof(Zero_Packet_Length) ;
	MOVLW	0x08
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	86; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	requestHandled = 1;						
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_01343_DS_:
;	.line	88; /home/valentin/.icaro/firmware/tmp/usb/usb_cdc.c	}
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessUSBTransactions	code
_ProcessUSBTransactions:
;	.line	743; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void ProcessUSBTransactions(void) {
	MOVFF	r0x00, POSTDEC1
; #	MOVF	_deviceState, W, B
; #	BTFSS	STATUS, 2
; #	GOTO	_01246_DS_
; #	GOTO	_01272_DS_
; #	BTFSS	_UIRbits, 2
	BANKSEL	_deviceState
;	.line	745; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(deviceState == DETACHED)
	MOVF	_deviceState, W, B
;	.line	746; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	return;
	BZ	_01272_DS_
;	.line	749; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(UIRbits.ACTVIF && UIEbits.ACTVIE)
	BTFSS	_UIRbits, 2
; #	GOTO	_01248_DS_
; #	BTFSS	_UIEbits, 2
; #	GOTO	_01248_DS_
; #	CALL	_UnSuspend
; #	CLRF	r0x00
;	.line	750; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UnSuspend();
	BRA	_01248_DS_
;	.line	754; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(UCONbits.SUSPND == 1)
	BTFSC	_UIEbits, 2
	CALL	_UnSuspend
_01248_DS_:
	CLRF	r0x00
	BTFSC	_UCONbits, 1
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
;	.line	755; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	return;
	BZ	_01272_DS_
;	.line	758; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (UIRbits.URSTIF && UIEbits.URSTIE) {
	BTFSS	_UIRbits, 0
; #	GOTO	_01253_DS_
; #	BTFSS	_UIEbits, 0
; #	GOTO	_01253_DS_
; #	CALL	_BusReset
; #	BTFSS	_UIRbits, 4
;	.line	759; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	BusReset();
	BRA	_01253_DS_
;	.line	762; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (UIRbits.IDLEIF && UIEbits.IDLEIE) {
	BTFSC	_UIEbits, 0
	CALL	_BusReset
_01253_DS_:
	BTFSS	_UIRbits, 4
; #	GOTO	_01256_DS_
; #	BTFSS	_UIEbits, 4
; #	GOTO	_01256_DS_
; #	CALL	_Suspend
; #	BTFSS	_UIRbits, 6
;	.line	764; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	Suspend();
	BRA	_01256_DS_
;	.line	766; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (UIRbits.SOFIF && UIEbits.SOFIE) {
	BTFSC	_UIEbits, 4
	CALL	_Suspend
_01256_DS_:
	BTFSS	_UIRbits, 6
; #	GOTO	_01259_DS_
; #	BTFSS	_UIEbits, 6
; #	GOTO	_01259_DS_
; #	CALL	_StartOfFrame
; #	BTFSS	_UIRbits, 5
;	.line	767; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	StartOfFrame();
	BRA	_01259_DS_
;	.line	769; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (UIRbits.STALLIF && UIEbits.STALLIE) {
	BTFSC	_UIEbits, 6
	CALL	_StartOfFrame
_01259_DS_:
	BTFSS	_UIRbits, 5
; #	GOTO	_01262_DS_
; #	BTFSS	_UIEbits, 5
; #	GOTO	_01262_DS_
; #	CALL	_Stall
; #	BTFSS	_UIRbits, 1
;	.line	770; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	Stall();
	BRA	_01262_DS_
;	.line	773; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (UIRbits.UERRIF && UIEbits.UERRIE) {
	BTFSC	_UIEbits, 5
	CALL	_Stall
_01262_DS_:
	BTFSS	_UIRbits, 1
; #	GOTO	_01265_DS_
; #	BTFSS	_UIEbits, 1
; #	GOTO	_01265_DS_
; #	BCF	_UIRbits, 1
; #	MOVLW	0x03
;	.line	777; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIRbits.UERRIF = 0;
	BRA	_01265_DS_
;	.line	781; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (deviceState < DEFAULT)
	BTFSC	_UIEbits, 1
	BCF	_UIRbits, 1
_01265_DS_:
	MOVLW	0x03
; #	SUBWF	_deviceState, W, B
; #	BTFSC	STATUS, 0
; #	GOTO	_01268_DS_
; #	GOTO	_01272_DS_
; #	BTFSS	_UIRbits, 3
	BANKSEL	_deviceState
;	.line	782; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	return;
	SUBWF	_deviceState, W, B
;	.line	785; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(UIRbits.TRNIF && UIEbits.TRNIE) {
	BNC	_01272_DS_
	BTFSS	_UIRbits, 3
	BRA	_01272_DS_
	BTFSS	_UIEbits, 3
	BRA	_01272_DS_
;	.line	786; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	ProcessControlTransfer();
	CALL	_ProcessControlTransfer
;	.line	789; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIRbits.TRNIF = 0;
	BCF	_UIRbits, 3
_01272_DS_:
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__BusReset	code
_BusReset:
;	.line	715; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void BusReset() {
	MOVFF	r0x00, POSTDEC1
;	.line	716; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UEIR  = 0x00;
	CLRF	_UEIR
;	.line	717; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIR   = 0x00;
	CLRF	_UIR
;	.line	718; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UEIE  = 0x9f;
	MOVLW	0x9f
	MOVWF	_UEIE
;	.line	719; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIE   = 0x7b;
	MOVLW	0x7b
	MOVWF	_UIE
;	.line	720; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UADDR = 0x00;
	CLRF	_UADDR
;	.line	723; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UEP0 = EP_CTRL | HSHK_EN;
	MOVLW	0x16
	MOVWF	_UEP0
_01228_DS_:
;	.line	726; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	while (UIRbits.TRNIF == 1)
	CLRF	r0x00
	BTFSC	_UIRbits, 3
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01230_DS_
;	.line	727; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIRbits.TRNIF = 0;
	BCF	_UIRbits, 3
	BRA	_01228_DS_
_01230_DS_:
;	.line	730; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UCONbits.PKTDIS = 0;
	BCF	_UCONbits, 4
;	.line	733; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
	BANKSEL	_remoteWakeup
;	.line	735; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	remoteWakeup = 0;                     // Remote wakeup is off by default
	CLRF	_remoteWakeup, B
	BANKSEL	_selfPowered
;	.line	736; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	selfPowered = 0;                      // Self powered is off by default
	CLRF	_selfPowered, B
	BANKSEL	_currentConfiguration
;	.line	737; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	currentConfiguration = 0;             // Clear active configuration
	CLRF	_currentConfiguration, B
;	.line	738; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceState = DEFAULT;
	MOVLW	0x03
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__Suspend	code
_Suspend:
;	.line	685; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void Suspend(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	690; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIEbits.ACTVIE = 1;
	BSF	_UIEbits, 2
;	.line	691; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIRbits.IDLEIF = 0;
	BCF	_UIRbits, 4
;	.line	692; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UCONbits.SUSPND = 1;
	BSF	_UCONbits, 1
;	.line	694; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	PIR2bits.USBIF = 0;
	BCF	_PIR2bits, 5
;	.line	695; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	INTCONbits.RBIF = 0;
	BCF	_INTCONbits, 0
;	.line	696; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	PIE2bits.USBIE = 1;
	BSF	_PIE2bits, 5
;	.line	697; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	INTCONbits.RBIE = 1;
	BSF	_INTCONbits, 3
;	.line	700; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	RCSTAbits.CREN = 0;
	BCF	_RCSTAbits, 4
;	.line	701; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	TXSTAbits.TXEN = 0;
	BCF	_TXSTAbits, 5
	sleep 
;	.line	706; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	RCSTAbits.CREN = 1;
	BSF	_RCSTAbits, 4
;	.line	707; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	TXSTAbits.TXEN = 1;
	BSF	_TXSTAbits, 5
;	.line	709; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	PIE2bits.USBIE = 0;
	BCF	_PIE2bits, 5
;	.line	710; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	INTCONbits.RBIE = 0;
	BCF	_INTCONbits, 3
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__Stall	code
_Stall:
;	.line	671; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void Stall(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	675; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(UEP0bits.EPSTALL == 1) {
	CLRF	r0x00
	BTFSC	_UEP0bits, 0
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01211_DS_
;	.line	677; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
;	.line	678; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UEP0bits.EPSTALL = 0;
	BCF	_UEP0bits, 0
_01211_DS_:
;	.line	680; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIRbits.STALLIF = 0;
	BCF	_UIRbits, 5
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__StartOfFrame	code
_StartOfFrame:
;	.line	666; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIRbits.SOFIF = 0;
	BCF	_UIRbits, 6
	RETURN	

; ; Starting pCode block
S_tortucaro__UnSuspend	code
_UnSuspend:
;	.line	656; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UCONbits.SUSPND = 0;
	BCF	_UCONbits, 1
;	.line	657; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIEbits.ACTVIE = 0;
	BCF	_UIEbits, 2
;	.line	658; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIRbits.ACTVIF = 0;
	BCF	_UIRbits, 2
	RETURN	

; ; Starting pCode block
S_tortucaro__EnableUSBModule	code
_EnableUSBModule:
;	.line	626; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(UCONbits.USBEN == 0) {
	BTFSC	_UCONbits, 3
	BRA	_01179_DS_
;	.line	630; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UCON = 0;
	CLRF	_UCON
;	.line	631; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIE = 0;
	CLRF	_UIE
;	.line	632; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UCONbits.USBEN = 1;
	BSF	_UCONbits, 3
;	.line	633; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceState = ATTACHED;
	MOVLW	0x01
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_01179_DS_:
	BANKSEL	_deviceState
;	.line	637; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if ((deviceState == ATTACHED) && !UCONbits.SE0) {
	MOVF	_deviceState, W, B
	XORLW	0x01
	BNZ	_01183_DS_
	BTFSC	_UCONbits, 5
	BRA	_01183_DS_
;	.line	638; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIR = 0;
	CLRF	_UIR
;	.line	639; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIE = 0;
	CLRF	_UIE
;	.line	640; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIEbits.URSTIE = 1;
	BSF	_UIEbits, 0
;	.line	641; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UIEbits.IDLEIE = 1;
	BSF	_UIEbits, 4
;	.line	642; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceState = POWERED;
	MOVLW	0x02
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_01183_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessControlTransfer	code
_ProcessControlTransfer:
;	.line	536; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void ProcessControlTransfer(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	540; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (USTATbits.DIR == OUT) {
	BTFSC	_USTATbits, 2
	BRA	_01129_DS_
;	.line	543; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 PID = (EP_OUT_BD(0).Stat.uc & 0x3C) >> 2;
	MOVLW	0x3c
	BANKSEL	_ep_bdt
	ANDWF	_ep_bdt, W, B
	MOVWF	r0x00
	RRNCF	r0x00, W
	RRNCF	WREG, W
	ANDLW	0x3f
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
;	.line	544; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (PID == 0x0D)
	XORLW	0x0d
	BNZ	_01113_DS_
;	.line	546; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	SetupStage();
	CALL	_SetupStage
	BRA	_01131_DS_
_01113_DS_:
	BANKSEL	_ctrlTransferStage
;	.line	547; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (ctrlTransferStage == DATA_OUT_STAGE) {
	MOVF	_ctrlTransferStage, W, B
	XORLW	0x01
	BNZ	_01110_DS_
;	.line	550; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	OutDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_OutDataStage
	MOVF	POSTINC1, F
	BANKSEL	_ep_bdt
;	.line	574; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(EP_OUT_BD(0).Stat.DTS)
	BTFSS	_ep_bdt, 6, B
	BRA	_01107_DS_
;	.line	575; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
	BRA	_01131_DS_
_01107_DS_:
;	.line	577; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
	BANKSEL	_ep_bdt
	MOVWF	_ep_bdt, B
	BRA	_01131_DS_
_01110_DS_:
;	.line	581; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
	BRA	_01131_DS_
_01129_DS_:
;	.line	584; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if(USTATbits.DIR == IN) {
	CLRF	r0x00
	BTFSC	_USTATbits, 2
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01131_DS_
;	.line	586; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if ((UADDR == 0) && (deviceState == ADDRESS)) {
	MOVF	_UADDR, W
	BNZ	_01118_DS_
	BANKSEL	_deviceState
	MOVF	_deviceState, W, B
	XORLW	0x04
	BNZ	_01118_DS_
;	.line	589; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UADDR = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _UADDR
;	.line	593; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(UADDR == 0)
	MOVF	_UADDR, W
	BNZ	_01118_DS_
;	.line	596; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceState = DEFAULT;
	MOVLW	0x03
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_01118_DS_:
	BANKSEL	_ctrlTransferStage
;	.line	599; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (ctrlTransferStage == DATA_IN_STAGE) {
	MOVF	_ctrlTransferStage, W, B
	XORLW	0x02
	BNZ	_01124_DS_
;	.line	601; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	InDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_InDataStage
	MOVF	POSTINC1, F
	BANKSEL	(_ep_bdt + 4)
;	.line	604; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(EP_IN_BD(0).Stat.DTS)
	BTFSS	(_ep_bdt + 4), 6, B
	BRA	_01121_DS_
;	.line	605; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_01131_DS_
_01121_DS_:
;	.line	607; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
	BANKSEL	(_ep_bdt + 4)
	MOVWF	(_ep_bdt + 4), B
	BRA	_01131_DS_
_01124_DS_:
;	.line	611; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
_01131_DS_:
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__WaitForSetupStage	code
_WaitForSetupStage:
	BANKSEL	_ctrlTransferStage
;	.line	523; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	ctrlTransferStage = SETUP_STAGE;
	CLRF	_ctrlTransferStage, B
;	.line	524; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	525; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	527; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
; removed redundant BANKSEL
;	.line	528; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = 0x00;           // Give control to CPU
	CLRF	(_ep_bdt + 4), B
	RETURN	

; ; Starting pCode block
S_tortucaro__SetupStage	code
_SetupStage:
;	.line	450; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void SetupStage(void) {
	MOVFF	r0x00, POSTDEC1
	BANKSEL	(_ep_bdt + 4)
;	.line	453; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc &= ~BDS_UOWN;
	MOVF	(_ep_bdt + 4), W, B
	MOVWF	r0x00
	BCF	r0x00, 7
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
; removed redundant BANKSEL
;	.line	454; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc &= ~BDS_UOWN;
	MOVF	_ep_bdt, W, B
	MOVWF	r0x00
	BCF	r0x00, 7
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
	BANKSEL	_ctrlTransferStage
;	.line	457; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	ctrlTransferStage = SETUP_STAGE;
	CLRF	_ctrlTransferStage, B
	BANKSEL	_requestHandled
;	.line	458; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 0;                   // Default is that request hasn't been handled
	CLRF	_requestHandled, B
	BANKSEL	_HIDPostProcess
;	.line	459; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	HIDPostProcess = 0;                   // Assume standard request until know otherwise
	CLRF	_HIDPostProcess, B
	BANKSEL	_wCount
;	.line	460; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = 0;                           // No u8s transferred
	CLRF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	463; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	ProcessStandardRequest();
	CALL	_ProcessStandardRequest
;	.line	473; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if ((SetupPacket.bmRequestType & USB_RECIP_MASK) == USB_RECIP_INTERFACE)  
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01066_DS_
;	.line	474; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	ProcessCDCRequest();
	CALL	_ProcessCDCRequest
_01066_DS_:
	BANKSEL	_requestHandled
;	.line	477; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (!requestHandled) {
	MOVF	_requestHandled, W, B
	BNZ	_01073_DS_
;	.line	479; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	480; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
; #	MOVLW	0x84
; #	MOVWF	_ep_bdt, B
; #	MOVLW	0x84
;	.line	481; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_BSTALL;
	MOVLW	0x84
; removed redundant BANKSEL
;	.line	482; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_BSTALL;
	MOVWF	_ep_bdt, B
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_01074_DS_
_01073_DS_:
	BANKSEL	_SetupPacket
;	.line	484; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (SetupPacket.bmRequestType & 0x80) {
	BTFSS	_SetupPacket, 7, B
	BRA	_01070_DS_
	BANKSEL	(_wCount + 1)
;	.line	486; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(SetupPacket.wLength < wCount)
	MOVF	(_wCount + 1), W, B
	BANKSEL	(_SetupPacket + 7)
	SUBWF	(_SetupPacket + 7), W, B
	BNZ	_01096_DS_
	BANKSEL	_wCount
	MOVF	_wCount, W, B
	BANKSEL	(_SetupPacket + 6)
	SUBWF	(_SetupPacket + 6), W, B
_01096_DS_:
	BC	_01068_DS_
;	.line	487; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = SetupPacket.wLength;
	MOVFF	(_SetupPacket + 6), _wCount
	MOVFF	(_SetupPacket + 7), (_wCount + 1)
_01068_DS_:
;	.line	488; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	InDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_InDataStage
	MOVF	POSTINC1, F
;	.line	489; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	ctrlTransferStage = DATA_IN_STAGE;
	MOVLW	0x02
	BANKSEL	_ctrlTransferStage
	MOVWF	_ctrlTransferStage, B
;	.line	491; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	492; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	493; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN;
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
;	.line	496; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).ADDR = PTR16(&controlTransferBuffer);
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 6), B
	MOVLW	HIGH(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 7), B
;	.line	498; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_01074_DS_
_01070_DS_:
;	.line	502; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	ctrlTransferStage = DATA_OUT_STAGE;
	MOVLW	0x01
	BANKSEL	_ctrlTransferStage
	MOVWF	_ctrlTransferStage, B
	BANKSEL	(_ep_bdt + 5)
;	.line	505; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Cnt = 0;
	CLRF	(_ep_bdt + 5), B
;	.line	506; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
;	.line	509; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 1), B
;	.line	510; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&controlTransferBuffer);
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	512; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
_01074_DS_:
;	.line	516; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	UCONbits.PKTDIS = 0;
	BCF	_UCONbits, 4
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__OutDataStage	code
_OutDataStage:
;	.line	414; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void OutDataStage(unsigned char ep) {
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
;	.line	417; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	bufferSize = ((0x03 & EP_OUT_BD(ep).Stat.uc) << 8) | EP_OUT_BD(ep).Cnt;
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
;	.line	424; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = wCount + bufferSize;
	MOVF	r0x00, W
	BANKSEL	_wCount
	ADDWF	_wCount, F, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	ADDWFC	(_wCount + 1), F, B
;	.line	426; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	outPtr = (u8*)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	430; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	CLRF	r0x02
	CLRF	r0x03
_01045_DS_:
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_01058_DS_
	MOVF	r0x00, W
	SUBWF	r0x02, W
_01058_DS_:
	BC	_01047_DS_
;	.line	434; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	*inPtr++ = *outPtr++;
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
	BNC	_01059_DS_
; removed redundant BANKSEL
	INCFSZ	(_outPtr + 1), F, B
	BRA	_11849_DS_
; removed redundant BANKSEL
	INCF	(_outPtr + 2), F, B
_11849_DS_:
_01059_DS_:
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrput1
	BANKSEL	_inPtr
	INCF	_inPtr, F, B
	BNC	_01060_DS_
; removed redundant BANKSEL
	INCFSZ	(_inPtr + 1), F, B
	BRA	_21850_DS_
; removed redundant BANKSEL
	INCF	(_inPtr + 2), F, B
_21850_DS_:
_01060_DS_:
;	.line	430; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	INFSNZ	r0x02, F
	INCF	r0x03, F
	BRA	_01045_DS_
_01047_DS_:
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
;	.line	367; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void InDataStage(unsigned char ep) {
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
;	.line	374; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(wCount < EP0_BUFFER_SIZE)
	MOVLW	0x00
	BANKSEL	(_wCount + 1)
	SUBWF	(_wCount + 1), W, B
	BNZ	_01030_DS_
	MOVLW	0x40
; removed redundant BANKSEL
	SUBWF	_wCount, W, B
_01030_DS_:
	BC	_01012_DS_
;	.line	375; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	bufferSize = wCount;
	MOVFF	_wCount, r0x01
	MOVFF	(_wCount + 1), r0x02
	BRA	_01013_DS_
_01012_DS_:
;	.line	377; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	bufferSize = EP0_BUFFER_SIZE;
	MOVLW	0x40
	MOVWF	r0x01
	CLRF	r0x02
_01013_DS_:
;	.line	385; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(ep).Stat.uc &= ~(BDS_BC8 | BDS_BC9);
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
;	.line	386; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(ep).Stat.uc |= (u8)((bufferSize & 0x0300) >> 8);
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
;	.line	387; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(ep).Cnt = (u8)(bufferSize & 0xFF);
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
;	.line	388; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	EP_IN_BD(ep).ADDR = PTR16(&controlTransferBuffer);
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
;	.line	393; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = wCount - bufferSize;
	MOVF	r0x01, W
	BANKSEL	_wCount
	SUBWF	_wCount, F, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	SUBWFB	(_wCount + 1), F, B
;	.line	396; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	inPtr = (u8 *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_inPtr + 1)
	MOVWF	(_inPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_inPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_inPtr + 2), B
;	.line	401; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	CLRF	r0x00
_01016_DS_:
	MOVFF	r0x00, r0x03
	CLRF	r0x04
	MOVF	r0x02, W
	SUBWF	r0x04, W
	BNZ	_01036_DS_
	MOVF	r0x01, W
	SUBWF	r0x03, W
_01036_DS_:
	BC	_01018_DS_
;	.line	405; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	*inPtr++ = *outPtr++;
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
	BNC	_01037_DS_
; removed redundant BANKSEL
	INCFSZ	(_outPtr + 1), F, B
	BRA	_31851_DS_
; removed redundant BANKSEL
	INCF	(_outPtr + 2), F, B
_31851_DS_:
_01037_DS_:
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
	BANKSEL	_inPtr
	INCF	_inPtr, F, B
	BNC	_01038_DS_
; removed redundant BANKSEL
	INCFSZ	(_inPtr + 1), F, B
	BRA	_41852_DS_
; removed redundant BANKSEL
	INCF	(_inPtr + 2), F, B
_41852_DS_:
_01038_DS_:
;	.line	401; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	INCF	r0x00, F
	BRA	_01016_DS_
_01018_DS_:
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
;	.line	256; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	void ProcessStandardRequest(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	257; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 request = SetupPacket.bRequest;
	MOVFF	(_SetupPacket + 1), r0x00
	BANKSEL	_SetupPacket
;	.line	259; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if((SetupPacket.bmRequestType & 0x60) != 0x00)
	MOVF	_SetupPacket, W, B
; #	ANDLW	0x60
; #	BTFSC	STATUS, 2
; #	GOTO	_00925_DS_
; #	GOTO	_00957_DS_
; #	MOVF	r0x00, W
;	.line	262; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	return;
	ANDLW	0x60
;	.line	264; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (request == SET_ADDRESS) {
	BTFSS	STATUS, 2
	BRA	_00957_DS_
	MOVF	r0x00, W
	XORLW	0x05
	BNZ	_00955_DS_
;	.line	272; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	273; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceState = ADDRESS;
	MOVLW	0x04
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
;	.line	274; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceAddress = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _deviceAddress
	BRA	_00957_DS_
_00955_DS_:
;	.line	276; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (request == GET_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x06
	BNZ	_00952_DS_
;	.line	277; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	GetDescriptor();
	CALL	_GetDescriptor
	BRA	_00957_DS_
_00952_DS_:
;	.line	279; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (request == SET_CONFIGURATION) {
	MOVF	r0x00, W
	XORLW	0x09
	BNZ	_00949_DS_
;	.line	283; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	284; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	currentConfiguration = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _currentConfiguration
	BANKSEL	_currentConfiguration
;	.line	287; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (currentConfiguration == 0)
	MOVF	_currentConfiguration, W, B
	BNZ	_00927_DS_
;	.line	290; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceState = ADDRESS;
	MOVLW	0x04
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	BRA	_00957_DS_
_00927_DS_:
;	.line	293; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	deviceState = CONFIGURED;
	MOVLW	0x05
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
;	.line	303; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	CDCInitEndpoint();
	CALL	_CDCInitEndpoint
	BRA	_00957_DS_
_00949_DS_:
;	.line	313; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (request == GET_CONFIGURATION) {
	MOVF	r0x00, W
	XORLW	0x08
	BNZ	_00946_DS_
;	.line	317; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	318; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	outPtr = (u8*)&currentConfiguration;
	MOVLW	HIGH(_currentConfiguration)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_currentConfiguration)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	319; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = 1;
	MOVLW	0x01
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00957_DS_
_00946_DS_:
;	.line	321; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (request == GET_STATUS) {
	MOVF	r0x00, W
	BNZ	_00943_DS_
;	.line	322; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	GetStatus();
	CALL	_GetStatus
	BRA	_00957_DS_
_00943_DS_:
;	.line	324; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if ((request == CLEAR_FEATURE) ||
	MOVF	r0x00, W
	XORLW	0x01
	BZ	_00938_DS_
;	.line	325; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	(request == SET_FEATURE)) {
	MOVF	r0x00, W
	XORLW	0x03
	BNZ	_00939_DS_
_00938_DS_:
;	.line	326; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	SetFeature();
	CALL	_SetFeature
	BRA	_00957_DS_
_00939_DS_:
;	.line	328; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (request == GET_INTERFACE) {
	MOVF	r0x00, W
	XORLW	0x0a
	BNZ	_00936_DS_
;	.line	334; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	_controlTransferBuffer
;	.line	335; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	controlTransferBuffer[0] = 0;
	CLRF	_controlTransferBuffer, B
;	.line	336; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	outPtr = (u8 *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	337; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = 1;
	MOVLW	0x01
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00957_DS_
_00936_DS_:
;	.line	339; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (request == SET_INTERFACE) {
	MOVF	r0x00, W
	XORLW	0x0b
	BNZ	_00957_DS_
;	.line	344; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_00957_DS_:
;	.line	351; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (request == SYNCH_FRAME) {
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__SetFeature	code
_SetFeature:
;	.line	212; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	static void SetFeature(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	213; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 recipient = SetupPacket.bmRequestType & 0x1F;
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
	MOVWF	r0x00
;	.line	214; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 feature = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), r0x01
;	.line	219; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (recipient == 0x00) {
	MOVF	r0x00, W
	BNZ	_00876_DS_
;	.line	221; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (feature == DEVICE_REMOTE_WAKEUP) {
	MOVF	r0x01, W
	XORLW	0x01
	BZ	_00909_DS_
	BRA	_00878_DS_
_00909_DS_:
;	.line	222; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	(_SetupPacket + 1)
;	.line	223; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (SetupPacket.bRequest == SET_FEATURE)
	MOVF	(_SetupPacket + 1), W, B
	XORLW	0x03
	BNZ	_00858_DS_
;	.line	224; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	remoteWakeup = 1;
	MOVLW	0x01
	BANKSEL	_remoteWakeup
	MOVWF	_remoteWakeup, B
	BRA	_00878_DS_
_00858_DS_:
	BANKSEL	_remoteWakeup
;	.line	226; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	remoteWakeup = 0;
	CLRF	_remoteWakeup, B
	BRA	_00878_DS_
_00876_DS_:
;	.line	230; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (recipient == 0x02) {
	MOVF	r0x00, W
	XORLW	0x02
	BZ	_00913_DS_
	BRA	_00878_DS_
_00913_DS_:
;	.line	232; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 endpointNum = SetupPacket.wIndex0 & 0x0F;
	MOVLW	0x0f
	BANKSEL	(_SetupPacket + 4)
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x00
;	.line	233; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 endpointDir = SetupPacket.wIndex0 & 0x80;
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x02
;	.line	234; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if ((feature == ENDPOINT_HALT) && (endpointNum != 0)) {
	MOVF	r0x01, W
	BTFSS	STATUS, 2
	BRA	_00878_DS_
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_00878_DS_
;	.line	236; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	239; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	inPtr = (u8 *)&EP_OUT_BD(0) + (endpointNum * 8);
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
;	.line	240; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (endpointDir)
	MOVF	r0x02, W
	BZ	_00863_DS_
;	.line	241; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	inPtr += 4;
	MOVLW	0x04
; removed redundant BANKSEL
	ADDWF	_inPtr, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 2), F, B
_00863_DS_:
	BANKSEL	(_SetupPacket + 1)
;	.line	243; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(SetupPacket.bRequest == SET_FEATURE)
	MOVF	(_SetupPacket + 1), W, B
	XORLW	0x03
	BNZ	_00868_DS_
;	.line	244; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	*inPtr = 0x84;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x03
	MOVLW	0x84
	MOVWF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x03, W
	CALL	__gptrput1
	BRA	_00878_DS_
_00868_DS_:
;	.line	246; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(endpointDir == 1)
	MOVF	r0x02, W
	XORLW	0x01
	BNZ	_00865_DS_
;	.line	247; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	*inPtr = 0x00;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	CLRF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
	BRA	_00878_DS_
_00865_DS_:
;	.line	249; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	*inPtr = 0x88;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	MOVLW	0x88
	MOVWF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
_00878_DS_:
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
;	.line	167; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	static void GetStatus(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	169; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 recipient = SetupPacket.bmRequestType & 0x1F;
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
	MOVWF	r0x00
	BANKSEL	_controlTransferBuffer
;	.line	173; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	controlTransferBuffer[0] = 0;
	CLRF	_controlTransferBuffer, B
; removed redundant BANKSEL
;	.line	174; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	controlTransferBuffer[1] = 0;
	CLRF	(_controlTransferBuffer + 1), B
;	.line	177; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (recipient == 0x00) {
	MOVF	r0x00, W
	BNZ	_00813_DS_
;	.line	179; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	_selfPowered
;	.line	181; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (selfPowered)
	MOVF	_selfPowered, W, B
	BZ	_00800_DS_
;	.line	182; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	controlTransferBuffer[0] |= 0x01;
	MOVLW	0x01
	BANKSEL	_controlTransferBuffer
	IORWF	_controlTransferBuffer, W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	_controlTransferBuffer, B
_00800_DS_:
	BANKSEL	_remoteWakeup
;	.line	183; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (remoteWakeup)
	MOVF	_remoteWakeup, W, B
	BTFSC	STATUS, 2
	BRA	_00814_DS_
;	.line	184; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	controlTransferBuffer[0] |= 0x02;
	MOVLW	0x02
	BANKSEL	_controlTransferBuffer
	IORWF	_controlTransferBuffer, W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	_controlTransferBuffer, B
	BRA	_00814_DS_
_00813_DS_:
;	.line	186; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (recipient == 0x01) {
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00810_DS_
;	.line	188; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BRA	_00814_DS_
_00810_DS_:
;	.line	190; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (recipient == 0x02) {
	MOVF	r0x00, W
	XORLW	0x02
	BZ	_00849_DS_
	BRA	_00814_DS_
_00849_DS_:
;	.line	192; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 endpointNum = SetupPacket.wIndex0 & 0x0F;
	MOVLW	0x0f
	BANKSEL	(_SetupPacket + 4)
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x00
;	.line	193; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 endpointDir = SetupPacket.wIndex0 & 0x80;
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x01
;	.line	194; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	197; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	inPtr = (u8 *)&EP_OUT_BD(0) + (endpointNum * 8);
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
;	.line	198; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (endpointDir)
	MOVF	r0x01, W
	BZ	_00804_DS_
;	.line	199; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	inPtr += 4;
	MOVLW	0x04
; removed redundant BANKSEL
	ADDWF	_inPtr, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 2), F, B
_00804_DS_:
;	.line	200; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(*inPtr & BDS_BSTALL)
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
	BTFSS	r0x00, 2
	BRA	_00814_DS_
;	.line	201; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	controlTransferBuffer[0] = 0x01;
	MOVLW	0x01
	BANKSEL	_controlTransferBuffer
	MOVWF	_controlTransferBuffer, B
_00814_DS_:
	BANKSEL	_requestHandled
;	.line	204; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (requestHandled) {
	MOVF	_requestHandled, W, B
	BZ	_00817_DS_
;	.line	205; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	outPtr = (u8 *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	206; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = 2;
	MOVLW	0x02
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
_00817_DS_:
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
;	.line	100; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	static void GetDescriptor(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	BANKSEL	_SetupPacket
;	.line	104; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if(SetupPacket.bmRequestType == 0x80) {
	MOVF	_SetupPacket, W, B
	XORLW	0x80
	BZ	_00786_DS_
	BRA	_00768_DS_
_00786_DS_:
;	.line	105; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 descriptorType  = SetupPacket.wValue1;
	MOVFF	(_SetupPacket + 3), r0x00
;	.line	106; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	u8 descriptorIndex = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), r0x01
;	.line	108; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	if (descriptorType == DEVICE_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00764_DS_
;	.line	112; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	113; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	outPtr = (u8 *)&libdevice_descriptor;
	MOVLW	UPPER(_libdevice_descriptor)
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVLW	HIGH(_libdevice_descriptor)
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_libdevice_descriptor)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	114; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = sizeof(USB_Device_Descriptor);
	MOVLW	0x12
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00768_DS_
_00764_DS_:
;	.line	116; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (descriptorType == CONFIGURATION_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x02
	BNZ	_00761_DS_
;	.line	120; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	131; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	outPtr = (u8 *)&libconfiguration_descriptor;
	MOVLW	UPPER(_libconfiguration_descriptor)
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVLW	HIGH(_libconfiguration_descriptor)
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_libconfiguration_descriptor)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	133; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = libconfiguration_descriptor.Header.wTotalLength;
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
	BRA	_00768_DS_
_00761_DS_:
;	.line	139; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (descriptorType == STRING_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x03
	BNZ	_00758_DS_
;	.line	143; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
; ;multiply lit val:0x03 by variable r0x01 and store in r0x01
;	.line	144; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	outPtr = (u8 *)&libstring_descriptor[descriptorIndex];
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
	MOVF	r0x03, W
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	145; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	wCount = *outPtr;
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
	BRA	_00768_DS_
_00758_DS_:
;	.line	147; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	else if (descriptorType == DEVICE_QUALIFIER_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x06
	BNZ	_00768_DS_
;	.line	151; /home/valentin/.icaro/firmware/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_00768_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__epapout_init	code
_epapout_init:
;	.line	39; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	void epapout_init() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__epapin_init	code
_epapin_init:
;	.line	38; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	void epapin_init() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__epap_out	code
_epap_out:
;	.line	37; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	void epap_out() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__epap_in	code
_epap_in:
;	.line	36; /home/valentin/.icaro/firmware/source/tortucaro/tortucaro.c	void epap_in() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__set_PWM	code
_set_PWM:
;	.line	188; /home/valentin/.icaro/firmware/tmp/pwm.c	void set_PWM(int input, int value)
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
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	192; /home/valentin/.icaro/firmware/tmp/pwm.c	if (input==11)
	MOVF	r0x00, W
	XORLW	0x0b
	BNZ	_00722_DS_
	MOVF	r0x01, W
	BZ	_00723_DS_
_00722_DS_:
	BRA	_00703_DS_
_00723_DS_:
;	.line	195; /home/valentin/.icaro/firmware/tmp/pwm.c	if ((CCP2CON & 0x0F)==0) init_PWM11();
	MOVF	_CCP2CON, W
; #	ANDLW	0x0f
; #	BTFSS	STATUS, 2
; #	GOTO	_00701_DS_
; #	CALL	_init_PWM11
; #	MOVLW	0x03
;	.line	196; /home/valentin/.icaro/firmware/tmp/pwm.c	octet=value & 3;	// extract bit 0 and 1
	ANDLW	0x0f
	BTFSC	STATUS, 2
	CALL	_init_PWM11
	MOVLW	0x03
	ANDWF	r0x02, W
	MOVWF	r0x04
	CLRF	r0x05
;	.line	197; /home/valentin/.icaro/firmware/tmp/pwm.c	octet<<=4;			// rotate left 4 bits
	SWAPF	r0x04, W
	ANDLW	0xf0
	MOVWF	r0x04
;	.line	198; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP2CON&=0x0F;		// reset bit 4:5
	MOVLW	0x0f
	ANDWF	_CCP2CON, F
;	.line	199; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP2CON|=octet;		// put in CCP2CON 4:5
	MOVF	r0x04, W
	IORWF	_CCP2CON, F
;	.line	200; /home/valentin/.icaro/firmware/tmp/pwm.c	value>>=2;			// 8 MSB bits of value
	RLCF	r0x03, W
	RRCF	r0x03, F
	RRCF	r0x02, F
	RLCF	r0x03, W
	RRCF	r0x03, F
	RRCF	r0x02, F
;	.line	201; /home/valentin/.icaro/firmware/tmp/pwm.c	octet=value;		// in octet
	MOVF	r0x02, W
; =DF= MOVFF: SRC op r0x04 replaced by WREG
;	.line	202; /home/valentin/.icaro/firmware/tmp/pwm.c	CCPR2L=octet;		// put in CCPR2L
	MOVWF	_CCPR2L
_00703_DS_:
;	.line	204; /home/valentin/.icaro/firmware/tmp/pwm.c	if (input==12)
	MOVF	r0x00, W
	XORLW	0x0c
	BNZ	_00728_DS_
	MOVF	r0x01, W
	BZ	_00729_DS_
_00728_DS_:
	BRA	_00708_DS_
_00729_DS_:
;	.line	207; /home/valentin/.icaro/firmware/tmp/pwm.c	if ((CCP1CON & 0x0F)==0) init_PWM12();		
	MOVF	_CCP1CON, W
; #	ANDLW	0x0f
; #	BTFSS	STATUS, 2
; #	GOTO	_00705_DS_
; #	CALL	_init_PWM12
; #	MOVLW	0x03
;	.line	208; /home/valentin/.icaro/firmware/tmp/pwm.c	octet=value & 3;	// extract bit 0 and 1
	ANDLW	0x0f
	BTFSC	STATUS, 2
	CALL	_init_PWM12
	MOVLW	0x03
	ANDWF	r0x02, W
	MOVWF	r0x00
	CLRF	r0x01
	MOVF	r0x00, W
	MOVWF	r0x04
;	.line	209; /home/valentin/.icaro/firmware/tmp/pwm.c	octet<<=4;			// rotate left 4 bits
	SWAPF	r0x04, W
	ANDLW	0xf0
	MOVWF	r0x04
;	.line	210; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP1CON&=0x0F;		// reset bit 4:5
	MOVLW	0x0f
	ANDWF	_CCP1CON, F
;	.line	211; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP1CON|=octet;		// put in CCP2CON 4:5
	MOVF	r0x04, W
	IORWF	_CCP1CON, F
;	.line	212; /home/valentin/.icaro/firmware/tmp/pwm.c	value>>=2;			// 8 MSB bits of value
	RLCF	r0x03, W
	RRCF	r0x03, F
	RRCF	r0x02, F
	RLCF	r0x03, W
	RRCF	r0x03, F
	RRCF	r0x02, F
;	.line	213; /home/valentin/.icaro/firmware/tmp/pwm.c	octet=value;		// in octet
	MOVF	r0x02, W
	MOVWF	_CCPR1L
_00708_DS_:
;	.line	214; /home/valentin/.icaro/firmware/tmp/pwm.c	CCPR1L=octet;		// put in CCPR1L			
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__init_PWM12	code
_init_PWM12:
;	.line	181; /home/valentin/.icaro/firmware/tmp/pwm.c	TRISCbits.TRISC2=0;		// C2 is an output
	BCF	_TRISCbits, 2
;	.line	182; /home/valentin/.icaro/firmware/tmp/pwm.c	PR2=0xFF;				// init timer 2 period
	SETF	_PR2
;	.line	183; /home/valentin/.icaro/firmware/tmp/pwm.c	T2CON=0x05;				// prescaler and timer 2 on
	MOVLW	0x05
	MOVWF	_T2CON
;	.line	184; /home/valentin/.icaro/firmware/tmp/pwm.c	CCPR1L=0;				// 8 bits MSB output = 0
	CLRF	_CCPR1L
;	.line	185; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP1CON=0x0F;			// configure for PWM 2 bits LSB = 0
	MOVLW	0x0f
	MOVWF	_CCP1CON
	RETURN	

; ; Starting pCode block
S_tortucaro__init_PWM11	code
_init_PWM11:
;	.line	172; /home/valentin/.icaro/firmware/tmp/pwm.c	TRISCbits.TRISC1=0;		// C1 is an output
	BCF	_TRISCbits, 1
;	.line	173; /home/valentin/.icaro/firmware/tmp/pwm.c	PR2=0xFF;				// init timer 2 period
	SETF	_PR2
;	.line	174; /home/valentin/.icaro/firmware/tmp/pwm.c	T2CON=0x05;				// prescaler and timer 2 on
	MOVLW	0x05
	MOVWF	_T2CON
;	.line	175; /home/valentin/.icaro/firmware/tmp/pwm.c	CCPR2L=0;				// 8 bits MSB output = 0
	CLRF	_CCPR2L
;	.line	176; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP2CON=0x0F;			// configure for PWM 2 bits LSB = 0	
	MOVLW	0x0f
	MOVWF	_CCP2CON
	RETURN	

; ; Starting pCode block
S_tortucaro__PWM_set_percent_dutycycle	code
_PWM_set_percent_dutycycle:
;	.line	151; /home/valentin/.icaro/firmware/tmp/pwm.c	void PWM_set_percent_dutycycle(u8 pin, u8 percent)
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
;	.line	154; /home/valentin/.icaro/firmware/tmp/pwm.c	if (percent == 0)
	MOVF	r0x01, W
	BNZ	_00675_DS_
;	.line	156; /home/valentin/.icaro/firmware/tmp/pwm.c	duty = 0;
	CLRF	r0x02
	CLRF	r0x03
	BRA	_00676_DS_
_00675_DS_:
;	.line	158; /home/valentin/.icaro/firmware/tmp/pwm.c	else if (percent >= 100)
	MOVLW	0x64
	SUBWF	r0x01, W
	BNC	_00672_DS_
	BANKSEL	__pr2_plus1
;	.line	160; /home/valentin/.icaro/firmware/tmp/pwm.c	duty = _pr2_plus1 - 1;
	MOVF	__pr2_plus1, W, B
	ADDLW	0xff
	MOVWF	r0x02
	MOVLW	0xff
; removed redundant BANKSEL
	ADDWFC	(__pr2_plus1 + 1), W, B
	MOVWF	r0x03
	BRA	_00676_DS_
_00672_DS_:
;	.line	164; /home/valentin/.icaro/firmware/tmp/pwm.c	duty = percent * (_pr2_plus1 / 4) / 25;	// (factor PR2/100)
	BCF	STATUS, 0
	BANKSEL	(__pr2_plus1 + 1)
	RRCF	(__pr2_plus1 + 1), W, B
	MOVWF	r0x05
; removed redundant BANKSEL
	RRCF	__pr2_plus1, W, B
	MOVWF	r0x04
	BCF	STATUS, 0
	RRCF	r0x05, F
	RRCF	r0x04, F
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x01
	MOVFF	PRODL, r0x04
	MOVLW	0x04
	ADDWF	FSR1L, F
	CLRF	POSTDEC1
	MOVLW	0x19
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x02
	MOVFF	PRODL, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
_00676_DS_:
;	.line	166; /home/valentin/.icaro/firmware/tmp/pwm.c	PWM_set_dutycycle(pin, duty << 2);
	MOVF	r0x02, W
	MOVWF	r0x01
	ADDWF	r0x01, F
	RLCF	r0x03, W
	MOVWF	r0x04
	BCF	STATUS, 0
	RLCF	r0x01, F
	RLCF	r0x04, F
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_PWM_set_dutycycle
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__PWM_set_dutycycle	code
_PWM_set_dutycycle:
;	.line	98; /home/valentin/.icaro/firmware/tmp/pwm.c	void PWM_set_dutycycle(u8 pin, u16 duty)
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
;	.line	102; /home/valentin/.icaro/firmware/tmp/pwm.c	if (duty > 1023) duty = 1023;		// upper limit (10-bit)
	MOVF	r0x02, W
	ANDLW	0xfc
	BZ	_00635_DS_
	SETF	r0x01
	MOVLW	0x03
	MOVWF	r0x02
_00635_DS_:
;	.line	105; /home/valentin/.icaro/firmware/tmp/pwm.c	pinmode(pin, INPUT);				// PWM pin as INPUT
	MOVFF	r0x00, r0x03
	CLRF	r0x04
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
	BANKSEL	__pr2_plus1
;	.line	107; /home/valentin/.icaro/firmware/tmp/pwm.c	PR2 = _pr2_plus1 - 1;				// set PR2
	MOVF	__pr2_plus1, W, B
	MOVWF	r0x05
	DECF	r0x05, W
	MOVWF	_PR2
;	.line	109; /home/valentin/.icaro/firmware/tmp/pwm.c	if (pin == 11)
	MOVF	r0x00, W
	XORLW	0x0b
	BNZ	_00637_DS_
;	.line	112; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP2CON = Bin(00001111);		// reset also 2 LSbits of duty cycle
	MOVLW	0x0f
	MOVWF	_CCP2CON
;	.line	114; /home/valentin/.icaro/firmware/tmp/pwm.c	temp = duty & Bin(00000011);	// extract 2 LSbits of duty
	MOVLW	0x03
	ANDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
;	.line	115; /home/valentin/.icaro/firmware/tmp/pwm.c	temp <<= 4;						// shift left 4 bits
	SWAPF	r0x05, W
	ANDLW	0xf0
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
;	.line	116; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP2CON |= temp;				// put in CCP2CON 4:5  (DCBx1 and DCBx0)
	IORWF	_CCP2CON, F
;	.line	117; /home/valentin/.icaro/firmware/tmp/pwm.c	CCPR2L = duty >> 2;				// 8 MSbits of duty
	BCF	STATUS, 0
	RRCF	r0x02, W
	MOVWF	r0x07
	RRCF	r0x01, W
	MOVWF	r0x06
	BCF	STATUS, 0
	RRCF	r0x07, F
	RRCF	r0x06, F
	MOVF	r0x06, W
	MOVWF	_CCPR2L
_00637_DS_:
;	.line	120; /home/valentin/.icaro/firmware/tmp/pwm.c	if (pin == 12)
	MOVF	r0x00, W
	XORLW	0x0c
	BNZ	_00639_DS_
;	.line	123; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP1CON = Bin(00001111);
	MOVLW	0x0f
	MOVWF	_CCP1CON
;	.line	125; /home/valentin/.icaro/firmware/tmp/pwm.c	temp = duty & Bin(00000011);	// extract 2 LSbits of the duty
	MOVLW	0x03
	ANDWF	r0x01, W
	MOVWF	r0x00
	CLRF	r0x06
	MOVF	r0x00, W
	MOVWF	r0x05
;	.line	126; /home/valentin/.icaro/firmware/tmp/pwm.c	temp <<= 4;						// shift left 4 bits
	SWAPF	r0x05, W
	ANDLW	0xf0
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
;	.line	127; /home/valentin/.icaro/firmware/tmp/pwm.c	CCP1CON |= temp;				// put in CCP2CON 4:5
	IORWF	_CCP1CON, F
;	.line	128; /home/valentin/.icaro/firmware/tmp/pwm.c	CCPR1L = duty >> 2;				// 8 MSbits of the duty
	BCF	STATUS, 0
	RRCF	r0x02, F
	RRCF	r0x01, F
	BCF	STATUS, 0
	RRCF	r0x02, F
	RRCF	r0x01, F
	MOVF	r0x01, W
	MOVWF	_CCPR1L
_00639_DS_:
;	.line	132; /home/valentin/.icaro/firmware/tmp/pwm.c	PIR1bits.TMR2IF = 0;				// reset this flag for the next test
	BCF	_PIR1bits, 1
;	.line	133; /home/valentin/.icaro/firmware/tmp/pwm.c	T2CON = _t2con;						// Timer2 prescaler
	MOVFF	__t2con, _T2CON
;	.line	134; /home/valentin/.icaro/firmware/tmp/pwm.c	T2CONbits.TMR2ON = ON;				// enable Timer2
	BSF	_T2CONbits, 2
_00640_DS_:
;	.line	136; /home/valentin/.icaro/firmware/tmp/pwm.c	while (PIR1bits.TMR2IF == 0);		// Wait until TMR2 overflows
	BTFSS	_PIR1bits, 1
	BRA	_00640_DS_
;	.line	137; /home/valentin/.icaro/firmware/tmp/pwm.c	pinmode(pin, OUTPUT);				// PWM pin as OUTPUT
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
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
S_tortucaro__PWM_set_frequency	code
_PWM_set_frequency:
;	.line	55; /home/valentin/.icaro/firmware/tmp/pwm.c	void PWM_set_frequency(u32 freq)
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
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	58; /home/valentin/.icaro/firmware/tmp/pwm.c	_pr2_plus1 = MIPS / freq;				// FOSC / (4 * PWM Frequency)
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0xb7
	MOVWF	POSTDEC1
	MOVLW	0x1b
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x00, W
	BANKSEL	__pr2_plus1
	MOVWF	__pr2_plus1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__pr2_plus1 + 1), B
;	.line	64; /home/valentin/.icaro/firmware/tmp/pwm.c	if (_pr2_plus1 <= 4096)					// check if it's not too high
	MOVLW	0x10
; removed redundant BANKSEL
	SUBWF	(__pr2_plus1 + 1), W, B
	BNZ	_00627_DS_
	MOVLW	0x01
; removed redundant BANKSEL
	SUBWF	__pr2_plus1, W, B
_00627_DS_:
	BC	_00616_DS_
;	.line	66; /home/valentin/.icaro/firmware/tmp/pwm.c	if (_pr2_plus1 <= 256)				// no needs of any prescaler
	MOVLW	0x01
	BANKSEL	(__pr2_plus1 + 1)
	SUBWF	(__pr2_plus1 + 1), W, B
	BNZ	_00628_DS_
	MOVLW	0x01
; removed redundant BANKSEL
	SUBWF	__pr2_plus1, W, B
_00628_DS_:
	BC	_00612_DS_
	BANKSEL	__t2con
;	.line	68; /home/valentin/.icaro/firmware/tmp/pwm.c	_t2con = Bin(00);				// prescaler is 1
	CLRF	__t2con, B
	BRA	_00616_DS_
_00612_DS_:
;	.line	70; /home/valentin/.icaro/firmware/tmp/pwm.c	else if (_pr2_plus1 <= 1024)		// needs prescaler 1:4
	MOVLW	0x04
	BANKSEL	(__pr2_plus1 + 1)
	SUBWF	(__pr2_plus1 + 1), W, B
	BNZ	_00629_DS_
	MOVLW	0x01
; removed redundant BANKSEL
	SUBWF	__pr2_plus1, W, B
_00629_DS_:
	BC	_00609_DS_
;	.line	72; /home/valentin/.icaro/firmware/tmp/pwm.c	_pr2_plus1 = _pr2_plus1 >> 2;	// divided by 4
	BCF	STATUS, 0
	BANKSEL	(__pr2_plus1 + 1)
	RRCF	(__pr2_plus1 + 1), F, B
; removed redundant BANKSEL
	RRCF	__pr2_plus1, F, B
	BCF	STATUS, 0
; removed redundant BANKSEL
	RRCF	(__pr2_plus1 + 1), F, B
; removed redundant BANKSEL
	RRCF	__pr2_plus1, F, B
;	.line	73; /home/valentin/.icaro/firmware/tmp/pwm.c	_t2con = Bin(01);				// prescaler is 4
	MOVLW	0x01
	BANKSEL	__t2con
	MOVWF	__t2con, B
	BRA	_00616_DS_
_00609_DS_:
;	.line	77; /home/valentin/.icaro/firmware/tmp/pwm.c	_pr2_plus1 = _pr2_plus1 >> 4;	// divided by 16
	MOVLW	0xf0
	BANKSEL	__pr2_plus1
	ANDWF	__pr2_plus1, F, B
	SWAPF	__pr2_plus1, F, B
; removed redundant BANKSEL
	SWAPF	(__pr2_plus1 + 1), F, B
	ANDWF	(__pr2_plus1 + 1), W, B
	XORWF	(__pr2_plus1 + 1), F, B
; removed redundant BANKSEL
	ADDWF	__pr2_plus1, F, B
;	.line	78; /home/valentin/.icaro/firmware/tmp/pwm.c	_t2con = Bin(10);				// prescaler is 16
	MOVLW	0x02
	BANKSEL	__t2con
	MOVWF	__t2con, B
_00616_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__Delayus	code
_Delayus:
;	.line	16; /home/valentin/.icaro/firmware/tmp/arduinodelay.c	void Delayus(int microsecondes)
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
;	.line	20; /home/valentin/.icaro/firmware/tmp/arduinodelay.c	for (i=0;i<microsecondes;i++);
	CLRF	r0x02
	CLRF	r0x03
_00592_DS_:
	MOVF	r0x00, W
	MOVWF	r0x04
; #	MOVF	r0x01, W
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_00603_DS_
	MOVF	r0x04, W
	SUBWF	r0x02, W
_00603_DS_:
	BC	_00594_DS_
	INFSNZ	r0x02, F
	INCF	r0x03, F
	BRA	_00592_DS_
_00594_DS_:
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
;	.line	9; /home/valentin/.icaro/firmware/tmp/arduinodelay.c	void Delayms(unsigned long milliseconde)
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
;	.line	13; /home/valentin/.icaro/firmware/tmp/arduinodelay.c	for (i=0;i<milliseconde;i++) delay10ktcy(1);
	CLRF	r0x04
	CLRF	r0x05
	CLRF	r0x06
	CLRF	r0x07
_00573_DS_:
	MOVF	r0x03, W
	SUBWF	r0x07, W
	BNZ	_00584_DS_
	MOVF	r0x02, W
	SUBWF	r0x06, W
	BNZ	_00584_DS_
	MOVF	r0x01, W
	SUBWF	r0x05, W
	BNZ	_00584_DS_
	MOVF	r0x00, W
	SUBWF	r0x04, W
_00584_DS_:
	BC	_00575_DS_
	MOVLW	0x01
	CALL	_delay10ktcy
	INCF	r0x04, F
	BNC	_00573_DS_
	INCF	r0x05, F
	BNC	_00573_DS_
	INFSNZ	r0x06, F
	INCF	r0x07, F
_00585_DS_:
	BRA	_00573_DS_
_00575_DS_:
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
S_tortucaro__analogread	code
_analogread:
;	.line	40; /home/valentin/.icaro/firmware/tmp/analog.c	unsigned int analogread(unsigned char channel)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	55; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON0=(channel-13)*4;
	MOVLW	0xf3
	ADDWF	r0x00, F
; ;multiply lit val:0x04 by variable r0x00 and store in _ADCON0
	MOVF	r0x00, W
	MULLW	0x04
	MOVFF	PRODL, _ADCON0
;	.line	59; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON0bits.ADON=1;
	BSF	_ADCON0bits, 0
;	.line	60; /home/valentin/.icaro/firmware/tmp/analog.c	for (result=1;result<10;result++) __asm NOP __endasm;
	MOVLW	0x09
	MOVWF	r0x00
	CLRF	r0x01
_00565_DS_:
	NOP 
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
	MOVF	r0x00, W
	IORWF	r0x01, W
	BNZ	_00565_DS_
;	.line	61; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON0bits.GO=1;
	BSF	_ADCON0bits, 1
_00560_DS_:
;	.line	62; /home/valentin/.icaro/firmware/tmp/analog.c	while (ADCON0bits.GO);
	BTFSC	_ADCON0bits, 1
	BRA	_00560_DS_
;	.line	63; /home/valentin/.icaro/firmware/tmp/analog.c	result=ADRESH<<8;
	MOVFF	_ADRESH, r0x00
	CLRF	r0x01
	MOVF	r0x00, W
	MOVWF	r0x03
	CLRF	r0x02
;	.line	64; /home/valentin/.icaro/firmware/tmp/analog.c	result+=ADRESL;
	MOVFF	_ADRESL, r0x00
	CLRF	r0x01
	MOVF	r0x00, W
	ADDWF	r0x02, F
	MOVF	r0x01, W
	ADDWFC	r0x03, F
;	.line	65; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON0bits.ADON=0;
	BCF	_ADCON0bits, 0
;	.line	66; /home/valentin/.icaro/firmware/tmp/analog.c	return(result);
	MOVFF	r0x03, PRODL
	MOVF	r0x02, W
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__analogReference	code
_analogReference:
;	.line	32; /home/valentin/.icaro/firmware/tmp/analog.c	void analogReference(unsigned char Type)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; #	MOVF	r0x00, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00543_DS_
; #	GOTO	_00545_DS_
; #	MOVF	r0x00, W
;	.line	34; /home/valentin/.icaro/firmware/tmp/analog.c	if(Type == DEFAULTAN)			//the default analog reference of 5 volts (on 5V Arduino boards) or 3.3 volts (on 3.3V Arduino boards)
	MOVF	r0x00, W
;	.line	35; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON1|=0x00;			//Vref+ = VDD
	BZ	_00545_DS_
;	.line	36; /home/valentin/.icaro/firmware/tmp/analog.c	else if(Type == EXTERNAL)	//the voltage applied to the AREF pin (0 to 5V only) is used as the reference.
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00545_DS_
;	.line	37; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON1|=0x10;			//Vref+ = External source
	BSF	_ADCON1, 4
_00545_DS_:
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__analog_init	code
_analog_init:
;	.line	15; /home/valentin/.icaro/firmware/tmp/analog.c	TRISA=TRISA | 0x2F;
	MOVLW	0x2f
	IORWF	_TRISA, F
;	.line	16; /home/valentin/.icaro/firmware/tmp/analog.c	TRISE=TRISE | 0x07;	
	MOVLW	0x07
	IORWF	_TRISE, F
;	.line	17; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON1=0x07;
	MOVWF	_ADCON1
;	.line	18; /home/valentin/.icaro/firmware/tmp/analog.c	ADCON2=0xBD;
	MOVLW	0xbd
	MOVWF	_ADCON2
	RETURN	

; ; Starting pCode block
S_tortucaro__servos_interrupt	code
_servos_interrupt:
;	.line	289; /home/valentin/.icaro/firmware/tmp/servos.c	if (PIR1bits.TMR1IF) {
	BTFSS	_PIR1bits, 0
	BRA	_00530_DS_
;	.line	290; /home/valentin/.icaro/firmware/tmp/servos.c	PIR1bits.TMR1IF=0;
	BCF	_PIR1bits, 0
;	.line	291; /home/valentin/.icaro/firmware/tmp/servos.c	T1CON=0x00;
	CLRF	_T1CON
	BANKSEL	_phase
;	.line	292; /home/valentin/.icaro/firmware/tmp/servos.c	if (phase) {
	MOVF	_phase, W, B
	BZ	_00526_DS_
;	.line	294; /home/valentin/.icaro/firmware/tmp/servos.c	ServosPulseUp();
	CALL	_ServosPulseUp
;	.line	296; /home/valentin/.icaro/firmware/tmp/servos.c	TMR1H= 0xd3;
	MOVLW	0xd3
	MOVWF	_TMR1H
;	.line	297; /home/valentin/.icaro/firmware/tmp/servos.c	TMR1L= 0x8f;
	MOVLW	0x8f
	MOVWF	_TMR1L
;	.line	299; /home/valentin/.icaro/firmware/tmp/servos.c	T1CON=1;
	MOVLW	0x01
	MOVWF	_T1CON
	BANKSEL	_phase
;	.line	300; /home/valentin/.icaro/firmware/tmp/servos.c	phase = 0;
	CLRF	_phase, B
	BRA	_00530_DS_
_00526_DS_:
;	.line	305; /home/valentin/.icaro/firmware/tmp/servos.c	ServosPulseDown();
	CALL	_ServosPulseDown
;	.line	309; /home/valentin/.icaro/firmware/tmp/servos.c	TMR1H= 0x2d;
	MOVLW	0x2d
	MOVWF	_TMR1H
;	.line	310; /home/valentin/.icaro/firmware/tmp/servos.c	TMR1L= 0x0f;
	MOVLW	0x0f
	MOVWF	_TMR1L
; #	MOVF	_needreordering, W, B
; #	BTFSC	STATUS, 2
; #	GOTO	_00524_DS_
; #	CALL	_SortServoTimings
; #	MOVLW	0x21
	BANKSEL	_needreordering
;	.line	312; /home/valentin/.icaro/firmware/tmp/servos.c	if (needreordering)	
	MOVF	_needreordering, W, B
;	.line	313; /home/valentin/.icaro/firmware/tmp/servos.c	SortServoTimings();  // This takes more than 1 ms, but it's call only if needed.
	BTFSS	STATUS, 2
;	.line	314; /home/valentin/.icaro/firmware/tmp/servos.c	T1CON= ( 1 | 2 << 4 ) ; // activate timer1 and prescaler = 1:4
	CALL	_SortServoTimings
	MOVLW	0x21
	MOVWF	_T1CON
;	.line	315; /home/valentin/.icaro/firmware/tmp/servos.c	phase = 1;  //This indicates that after next interrupt it will start the servos cycle.
	MOVLW	0x01
	BANKSEL	_phase
	MOVWF	_phase, B
_00530_DS_:
;	.line	318; /home/valentin/.icaro/firmware/tmp/servos.c	return;
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoMaximumPulse	code
_ServoMaximumPulse:
;	.line	274; /home/valentin/.icaro/firmware/tmp/servos.c	void ServoMaximumPulse(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	276; /home/valentin/.icaro/firmware/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00512_DS_
; #	GOTO	_00513_DS_
; #	CLRF	r0x01
;	.line	277; /home/valentin/.icaro/firmware/tmp/servos.c	return;
	SUBWF	r0x00, W
;	.line	279; /home/valentin/.icaro/firmware/tmp/servos.c	servovalues[servo]=SERVOMAX;  //  250 = 2000 useg pulse
	BC	_00513_DS_
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0xfa
	MOVWF	INDF0
;	.line	281; /home/valentin/.icaro/firmware/tmp/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00513_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoMinimumPulse	code
_ServoMinimumPulse:
;	.line	263; /home/valentin/.icaro/firmware/tmp/servos.c	void ServoMinimumPulse(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	265; /home/valentin/.icaro/firmware/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00500_DS_
; #	GOTO	_00501_DS_
; #	CLRF	r0x01
;	.line	266; /home/valentin/.icaro/firmware/tmp/servos.c	return;
	SUBWF	r0x00, W
;	.line	268; /home/valentin/.icaro/firmware/tmp/servos.c	servovalues[servo]=SERVOMIN;  //  1 = 1000 useg pulse
	BC	_00501_DS_
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0x01
	MOVWF	INDF0
	BANKSEL	_needreordering
;	.line	270; /home/valentin/.icaro/firmware/tmp/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVWF	_needreordering, B
_00501_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoRead	code
_ServoRead:
;	.line	255; /home/valentin/.icaro/firmware/tmp/servos.c	unsigned char ServoRead(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	257; /home/valentin/.icaro/firmware/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
	SUBWF	r0x00, W
	BNC	_00488_DS_
;	.line	258; /home/valentin/.icaro/firmware/tmp/servos.c	return 0;
	CLRF	WREG
	BRA	_00489_DS_
_00488_DS_:
;	.line	259; /home/valentin/.icaro/firmware/tmp/servos.c	return servovalues[servo];
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
_00489_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoWrite	code
_ServoWrite:
;	.line	240; /home/valentin/.icaro/firmware/tmp/servos.c	void ServoWrite(uchar servo, uchar value)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	242; /home/valentin/.icaro/firmware/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00464_DS_
; #	GOTO	_00469_DS_
; #	MOVLW	0x01
;	.line	243; /home/valentin/.icaro/firmware/tmp/servos.c	return;
	SUBWF	r0x00, W
;	.line	245; /home/valentin/.icaro/firmware/tmp/servos.c	if(value<SERVOMIN)  //  1 = 1000 useg pulse
	BC	_00469_DS_
	MOVLW	0x01
	SUBWF	r0x01, W
	BC	_00466_DS_
;	.line	246; /home/valentin/.icaro/firmware/tmp/servos.c	value=SERVOMIN;
	MOVLW	0x01
	MOVWF	r0x01
_00466_DS_:
;	.line	247; /home/valentin/.icaro/firmware/tmp/servos.c	if(value>SERVOMAX) // 250 = 2000 useg pulse
	MOVLW	0xfb
	SUBWF	r0x01, W
	BNC	_00468_DS_
;	.line	248; /home/valentin/.icaro/firmware/tmp/servos.c	value=SERVOMAX;
	MOVLW	0xfa
	MOVWF	r0x01
_00468_DS_:
;	.line	249; /home/valentin/.icaro/firmware/tmp/servos.c	servovalues[servo]=value;
	CLRF	r0x02
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x01, INDF0
;	.line	251; /home/valentin/.icaro/firmware/tmp/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00469_DS_:
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoDetach	code
_ServoDetach:
;	.line	226; /home/valentin/.icaro/firmware/tmp/servos.c	void ServoDetach(uchar pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	228; /home/valentin/.icaro/firmware/tmp/servos.c	if(pin>=18) return;
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00437_DS_
; #	GOTO	_00444_DS_
; #	MOVLW	0x08
;	.line	230; /home/valentin/.icaro/firmware/tmp/servos.c	if(pin<8){
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00444_DS_
	MOVLW	0x08
	SUBWF	r0x00, W
	BC	_00442_DS_
;	.line	231; /home/valentin/.icaro/firmware/tmp/servos.c	activatedservos[MaskPort_B] = activatedservos[MaskPort_B] ^ servomasks[pin];
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
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
	BRA	_00444_DS_
_00442_DS_:
;	.line	232; /home/valentin/.icaro/firmware/tmp/servos.c	} else if (pin>12) {
	MOVLW	0x0d
	SUBWF	r0x00, W
	BNC	_00439_DS_
;	.line	233; /home/valentin/.icaro/firmware/tmp/servos.c	activatedservos[MaskPort_A] = activatedservos[MaskPort_A] ^ servomasks[pin];
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
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
	BRA	_00444_DS_
_00439_DS_:
;	.line	235; /home/valentin/.icaro/firmware/tmp/servos.c	activatedservos[MaskPort_C] = activatedservos[MaskPort_C] ^ servomasks[pin];
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	XORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 1), B
_00444_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoAttach	code
_ServoAttach:
;	.line	209; /home/valentin/.icaro/firmware/tmp/servos.c	void ServoAttach(uchar pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	211; /home/valentin/.icaro/firmware/tmp/servos.c	if(pin>=18) return;
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00409_DS_
; #	GOTO	_00416_DS_
; #	MOVLW	0x08
;	.line	213; /home/valentin/.icaro/firmware/tmp/servos.c	if(pin<8){
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00416_DS_
	MOVLW	0x08
	SUBWF	r0x00, W
	BC	_00414_DS_
;	.line	214; /home/valentin/.icaro/firmware/tmp/servos.c	activatedservos[MaskPort_B] = activatedservos[MaskPort_B] | servomasks[pin];  // list pin as servo driver.
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
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
;	.line	215; /home/valentin/.icaro/firmware/tmp/servos.c	TRISB = TRISB & (255 - servomasks[pin]); // set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	SUBLW	0xff
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	ANDWF	_TRISB, F
	BRA	_00416_DS_
_00414_DS_:
;	.line	216; /home/valentin/.icaro/firmware/tmp/servos.c	} else if (pin>12) {
	MOVLW	0x0d
	SUBWF	r0x00, W
	BNC	_00411_DS_
;	.line	217; /home/valentin/.icaro/firmware/tmp/servos.c	activatedservos[MaskPort_A] = activatedservos[MaskPort_A] | servomasks[pin];  // list pin as servo driver.
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
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
;	.line	218; /home/valentin/.icaro/firmware/tmp/servos.c	TRISA = TRISA & (255 - servomasks[pin]); // set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	SUBLW	0xff
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	ANDWF	_TRISA, F
	BRA	_00416_DS_
_00411_DS_:
;	.line	220; /home/valentin/.icaro/firmware/tmp/servos.c	activatedservos[MaskPort_C] = activatedservos[MaskPort_C] | servomasks[pin];  // list pin as servo driver.
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x03
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 1), B
;	.line	221; /home/valentin/.icaro/firmware/tmp/servos.c	TRISC = TRISC & (255 - servomasks[pin]); // set as output pin
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_TRISC, F
_00416_DS_:
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
;	.line	125; /home/valentin/.icaro/firmware/tmp/servos.c	static void SortServoTimings()
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	BANKSEL	_SortServoTimings_mascaratotal_1_27
;	.line	132; /home/valentin/.icaro/firmware/tmp/servos.c	uchar mascaratotal[3]={0x00,0x00,0x00};
	CLRF	_SortServoTimings_mascaratotal_1_27, B
; removed redundant BANKSEL
	CLRF	(_SortServoTimings_mascaratotal_1_27 + 1), B
; removed redundant BANKSEL
	CLRF	(_SortServoTimings_mascaratotal_1_27 + 2), B
;	.line	135; /home/valentin/.icaro/firmware/tmp/servos.c	for(t=0;t<18;t++){
	CLRF	r0x00
_00325_DS_:
;	.line	136; /home/valentin/.icaro/firmware/tmp/servos.c	timings[timevalue][t]=255;
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	SETF	INDF0
;	.line	138; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	139; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	135; /home/valentin/.icaro/firmware/tmp/servos.c	for(t=0;t<18;t++){
	INCF	r0x00, F
	MOVLW	0x12
	SUBWF	r0x00, W
	BNC	_00325_DS_
;	.line	142; /home/valentin/.icaro/firmware/tmp/servos.c	totalservos=0;
	CLRF	r0x00
;	.line	144; /home/valentin/.icaro/firmware/tmp/servos.c	while(totalservos<18) {
	CLRF	r0x01
_00322_DS_:
	MOVLW	0x12
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00324_DS_
;	.line	145; /home/valentin/.icaro/firmware/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
;	.line	146; /home/valentin/.icaro/firmware/tmp/servos.c	for(s=0;s<18;s++) { 
	CLRF	r0x03
_00327_DS_:
;	.line	148; /home/valentin/.icaro/firmware/tmp/servos.c	if (s<8){
	MOVLW	0x08
	SUBWF	r0x03, W
	BTFSC	STATUS, 0
	BRA	_00319_DS_
;	.line	149; /home/valentin/.icaro/firmware/tmp/servos.c	if (servomasks[s] & mascaratotal[MaskPort_B] & activatedservos[MaskPort_B]){
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	_SortServoTimings_mascaratotal_1_27
	MOVF	_SortServoTimings_mascaratotal_1_27, W, B
	ANDWF	r0x04, F
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	ANDWF	r0x04, F
	MOVF	r0x04, W
	BTFSS	STATUS, 2
	BRA	_00328_DS_
;	.line	151; /home/valentin/.icaro/firmware/tmp/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x04
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x07
	MOVF	r0x07, W
	SUBWF	r0x04, W
	BC	_00294_DS_
;	.line	152; /home/valentin/.icaro/firmware/tmp/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x04, INDF0
;	.line	154; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x07
	CLRF	r0x08
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x08, F
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	CLRF	INDF0
;	.line	155; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x07
	CLRF	r0x08
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x08, F
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	CLRF	INDF0
;	.line	156; /home/valentin/.icaro/firmware/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00328_DS_
_00294_DS_:
;	.line	158; /home/valentin/.icaro/firmware/tmp/servos.c	else if (servovalues[s] == timings[timevalue][t]){
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVF	r0x04, W
	XORWF	r0x05, W
	BZ	_00391_DS_
	BRA	_00328_DS_
_00391_DS_:
;	.line	160; /home/valentin/.icaro/firmware/tmp/servos.c	numservos++;
	INCF	r0x02, F
	BRA	_00328_DS_
_00319_DS_:
;	.line	164; /home/valentin/.icaro/firmware/tmp/servos.c	else if (s>12){
	MOVLW	0x0d
	SUBWF	r0x03, W
	BTFSS	STATUS, 0
	BRA	_00316_DS_
;	.line	165; /home/valentin/.icaro/firmware/tmp/servos.c	if (servomasks[s] & mascaratotal[MaskPort_A] & activatedservos[MaskPort_A]){
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x07
	BANKSEL	(_SortServoTimings_mascaratotal_1_27 + 2)
	MOVF	(_SortServoTimings_mascaratotal_1_27 + 2), W, B
	ANDWF	r0x07, W
	MOVWF	r0x08
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	ANDWF	r0x08, F
	MOVF	r0x08, W
	BTFSS	STATUS, 2
	BRA	_00328_DS_
;	.line	167; /home/valentin/.icaro/firmware/tmp/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	INDF0, r0x08
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x09
	CLRF	r0x0a
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x0a, F
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	INDF0, r0x0b
	MOVF	r0x0b, W
	SUBWF	r0x08, W
	BC	_00302_DS_
;	.line	168; /home/valentin/.icaro/firmware/tmp/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	r0x08, INDF0
;	.line	170; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x0b
	CLRF	r0x0c
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x0c, F
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, FSR0H
	CLRF	INDF0
;	.line	171; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_A][t]=servomasks[s];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x0b
	CLRF	r0x0c
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x0c, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, FSR0H
	MOVFF	r0x04, INDF0
;	.line	172; /home/valentin/.icaro/firmware/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00328_DS_
_00302_DS_:
;	.line	174; /home/valentin/.icaro/firmware/tmp/servos.c	else if (servovalues[s] == timings[timevalue][t]){
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	INDF0, r0x09
	MOVF	r0x08, W
	XORWF	r0x09, W
	BZ	_00396_DS_
	BRA	_00328_DS_
_00396_DS_:
;	.line	175; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_A][t] |= servomasks[s];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x06
	MOVF	r0x06, W
	IORWF	r0x07, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x07, INDF0
;	.line	176; /home/valentin/.icaro/firmware/tmp/servos.c	numservos++;
	INCF	r0x02, F
	BRA	_00328_DS_
_00316_DS_:
;	.line	181; /home/valentin/.icaro/firmware/tmp/servos.c	if (servomasks[s] & mascaratotal[MaskPort_C] & activatedservos[MaskPort_C]){ 
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x07
	BANKSEL	(_SortServoTimings_mascaratotal_1_27 + 1)
	MOVF	(_SortServoTimings_mascaratotal_1_27 + 1), W, B
	ANDWF	r0x07, W
	MOVWF	r0x08
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	ANDWF	r0x08, F
	MOVF	r0x08, W
	BTFSS	STATUS, 2
	BRA	_00328_DS_
;	.line	183; /home/valentin/.icaro/firmware/tmp/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	INDF0, r0x08
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x09
	CLRF	r0x0a
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x0a, F
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	INDF0, r0x0b
	MOVF	r0x0b, W
	SUBWF	r0x08, W
	BC	_00310_DS_
;	.line	184; /home/valentin/.icaro/firmware/tmp/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	r0x08, INDF0
;	.line	186; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_C][t]=servomasks[s];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x0b
	CLRF	r0x0c
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x0c, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, FSR0H
	MOVFF	r0x04, INDF0
;	.line	187; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
;	.line	188; /home/valentin/.icaro/firmware/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00328_DS_
_00310_DS_:
;	.line	190; /home/valentin/.icaro/firmware/tmp/servos.c	else if (servovalues[s] == timings [timevalue][t]){
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	INDF0, r0x09
	MOVF	r0x08, W
	XORWF	r0x09, W
	BNZ	_00328_DS_
;	.line	191; /home/valentin/.icaro/firmware/tmp/servos.c	timings[MaskPort_C][t] |= servomasks[s];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x06
	MOVF	r0x06, W
	IORWF	r0x07, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x07, INDF0
;	.line	192; /home/valentin/.icaro/firmware/tmp/servos.c	numservos++;
	INCF	r0x02, F
_00328_DS_:
;	.line	146; /home/valentin/.icaro/firmware/tmp/servos.c	for(s=0;s<18;s++) { 
	INCF	r0x03, F
	MOVLW	0x12
	SUBWF	r0x03, W
	BTFSS	STATUS, 0
	BRA	_00327_DS_
;	.line	198; /home/valentin/.icaro/firmware/tmp/servos.c	mascaratotal[MaskPort_C] |= timings[MaskPort_C][t];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x04, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
	BANKSEL	(_SortServoTimings_mascaratotal_1_27 + 1)
	MOVF	(_SortServoTimings_mascaratotal_1_27 + 1), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_SortServoTimings_mascaratotal_1_27 + 1), B
;	.line	199; /home/valentin/.icaro/firmware/tmp/servos.c	mascaratotal[MaskPort_A] |= timings[MaskPort_A][t];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x04, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
; removed redundant BANKSEL
	MOVF	(_SortServoTimings_mascaratotal_1_27 + 2), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_SortServoTimings_mascaratotal_1_27 + 2), B
;	.line	200; /home/valentin/.icaro/firmware/tmp/servos.c	totalservos += numservos;
	MOVF	r0x02, W
	ADDWF	r0x00, F
;	.line	201; /home/valentin/.icaro/firmware/tmp/servos.c	t++;
	INCF	r0x01, F
	BRA	_00322_DS_
_00324_DS_:
	BANKSEL	_needreordering
;	.line	204; /home/valentin/.icaro/firmware/tmp/servos.c	needreordering=0;  // This indicates that servo timings is ordered.	
	CLRF	_needreordering, B
	MOVFF	PREINC1, r0x0c
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
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
	RETURN	

; ; Starting pCode block
S_tortucaro__ServosPulseUp	code
_ServosPulseUp:
;	.line	120; /home/valentin/.icaro/firmware/tmp/servos.c	PORTC = activatedservos[MaskPort_C] & 0xFF;
	MOVFF	(_activatedservos + 1), _PORTC
;	.line	121; /home/valentin/.icaro/firmware/tmp/servos.c	PORTA = activatedservos[MaskPort_A] & 0xFF;	
	MOVFF	(_activatedservos + 2), _PORTA
	RETURN	

; ; Starting pCode block
S_tortucaro__ServosPulseDown	code
_ServosPulseDown:
;	.line	92; /home/valentin/.icaro/firmware/tmp/servos.c	static void ServosPulseDown()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	_timingindex
;	.line	94; /home/valentin/.icaro/firmware/tmp/servos.c	timingindex = 0;
	CLRF	_timingindex, B
	BANKSEL	_timedivision
;	.line	96; /home/valentin/.icaro/firmware/tmp/servos.c	for(timedivision=0;timedivision < 251;timedivision++){
	CLRF	_timedivision, B
_00266_DS_:
;	.line	97; /home/valentin/.icaro/firmware/tmp/servos.c	if (timings[timevalue][timingindex] == timedivision){
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	BANKSEL	_timedivision
	XORWF	_timedivision, W, B
	BNZ	_00264_DS_
;	.line	99; /home/valentin/.icaro/firmware/tmp/servos.c	PORTC = PORTC ^ timings[MaskPort_C][timingindex];
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTC, F
;	.line	100; /home/valentin/.icaro/firmware/tmp/servos.c	PORTA = PORTA ^ timings[MaskPort_A][timingindex];
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTA, F
	BANKSEL	_timingindex
;	.line	101; /home/valentin/.icaro/firmware/tmp/servos.c	timingindex++;
	INCF	_timingindex, F, B
_00264_DS_:
	movlw 12
	movwf _loopvar
bucle:
	NOP
	decfsz _loopvar,1
	goto bucle
	
	BANKSEL	_timedivision
;	.line	96; /home/valentin/.icaro/firmware/tmp/servos.c	for(timedivision=0;timedivision < 251;timedivision++){
	INCF	_timedivision, F, B
	MOVLW	0xfb
; removed redundant BANKSEL
	SUBWF	_timedivision, W, B
	BTFSS	STATUS, 0
	BRA	_00266_DS_
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__servos_init	code
_servos_init:
;	.line	71; /home/valentin/.icaro/firmware/tmp/servos.c	void servos_init()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	75; /home/valentin/.icaro/firmware/tmp/servos.c	for(a=0;a<18;a++) servovalues[a]=255;
	CLRF	r0x00
_00247_DS_:
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	SETF	INDF0
	INCF	r0x00, F
	MOVLW	0x12
	SUBWF	r0x00, W
	BNC	_00247_DS_
;	.line	78; /home/valentin/.icaro/firmware/tmp/servos.c	TMR1H=0xFF;
	SETF	_TMR1H
;	.line	79; /home/valentin/.icaro/firmware/tmp/servos.c	TMR1L=0x00;
	CLRF	_TMR1L
;	.line	81; /home/valentin/.icaro/firmware/tmp/servos.c	T1CON=0x01;
	MOVLW	0x01
	MOVWF	_T1CON
;	.line	83; /home/valentin/.icaro/firmware/tmp/servos.c	PIE1bits.TMR1IE=1;
	BSF	_PIE1bits, 0
;	.line	85; /home/valentin/.icaro/firmware/tmp/servos.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	87; /home/valentin/.icaro/firmware/tmp/servos.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__pinmode	code
_pinmode:
;	.line	69; /home/valentin/.icaro/firmware/tmp/digitalw.c	void pinmode(int input, int state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	71; /home/valentin/.icaro/firmware/tmp/digitalw.c	switch (port[input])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_port)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVLW	0x05
	SUBWF	r0x04, W
	BTFSC	STATUS, 0
	BRA	_00220_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x04, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00241_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00241_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00241_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00241_DS_:
	GOTO	_00199_DS_
	GOTO	_00203_DS_
	GOTO	_00207_DS_
	GOTO	_00211_DS_
	GOTO	_00215_DS_
_00199_DS_:
;	.line	73; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 0: if (state) TRISB=TRISB | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00201_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISB, F
	BRA	_00220_DS_
_00201_DS_:
;	.line	74; /home/valentin/.icaro/firmware/tmp/digitalw.c	else TRISB=TRISB & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISB, F
;	.line	75; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00220_DS_
_00203_DS_:
;	.line	76; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 1: if (state) TRISC=TRISC | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00205_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISC, F
	BRA	_00220_DS_
_00205_DS_:
;	.line	77; /home/valentin/.icaro/firmware/tmp/digitalw.c	else TRISC=TRISC & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISC, F
;	.line	78; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00220_DS_
_00207_DS_:
;	.line	79; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 2: if (state) TRISA=TRISA | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00209_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISA, F
	BRA	_00220_DS_
_00209_DS_:
;	.line	80; /home/valentin/.icaro/firmware/tmp/digitalw.c	else TRISA=TRISA & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISA, F
;	.line	81; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00220_DS_
_00211_DS_:
;	.line	83; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 3: if (state) TRISD=TRISD | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00213_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISD, F
	BRA	_00220_DS_
_00213_DS_:
;	.line	84; /home/valentin/.icaro/firmware/tmp/digitalw.c	else TRISD=TRISD & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISD, F
;	.line	85; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00220_DS_
_00215_DS_:
;	.line	86; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 4: if (state) TRISE=TRISE | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00217_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_TRISE, F
	BRA	_00220_DS_
_00217_DS_:
;	.line	87; /home/valentin/.icaro/firmware/tmp/digitalw.c	else TRISE=TRISE & (255-mask[input]);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
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
_00220_DS_:
;	.line	90; /home/valentin/.icaro/firmware/tmp/digitalw.c	}
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
S_tortucaro__digitalread	code
_digitalread:
;	.line	44; /home/valentin/.icaro/firmware/tmp/digitalw.c	int digitalread(int input)
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
;	.line	46; /home/valentin/.icaro/firmware/tmp/digitalw.c	switch (port[input])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
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
	BRA	_00172_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x02, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00194_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00194_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00194_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00194_DS_:
	GOTO	_00152_DS_
	GOTO	_00156_DS_
	GOTO	_00160_DS_
	GOTO	_00164_DS_
	GOTO	_00168_DS_
_00152_DS_:
;	.line	48; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 0: if ((PORTB & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTB, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00154_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00173_DS_
_00154_DS_:
;	.line	49; /home/valentin/.icaro/firmware/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00173_DS_
_00156_DS_:
;	.line	51; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 1: if ((PORTC & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTC, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00158_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00173_DS_
_00158_DS_:
;	.line	52; /home/valentin/.icaro/firmware/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00173_DS_
_00160_DS_:
;	.line	54; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 2: if ((PORTA & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTA, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00162_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00173_DS_
_00162_DS_:
;	.line	55; /home/valentin/.icaro/firmware/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00173_DS_
_00164_DS_:
;	.line	58; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 3: if ((PORTD & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTD, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00166_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00173_DS_
_00166_DS_:
;	.line	59; /home/valentin/.icaro/firmware/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00173_DS_
_00168_DS_:
;	.line	61; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 4: if ((PORTE & mask[input])!=0) return (1);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
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
	BZ	_00170_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00173_DS_
_00170_DS_:
;	.line	62; /home/valentin/.icaro/firmware/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00173_DS_
_00172_DS_:
;	.line	66; /home/valentin/.icaro/firmware/tmp/digitalw.c	return (0);
	CLRF	PRODL
	CLRF	WREG
_00173_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__digitalwrite	code
_digitalwrite:
;	.line	20; /home/valentin/.icaro/firmware/tmp/digitalw.c	void digitalwrite(int output,int state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	22; /home/valentin/.icaro/firmware/tmp/digitalw.c	switch (port[output])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_port)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVLW	0x05
	SUBWF	r0x04, W
	BTFSC	STATUS, 0
	BRA	_00126_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x04, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00147_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00147_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00147_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00147_DS_:
	GOTO	_00105_DS_
	GOTO	_00109_DS_
	GOTO	_00113_DS_
	GOTO	_00117_DS_
	GOTO	_00121_DS_
_00105_DS_:
;	.line	24; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 0: if (state) PORTB=PORTB | mask[output]; 
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00107_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTB, F
	BRA	_00126_DS_
_00107_DS_:
;	.line	25; /home/valentin/.icaro/firmware/tmp/digitalw.c	else PORTB=PORTB & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTB, F
;	.line	26; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00126_DS_
_00109_DS_:
;	.line	27; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 1: if (state) PORTC=PORTC | mask[output];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00111_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTC, F
	BRA	_00126_DS_
_00111_DS_:
;	.line	28; /home/valentin/.icaro/firmware/tmp/digitalw.c	else PORTC=PORTC & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTC, F
;	.line	29; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00126_DS_
_00113_DS_:
;	.line	30; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 2: if (state) PORTA=PORTA | mask[output];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00115_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTA, F
	BRA	_00126_DS_
_00115_DS_:
;	.line	31; /home/valentin/.icaro/firmware/tmp/digitalw.c	else PORTA=PORTA & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTA, F
;	.line	32; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00126_DS_
_00117_DS_:
;	.line	34; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 3: if (state) PORTD=PORTD | mask[output]; 
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00119_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTD, F
	BRA	_00126_DS_
_00119_DS_:
;	.line	35; /home/valentin/.icaro/firmware/tmp/digitalw.c	else PORTD=PORTD & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTD, F
;	.line	36; /home/valentin/.icaro/firmware/tmp/digitalw.c	break;
	BRA	_00126_DS_
_00121_DS_:
;	.line	37; /home/valentin/.icaro/firmware/tmp/digitalw.c	case 4: if (state) PORTE=PORTE | mask[output]; 
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00123_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_PORTE, F
	BRA	_00126_DS_
_00123_DS_:
;	.line	38; /home/valentin/.icaro/firmware/tmp/digitalw.c	else PORTE=PORTE & (255-mask[output]);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
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
	ANDWF	_PORTE, F
_00126_DS_:
;	.line	41; /home/valentin/.icaro/firmware/tmp/digitalw.c	}
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
_mask:
	DB	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x40, 0x80, 0x01, 0x02
	DB	0x04, 0x01, 0x02, 0x04, 0x08, 0x20, 0x01, 0x02, 0x04, 0x01, 0x02, 0x04
	DB	0x08, 0x10, 0x20, 0x40, 0x80
; ; Starting pCode block for Ival
_port:
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01
	DB	0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x04, 0x04, 0x04, 0x03, 0x03, 0x03
	DB	0x03, 0x03, 0x03, 0x03, 0x03
; ; Starting pCode block for Ival
_servomasks:
	DB	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x40, 0x80, 0x01, 0x02
	DB	0x04, 0x01, 0x02, 0x04, 0x08, 0x20
; ; Starting pCode block for Ival
_libdevice_descriptor:
	DB	0x12, 0x01, 0x00, 0x02, 0x02, 0x00, 0x00, 0x40, 0xd8, 0x04, 0xab, 0xfe
	DB	0x00, 0x00, 0x00, 0x01, 0x00, 0x01
; ; Starting pCode block for Ival
_libconfiguration_descriptor:
	DB	0x09, 0x02, 0x43, 0x00, 0x02, 0x01, 0x00, 0x03, 0x14, 0x09, 0x04, 0x00
	DB	0x00, 0x01, 0x02, 0x02, 0x01, 0x00, 0x05, 0x24, 0x00, 0x10, 0x01, 0x04
	DB	0x24, 0x02, 0x00, 0x05, 0x24, 0x06, 0x00, 0x01, 0x05, 0x24, 0x01, 0x00
	DB	0x01, 0x07, 0x05, 0x82, 0x03, 0x10, 0x00, 0x02, 0x09, 0x04, 0x01, 0x00
	DB	0x02, 0x0a, 0x00, 0x00, 0x00, 0x07, 0x05, 0x03, 0x02, 0x40, 0x00, 0x00
	DB	0x07, 0x05, 0x83, 0x02, 0x40, 0x00, 0x00
; ; Starting pCode block for Ival
_libstring_descriptor:
	DB	0x28, 0x03, 0x50, 0x0c, 0x03, 0x50, 0x0c, 0x03, 0x50, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
; ; Starting pCode block
__str_0:
	DB	0x0a, 0x00
; ; Starting pCode block
__str_1:
	DB	0x30, 0x00
; ; Starting pCode block
__str_2:
	DB	0x31, 0x00
; ; Starting pCode block
__str_3:
	DB	0x66, 0x0a, 0x00
; ; Starting pCode block
__str_4:
	DB	0x69, 0x63, 0x61, 0x72, 0x6f, 0x20, 0x55, 0x53, 0x42, 0x20, 0x30, 0x32
	DB	0x20, 0x0a, 0x00


; Statistics:
; code size:	10742 (0x29f6) bytes ( 8.20%)
;           	 5371 (0x14fb) words
; udata size:	  531 (0x0213) bytes (29.63%)
; access size:	   13 (0x000d) bytes


	end
