;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.7.0 #10231 (Linux)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	___uflags
	global	_loopvar
	global	_timingindex
	global	__cpu_clock_
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
	global	__i
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
	global	_Delayus
	global	_setup
	global	_sensordigital
	global	_loop
	global	_high_priority_isr
	global	_low_priority_isr
	global	_mask
	global	_port

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
__i	db	0x00, 0x00
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

udata_main_0	udata
__cpu_clock_	res	4

udata_main_1	udata
_timingindex	res	1

udata_main_2	udata
_loopvar	res	1

udata_main_3	udata
_servovalues	res	30

udata_main_4	udata
_maxminpos	res	60

udata_main_5	udata
_activatedservos	res	5

udata_main_6	udata
_ServosPulseDown_timingindex_1_30	res	1

udata_main_7	udata
_timings	res	150

udata_main_8	udata
_timevalue	res	30

udata_main_9	udata
_SortServoTimings_t_1_35	res	1

udata_main_10	udata
_SortServoTimings_totalservos_1_35	res	1

udata_main_11	udata
_SortServoTimings_numservos_1_35	res	1

udata_main_12	udata
_SortServoTimings_s_1_35	res	1

udata_main_13	udata
_mascaratotal	res	5

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_main___entry	code	0X000C00
__entry:
	goto	__startup
	
;	.line	74; /home/vbasel/.icaro/v4/firmware/source/crt0iz.c	}
; ; Starting pCode block for absolute section
; ;-----------------------------------------
S_main_ivec_0x1_high_priority_isr	code	0X000C08
ivec_0x1_high_priority_isr:
	GOTO	_high_priority_isr

; ; Starting pCode block for absolute section
; ;-----------------------------------------
S_main_ivec_0x2_low_priority_isr	code	0X000C18
ivec_0x2_low_priority_isr:
	GOTO	_low_priority_isr

; I code from now on!
; ; Starting pCode block
S_main__main	code
_main:
;	.line	197; /home/vbasel/.icaro/v4/firmware/source/main.c	if (OSCCONbits.SCS > 0x01)
	MOVF	_OSCCONbits, W
	ANDLW	0x03
	MOVWF	r0x00
	MOVLW	0x02
	SUBWF	r0x00, W
	BNC	_00793_DS_
_00789_DS_:
;	.line	199; /home/vbasel/.icaro/v4/firmware/source/main.c	while (!OSCCONbits.IOFS);
	BTFSS	_OSCCONbits, 2
	BRA	_00789_DS_
_00793_DS_:
;	.line	243; /home/vbasel/.icaro/v4/firmware/source/main.c	IO_init();
	CALL	_IO_init
;	.line	244; /home/vbasel/.icaro/v4/firmware/source/main.c	IO_digital();
	CALL	_IO_digital
;	.line	272; /home/vbasel/.icaro/v4/firmware/source/main.c	analog_init();
	CALL	_analog_init
;	.line	288; /home/vbasel/.icaro/v4/firmware/source/main.c	servos_init();
	CALL	_servos_init
;	.line	300; /home/vbasel/.icaro/v4/firmware/source/main.c	setup();
	CALL	_setup
_00795_DS_:
;	.line	327; /home/vbasel/.icaro/v4/firmware/source/main.c	loop();
	CALL	_loop
	BRA	_00795_DS_
;	.line	330; /home/vbasel/.icaro/v4/firmware/source/main.c	}
	RETURN	

; ; Starting pCode block
S_main__low_priority_isr	code
_low_priority_isr:
;	.line	535; /home/vbasel/.icaro/v4/firmware/source/main.c	void low_priority_isr(void) __interrupt 2
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
	
;	.line	565; /home/vbasel/.icaro/v4/firmware/source/main.c	}
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
S_main__high_priority_isr	code
_high_priority_isr:
;	.line	438; /home/vbasel/.icaro/v4/firmware/source/main.c	void high_priority_isr(void) __interrupt 1
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
	
;	.line	475; /home/vbasel/.icaro/v4/firmware/source/main.c	servos_interrupt();
	CALL	_servos_interrupt
	MOVFF	PREINC1, _TABLAT
	MOVFF	PREINC1, _TBLPTRU
	MOVFF	PREINC1, _TBLPTRH
	MOVFF	PREINC1, _TBLPTRL
	
;	.line	520; /home/vbasel/.icaro/v4/firmware/source/main.c	}
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
S_main___startup	code
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
	
;	.line	259; /home/vbasel/.icaro/v4/firmware/source/crt0iz.c	main ();
	CALL	_main
lockup:
	;	Returning from main will lock up.
	bra	lockup
	
;	.line	266; /home/vbasel/.icaro/v4/firmware/source/crt0iz.c	}
; ; Starting pCode block
S_main__loop	code
_loop:
;	.line	68; /home/vbasel/.icaro/v4/firmware/source/user.c	void loop()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	__i
;	.line	71; /home/vbasel/.icaro/v4/firmware/source/user.c	for(_i=0;_i<255;_i++){
	CLRF	__i, B
; removed redundant BANKSEL
	CLRF	(__i + 1), B
	CLRF	r0x00
	CLRF	r0x01
_00766_DS_:
;	.line	72; /home/vbasel/.icaro/v4/firmware/source/user.c	PORTB=a;
	MOVF	r0x00, W
	MOVWF	_PORTB
;	.line	73; /home/vbasel/.icaro/v4/firmware/source/user.c	Delayms(100);
	CLRF	POSTDEC1
	MOVLW	0x64
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	74; /home/vbasel/.icaro/v4/firmware/source/user.c	a++;
	INFSNZ	r0x00, F
	INCF	r0x01, F
	BANKSEL	__i
;	.line	71; /home/vbasel/.icaro/v4/firmware/source/user.c	for(_i=0;_i<255;_i++){
	INCFSZ	__i, F, B
	BRA	_10815_DS_
; removed redundant BANKSEL
	INCF	(__i + 1), F, B
_10815_DS_:
	BANKSEL	(__i + 1)
	MOVF	(__i + 1), W, B
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00774_DS_
	MOVLW	0xff
; removed redundant BANKSEL
	SUBWF	__i, W, B
_00774_DS_:
	BNC	_00766_DS_
;	.line	76; /home/vbasel/.icaro/v4/firmware/source/user.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__sensordigital	code
_sensordigital:
;	.line	111; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	int sensordigital(int valor)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	115; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	temp=digitalread(valor);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVWF	r0x00
	MOVF	POSTINC1, F
;	.line	116; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	if (temp==0)
	MOVF	r0x00, W
	BNZ	_00758_DS_
;	.line	118; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	return 1;
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00760_DS_
_00758_DS_:
;	.line	122; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	return 0;
	CLRF	PRODL
	CLRF	WREG
_00760_DS_:
;	.line	124; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__setup	code
_setup:
;	.line	80; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	TRISB=0; //defino PORTB como salida
	CLRF	_TRISB
;	.line	81; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	PORTB=0; 
	CLRF	_PORTB
;	.line	82; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	PORTD=0;
	CLRF	_PORTD
;	.line	83; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_DIG1,INPUT);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x15
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	84; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_DIG2,INPUT);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x16
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	86; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_DIG3,TRIG);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	87; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_DIG4,ECHO);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	88; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_l293_P1,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x19
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	89; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_l293_P2,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x1a
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	90; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_l293_P3,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x1b
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	91; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	pinmode(ICR_l293_P4,OUTPUT);
	CLRF	POSTDEC1
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	92; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	ServoAttach(ICR_SRV1);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	93; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	ServoAttach(ICR_SRV2);
	MOVLW	0x0b
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	94; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	ServoAttach(ICR_SRV3);
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	95; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	ServoAttach(ICR_SRV4);
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	96; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	ServoAttach(ICR_SRV5);
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	MOVF	POSTINC1, F
;	.line	109; /home/vbasel/.icaro/v4/firmware/icaro_lib/definiciones_icr.c	}
	RETURN	

; ; Starting pCode block
S_main__Delayus	code
_Delayus:
;	.line	69; /home/vbasel/.icaro/v4/firmware/core/delayus.c	void Delayus(unsigned int microseconds)
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
;	.line	73; /home/vbasel/.icaro/v4/firmware/core/delayus.c	for (i=0; i<microseconds; i++)
	CLRF	r0x02
	CLRF	r0x03
_00736_DS_:
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_00747_DS_
	MOVF	r0x00, W
	SUBWF	r0x02, W
_00747_DS_:
	BC	_00738_DS_
	INFSNZ	r0x02, F
	INCF	r0x03, F
	BRA	_00736_DS_
_00738_DS_:
;	.line	75; /home/vbasel/.icaro/v4/firmware/core/delayus.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__IO_digital	code
_IO_digital:
;	.line	123; /home/vbasel/.icaro/v4/firmware/core/io.c	ADCON1 = 0x0F;				// AN0 to AN12 Digital I/O
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	124; /home/vbasel/.icaro/v4/firmware/core/io.c	CMCON = 0x07;               // Comparators as Digital I/O
	MOVLW	0x07
	MOVWF	_CMCON
;	.line	155; /home/vbasel/.icaro/v4/firmware/core/io.c	}
	RETURN	

; ; Starting pCode block
S_main__IO_init	code
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
;	.line	115; /home/vbasel/.icaro/v4/firmware/core/io.c	}
	RETURN	

; ; Starting pCode block
S_main__analogwrite	code
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
	BZ	_00706_DS_
	MOVF	r0x00, W
	XORLW	0x0c
	BNZ	_00707_DS_
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
; #	MOVF	_CCP1CON, W
; #;#	MOVWF	r0x00
; #;#	MOVF	r0x03, W
; #;#	IORWF	r0x00, W
; #	IORWF	r0x03, W
	MOVWF	r0x03
	IORWF	_CCP1CON, W
	MOVWF	_CCP1CON
;	.line	309; /home/vbasel/.icaro/v4/firmware/core/analog.c	break;
	BRA	_00707_DS_
_00706_DS_:
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
; #	MOVF	_CCP2CON, W
; #;#	MOVWF	r0x01
; #;#	MOVF	r0x00, W
; #;#	IORWF	r0x01, W
; #	IORWF	r0x00, W
	MOVWF	r0x00
	IORWF	_CCP2CON, W
	MOVWF	_CCP2CON
_00707_DS_:
;	.line	321; /home/vbasel/.icaro/v4/firmware/core/analog.c	PIR1bits.TMR2IF = 0;
	BCF	_PIR1bits, 1
;	.line	322; /home/vbasel/.icaro/v4/firmware/core/analog.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__analogwrite_init	code
_analogwrite_init:
;	.line	237; /home/vbasel/.icaro/v4/firmware/core/analog.c	PR2 = 0xFF;                         // set PWM period to the max. to get 10-bit res.
	SETF	_PR2
;	.line	238; /home/vbasel/.icaro/v4/firmware/core/analog.c	T2CON = 0b00000100;                 // Timer2 on, prescaler is 1
	MOVLW	0x04
	MOVWF	_T2CON
;	.line	239; /home/vbasel/.icaro/v4/firmware/core/analog.c	}
	RETURN	

; ; Starting pCode block
S_main__analogread	code
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
	BNC	_00659_DS_
	MOVLW	0x15
	SUBWF	r0x00, W
	BC	_00659_DS_
;	.line	174; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0=(channel-13) << 2;   // A0 = 13, ..., A4 = 17
	MOVF	r0x00, W
	MOVWF	r0x01
	MOVLW	0xf3
	ADDWF	r0x01, F
	RLNCF	r0x01, W
	RLNCF	WREG, W
	ANDLW	0xfc
	MOVWF	_ADCON0
	BRA	_00660_DS_
_00659_DS_:
;	.line	175; /home/vbasel/.icaro/v4/firmware/core/analog.c	else if(channel<=5)
	MOVLW	0x06
	SUBWF	r0x00, W
	BC	_00660_DS_
;	.line	176; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0 = channel << 2;      // A0 = 0, ..., A4 = 4
	RLNCF	r0x00, W
	RLNCF	WREG, W
	ANDLW	0xfc
	MOVWF	_ADCON0
_00660_DS_:
;	.line	180; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0bits.ADON=1;                  // A/D Converter module is enabled
	BSF	_ADCON0bits, 0
;	.line	182; /home/vbasel/.icaro/v4/firmware/core/analog.c	for (result=1;result<10;result++)   // Acquisition time
	MOVLW	0x09
	MOVWF	r0x00
	CLRF	r0x01
_00668_DS_:
	NOP
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
;	.line	182; /home/vbasel/.icaro/v4/firmware/core/analog.c	for (result=1;result<10;result++)   // Acquisition time
	MOVF	r0x00, W
	IORWF	r0x01, W
	BNZ	_00668_DS_
;	.line	185; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON0bits.GO=1;                    // Start A/D Conversion
	BSF	_ADCON0bits, 1
_00663_DS_:
;	.line	187; /home/vbasel/.icaro/v4/firmware/core/analog.c	while (ADCON0bits.GO);              // Wait for conversion stop
	BTFSC	_ADCON0bits, 1
	BRA	_00663_DS_
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
;	.line	195; /home/vbasel/.icaro/v4/firmware/core/analog.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__analogreference	code
_analogreference:
;	.line	103; /home/vbasel/.icaro/v4/firmware/core/analog.c	void analogreference(u8 Type)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	108; /home/vbasel/.icaro/v4/firmware/core/analog.c	if(Type == DEFAULT)			//the default analog reference of 5 volts (on 5V Arduino boards) or 3.3 volts (on 3.3V Arduino boards)
	MOVF	r0x00, W
	BNZ	_00640_DS_
;	.line	109; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON1|=0x00;			//Vref+ = VDD
	MOVFF	_ADCON1, r0x01
	MOVF	r0x01, W
	MOVWF	_ADCON1
	BRA	_00642_DS_
_00640_DS_:
;	.line	110; /home/vbasel/.icaro/v4/firmware/core/analog.c	else if(Type == EXTERNAL)	//the voltage applied to the AREF pin (0 to 5V only) is used as the reference.
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00642_DS_
;	.line	111; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON1|=0x10;			//Vref+ = External source
	MOVFF	_ADCON1, r0x00
	BSF	r0x00, 4
	MOVF	r0x00, W
	MOVWF	_ADCON1
_00642_DS_:
;	.line	121; /home/vbasel/.icaro/v4/firmware/core/analog.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__analog_init	code
_analog_init:
;	.line	25; /home/vbasel/.icaro/v4/firmware/core/analog.c	void analog_init(void)
	MOVFF	r0x00, POSTDEC1
;	.line	36; /home/vbasel/.icaro/v4/firmware/core/analog.c	TRISA=TRISA | 0x2F;
	MOVFF	_TRISA, r0x00
	MOVLW	0x2f
	IORWF	r0x00, F
	MOVF	r0x00, W
	MOVWF	_TRISA
;	.line	37; /home/vbasel/.icaro/v4/firmware/core/analog.c	TRISE=TRISE | 0x07;	
	MOVFF	_TRISE, r0x00
	MOVLW	0x07
	IORWF	r0x00, F
	MOVF	r0x00, W
	MOVWF	_TRISE
;	.line	38; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON1=0x07;
	MOVLW	0x07
	MOVWF	_ADCON1
;	.line	39; /home/vbasel/.icaro/v4/firmware/core/analog.c	ADCON2=0xBD;
	MOVLW	0xbd
	MOVWF	_ADCON2
;	.line	95; /home/vbasel/.icaro/v4/firmware/core/analog.c	}
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__servos_interrupt	code
_servos_interrupt:
;	.line	547; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (PIR1bits.TMR1IF)
	BTFSS	_PIR1bits, 0
	BRA	_00627_DS_
	BANKSEL	_phase
;	.line	553; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (phase)
	MOVF	_phase, W, B
	BZ	_00623_DS_
;	.line	555; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	ServosPulseUp();
	CALL	_ServosPulseUp
;	.line	557; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1H= 0xe9;//0xe9;
	MOVLW	0xe9
	MOVWF	_TMR1H
;	.line	558; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1L= 0x59;
	MOVLW	0x59
	MOVWF	_TMR1L
;	.line	560; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	T1CON=1;
	MOVLW	0x01
	MOVWF	_T1CON
	BANKSEL	_phase
;	.line	561; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	phase = 0;
	CLRF	_phase, B
	BRA	_00624_DS_
_00623_DS_:
;	.line	569; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	ServosPulseDown();
	CALL	_ServosPulseDown
;	.line	573; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1H= 0x32;
	MOVLW	0x32
	MOVWF	_TMR1H
;	.line	574; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TMR1L= 0xeb;
	MOVLW	0xeb
	MOVWF	_TMR1L
; #	MOVF	_needreordering, W, B
; #	BTFSC	STATUS, 2
; #	GOTO	_00621_DS_
; #	CALL	_SortServoTimings
; #	MOVLW	0x21
	BANKSEL	_needreordering
;	.line	576; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (needreordering)
	MOVF	_needreordering, W, B
;	.line	577; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	SortServoTimings(); // This takes more than 1 ms, but it's call only if needed.
	BTFSS	STATUS, 2
;	.line	578; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	T1CON= ( 1 | 2 << 4 ) ; // activate timer1 and prescaler = 1:4
	CALL	_SortServoTimings
	MOVLW	0x21
	MOVWF	_T1CON
;	.line	579; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	phase = 1;  			//This indicates that after next interrupt it will start the servos cycle.
	MOVLW	0x01
	BANKSEL	_phase
	MOVWF	_phase, B
_00624_DS_:
;	.line	583; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PIR1bits.TMR1IF=0;
	BCF	_PIR1bits, 0
_00627_DS_:
;	.line	586; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	RETURN	

; ; Starting pCode block
S_main__ServoMaximumPulse	code
_ServoMaximumPulse:
;	.line	530; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoMaximumPulse(unsigned char servo,int max_microseconds)
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
;	.line	533; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00597_DS_
; #	GOTO	_00602_DS_
; #	MOVF	r0x02, W
;	.line	534; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return;
	SUBWF	r0x00, W
;	.line	537; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (max_microseconds < MIDUS) max_microseconds = MIDUS;
	BC	_00602_DS_
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x7b
	BNZ	_00614_DS_
	MOVLW	0xdc
	SUBWF	r0x01, W
_00614_DS_:
	BC	_00599_DS_
	MOVLW	0xdc
	MOVWF	r0x01
	MOVLW	0x05
	MOVWF	r0x02
_00599_DS_:
;	.line	538; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (max_microseconds > MAXUS) max_microseconds = MAXUS;
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x77
	BNZ	_00615_DS_
	MOVLW	0xc5
	SUBWF	r0x01, W
_00615_DS_:
	BNC	_00601_DS_
	MOVLW	0xc4
	MOVWF	r0x01
	MOVLW	0x09
	MOVWF	r0x02
_00601_DS_:
;	.line	541; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	maxminpos[1][servo]=(max_microseconds - MINUS)>>3;   // 125 < final_max < 250
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
_00602_DS_:
;	.line	542; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoMinimumPulse	code
_ServoMinimumPulse:
;	.line	516; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoMinimumPulse(unsigned char servo,int min_microseconds)
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
;	.line	519; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00573_DS_
; #	GOTO	_00578_DS_
; #	MOVF	r0x02, W
;	.line	520; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return;
	SUBWF	r0x00, W
;	.line	523; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (min_microseconds < MINUS) min_microseconds = MINUS;
	BC	_00578_DS_
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x7f
	BNZ	_00590_DS_
	MOVLW	0xf4
	SUBWF	r0x01, W
_00590_DS_:
	BC	_00575_DS_
	MOVLW	0xf4
	MOVWF	r0x01
	MOVLW	0x01
	MOVWF	r0x02
_00575_DS_:
;	.line	524; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (min_microseconds > MIDUS) min_microseconds = MIDUS;
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x7b
	BNZ	_00591_DS_
	MOVLW	0xdd
	SUBWF	r0x01, W
_00591_DS_:
	BNC	_00577_DS_
	MOVLW	0xdc
	MOVWF	r0x01
	MOVLW	0x05
	MOVWF	r0x02
_00577_DS_:
;	.line	527; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	maxminpos[0][servo]=(min_microseconds - MINUS)>>3;   // 0 < final_min < 125
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
_00578_DS_:
;	.line	528; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoRead	code
_ServoRead:
;	.line	508; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	unsigned char ServoRead(unsigned char servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	510; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)        // test if numservo is valid
	MOVLW	0x1e
	SUBWF	r0x00, W
	BNC	_00561_DS_
;	.line	511; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return 0;
	CLRF	WREG
	BRA	_00562_DS_
_00561_DS_:
;	.line	513; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return servovalues[servo];
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
_00562_DS_:
;	.line	514; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoWrite	code
_ServoWrite:
;	.line	484; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoWrite(unsigned char servo,unsigned char degrees)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	491; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(servo>=TotalPICpins)
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00549_DS_
; #	GOTO	_00550_DS_
; #	CLRF	r0x02
;	.line	492; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	return;
	SUBWF	r0x00, W
;	.line	503; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	servovalues[servo]= value;
	BC	_00550_DS_
	CLRF	r0x02
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x01, INDF0
;	.line	505; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00550_DS_:
;	.line	506; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoDetach	code
_ServoDetach:
;	.line	459; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoDetach(unsigned char pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	461; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(pin>=TotalPICpins) return;
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00526_DS_
; #	GOTO	_00533_DS_
; #	MOVLW	LOW(_port)
;	.line	463; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	switch (port[pin])
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00533_DS_
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
	BRA	_00533_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x01, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00543_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00543_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00543_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00543_DS_:
	GOTO	_00527_DS_
	GOTO	_00528_DS_
	GOTO	_00529_DS_
	GOTO	_00530_DS_
	GOTO	_00531_DS_
_00527_DS_:
;	.line	465; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pA: activatedservos[pA] = activatedservos[pA] ^ mask[pin];
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
;	.line	466; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00533_DS_
_00528_DS_:
;	.line	467; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pB: activatedservos[pB] = activatedservos[pB] ^ mask[pin];
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
;	.line	468; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00533_DS_
_00529_DS_:
;	.line	470; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pC: activatedservos[pC] = activatedservos[pC] ^ mask[pin];
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
;	.line	471; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00533_DS_
_00530_DS_:
;	.line	474; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pD: activatedservos[pD] = activatedservos[pD] ^ mask[pin];
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
;	.line	475; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00533_DS_
_00531_DS_:
;	.line	478; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	case pE: activatedservos[pE] = activatedservos[pE] ^ mask[pin];
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
_00533_DS_:
;	.line	482; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoAttach	code
_ServoAttach:
;	.line	424; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void ServoAttach(unsigned char pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	426; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if(pin>=TotalPICpins) return;
	MOVLW	0x1e
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00503_DS_
; #	GOTO	_00510_DS_
; #	MOVLW	LOW(_port)
;	.line	428; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	switch (port[pin])
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00510_DS_
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
	BRA	_00510_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x01, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00520_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00520_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00520_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00520_DS_:
	GOTO	_00504_DS_
	GOTO	_00505_DS_
	GOTO	_00506_DS_
	GOTO	_00507_DS_
	GOTO	_00508_DS_
_00504_DS_:
;	.line	431; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pA] = activatedservos[pA] | mask[pin];  // list pin as servo driver.
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
;	.line	432; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISA = TRISA & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISA, F
;	.line	433; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00510_DS_
_00505_DS_:
;	.line	435; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pB] = activatedservos[pB] | mask[pin];  // list pin as servo driver.
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
;	.line	436; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISB = TRISB & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISB, F
;	.line	437; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00510_DS_
_00506_DS_:
;	.line	440; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pC] = activatedservos[pC] | mask[pin];  // list pin as servo driver.
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
;	.line	441; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISC = TRISC & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISC, F
;	.line	442; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00510_DS_
_00507_DS_:
;	.line	446; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pD] = activatedservos[pD] | mask[pin];  // list pin as servo driver.
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
;	.line	447; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISD = TRISD & (~mask[pin]); 					// set as output pin
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	COMF	r0x01, F
	MOVF	r0x01, W
	ANDWF	_TRISD, F
;	.line	448; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00510_DS_
_00508_DS_:
;	.line	452; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	activatedservos[pE] = activatedservos[pE] | mask[pin];  // list pin as servo driver.
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
;	.line	453; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	TRISE = TRISE & (~mask[pin]); 					// set as output pin
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	COMF	r0x00, F
	MOVF	r0x00, W
	ANDWF	_TRISE, F
_00510_DS_:
;	.line	457; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
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
;	.line	249; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	static void SortServoTimings()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	BANKSEL	_SortServoTimings_t_1_35
;	.line	254; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICpins;t++)
	CLRF	_SortServoTimings_t_1_35, B
_00386_DS_:
	MOVLW	0x1e
	BANKSEL	_SortServoTimings_t_1_35
	SUBWF	_SortServoTimings_t_1_35, W, B
	BTFSC	STATUS, 0
	BRA	_00333_DS_
;	.line	256; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=255; 
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	SETF	INDF0
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	257; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	258; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	260; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	263; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	266; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
;	.line	254; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICpins;t++)
	INCF	_SortServoTimings_t_1_35, F, B
	BRA	_00386_DS_
_00333_DS_:
	BANKSEL	_SortServoTimings_t_1_35
;	.line	271; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICports;t++)
	CLRF	_SortServoTimings_t_1_35, B
_00389_DS_:
	MOVLW	0x05
	BANKSEL	_SortServoTimings_t_1_35
	SUBWF	_SortServoTimings_t_1_35, W, B
	BC	_00334_DS_
;	.line	272; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[t]=0x00;
	MOVLW	LOW(_mascaratotal)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_mascaratotal)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	271; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(t=0;t<TotalPICports;t++)
	INCF	_SortServoTimings_t_1_35, F, B
	BRA	_00389_DS_
_00334_DS_:
	BANKSEL	_SortServoTimings_totalservos_1_35
;	.line	274; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	totalservos=0; // Total servos revised. This helps to keep within "while"
	CLRF	_SortServoTimings_totalservos_1_35, B
	BANKSEL	_SortServoTimings_t_1_35
;	.line	275; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	t=0;           // Index to go through timevalue and timings tables.
	CLRF	_SortServoTimings_t_1_35, B
_00382_DS_:
;	.line	276; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	while(totalservos<TotalPICpins)
	MOVLW	0x1e
	BANKSEL	_SortServoTimings_totalservos_1_35
	SUBWF	_SortServoTimings_totalservos_1_35, W, B
	BTFSC	STATUS, 0
	GOTO	_00384_DS_
;	.line	278; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_35
	MOVWF	_SortServoTimings_numservos_1_35, B
	BANKSEL	_SortServoTimings_s_1_35
;	.line	280; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(s=0;s<TotalPICpins;s++)
	CLRF	_SortServoTimings_s_1_35, B
_00392_DS_:
	MOVLW	0x1e
	BANKSEL	_SortServoTimings_s_1_35
	SUBWF	_SortServoTimings_s_1_35, W, B
	BTFSC	STATUS, 0
	GOTO	_00381_DS_
;	.line	283; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	switch (port[s])
	MOVLW	LOW(_port)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	GOTO	_00393_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x00, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_00473_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00473_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00473_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00473_DS_:
	GOTO	_00335_DS_
	GOTO	_00344_DS_
	GOTO	_00353_DS_
	GOTO	_00362_DS_
	GOTO	_00371_DS_
_00335_DS_:
;	.line	286; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pA] & activatedservos[pA]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	GOTO	_00393_DS_
;	.line	289; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
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
	BRA	_00339_DS_
;	.line	290; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	291; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	292; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	294; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	297; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	300; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
;	.line	302; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_35
	MOVWF	_SortServoTimings_numservos_1_35, B
	GOTO	_00393_DS_
_00339_DS_:
;	.line	304; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00477_DS_
	GOTO	_00393_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
_00477_DS_:
	BANKSEL	_SortServoTimings_t_1_35
;	.line	305; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA] |= mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x01
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_35, W, B
	MULLW	0x05
	MOVF	PRODH, W
	MOVWF	r0x03
	MOVFF	PRODL, r0x02
	MOVLW	LOW(_timings)
	ADDWF	r0x02, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x03, F
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	BANKSEL	_SortServoTimings_numservos_1_35
;	.line	306; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_35, F, B
;	.line	308; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;      		
	GOTO	_00393_DS_
_00344_DS_:
;	.line	311; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pB] & activatedservos[pB]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	GOTO	_00393_DS_
;	.line	314; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
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
	BRA	_00348_DS_
;	.line	315; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	316; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	317; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	319; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	322; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	325; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
;	.line	327; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_35
	MOVWF	_SortServoTimings_numservos_1_35, B
	GOTO	_00393_DS_
_00348_DS_:
;	.line	329; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00482_DS_
	GOTO	_00393_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
_00482_DS_:
	BANKSEL	_SortServoTimings_t_1_35
;	.line	330; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB] |= mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	BANKSEL	_SortServoTimings_numservos_1_35
;	.line	331; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_35, F, B
;	.line	333; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	GOTO	_00393_DS_
_00353_DS_:
;	.line	337; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pC] & activatedservos[pC]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	GOTO	_00393_DS_
;	.line	340; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
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
	BRA	_00357_DS_
;	.line	341; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	342; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	343; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	344; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	346; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	349; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
;	.line	351; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_35
	MOVWF	_SortServoTimings_numservos_1_35, B
	GOTO	_00393_DS_
_00357_DS_:
;	.line	353; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00487_DS_
	GOTO	_00393_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
_00487_DS_:
	BANKSEL	_SortServoTimings_t_1_35
;	.line	354; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC] |= mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	BANKSEL	_SortServoTimings_numservos_1_35
;	.line	355; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_35, F, B
;	.line	357; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	GOTO	_00393_DS_
_00362_DS_:
;	.line	362; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pD] & activatedservos[pD]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	GOTO	_00393_DS_
;	.line	365; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
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
	BRA	_00366_DS_
;	.line	366; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	367; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	368; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	369; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	370; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	372; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
;	.line	374; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_35
	MOVWF	_SortServoTimings_numservos_1_35, B
	BRA	_00393_DS_
_00366_DS_:
;	.line	376; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00492_DS_
	BRA	_00393_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
_00492_DS_:
	BANKSEL	_SortServoTimings_t_1_35
;	.line	377; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD] |= mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	BANKSEL	_SortServoTimings_numservos_1_35
;	.line	378; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_35, F, B
;	.line	380; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	break;
	BRA	_00393_DS_
_00371_DS_:
;	.line	385; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (mask[s] & mascaratotal[pE] & activatedservos[pE]){
	MOVLW	LOW(_mask)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	BRA	_00393_DS_
;	.line	388; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] < timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
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
	BRA	_00375_DS_
;	.line	389; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timevalue[t]=servovalues[s];
	MOVLW	LOW(_timevalue)
; removed redundant BANKSEL
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x01, F
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	390; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pA]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	391; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pB]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	392; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pC]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	393; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pD]=0x00;
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
; removed redundant BANKSEL
;	.line	394; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE]=mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
;	.line	395; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos=1;
	MOVLW	0x01
	BANKSEL	_SortServoTimings_numservos_1_35
	MOVWF	_SortServoTimings_numservos_1_35, B
	BRA	_00393_DS_
_00375_DS_:
;	.line	397; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	else if (servovalues[s] == timevalue[t]){
	MOVLW	LOW(_servovalues)
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVLW	LOW(_timevalue)
	BANKSEL	_SortServoTimings_t_1_35
	ADDWF	_SortServoTimings_t_1_35, W, B
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timevalue)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	XORWF	r0x01, W
	BZ	_00497_DS_
	BRA	_00393_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
_00497_DS_:
	BANKSEL	_SortServoTimings_t_1_35
;	.line	398; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	timings[t][pE] |= mask[s];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x02
; removed redundant BANKSEL
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_s_1_35
	ADDWF	_SortServoTimings_s_1_35, W, B
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
	BANKSEL	_SortServoTimings_numservos_1_35
;	.line	399; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	numservos++;
	INCF	_SortServoTimings_numservos_1_35, F, B
_00393_DS_:
	BANKSEL	_SortServoTimings_s_1_35
;	.line	280; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(s=0;s<TotalPICpins;s++)
	INCF	_SortServoTimings_s_1_35, F, B
	GOTO	_00392_DS_
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
_00381_DS_:
	BANKSEL	_SortServoTimings_t_1_35
;	.line	405; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pA] |= timings[t][pA];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	406; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pB] |= timings[t][pB];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	408; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pC] |= timings[t][pC];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	411; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pD] |= timings[t][pD];
	MOVF	_SortServoTimings_t_1_35, W, B
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
; ;multiply lit val:0x05 by variable _SortServoTimings_t_1_35 and store in r0x00
	BANKSEL	_SortServoTimings_t_1_35
;	.line	414; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	mascaratotal[pE] |= timings[t][pE];
	MOVF	_SortServoTimings_t_1_35, W, B
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
	BANKSEL	_SortServoTimings_numservos_1_35
;	.line	417; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	totalservos += numservos;
	MOVF	_SortServoTimings_numservos_1_35, W, B
	BANKSEL	_SortServoTimings_totalservos_1_35
	ADDWF	_SortServoTimings_totalservos_1_35, F, B
	BANKSEL	_SortServoTimings_t_1_35
;	.line	418; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	t++;
	INCF	_SortServoTimings_t_1_35, F, B
	GOTO	_00382_DS_
_00384_DS_:
	BANKSEL	_needreordering
;	.line	421; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	needreordering=0;  // This indicates that servo timings are sorted.
	CLRF	_needreordering, B
;	.line	422; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
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
	BANKSEL	_activatedservos
;	.line	232; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTA = PORTA | activatedservos[pA];
	MOVF	_activatedservos, W, B
	IORWF	_PORTA, F
; removed redundant BANKSEL
;	.line	233; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTB = PORTB | activatedservos[pB];
	MOVF	(_activatedservos + 1), W, B
	IORWF	_PORTB, F
; removed redundant BANKSEL
;	.line	235; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTC = PORTC | activatedservos[pC];
	MOVF	(_activatedservos + 2), W, B
	IORWF	_PORTC, F
; removed redundant BANKSEL
;	.line	238; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTD = PORTD | activatedservos[pD];
	MOVF	(_activatedservos + 3), W, B
	IORWF	_PORTD, F
; removed redundant BANKSEL
;	.line	241; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTE = PORTE | activatedservos[pE];
	MOVF	(_activatedservos + 4), W, B
	IORWF	_PORTE, F
;	.line	243; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	RETURN	

; ; Starting pCode block
S_main__ServosPulseDown	code
_ServosPulseDown:
;	.line	185; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	static void ServosPulseDown()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	_ServosPulseDown_timingindex_1_30
;	.line	187; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	volatile unsigned char timingindex = 0;
	CLRF	_ServosPulseDown_timingindex_1_30, B
	BANKSEL	_timedivision
;	.line	189; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(timedivision=0;timedivision < 251;timedivision++)
	CLRF	_timedivision, B
_00306_DS_:
;	.line	191; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	if (timevalue[timingindex] == timedivision)
	MOVLW	LOW(_timevalue)
	BANKSEL	_ServosPulseDown_timingindex_1_30
	ADDWF	_ServosPulseDown_timingindex_1_30, W, B
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
	BZ	_00317_DS_
	BRA	_00304_DS_
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_30 and store in r0x00
_00317_DS_:
	BANKSEL	_ServosPulseDown_timingindex_1_30
;	.line	193; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTA = PORTA ^ timings[timingindex][pA];
	MOVF	_ServosPulseDown_timingindex_1_30, W, B
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
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_30 and store in r0x00
; removed redundant BANKSEL
;	.line	194; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTB = PORTB ^ timings[timingindex][pB];
	MOVF	_ServosPulseDown_timingindex_1_30, W, B
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
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_30 and store in r0x00
; removed redundant BANKSEL
;	.line	196; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTC = PORTC ^ timings[timingindex][pC];
	MOVF	_ServosPulseDown_timingindex_1_30, W, B
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
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_30 and store in r0x00
; removed redundant BANKSEL
;	.line	199; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTD = PORTD ^ timings[timingindex][pD];
	MOVF	_ServosPulseDown_timingindex_1_30, W, B
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
; ;multiply lit val:0x05 by variable _ServosPulseDown_timingindex_1_30 and store in r0x00
; removed redundant BANKSEL
;	.line	202; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	PORTE = PORTE ^ timings[timingindex][pE];
	MOVF	_ServosPulseDown_timingindex_1_30, W, B
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
	INCF	_ServosPulseDown_timingindex_1_30, F, B
_00304_DS_:
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
	BRA	_00306_DS_
;	.line	227; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__servos_init	code
_servos_init:
;	.line	152; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	void servos_init()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	157; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(a=0;a<TotalPICpins;a++)
	CLRF	r0x00
_00277_DS_:
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
	BNC	_00277_DS_
;	.line	165; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	for(a=0;a<TotalPICports;a++)
	CLRF	r0x00
_00279_DS_:
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
	BNC	_00279_DS_
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
;	.line	182; /home/vbasel/.icaro/v4/firmware/libraries/servos.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__toggle	code
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
;	.line	52; /home/vbasel/.icaro/v4/firmware/core/digitalt.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__digitalread	code
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
	ADDLW	LOW(_00265_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_00265_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_00265_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_00265_DS_:
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
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
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
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
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
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
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
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
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
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	BRA	_00259_DS_
_00258_DS_:
;	.line	77; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	return 0;
	CLRF	WREG
_00259_DS_:
;	.line	78; /home/vbasel/.icaro/v4/firmware/core/digitalr.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__digitalwrite	code
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
	MOVWF	r0x02
	MOVF	_LATA, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_LATA
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
	MOVWF	r0x02
	MOVF	_LATB, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_LATB
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
	MOVWF	r0x02
	MOVF	_LATC, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_LATC
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
	MOVWF	r0x02
	MOVF	_LATD, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_LATD
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
	MOVWF	r0x00
	MOVF	_LATE, W
	MOVWF	r0x01
	MOVF	r0x00, W
	ANDWF	r0x01, W
	MOVWF	_LATE
_00227_DS_:
;	.line	81; /home/vbasel/.icaro/v4/firmware/core/digitalw.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__pinmode	code
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
	MOVWF	r0x02
	MOVF	_TRISA, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_TRISA
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
	MOVWF	r0x02
	MOVF	_TRISB, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_TRISB
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
	MOVWF	r0x02
	MOVF	_TRISC, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_TRISC
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
	MOVWF	r0x02
	MOVF	_TRISD, W
	MOVWF	r0x03
	MOVF	r0x02, W
	ANDWF	r0x03, W
	MOVWF	_TRISD
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
	MOVWF	r0x00
	MOVF	_TRISE, W
	MOVWF	r0x01
	MOVF	r0x00, W
	ANDWF	r0x01, W
	MOVWF	_TRISE
_00180_DS_:
;	.line	73; /home/vbasel/.icaro/v4/firmware/core/digitalp.c	}
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
	MOVFF	r0x02, r0x04
	MOVLW	0xfd
	ADDWF	r0x04, F
	MOVF	r0x04, W
	CALL	_delay100tcy
	BRA	_00151_DS_
_00154_DS_:
;	.line	104; /home/vbasel/.icaro/v4/firmware/core/delayms.c	}
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__System_getCpuFrequency	code
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
	MOVWF	r0x00
	MOVLW	0x02
	SUBWF	r0x00, W
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
;	.line	320; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	}
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__System_readFlashMemory	code
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
	MOVF	r0x00, W
	MOVWF	r0x04
; #	MOVF	r0x01, W
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
	MOVF	r0x01, W
	MOVWF	r0x05
	MOVWF	r0x04
	CLRF	r0x05
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
;	.line	203; /home/vbasel/.icaro/v4/firmware/core/oscillator.c	}
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


; Statistics:
; code size:	 9748 (0x2614) bytes ( 7.44%)
;           	 4874 (0x130a) words
; udata size:	  291 (0x0123) bytes (16.24%)
; access size:	    8 (0x0008) bytes


	end
