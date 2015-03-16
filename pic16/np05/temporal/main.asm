;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Jul 16 2014) (Linux)
; This file was generated Sun Mar 15 12:05:35 2015
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_loopvar
	global	_phase
	global	_needreordering
	global	_timingindex
	global	_timedivision
	global	_timings
	global	_activatedservos
	global	_servovalues
	global	__pr2_plus1
	global	__t2con
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
	global	_setup
	global	_sensordigital
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

udata_main_0	udata
_loopvar	res	1

udata_main_1	udata
_servovalues	res	18

udata_main_2	udata
_timingindex	res	1

udata_main_3	udata
_timings	res	72

udata_main_4	udata
_SortServoTimings_mascaratotal_1_27	res	3

udata_main_5	udata
__t2con	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_main__high_priority_isr	code	0X002020
_high_priority_isr:
;	.line	98; /home/valentin/.icaro/firmware/source/main.c	void high_priority_isr(void) __interrupt
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	134; /home/valentin/.icaro/firmware/source/main.c	servos_interrupt();
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
;	.line	142; /home/valentin/.icaro/firmware/source/main.c	void low_priority_isr(void) __interrupt
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVWF	POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	144; /home/valentin/.icaro/firmware/source/main.c	}
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
;	.line	54; /home/valentin/.icaro/firmware/source/main.c	PIE1=0;
	CLRF	_PIE1
;	.line	55; /home/valentin/.icaro/firmware/source/main.c	PIE2=0;
	CLRF	_PIE2
;	.line	56; /home/valentin/.icaro/firmware/source/main.c	ADCON1=0x0F;
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	61; /home/valentin/.icaro/firmware/source/main.c	setup();
	CALL	_setup
;	.line	63; /home/valentin/.icaro/firmware/source/main.c	analog_init();
	CALL	_analog_init
;	.line	69; /home/valentin/.icaro/firmware/source/main.c	servos_init();
	CALL	_servos_init
;	.line	85; /home/valentin/.icaro/firmware/source/main.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	86; /home/valentin/.icaro/firmware/source/main.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
_00774_DS_:
;	.line	91; /home/valentin/.icaro/firmware/source/main.c	loop();
	CALL	_loop
	BRA	_00774_DS_
	RETURN	

; ; Starting pCode block
S_main__loop	code
_loop:
;	.line	60; /home/valentin/.icaro/firmware/source/user.c	}
	RETURN	

; ; Starting pCode block
S_main__sensordigital	code
_sensordigital:
;	.line	40; /home/valentin/.icaro/firmware/source/user.c	int sensordigital(int valor)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	44; /home/valentin/.icaro/firmware/source/user.c	temp=digitalread(valor);
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVFF	PRODL, r0x01
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	45; /home/valentin/.icaro/firmware/source/user.c	if (temp==0)
	IORWF	r0x01, W
	BNZ	_00761_DS_
;	.line	47; /home/valentin/.icaro/firmware/source/user.c	return 1;
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00763_DS_
_00761_DS_:
;	.line	51; /home/valentin/.icaro/firmware/source/user.c	return 0;
	CLRF	PRODL
	CLRF	WREG
_00763_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__setup	code
_setup:
;	.line	24; /home/valentin/.icaro/firmware/source/user.c	TRISB=0;
	CLRF	_TRISB
;	.line	25; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG1,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x15
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	26; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG2,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x16
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	27; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG3,TRIG);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	28; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_DIG4,ECHO);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	29; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P1,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x19
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	30; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P2,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1a
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	31; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P3,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1b
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	32; /home/valentin/.icaro/firmware/source/user.c	pinmode(ICR_l293_P4,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	33; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(ICR_SRV1);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	34; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(ICR_SRV2);
	MOVLW	0x0b
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	35; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(ICR_SRV3);
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	36; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(ICR_SRV4);
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	37; /home/valentin/.icaro/firmware/source/user.c	ServoAttach(ICR_SRV5);
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
	RETURN	

; ; Starting pCode block
S_main__epapout_init	code
_epapout_init:
;	.line	42; /home/valentin/.icaro/firmware/source/main.c	void epapout_init() { return; }
	RETURN	

; ; Starting pCode block
S_main__epapin_init	code
_epapin_init:
;	.line	41; /home/valentin/.icaro/firmware/source/main.c	void epapin_init() { return; }
	RETURN	

; ; Starting pCode block
S_main__epap_out	code
_epap_out:
;	.line	40; /home/valentin/.icaro/firmware/source/main.c	void epap_out() { return; }
	RETURN	

; ; Starting pCode block
S_main__epap_in	code
_epap_in:
;	.line	39; /home/valentin/.icaro/firmware/source/main.c	void epap_in() { return; }
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
S_main__analogread	code
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
S_main__analogReference	code
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
S_main__analog_init	code
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


; Statistics:
; code size:	 5826 (0x16c2) bytes ( 4.44%)
;           	 2913 (0x0b61) words
; udata size:	   96 (0x0060) bytes ( 5.36%)
; access size:	   13 (0x000d) bytes


	end
