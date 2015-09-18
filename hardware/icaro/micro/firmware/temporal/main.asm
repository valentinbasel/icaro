;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jul  4 2015) (Linux)
; This file was generated Fri Sep 18 14:20:54 2015
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	__i
	global	__currline
	global	__initialized
	global	__rw_pin
	global	_loopvar
	global	_pulseEnable
	global	_write4bits
	global	_write8bits
	global	_send
	global	_write
	global	_command
	global	_setCursor
	global	_lcdPrint
	global	_printNumber
	global	_printFloat
	global	_home
	global	_clear
	global	_noDisplay
	global	_display
	global	_noCursor
	global	_cursor
	global	_noBlink
	global	_blink
	global	_scrollDisplayLeft
	global	_scrollDisplayRight
	global	_leftToRight
	global	_rightToLeft
	global	_autoscroll
	global	_noAutoscroll
	global	_begin
	global	_init
	global	_lcd
	global	_phase
	global	_needreordering
	global	_timingindex
	global	_timedivision
	global	_timings
	global	_activatedservos
	global	_servovalues
	global	__pr2_plus1
	global	__t2con
	global	_rx
	global	_wpointer
	global	_rpointer
	global	__rs_pin
	global	__enable_pin
	global	__data_pins
	global	__displayfunction
	global	__displaycontrol
	global	__displaymode
	global	__numlines
	global	_caractere
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
	global	_printfmod
	global	_serial_begin
	global	_serial_available
	global	_serial_putchar11
	global	_serial_interrupt
	global	_serial_read
	global	_serial_flush
	global	_serial_getkey
	global	_serial_printf
	global	_serial_write
	global	_ping
	global	_setup
	global	_mens
	global	_caminar
	global	_parado
	global	_loop
	global	_pinguino_main
	global	_high_priority_isr
	global	_low_priority_isr
	global	_mask
	global	_port
	global	_servomasks

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget3
	extern	__gptrput1
	extern	__gptrput3
	extern	__gptrget1
	extern	__gptrget2
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
	extern	_stdin
	extern	_stdout
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
	extern	__moduint
	extern	__mullong
	extern	__modulong
	extern	___fslt
	extern	___fsdiv
	extern	___fsadd
	extern	___fs2ulong
	extern	___ulong2fs
	extern	___fssub
	extern	___fsmul
	extern	___fs2uint
	extern	___sint2fs

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
PCL	equ	0xff9
PCLATH	equ	0xffa
PCLATU	equ	0xffb
INTCON	equ	0xff2
WREG	equ	0xfe8
BSR	equ	0xfe0
TOSL	equ	0xffd
TOSH	equ	0xffe
TOSU	equ	0xfff
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR1H	equ	0xfe2
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
INDF0	equ	0xfef
POSTINC0	equ	0xfee
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW1	equ	0xfe3
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


	idata
_phase	db	0x00
_needreordering	db	0x00
_timedivision	db	0x00
_activatedservos	db	0x00, 0x00, 0x00
__pr2_plus1	db	0x00, 0x01
__rs_pin	db	0x08
__rw_pin	db	0xff
__enable_pin	db	0x09
__i	db	0x00, 0x00


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
r0x0d	res	1
r0x0e	res	1
r0x0f	res	1
r0x10	res	1
r0x11	res	1
r0x12	res	1
r0x13	res	1
r0x14	res	1
r0x15	res	1
r0x16	res	1
r0x17	res	1
r0x18	res	1
r0x19	res	1
r0x1a	res	1

udata_main_0	udata
_loopvar	res	1

udata_main_1	udata
_putchar1	res	3

udata_main_2	udata
__initialized	res	1

udata_main_3	udata
__currline	res	1

udata_main_4	udata
_servovalues	res	18

udata_main_5	udata
_timingindex	res	1

udata_main_6	udata
_timings	res	72

udata_main_7	udata
_SortServoTimings_mascaratotal_1_27	res	3

udata_main_8	udata
__t2con	res	1

udata_main_9	udata
_printi_print_buf_1_156	res	12

udata_main_10	udata
_print_scr_1_164	res	2

udata_main_11	udata
_wpointer	res	1

udata_main_12	udata
_rpointer	res	1

udata_main_13	udata
_rx	res	128

udata_main_14	udata
__data_pins	res	8

udata_main_15	udata
__displayfunction	res	1

udata_main_16	udata
_setCursor_row_offsets_1_254	res	8

udata_main_17	udata
__numlines	res	1

udata_main_18	udata
_printNumber_buf_1_260	res	32

udata_main_19	udata
__displaycontrol	res	1

udata_main_20	udata
__displaymode	res	1

udata_main_21	udata
_mens_p_1_306	res	74

udata_main_22	udata
_mens_n_1_306	res	2

udata_main_23	udata
_caminar_pder_1_314	res	8

udata_main_24	udata
_caminar_pizq_1_314	res	8

udata_main_25	udata
_caminar_cder_1_314	res	8

udata_main_26	udata
_caminar_cizq_1_314	res	8

udata_main_27	udata
_caractere	res	2

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_main__high_priority_isr	code	0X002020
_high_priority_isr:
;	.line	97; /home/valentin/.icaro/firmware/source/main.c	void high_priority_isr(void) __interrupt
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
;	.line	120; /home/valentin/.icaro/firmware/source/main.c	if (PIR1bits.RCIF) 
	MOVFF	PCLATU, POSTDEC1
; #	MOVFF	FSR1L, FSR2L
; #	BTFSS	_PIR1bits, 5
; #	GOTO	_01654_DS_
; #	CALL	_serial_interrupt
; #	CALL	_servos_interrupt
;	.line	121; /home/valentin/.icaro/firmware/source/main.c	serial_interrupt();
	BTFSC	_PIR1bits, 5
;	.line	133; /home/valentin/.icaro/firmware/source/main.c	servos_interrupt();
	CALL	_serial_interrupt
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
S_main__low_priority_isr	code	0X004000
_low_priority_isr:
;	.line	141; /home/valentin/.icaro/firmware/source/main.c	void low_priority_isr(void) __interrupt
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	143; /home/valentin/.icaro/firmware/source/main.c	}
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
S_main__pinguino_main	code
_pinguino_main:
;	.line	53; /home/valentin/.icaro/firmware/source/main.c	PIE1=0;
	CLRF	_PIE1
;	.line	54; /home/valentin/.icaro/firmware/source/main.c	PIE2=0;
	CLRF	_PIE2
;	.line	55; /home/valentin/.icaro/firmware/source/main.c	ADCON1=0x0F;
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	60; /home/valentin/.icaro/firmware/source/main.c	setup();
	CALL	_setup
;	.line	68; /home/valentin/.icaro/firmware/source/main.c	servos_init();
	CALL	_servos_init
;	.line	76; /home/valentin/.icaro/firmware/source/main.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	77; /home/valentin/.icaro/firmware/source/main.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
;	.line	84; /home/valentin/.icaro/firmware/source/main.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	85; /home/valentin/.icaro/firmware/source/main.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
_01646_DS_:
;	.line	90; /home/valentin/.icaro/firmware/source/main.c	loop();
	CALL	_loop
	BRA	_01646_DS_
	RETURN	

; ; Starting pCode block
S_main__loop	code
_loop:
;	.line	120; /home/valentin/.icaro/firmware/source/user.c	void loop()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	123; /home/valentin/.icaro/firmware/source/user.c	parado();
	CALL	_parado
;	.line	124; /home/valentin/.icaro/firmware/source/user.c	Delayms(10);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	125; /home/valentin/.icaro/firmware/source/user.c	if (serial_available())
	CALL	_serial_available
	MOVWF	r0x00
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_01608_DS_
	BANKSEL	_caractere
;	.line	127; /home/valentin/.icaro/firmware/source/user.c	if(caractere=='d')
	MOVF	_caractere, W, B
	XORLW	0x64
	BNZ	_01631_DS_
; removed redundant BANKSEL
	MOVF	(_caractere + 1), W, B
	BZ	_01632_DS_
_01631_DS_:
	BRA	_01596_DS_
_01632_DS_:
;	.line	130; /home/valentin/.icaro/firmware/source/user.c	valor=ping();
	CALL	_ping
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
;	.line	131; /home/valentin/.icaro/firmware/source/user.c	Delayms(100);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	132; /home/valentin/.icaro/firmware/source/user.c	printNumber(valor,10);
	CLRF	WREG
	BTFSC	r0x01, 7
	MOVLW	0xff
	MOVWF	r0x02
	MOVWF	r0x03
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printNumber
	MOVLW	0x05
	ADDWF	FSR1L, F
;	.line	133; /home/valentin/.icaro/firmware/source/user.c	home();
	CALL	_home
;	.line	134; /home/valentin/.icaro/firmware/source/user.c	Delayms(100);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
_01596_DS_:
	BANKSEL	_caractere
;	.line	136; /home/valentin/.icaro/firmware/source/user.c	if(caractere=='a')
	MOVF	_caractere, W, B
	XORLW	0x61
	BNZ	_01633_DS_
; removed redundant BANKSEL
	MOVF	(_caractere + 1), W, B
	BZ	_01634_DS_
_01633_DS_:
	BRA	_01598_DS_
_01634_DS_:
;	.line	138; /home/valentin/.icaro/firmware/source/user.c	caminar(200,0,1);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0xc8
	MOVWF	POSTDEC1
	CALL	_caminar
	MOVLW	0x06
	ADDWF	FSR1L, F
;	.line	139; /home/valentin/.icaro/firmware/source/user.c	Delayms(100);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
_01598_DS_:
	BANKSEL	_caractere
;	.line	141; /home/valentin/.icaro/firmware/source/user.c	if(caractere=='t')
	MOVF	_caractere, W, B
	XORLW	0x74
	BNZ	_01635_DS_
; removed redundant BANKSEL
	MOVF	(_caractere + 1), W, B
	BZ	_01636_DS_
_01635_DS_:
	BRA	_01600_DS_
_01636_DS_:
;	.line	143; /home/valentin/.icaro/firmware/source/user.c	caminar(200,3,-1);
	SETF	POSTDEC1
	SETF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x03
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0xc8
	MOVWF	POSTDEC1
	CALL	_caminar
	MOVLW	0x06
	ADDWF	FSR1L, F
;	.line	144; /home/valentin/.icaro/firmware/source/user.c	Delayms(100);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
_01600_DS_:
;	.line	146; /home/valentin/.icaro/firmware/source/user.c	caractere=serial_read();
	CALL	_serial_read
	MOVWF	r0x00
	MOVFF	r0x00, _caractere
	BANKSEL	(_caractere + 1)
	CLRF	(_caractere + 1), B
; removed redundant BANKSEL
;	.line	147; /home/valentin/.icaro/firmware/source/user.c	if(caractere=='<')
	MOVF	_caractere, W, B
	XORLW	0x3c
	BNZ	_01637_DS_
; removed redundant BANKSEL
	MOVF	(_caractere + 1), W, B
	BZ	_01638_DS_
_01637_DS_:
	BRA	_01608_DS_
_01638_DS_:
;	.line	149; /home/valentin/.icaro/firmware/source/user.c	setCursor(0,0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	_setCursor
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
_01601_DS_:
	BANKSEL	_caractere
;	.line	150; /home/valentin/.icaro/firmware/source/user.c	while(caractere!='>')
	MOVF	_caractere, W, B
	XORLW	0x3e
	BNZ	_01640_DS_
; removed redundant BANKSEL
	MOVF	(_caractere + 1), W, B
	BZ	_01608_DS_
_01640_DS_:
;	.line	152; /home/valentin/.icaro/firmware/source/user.c	caractere=serial_read();
	CALL	_serial_read
	MOVWF	r0x00
	MOVFF	r0x00, _caractere
	BANKSEL	(_caractere + 1)
	CLRF	(_caractere + 1), B
;	.line	153; /home/valentin/.icaro/firmware/source/user.c	mens(caractere);
	MOVF	(_caractere + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_caractere, W, B
	MOVWF	POSTDEC1
	CALL	_mens
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BRA	_01601_DS_
_01608_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__parado	code
_parado:
;	.line	112; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(13,0);//no se usa
	CLRF	POSTDEC1
	MOVLW	0x0d
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	113; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(14,65);//pie derecho
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x0e
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	114; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(15,90);//pie izquierdo
	MOVLW	0x5a
	MOVWF	POSTDEC1
	MOVLW	0x0f
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	115; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(16,70);//cadera derecha
	MOVLW	0x46
	MOVWF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	116; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(17,110); //cadera izquierda
	MOVLW	0x6e
	MOVWF	POSTDEC1
	MOVLW	0x11
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__caminar	code
_caminar:
;	.line	91; /home/valentin/.icaro/firmware/source/user.c	void caminar(int tiempo,int p, int n)
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
;	.line	93; /home/valentin/.icaro/firmware/source/user.c	int pder[4]={10,75,75,10};
	MOVLW	0x0a
	BANKSEL	_caminar_pder_1_314
	MOVWF	_caminar_pder_1_314, B
; removed redundant BANKSEL
	CLRF	(_caminar_pder_1_314 + 1), B
	MOVLW	0x4b
; removed redundant BANKSEL
	MOVWF	(_caminar_pder_1_314 + 2), B
; removed redundant BANKSEL
	CLRF	(_caminar_pder_1_314 + 3), B
; removed redundant BANKSEL
	MOVWF	(_caminar_pder_1_314 + 4), B
; removed redundant BANKSEL
	CLRF	(_caminar_pder_1_314 + 5), B
	MOVLW	0x0a
; removed redundant BANKSEL
	MOVWF	(_caminar_pder_1_314 + 6), B
; removed redundant BANKSEL
	CLRF	(_caminar_pder_1_314 + 7), B
;	.line	94; /home/valentin/.icaro/firmware/source/user.c	int pizq[4]={65,130,130,65};
	MOVLW	0x41
	BANKSEL	_caminar_pizq_1_314
	MOVWF	_caminar_pizq_1_314, B
; removed redundant BANKSEL
	CLRF	(_caminar_pizq_1_314 + 1), B
	MOVLW	0x82
; removed redundant BANKSEL
	MOVWF	(_caminar_pizq_1_314 + 2), B
; removed redundant BANKSEL
	CLRF	(_caminar_pizq_1_314 + 3), B
; removed redundant BANKSEL
	MOVWF	(_caminar_pizq_1_314 + 4), B
; removed redundant BANKSEL
	CLRF	(_caminar_pizq_1_314 + 5), B
	MOVLW	0x41
; removed redundant BANKSEL
	MOVWF	(_caminar_pizq_1_314 + 6), B
; removed redundant BANKSEL
	CLRF	(_caminar_pizq_1_314 + 7), B
;	.line	95; /home/valentin/.icaro/firmware/source/user.c	int cder[4]={100,100,45,45};
	MOVLW	0x64
	BANKSEL	_caminar_cder_1_314
	MOVWF	_caminar_cder_1_314, B
; removed redundant BANKSEL
	CLRF	(_caminar_cder_1_314 + 1), B
; removed redundant BANKSEL
	MOVWF	(_caminar_cder_1_314 + 2), B
; removed redundant BANKSEL
	CLRF	(_caminar_cder_1_314 + 3), B
	MOVLW	0x2d
; removed redundant BANKSEL
	MOVWF	(_caminar_cder_1_314 + 4), B
; removed redundant BANKSEL
	CLRF	(_caminar_cder_1_314 + 5), B
; removed redundant BANKSEL
	MOVWF	(_caminar_cder_1_314 + 6), B
; removed redundant BANKSEL
	CLRF	(_caminar_cder_1_314 + 7), B
;	.line	96; /home/valentin/.icaro/firmware/source/user.c	int cizq[4]={80,80,130,130};
	MOVLW	0x50
	BANKSEL	_caminar_cizq_1_314
	MOVWF	_caminar_cizq_1_314, B
; removed redundant BANKSEL
	CLRF	(_caminar_cizq_1_314 + 1), B
; removed redundant BANKSEL
	MOVWF	(_caminar_cizq_1_314 + 2), B
; removed redundant BANKSEL
	CLRF	(_caminar_cizq_1_314 + 3), B
	MOVLW	0x82
; removed redundant BANKSEL
	MOVWF	(_caminar_cizq_1_314 + 4), B
; removed redundant BANKSEL
	CLRF	(_caminar_cizq_1_314 + 5), B
; removed redundant BANKSEL
	MOVWF	(_caminar_cizq_1_314 + 6), B
; removed redundant BANKSEL
	CLRF	(_caminar_cizq_1_314 + 7), B
;	.line	98; /home/valentin/.icaro/firmware/source/user.c	for(i=0;i<4;i++)
	CLRF	r0x06
	CLRF	r0x07
_01577_DS_:
;	.line	100; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(14,pder[p]);//pie derecho
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_caminar_pder_1_314)
	ADDWF	r0x08, W
	MOVWF	r0x0a
	MOVLW	HIGH(_caminar_pder_1_314)
	ADDWFC	r0x09, W
	MOVWF	r0x0b
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0b, FSR0H
	MOVFF	POSTINC0, r0x0a
	MOVFF	INDF0, r0x0b
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVLW	0x0e
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	101; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(15,pizq[p]);//pie izquierdo
	MOVLW	LOW(_caminar_pizq_1_314)
	ADDWF	r0x08, W
	MOVWF	r0x0a
	MOVLW	HIGH(_caminar_pizq_1_314)
	ADDWFC	r0x09, W
	MOVWF	r0x0b
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0b, FSR0H
	MOVFF	POSTINC0, r0x0a
	MOVFF	INDF0, r0x0b
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVLW	0x0f
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	102; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(16,cder[p]);//cadera derecha
	MOVLW	LOW(_caminar_cder_1_314)
	ADDWF	r0x08, W
	MOVWF	r0x0a
	MOVLW	HIGH(_caminar_cder_1_314)
	ADDWFC	r0x09, W
	MOVWF	r0x0b
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0b, FSR0H
	MOVFF	POSTINC0, r0x0a
	MOVFF	INDF0, r0x0b
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	103; /home/valentin/.icaro/firmware/source/user.c	ServoWrite(17,cizq[p]); //cadera izquierda
	MOVLW	LOW(_caminar_cizq_1_314)
	ADDWF	r0x08, F
	MOVLW	HIGH(_caminar_cizq_1_314)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	POSTINC0, r0x08
	MOVFF	INDF0, r0x09
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVLW	0x11
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	104; /home/valentin/.icaro/firmware/source/user.c	Delayms(tiempo);
	MOVFF	r0x00, r0x08
	MOVFF	r0x01, r0x09
	CLRF	WREG
	BTFSC	r0x01, 7
	MOVLW	0xff
	MOVWF	r0x0a
; #	MOVWF	r0x0b
; #	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	105; /home/valentin/.icaro/firmware/source/user.c	p=p+n;
	MOVF	r0x04, W
	ADDWF	r0x02, F
	MOVF	r0x05, W
	ADDWFC	r0x03, F
;	.line	98; /home/valentin/.icaro/firmware/source/user.c	for(i=0;i<4;i++)
	INFSNZ	r0x06, F
	INCF	r0x07, F
	MOVF	r0x07, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01585_DS_
	MOVLW	0x04
	SUBWF	r0x06, W
_01585_DS_:
	BTFSS	STATUS, 0
	BRA	_01577_DS_
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__mens	code
_mens:
;	.line	68; /home/valentin/.icaro/firmware/source/user.c	void mens(int val)
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
;	.line	70; /home/valentin/.icaro/firmware/source/user.c	int p[37]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9',' '};
	MOVLW	0x61
	BANKSEL	_mens_p_1_306
	MOVWF	_mens_p_1_306, B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 1), B
	MOVLW	0x62
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 2), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 3), B
	MOVLW	0x63
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 4), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 5), B
	MOVLW	0x64
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 6), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 7), B
	MOVLW	0x65
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 8), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 9), B
	MOVLW	0x66
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 10), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 11), B
	MOVLW	0x67
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 12), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 13), B
	MOVLW	0x68
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 14), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 15), B
	MOVLW	0x69
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 16), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 17), B
	MOVLW	0x6a
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 18), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 19), B
	MOVLW	0x6b
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 20), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 21), B
	MOVLW	0x6c
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 22), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 23), B
	MOVLW	0x6d
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 24), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 25), B
	MOVLW	0x6e
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 26), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 27), B
	MOVLW	0x6f
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 28), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 29), B
	MOVLW	0x70
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 30), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 31), B
	MOVLW	0x71
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 32), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 33), B
	MOVLW	0x72
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 34), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 35), B
	MOVLW	0x73
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 36), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 37), B
	MOVLW	0x74
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 38), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 39), B
	MOVLW	0x75
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 40), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 41), B
	MOVLW	0x76
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 42), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 43), B
	MOVLW	0x77
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 44), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 45), B
	MOVLW	0x78
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 46), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 47), B
	MOVLW	0x79
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 48), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 49), B
	MOVLW	0x7a
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 50), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 51), B
	MOVLW	0x30
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 52), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 53), B
	MOVLW	0x31
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 54), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 55), B
	MOVLW	0x32
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 56), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 57), B
	MOVLW	0x33
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 58), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 59), B
	MOVLW	0x34
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 60), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 61), B
	MOVLW	0x35
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 62), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 63), B
	MOVLW	0x36
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 64), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 65), B
	MOVLW	0x37
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 66), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 67), B
	MOVLW	0x38
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 68), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 69), B
	MOVLW	0x39
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 70), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 71), B
	MOVLW	0x20
; removed redundant BANKSEL
	MOVWF	(_mens_p_1_306 + 72), B
; removed redundant BANKSEL
	CLRF	(_mens_p_1_306 + 73), B
	BANKSEL	_mens_n_1_306
;	.line	71; /home/valentin/.icaro/firmware/source/user.c	char n[]=" ";
	MOVWF	_mens_n_1_306, B
; removed redundant BANKSEL
	CLRF	(_mens_n_1_306 + 1), B
;	.line	73; /home/valentin/.icaro/firmware/source/user.c	for (i=0;i<37;i++)
	CLRF	r0x02
	CLRF	r0x03
	CLRF	r0x04
	CLRF	r0x05
_01536_DS_:
;	.line	75; /home/valentin/.icaro/firmware/source/user.c	if (val==p[i]) 
	MOVLW	LOW(_mens_p_1_306)
	ADDWF	r0x04, W
	MOVWF	r0x06
	MOVLW	HIGH(_mens_p_1_306)
	ADDWFC	r0x05, W
	MOVWF	r0x07
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
	MOVF	r0x00, W
	XORWF	r0x06, W
	BNZ	_01537_DS_
	MOVF	r0x01, W
	XORWF	r0x07, W
	BZ	_01562_DS_
_01561_DS_:
	BRA	_01537_DS_
_01562_DS_:
;	.line	77; /home/valentin/.icaro/firmware/source/user.c	n[0]=p[i];
	MOVF	r0x06, W
	BANKSEL	_mens_n_1_306
	MOVWF	_mens_n_1_306, B
;	.line	78; /home/valentin/.icaro/firmware/source/user.c	lcdPrint(n);
	MOVLW	0x80
; #	MOVWF	r0x08
; #	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_mens_n_1_306)
	MOVWF	POSTDEC1
	MOVLW	LOW(_mens_n_1_306)
	MOVWF	POSTDEC1
	CALL	_lcdPrint
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	79; /home/valentin/.icaro/firmware/source/user.c	Delayms(1); 
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	80; /home/valentin/.icaro/firmware/source/user.c	return;
	BRA	_01538_DS_
_01537_DS_:
;	.line	73; /home/valentin/.icaro/firmware/source/user.c	for (i=0;i<37;i++)
	MOVLW	0x02
	ADDWF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
	INFSNZ	r0x02, F
	INCF	r0x03, F
	MOVF	r0x03, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01563_DS_
	MOVLW	0x25
	SUBWF	r0x02, W
_01563_DS_:
	BNC	_01536_DS_
;	.line	83; /home/valentin/.icaro/firmware/source/user.c	if (val=='?') {lcdPrint("?"); Delayms(1);return;}
	MOVF	r0x00, W
	XORLW	0x3f
	BNZ	_01529_DS_
	MOVF	r0x01, W
	BZ	_01565_DS_
_01564_DS_:
	BRA	_01529_DS_
_01565_DS_:
	MOVLW	UPPER(___str_5)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_5)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_5)
	MOVWF	POSTDEC1
	CALL	_lcdPrint
	MOVLW	0x03
	ADDWF	FSR1L, F
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01538_DS_
_01529_DS_:
;	.line	84; /home/valentin/.icaro/firmware/source/user.c	if (val=='!') {lcdPrint("!"); Delayms(1);return;}
	MOVF	r0x00, W
	XORLW	0x21
	BNZ	_01531_DS_
	MOVF	r0x01, W
	BZ	_01567_DS_
_01566_DS_:
	BRA	_01531_DS_
_01567_DS_:
	MOVLW	UPPER(___str_6)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_6)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_6)
	MOVWF	POSTDEC1
	CALL	_lcdPrint
	MOVLW	0x03
	ADDWF	FSR1L, F
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01538_DS_
_01531_DS_:
;	.line	85; /home/valentin/.icaro/firmware/source/user.c	if (val=='#') {clear(); Delayms(1);return;}
	MOVF	r0x00, W
	XORLW	0x23
	BNZ	_01533_DS_
	MOVF	r0x01, W
	BZ	_01569_DS_
_01568_DS_:
	BRA	_01533_DS_
_01569_DS_:
	CALL	_clear
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01538_DS_
_01533_DS_:
;	.line	86; /home/valentin/.icaro/firmware/source/user.c	if (val=='$') {setCursor(0,1); Delayms(1);return;}
	MOVF	r0x00, W
	XORLW	0x24
	BNZ	_01538_DS_
	MOVF	r0x01, W
	BZ	_01571_DS_
_01570_DS_:
	BRA	_01538_DS_
_01571_DS_:
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_setCursor
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
_01538_DS_:
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
S_main__setup	code
_setup:
;	.line	39; /home/valentin/.icaro/firmware/source/user.c	TRISB=0; //defino PORTB como salida
	CLRF	_TRISB
;	.line	40; /home/valentin/.icaro/firmware/source/user.c	PORTB=0; 
	CLRF	_PORTB
;	.line	41; /home/valentin/.icaro/firmware/source/user.c	PORTD=0;
	CLRF	_PORTD
;	.line	42; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG1,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x15
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	43; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG2,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x16
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	45; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG3,TRIG);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	46; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG4,ECHO);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	47; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P1,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x19
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	48; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P2,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1a
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	49; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P3,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1b
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	50; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P4,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	51; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(13);
	MOVLW	0x0d
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	52; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(14);
	MOVLW	0x0e
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	53; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(15);
	MOVLW	0x0f
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	54; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(16);
	MOVLW	0x10
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	55; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(17);
	MOVLW	0x11
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	59; /home/valentin/.icaro/firmware/source/user.c	lcd(4, 5, 0, 1, 2, 3, 0, 0, 0, 0); // RS, E, D4 ~ D8	
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x03
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x05
	MOVWF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	_lcd
	MOVLW	0x0a
	ADDWF	FSR1L, F
;	.line	61; /home/valentin/.icaro/firmware/source/user.c	begin(8, 2);
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_begin
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	62; /home/valentin/.icaro/firmware/source/user.c	home();
	CALL	_home
;	.line	64; /home/valentin/.icaro/firmware/source/user.c	serial_begin(9600);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x25
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CALL	_serial_begin
	MOVLW	0x04
	ADDWF	FSR1L, F
	RETURN	

; ; Starting pCode block
S_main__ping	code
_ping:
;	.line	27; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	int ping()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x03, POSTDEC1
_01493_DS_:
;	.line	31; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	while (digitalread(24) == LOW) 
	CLRF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVFF	PRODL, r0x01
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	IORWF	r0x01, W
	BNZ	_01504_DS_
;	.line	33; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	digitalwrite(23, HIGH);//Activa el disparador
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	34; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	Delayus(50);//Espera 50 microsegundos (minimo 10)
	CLRF	POSTDEC1
	MOVLW	0x32
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	35; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	digitalwrite(23, LOW);//Desactiva el disparador
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01493_DS_
_01504_DS_:
;	.line	38; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	while (digitalread(24) == HIGH) 
	CLRF	r0x00
	CLRF	r0x01
_01496_DS_:
	CLRF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVFF	PRODL, r0x03
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	XORLW	0x01
	BNZ	_01514_DS_
	MOVF	r0x03, W
	BZ	_01515_DS_
_01514_DS_:
	BRA	_01498_DS_
_01515_DS_:
;	.line	40; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	Dato++;//El contador se incrementa hasta llegar el eco
	INFSNZ	r0x00, F
	INCF	r0x01, F
;	.line	41; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	Delayus(58);//Tiempo en recorrer dos centimetros 1 de ida 1 de vuelta
	CLRF	POSTDEC1
	MOVLW	0x3a
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BRA	_01496_DS_
_01498_DS_:
;	.line	44; /home/valentin/.icaro/firmware/icaro_lib/sensores.h	return Dato;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__lcd	code
_lcd:
;	.line	336; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void lcd(uint8_t rs, uint8_t enable, uint8_t d0, uint8_t d1, uint8_t d2, uint8_t d3, 
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
	MOVLW	0x0b
	MOVFF	PLUSW2, r0x09
;	.line	339; /home/valentin/.icaro/firmware/tmp/lcdlib.c	init(((d4 + d5 + d6 + d7)==0), rs, -1, enable, d0, d1, d2, d3, d4, d5, d6, d7);		
	MOVFF	r0x06, r0x0a
	CLRF	r0x0b
	MOVFF	r0x07, r0x0c
	CLRF	r0x0d
	MOVF	r0x0c, W
	ADDWF	r0x0a, F
	MOVF	r0x0d, W
	ADDWFC	r0x0b, F
	MOVFF	r0x08, r0x0c
	MOVF	r0x0c, W
	ADDWF	r0x0a, F
	MOVF	r0x0d, W
	ADDWFC	r0x0b, F
	MOVFF	r0x09, r0x0c
	MOVF	r0x0c, W
	ADDWF	r0x0a, F
	MOVF	r0x0d, W
	ADDWFC	r0x0b, F
	MOVF	r0x0a, W
	BNZ	_01487_DS_
	MOVF	r0x0b, W
	BNZ	_01487_DS_
	CLRF	r0x0a
	INCF	r0x0a, F
	BRA	_01488_DS_
_01487_DS_:
	CLRF	r0x0a
_01488_DS_:
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	SETF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	_init
	MOVLW	0x0c
	ADDWF	FSR1L, F
	MOVFF	PREINC1, r0x0d
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__init	code
_init:
;	.line	299; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void init(uint8_t fourbitmode, uint8_t rs, uint8_t rw, uint8_t enable, 
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
	MOVFF	PLUSW2, __rs_pin
	MOVLW	0x04
	MOVFF	PLUSW2, __rw_pin
	MOVLW	0x05
	MOVFF	PLUSW2, __enable_pin
	MOVLW	0x06
	MOVFF	PLUSW2, r0x01
	MOVLW	0x07
	MOVFF	PLUSW2, r0x02
	MOVLW	0x08
	MOVFF	PLUSW2, r0x03
	MOVLW	0x09
	MOVFF	PLUSW2, r0x04
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x05
	MOVLW	0x0b
	MOVFF	PLUSW2, r0x06
	MOVLW	0x0c
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0d
	MOVFF	PLUSW2, r0x08
;	.line	307; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[0] = d0;
	MOVF	r0x01, W
	BANKSEL	__data_pins
	MOVWF	__data_pins, B
;	.line	308; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[1] = d1;
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(__data_pins + 1), B
;	.line	309; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[2] = d2;
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(__data_pins + 2), B
;	.line	310; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[3] = d3; 
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	(__data_pins + 3), B
;	.line	311; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[4] = d4;
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(__data_pins + 4), B
;	.line	312; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[5] = d5;
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(__data_pins + 5), B
;	.line	313; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[6] = d6;
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(__data_pins + 6), B
;	.line	314; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_data_pins[7] = d7; 
	MOVF	r0x08, W
; removed redundant BANKSEL
	MOVWF	(__data_pins + 7), B
;	.line	316; /home/valentin/.icaro/firmware/tmp/lcdlib.c	pinmode(_rs_pin, OUTPUT);
	MOVFF	__rs_pin, r0x01
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	318; /home/valentin/.icaro/firmware/tmp/lcdlib.c	pinmode(_enable_pin, OUTPUT);
	MOVFF	__enable_pin, r0x01
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	320; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if (fourbitmode){
	MOVF	r0x00, W
	BZ	_01457_DS_
	BANKSEL	__displayfunction
;	.line	321; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displayfunction = LCD_4BITMODE | LCD_1LINE | LCD_5x8DOTS;
	CLRF	__displayfunction, B
;	.line	322; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 4; i++) {
	CLRF	r0x00
	CLRF	r0x01
_01459_DS_:
;	.line	323; /home/valentin/.icaro/firmware/tmp/lcdlib.c	pinmode(_data_pins[i], OUTPUT);
	MOVLW	LOW(__data_pins)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(__data_pins)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	322; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 4; i++) {
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVF	r0x01, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01479_DS_
	MOVLW	0x04
	SUBWF	r0x00, W
_01479_DS_:
	BNC	_01459_DS_
	BRA	_01463_DS_
_01457_DS_:
;	.line	327; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displayfunction = LCD_8BITMODE | LCD_1LINE | LCD_5x8DOTS;
	MOVLW	0x10
	BANKSEL	__displayfunction
	MOVWF	__displayfunction, B
;	.line	328; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 8; i++) {
	CLRF	r0x00
	CLRF	r0x01
_01461_DS_:
;	.line	329; /home/valentin/.icaro/firmware/tmp/lcdlib.c	pinmode(_data_pins[i], OUTPUT);
	MOVLW	LOW(__data_pins)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(__data_pins)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	328; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 8; i++) {
	INFSNZ	r0x00, F
	INCF	r0x01, F
	MOVF	r0x01, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01480_DS_
	MOVLW	0x08
	SUBWF	r0x00, W
_01480_DS_:
	BNC	_01461_DS_
_01463_DS_:
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
S_main__begin	code
_begin:
;	.line	225; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void begin(uint8_t lines, uint8_t dotsize) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	226; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if (lines > 1) {
	MOVLW	0x02
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_01423_DS_
; #	BSF	__displayfunction, 3, B
; #	MOVFF	r0x00, __numlines
;	.line	227; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displayfunction |= LCD_2LINE;
	SUBWF	r0x00, W
;	.line	229; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_numlines = lines;
	BNC	_11660_DS_
	BANKSEL	__displayfunction
	BSF	__displayfunction, 3, B
_11660_DS_:
	MOVFF	r0x00, __numlines
	BANKSEL	__currline
;	.line	230; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_currline = 0;
	CLRF	__currline, B
;	.line	233; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if ((dotsize != 0) && (lines == 1)) {
	MOVF	r0x01, W
	BZ	_01425_DS_
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_01425_DS_
_01447_DS_:
	BANKSEL	__displayfunction
;	.line	234; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displayfunction |= LCD_5x10DOTS;
	BSF	__displayfunction, 2, B
_01425_DS_:
;	.line	237; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(50000); //Pinguino needs it? long delay on startup time!
	MOVLW	0xc3
	MOVWF	POSTDEC1
	MOVLW	0x50
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	239; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_rs_pin, LOW);
	MOVFF	__rs_pin, r0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	240; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_enable_pin, LOW);
	MOVFF	__enable_pin, r0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
	BANKSEL	__displayfunction
;	.line	243; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if (! (_displayfunction & LCD_8BITMODE)) {
	BTFSC	__displayfunction, 4, B
	BRA	_01428_DS_
;	.line	248; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_write4bits
	MOVF	POSTINC1, F
;	.line	249; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(4500); // wait min 4.1ms
	MOVLW	0x11
	MOVWF	POSTDEC1
	MOVLW	0x94
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	252; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write4bits(0x03);
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_write4bits
	MOVF	POSTINC1, F
;	.line	253; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(4500); // wait min 4.1ms
	MOVLW	0x11
	MOVWF	POSTDEC1
	MOVLW	0x94
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	256; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write4bits(0x03); 
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	_write4bits
	MOVF	POSTINC1, F
;	.line	257; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(150);
	CLRF	POSTDEC1
	MOVLW	0x96
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	260; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write4bits(0x02); 
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_write4bits
	MOVF	POSTINC1, F
	BRA	_01429_DS_
_01428_DS_:
;	.line	266; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_FUNCTIONSET | _displayfunction);
	MOVLW	0x20
	BANKSEL	__displayfunction
	IORWF	__displayfunction, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
;	.line	267; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(4500);  // wait more than 4.1ms
	MOVLW	0x11
	MOVWF	POSTDEC1
	MOVLW	0x94
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	270; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_FUNCTIONSET | _displayfunction);
	MOVLW	0x20
	BANKSEL	__displayfunction
	IORWF	__displayfunction, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
;	.line	271; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(150);
	CLRF	POSTDEC1
	MOVLW	0x96
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	274; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_FUNCTIONSET | _displayfunction);
	MOVLW	0x20
	BANKSEL	__displayfunction
	IORWF	__displayfunction, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
_01429_DS_:
;	.line	278; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_FUNCTIONSET | _displayfunction);  
	MOVLW	0x20
	BANKSEL	__displayfunction
	IORWF	__displayfunction, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
;	.line	281; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaycontrol = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;  
	MOVLW	0x04
	BANKSEL	__displaycontrol
	MOVWF	__displaycontrol, B
;	.line	282; /home/valentin/.icaro/firmware/tmp/lcdlib.c	display();
	CALL	_display
;	.line	285; /home/valentin/.icaro/firmware/tmp/lcdlib.c	clear();
	CALL	_clear
;	.line	288; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaymode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
	MOVLW	0x02
	BANKSEL	__displaymode
	MOVWF	__displaymode, B
;	.line	290; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_ENTRYMODESET | _displaymode);
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__noAutoscroll	code
_noAutoscroll:
;	.line	219; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void noAutoscroll(void) {
	MOVFF	r0x00, POSTDEC1
	BANKSEL	__displaymode
;	.line	220; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaymode &= ~LCD_ENTRYSHIFTINCREMENT;
	MOVF	__displaymode, W, B
	MOVWF	r0x00
	MOVLW	0xfe
	ANDWF	r0x00, W
; removed redundant BANKSEL
	MOVWF	__displaymode, B
;	.line	221; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_ENTRYMODESET | _displaymode);
	MOVLW	0x04
; removed redundant BANKSEL
	IORWF	__displaymode, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__autoscroll	code
_autoscroll:
	BANKSEL	__displaymode
;	.line	214; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaymode |= LCD_ENTRYSHIFTINCREMENT;
	BSF	__displaymode, 0, B
;	.line	215; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_ENTRYMODESET | _displaymode);
	MOVLW	0x04
; removed redundant BANKSEL
	IORWF	__displaymode, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__rightToLeft	code
_rightToLeft:
;	.line	207; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void rightToLeft(void) {
	MOVFF	r0x00, POSTDEC1
	BANKSEL	__displaymode
;	.line	208; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaymode &= ~LCD_ENTRYLEFT;
	MOVF	__displaymode, W, B
	MOVWF	r0x00
	MOVLW	0xfd
	ANDWF	r0x00, W
; removed redundant BANKSEL
	MOVWF	__displaymode, B
;	.line	209; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_ENTRYMODESET | _displaymode);
	MOVLW	0x04
; removed redundant BANKSEL
	IORWF	__displaymode, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__leftToRight	code
_leftToRight:
	BANKSEL	__displaymode
;	.line	202; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaymode |= LCD_ENTRYLEFT;
	BSF	__displaymode, 1, B
;	.line	203; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_ENTRYMODESET | _displaymode);
	MOVLW	0x04
; removed redundant BANKSEL
	IORWF	__displaymode, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__scrollDisplayRight	code
_scrollDisplayRight:
;	.line	197; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVERIGHT);
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__scrollDisplayLeft	code
_scrollDisplayLeft:
;	.line	194; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVELEFT);
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__blink	code
_blink:
	BANKSEL	__displaycontrol
;	.line	188; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaycontrol |= LCD_BLINKON;
	BSF	__displaycontrol, 0, B
;	.line	189; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_DISPLAYCONTROL | _displaycontrol);
	MOVLW	0x08
; removed redundant BANKSEL
	IORWF	__displaycontrol, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__noBlink	code
_noBlink:
;	.line	183; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void noBlink() {
	MOVFF	r0x00, POSTDEC1
	BANKSEL	__displaycontrol
;	.line	184; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaycontrol &= ~LCD_BLINKON;
	MOVF	__displaycontrol, W, B
	MOVWF	r0x00
	MOVLW	0xfe
	ANDWF	r0x00, W
; removed redundant BANKSEL
	MOVWF	__displaycontrol, B
;	.line	185; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_DISPLAYCONTROL | _displaycontrol);
	MOVLW	0x08
; removed redundant BANKSEL
	IORWF	__displaycontrol, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__cursor	code
_cursor:
	BANKSEL	__displaycontrol
;	.line	178; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaycontrol |= LCD_CURSORON;
	BSF	__displaycontrol, 1, B
;	.line	179; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_DISPLAYCONTROL | _displaycontrol);
	MOVLW	0x08
; removed redundant BANKSEL
	IORWF	__displaycontrol, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__noCursor	code
_noCursor:
;	.line	173; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void noCursor() {
	MOVFF	r0x00, POSTDEC1
	BANKSEL	__displaycontrol
;	.line	174; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaycontrol &= ~LCD_CURSORON;
	MOVF	__displaycontrol, W, B
	MOVWF	r0x00
	MOVLW	0xfd
	ANDWF	r0x00, W
; removed redundant BANKSEL
	MOVWF	__displaycontrol, B
;	.line	175; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_DISPLAYCONTROL | _displaycontrol);
	MOVLW	0x08
; removed redundant BANKSEL
	IORWF	__displaycontrol, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__display	code
_display:
	BANKSEL	__displaycontrol
;	.line	168; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaycontrol |= LCD_DISPLAYON;
	BSF	__displaycontrol, 2, B
;	.line	169; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_DISPLAYCONTROL | _displaycontrol);
	MOVLW	0x08
; removed redundant BANKSEL
	IORWF	__displaycontrol, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__noDisplay	code
_noDisplay:
;	.line	163; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void noDisplay() {
	MOVFF	r0x00, POSTDEC1
	BANKSEL	__displaycontrol
;	.line	164; /home/valentin/.icaro/firmware/tmp/lcdlib.c	_displaycontrol &= ~LCD_DISPLAYON;
	MOVF	__displaycontrol, W, B
	MOVWF	r0x00
	MOVLW	0xfb
	ANDWF	r0x00, W
; removed redundant BANKSEL
	MOVWF	__displaycontrol, B
;	.line	165; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_DISPLAYCONTROL | _displaycontrol);
	MOVLW	0x08
; removed redundant BANKSEL
	IORWF	__displaycontrol, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__clear	code
_clear:
;	.line	158; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_CLEARDISPLAY);  // clear display, set cursor position to zero
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
;	.line	159; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(2000);  // this command takes a long time!
	MOVLW	0x07
	MOVWF	POSTDEC1
	MOVLW	0xd0
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__home	code
_home:
;	.line	152; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_RETURNHOME);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
;	.line	153; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(2000);
	MOVLW	0x07
	MOVWF	POSTDEC1
	MOVLW	0xd0
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__printFloat	code
_printFloat:
;	.line	114; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void printFloat(float number, uint8_t digits) { 
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
;	.line	120; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if (number < 0.0) {
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x05
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x05, W
	BZ	_01315_DS_
;	.line	121; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write('-');
	MOVLW	0x2d
	MOVWF	POSTDEC1
	CALL	_write
	MOVF	POSTINC1, F
;	.line	122; /home/valentin/.icaro/firmware/tmp/lcdlib.c	number = -number;
	BTG	r0x03, 7
_01315_DS_:
;	.line	126; /home/valentin/.icaro/firmware/tmp/lcdlib.c	rounding = 0.5;
	CLRF	r0x05
	CLRF	r0x06
	CLRF	r0x07
	MOVLW	0x3f
	MOVWF	r0x08
;	.line	127; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i=0; i<digits; ++i)
	CLRF	r0x09
_01323_DS_:
	MOVF	r0x04, W
	SUBWF	r0x09, W
	BC	_01316_DS_
;	.line	128; /home/valentin/.icaro/firmware/tmp/lcdlib.c	rounding /= 10.0;
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x05
	MOVFF	PRODL, r0x06
	MOVFF	PRODH, r0x07
	MOVFF	FSR0L, r0x08
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	127; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i=0; i<digits; ++i)
	INCF	r0x09, F
	BRA	_01323_DS_
_01316_DS_:
;	.line	130; /home/valentin/.icaro/firmware/tmp/lcdlib.c	number += rounding;
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	133; /home/valentin/.icaro/firmware/tmp/lcdlib.c	int_part = (unsigned long)number;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2ulong
	MOVWF	r0x05
	MOVFF	PRODL, r0x06
	MOVFF	PRODH, r0x07
	MOVFF	FSR0L, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	134; /home/valentin/.icaro/firmware/tmp/lcdlib.c	remainder = number - (float)int_part;
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	___ulong2fs
	MOVWF	r0x09
	MOVFF	PRODL, r0x0a
	MOVFF	PRODH, r0x0b
	MOVFF	FSR0L, r0x0c
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	135; /home/valentin/.icaro/firmware/tmp/lcdlib.c	printNumber(int_part, 10);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	_printNumber
	MOVLW	0x05
	ADDWF	FSR1L, F
;	.line	138; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if (digits > 0)
	MOVF	r0x04, W
	BZ	_01319_DS_
;	.line	139; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write('.'); 
	MOVLW	0x2e
	MOVWF	POSTDEC1
	CALL	_write
	MOVF	POSTINC1, F
_01319_DS_:
;	.line	142; /home/valentin/.icaro/firmware/tmp/lcdlib.c	while (digits-- > 0) {
	MOVFF	r0x04, r0x05
	DECF	r0x04, F
	MOVF	r0x05, W
	BTFSC	STATUS, 2
	BRA	_01325_DS_
;	.line	143; /home/valentin/.icaro/firmware/tmp/lcdlib.c	remainder *= 10.0;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	144; /home/valentin/.icaro/firmware/tmp/lcdlib.c	toPrint = (unsigned int)remainder; //Integer part without use of math.h lib, I think better! (Fazzi)
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2uint
	MOVWF	r0x05
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	145; /home/valentin/.icaro/firmware/tmp/lcdlib.c	printNumber(toPrint, 10);
	MOVFF	r0x05, r0x06
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	_printNumber
	MOVLW	0x05
	ADDWF	FSR1L, F
;	.line	146; /home/valentin/.icaro/firmware/tmp/lcdlib.c	remainder -= toPrint; 
	CLRF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x05
	MOVFF	PRODL, r0x06
	MOVFF	PRODH, r0x07
	MOVFF	FSR0L, r0x08
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BRA	_01319_DS_
_01325_DS_:
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__printNumber	code
_printNumber:
;	.line	93; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void printNumber(unsigned long n, uint8_t base) {  
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
;	.line	97; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if (n == 0) {
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BNZ	_01290_DS_
;	.line	98; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_write
	MOVF	POSTINC1, F
;	.line	99; /home/valentin/.icaro/firmware/tmp/lcdlib.c	return;
	BRA	_01282_DS_
_01290_DS_:
;	.line	102; /home/valentin/.icaro/firmware/tmp/lcdlib.c	while (n > 0) {
	CLRF	r0x05
	CLRF	r0x06
	CLRF	r0x07
	CLRF	r0x08
_01275_DS_:
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BTFSC	STATUS, 2
	BRA	_01293_DS_
;	.line	103; /home/valentin/.icaro/firmware/tmp/lcdlib.c	buf[i++] = n % base;
	MOVFF	r0x05, r0x09
	MOVFF	r0x06, r0x0a
	INCF	r0x05, F
	BNC	_01308_DS_
	INCF	r0x06, F
	BNC	_01308_DS_
	INFSNZ	r0x07, F
	INCF	r0x08, F
_01308_DS_:
	MOVLW	LOW(_printNumber_buf_1_260)
	ADDWF	r0x09, F
	MOVLW	HIGH(_printNumber_buf_1_260)
	ADDWFC	r0x0a, F
	MOVFF	r0x04, r0x0b
	CLRF	r0x0c
	CLRF	r0x0d
	CLRF	r0x0e
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__modulong
	MOVWF	r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	r0x0f, INDF0
;	.line	104; /home/valentin/.icaro/firmware/tmp/lcdlib.c	n /= base;
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	BRA	_01275_DS_
_01293_DS_:
	MOVFF	r0x05, r0x00
	MOVFF	r0x06, r0x01
	MOVFF	r0x07, r0x02
	MOVFF	r0x08, r0x03
_01280_DS_:
;	.line	107; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (; i > 0; i--)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BZ	_01282_DS_
; #	MOVF	r0x00, W
; #	MOVWF	r0x04
; #	DECF	r0x04, F
;	.line	108; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write((char) (buf[i - 1] < 10 ?
	DECF	r0x00, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	LOW(_printNumber_buf_1_260)
	ADDWF	r0x04, F
	MOVLW	HIGH(_printNumber_buf_1_260)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x04
	MOVLW	0x0a
	SUBWF	r0x04, W
	BC	_01286_DS_
;	.line	109; /home/valentin/.icaro/firmware/tmp/lcdlib.c	'0' + buf[i - 1] :
	MOVF	r0x04, W
	MOVWF	r0x05
	MOVLW	0x30
	ADDWF	r0x05, F
	BRA	_01287_DS_
_01286_DS_:
;	.line	110; /home/valentin/.icaro/firmware/tmp/lcdlib.c	'A' + buf[i - 1] - 10));
	MOVLW	0x37
	ADDWF	r0x04, W
	MOVWF	r0x05
_01287_DS_:
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	_write
	MOVF	POSTINC1, F
;	.line	107; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (; i > 0; i--)
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
	ADDWFC	r0x03, F
	BRA	_01280_DS_
_01282_DS_:
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__lcdPrint	code
_lcdPrint:
;	.line	85; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void lcdPrint(char *string) {
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
;	.line	87; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for( i=0; string[i]; i++) {
	CLRF	r0x03
	CLRF	r0x04
_01266_DS_:
	MOVF	r0x03, W
	ADDWF	r0x00, W
	MOVWF	r0x05
	MOVF	r0x04, W
	ADDWFC	r0x01, W
	MOVWF	r0x06
	CLRF	WREG
	BTFSC	r0x04, 7
	SETF	WREG
	ADDWFC	r0x02, W
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	CALL	__gptrget1
	MOVWF	r0x05
	MOVF	r0x05, W
	BZ	_01268_DS_
;	.line	88; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write(string[i]);
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CALL	_write
	MOVF	POSTINC1, F
;	.line	87; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for( i=0; string[i]; i++) {
	INFSNZ	r0x03, F
	INCF	r0x04, F
	BRA	_01266_DS_
_01268_DS_:
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
S_main__setCursor	code
_setCursor:
;	.line	76; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void setCursor(uint8_t col, uint8_t row) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	BANKSEL	_setCursor_row_offsets_1_254
;	.line	77; /home/valentin/.icaro/firmware/tmp/lcdlib.c	int row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
	CLRF	_setCursor_row_offsets_1_254, B
; removed redundant BANKSEL
	CLRF	(_setCursor_row_offsets_1_254 + 1), B
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_setCursor_row_offsets_1_254 + 2), B
; removed redundant BANKSEL
	CLRF	(_setCursor_row_offsets_1_254 + 3), B
	MOVLW	0x14
; removed redundant BANKSEL
	MOVWF	(_setCursor_row_offsets_1_254 + 4), B
; removed redundant BANKSEL
	CLRF	(_setCursor_row_offsets_1_254 + 5), B
	MOVLW	0x54
; removed redundant BANKSEL
	MOVWF	(_setCursor_row_offsets_1_254 + 6), B
; removed redundant BANKSEL
	CLRF	(_setCursor_row_offsets_1_254 + 7), B
;	.line	78; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if ( row > _numlines ) {
	MOVF	r0x01, W
	BANKSEL	__numlines
	SUBWF	__numlines, W, B
	BC	_01253_DS_
; removed redundant BANKSEL
;	.line	79; /home/valentin/.icaro/firmware/tmp/lcdlib.c	row = _numlines-1;    // we count rows starting w/0
	DECF	__numlines, W, B
	MOVWF	r0x01
; ;multiply lit val:0x02 by variable r0x01 and store in r0x01
_01253_DS_:
;	.line	81; /home/valentin/.icaro/firmware/tmp/lcdlib.c	command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
	MOVF	r0x01, W
	MULLW	0x02
	MOVF	PRODH, W
	MOVWF	r0x02
	MOVFF	PRODL, r0x01
	MOVLW	LOW(_setCursor_row_offsets_1_254)
	ADDWF	r0x01, F
	MOVLW	HIGH(_setCursor_row_offsets_1_254)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	POSTINC0, r0x01
	MOVFF	INDF0, r0x02
	MOVF	r0x00, W
	ADDWF	r0x01, F
	BSF	r0x01, 7
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_command
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__command	code
_command:
;	.line	71; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void command(uchar value) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	72; /home/valentin/.icaro/firmware/tmp/lcdlib.c	send(value, LOW);
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__write	code
_write:
;	.line	65; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void write(uchar value) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	66; /home/valentin/.icaro/firmware/tmp/lcdlib.c	send(value, HIGH);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_send
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__send	code
_send:
;	.line	53; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void send(uint8_t value, uint8_t mode) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	54; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_rs_pin, mode);
	MOVFF	__rs_pin, r0x02
	CLRF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
	BANKSEL	__displayfunction
;	.line	56; /home/valentin/.icaro/firmware/tmp/lcdlib.c	if (_displayfunction & LCD_8BITMODE) {
	BTFSS	__displayfunction, 4, B
	BRA	_01230_DS_
;	.line	57; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write8bits(value); 
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_write8bits
	MOVF	POSTINC1, F
	BRA	_01232_DS_
_01230_DS_:
;	.line	59; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write4bits(value>>4);
	SWAPF	r0x00, W
	ANDLW	0x0f
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_write4bits
	MOVF	POSTINC1, F
;	.line	60; /home/valentin/.icaro/firmware/tmp/lcdlib.c	write4bits(value);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_write4bits
	MOVF	POSTINC1, F
_01232_DS_:
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__write8bits	code
_write8bits:
;	.line	44; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void write8bits(uint8_t value) {
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
;	.line	46; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 8; i++) {		
	CLRF	r0x01
	CLRF	r0x02
_01208_DS_:
;	.line	47; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_data_pins[i], (value >> i) & 0x01);
	MOVLW	LOW(__data_pins)
	ADDWF	r0x01, W
	MOVWF	r0x03
	MOVLW	HIGH(__data_pins)
	ADDWFC	r0x02, W
	MOVFF	r0x03, FSR0L
; =DF= MOVFF: SRC op r0x04 replaced by WREG
	MOVWF	FSR0H
	MOVFF	INDF0, r0x03
	CLRF	r0x04
	MOVFF	r0x00, r0x05
	MOVF	r0x01, W
	BZ	_01219_DS_
	BN	_01222_DS_
	NEGF	WREG
	BCF	STATUS, 0
_01220_DS_:
	RRCF	r0x05, F
	ADDLW	0x01
	BNC	_01220_DS_
	BRA	_01219_DS_
_01222_DS_:
	BCF	STATUS, 0
_01221_DS_:
	RLCF	r0x05, F
	ADDLW	0x01
	BNC	_01221_DS_
_01219_DS_:
	MOVLW	0x01
	ANDWF	r0x05, F
	CLRF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	46; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 8; i++) {		
	INFSNZ	r0x01, F
	INCF	r0x02, F
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01224_DS_
	MOVLW	0x08
	SUBWF	r0x01, W
_01224_DS_:
	BNC	_01208_DS_
;	.line	49; /home/valentin/.icaro/firmware/tmp/lcdlib.c	pulseEnable();
	CALL	_pulseEnable
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__write4bits	code
_write4bits:
;	.line	34; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void write4bits(uint8_t value) {
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
;	.line	36; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 4; i++) {		
	CLRF	r0x01
	CLRF	r0x02
_01186_DS_:
;	.line	37; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_data_pins[i], (value >> i) & 0x01);
	MOVLW	LOW(__data_pins)
	ADDWF	r0x01, W
	MOVWF	r0x03
	MOVLW	HIGH(__data_pins)
	ADDWFC	r0x02, W
	MOVFF	r0x03, FSR0L
; =DF= MOVFF: SRC op r0x04 replaced by WREG
	MOVWF	FSR0H
	MOVFF	INDF0, r0x03
	CLRF	r0x04
	MOVFF	r0x00, r0x05
	MOVF	r0x01, W
	BZ	_01197_DS_
	BN	_01200_DS_
	NEGF	WREG
	BCF	STATUS, 0
_01198_DS_:
	RRCF	r0x05, F
	ADDLW	0x01
	BNC	_01198_DS_
	BRA	_01197_DS_
_01200_DS_:
	BCF	STATUS, 0
_01199_DS_:
	RLCF	r0x05, F
	ADDLW	0x01
	BNC	_01199_DS_
_01197_DS_:
	MOVLW	0x01
	ANDWF	r0x05, F
	CLRF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	36; /home/valentin/.icaro/firmware/tmp/lcdlib.c	for (i = 0; i < 4; i++) {		
	INFSNZ	r0x01, F
	INCF	r0x02, F
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01202_DS_
	MOVLW	0x04
	SUBWF	r0x01, W
_01202_DS_:
	BNC	_01186_DS_
;	.line	40; /home/valentin/.icaro/firmware/tmp/lcdlib.c	pulseEnable();
	CALL	_pulseEnable
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__pulseEnable	code
_pulseEnable:
;	.line	24; /home/valentin/.icaro/firmware/tmp/lcdlib.c	void pulseEnable(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	25; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_enable_pin, LOW);
	MOVFF	__enable_pin, r0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	26; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(1);    
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	27; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_enable_pin, HIGH);
	MOVFF	__enable_pin, r0x00
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	28; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(1);    // enable pulse must be >450ns
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	29; /home/valentin/.icaro/firmware/tmp/lcdlib.c	digitalwrite(_enable_pin, LOW);
	MOVFF	__enable_pin, r0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalwrite
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	30; /home/valentin/.icaro/firmware/tmp/lcdlib.c	Delayus(100);   // commands need > 37us to settle
	CLRF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	CALL	_Delayus
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__serial_write	code
_serial_write:
;	.line	391; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	void serial_write(char *fmt,...)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVLW	0x08
	SUBWF	FSR1L, F
	BTFSS	STATUS, 0
	DECF	FSR1H, F
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	398; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	s=va_start(ap,fmt);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVWF	r0x01
	MOVWF	r0x01
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
	MOVLW	0x80
	MOVWF	r0x02
	MOVLW	0x03
	ADDWF	r0x00, F
	MOVLW	0x00
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
;	.line	399; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	switch (*s)
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
	MOVLW	0x01
	SUBWF	r0x00, W
	BTFSS	STATUS, 0
	BRA	_01163_DS_
	MOVLW	0x06
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_01163_DS_
	DECF	r0x00, F
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x00, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_01175_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_01175_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_01175_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_01175_DS_:
	GOTO	_01158_DS_
	GOTO	_01160_DS_
	GOTO	_01159_DS_
	GOTO	_01161_DS_
	GOTO	_01162_DS_
_01158_DS_:
;	.line	401; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	case DEC:       serial_printf("%d",(int)fmt);
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x07
	MOVLW	0x03
	MOVFF	PLUSW2, r0x08
	MOVLW	0x04
	MOVFF	PLUSW2, r0x09
	MOVF	r0x07, W
	MOVWF	r0x00
	MOVF	r0x08, W
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	UPPER(___str_2)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_2)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_2)
	MOVWF	POSTDEC1
	CALL	_serial_printf
	MOVLW	0x05
	ADDWF	FSR1L, F
;	.line	402; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	break;
	BRA	_01165_DS_
_01159_DS_:
;	.line	403; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	case HEX: 		serial_printf("%x",(int)fmt);
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x07
	MOVLW	0x03
	MOVFF	PLUSW2, r0x08
	MOVLW	0x04
	MOVFF	PLUSW2, r0x09
	MOVF	r0x07, W
	MOVWF	r0x00
	MOVF	r0x08, W
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	UPPER(___str_3)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_3)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_3)
	MOVWF	POSTDEC1
	CALL	_serial_printf
	MOVLW	0x05
	ADDWF	FSR1L, F
;	.line	404; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	break;
	BRA	_01165_DS_
_01160_DS_:
;	.line	405; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	case BYTE: 		serial_printf("%d",(unsigned char)fmt);
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x07
	MOVLW	0x03
	MOVFF	PLUSW2, r0x08
	MOVLW	0x04
	MOVFF	PLUSW2, r0x09
	MOVF	r0x07, W
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVWF	POSTDEC1
	MOVLW	UPPER(___str_2)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_2)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_2)
	MOVWF	POSTDEC1
	CALL	_serial_printf
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	406; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	break;
	BRA	_01165_DS_
_01161_DS_:
;	.line	407; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	case OCTAL:     uitoamod((int)fmt,chaine,8);
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x07
	MOVLW	0x03
	MOVFF	PLUSW2, r0x08
	MOVLW	0x04
	MOVFF	PLUSW2, r0x09
	MOVF	r0x07, W
	MOVWF	r0x00
	MOVF	r0x08, W
	MOVWF	r0x01
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVLW	0xf9
	ADDWF	FSR2L, W
	MOVWF	r0x02
	MOVLW	0xff
	ADDWFC	FSR2H, W
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
	MOVWF	r0x03
	MOVWF	r0x05
	MOVF	r0x02, W
	MOVWF	r0x04
	CLRF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_uitoamod
	MOVLW	0x07
	ADDWF	FSR1L, F
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
; #	MOVF	r0x02, W
; #	MOVF	r0x02, W
; #	MOVWF	r0x02
;	.line	408; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	serial_printf(chaine);
	MOVLW	0x80
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_serial_printf
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	409; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	break;
	BRA	_01165_DS_
_01162_DS_:
;	.line	410; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	case BIN:       uitoamod((int)fmt,chaine,2);
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x07
	MOVLW	0x03
	MOVFF	PLUSW2, r0x08
	MOVLW	0x04
	MOVFF	PLUSW2, r0x09
	MOVF	r0x07, W
	MOVWF	r0x00
	MOVF	r0x08, W
	MOVWF	r0x01
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVLW	0xf9
	ADDWF	FSR2L, W
	MOVWF	r0x02
	MOVLW	0xff
	ADDWFC	FSR2H, W
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
	MOVWF	r0x03
	MOVWF	r0x05
	MOVF	r0x02, W
	MOVWF	r0x04
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_uitoamod
	MOVLW	0x07
	ADDWF	FSR1L, F
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
; #	MOVF	r0x02, W
; #	MOVF	r0x02, W
; #	MOVWF	r0x02
;	.line	411; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	serial_printf(chaine);
	MOVLW	0x80
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_serial_printf
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	412; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	break;           
	BRA	_01165_DS_
_01163_DS_:
;	.line	413; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	default:	serial_printf(fmt);
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x07
	MOVLW	0x03
	MOVFF	PLUSW2, r0x08
	MOVLW	0x04
	MOVFF	PLUSW2, r0x09
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x07
	MOVLW	0x03
	MOVFF	PLUSW2, r0x08
	MOVLW	0x04
	MOVFF	PLUSW2, r0x09
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	CALL	_serial_printf
	MOVLW	0x03
	ADDWF	FSR1L, F
_01165_DS_:
;	.line	416; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	va_end(ap);
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVWF	POSTINC1
	MOVLW	0x07
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	COMF	WREG, F
	MOVF	PLUSW1, W
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__uitoamod	code
_uitoamod:
;	.line	367; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	static void uitoamod(unsigned int num, char * bf, unsigned int base)
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVFF	r0x10, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
;	.line	370; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	unsigned int d=1;
	MOVLW	0x01
	MOVWF	r0x07
	CLRF	r0x08
_01114_DS_:
;	.line	372; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	while (num/d >= base)
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x09
	MOVFF	PRODL, r0x0a
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVF	r0x06, W
	SUBWF	r0x0a, W
	BNZ	_01150_DS_
	MOVF	r0x05, W
	SUBWF	r0x09, W
_01150_DS_:
	BNC	_01133_DS_
;	.line	373; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	d*=base;		
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01114_DS_
_01133_DS_:
;	.line	375; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	while (d!=0)
	CLRF	r0x09
	CLRF	r0x0a
_01121_DS_:
	MOVF	r0x07, W
	IORWF	r0x08, W
	BTFSC	STATUS, 2
	BRA	_01123_DS_
;	.line	377; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	int dgt = num / d;
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	378; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	num%= d;
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__moduint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	379; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	d/=base;
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	380; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (n || dgt>0 || d==0)
	MOVF	r0x09, W
	IORWF	r0x0a, W
	BNZ	_01117_DS_
	MOVF	r0x0c, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01151_DS_
	MOVLW	0x01
	SUBWF	r0x0b, W
_01151_DS_:
	BC	_01117_DS_
	MOVF	r0x07, W
	IORWF	r0x08, W
	BTFSS	STATUS, 2
	BRA	_01121_DS_
_01117_DS_:
;	.line	382; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	*bf++ = dgt+(dgt<10 ? '0' : 'A'-10);
	MOVFF	r0x02, r0x0d
	MOVFF	r0x03, r0x0e
	MOVFF	r0x04, r0x0f
	INCF	r0x02, F
	BNC	_01152_DS_
	INFSNZ	r0x03, F
	INCF	r0x04, F
_01152_DS_:
	MOVF	r0x0b, W
	MOVWF	r0x10
	MOVF	r0x0c, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01153_DS_
	MOVLW	0x0a
	SUBWF	r0x0b, W
_01153_DS_:
	BC	_01126_DS_
	MOVLW	0x30
	MOVWF	r0x0b
	BRA	_01127_DS_
_01126_DS_:
	MOVLW	0x37
	MOVWF	r0x0b
_01127_DS_:
	MOVF	r0x0b, W
	ADDWF	r0x10, F
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x0e, PRODL
	MOVF	r0x0f, W
	CALL	__gptrput1
;	.line	383; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++n;
	INFSNZ	r0x09, F
	INCF	r0x0a, F
	BRA	_01121_DS_
_01123_DS_:
;	.line	386; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	*bf=0;
	CLRF	POSTDEC1
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, PRODL
	MOVF	r0x04, W
	CALL	__gptrput1
	MOVFF	PREINC1, r0x10
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__serial_printf	code
_serial_printf:
;	.line	354; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	void serial_printf(char *fmt, ...)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	358; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	va_start(args, fmt);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVWF	r0x01
	MOVWF	r0x01
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
	MOVLW	0x80
	MOVWF	r0x02
	MOVLW	0x03
	ADDWF	r0x00, F
	MOVLW	0x00
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
;	.line	359; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	printfmod(serial_putchar11, fmt, args);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x04
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	UPPER(_serial_putchar11)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_serial_putchar11)
	MOVWF	POSTDEC1
	MOVLW	LOW(_serial_putchar11)
	MOVWF	POSTDEC1
	CALL	_printfmod
	MOVLW	0x09
	ADDWF	FSR1L, F
;	.line	360; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	va_end(args);
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__serial_getkey	code
_serial_getkey:
;	.line	344; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	unsigned char serial_getkey()
	MOVFF	r0x00, POSTDEC1
_01101_DS_:
;	.line	347; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	while (!(serial_available()));
	CALL	_serial_available
	MOVWF	r0x00
	MOVF	r0x00, W
	BZ	_01101_DS_
;	.line	348; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	c = serial_read();
	CALL	_serial_read
	MOVWF	r0x00
;	.line	349; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	serial_flush();
	CALL	_serial_flush
;	.line	350; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return (c);
	MOVF	r0x00, W
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__serial_flush	code
_serial_flush:
; #	MOVLW	0x01
; #	MOVWF	_wpointer, B
; #	MOVLW	0x01
;	.line	338; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	wpointer=1;
	MOVLW	0x01
	BANKSEL	_wpointer
;	.line	339; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	rpointer=1;
	MOVWF	_wpointer, B
	BANKSEL	_rpointer
	MOVWF	_rpointer, B
	RETURN	

; ; Starting pCode block
S_main__serial_read	code
_serial_read:
;	.line	322; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	unsigned char serial_read()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	324; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	unsigned char caractere=0;
	CLRF	r0x00
;	.line	326; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (serial_available())
	CALL	_serial_available
	MOVWF	r0x01
	MOVF	r0x01, W
	BZ	_01081_DS_
;	.line	328; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	caractere=rx[rpointer++];
	MOVFF	_rpointer, r0x01
	BANKSEL	_rpointer
	INCF	_rpointer, F, B
	CLRF	r0x02
	MOVLW	LOW(_rx)
	ADDWF	r0x01, F
	MOVLW	HIGH(_rx)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x00
; removed redundant BANKSEL
;	.line	329; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (rpointer==RXBUFFERLENGTH)
	MOVF	_rpointer, W, B
	XORLW	0x80
	BNZ	_01081_DS_
;	.line	330; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	rpointer=1;
	MOVLW	0x01
	BANKSEL	_rpointer
	MOVWF	_rpointer, B
_01081_DS_:
;	.line	332; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return(caractere);
	MOVF	r0x00, W
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__serial_interrupt	code
_serial_interrupt:
;	.line	302; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	void serial_interrupt(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	307; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	PIR1bits.RCIF=0;				// clear RX interrupt flag
	BCF	_PIR1bits, 5
;	.line	308; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	caractere=RCREG;				// take received char
	MOVFF	_RCREG, r0x00
	BANKSEL	_wpointer
;	.line	309; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (wpointer!=RXBUFFERLENGTH-1)	// if not last place in buffer
	MOVF	_wpointer, W, B
	XORLW	0x7f
	BZ	_01051_DS_
_01069_DS_:
	BANKSEL	_wpointer
;	.line	310; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	newwp=wpointer+1;			// place=place+1
	INCF	_wpointer, W, B
	MOVWF	r0x01
	BRA	_01052_DS_
_01051_DS_:
;	.line	312; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	newwp=1;					// else place=1
	MOVLW	0x01
	MOVWF	r0x01
_01052_DS_:
	BANKSEL	_rpointer
;	.line	314; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (rpointer!=newwp)			// if read pointer!=write pointer
	MOVF	_rpointer, W, B
	XORWF	r0x01, W
	BZ	_01054_DS_
;	.line	315; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	rx[wpointer++]=caractere;	// store received char
	MOVFF	_wpointer, r0x01
	BANKSEL	_wpointer
	INCF	_wpointer, F, B
	CLRF	r0x02
	MOVLW	LOW(_rx)
	ADDWF	r0x01, F
	MOVLW	HIGH(_rx)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x00, INDF0
_01054_DS_:
	BANKSEL	_wpointer
;	.line	317; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (wpointer==RXBUFFERLENGTH)	// if write pointer=length buffer
	MOVF	_wpointer, W, B
	XORLW	0x80
	BNZ	_01057_DS_
;	.line	318; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	wpointer=1;					// write pointer = 1
	MOVLW	0x01
	BANKSEL	_wpointer
	MOVWF	_wpointer, B
_01057_DS_:
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__serial_putchar11	code
_serial_putchar11:
;	.line	295; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	void serial_putchar11(unsigned char caractere)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
_01042_DS_:
;	.line	297; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	while (!TXSTAbits.TRMT);
	BTFSS	_TXSTAbits, 1
	BRA	_01042_DS_
;	.line	298; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	TXREG=caractere;		        // yes, send char
	MOVFF	r0x00, _TXREG
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__serial_available	code
_serial_available:
;	.line	289; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	unsigned char serial_available()
	MOVFF	r0x00, POSTDEC1
;	.line	291; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return(wpointer!=rpointer);
	CLRF	r0x00
	BANKSEL	_wpointer
	MOVF	_wpointer, W, B
	BANKSEL	_rpointer
	XORWF	_rpointer, W, B
	BNZ	_01037_DS_
	INCF	r0x00, F
_01037_DS_:
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__serial_begin	code
_serial_begin:
;	.line	265; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	void serial_begin(unsigned long baudrate)
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
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	270; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	spbrg=(48000000/(4*baudrate))-1;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mullong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVLW	0xdc
	MOVWF	POSTDEC1
	MOVLW	0x6c
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
;	.line	271; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	highbyte=spbrg/256;
	MOVF	r0x01, W
;	.line	272; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	lowbyte=spbrg%256;
	MOVWF	r0x04
;	.line	273; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	TXSTAbits.BRGH=1;               	  	// set BRGH bit
	BSF	_TXSTAbits, 2
;	.line	274; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	BAUDCONbits.BRG16=1;					// set 16 bits SPBRG
	BSF	_BAUDCONbits, 3
;	.line	275; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	SPBRGH=highbyte;                        // set UART speed SPBRGH
	MOVFF	r0x04, _SPBRGH
;	.line	276; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	SPBRG=lowbyte;   						// set UART speed SPBRGL
	MOVFF	r0x00, _SPBRG
;	.line	277; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	RCSTA=0x90;                             // set RCEN and SPEN
	MOVLW	0x90
	MOVWF	_RCSTA
;	.line	278; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	BAUDCONbits.RCIDL=1;			// set receive active
	BSF	_BAUDCONbits, 6
;	.line	279; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	PIE1bits.RCIE=1;                        // enable interrupt on RX
	BSF	_PIE1bits, 5
;	.line	280; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	INTCONbits.PEIE=1;                      // enable peripheral interrupts
	BSF	_INTCONbits, 6
;	.line	281; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	IPR1bits.RCIP=1;                        // define high priority for RX interrupt
	BSF	_IPR1bits, 5
; #	MOVLW	0x01
; #	MOVWF	_wpointer, B
; #	MOVLW	0x01
;	.line	282; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	wpointer=1;                             // initialize write pointer
	MOVLW	0x01
	BANKSEL	_wpointer
;	.line	283; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	rpointer=1;                             // initialize read pointer
	MOVWF	_wpointer, B
	BANKSEL	_rpointer
	MOVWF	_rpointer, B
;	.line	284; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	TXSTAbits.TXEN=1;                       // enable TX
	BSF	_TXSTAbits, 5
;	.line	285; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__printfmod	code
_printfmod:
;	.line	254; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	int printfmod(stdout1 func, const char *format, va_list args)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, _putchar1
	MOVLW	0x03
	MOVFF	PLUSW2, (_putchar1 + 1)
	MOVLW	0x04
	MOVFF	PLUSW2, (_putchar1 + 2)
	MOVLW	0x05
	MOVFF	PLUSW2, r0x00
	MOVLW	0x06
	MOVFF	PLUSW2, r0x01
	MOVLW	0x07
	MOVFF	PLUSW2, r0x02
	MOVLW	0x08
	MOVFF	PLUSW2, r0x03
	MOVLW	0x09
	MOVFF	PLUSW2, r0x04
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x05
;	.line	260; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return print(0, format, args );
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	_print
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x09
	ADDWF	FSR1L, F
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__print	code
_print:
;	.line	158; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	static int print(char **out, const char *format, va_list args )
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
	MOVFF	r0x12, POSTDEC1
	MOVFF	r0x13, POSTDEC1
	MOVFF	r0x14, POSTDEC1
	MOVFF	r0x15, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
;	.line	161; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	int pc = 0;
	CLRF	r0x09
	CLRF	r0x0a
_00911_DS_:
;	.line	165; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for (; *format != 0; ++format)
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
	MOVF	r0x0b, W
	BNZ	_00985_DS_
	GOTO	_00903_DS_
_00985_DS_:
;	.line	167; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (*format == '%')
	MOVF	r0x0b, W
	XORLW	0x25
	BZ	_00987_DS_
	GOTO	_00898_DS_
_00987_DS_:
;	.line	169; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++format;
	INCF	r0x03, F
	BNC	_00988_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_00988_DS_:
;	.line	170; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	width = pad = 0;
	CLRF	r0x0b
	CLRF	r0x0c
	CLRF	r0x0d
	CLRF	r0x0e
;	.line	171; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (*format == '\0') break;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0f
	MOVF	r0x0f, W
	BTFSC	STATUS, 2
	GOTO	_00903_DS_
;	.line	172; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (*format == '%') goto out;
	MOVF	r0x0f, W
	XORLW	0x25
	BNZ	_00990_DS_
	GOTO	_00898_DS_
_00990_DS_:
;	.line	173; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (*format == '-')
	MOVF	r0x0f, W
	XORLW	0x2d
	BNZ	_00922_DS_
;	.line	175; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++format;
	INCF	r0x03, F
	BNC	_00993_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_00993_DS_:
;	.line	176; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pad = PAD_RIGHT;
	MOVLW	0x01
	MOVWF	r0x0b
	CLRF	r0x0c
_00922_DS_:
;	.line	178; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	while (*format == '0')
	MOVFF	r0x03, r0x0f
	MOVFF	r0x04, r0x10
	MOVFF	r0x05, r0x11
_00876_DS_:
	MOVFF	r0x0f, FSR0L
	MOVFF	r0x10, PRODL
	MOVF	r0x11, W
	CALL	__gptrget1
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
	XORLW	0x30
	BNZ	_00908_DS_
;	.line	180; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++format;
	INCF	r0x0f, F
	BNC	_00996_DS_
	INFSNZ	r0x10, F
	INCF	r0x11, F
_00996_DS_:
;	.line	181; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pad |= PAD_ZERO;
	BSF	r0x0b, 1
	BRA	_00876_DS_
_00908_DS_:
;	.line	183; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; *format >= '0' && *format <= '9'; ++format)
	MOVFF	r0x0f, FSR0L
	MOVFF	r0x10, PRODL
	MOVF	r0x11, W
	CALL	__gptrget1
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
	MOVWF	r0x12
	ADDLW	0x80
	ADDLW	0x50
	BNC	_00939_DS_
	MOVF	r0x12, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00939_DS_
;	.line	185; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	width *= 10;
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	186; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	width += *format - '0';
	CLRF	r0x13
	BTFSC	r0x12, 7
	SETF	r0x13
	MOVLW	0xd0
	ADDWF	r0x12, F
	BTFSS	STATUS, 0
	DECF	r0x13, F
	MOVF	r0x12, W
	ADDWF	r0x0d, F
	MOVF	r0x13, W
	ADDWFC	r0x0e, F
;	.line	183; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; *format >= '0' && *format <= '9'; ++format)
	INCF	r0x0f, F
	BNC	_01000_DS_
	INFSNZ	r0x10, F
	INCF	r0x11, F
_01000_DS_:
	BRA	_00908_DS_
_00939_DS_:
	MOVFF	r0x0f, r0x03
	MOVFF	r0x10, r0x04
	MOVFF	r0x11, r0x05
;	.line	188; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 's' )
	MOVFF	r0x0f, FSR0L
	MOVFF	r0x10, PRODL
	MOVF	r0x11, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #	MOVF	r0x0f, W
	MOVWF	r0x0f
	XORLW	0x73
	BZ	_01002_DS_
	BRA	_00881_DS_
_01002_DS_:
;	.line	191; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	char *s = va_arg(args, char*);
	MOVF	r0x06, W
	ADDLW	0x03
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfd
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget3
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	r0x10, r0x13
	MOVFF	r0x11, r0x14
	MOVFF	r0x12, r0x15
;	.line	193; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += prints (out, s?s:"(null)", width, pad);
	IORWF	r0x11, W
	IORWF	r0x12, W
	BZ	_00914_DS_
	MOVFF	r0x13, r0x10
	MOVFF	r0x14, r0x11
	MOVFF	r0x15, r0x12
	BRA	_00915_DS_
_00914_DS_:
	MOVLW	UPPER(___str_0)
	MOVWF	r0x12
	MOVLW	HIGH(___str_0)
	MOVWF	r0x11
	MOVLW	LOW(___str_0)
	MOVWF	r0x10
_00915_DS_:
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_prints
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0a
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	194; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	GOTO	_00902_DS_
_00881_DS_:
;	.line	196; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'd' )
	MOVF	r0x0f, W
	XORLW	0x64
	BZ	_01004_DS_
	BRA	_00883_DS_
_01004_DS_:
;	.line	198; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += printi (out, va_arg(args, int), 10, 1, width, pad, 'a');
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfe
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	CLRF	POSTDEC1
	MOVLW	0x61
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printi
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0f
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	199; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00883_DS_:
;	.line	201; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'x' )
	MOVF	r0x0f, W
	XORLW	0x78
	BZ	_01006_DS_
	BRA	_00885_DS_
_01006_DS_:
;	.line	203; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += printi (out, va_arg(args, int), 16, 0, width, pad, 'a');
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfe
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	CLRF	POSTDEC1
	MOVLW	0x61
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printi
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0f
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	204; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00885_DS_:
;	.line	206; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'X' )
	MOVF	r0x0f, W
	XORLW	0x58
	BZ	_01008_DS_
	BRA	_00887_DS_
_01008_DS_:
;	.line	208; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += printi (out, va_arg(args, int), 16, 0, width, pad, 'A');
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfe
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	CLRF	POSTDEC1
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printi
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0f
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	209; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00887_DS_:
;	.line	211; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'b' )
	MOVF	r0x0f, W
	XORLW	0x62
	BZ	_01010_DS_
	BRA	_00889_DS_
_01010_DS_:
;	.line	213; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += printi (out, va_arg(args, int), 2, 0, width, pad, 'a');
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfe
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	CLRF	POSTDEC1
	MOVLW	0x61
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printi
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0f
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	214; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00889_DS_:
;	.line	216; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'o' )
	MOVF	r0x0f, W
	XORLW	0x6f
	BZ	_01012_DS_
	BRA	_00891_DS_
_01012_DS_:
;	.line	218; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += printi (out, va_arg(args, int), 8, 0, width, pad, 'a');
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfe
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	CLRF	POSTDEC1
	MOVLW	0x61
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printi
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0f
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	219; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00891_DS_:
;	.line	221; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'u' )
	MOVF	r0x0f, W
	XORLW	0x75
	BZ	_01014_DS_
	BRA	_00893_DS_
_01014_DS_:
;	.line	223; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += printi (out, va_arg(args, int), 10, 0, width, pad, 'a');
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfe
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	CLRF	POSTDEC1
	MOVLW	0x61
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printi
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0f
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	224; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00893_DS_:
;	.line	226; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'c' )
	MOVF	r0x0f, W
	XORLW	0x63
	BZ	_01016_DS_
	BRA	_00895_DS_
_01016_DS_:
;	.line	229; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	scr[0] = (char)va_arg( args, int);
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
	MOVFF	r0x10, r0x06
	MOVFF	r0x11, r0x07
	MOVFF	r0x12, r0x08
	MOVLW	0xfe
	ADDWF	r0x10, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	BANKSEL	_print_scr_1_164
	MOVWF	_print_scr_1_164, B
; removed redundant BANKSEL
;	.line	231; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	scr[1] = '\0';
	CLRF	(_print_scr_1_164 + 1), B
;	.line	232; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += prints (out, scr, width, pad);
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_print_scr_1_164)
	MOVWF	POSTDEC1
	MOVLW	LOW(_print_scr_1_164)
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_prints
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVLW	0x0a
	ADDWF	FSR1L, F
	MOVF	r0x10, W
	ADDWF	r0x09, F
	MOVF	r0x11, W
	ADDWFC	r0x0a, F
;	.line	233; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00895_DS_:
;	.line	235; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( *format == 'f' )
	MOVF	r0x0f, W
	XORLW	0x66
	BNZ	_00902_DS_
;	.line	237; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	pc += prints (out, "not yet implemented\0", width, pad);
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVLW	UPPER(___str_1)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_1)
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_prints
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVLW	0x0a
	ADDWF	FSR1L, F
	MOVF	r0x0b, W
	ADDWF	r0x09, F
	MOVF	r0x0c, W
	ADDWFC	r0x0a, F
;	.line	238; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	continue;
	BRA	_00902_DS_
_00898_DS_:
;	.line	244; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	printchar (out, *format);
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0b
; #	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printchar
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	245; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++pc;
	INFSNZ	r0x09, F
	INCF	r0x0a, F
_00902_DS_:
;	.line	165; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for (; *format != 0; ++format)
	INCF	r0x03, F
	BNC	_01019_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01019_DS_:
	GOTO	_00911_DS_
_00903_DS_:
;	.line	248; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (out) **out = '\0';
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00905_DS_
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget3
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	CLRF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
_00905_DS_:
;	.line	250; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return pc;
	MOVFF	r0x0a, PRODL
	MOVF	r0x09, W
	MOVFF	PREINC1, r0x15
	MOVFF	PREINC1, r0x14
	MOVFF	PREINC1, r0x13
	MOVFF	PREINC1, r0x12
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__printi	code
_printi:
;	.line	108; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	static int printi(char **out, int i, int b, int sg, int width, int pad, int letbase)
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
	MOVFF	r0x12, POSTDEC1
	MOVFF	r0x13, POSTDEC1
	MOVFF	r0x14, POSTDEC1
	MOVFF	r0x15, POSTDEC1
	MOVFF	r0x16, POSTDEC1
	MOVFF	r0x17, POSTDEC1
	MOVFF	r0x18, POSTDEC1
	MOVFF	r0x19, POSTDEC1
	MOVFF	r0x1a, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
	MOVLW	0x0b
	MOVFF	PLUSW2, r0x09
	MOVLW	0x0c
	MOVFF	PLUSW2, r0x0a
	MOVLW	0x0d
	MOVFF	PLUSW2, r0x0b
	MOVLW	0x0e
	MOVFF	PLUSW2, r0x0c
	MOVLW	0x0f
	MOVFF	PLUSW2, r0x0d
	MOVLW	0x10
	MOVFF	PLUSW2, r0x0e
;	.line	112; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	int t, neg = 0, pc = 0;
	CLRF	r0x0f
	CLRF	r0x10
	CLRF	r0x11
	CLRF	r0x12
;	.line	113; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	unsigned int u = i;
	MOVFF	r0x03, r0x13
	MOVFF	r0x04, r0x14
;	.line	115; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (i == 0)
	MOVF	r0x03, W
	IORWF	r0x04, W
	BNZ	_00812_DS_
;	.line	117; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	print_buf[0] = '0';
	MOVLW	0x30
	BANKSEL	_printi_print_buf_1_156
	MOVWF	_printi_print_buf_1_156, B
; removed redundant BANKSEL
;	.line	118; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	print_buf[1] = '\0';
	CLRF	(_printi_print_buf_1_156 + 1), B
;	.line	119; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return prints (out, print_buf, width, pad);
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_printi_print_buf_1_156)
	MOVWF	POSTDEC1
	MOVLW	LOW(_printi_print_buf_1_156)
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_prints
	MOVWF	r0x15
	MOVFF	PRODL, r0x16
	MOVLW	0x0a
	ADDWF	FSR1L, F
	MOVFF	r0x16, PRODL
	MOVF	r0x15, W
	BRA	_00828_DS_
_00812_DS_:
;	.line	122; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (sg && b == 10 && i < 0)
	MOVF	r0x07, W
	IORWF	r0x08, W
	BZ	_00814_DS_
	MOVF	r0x05, W
	XORLW	0x0a
	BNZ	_00814_DS_
	MOVF	r0x06, W
	BZ	_00862_DS_
_00861_DS_:
	BRA	_00814_DS_
_00862_DS_:
	BSF	STATUS, 0
	BTFSS	r0x04, 7
	BCF	STATUS, 0
	BNC	_00814_DS_
;	.line	124; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	neg = 1;
	MOVLW	0x01
	MOVWF	r0x0f
	CLRF	r0x10
;	.line	125; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	u = -i;
	COMF	r0x04, W
	MOVWF	r0x14
	COMF	r0x03, W
	MOVWF	r0x13
	INFSNZ	r0x13, F
	INCF	r0x14, F
_00814_DS_:
;	.line	128; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	s = print_buf + PRINT_BUF_LEN-1;
	MOVLW	HIGH(_printi_print_buf_1_156 + 11)
	MOVWF	r0x04
	MOVLW	LOW(_printi_print_buf_1_156 + 11)
	MOVWF	r0x03
	MOVLW	0x80
	MOVWF	r0x07
;	.line	129; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	*s = '\0';
	CLRF	POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	CALL	__gptrput1
;	.line	131; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	while (u)
	MOVF	r0x0d, W
	ADDLW	0xc6
	MOVWF	r0x0d
	MOVFF	r0x03, r0x0e
	MOVFF	r0x04, r0x15
	MOVFF	r0x07, r0x16
_00819_DS_:
	MOVF	r0x13, W
	IORWF	r0x14, W
	BZ	_00840_DS_
;	.line	133; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	t = u % b;
	MOVF	r0x05, W
	MOVWF	r0x17
; #	MOVF	r0x06, W
; #	MOVWF	r0x18
; #	MOVF	r0x18, W
	MOVF	r0x06, W
	MOVWF	r0x18
	MOVWF	POSTDEC1
	MOVF	r0x17, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	CALL	__moduint
	MOVWF	r0x19
	MOVFF	PRODL, r0x1a
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	134; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( t >= 10 )
	MOVF	r0x1a, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00864_DS_
	MOVLW	0x0a
	SUBWF	r0x19, W
_00864_DS_:
	BNC	_00818_DS_
;	.line	135; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	t += letbase - '0' - 10;
	MOVF	r0x0d, W
	ADDWF	r0x19, F
_00818_DS_:
;	.line	136; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	*--s = t + '0';
	MOVLW	0xff
	ADDWF	r0x0e, F
	ADDWFC	r0x15, F
	ADDWFC	r0x16, F
	MOVLW	0x30
	ADDWF	r0x19, F
	MOVFF	r0x19, POSTDEC1
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x15, PRODL
	MOVF	r0x16, W
	CALL	__gptrput1
;	.line	137; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	u /= b;
	MOVF	r0x18, W
	MOVWF	POSTDEC1
	MOVF	r0x17, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_00819_DS_
_00840_DS_:
	MOVFF	r0x0e, r0x03
	MOVFF	r0x15, r0x04
	MOVFF	r0x16, r0x07
;	.line	140; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (neg)
	MOVF	r0x0f, W
	IORWF	r0x10, W
	BZ	_00827_DS_
;	.line	142; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if( width && (pad & PAD_ZERO) )
	MOVF	r0x09, W
	IORWF	r0x0a, W
	BZ	_00823_DS_
	BTFSS	r0x0b, 1
	BRA	_00823_DS_
;	.line	144; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	printchar (out, '-');
	MOVLW	0x2d
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printchar
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	145; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++pc;
	MOVLW	0x01
	MOVWF	r0x11
	CLRF	r0x12
;	.line	146; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	--width;
	MOVLW	0xff
	ADDWF	r0x09, F
	ADDWFC	r0x0a, F
	BRA	_00827_DS_
_00823_DS_:
;	.line	150; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	*--s = '-';
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
	ADDWFC	r0x07, F
	MOVLW	0x2d
	MOVWF	POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
_00827_DS_:
;	.line	154; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return pc + prints (out, s, width, pad);
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_prints
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x0a
	ADDWF	FSR1L, F
	MOVF	r0x00, W
	ADDWF	r0x11, F
	MOVF	r0x01, W
	ADDWFC	r0x12, F
	MOVFF	r0x12, PRODL
	MOVF	r0x11, W
_00828_DS_:
	MOVFF	PREINC1, r0x1a
	MOVFF	PREINC1, r0x19
	MOVFF	PREINC1, r0x18
	MOVFF	PREINC1, r0x17
	MOVFF	PREINC1, r0x16
	MOVFF	PREINC1, r0x15
	MOVFF	PREINC1, r0x14
	MOVFF	PREINC1, r0x13
	MOVFF	PREINC1, r0x12
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__prints	code
_prints:
;	.line	69; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	static int prints(char **out, const char *string, int width, int pad)
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
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
	MOVFF	r0x12, POSTDEC1
	MOVFF	r0x13, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
	MOVLW	0x0b
	MOVFF	PLUSW2, r0x09
;	.line	71; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	int pc = 0;
	CLRF	r0x0a
	CLRF	r0x0b
;	.line	72; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	int padchar = ' ';
	MOVLW	0x20
	MOVWF	r0x0c
;	.line	76; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (width > 0)
	MOVF	r0x07, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00799_DS_
	MOVLW	0x01
	SUBWF	r0x06, W
_00799_DS_:
	BNC	_00740_DS_
;	.line	78; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for (ptr = string; *ptr; ++ptr) ++len;
	CLRF	r0x0e
	CLRF	r0x0f
	MOVFF	r0x03, r0x10
	MOVFF	r0x04, r0x11
	MOVFF	r0x05, r0x12
_00747_DS_:
	MOVFF	r0x10, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget1
	MOVWF	r0x13
	MOVF	r0x13, W
	BZ	_00733_DS_
	INFSNZ	r0x0e, F
	INCF	r0x0f, F
	INCF	r0x10, F
	BNC	_00747_DS_
	INFSNZ	r0x11, F
	INCF	r0x12, F
_00800_DS_:
	BRA	_00747_DS_
_00733_DS_:
;	.line	79; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (len >= width) width = 0;
	MOVF	r0x0f, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x07, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00801_DS_
	MOVF	r0x06, W
	SUBWF	r0x0e, W
_00801_DS_:
	BNC	_00735_DS_
	CLRF	r0x06
	CLRF	r0x07
	BRA	_00736_DS_
_00735_DS_:
;	.line	80; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	else width -= len;
	MOVF	r0x0e, W
	SUBWF	r0x06, F
	MOVF	r0x0f, W
	SUBWFB	r0x07, F
_00736_DS_:
;	.line	81; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (pad & PAD_ZERO) padchar = '0';
	BTFSS	r0x08, 1
	BRA	_00740_DS_
	MOVLW	0x30
	MOVWF	r0x0c
_00740_DS_:
;	.line	83; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (!(pad & PAD_RIGHT))
	BTFSC	r0x08, 0
	BRA	_00768_DS_
	CLRF	r0x08
	CLRF	r0x09
	MOVFF	r0x06, r0x0e
	MOVFF	r0x07, r0x0f
_00750_DS_:
;	.line	85; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; width > 0; --width)
	MOVF	r0x0f, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00804_DS_
	MOVLW	0x01
	SUBWF	r0x0e, W
_00804_DS_:
	BNC	_00772_DS_
; #	MOVF	r0x0c, W
; #	MOVWF	r0x10
; #	MOVF	r0x10, W
;	.line	87; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	printchar (out, padchar);
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printchar
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	88; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++pc;
	INFSNZ	r0x08, F
	INCF	r0x09, F
;	.line	85; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; width > 0; --width)
	MOVLW	0xff
	ADDWF	r0x0e, F
	ADDWFC	r0x0f, F
	BRA	_00750_DS_
_00772_DS_:
	MOVFF	r0x08, r0x0a
	MOVFF	r0x09, r0x0b
	MOVFF	r0x0e, r0x06
	MOVFF	r0x0f, r0x07
_00768_DS_:
	MOVFF	r0x0a, r0x08
	MOVFF	r0x0b, r0x09
_00753_DS_:
;	.line	91; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; *string ; ++string)
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0a
	MOVF	r0x0a, W
	BZ	_00770_DS_
;	.line	93; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	printchar (out, *string);
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printchar
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	94; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++pc;
	INFSNZ	r0x08, F
	INCF	r0x09, F
;	.line	91; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; *string ; ++string)
	INCF	r0x03, F
	BNC	_00753_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_00805_DS_:
	BRA	_00753_DS_
_00770_DS_:
	MOVFF	r0x08, r0x03
	MOVFF	r0x09, r0x04
	MOVFF	r0x06, r0x05
	MOVFF	r0x07, r0x06
_00756_DS_:
;	.line	96; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; width > 0; --width)
	MOVF	r0x06, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00806_DS_
	MOVLW	0x01
	SUBWF	r0x05, W
_00806_DS_:
	BNC	_00745_DS_
; #	MOVF	r0x0c, W
; #	MOVWF	r0x07
; #	MOVF	r0x07, W
;	.line	98; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	printchar (out, padchar);
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_printchar
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	99; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++pc;
	INFSNZ	r0x03, F
	INCF	r0x04, F
;	.line	96; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	for ( ; width > 0; --width)
	MOVLW	0xff
	ADDWF	r0x05, F
	ADDWFC	r0x06, F
	BRA	_00756_DS_
_00745_DS_:
;	.line	102; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	return pc;
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
	MOVFF	PREINC1, r0x13
	MOVFF	PREINC1, r0x12
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
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
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__printchar	code
_printchar:
;	.line	50; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	static void printchar(char **str, char c)
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
;	.line	54; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	if (str)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00720_DS_
;	.line	56; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	**str = c;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget3
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrput1
;	.line	57; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	++(*str);
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget3
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	INCF	r0x04, F
	BNC	_00727_DS_
	INFSNZ	r0x05, F
	INCF	r0x06, F
_00727_DS_:
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, PRODH
	MOVFF	r0x06, TBLPTRL
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput3
	BRA	_00722_DS_
_00720_DS_:
;	.line	62; /home/valentin/.icaro/firmware/tmp/uart18f2550.c	putchar1(c);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVFF	INTCON, POSTDEC1
	BCF	INTCON, 7
	PUSH	
	MOVLW	LOW(_00728_DS_)
	MOVWF	TOSL
	MOVLW	HIGH(_00728_DS_)
	MOVWF	TOSH
	MOVLW	UPPER(_00728_DS_)
	MOVWF	TOSU
	BTFSC	PREINC1, 7
	BSF	INTCON, 7
	MOVFF	(_putchar1 + 2), PCLATU
	MOVFF	(_putchar1 + 1), PCLATH
	BANKSEL	_putchar1
	MOVF	_putchar1, W, B
	MOVWF	PCL
_00728_DS_:
	MOVF	POSTINC1, F
_00722_DS_:
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
S_main__epapout_init	code
_epapout_init:
;	.line	41; /home/valentin/.icaro/firmware/source/main.c	void epapout_init() { return; }
	RETURN	

; ; Starting pCode block
S_main__epapin_init	code
_epapin_init:
;	.line	40; /home/valentin/.icaro/firmware/source/main.c	void epapin_init() { return; }
	RETURN	

; ; Starting pCode block
S_main__epap_out	code
_epap_out:
;	.line	39; /home/valentin/.icaro/firmware/source/main.c	void epap_out() { return; }
	RETURN	

; ; Starting pCode block
S_main__epap_in	code
_epap_in:
;	.line	38; /home/valentin/.icaro/firmware/source/main.c	void epap_in() { return; }
	RETURN	

; ; Starting pCode block
S_main__set_PWM	code
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
	BNZ	_00686_DS_
	MOVF	r0x01, W
	BZ	_00687_DS_
_00686_DS_:
	BRA	_00667_DS_
_00687_DS_:
;	.line	195; /home/valentin/.icaro/firmware/tmp/pwm.c	if ((CCP2CON & 0x0F)==0) init_PWM11();
	MOVF	_CCP2CON, W
; #	ANDLW	0x0f
; #	BTFSS	STATUS, 2
; #	GOTO	_00665_DS_
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
_00667_DS_:
;	.line	204; /home/valentin/.icaro/firmware/tmp/pwm.c	if (input==12)
	MOVF	r0x00, W
	XORLW	0x0c
	BNZ	_00692_DS_
	MOVF	r0x01, W
	BZ	_00693_DS_
_00692_DS_:
	BRA	_00672_DS_
_00693_DS_:
;	.line	207; /home/valentin/.icaro/firmware/tmp/pwm.c	if ((CCP1CON & 0x0F)==0) init_PWM12();		
	MOVF	_CCP1CON, W
; #	ANDLW	0x0f
; #	BTFSS	STATUS, 2
; #	GOTO	_00669_DS_
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
_00672_DS_:
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
S_main__init_PWM12	code
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
S_main__init_PWM11	code
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
S_main__PWM_set_percent_dutycycle	code
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
	BNZ	_00639_DS_
;	.line	156; /home/valentin/.icaro/firmware/tmp/pwm.c	duty = 0;
	CLRF	r0x02
	CLRF	r0x03
	BRA	_00640_DS_
_00639_DS_:
;	.line	158; /home/valentin/.icaro/firmware/tmp/pwm.c	else if (percent >= 100)
	MOVLW	0x64
	SUBWF	r0x01, W
	BNC	_00636_DS_
	BANKSEL	__pr2_plus1
;	.line	160; /home/valentin/.icaro/firmware/tmp/pwm.c	duty = _pr2_plus1 - 1;
	MOVF	__pr2_plus1, W, B
	ADDLW	0xff
	MOVWF	r0x02
	MOVLW	0xff
; removed redundant BANKSEL
	ADDWFC	(__pr2_plus1 + 1), W, B
	MOVWF	r0x03
	BRA	_00640_DS_
_00636_DS_:
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
_00640_DS_:
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
S_main__PWM_set_dutycycle	code
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
	SUBWF	r0x02, W
	BNZ	_00624_DS_
	MOVLW	0x00
	SUBWF	r0x01, W
_00624_DS_:
	BNC	_00599_DS_
	SETF	r0x01
	MOVLW	0x03
	MOVWF	r0x02
_00599_DS_:
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
	BNZ	_00601_DS_
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
_00601_DS_:
;	.line	120; /home/valentin/.icaro/firmware/tmp/pwm.c	if (pin == 12)
	MOVF	r0x00, W
	XORLW	0x0c
	BNZ	_00603_DS_
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
_00603_DS_:
;	.line	132; /home/valentin/.icaro/firmware/tmp/pwm.c	PIR1bits.TMR2IF = 0;				// reset this flag for the next test
	BCF	_PIR1bits, 1
;	.line	133; /home/valentin/.icaro/firmware/tmp/pwm.c	T2CON = _t2con;						// Timer2 prescaler
	MOVFF	__t2con, _T2CON
;	.line	134; /home/valentin/.icaro/firmware/tmp/pwm.c	T2CONbits.TMR2ON = ON;				// enable Timer2
	BSF	_T2CONbits, 2
_00604_DS_:
;	.line	136; /home/valentin/.icaro/firmware/tmp/pwm.c	while (PIR1bits.TMR2IF == 0);		// Wait until TMR2 overflows
	BTFSS	_PIR1bits, 1
	BRA	_00604_DS_
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
S_main__PWM_set_frequency	code
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
	BNZ	_00591_DS_
	MOVLW	0x01
; removed redundant BANKSEL
	SUBWF	__pr2_plus1, W, B
_00591_DS_:
	BC	_00580_DS_
;	.line	66; /home/valentin/.icaro/firmware/tmp/pwm.c	if (_pr2_plus1 <= 256)				// no needs of any prescaler
	MOVLW	0x01
	BANKSEL	(__pr2_plus1 + 1)
	SUBWF	(__pr2_plus1 + 1), W, B
	BNZ	_00592_DS_
	MOVLW	0x01
; removed redundant BANKSEL
	SUBWF	__pr2_plus1, W, B
_00592_DS_:
	BC	_00576_DS_
	BANKSEL	__t2con
;	.line	68; /home/valentin/.icaro/firmware/tmp/pwm.c	_t2con = Bin(00);				// prescaler is 1
	CLRF	__t2con, B
	BRA	_00580_DS_
_00576_DS_:
;	.line	70; /home/valentin/.icaro/firmware/tmp/pwm.c	else if (_pr2_plus1 <= 1024)		// needs prescaler 1:4
	MOVLW	0x04
	BANKSEL	(__pr2_plus1 + 1)
	SUBWF	(__pr2_plus1 + 1), W, B
	BNZ	_00593_DS_
	MOVLW	0x01
; removed redundant BANKSEL
	SUBWF	__pr2_plus1, W, B
_00593_DS_:
	BC	_00573_DS_
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
	BRA	_00580_DS_
_00573_DS_:
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
_00580_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__Delayus	code
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
_00556_DS_:
	MOVF	r0x00, W
	MOVWF	r0x04
; #	MOVF	r0x01, W
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_00567_DS_
	MOVF	r0x04, W
	SUBWF	r0x02, W
_00567_DS_:
	BC	_00558_DS_
	INFSNZ	r0x02, F
	INCF	r0x03, F
	BRA	_00556_DS_
_00558_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__Delayms	code
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
_00537_DS_:
	MOVF	r0x03, W
	SUBWF	r0x07, W
	BNZ	_00548_DS_
	MOVF	r0x02, W
	SUBWF	r0x06, W
	BNZ	_00548_DS_
	MOVF	r0x01, W
	SUBWF	r0x05, W
	BNZ	_00548_DS_
	MOVF	r0x00, W
	SUBWF	r0x04, W
_00548_DS_:
	BC	_00539_DS_
	MOVLW	0x01
	CALL	_delay10ktcy
	INCF	r0x04, F
	BNC	_00537_DS_
	INCF	r0x05, F
	BNC	_00537_DS_
	INFSNZ	r0x06, F
	INCF	r0x07, F
_00549_DS_:
	BRA	_00537_DS_
_00539_DS_:
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
S_main__servos_interrupt	code
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
S_main__ServoMaximumPulse	code
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
S_main__ServoMinimumPulse	code
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
S_main__ServoRead	code
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
S_main__ServoWrite	code
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
S_main__ServoDetach	code
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
S_main__ServoAttach	code
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
S_main__SortServoTimings	code
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
S_main__ServosPulseUp	code
_ServosPulseUp:
;	.line	120; /home/valentin/.icaro/firmware/tmp/servos.c	PORTC = activatedservos[MaskPort_C] & 0xFF;
	MOVFF	(_activatedservos + 1), _PORTC
;	.line	121; /home/valentin/.icaro/firmware/tmp/servos.c	PORTA = activatedservos[MaskPort_A] & 0xFF;	
	MOVFF	(_activatedservos + 2), _PORTA
	RETURN	

; ; Starting pCode block
S_main__ServosPulseDown	code
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
S_main__servos_init	code
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
S_main__pinmode	code
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
S_main__digitalread	code
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
S_main__digitalwrite	code
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
; ; Starting pCode block
___str_0:
	DB	0x28, 0x6e, 0x75, 0x6c, 0x6c, 0x29, 0x00
; ; Starting pCode block
___str_1:
	DB	0x6e, 0x6f, 0x74, 0x20, 0x79, 0x65, 0x74, 0x20, 0x69, 0x6d, 0x70, 0x6c
	DB	0x65, 0x6d, 0x65, 0x6e, 0x74, 0x65, 0x64, 0x00, 0x00
; ; Starting pCode block
___str_2:
	DB	0x25, 0x64, 0x00
; ; Starting pCode block
___str_3:
	DB	0x25, 0x78, 0x00
; ; Starting pCode block
___str_5:
	DB	0x3f, 0x00
; ; Starting pCode block
___str_6:
	DB	0x21, 0x00


; Statistics:
; code size:	16398 (0x400e) bytes (12.51%)
;           	 8199 (0x2007) words
; udata size:	  407 (0x0197) bytes (22.71%)
; access size:	   27 (0x001b) bytes


	end
