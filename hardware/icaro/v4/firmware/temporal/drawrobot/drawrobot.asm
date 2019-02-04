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
	global	__i
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
	global	_rx
	global	_wpointer
	global	_rpointer
	global	_m1
	global	_m2
	global	_cantidad_p
	global	_m1p
	global	_m2p
	global	_t
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
	global	_pprintf
	global	_psprintf2
	global	_psprintf
	global	_Serial_begin
	global	_serial_interrupt
	global	_Serial_putchar
	global	_Serial_read
	global	_Serial_print
	global	_Serial_println
	global	_Serial_printNumber
	global	_Serial_printf
	global	_at
	global	_ad
	global	_iz
	global	_de
	global	_convert_ascii
	global	_pot
	global	_convertir_numero
	global	_loop
	global	_high_priority_isr
	global	_low_priority_isr
	global	_mask
	global	_port

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget3
	extern	__gptrput1
	extern	__gptrput3
	extern	__gptrget1
	extern	__gptrget4
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
	extern	__modulong
	extern	__mullong
	extern	___sint2fs
	extern	___fslt
	extern	_cinit

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
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
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
__i	db	0x00, 0x00
_wpointer	db	0x01
_rpointer	db	0x01
_m1	db	0x01, 0x00, 0x02, 0x00, 0x04, 0x00, 0x08, 0x00
_m2	db	0x10, 0x00, 0x20, 0x00, 0x40, 0x00, 0x80, 0x00
_cantidad_p	db	0x04, 0x00
_m1p	db	0x00, 0x00
_m2p	db	0x00, 0x00
_t	db	0x03, 0x00
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
r0x1b	res	1
r0x1c	res	1
r0x1d	res	1
r0x1e	res	1
r0x1f	res	1

udata_drawrobot_0	udata
__cpu_clock_	res	4

udata_drawrobot_1	udata
_timingindex	res	1

udata_drawrobot_2	udata
_loopvar	res	1

udata_drawrobot_3	udata
_pputchar	res	3

udata_drawrobot_4	udata
_servovalues	res	30

udata_drawrobot_5	udata
_maxminpos	res	60

udata_drawrobot_6	udata
_activatedservos	res	5

udata_drawrobot_7	udata
_ServosPulseDown_timingindex_1_30	res	1

udata_drawrobot_8	udata
_timings	res	150

udata_drawrobot_9	udata
_timevalue	res	30

udata_drawrobot_10	udata
_SortServoTimings_t_1_35	res	1

udata_drawrobot_11	udata
_SortServoTimings_totalservos_1_35	res	1

udata_drawrobot_12	udata
_SortServoTimings_numservos_1_35	res	1

udata_drawrobot_13	udata
_SortServoTimings_s_1_35	res	1

udata_drawrobot_14	udata
_mascaratotal	res	5

udata_drawrobot_15	udata
_pprinti_buffer_1_159	res	12

udata_drawrobot_16	udata
_pprintfl_buffer_1_169	res	12

udata_drawrobot_17	udata
_pprintfl_tmp_1_169	res	12

udata_drawrobot_18	udata
_pprintfl_helper_1_169	res	4

udata_drawrobot_19	udata
_pprint_scr_1_185	res	2

udata_drawrobot_20	udata
_psprintf2_out_1_209	res	3

udata_drawrobot_21	udata
_rx	res	128

udata_drawrobot_22	udata
_Serial_printNumber_tmp_1_227	res	12

udata_drawrobot_23	udata
_Serial_printNumber_string_1_227	res	12

udata_drawrobot_24	udata
_convertir_numero_m_1_262	res	10

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_drawrobot___entry	code	0X000C00
__entry:
	goto	__startup
	
;	.line	74; /home/vbasel/.icaro/v4/firmware/source/drawrobot/crt0iz.c	}
; ; Starting pCode block for absolute section
; ;-----------------------------------------
S_drawrobot_ivec_0x1_high_priority_isr	code	0X000C08
ivec_0x1_high_priority_isr:
	GOTO	_high_priority_isr

; ; Starting pCode block for absolute section
; ;-----------------------------------------
S_drawrobot_ivec_0x2_low_priority_isr	code	0X000C18
ivec_0x2_low_priority_isr:
	GOTO	_low_priority_isr

; I code from now on!
; ; Starting pCode block
S_drawrobot__main	code
_main:
;	.line	197; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	if (OSCCONbits.SCS > 0x01)
	MOVF	_OSCCONbits, W
	ANDLW	0x03
	MOVWF	r0x00
	MOVLW	0x02
	SUBWF	r0x00, W
	BNC	_01744_DS_
_01740_DS_:
;	.line	199; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	while (!OSCCONbits.IOFS);
	BTFSS	_OSCCONbits, 2
	BRA	_01740_DS_
_01744_DS_:
;	.line	243; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	IO_init();
	CALL	_IO_init
;	.line	244; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	IO_digital();
	CALL	_IO_digital
;	.line	288; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	servos_init();
	CALL	_servos_init
;	.line	300; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	setup();
	CALL	_setup
_01746_DS_:
;	.line	327; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	loop();
	CALL	_loop
	BRA	_01746_DS_
;	.line	330; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	}
	RETURN	

; ; Starting pCode block
S_drawrobot__low_priority_isr	code
_low_priority_isr:
;	.line	535; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	void low_priority_isr(void) __interrupt 2
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
	
;	.line	565; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	}
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
S_drawrobot__high_priority_isr	code
_high_priority_isr:
;	.line	438; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	void high_priority_isr(void) __interrupt 1
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
	
;	.line	463; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	serial_interrupt();
	CALL	_serial_interrupt
;	.line	475; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	servos_interrupt();
	CALL	_servos_interrupt
	MOVFF	PREINC1, _TABLAT
	MOVFF	PREINC1, _TBLPTRU
	MOVFF	PREINC1, _TBLPTRH
	MOVFF	PREINC1, _TBLPTRL
	
;	.line	520; /home/vbasel/.icaro/v4/firmware/source/drawrobot/drawrobot.c	}
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
S_drawrobot___startup	code
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
	
;	.line	259; /home/vbasel/.icaro/v4/firmware/source/drawrobot/crt0iz.c	main ();
	CALL	_main
lockup:
	;	Returning from main will lock up.
	bra	lockup
	
;	.line	266; /home/vbasel/.icaro/v4/firmware/source/drawrobot/crt0iz.c	}
; ; Starting pCode block
S_drawrobot__loop	code
_loop:
;	.line	168; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	void loop()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	171; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_begin(9600);  
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x25
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CALL	_Serial_begin
	MOVLW	0x04
	ADDWF	FSR1L, F
_01674_DS_:
	BANKSEL	_wpointer
;	.line	174; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (Serial_available())
	MOVF	_wpointer, W, B
	BANKSEL	_rpointer
	XORWF	_rpointer, W, B
	BZ	_01674_DS_
;	.line	176; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	b=Serial_read();
	CALL	_Serial_read
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
;	.line	178; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	switch(b)
	MOVWF	r0x00
	XORLW	0x61
	BZ	_01661_DS_
	MOVF	r0x00, W
	XORLW	0x62
	BNZ	_01713_DS_
	BRA	_01666_DS_
_01713_DS_:
	MOVF	r0x00, W
	XORLW	0x63
	BNZ	_01715_DS_
	BRA	_01668_DS_
_01715_DS_:
	MOVF	r0x00, W
	XORLW	0x64
	BNZ	_01717_DS_
	BRA	_01663_DS_
_01717_DS_:
	MOVF	r0x00, W
	XORLW	0x69
	BNZ	_01719_DS_
	BRA	_01664_DS_
_01719_DS_:
	MOVF	r0x00, W
	XORLW	0x6c
	BNZ	_01721_DS_
	BRA	_01665_DS_
_01721_DS_:
	MOVF	r0x00, W
	XORLW	0x74
	BZ	_01662_DS_
	MOVF	r0x00, W
	XORLW	0x76
	BNZ	_01725_DS_
	BRA	_01667_DS_
_01725_DS_:
	BRA	_01669_DS_
_01661_DS_:
;	.line	181; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	ad(convertir_numero());
	CALL	_convertir_numero
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ad
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	182; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	183; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01662_DS_:
;	.line	185; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	at(convertir_numero());
	CALL	_convertir_numero
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_at
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	186; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	187; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01663_DS_:
;	.line	189; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	de(convertir_numero());
	CALL	_convertir_numero
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_de
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	190; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	191; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01664_DS_:
;	.line	193; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	iz(convertir_numero());
	CALL	_convertir_numero
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_iz
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	194; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	195; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01665_DS_:
;	.line	198; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	ServoWrite(10,30);
	MOVLW	0x1e
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	199; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Delayms(1000);
	MOVLW	0x03
	MOVWF	POSTDEC1
	MOVLW	0xe8
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	200; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	201; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=0;
	CLRF	_PORTB
;	.line	202; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01666_DS_:
;	.line	205; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	ServoWrite(10,120);
	MOVLW	0x78
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	206; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Delayms(1000);
	MOVLW	0x03
	MOVWF	POSTDEC1
	MOVLW	0xe8
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	207; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	208; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=0;
	CLRF	_PORTB
;	.line	209; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01667_DS_:
;	.line	211; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	t=convertir_numero();
	CALL	_convertir_numero
	BANKSEL	_t
	MOVWF	_t, B
	MOVFF	PRODL, (_t + 1)
;	.line	212; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	213; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01668_DS_:
;	.line	215; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=0;
	CLRF	_PORTB
;	.line	217; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	218; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	break;
	BRA	_01674_DS_
_01669_DS_:
;	.line	221; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=0;
	CLRF	_PORTB
;	.line	222; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Serial_putchar('1');
	MOVLW	0x31
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	223; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
	BRA	_01674_DS_
;	.line	227; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_drawrobot__convertir_numero	code
_convertir_numero:
;	.line	127; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	int convertir_numero()
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
;	.line	129; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	char b=0;
	CLRF	r0x00
;	.line	130; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	int n=0;
	CLRF	r0x01
	CLRF	r0x02
;	.line	133; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	int n_f=0;
	CLRF	r0x03
	CLRF	r0x04
	BANKSEL	_convertir_numero_m_1_262
;	.line	134; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	int m[5]={0,0,0,0,0};
	CLRF	_convertir_numero_m_1_262, B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 1), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 2), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 3), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 4), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 5), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 6), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 7), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 8), B
; removed redundant BANKSEL
	CLRF	(_convertir_numero_m_1_262 + 9), B
;	.line	135; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	int fin=0;
	CLRF	r0x05
	CLRF	r0x06
_01614_DS_:
;	.line	136; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	while(b!=';' ){//|| b!='\n' || b!='\r'){
	MOVF	r0x00, W
	XORLW	0x3b
	BNZ	_01648_DS_
	BRA	_01616_DS_
_01648_DS_:
	BANKSEL	_wpointer
;	.line	137; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (Serial_available())
	MOVF	_wpointer, W, B
	BANKSEL	_rpointer
	XORWF	_rpointer, W, B
	BZ	_01614_DS_
;	.line	139; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	b=Serial_read();
	CALL	_Serial_read
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
;	.line	141; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (b==';'){
	MOVWF	r0x00
	XORLW	0x3b
	BZ	_01652_DS_
	BRA	_01610_DS_
_01652_DS_:
;	.line	143; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(i=0;i<=n;i++){
	CLRF	r0x07
	CLRF	r0x08
	CLRF	r0x09
	CLRF	r0x0a
_01618_DS_:
	MOVF	r0x02, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x08, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_01653_DS_
	MOVF	r0x07, W
	SUBWF	r0x01, W
_01653_DS_:
	BNC	_01603_DS_
;	.line	144; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	n_f=n_f+m[i]*pot(n-i);//*powf(10,n-i-1);
	MOVLW	LOW(_convertir_numero_m_1_262)
	ADDWF	r0x09, W
	MOVWF	r0x0b
	MOVLW	HIGH(_convertir_numero_m_1_262)
	ADDWFC	r0x0a, W
	MOVWF	r0x0c
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, FSR0H
	MOVFF	POSTINC0, r0x0b
	MOVFF	INDF0, r0x0c
	MOVF	r0x07, W
	SUBWF	r0x01, W
	MOVWF	r0x0d
	MOVF	r0x08, W
	SUBWFB	r0x02, W
; #	MOVWF	r0x0e
; #	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	_pot
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVF	r0x0b, W
	ADDWF	r0x03, F
	MOVF	r0x0c, W
	ADDWFC	r0x04, F
;	.line	143; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(i=0;i<=n;i++){
	MOVLW	0x02
	ADDWF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
	INFSNZ	r0x07, F
	INCF	r0x08, F
	BRA	_01618_DS_
_01603_DS_:
;	.line	147; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if(n>2)
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01654_DS_
	MOVLW	0x03
	SUBWF	r0x01, W
_01654_DS_:
	BNC	_01605_DS_
;	.line	149; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	fin=n_f+1;
	MOVF	r0x03, W
	ADDLW	0x01
	MOVWF	r0x05
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x06
	BRA	_01606_DS_
_01605_DS_:
;	.line	151; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	fin=n_f;
	MOVFF	r0x03, r0x05
	MOVFF	r0x04, r0x06
_01606_DS_:
;	.line	153; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	n_f=0;
	CLRF	r0x03
	CLRF	r0x04
;	.line	154; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	n=0;
	CLRF	r0x01
	CLRF	r0x02
	BRA	_01614_DS_
_01610_DS_:
;	.line	156; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	nn=convert_ascii(b);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_convert_ascii
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVF	POSTINC1, F
;	.line	157; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if(nn!=255){
	XORLW	0xff
	BNZ	_01656_DS_
	MOVF	r0x08, W
	BNZ	_01656_DS_
	BRA	_01614_DS_
_01656_DS_:
;	.line	158; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m[n]=nn;
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x09
	MOVFF	PRODL, r0x0a
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_convertir_numero_m_1_262)
	ADDWF	r0x09, F
	MOVLW	HIGH(_convertir_numero_m_1_262)
	ADDWFC	r0x0a, F
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, FSR0H
	MOVFF	r0x07, POSTINC0
	MOVFF	r0x08, INDF0
;	.line	159; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	n++;
	INFSNZ	r0x01, F
	INCF	r0x02, F
	BRA	_01614_DS_
_01616_DS_:
;	.line	165; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return fin;
	MOVFF	r0x06, PRODL
	MOVF	r0x05, W
;	.line	166; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
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
	RETURN	

; ; Starting pCode block
S_drawrobot__pot	code
_pot:
;	.line	108; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	int pot(int a)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	110; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	switch(a)
	BSF	STATUS, 0
	BTFSS	r0x01, 7
	BCF	STATUS, 0
	BC	_01587_DS_
	MOVF	r0x01, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01597_DS_
	MOVLW	0x05
	SUBWF	r0x00, W
_01597_DS_:
	BC	_01587_DS_
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x00, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_01598_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_01598_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_01598_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_01598_DS_:
	GOTO	_01582_DS_
	GOTO	_01583_DS_
	GOTO	_01584_DS_
	GOTO	_01585_DS_
	GOTO	_01586_DS_
_01582_DS_:
;	.line	113; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 0;
	CLRF	PRODL
	CLRF	WREG
	BRA	_01589_DS_
_01583_DS_:
;	.line	115; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 1;
	CLRF	PRODL
	MOVLW	0x01
	BRA	_01589_DS_
_01584_DS_:
;	.line	117; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 10;
	CLRF	PRODL
	MOVLW	0x0a
	BRA	_01589_DS_
_01585_DS_:
;	.line	119; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 100;
	CLRF	PRODL
	MOVLW	0x64
	BRA	_01589_DS_
_01586_DS_:
;	.line	121; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 1000;
	MOVLW	0x03
	MOVWF	PRODL
	MOVLW	0xe8
	BRA	_01589_DS_
_01587_DS_:
;	.line	123; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 0;
	CLRF	PRODL
	CLRF	WREG
_01589_DS_:
;	.line	126; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__convert_ascii	code
_convert_ascii:
;	.line	80; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	int convert_ascii(char a)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	82; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	switch(a)
	MOVLW	0x30
	SUBWF	r0x00, W
	BTFSS	STATUS, 0
	BRA	_01565_DS_
	MOVLW	0x3a
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_01565_DS_
	MOVLW	0xd0
	ADDWF	r0x00, F
	CLRF	PCLATH
	CLRF	PCLATU
	RLCF	r0x00, W
	RLCF	PCLATH, F
	RLCF	WREG, W
	RLCF	PCLATH, F
	ANDLW	0xfc
	ADDLW	LOW(_01577_DS_)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_01577_DS_)
	ADDWFC	PCLATH, F
	MOVLW	UPPER(_01577_DS_)
	ADDWFC	PCLATU, F
	MOVF	PREINC1, W
	MOVWF	PCL
_01577_DS_:
	GOTO	_01555_DS_
	GOTO	_01556_DS_
	GOTO	_01557_DS_
	GOTO	_01558_DS_
	GOTO	_01559_DS_
	GOTO	_01560_DS_
	GOTO	_01561_DS_
	GOTO	_01562_DS_
	GOTO	_01563_DS_
	GOTO	_01564_DS_
_01555_DS_:
;	.line	85; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 0;
	CLRF	PRODL
	CLRF	WREG
	BRA	_01567_DS_
_01556_DS_:
;	.line	87; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 1;
	CLRF	PRODL
	MOVLW	0x01
	BRA	_01567_DS_
_01557_DS_:
;	.line	89; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 2;
	CLRF	PRODL
	MOVLW	0x02
	BRA	_01567_DS_
_01558_DS_:
;	.line	91; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 3;
	CLRF	PRODL
	MOVLW	0x03
	BRA	_01567_DS_
_01559_DS_:
;	.line	93; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 4;
	CLRF	PRODL
	MOVLW	0x04
	BRA	_01567_DS_
_01560_DS_:
;	.line	95; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 5;
	CLRF	PRODL
	MOVLW	0x05
	BRA	_01567_DS_
_01561_DS_:
;	.line	97; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 6;
	CLRF	PRODL
	MOVLW	0x06
	BRA	_01567_DS_
_01562_DS_:
;	.line	99; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 7;
	CLRF	PRODL
	MOVLW	0x07
	BRA	_01567_DS_
_01563_DS_:
;	.line	101; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 8;
	CLRF	PRODL
	MOVLW	0x08
	BRA	_01567_DS_
_01564_DS_:
;	.line	103; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 9;
	CLRF	PRODL
	MOVLW	0x09
	BRA	_01567_DS_
_01565_DS_:
;	.line	105; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	return 255;
	CLRF	PRODL
	SETF	WREG
_01567_DS_:
;	.line	107; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__de	code
_de:
;	.line	63; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	void de(float p)
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
;	.line	67; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	CLRF	r0x04
	CLRF	r0x05
_01532_DS_:
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	BRA	_01534_DS_
	BANKSEL	(_m2p + 1)
;	.line	69; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=m2[m2p]+m1[m1p];
	MOVF	(_m2p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m2p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m2)
	ADDWF	r0x06, F
	MOVLW	HIGH(_m2)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
	BANKSEL	(_m1p + 1)
	MOVF	(_m1p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m1p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m1)
	ADDWF	r0x07, F
	MOVLW	HIGH(_m1)
	ADDWFC	r0x08, F
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	MOVFF	POSTINC0, r0x07
	MOVFF	INDF0, r0x08
	MOVF	r0x07, W
	ADDWF	r0x06, W
	MOVWF	_PORTB
	BANKSEL	(_t + 1)
;	.line	70; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Delayms(t);
	MOVF	(_t + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_t, W, B
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	71; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m1p--;
	MOVLW	0xff
	BANKSEL	_m1p
	ADDWF	_m1p, F, B
; removed redundant BANKSEL
	ADDWFC	(_m1p + 1), F, B
	BANKSEL	_m2p
;	.line	72; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m2p++;
	INCFSZ	_m2p, F, B
	BRA	_11766_DS_
; removed redundant BANKSEL
	INCF	(_m2p + 1), F, B
_11766_DS_:
;	.line	73; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m1p<0){m1p=cantidad_p-1;}
	BSF	STATUS, 0
	BANKSEL	(_m1p + 1)
	BTFSS	(_m1p + 1), 7, B
	BCF	STATUS, 0
	BNC	_01527_DS_
	BANKSEL	_cantidad_p
	MOVF	_cantidad_p, W, B
	ADDLW	0xff
	BANKSEL	_m1p
	MOVWF	_m1p, B
	MOVLW	0xff
	BANKSEL	(_cantidad_p + 1)
	ADDWFC	(_cantidad_p + 1), W, B
	BANKSEL	(_m1p + 1)
	MOVWF	(_m1p + 1), B
_01527_DS_:
	BANKSEL	_m2p
;	.line	74; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m2p==cantidad_p){m2p=0;}
	MOVF	_m2p, W, B
	BANKSEL	_cantidad_p
	XORWF	_cantidad_p, W, B
	BNZ	_01549_DS_
	BANKSEL	(_m2p + 1)
	MOVF	(_m2p + 1), W, B
	BANKSEL	(_cantidad_p + 1)
	XORWF	(_cantidad_p + 1), W, B
	BZ	_01550_DS_
_01549_DS_:
	BRA	_01533_DS_
_01550_DS_:
	BANKSEL	_m2p
	CLRF	_m2p, B
; removed redundant BANKSEL
	CLRF	(_m2p + 1), B
_01533_DS_:
;	.line	67; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	INFSNZ	r0x04, F
	INCF	r0x05, F
	BRA	_01532_DS_
_01534_DS_:
;	.line	76; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
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
S_drawrobot__iz	code
_iz:
;	.line	49; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	void iz(float p)
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
;	.line	53; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	CLRF	r0x04
	CLRF	r0x05
_01503_DS_:
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	BRA	_01505_DS_
	BANKSEL	(_m2p + 1)
;	.line	55; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=m2[m2p]+m1[m1p];
	MOVF	(_m2p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m2p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m2)
	ADDWF	r0x06, F
	MOVLW	HIGH(_m2)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
	BANKSEL	(_m1p + 1)
	MOVF	(_m1p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m1p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m1)
	ADDWF	r0x07, F
	MOVLW	HIGH(_m1)
	ADDWFC	r0x08, F
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	MOVFF	POSTINC0, r0x07
	MOVFF	INDF0, r0x08
	MOVF	r0x07, W
	ADDWF	r0x06, W
	MOVWF	_PORTB
	BANKSEL	(_t + 1)
;	.line	56; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Delayms(t);
	MOVF	(_t + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_t, W, B
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BANKSEL	_m1p
;	.line	57; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m1p++;
	INCFSZ	_m1p, F, B
	BRA	_21767_DS_
; removed redundant BANKSEL
	INCF	(_m1p + 1), F, B
_21767_DS_:
;	.line	58; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m2p--;
	MOVLW	0xff
	BANKSEL	_m2p
	ADDWF	_m2p, F, B
; removed redundant BANKSEL
	ADDWFC	(_m2p + 1), F, B
	BANKSEL	_m1p
;	.line	59; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m1p==cantidad_p){m1p=0;}
	MOVF	_m1p, W, B
	BANKSEL	_cantidad_p
	XORWF	_cantidad_p, W, B
	BNZ	_01520_DS_
	BANKSEL	(_m1p + 1)
	MOVF	(_m1p + 1), W, B
	BANKSEL	(_cantidad_p + 1)
	XORWF	(_cantidad_p + 1), W, B
	BZ	_01521_DS_
_01520_DS_:
	BRA	_01498_DS_
_01521_DS_:
	BANKSEL	_m1p
	CLRF	_m1p, B
; removed redundant BANKSEL
	CLRF	(_m1p + 1), B
_01498_DS_:
;	.line	60; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m2p<0){m2p=cantidad_p-1;}
	BSF	STATUS, 0
	BANKSEL	(_m2p + 1)
	BTFSS	(_m2p + 1), 7, B
	BCF	STATUS, 0
	BNC	_01504_DS_
	BANKSEL	_cantidad_p
	MOVF	_cantidad_p, W, B
	ADDLW	0xff
	BANKSEL	_m2p
	MOVWF	_m2p, B
	MOVLW	0xff
	BANKSEL	(_cantidad_p + 1)
	ADDWFC	(_cantidad_p + 1), W, B
	BANKSEL	(_m2p + 1)
	MOVWF	(_m2p + 1), B
_01504_DS_:
;	.line	53; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	INFSNZ	r0x04, F
	INCF	r0x05, F
	BRA	_01503_DS_
_01505_DS_:
;	.line	62; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
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
S_drawrobot__ad	code
_ad:
;	.line	35; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	void ad(float p)
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
;	.line	39; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	CLRF	r0x04
	CLRF	r0x05
_01490_DS_:
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	BRA	_01492_DS_
	BANKSEL	(_m2p + 1)
;	.line	41; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=m2[m2p]+m1[m1p];
	MOVF	(_m2p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m2p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m2)
	ADDWF	r0x06, F
	MOVLW	HIGH(_m2)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
	BANKSEL	(_m1p + 1)
	MOVF	(_m1p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m1p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m1)
	ADDWF	r0x07, F
	MOVLW	HIGH(_m1)
	ADDWFC	r0x08, F
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	MOVFF	POSTINC0, r0x07
	MOVFF	INDF0, r0x08
	MOVF	r0x07, W
	ADDWF	r0x06, W
	MOVWF	_PORTB
	BANKSEL	(_t + 1)
;	.line	42; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Delayms(t);
	MOVF	(_t + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_t, W, B
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
;	.line	43; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m1p--;
	MOVLW	0xff
	BANKSEL	_m1p
	ADDWF	_m1p, F, B
; removed redundant BANKSEL
	ADDWFC	(_m1p + 1), F, B
	BANKSEL	_m2p
;	.line	44; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m2p--;
	ADDWF	_m2p, F, B
; removed redundant BANKSEL
	ADDWFC	(_m2p + 1), F, B
;	.line	45; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m1p<0){m1p=cantidad_p-1;}
	BSF	STATUS, 0
	BANKSEL	(_m1p + 1)
	BTFSS	(_m1p + 1), 7, B
	BCF	STATUS, 0
	BNC	_01485_DS_
	BANKSEL	_cantidad_p
	MOVF	_cantidad_p, W, B
	ADDLW	0xff
	BANKSEL	_m1p
	MOVWF	_m1p, B
	MOVLW	0xff
	BANKSEL	(_cantidad_p + 1)
	ADDWFC	(_cantidad_p + 1), W, B
	BANKSEL	(_m1p + 1)
	MOVWF	(_m1p + 1), B
_01485_DS_:
;	.line	46; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m2p<0){m2p=cantidad_p-1;}
	BSF	STATUS, 0
	BANKSEL	(_m2p + 1)
	BTFSS	(_m2p + 1), 7, B
	BCF	STATUS, 0
	BNC	_01491_DS_
	BANKSEL	_cantidad_p
	MOVF	_cantidad_p, W, B
	ADDLW	0xff
	BANKSEL	_m2p
	MOVWF	_m2p, B
	MOVLW	0xff
	BANKSEL	(_cantidad_p + 1)
	ADDWFC	(_cantidad_p + 1), W, B
	BANKSEL	(_m2p + 1)
	MOVWF	(_m2p + 1), B
_01491_DS_:
;	.line	39; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	INFSNZ	r0x04, F
	INCF	r0x05, F
	BRA	_01490_DS_
_01492_DS_:
;	.line	48; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
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
S_drawrobot__at	code
_at:
;	.line	20; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	void at(int p)
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
;	.line	24; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	CLRF	r0x02
	CLRF	r0x03
_01458_DS_:
	MOVF	r0x03, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x01, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_01475_DS_
	MOVF	r0x00, W
	SUBWF	r0x02, W
_01475_DS_:
	BTFSC	STATUS, 0
	BRA	_01460_DS_
	BANKSEL	(_m2p + 1)
;	.line	26; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	PORTB=m2[m2p]+m1[m1p];
	MOVF	(_m2p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m2p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m2)
	ADDWF	r0x04, F
	MOVLW	HIGH(_m2)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	POSTINC0, r0x04
	MOVFF	INDF0, r0x05
	BANKSEL	(_m1p + 1)
	MOVF	(_m1p + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_m1p, W, B
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x05
	MOVFF	PRODL, r0x06
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_m1)
	ADDWF	r0x05, F
	MOVLW	HIGH(_m1)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	POSTINC0, r0x05
	MOVFF	INDF0, r0x06
	MOVF	r0x05, W
	ADDWF	r0x04, W
	MOVWF	_PORTB
	BANKSEL	(_t + 1)
;	.line	27; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	Delayms(t);
	MOVF	(_t + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_t, W, B
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
	BANKSEL	_m1p
;	.line	28; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m1p++;
	INCFSZ	_m1p, F, B
	BRA	_31768_DS_
; removed redundant BANKSEL
	INCF	(_m1p + 1), F, B
_31768_DS_:
	BANKSEL	_m2p
;	.line	29; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	m2p++;
	INCFSZ	_m2p, F, B
	BRA	_41769_DS_
; removed redundant BANKSEL
	INCF	(_m2p + 1), F, B
_41769_DS_:
	BANKSEL	_m1p
;	.line	30; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m1p==cantidad_p){m1p=0;}
	MOVF	_m1p, W, B
	BANKSEL	_cantidad_p
	XORWF	_cantidad_p, W, B
	BNZ	_01476_DS_
	BANKSEL	(_m1p + 1)
	MOVF	(_m1p + 1), W, B
	BANKSEL	(_cantidad_p + 1)
	XORWF	(_cantidad_p + 1), W, B
	BZ	_01477_DS_
_01476_DS_:
	BRA	_01453_DS_
_01477_DS_:
	BANKSEL	_m1p
	CLRF	_m1p, B
; removed redundant BANKSEL
	CLRF	(_m1p + 1), B
_01453_DS_:
	BANKSEL	_m2p
;	.line	31; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	if (m2p==cantidad_p){m2p=0;}
	MOVF	_m2p, W, B
	BANKSEL	_cantidad_p
	XORWF	_cantidad_p, W, B
	BNZ	_01478_DS_
	BANKSEL	(_m2p + 1)
	MOVF	(_m2p + 1), W, B
	BANKSEL	(_cantidad_p + 1)
	XORWF	(_cantidad_p + 1), W, B
	BZ	_01479_DS_
_01478_DS_:
	BRA	_01459_DS_
_01479_DS_:
	BANKSEL	_m2p
	CLRF	_m2p, B
; removed redundant BANKSEL
	CLRF	(_m2p + 1), B
_01459_DS_:
;	.line	24; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	for(n=0;n<p;n++){
	INFSNZ	r0x02, F
	INCF	r0x03, F
	BRA	_01458_DS_
_01460_DS_:
;	.line	33; /home/vbasel/.icaro/v4/firmware/source/drawrobot/user.c	}
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
S_drawrobot__Serial_printf	code
_Serial_printf:
;	.line	513; /home/vbasel/.icaro/v4/firmware/core/serial.c	void Serial_printf(char *fmt, ...)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	517; /home/vbasel/.icaro/v4/firmware/core/serial.c	va_start(args, fmt);
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
;	.line	518; /home/vbasel/.icaro/v4/firmware/core/serial.c	pprintf(Serial_putchar, fmt, args);
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
	MOVLW	UPPER(_Serial_putchar)
	MOVWF	POSTDEC1
	MOVLW	HIGH(_Serial_putchar)
	MOVWF	POSTDEC1
	MOVLW	LOW(_Serial_putchar)
	MOVWF	POSTDEC1
	CALL	_pprintf
	MOVLW	0x09
	ADDWF	FSR1L, F
;	.line	520; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__Serial_printNumber	code
_Serial_printNumber:
;	.line	405; /home/vbasel/.icaro/v4/firmware/core/serial.c	void Serial_printNumber(long value, u8 base)
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
;	.line	413; /home/vbasel/.icaro/v4/firmware/core/serial.c	u8 *tp = tmp;       // pointer on tmp
	MOVLW	HIGH(_Serial_printNumber_tmp_1_227)
	MOVWF	r0x06
	MOVLW	LOW(_Serial_printNumber_tmp_1_227)
	MOVWF	r0x05
	MOVLW	0x80
	MOVWF	r0x07
;	.line	416; /home/vbasel/.icaro/v4/firmware/core/serial.c	u8 *sp = string;    // pointer on string
	MOVLW	HIGH(_Serial_printNumber_string_1_227)
	MOVWF	r0x09
	MOVLW	LOW(_Serial_printNumber_string_1_227)
	MOVWF	r0x08
	MOVLW	0x80
	MOVWF	r0x0a
;	.line	418; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (value==0)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BNZ	_01386_DS_
;	.line	420; /home/vbasel/.icaro/v4/firmware/core/serial.c	Serial_putchar('0');
	MOVLW	0x30
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
;	.line	421; /home/vbasel/.icaro/v4/firmware/core/serial.c	return;
	BRA	_01401_DS_
_01386_DS_:
;	.line	424; /home/vbasel/.icaro/v4/firmware/core/serial.c	sign = ( (base == 10) && (value < 0) );
	MOVF	r0x04, W
	XORLW	0x0a
	BNZ	_01403_DS_
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	BC	_01404_DS_
_01403_DS_:
	CLRF	r0x0b
	BRA	_01405_DS_
_01404_DS_:
	MOVLW	0x01
	MOVWF	r0x0b
_01405_DS_:
	MOVFF	r0x0b, r0x0c
;	.line	426; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (sign)
	MOVF	r0x0b, W
	BZ	_01388_DS_
;	.line	427; /home/vbasel/.icaro/v4/firmware/core/serial.c	v = -value;
	COMF	r0x03, W
	MOVWF	r0x0f
	COMF	r0x02, W
	MOVWF	r0x0e
	COMF	r0x01, W
	MOVWF	r0x0d
	COMF	r0x00, W
	MOVWF	r0x0b
	INCF	r0x0b, F
	BNZ	_01436_DS_
	INCF	r0x0d, F
	BNZ	_01436_DS_
	INFSNZ	r0x0e, F
	INCF	r0x0f, F
_01436_DS_:
	BRA	_01393_DS_
_01388_DS_:
;	.line	429; /home/vbasel/.icaro/v4/firmware/core/serial.c	v = (unsigned long)value;
	MOVF	r0x00, W
	MOVWF	r0x0b
	MOVF	r0x01, W
	MOVWF	r0x0d
	MOVF	r0x02, W
	MOVWF	r0x0e
	MOVF	r0x03, W
	MOVWF	r0x0f
_01393_DS_:
;	.line	432; /home/vbasel/.icaro/v4/firmware/core/serial.c	while (v)
	MOVF	r0x0b, W
	IORWF	r0x0d, W
	IORWF	r0x0e, W
	IORWF	r0x0f, W
	BTFSC	STATUS, 2
	BRA	_01395_DS_
;	.line	434; /home/vbasel/.icaro/v4/firmware/core/serial.c	i = v % base;
	MOVFF	r0x04, r0x00
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	__modulong
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	435; /home/vbasel/.icaro/v4/firmware/core/serial.c	v = v / base;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	437; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (i < 10)
	MOVF	r0x13, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01437_DS_
	MOVLW	0x00
	SUBWF	r0x12, W
	BNZ	_01437_DS_
	MOVLW	0x00
	SUBWF	r0x11, W
	BNZ	_01437_DS_
	MOVLW	0x0a
	SUBWF	r0x10, W
_01437_DS_:
	BC	_01391_DS_
;	.line	438; /home/vbasel/.icaro/v4/firmware/core/serial.c	*tp++ = i + '0';
	MOVF	r0x10, W
	MOVWF	r0x00
	MOVLW	0x30
	ADDWF	r0x00, F
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
	INCF	r0x05, F
	BNC	_01438_DS_
	INFSNZ	r0x06, F
	INCF	r0x07, F
_01438_DS_:
	BRA	_01393_DS_
_01391_DS_:
;	.line	440; /home/vbasel/.icaro/v4/firmware/core/serial.c	*tp++ = i + 'A' - 10;
	MOVLW	0x37
	ADDWF	r0x10, F
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
	INCF	r0x05, F
	BNC	_01439_DS_
	INFSNZ	r0x06, F
	INCF	r0x07, F
_01439_DS_:
	BRA	_01393_DS_
_01395_DS_:
;	.line	444; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (sign)
	MOVF	r0x0c, W
	BZ	_01414_DS_
;	.line	445; /home/vbasel/.icaro/v4/firmware/core/serial.c	*sp++ = '-';
	MOVLW	0x2d
	MOVWF	POSTDEC1
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrput1
	INCF	r0x08, F
	BNC	_01414_DS_
	INFSNZ	r0x09, F
	INCF	r0x0a, F
_01440_DS_:
_01414_DS_:
;	.line	448; /home/vbasel/.icaro/v4/firmware/core/serial.c	while (tp > tmp)
	MOVFF	r0x05, r0x00
	MOVFF	r0x06, r0x01
	MOVFF	r0x07, r0x02
	MOVFF	r0x08, r0x03
	MOVFF	r0x09, r0x04
	MOVFF	r0x0a, r0x05
_01398_DS_:
	MOVLW	HIGH(_Serial_printNumber_tmp_1_227)
	MOVWF	r0x07
	MOVLW	LOW(_Serial_printNumber_tmp_1_227)
	MOVWF	r0x06
	MOVLW	0x80
	MOVWF	r0x08
	MOVF	r0x02, W
	SUBWF	r0x08, W
	BNZ	_01441_DS_
	MOVF	r0x01, W
	SUBWF	r0x07, W
	BNZ	_01441_DS_
	MOVF	r0x00, W
	SUBWF	r0x06, W
_01441_DS_:
	BC	_01400_DS_
;	.line	449; /home/vbasel/.icaro/v4/firmware/core/serial.c	*sp++ = *--tp;
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
	INCF	r0x03, F
	BNC	_01442_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01442_DS_:
	BRA	_01398_DS_
_01400_DS_:
;	.line	452; /home/vbasel/.icaro/v4/firmware/core/serial.c	*sp = 0;
	CLRF	POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
;	.line	454; /home/vbasel/.icaro/v4/firmware/core/serial.c	Serial_print(string);
	MOVLW	0x80
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_Serial_printNumber_string_1_227)
	MOVWF	POSTDEC1
	MOVLW	LOW(_Serial_printNumber_string_1_227)
	MOVWF	POSTDEC1
	CALL	_Serial_print
	MOVLW	0x03
	ADDWF	FSR1L, F
_01401_DS_:
;	.line	455; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
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
S_drawrobot__Serial_println	code
_Serial_println:
;	.line	390; /home/vbasel/.icaro/v4/firmware/core/serial.c	void Serial_println(char *string)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	392; /home/vbasel/.icaro/v4/firmware/core/serial.c	Serial_print(string);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_Serial_print
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	393; /home/vbasel/.icaro/v4/firmware/core/serial.c	Serial_print("\n\r");
	MOVLW	UPPER(___str_1)
	MOVWF	POSTDEC1
	MOVLW	HIGH(___str_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(___str_1)
	MOVWF	POSTDEC1
	CALL	_Serial_print
	MOVLW	0x03
	ADDWF	FSR1L, F
;	.line	394; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__Serial_print	code
_Serial_print:
;	.line	310; /home/vbasel/.icaro/v4/firmware/core/serial.c	void Serial_print(char *s)
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
_01363_DS_:
;	.line	317; /home/vbasel/.icaro/v4/firmware/core/serial.c	while (*s++)
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
	INCF	r0x00, F
	BNC	_01375_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_01375_DS_:
	MOVF	r0x03, W
	BZ	_01366_DS_
;	.line	318; /home/vbasel/.icaro/v4/firmware/core/serial.c	Serial_putchar(*s);
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_Serial_putchar
	MOVF	POSTINC1, F
	BRA	_01363_DS_
_01366_DS_:
;	.line	319; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__Serial_read	code
_Serial_read:
;	.line	283; /home/vbasel/.icaro/v4/firmware/core/serial.c	u8 Serial_read()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	285; /home/vbasel/.icaro/v4/firmware/core/serial.c	u8 caractere=0;
	CLRF	r0x00
	BANKSEL	_wpointer
;	.line	287; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (Serial_available())
	MOVF	_wpointer, W, B
	BANKSEL	_rpointer
	XORWF	_rpointer, W, B
	BZ	_01346_DS_
;	.line	289; /home/vbasel/.icaro/v4/firmware/core/serial.c	PIE1bits.RCIE = 0;             // Atomic operation start
	BCF	_PIE1bits, 5
;	.line	290; /home/vbasel/.icaro/v4/firmware/core/serial.c	caractere = rx[rpointer++];
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
;	.line	291; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (rpointer == RXBUFFERLENGTH)
	MOVF	_rpointer, W, B
	XORLW	0x80
	BNZ	_01344_DS_
;	.line	292; /home/vbasel/.icaro/v4/firmware/core/serial.c	rpointer = 1;
	MOVLW	0x01
	BANKSEL	_rpointer
	MOVWF	_rpointer, B
_01344_DS_:
;	.line	293; /home/vbasel/.icaro/v4/firmware/core/serial.c	PIE1bits.RCIE = 1;             // Atomic operation end
	BSF	_PIE1bits, 5
_01346_DS_:
;	.line	295; /home/vbasel/.icaro/v4/firmware/core/serial.c	return(caractere);
	MOVF	r0x00, W
;	.line	296; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_drawrobot__Serial_putchar	code
_Serial_putchar:
;	.line	251; /home/vbasel/.icaro/v4/firmware/core/serial.c	void Serial_putchar(u8 caractere)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
_01335_DS_:
;	.line	261; /home/vbasel/.icaro/v4/firmware/core/serial.c	while (!TXSTAbits.TRMT);
	BTFSS	_TXSTAbits, 1
	BRA	_01335_DS_
;	.line	262; /home/vbasel/.icaro/v4/firmware/core/serial.c	TXREG=caractere;            // yes, send char
	MOVFF	r0x00, _TXREG
;	.line	275; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__serial_interrupt	code
_serial_interrupt:
;	.line	200; /home/vbasel/.icaro/v4/firmware/core/serial.c	void serial_interrupt(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	212; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (PIR1bits.RCIF)
	BTFSS	_PIR1bits, 5
	BRA	_01311_DS_
;	.line	214; /home/vbasel/.icaro/v4/firmware/core/serial.c	PIR1bits.RCIF=0;            // clear RX interrupt flag
	BCF	_PIR1bits, 5
;	.line	215; /home/vbasel/.icaro/v4/firmware/core/serial.c	caractere=RCREG;            // take received char
	MOVFF	_RCREG, r0x00
	BANKSEL	_wpointer
;	.line	232; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (wpointer!=RXBUFFERLENGTH-1)  // if not last place in buffer
	MOVF	_wpointer, W, B
	XORLW	0x7f
	BZ	_01303_DS_
_01326_DS_:
	BANKSEL	_wpointer
;	.line	233; /home/vbasel/.icaro/v4/firmware/core/serial.c	newwp=wpointer+1;       // place=place+1
	MOVF	_wpointer, W, B
	MOVWF	r0x01
	INCF	r0x01, F
	BRA	_01304_DS_
_01303_DS_:
;	.line	236; /home/vbasel/.icaro/v4/firmware/core/serial.c	newwp=1;                // else place=1
	MOVLW	0x01
	MOVWF	r0x01
_01304_DS_:
	BANKSEL	_rpointer
;	.line	238; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (rpointer!=newwp)        // if read pointer!=write pointer
	MOVF	_rpointer, W, B
	XORWF	r0x01, W
	BZ	_01306_DS_
;	.line	239; /home/vbasel/.icaro/v4/firmware/core/serial.c	rx[wpointer++]=caractere;// store received char
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
_01306_DS_:
	BANKSEL	_wpointer
;	.line	241; /home/vbasel/.icaro/v4/firmware/core/serial.c	if (wpointer==RXBUFFERLENGTH)// if write pointer=length buffer
	MOVF	_wpointer, W, B
	XORLW	0x80
	BNZ	_01311_DS_
;	.line	242; /home/vbasel/.icaro/v4/firmware/core/serial.c	wpointer=1;             // write pointer = 1
	MOVLW	0x01
	BANKSEL	_wpointer
	MOVWF	_wpointer, B
_01311_DS_:
;	.line	244; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_drawrobot__Serial_begin	code
_Serial_begin:
;	.line	70; /home/vbasel/.icaro/v4/firmware/core/serial.c	void Serial_begin(u32 baudrate)
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
;	.line	76; /home/vbasel/.icaro/v4/firmware/core/serial.c	u16 spbrg = (u16)BaudRateDivisor(System_getCpuFrequency(), baudrate);
	CALL	_System_getCpuFrequency
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
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
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
;	.line	125; /home/vbasel/.icaro/v4/firmware/core/serial.c	TRISCbits.TRISC7= 1;        // Rx1    set input
	BSF	_TRISCbits, 7
;	.line	126; /home/vbasel/.icaro/v4/firmware/core/serial.c	TXSTAbits.BRGH=1;           // set BRGH bit
	BSF	_TXSTAbits, 2
;	.line	127; /home/vbasel/.icaro/v4/firmware/core/serial.c	BAUDCONbits.BRG16=1;        // set 16 bits SPBRG
	BSF	_BAUDCONbits, 3
;	.line	128; /home/vbasel/.icaro/v4/firmware/core/serial.c	SPBRGH=high8(spbrg);        // set UART speed SPBRGH
	MOVF	r0x01, W
	MOVWF	_SPBRGH
;	.line	129; /home/vbasel/.icaro/v4/firmware/core/serial.c	SPBRG=low8(spbrg);          // set UART speed SPBRGL
	MOVF	r0x00, W
	MOVWF	_SPBRG
;	.line	130; /home/vbasel/.icaro/v4/firmware/core/serial.c	RCSTA=0x90;                 // set RCEN and SPEN
	MOVLW	0x90
	MOVWF	_RCSTA
;	.line	131; /home/vbasel/.icaro/v4/firmware/core/serial.c	BAUDCONbits.RCIDL=1;        // set receive active
	BSF	_BAUDCONbits, 6
;	.line	132; /home/vbasel/.icaro/v4/firmware/core/serial.c	TXSTAbits.TXEN=1;           // enable TX
	BSF	_TXSTAbits, 5
;	.line	135; /home/vbasel/.icaro/v4/firmware/core/serial.c	PIR1bits.RCIF = 0;         // Clear RX interrupt flag
	BCF	_PIR1bits, 5
;	.line	136; /home/vbasel/.icaro/v4/firmware/core/serial.c	IPR1bits.RCIP = 1;         // Define high priority for RX interrupt
	BSF	_IPR1bits, 5
;	.line	137; /home/vbasel/.icaro/v4/firmware/core/serial.c	PIE1bits.RCIE = 1;         // Enable interrupt on RX
	BSF	_PIE1bits, 5
;	.line	168; /home/vbasel/.icaro/v4/firmware/core/serial.c	INTCONbits.PEIE = 1;            // Enable peripheral interrupts
	BSF	_INTCONbits, 6
;	.line	175; /home/vbasel/.icaro/v4/firmware/core/serial.c	INTCONbits.GIEH = 1;            // Enable global HP interrupts
	BSF	_INTCONbits, 7
;	.line	176; /home/vbasel/.icaro/v4/firmware/core/serial.c	INTCONbits.GIEL = 1;            // Enable global LP interrupts
	BSF	_INTCONbits, 6
;	.line	180; /home/vbasel/.icaro/v4/firmware/core/serial.c	}
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
S_drawrobot__psprintf	code
_psprintf:
;	.line	506; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 psprintf(u8 *out, const u8 *format, ...)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
;	.line	510; /home/vbasel/.icaro/v4/firmware/core/stdio.c	va_start(args, format);
	MOVLW	0x05
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
;	.line	511; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pprint(&out, format, args);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x03
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
; #	MOVWF	r0x04
; #	MOVWF	r0x04
	MOVWF	r0x04
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x07
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x06
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x05
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_pprint
	MOVWF	r0x00
	MOVLW	0x09
	ADDWF	FSR1L, F
	MOVF	r0x00, W
;	.line	512; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__psprintf2	code
_psprintf2:
;	.line	500; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 psprintf2(u8 *out, const u8 *format, va_list args)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, _psprintf2_out_1_209
	MOVLW	0x03
	MOVFF	PLUSW2, (_psprintf2_out_1_209 + 1)
	MOVLW	0x04
	MOVFF	PLUSW2, (_psprintf2_out_1_209 + 2)
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
;	.line	502; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pprint(&out, format, args);
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
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_psprintf2_out_1_209)
	MOVWF	POSTDEC1
	MOVLW	LOW(_psprintf2_out_1_209)
	MOVWF	POSTDEC1
	CALL	_pprint
	MOVWF	r0x00
	MOVLW	0x09
	ADDWF	FSR1L, F
	MOVF	r0x00, W
;	.line	503; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__pprintf	code
_pprintf:
;	.line	486; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 pprintf(funcout func, const u8 *format, va_list args)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, _pputchar
	MOVLW	0x03
	MOVFF	PLUSW2, (_pputchar + 1)
	MOVLW	0x04
	MOVFF	PLUSW2, (_pputchar + 2)
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
;	.line	492; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pprint(0, format, args);
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
	CALL	_pprint
	MOVWF	r0x00
	MOVLW	0x09
	ADDWF	FSR1L, F
	MOVF	r0x00, W
;	.line	493; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_drawrobot__pprint	code
_pprint:
;	.line	338; /home/vbasel/.icaro/v4/firmware/core/stdio.c	static u8 pprint(u8 **out, const u8 *format, va_list args)
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
;	.line	342; /home/vbasel/.icaro/v4/firmware/core/stdio.c	register u8 pc = 0;
	CLRF	r0x09
;	.line	343; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 precision = 2; // default value is 2 digits fractional part
	MOVLW	0x02
	MOVWF	r0x0a
_01111_DS_:
;	.line	347; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for (; *format != 0; ++format)
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
	MOVF	r0x0b, W
	BTFSC	STATUS, 2
	GOTO	_01099_DS_
;	.line	350; /home/vbasel/.icaro/v4/firmware/core/stdio.c	islong = 0;                 // default is 16-bit
	CLRF	r0x0c
;	.line	352; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == '%')
	MOVF	r0x0b, W
	XORLW	0x25
	BZ	_01231_DS_
	GOTO	_01094_DS_
_01231_DS_:
;	.line	354; /home/vbasel/.icaro/v4/firmware/core/stdio.c	width = pad = 0;		// default is left justify, no zero padded
	CLRF	r0x0b
	CLRF	r0x0d
;	.line	355; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++format;				// get the next format identifier
	INCF	r0x03, F
	BNC	_01232_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01232_DS_:
;	.line	357; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == '\0')	// end of line
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0e
	MOVF	r0x0e, W
	BTFSC	STATUS, 2
	GOTO	_01099_DS_
;	.line	360; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == '%')		// error
	MOVF	r0x0e, W
	XORLW	0x25
	BNZ	_01234_DS_
	GOTO	_01094_DS_
_01234_DS_:
;	.line	363; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == '-')		// right justify
	MOVF	r0x0e, W
	XORLW	0x2d
	BNZ	_01134_DS_
;	.line	365; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++format;
	INCF	r0x03, F
	BNC	_01237_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01237_DS_:
;	.line	366; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pad = PAD_RIGHT;
	MOVLW	0x01
	MOVWF	r0x0b
_01134_DS_:
;	.line	369; /home/vbasel/.icaro/v4/firmware/core/stdio.c	while (*format == '0')	// field is padded with 0's instead of blanks
	MOVFF	r0x03, r0x0e
	MOVFF	r0x04, r0x0f
	MOVFF	r0x05, r0x10
_01064_DS_:
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget1
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
	XORLW	0x30
	BNZ	_01104_DS_
;	.line	371; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++format;
	INCF	r0x0e, F
	BNC	_01240_DS_
	INFSNZ	r0x0f, F
	INCF	r0x10, F
_01240_DS_:
;	.line	372; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pad |= PAD_ZERO;
	MOVFF	r0x0b, r0x11
	BSF	r0x11, 1
	MOVF	r0x11, W
	MOVWF	r0x0b
	BRA	_01064_DS_
_01104_DS_:
;	.line	375; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; *format >= '0' && *format <= '9'; ++format)
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget1
	MOVWF	r0x11
	MOVLW	0x30
	SUBWF	r0x11, W
	BNC	_01162_DS_
	MOVLW	0x3a
	SUBWF	r0x11, W
	BC	_01162_DS_
; ;multiply lit val:0x0a by variable r0x0d and store in r0x0d
;	.line	377; /home/vbasel/.icaro/v4/firmware/core/stdio.c	width *= 10;
	MOVF	r0x0d, W
	MULLW	0x0a
	MOVFF	PRODL, r0x0d
;	.line	378; /home/vbasel/.icaro/v4/firmware/core/stdio.c	width += *format - '0';
	MOVLW	0xd0
	ADDWF	r0x11, F
	MOVF	r0x0d, W
	MOVWF	r0x12
	MOVF	r0x11, W
	ADDWF	r0x12, W
	MOVWF	r0x0d
;	.line	375; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; *format >= '0' && *format <= '9'; ++format)
	INCF	r0x0e, F
	BNC	_01244_DS_
	INFSNZ	r0x0f, F
	INCF	r0x10, F
_01244_DS_:
	BRA	_01104_DS_
_01162_DS_:
	MOVFF	r0x0e, r0x03
	MOVFF	r0x0f, r0x04
	MOVFF	r0x10, r0x05
;	.line	388; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == '.')		// float precision
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget1
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
	XORLW	0x2e
	BNZ	_01070_DS_
;	.line	390; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++format;
	MOVF	r0x0e, W
	ADDLW	0x01
	MOVWF	r0x03
	MOVLW	0x00
	ADDWFC	r0x0f, W
	MOVWF	r0x04
	MOVLW	0x00
	ADDWFC	r0x10, W
	MOVWF	r0x05
;	.line	391; /home/vbasel/.icaro/v4/firmware/core/stdio.c	precision = 0;
	CLRF	r0x0a
	MOVFF	r0x03, r0x0e
	MOVFF	r0x04, r0x0f
	MOVFF	r0x05, r0x10
_01108_DS_:
;	.line	393; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; *format >= '0' && *format <= '9'; ++format)
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget1
	MOVWF	r0x11
	MOVLW	0x30
	SUBWF	r0x11, W
	BNC	_01163_DS_
	MOVLW	0x3a
	SUBWF	r0x11, W
	BC	_01163_DS_
; ;multiply lit val:0x0a by variable r0x0a and store in r0x0a
;	.line	395; /home/vbasel/.icaro/v4/firmware/core/stdio.c	precision *= 10;
	MOVF	r0x0a, W
	MULLW	0x0a
	MOVFF	PRODL, r0x0a
;	.line	396; /home/vbasel/.icaro/v4/firmware/core/stdio.c	precision += *format - '0';
	MOVLW	0xd0
	ADDWF	r0x11, F
	MOVF	r0x0a, W
	MOVWF	r0x12
	MOVF	r0x11, W
	ADDWF	r0x12, W
	MOVWF	r0x0a
;	.line	393; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; *format >= '0' && *format <= '9'; ++format)
	INCF	r0x0e, F
	BNC	_01249_DS_
	INFSNZ	r0x0f, F
	INCF	r0x10, F
_01249_DS_:
	BRA	_01108_DS_
_01163_DS_:
	MOVFF	r0x0e, r0x03
	MOVFF	r0x0f, r0x04
	MOVFF	r0x10, r0x05
_01070_DS_:
;	.line	400; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'f') 	// float
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0e
; #	MOVF	r0x0e, W
	MOVWF	r0x0e
	XORLW	0x66
	BZ	_01251_DS_
	BRA	_01072_DS_
_01251_DS_:
;	.line	402; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprintfl(out, va_arg(args, float), width, pad, separator, precision);
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x11
	MOVFF	r0x0f, r0x06
	MOVFF	r0x10, r0x07
	MOVFF	r0x11, r0x08
	MOVLW	0xfc
	ADDWF	r0x0f, F
	MOVLW	0xff
	ADDWFC	r0x10, F
	ADDWFC	r0x11, F
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
; #	MOVF	r0x10, W
; #	MOVF	r0x0f, W
; #	MOVF	r0x0f, W
; #	MOVWF	r0x0f
	MOVFF	r0x0f, FSR0L
	MOVFF	r0x10, PRODL
	MOVF	r0x11, W
	CALL	__gptrget4
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprintfl
	MOVWF	r0x0f
	MOVLW	0x0b
	ADDWF	FSR1L, F
	MOVF	r0x0f, W
	ADDWF	r0x09, F
;	.line	403; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	GOTO	_01098_DS_
_01072_DS_:
;	.line	406; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 's')		// string
	MOVF	r0x0e, W
	XORLW	0x73
	BZ	_01253_DS_
	BRA	_01074_DS_
_01253_DS_:
;	.line	408; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 *s = va_arg(args, u8*);
	MOVF	r0x06, W
	ADDLW	0x03
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x11
	MOVFF	r0x0f, r0x06
	MOVFF	r0x10, r0x07
	MOVFF	r0x11, r0x08
	MOVLW	0xfd
	ADDWF	r0x0f, F
	MOVLW	0xff
	ADDWFC	r0x10, F
	ADDWFC	r0x11, F
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
; #	MOVF	r0x10, W
; #	MOVF	r0x0f, W
; #	MOVF	r0x0f, W
; #	MOVWF	r0x0f
	MOVFF	r0x0f, FSR0L
	MOVFF	r0x10, PRODL
	MOVF	r0x11, W
	CALL	__gptrget3
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	r0x0f, r0x12
	MOVFF	r0x10, r0x13
	MOVFF	r0x11, r0x14
;	.line	409; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprints(out, s?s:"(null)", width, pad);
	IORWF	r0x10, W
	IORWF	r0x11, W
	BZ	_01114_DS_
	MOVFF	r0x12, r0x0f
	MOVFF	r0x13, r0x10
	MOVFF	r0x14, r0x11
	BRA	_01115_DS_
_01114_DS_:
	MOVLW	UPPER(___str_0)
	MOVWF	r0x11
	MOVLW	HIGH(___str_0)
	MOVWF	r0x10
	MOVLW	LOW(___str_0)
	MOVWF	r0x0f
_01115_DS_:
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprints
	MOVWF	r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x09, W
	MOVWF	r0x10
	MOVF	r0x0f, W
	ADDWF	r0x10, W
	MOVWF	r0x09
;	.line	410; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	GOTO	_01098_DS_
_01074_DS_:
;	.line	413; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'l')		// long support
	MOVF	r0x0e, W
	XORLW	0x6c
	BNZ	_01076_DS_
;	.line	415; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++format;
	INCF	r0x03, F
	BNC	_01256_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01256_DS_:
;	.line	416; /home/vbasel/.icaro/v4/firmware/core/stdio.c	islong = 1;
	MOVLW	0x01
	MOVWF	r0x0c
_01076_DS_:
;	.line	419; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'u')		// decimal (10) unsigned (0) integer
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0e
; #	MOVF	r0x0e, W
	MOVWF	r0x0e
	XORLW	0x75
	BZ	_01258_DS_
	BRA	_01078_DS_
_01258_DS_:
;	.line	421; /home/vbasel/.icaro/v4/firmware/core/stdio.c	val = (islong) ? va_arg(args, u32) : va_arg(args, u16);
	MOVF	r0x0c, W
	BZ	_01116_DS_
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x10
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x11
	MOVFF	r0x0f, r0x06
	MOVFF	r0x10, r0x07
	MOVFF	r0x11, r0x08
	MOVLW	0xfc
	ADDWF	r0x0f, F
	MOVLW	0xff
	ADDWFC	r0x10, F
	ADDWFC	r0x11, F
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x10, W
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
; #	MOVF	r0x10, W
; #	MOVF	r0x0f, W
; #	MOVF	r0x0f, W
; #	MOVWF	r0x0f
	MOVFF	r0x0f, FSR0L
	MOVFF	r0x10, PRODL
	MOVF	r0x11, W
	CALL	__gptrget4
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	BRA	_01117_DS_
_01116_DS_:
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x13
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x14
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x15
	MOVFF	r0x13, r0x06
	MOVFF	r0x14, r0x07
	MOVFF	r0x15, r0x08
	MOVLW	0xfe
	ADDWF	r0x13, F
	MOVLW	0xff
	ADDWFC	r0x14, F
	ADDWFC	r0x15, F
; #	MOVF	r0x15, W
; #	MOVWF	r0x15
; #	MOVF	r0x15, W
; #	MOVF	r0x14, W
; #	MOVF	r0x14, W
; #	MOVWF	r0x14
; #	MOVF	r0x14, W
; #	MOVF	r0x13, W
; #	MOVF	r0x13, W
; #	MOVWF	r0x13
	MOVFF	r0x13, FSR0L
	MOVFF	r0x14, PRODL
	MOVF	r0x15, W
	CALL	__gptrget2
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVFF	r0x13, r0x0f
	MOVFF	r0x14, r0x10
	CLRF	r0x11
	CLRF	r0x12
_01117_DS_:
;	.line	422; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprinti(out, val, islong, 10, 0, width, pad, separator, 'a');
	MOVLW	0x61
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprinti
	MOVWF	r0x13
	MOVLW	0x0e
	ADDWF	FSR1L, F
	MOVF	r0x13, W
	ADDWF	r0x09, F
;	.line	423; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	GOTO	_01098_DS_
_01078_DS_:
;	.line	426; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'd' || *format == 'i') // decimal (10) signed (1) integer
	MOVF	r0x0e, W
	XORLW	0x64
	BZ	_01079_DS_
	MOVF	r0x0e, W
	XORLW	0x69
	BZ	_01079_DS_
	BRA	_01080_DS_
_01079_DS_:
;	.line	428; /home/vbasel/.icaro/v4/firmware/core/stdio.c	val = (islong) ? va_arg(args, u32) : va_arg(args, u16);
	MOVF	r0x0c, W
	BZ	_01118_DS_
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x13
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x14
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x15
	MOVFF	r0x13, r0x06
	MOVFF	r0x14, r0x07
	MOVFF	r0x15, r0x08
	MOVLW	0xfc
	ADDWF	r0x13, F
	MOVLW	0xff
	ADDWFC	r0x14, F
	ADDWFC	r0x15, F
; #	MOVF	r0x15, W
; #	MOVWF	r0x15
; #	MOVF	r0x15, W
; #	MOVF	r0x14, W
; #	MOVF	r0x14, W
; #	MOVWF	r0x14
; #	MOVF	r0x14, W
; #	MOVF	r0x13, W
; #	MOVF	r0x13, W
; #	MOVWF	r0x13
	MOVFF	r0x13, FSR0L
	MOVFF	r0x14, PRODL
	MOVF	r0x15, W
	CALL	__gptrget4
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVFF	PRODH, r0x15
	MOVFF	FSR0L, r0x16
	BRA	_01119_DS_
_01118_DS_:
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x17
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x18
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x19
	MOVFF	r0x17, r0x06
	MOVFF	r0x18, r0x07
	MOVFF	r0x19, r0x08
	MOVLW	0xfe
	ADDWF	r0x17, F
	MOVLW	0xff
	ADDWFC	r0x18, F
	ADDWFC	r0x19, F
; #	MOVF	r0x19, W
; #	MOVWF	r0x19
; #	MOVF	r0x19, W
; #	MOVF	r0x18, W
; #	MOVF	r0x18, W
; #	MOVWF	r0x18
; #	MOVF	r0x18, W
; #	MOVF	r0x17, W
; #	MOVF	r0x17, W
; #	MOVWF	r0x17
	MOVFF	r0x17, FSR0L
	MOVFF	r0x18, PRODL
	MOVF	r0x19, W
	CALL	__gptrget2
	MOVWF	r0x17
	MOVFF	PRODL, r0x18
	MOVFF	r0x17, r0x13
	MOVFF	r0x18, r0x14
	CLRF	r0x15
	CLRF	r0x16
_01119_DS_:
	MOVFF	r0x13, r0x0f
	MOVFF	r0x14, r0x10
	MOVFF	r0x15, r0x11
	MOVFF	r0x16, r0x12
;	.line	429; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprinti(out, val, islong, 10, 1, width, pad, separator, 'a');
	MOVLW	0x61
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprinti
	MOVWF	r0x13
	MOVLW	0x0e
	ADDWF	FSR1L, F
	MOVF	r0x13, W
	ADDWF	r0x09, F
;	.line	430; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	GOTO	_01098_DS_
_01080_DS_:
;	.line	433; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'x' || *format == 'p')	// unsigned (0) lower ('a') hexa (16) or pointer
	MOVF	r0x0e, W
	XORLW	0x78
	BZ	_01082_DS_
	MOVF	r0x0e, W
	XORLW	0x70
	BZ	_01082_DS_
	BRA	_01083_DS_
_01082_DS_:
;	.line	435; /home/vbasel/.icaro/v4/firmware/core/stdio.c	val = (islong) ? va_arg(args, u32) : va_arg(args, u16);
	MOVF	r0x0c, W
	BZ	_01120_DS_
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x13
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x14
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x15
	MOVFF	r0x13, r0x06
	MOVFF	r0x14, r0x07
	MOVFF	r0x15, r0x08
	MOVLW	0xfc
	ADDWF	r0x13, F
	MOVLW	0xff
	ADDWFC	r0x14, F
	ADDWFC	r0x15, F
; #	MOVF	r0x15, W
; #	MOVWF	r0x15
; #	MOVF	r0x15, W
; #	MOVF	r0x14, W
; #	MOVF	r0x14, W
; #	MOVWF	r0x14
; #	MOVF	r0x14, W
; #	MOVF	r0x13, W
; #	MOVF	r0x13, W
; #	MOVWF	r0x13
	MOVFF	r0x13, FSR0L
	MOVFF	r0x14, PRODL
	MOVF	r0x15, W
	CALL	__gptrget4
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVFF	PRODH, r0x15
	MOVFF	FSR0L, r0x16
	BRA	_01121_DS_
_01120_DS_:
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x17
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x18
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x19
	MOVFF	r0x17, r0x06
	MOVFF	r0x18, r0x07
	MOVFF	r0x19, r0x08
	MOVLW	0xfe
	ADDWF	r0x17, F
	MOVLW	0xff
	ADDWFC	r0x18, F
	ADDWFC	r0x19, F
; #	MOVF	r0x19, W
; #	MOVWF	r0x19
; #	MOVF	r0x19, W
; #	MOVF	r0x18, W
; #	MOVF	r0x18, W
; #	MOVWF	r0x18
; #	MOVF	r0x18, W
; #	MOVF	r0x17, W
; #	MOVF	r0x17, W
; #	MOVWF	r0x17
	MOVFF	r0x17, FSR0L
	MOVFF	r0x18, PRODL
	MOVF	r0x19, W
	CALL	__gptrget2
	MOVWF	r0x17
	MOVFF	PRODL, r0x18
	MOVFF	r0x17, r0x13
	MOVFF	r0x18, r0x14
	CLRF	r0x15
	CLRF	r0x16
_01121_DS_:
	MOVFF	r0x13, r0x0f
	MOVFF	r0x14, r0x10
	MOVFF	r0x15, r0x11
	MOVFF	r0x16, r0x12
;	.line	436; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprinti(out, val, islong, 16, 0, width, pad, separator, 'a');
	MOVLW	0x61
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprinti
	MOVWF	r0x13
	MOVLW	0x0e
	ADDWF	FSR1L, F
	MOVF	r0x13, W
	ADDWF	r0x09, F
;	.line	437; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	BRA	_01098_DS_
_01083_DS_:
;	.line	440; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'X' || *format == 'P')	// unsigned (0) upper ('A') hexa (16) or pointer
	MOVF	r0x0e, W
	XORLW	0x58
	BZ	_01085_DS_
	MOVF	r0x0e, W
	XORLW	0x50
	BZ	_01085_DS_
	BRA	_01086_DS_
_01085_DS_:
;	.line	442; /home/vbasel/.icaro/v4/firmware/core/stdio.c	val = (islong) ? va_arg(args, u32) : va_arg(args, u16);
	MOVF	r0x0c, W
	BZ	_01122_DS_
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x13
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x14
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x15
	MOVFF	r0x13, r0x06
	MOVFF	r0x14, r0x07
	MOVFF	r0x15, r0x08
	MOVLW	0xfc
	ADDWF	r0x13, F
	MOVLW	0xff
	ADDWFC	r0x14, F
	ADDWFC	r0x15, F
; #	MOVF	r0x15, W
; #	MOVWF	r0x15
; #	MOVF	r0x15, W
; #	MOVF	r0x14, W
; #	MOVF	r0x14, W
; #	MOVWF	r0x14
; #	MOVF	r0x14, W
; #	MOVF	r0x13, W
; #	MOVF	r0x13, W
; #	MOVWF	r0x13
	MOVFF	r0x13, FSR0L
	MOVFF	r0x14, PRODL
	MOVF	r0x15, W
	CALL	__gptrget4
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVFF	PRODH, r0x15
	MOVFF	FSR0L, r0x16
	BRA	_01123_DS_
_01122_DS_:
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x17
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x18
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x19
	MOVFF	r0x17, r0x06
	MOVFF	r0x18, r0x07
	MOVFF	r0x19, r0x08
	MOVLW	0xfe
	ADDWF	r0x17, F
	MOVLW	0xff
	ADDWFC	r0x18, F
	ADDWFC	r0x19, F
; #	MOVF	r0x19, W
; #	MOVWF	r0x19
; #	MOVF	r0x19, W
; #	MOVF	r0x18, W
; #	MOVF	r0x18, W
; #	MOVWF	r0x18
; #	MOVF	r0x18, W
; #	MOVF	r0x17, W
; #	MOVF	r0x17, W
; #	MOVWF	r0x17
	MOVFF	r0x17, FSR0L
	MOVFF	r0x18, PRODL
	MOVF	r0x19, W
	CALL	__gptrget2
	MOVWF	r0x17
	MOVFF	PRODL, r0x18
	MOVFF	r0x17, r0x13
	MOVFF	r0x18, r0x14
	CLRF	r0x15
	CLRF	r0x16
_01123_DS_:
	MOVFF	r0x13, r0x0f
	MOVFF	r0x14, r0x10
	MOVFF	r0x15, r0x11
	MOVFF	r0x16, r0x12
;	.line	443; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprinti(out, val, islong, 16, 0, width, pad, separator, 'A');
	MOVLW	0x41
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprinti
	MOVWF	r0x13
	MOVLW	0x0e
	ADDWF	FSR1L, F
	MOVF	r0x13, W
	ADDWF	r0x09, F
;	.line	444; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	BRA	_01098_DS_
_01086_DS_:
;	.line	447; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'b')		// binary
	MOVF	r0x0e, W
	XORLW	0x62
	BZ	_01272_DS_
	BRA	_01089_DS_
_01272_DS_:
;	.line	449; /home/vbasel/.icaro/v4/firmware/core/stdio.c	val = (islong) ? va_arg(args, u32) : va_arg(args, u16);
	MOVF	r0x0c, W
	BZ	_01124_DS_
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x13
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x14
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x15
	MOVFF	r0x13, r0x06
	MOVFF	r0x14, r0x07
	MOVFF	r0x15, r0x08
	MOVLW	0xfc
	ADDWF	r0x13, F
	MOVLW	0xff
	ADDWFC	r0x14, F
	ADDWFC	r0x15, F
; #	MOVF	r0x15, W
; #	MOVWF	r0x15
; #	MOVF	r0x15, W
; #	MOVF	r0x14, W
; #	MOVF	r0x14, W
; #	MOVWF	r0x14
; #	MOVF	r0x14, W
; #	MOVF	r0x13, W
; #	MOVF	r0x13, W
; #	MOVWF	r0x13
	MOVFF	r0x13, FSR0L
	MOVFF	r0x14, PRODL
	MOVF	r0x15, W
	CALL	__gptrget4
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVFF	PRODH, r0x15
	MOVFF	FSR0L, r0x16
	BRA	_01125_DS_
_01124_DS_:
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x17
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x18
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x19
	MOVFF	r0x17, r0x06
	MOVFF	r0x18, r0x07
	MOVFF	r0x19, r0x08
	MOVLW	0xfe
	ADDWF	r0x17, F
	MOVLW	0xff
	ADDWFC	r0x18, F
	ADDWFC	r0x19, F
; #	MOVF	r0x19, W
; #	MOVWF	r0x19
; #	MOVF	r0x19, W
; #	MOVF	r0x18, W
; #	MOVF	r0x18, W
; #	MOVWF	r0x18
; #	MOVF	r0x18, W
; #	MOVF	r0x17, W
; #	MOVF	r0x17, W
; #	MOVWF	r0x17
	MOVFF	r0x17, FSR0L
	MOVFF	r0x18, PRODL
	MOVF	r0x19, W
	CALL	__gptrget2
	MOVWF	r0x17
	MOVFF	PRODL, r0x18
	MOVFF	r0x17, r0x13
	MOVFF	r0x18, r0x14
	CLRF	r0x15
	CLRF	r0x16
_01125_DS_:
	MOVFF	r0x13, r0x0f
	MOVFF	r0x14, r0x10
	MOVFF	r0x15, r0x11
	MOVFF	r0x16, r0x12
;	.line	450; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprinti(out, val, islong, 2, 0, width, pad, separator, 'a');
	MOVLW	0x61
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprinti
	MOVWF	r0x13
	MOVLW	0x0e
	ADDWF	FSR1L, F
	MOVF	r0x13, W
	ADDWF	r0x09, F
;	.line	451; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	BRA	_01098_DS_
_01089_DS_:
;	.line	454; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'o')		// octal
	MOVF	r0x0e, W
	XORLW	0x6f
	BZ	_01274_DS_
	BRA	_01091_DS_
_01274_DS_:
;	.line	456; /home/vbasel/.icaro/v4/firmware/core/stdio.c	val = (islong) ? va_arg(args, u32) : va_arg(args, u16);
	MOVF	r0x0c, W
	BZ	_01126_DS_
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x13
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x14
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x15
	MOVFF	r0x13, r0x06
	MOVFF	r0x14, r0x07
	MOVFF	r0x15, r0x08
	MOVLW	0xfc
	ADDWF	r0x13, F
	MOVLW	0xff
	ADDWFC	r0x14, F
	ADDWFC	r0x15, F
; #	MOVF	r0x15, W
; #	MOVWF	r0x15
; #	MOVF	r0x15, W
; #	MOVF	r0x14, W
; #	MOVF	r0x14, W
; #	MOVWF	r0x14
; #	MOVF	r0x14, W
; #	MOVF	r0x13, W
; #	MOVF	r0x13, W
; #	MOVWF	r0x13
	MOVFF	r0x13, FSR0L
	MOVFF	r0x14, PRODL
	MOVF	r0x15, W
	CALL	__gptrget4
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVFF	PRODH, r0x15
	MOVFF	FSR0L, r0x16
	BRA	_01127_DS_
_01126_DS_:
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x17
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x18
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x19
	MOVFF	r0x17, r0x06
	MOVFF	r0x18, r0x07
	MOVFF	r0x19, r0x08
	MOVLW	0xfe
	ADDWF	r0x17, F
	MOVLW	0xff
	ADDWFC	r0x18, F
	ADDWFC	r0x19, F
; #	MOVF	r0x19, W
; #	MOVWF	r0x19
; #	MOVF	r0x19, W
; #	MOVF	r0x18, W
; #	MOVF	r0x18, W
; #	MOVWF	r0x18
; #	MOVF	r0x18, W
; #	MOVF	r0x17, W
; #	MOVF	r0x17, W
; #	MOVWF	r0x17
	MOVFF	r0x17, FSR0L
	MOVFF	r0x18, PRODL
	MOVF	r0x19, W
	CALL	__gptrget2
	MOVWF	r0x17
	MOVFF	PRODL, r0x18
	MOVFF	r0x17, r0x13
	MOVFF	r0x18, r0x14
	CLRF	r0x15
	CLRF	r0x16
_01127_DS_:
	MOVFF	r0x13, r0x0f
	MOVFF	r0x14, r0x10
	MOVFF	r0x15, r0x11
	MOVFF	r0x16, r0x12
;	.line	457; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprinti(out, val, islong, 8, 0, width, pad, separator, 'a');
	MOVLW	0x61
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprinti
	MOVWF	r0x0c
	MOVLW	0x0e
	ADDWF	FSR1L, F
	MOVF	r0x0c, W
	ADDWF	r0x09, F
;	.line	458; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	BRA	_01098_DS_
_01091_DS_:
;	.line	461; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (*format == 'c') 	// ascii
	MOVF	r0x0e, W
	XORLW	0x63
	BZ	_01276_DS_
	BRA	_01098_DS_
_01276_DS_:
;	.line	463; /home/vbasel/.icaro/v4/firmware/core/stdio.c	scr[0] = va_arg(args, u16);
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x0c
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x0e
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x0f
	MOVFF	r0x0c, r0x06
	MOVFF	r0x0e, r0x07
	MOVFF	r0x0f, r0x08
	MOVLW	0xfe
	ADDWF	r0x0c, F
	MOVLW	0xff
	ADDWFC	r0x0e, F
	ADDWFC	r0x0f, F
; #	MOVF	r0x0f, W
; #	MOVWF	r0x0f
; #	MOVF	r0x0f, W
; #	MOVF	r0x0e, W
; #	MOVF	r0x0e, W
; #	MOVWF	r0x0e
; #	MOVF	r0x0e, W
; #	MOVF	r0x0c, W
; #	MOVF	r0x0c, W
; #	MOVWF	r0x0c
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0e, PRODL
	MOVF	r0x0f, W
	CALL	__gptrget2
	BANKSEL	_pprint_scr_1_185
	MOVWF	_pprint_scr_1_185, B
; removed redundant BANKSEL
;	.line	464; /home/vbasel/.icaro/v4/firmware/core/stdio.c	scr[1] = '\0';
	CLRF	(_pprint_scr_1_185 + 1), B
;	.line	465; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pc += pprints(out, scr, width, pad);
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_pprint_scr_1_185)
	MOVWF	POSTDEC1
	MOVLW	LOW(_pprint_scr_1_185)
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprints
	MOVWF	r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x09, W
	MOVWF	r0x0c
	MOVF	r0x0b, W
	ADDWF	r0x0c, W
	MOVWF	r0x09
;	.line	466; /home/vbasel/.icaro/v4/firmware/core/stdio.c	continue;
	BRA	_01098_DS_
_01094_DS_:
;	.line	473; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pprintc(out, *format);
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
	CALL	_pprintc
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	474; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++pc;
	INCF	r0x09, F
_01098_DS_:
;	.line	347; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for (; *format != 0; ++format)
	INCF	r0x03, F
	BNC	_01277_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01277_DS_:
	GOTO	_01111_DS_
_01099_DS_:
;	.line	477; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (out) **out = '\0';
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_01101_DS_
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
_01101_DS_:
;	.line	478; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pc;
	MOVF	r0x09, W
;	.line	479; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
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
S_drawrobot__pprintfl	code
_pprintfl:
;	.line	178; /home/vbasel/.icaro/v4/firmware/core/stdio.c	static u8 pprintfl(u8 **out, float value, u8 width, u8 pad, u8 separator, u8 precision)
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
	MOVFF	r0x1b, POSTDEC1
	MOVFF	r0x1c, POSTDEC1
	MOVFF	r0x1d, POSTDEC1
	MOVFF	r0x1e, POSTDEC1
	MOVFF	r0x1f, POSTDEC1
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
	MOVLW	0x0c
	MOVFF	PLUSW2, r0x09
;	.line	187; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u32 int_part  = 0;
	CLRF	r0x0a
	CLRF	r0x0b
	CLRF	r0x0c
	CLRF	r0x0d
;	.line	188; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u32 frac_part = 0;
	CLRF	r0x0e
	CLRF	r0x0f
	CLRF	r0x10
	CLRF	r0x11
;	.line	190; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 buffer[PRINTF_BUF_LEN], *string = buffer;
	MOVLW	HIGH(_pprintfl_buffer_1_169)
	MOVWF	r0x13
	MOVLW	LOW(_pprintfl_buffer_1_169)
	MOVWF	r0x12
	MOVLW	0x80
	MOVWF	r0x14
;	.line	191; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 tmp[PRINTF_BUF_LEN], *s = tmp;
	MOVLW	HIGH(_pprintfl_tmp_1_169)
	MOVWF	r0x16
	MOVLW	LOW(_pprintfl_tmp_1_169)
	MOVWF	r0x15
	MOVLW	0x80
	MOVWF	r0x17
;	.line	192; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 count = 0, m, t;
	CLRF	r0x18
;	.line	193; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 length = PRINTF_BUF_LEN - 1;
	MOVLW	0x0b
	MOVWF	r0x19
;	.line	195; /home/vbasel/.icaro/v4/firmware/core/stdio.c	helper.f = value;
	MOVF	r0x03, W
	BANKSEL	_pprintfl_helper_1_169
	MOVWF	_pprintfl_helper_1_169, B
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_pprintfl_helper_1_169 + 1), B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(_pprintfl_helper_1_169 + 2), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(_pprintfl_helper_1_169 + 3), B
;	.line	198; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (helper.l < 0)
	BSF	STATUS, 0
; removed redundant BANKSEL
	BTFSS	(_pprintfl_helper_1_169 + 3), 7, B
	BCF	STATUS, 0
	BNC	_00937_DS_
;	.line	200; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (width && (pad & PAD_ZERO))
	MOVF	r0x07, W
	BZ	_00933_DS_
	MOVFF	r0x08, r0x03
	BTFSS	r0x03, 1
	BRA	_00933_DS_
;	.line	202; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pprintc(out, '-');
	MOVLW	0x2d
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprintc
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	203; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++count;
	MOVLW	0x01
	MOVWF	r0x18
;	.line	204; /home/vbasel/.icaro/v4/firmware/core/stdio.c	--width;
	DECF	r0x07, F
	BRA	_00937_DS_
_00933_DS_:
;	.line	208; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*string++ = '-';
	MOVLW	0x2d
	MOVWF	POSTDEC1
	MOVFF	r0x12, FSR0L
	MOVFF	r0x13, PRODL
	MOVF	r0x14, W
	CALL	__gptrput1
	INCF	r0x12, F
	BNC	_01026_DS_
	INFSNZ	r0x13, F
	INCF	r0x14, F
_01026_DS_:
;	.line	209; /home/vbasel/.icaro/v4/firmware/core/stdio.c	length--;
	MOVLW	0x0a
	MOVWF	r0x19
_00937_DS_:
	BANKSEL	(_pprintfl_helper_1_169 + 2)
;	.line	215; /home/vbasel/.icaro/v4/firmware/core/stdio.c	exponent = ((helper.l >> 23) & 0xFF) - 127;	
	RLCF	(_pprintfl_helper_1_169 + 2), W, B
; removed redundant BANKSEL
	RLCF	(_pprintfl_helper_1_169 + 3), W, B
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	0x81
	ADDWF	r0x03, F
; removed redundant BANKSEL
;	.line	218; /home/vbasel/.icaro/v4/firmware/core/stdio.c	mantissa = (helper.l & 0x7FFFFF) | 0x800000;
	MOVF	_pprintfl_helper_1_169, W, B
	MOVWF	r0x04
; removed redundant BANKSEL
	MOVF	(_pprintfl_helper_1_169 + 1), W, B
	MOVWF	r0x05
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(_pprintfl_helper_1_169 + 2), W, B
	MOVWF	r0x06
	CLRF	r0x1a
	BSF	r0x06, 7
;	.line	231; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (exponent >= 31)
	MOVF	r0x03, W
	ADDLW	0x80
	ADDLW	0x61
	BNC	_00948_DS_
;	.line	233; /home/vbasel/.icaro/v4/firmware/core/stdio.c	buffer[0] = '+';
	MOVLW	0x2b
	BANKSEL	_pprintfl_buffer_1_169
	MOVWF	_pprintfl_buffer_1_169, B
;	.line	234; /home/vbasel/.icaro/v4/firmware/core/stdio.c	buffer[1] = 'i';
	MOVLW	0x69
; removed redundant BANKSEL
	MOVWF	(_pprintfl_buffer_1_169 + 1), B
;	.line	235; /home/vbasel/.icaro/v4/firmware/core/stdio.c	buffer[2] = 'n';
	MOVLW	0x6e
; removed redundant BANKSEL
	MOVWF	(_pprintfl_buffer_1_169 + 2), B
;	.line	236; /home/vbasel/.icaro/v4/firmware/core/stdio.c	buffer[3] = 'f';
	MOVLW	0x66
; removed redundant BANKSEL
	MOVWF	(_pprintfl_buffer_1_169 + 3), B
; removed redundant BANKSEL
;	.line	237; /home/vbasel/.icaro/v4/firmware/core/stdio.c	buffer[4] = '\0';
	CLRF	(_pprintfl_buffer_1_169 + 4), B
;	.line	238; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pprints(out, buffer, width, pad);
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_pprintfl_buffer_1_169)
	MOVWF	POSTDEC1
	MOVLW	LOW(_pprintfl_buffer_1_169)
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprints
	MOVWF	r0x1b
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x1b, W
	BRA	_00969_DS_
_00948_DS_:
;	.line	241; /home/vbasel/.icaro/v4/firmware/core/stdio.c	else if (exponent < -23)
	MOVF	r0x03, W
	ADDLW	0x80
	ADDLW	0x97
	BC	_00945_DS_
;	.line	251; /home/vbasel/.icaro/v4/firmware/core/stdio.c	int_part  = 0;
	CLRF	r0x0a
	CLRF	r0x0b
	CLRF	r0x0c
	CLRF	r0x0d
;	.line	252; /home/vbasel/.icaro/v4/firmware/core/stdio.c	frac_part = 0;
	CLRF	r0x0e
	CLRF	r0x0f
	CLRF	r0x10
	CLRF	r0x11
	BRA	_00949_DS_
_00945_DS_:
;	.line	255; /home/vbasel/.icaro/v4/firmware/core/stdio.c	else if (exponent >= 23)
	MOVF	r0x03, W
	ADDLW	0x80
	ADDLW	0x69
	BNC	_00942_DS_
;	.line	257; /home/vbasel/.icaro/v4/firmware/core/stdio.c	int_part = mantissa << (exponent - 23);
	MOVF	r0x03, W
	MOVWF	r0x1b
	MOVLW	0xe9
	ADDWF	r0x1b, F
	MOVFF	r0x04, r0x0a
	MOVFF	r0x05, r0x0b
	MOVFF	r0x06, r0x0c
	MOVFF	r0x1a, r0x0d
	MOVF	r0x1b, W
	BZ	_01032_DS_
	NEGF	WREG
	BCF	STATUS, 0
_01033_DS_:
	RLCF	r0x0a, F
	RLCF	r0x0b, F
	RLCF	r0x0c, F
	RLCF	r0x0d, F
	ADDLW	0x01
	BNC	_01033_DS_
_01032_DS_:
	BRA	_00949_DS_
_00942_DS_:
;	.line	260; /home/vbasel/.icaro/v4/firmware/core/stdio.c	else if (exponent >= 0) 
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	BC	_00939_DS_
; #	MOVF	r0x03, W
; #	MOVWF	r0x1b
; #	MOVF	r0x1b, W
;	.line	262; /home/vbasel/.icaro/v4/firmware/core/stdio.c	int_part = mantissa >> (23 - exponent);
	MOVF	r0x03, W
	MOVWF	r0x1b
	SUBLW	0x17
	MOVWF	r0x1c
	MOVFF	r0x04, r0x0a
	MOVFF	r0x05, r0x0b
	MOVFF	r0x06, r0x0c
	MOVFF	r0x1a, r0x0d
	MOVF	r0x1c, W
	BZ	_01034_DS_
	NEGF	WREG
	BCF	STATUS, 0
_01035_DS_:
	RRCF	r0x0d, F
	RRCF	r0x0c, F
	RRCF	r0x0b, F
	RRCF	r0x0a, F
	ADDLW	0x01
	BNC	_01035_DS_
_01034_DS_:
;	.line	263; /home/vbasel/.icaro/v4/firmware/core/stdio.c	frac_part = (mantissa << (exponent + 1)) & 0xFFFFFF; // mfh
	INCF	r0x1b, F
	MOVFF	r0x04, r0x1c
	MOVFF	r0x05, r0x1d
	MOVFF	r0x06, r0x1e
	MOVFF	r0x1a, r0x1f
	MOVF	r0x1b, W
	BZ	_01036_DS_
	NEGF	WREG
	BCF	STATUS, 0
_01037_DS_:
	RLCF	r0x1c, F
	RLCF	r0x1d, F
	RLCF	r0x1e, F
	RLCF	r0x1f, F
	ADDLW	0x01
	BNC	_01037_DS_
_01036_DS_:
	MOVF	r0x1c, W
	MOVWF	r0x0e
	MOVF	r0x1d, W
	MOVWF	r0x0f
	MOVF	r0x1e, W
	MOVWF	r0x10
	CLRF	r0x11
	BRA	_00949_DS_
_00939_DS_:
;	.line	267; /home/vbasel/.icaro/v4/firmware/core/stdio.c	frac_part = (mantissa & 0xFFFFFF) >> -(exponent + 1);
	CLRF	r0x1a
	CLRF	r0x1b
	BTFSC	r0x03, 7
	SETF	r0x1b
	INFSNZ	r0x03, F
	INCF	r0x1b, F
	COMF	r0x1b, F
	NEGF	r0x03
	BTFSC	STATUS, 2
	INCF	r0x1b, F
	MOVFF	r0x04, r0x0e
	MOVFF	r0x05, r0x0f
	MOVFF	r0x06, r0x10
	MOVFF	r0x1a, r0x11
	MOVF	r0x03, W
	BZ	_00949_DS_
	BN	_01044_DS_
	NEGF	WREG
	BCF	STATUS, 0
_01042_DS_:
	RRCF	r0x11, F
	RRCF	r0x10, F
	RRCF	r0x0f, F
	RRCF	r0x0e, F
	ADDLW	0x01
	BNC	_01042_DS_
	BRA	_00949_DS_
_01044_DS_:
	BCF	STATUS, 0
_01043_DS_:
	RLCF	r0x0e, F
	RLCF	r0x0f, F
	RLCF	r0x10, F
	RLCF	r0x11, F
	ADDLW	0x01
	BNC	_01043_DS_
_00949_DS_:
;	.line	270; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (int_part == 0)
	MOVF	r0x0a, W
	IORWF	r0x0b, W
	IORWF	r0x0c, W
	IORWF	r0x0d, W
	BNZ	_00980_DS_
;	.line	272; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*string++ = '0';
	MOVLW	0x30
	MOVWF	POSTDEC1
	MOVFF	r0x12, FSR0L
	MOVFF	r0x13, PRODL
	MOVF	r0x14, W
	CALL	__gptrput1
	INCF	r0x12, F
	BNC	_01045_DS_
	INFSNZ	r0x13, F
	INCF	r0x14, F
_01045_DS_:
;	.line	273; /home/vbasel/.icaro/v4/firmware/core/stdio.c	length--;
	DECF	r0x19, F
	BRA	_00958_DS_
_00980_DS_:
;	.line	279; /home/vbasel/.icaro/v4/firmware/core/stdio.c	while (int_part)
	MOVFF	r0x15, r0x03
	MOVFF	r0x16, r0x04
	MOVFF	r0x17, r0x05
	CLRF	r0x06
	MOVFF	r0x19, r0x15
_00950_DS_:
	MOVF	r0x0a, W
	IORWF	r0x0b, W
	IORWF	r0x0c, W
	IORWF	r0x0d, W
	BTFSC	STATUS, 2
	BRA	_00988_DS_
;	.line	281; /home/vbasel/.icaro/v4/firmware/core/stdio.c	t = int_part % 10;		// decimal base
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	__modulong
	MOVWF	r0x16
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	282; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*s++ = t + '0';
	MOVLW	0x30
	ADDWF	r0x16, F
	MOVFF	r0x16, POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
	INCF	r0x03, F
	BNC	_01046_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01046_DS_:
;	.line	283; /home/vbasel/.icaro/v4/firmware/core/stdio.c	int_part /= 10;
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0b
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	284; /home/vbasel/.icaro/v4/firmware/core/stdio.c	m++;					// string's length counter
	INCF	r0x06, F
;	.line	285; /home/vbasel/.icaro/v4/firmware/core/stdio.c	length--;
	DECF	r0x15, F
	BRA	_00950_DS_
_00988_DS_:
;	.line	288; /home/vbasel/.icaro/v4/firmware/core/stdio.c	while (m--)
	MOVFF	r0x15, r0x19
	MOVFF	r0x12, r0x0a
	MOVFF	r0x13, r0x0b
	MOVFF	r0x14, r0x0c
_00953_DS_:
	MOVFF	r0x06, r0x0d
	DECF	r0x06, F
	MOVF	r0x0d, W
	BZ	_00989_DS_
;	.line	290; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*string++ = *--s;
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
	ADDWFC	r0x05, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0d
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0b, PRODL
	MOVF	r0x0c, W
	CALL	__gptrput1
	INCF	r0x0a, F
	BNC	_00953_DS_
	INFSNZ	r0x0b, F
	INCF	r0x0c, F
_01047_DS_:
	BRA	_00953_DS_
_00989_DS_:
	MOVFF	r0x0a, r0x12
	MOVFF	r0x0b, r0x13
	MOVFF	r0x0c, r0x14
_00958_DS_:
;	.line	303; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (precision > 6)
	MOVLW	0x07
	SUBWF	r0x09, W
	BNC	_00960_DS_
;	.line	304; /home/vbasel/.icaro/v4/firmware/core/stdio.c	precision = 6;
	MOVLW	0x06
	MOVWF	r0x09
_00960_DS_:
;	.line	307; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (precision > length)
	MOVF	r0x09, W
; #	SUBWF	r0x19, W
; #	BTFSC	STATUS, 0
; #	GOTO	_00962_DS_
; #	MOVFF	r0x19, r0x09
; #	MOVLW	0x01
;	.line	308; /home/vbasel/.icaro/v4/firmware/core/stdio.c	precision = length;
	SUBWF	r0x19, W
;	.line	311; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (precision >= 1)
	BTFSS	STATUS, 0
	MOVFF	r0x19, r0x09
	MOVLW	0x01
	SUBWF	r0x09, W
	BTFSS	STATUS, 0
	BRA	_00965_DS_
;	.line	314; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*string++ = '.';
	MOVLW	0x2e
	MOVWF	POSTDEC1
	MOVFF	r0x12, FSR0L
	MOVFF	r0x13, PRODL
	MOVF	r0x14, W
	CALL	__gptrput1
	INCF	r0x12, F
	BNC	_01051_DS_
	INFSNZ	r0x13, F
	INCF	r0x14, F
_01051_DS_:
;	.line	317; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for (m = 0; m < precision; m++)
	MOVFF	r0x12, r0x03
	MOVFF	r0x13, r0x04
	MOVFF	r0x14, r0x05
	CLRF	r0x06
_00967_DS_:
	MOVF	r0x09, W
	SUBWF	r0x06, W
	BC	_00990_DS_
;	.line	320; /home/vbasel/.icaro/v4/firmware/core/stdio.c	frac_part = (frac_part << 3) + (frac_part << 1); 
	MOVF	r0x0e, W
	ADDWF	r0x0e, W
	MOVWF	r0x0a
	RLCF	r0x0f, W
	MOVWF	r0x0b
	RLCF	r0x10, W
	MOVWF	r0x0c
	RLCF	r0x11, W
	MOVWF	r0x0d
	MOVF	r0x0a, W
	ADDWF	r0x0a, F
	RLCF	r0x0b, F
	RLCF	r0x0c, F
	RLCF	r0x0d, F
	MOVF	r0x0a, W
	ADDWF	r0x0a, F
	RLCF	r0x0b, F
	RLCF	r0x0c, F
	RLCF	r0x0d, F
	MOVF	r0x0e, W
	ADDWF	r0x0e, W
	MOVWF	r0x15
	RLCF	r0x0f, W
	MOVWF	r0x16
	RLCF	r0x10, W
	MOVWF	r0x17
	RLCF	r0x11, W
	MOVWF	r0x19
	MOVF	r0x15, W
	ADDWF	r0x0a, W
	MOVWF	r0x0e
	MOVF	r0x16, W
	ADDWFC	r0x0b, W
	MOVWF	r0x0f
	MOVF	r0x17, W
	ADDWFC	r0x0c, W
	MOVWF	r0x10
	MOVF	r0x19, W
	ADDWFC	r0x0d, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
;	.line	322; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*string++ = (frac_part >> 24) + '0';
	MOVWF	r0x0a
	MOVLW	0x30
	ADDWF	r0x0a, F
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
	INCF	r0x03, F
	BNC	_01053_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_01053_DS_:
;	.line	324; /home/vbasel/.icaro/v4/firmware/core/stdio.c	frac_part &= 0xFFFFFF;
	CLRF	r0x11
;	.line	317; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for (m = 0; m < precision; m++)
	INCF	r0x06, F
	BRA	_00967_DS_
_00990_DS_:
	MOVFF	r0x03, r0x12
	MOVFF	r0x04, r0x13
	MOVFF	r0x05, r0x14
_00965_DS_:
;	.line	329; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*string++ = '\0';
	CLRF	POSTDEC1
	MOVFF	r0x12, FSR0L
	MOVFF	r0x13, PRODL
	MOVF	r0x14, W
	CALL	__gptrput1
;	.line	331; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return count + pprints(out, buffer, width, pad);
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_pprintfl_buffer_1_169)
	MOVWF	POSTDEC1
	MOVLW	LOW(_pprintfl_buffer_1_169)
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprints
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x18, W
	ADDWF	r0x00, F
	MOVF	r0x00, W
_00969_DS_:
;	.line	332; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
	MOVFF	PREINC1, r0x1f
	MOVFF	PREINC1, r0x1e
	MOVFF	PREINC1, r0x1d
	MOVFF	PREINC1, r0x1c
	MOVFF	PREINC1, r0x1b
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
S_drawrobot__pprinti	code
_pprinti:
;	.line	115; /home/vbasel/.icaro/v4/firmware/core/stdio.c	static u8 pprinti(u8 **out, u32 i, u8 islong, u8 base, u8 sign, u8 width, u8 pad, u8 separator, u8 letterbase)
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
	MOVFF	r0x1b, POSTDEC1
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
	MOVLW	0x0f
	MOVFF	PLUSW2, r0x0c
;	.line	119; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 neg = 0, pc = 0;
	CLRF	r0x0d
	CLRF	r0x0e
;	.line	120; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u32 t, uns32 = i;
	MOVFF	r0x03, r0x0f
	MOVFF	r0x04, r0x10
	MOVFF	r0x05, r0x11
	MOVFF	r0x06, r0x12
;	.line	122; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (i == 0)
	MOVF	r0x03, W
	IORWF	r0x04, W
	IORWF	r0x05, W
	IORWF	r0x06, W
	BNZ	_00859_DS_
;	.line	124; /home/vbasel/.icaro/v4/firmware/core/stdio.c	buffer[0] = '0';
	MOVLW	0x30
	BANKSEL	_pprinti_buffer_1_159
	MOVWF	_pprinti_buffer_1_159, B
; removed redundant BANKSEL
;	.line	125; /home/vbasel/.icaro/v4/firmware/core/stdio.c	buffer[1] = '\0';
	CLRF	(_pprinti_buffer_1_159 + 1), B
;	.line	126; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pprints(out, buffer, width, pad);
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	HIGH(_pprinti_buffer_1_159)
	MOVWF	POSTDEC1
	MOVLW	LOW(_pprinti_buffer_1_159)
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprints
	MOVWF	r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x13, W
	BRA	_00880_DS_
_00859_DS_:
;	.line	130; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if  ( (sign) && (base == 10) )          // decimal signed number ?
	MOVF	r0x09, W
	BZ	_00867_DS_
	MOVF	r0x08, W
	XORLW	0x0a
	BNZ	_00867_DS_
;	.line	132; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if ( (islong) && ((s32)i < 0) )     // negative 32-bit ?
	MOVF	r0x07, W
	BZ	_00861_DS_
	MOVF	r0x03, W
	MOVWF	r0x09
	MOVF	r0x04, W
	MOVWF	r0x13
	MOVF	r0x05, W
	MOVWF	r0x14
	MOVF	r0x06, W
	MOVWF	r0x15
	BSF	STATUS, 0
	BTFSS	r0x15, 7
	BCF	STATUS, 0
	BNC	_00861_DS_
;	.line	134; /home/vbasel/.icaro/v4/firmware/core/stdio.c	neg = 1;
	MOVLW	0x01
	MOVWF	r0x0d
;	.line	135; /home/vbasel/.icaro/v4/firmware/core/stdio.c	uns32 = - (s32)i;
	COMF	r0x15, W
	MOVWF	r0x12
	COMF	r0x14, W
	MOVWF	r0x11
	COMF	r0x13, W
	MOVWF	r0x10
	COMF	r0x09, W
	MOVWF	r0x0f
	INCF	r0x0f, F
	BNZ	_00861_DS_
	INCF	r0x10, F
	BNZ	_00861_DS_
	INFSNZ	r0x11, F
	INCF	r0x12, F
_00861_DS_:
;	.line	137; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if ( (!islong) && ((s16)i < 0) )    // negative 16-bit ?
	MOVF	r0x07, W
	BNZ	_00867_DS_
	BSF	STATUS, 0
	BTFSS	r0x04, 7
	BCF	STATUS, 0
	BNC	_00867_DS_
;	.line	139; /home/vbasel/.icaro/v4/firmware/core/stdio.c	neg = 1;
	MOVLW	0x01
	MOVWF	r0x0d
;	.line	140; /home/vbasel/.icaro/v4/firmware/core/stdio.c	uns32 = - (s16)i;
	COMF	r0x04, F
	NEGF	r0x03
	BTFSC	STATUS, 2
	INCF	r0x04, F
	MOVFF	r0x03, r0x0f
	MOVFF	r0x04, r0x10
	CLRF	WREG
	BTFSC	r0x04, 7
	MOVLW	0xff
	MOVWF	r0x11
	MOVWF	r0x12
_00867_DS_:
;	.line	145; /home/vbasel/.icaro/v4/firmware/core/stdio.c	string = buffer + PRINTF_BUF_LEN - 1;
	MOVLW	HIGH(_pprinti_buffer_1_159 + 11)
	MOVWF	r0x04
	MOVLW	LOW(_pprinti_buffer_1_159 + 11)
	MOVWF	r0x03
	MOVLW	0x80
	MOVWF	r0x05
;	.line	146; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*string = '\0';
	CLRF	POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	CALL	__gptrput1
;	.line	148; /home/vbasel/.icaro/v4/firmware/core/stdio.c	while (uns32)
	MOVFF	r0x03, r0x06
	MOVFF	r0x04, r0x07
	MOVFF	r0x05, r0x09
_00871_DS_:
	MOVF	r0x0f, W
	IORWF	r0x10, W
	IORWF	r0x11, W
	IORWF	r0x12, W
	BTFSC	STATUS, 2
	BRA	_00895_DS_
;	.line	150; /home/vbasel/.icaro/v4/firmware/core/stdio.c	t = uns32 % base;
	MOVFF	r0x08, r0x13
	CLRF	r0x14
	CLRF	r0x15
	CLRF	r0x16
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	__modulong
	MOVWF	r0x17
	MOVFF	PRODL, r0x18
	MOVFF	PRODH, r0x19
	MOVFF	FSR0L, r0x1a
	MOVLW	0x08
	ADDWF	FSR1L, F
;	.line	151; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if ( t >= 10 )
	MOVLW	0x00
	SUBWF	r0x1a, W
	BNZ	_00926_DS_
	MOVLW	0x00
	SUBWF	r0x19, W
	BNZ	_00926_DS_
	MOVLW	0x00
	SUBWF	r0x18, W
	BNZ	_00926_DS_
	MOVLW	0x0a
	SUBWF	r0x17, W
_00926_DS_:
	BNC	_00870_DS_
;	.line	152; /home/vbasel/.icaro/v4/firmware/core/stdio.c	t += letterbase - '0' - 10;
	MOVFF	r0x0c, r0x1b
	MOVLW	0xc6
	ADDWF	r0x1b, F
	MOVF	r0x1b, W
	ADDWF	r0x17, F
_00870_DS_:
;	.line	153; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*--string = t + '0';
	MOVLW	0xff
	ADDWF	r0x06, F
	ADDWFC	r0x07, F
	ADDWFC	r0x09, F
	MOVLW	0x30
	ADDWF	r0x17, F
	MOVFF	r0x17, POSTDEC1
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x09, W
	CALL	__gptrput1
;	.line	154; /home/vbasel/.icaro/v4/firmware/core/stdio.c	uns32 /= base;
	MOVF	r0x16, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
	BRA	_00871_DS_
_00895_DS_:
	MOVFF	r0x06, r0x03
	MOVFF	r0x07, r0x04
	MOVFF	r0x09, r0x05
;	.line	157; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (neg)
	MOVF	r0x0d, W
	BZ	_00879_DS_
;	.line	159; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (width && (pad & PAD_ZERO))
	MOVF	r0x0a, W
	BZ	_00875_DS_
	MOVFF	r0x0b, r0x06
	BTFSS	r0x06, 1
	BRA	_00875_DS_
;	.line	161; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pprintc(out, '-');
	MOVLW	0x2d
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprintc
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	162; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++pc;
	MOVLW	0x01
	MOVWF	r0x0e
;	.line	163; /home/vbasel/.icaro/v4/firmware/core/stdio.c	--width;
	DECF	r0x0a, F
	BRA	_00879_DS_
_00875_DS_:
;	.line	167; /home/vbasel/.icaro/v4/firmware/core/stdio.c	*--string = '-';
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
	ADDWFC	r0x05, F
	MOVLW	0x2d
	MOVWF	POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
_00879_DS_:
;	.line	171; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pc + pprints(out, string, width, pad);
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
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
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprints
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
	MOVF	r0x0e, W
	ADDWF	r0x00, F
	MOVF	r0x00, W
_00880_DS_:
;	.line	172; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
	MOVFF	PREINC1, r0x1b
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
S_drawrobot__pprints	code
_pprints:
;	.line	62; /home/vbasel/.icaro/v4/firmware/core/stdio.c	static int pprints(u8 **out, const u8 *string, u8 width, u8 pad)
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
;	.line	64; /home/vbasel/.icaro/v4/firmware/core/stdio.c	register u8 pc = 0;
	CLRF	r0x08
;	.line	65; /home/vbasel/.icaro/v4/firmware/core/stdio.c	u8 padchar = ' ';
	MOVLW	0x20
	MOVWF	r0x09
;	.line	69; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (width > 0)
	MOVF	r0x06, W
	BZ	_00786_DS_
;	.line	71; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for (ptr = string; *ptr; ++ptr)
	CLRF	r0x0a
	MOVFF	r0x03, r0x0b
	MOVFF	r0x04, r0x0c
	MOVFF	r0x05, r0x0d
_00793_DS_:
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget1
	MOVWF	r0x0e
	MOVF	r0x0e, W
	BZ	_00779_DS_
;	.line	72; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++len;
	INCF	r0x0a, F
;	.line	71; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for (ptr = string; *ptr; ++ptr)
	INCF	r0x0b, F
	BNC	_00793_DS_
	INFSNZ	r0x0c, F
	INCF	r0x0d, F
_00849_DS_:
	BRA	_00793_DS_
_00779_DS_:
;	.line	73; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (len >= width)
	MOVF	r0x06, W
	SUBWF	r0x0a, W
	BNC	_00781_DS_
;	.line	74; /home/vbasel/.icaro/v4/firmware/core/stdio.c	width = 0;
	CLRF	r0x06
	BRA	_00782_DS_
_00781_DS_:
;	.line	76; /home/vbasel/.icaro/v4/firmware/core/stdio.c	width -= len;
	MOVF	r0x0a, W
	SUBWF	r0x06, F
_00782_DS_:
;	.line	77; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (pad & PAD_ZERO) padchar = '0';
	MOVFF	r0x07, r0x0a
	BTFSS	r0x0a, 1
	BRA	_00786_DS_
	MOVLW	0x30
	MOVWF	r0x09
_00786_DS_:
;	.line	80; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (!(pad & PAD_RIGHT))
	BTFSC	r0x07, 0
	BRA	_00818_DS_
	CLRF	r0x07
	MOVFF	r0x06, r0x0a
_00796_DS_:
;	.line	82; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; width > 0; --width)
	MOVF	r0x0a, W
	BNZ	_00795_DS_
	MOVFF	r0x07, r0x08
	MOVFF	r0x0a, r0x06
	BRA	_00818_DS_
_00795_DS_:
;	.line	84; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pprintc(out, padchar);
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprintc
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	85; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++pc;
	INCF	r0x07, F
;	.line	82; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; width > 0; --width)
	DECF	r0x0a, F
	BRA	_00796_DS_
_00818_DS_:
	MOVFF	r0x08, r0x07
_00799_DS_:
;	.line	89; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; *string ; ++string)
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x08
	MOVF	r0x08, W
	BZ	_00820_DS_
;	.line	91; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pprintc(out, *string);
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprintc
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	92; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++pc;
	INCF	r0x07, F
;	.line	89; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; *string ; ++string)
	INCF	r0x03, F
	BNC	_00799_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
_00853_DS_:
	BRA	_00799_DS_
_00820_DS_:
	MOVFF	r0x07, r0x03
	MOVFF	r0x06, r0x04
_00802_DS_:
;	.line	95; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; width > 0; --width)
	MOVF	r0x04, W
	BZ	_00791_DS_
;	.line	97; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pprintc(out, padchar);
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_pprintc
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	98; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++pc;
	INCF	r0x03, F
;	.line	95; /home/vbasel/.icaro/v4/firmware/core/stdio.c	for ( ; width > 0; --width)
	DECF	r0x04, F
	BRA	_00802_DS_
; =DF= MOVFF: replaced by CRLF/SETF
_00791_DS_:
;	.line	101; /home/vbasel/.icaro/v4/firmware/core/stdio.c	return pc;
	CLRF	PRODL
	MOVF	r0x03, W
;	.line	102; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
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
S_drawrobot__pprintc	code
_pprintc:
;	.line	42; /home/vbasel/.icaro/v4/firmware/core/stdio.c	static void pprintc(u8 **str, u8 c)
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
;	.line	44; /home/vbasel/.icaro/v4/firmware/core/stdio.c	if (str)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00766_DS_
;	.line	46; /home/vbasel/.icaro/v4/firmware/core/stdio.c	**str = c;
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
;	.line	47; /home/vbasel/.icaro/v4/firmware/core/stdio.c	++(*str);
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget3
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	INCF	r0x04, F
	BNC	_00773_DS_
	INFSNZ	r0x05, F
	INCF	r0x06, F
_00773_DS_:
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, PRODH
	MOVFF	r0x06, TBLPTRL
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput3
	BRA	_00768_DS_
_00766_DS_:
;	.line	51; /home/vbasel/.icaro/v4/firmware/core/stdio.c	pputchar(c);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVFF	INTCON, POSTDEC1
	BCF	INTCON, 7
	PUSH	
	MOVLW	LOW(_00774_DS_)
	MOVWF	TOSL
	MOVLW	HIGH(_00774_DS_)
	MOVWF	TOSH
	MOVLW	UPPER(_00774_DS_)
	MOVWF	TOSU
	BTFSC	PREINC1, 7
	BSF	INTCON, 7
	MOVFF	(_pputchar + 2), PCLATU
	MOVFF	(_pputchar + 1), PCLATH
	BANKSEL	_pputchar
	MOVF	_pputchar, W, B
	MOVWF	PCL
_00774_DS_:
	MOVF	POSTINC1, F
_00768_DS_:
;	.line	53; /home/vbasel/.icaro/v4/firmware/core/stdio.c	}
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
S_drawrobot__sensordigital	code
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
S_drawrobot__setup	code
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
S_drawrobot__Delayus	code
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
S_drawrobot__IO_digital	code
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
S_drawrobot__IO_init	code
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
S_drawrobot__analogwrite	code
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
S_drawrobot__analogwrite_init	code
_analogwrite_init:
;	.line	237; /home/vbasel/.icaro/v4/firmware/core/analog.c	PR2 = 0xFF;                         // set PWM period to the max. to get 10-bit res.
	SETF	_PR2
;	.line	238; /home/vbasel/.icaro/v4/firmware/core/analog.c	T2CON = 0b00000100;                 // Timer2 on, prescaler is 1
	MOVLW	0x04
	MOVWF	_T2CON
;	.line	239; /home/vbasel/.icaro/v4/firmware/core/analog.c	}
	RETURN	

; ; Starting pCode block
S_drawrobot__analogread	code
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
S_drawrobot__analogreference	code
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
S_drawrobot__analog_init	code
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
S_drawrobot__servos_interrupt	code
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
S_drawrobot__ServoMaximumPulse	code
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
S_drawrobot__ServoMinimumPulse	code
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
S_drawrobot__ServoRead	code
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
S_drawrobot__ServoWrite	code
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
S_drawrobot__ServoDetach	code
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
S_drawrobot__ServoAttach	code
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
S_drawrobot__SortServoTimings	code
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
S_drawrobot__ServosPulseUp	code
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
S_drawrobot__ServosPulseDown	code
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
S_drawrobot__servos_init	code
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
S_drawrobot__toggle	code
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
S_drawrobot__digitalread	code
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
S_drawrobot__digitalwrite	code
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
S_drawrobot__pinmode	code
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
S_drawrobot__Delayms	code
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
S_drawrobot__System_getCpuFrequency	code
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
S_drawrobot__System_readFlashMemory	code
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
; ; Starting pCode block
___str_0:
	DB	0x28, 0x6e, 0x75, 0x6c, 0x6c, 0x29, 0x00
; ; Starting pCode block
___str_1:
	DB	0x0a, 0x0d, 0x00


; Statistics:
; code size:	20138 (0x4eaa) bytes (15.36%)
;           	10069 (0x2755) words
; udata size:	  501 (0x01f5) bytes (27.96%)
; access size:	   32 (0x0020) bytes


	end
