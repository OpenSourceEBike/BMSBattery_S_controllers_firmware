;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl main
	.globl printf
	.globl putchar
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
	.globl	_fp_
_fp_:
	.ds	2

__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ;reset
	int 0x0000 ;trap
	int 0x0000 ;int0
	int 0x0000 ;int1
	int 0x0000 ;int2
	int 0x0000 ;int3
	int 0x0000 ;int4
	int 0x0000 ;int5
	int 0x0000 ;int6
	int 0x0000 ;int7
	int 0x0000 ;int8
	int 0x0000 ;int9
	int 0x0000 ;int10
	int 0x0000 ;int11
	int 0x0000 ;int12
	int 0x0000 ;int13
	int 0x0000 ;int14
	int 0x0000 ;int15
	int 0x0000 ;int16
	int 0x0000 ;int17
	int 0x0000 ;int18
	int 0x0000 ;int19
	int 0x0000 ;int20
	int 0x0000 ;int21
	int 0x0000 ;int22
	int 0x0000 ;int23
	int 0x0000 ;int24
	int 0x0000 ;int25
	int 0x0000 ;int26
	int 0x0000 ;int27
	int 0x0000 ;int28
	int 0x0000 ;int29
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
.globl start
start:
__sdcc_gs_init_startup:
	ldw x, #0x7ff
	ldw x, sp
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$putchar$0$0 ==.
	C$main.c$19$0$0 ==.
;	main.c: 19: void putchar(char c)
; genLabel
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
putchar:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	C$main.c$21$1$12 ==.
;	main.c: 21: while(!(UART1_SR & UART_SR_TXE));
; genLabel
00101$:
; genPointerGet
	ldw	x, #0x5230
	ld	a, (x)
; genAnd
	tnz	a
	jrmi	00114$
	jp	00101$
00114$:
; skipping generated iCode
	C$main.c$23$1$12 ==.
;	main.c: 23: UART1_DR = c;
; genPointerSet
	ldw	x, #0x5231
	ld	a, (0x05, sp)
	ld	(x), a
; genLabel
00104$:
; genEndFunction
	C$main.c$24$1$12 ==.
	XG$putchar$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	G$main$0$0 ==.
	C$main.c$26$1$12 ==.
;	main.c: 26: void main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
main:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	sub	sp, #8
	C$main.c$30$1$14 ==.
;	main.c: 30: CLK_DIVR = 0x00; // Set the frequency to 16 MHz
; genPointerSet
	mov	0x50c6+0, #0x00
	C$main.c$31$1$14 ==.
;	main.c: 31: CLK_PCKENR1 = 0xFF; // Enable peripherals
; genPointerSet
	mov	0x50c7+0, #0xff
	C$main.c$33$1$14 ==.
;	main.c: 33: UART1_CR2 = UART_CR2_TEN; // Allow TX and RX
; genPointerSet
	mov	0x5235+0, #0x08
	C$main.c$34$1$14 ==.
;	main.c: 34: UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
; genPointerGet
	ldw	x, #0x5236
	ld	a, (x)
; genAnd
	and	a, #0xcf
; genPointerSet
	ldw	x, #0x5236
	ld	(x), a
	C$main.c$35$1$14 ==.
;	main.c: 35: UART1_BRR2 = 0x03; UART1_BRR1 = 0x68; // 9600 baud
; genPointerSet
	mov	0x5233+0, #0x03
; genPointerSet
	mov	0x5232+0, #0x68
; genLabel
00106$:
	C$main.c$39$2$15 ==.
;	main.c: 39: printf("Hello World!!\n");
; genAddrOf
	ldw	x, #__str_0+0
; genCast
; genAssign
; genIPush
	pushw	x
; genCall
	call	printf
	addw	sp, #2
	C$main.c$40$2$15 ==.
;	main.c: 40: printf("OpenSource BMSBattery S controllers firmware\n\n");
; genAddrOf
	ldw	x, #__str_1+0
; genCast
; genAssign
; genIPush
	pushw	x
; genCall
	call	printf
	addw	sp, #2
	C$main.c$42$2$15 ==.
;	main.c: 42: for(i = 0; i < 147456; i++); // delay of 1s
; genAssign
	ldw	x, #0x4000
	ldw	(0x03, sp), x
	ld	a, #0x02
	clr	(0x01, sp)
; genLabel
00105$:
; genMinus
	ldw	x, (0x03, sp)
	subw	x, #0x0001
	ldw	(0x07, sp), x
	sbc	a, #0x00
	ld	xl, a
	ld	a, (0x01, sp)
	sbc	a, #0x00
	ld	xh, a
; genAssign
	rlwa	x
	ld	(0x01, sp), a
	rrwa	x
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
	ld	a, xl
; genIfx
	ldw	y, (0x07, sp)
	jrne	00122$
	tnzw	x
	jreq	00123$
00122$:
	jp	00105$
00123$:
; genGoto
	jp	00106$
; genLabel
00108$:
; genEndFunction
	addw	sp, #8
	C$main.c$44$1$14 ==.
	XG$main$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	.area CODE
Fmain$__str_0$0$0 == .
__str_0:
	.ascii "Hello World!!"
	.db 0x0a
	.db 0x00
Fmain$__str_1$0$0 == .
__str_1:
	.ascii "OpenSource BMSBattery S controllers firmware"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
