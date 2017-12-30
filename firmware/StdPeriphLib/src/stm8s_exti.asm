;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_exti
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_DeInit
	.globl _EXTI_SetExtIntSensitivity
	.globl _EXTI_SetTLISensitivity
	.globl _EXTI_GetExtIntSensitivity
	.globl _EXTI_GetTLISensitivity
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sstm8s_exti$EXTI_DeInit$0 ==.
;	StdPeriphLib/src/stm8s_exti.c: 53: void EXTI_DeInit(void)
;	-----------------------------------------
;	 function EXTI_DeInit
;	-----------------------------------------
_EXTI_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_exti$EXTI_DeInit$1 ==.
	Sstm8s_exti$EXTI_DeInit$2 ==.
;	StdPeriphLib/src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
	mov	0x50a0+0, #0x00
	Sstm8s_exti$EXTI_DeInit$3 ==.
;	StdPeriphLib/src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
	mov	0x50a1+0, #0x00
	Sstm8s_exti$EXTI_DeInit$4 ==.
;	StdPeriphLib/src/stm8s_exti.c: 57: }
	Sstm8s_exti$EXTI_DeInit$5 ==.
	XG$EXTI_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_exti$EXTI_DeInit$6 ==.
	Sstm8s_exti$EXTI_SetExtIntSensitivity$7 ==.
;	StdPeriphLib/src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
;	-----------------------------------------
;	 function EXTI_SetExtIntSensitivity
;	-----------------------------------------
_EXTI_SetExtIntSensitivity:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_exti$EXTI_SetExtIntSensitivity$8 ==.
	sub	sp, #3
	Sstm8s_exti$EXTI_SetExtIntSensitivity$9 ==.
;	StdPeriphLib/src/stm8s_exti.c: 77: switch (Port)
	ld	a, (0x08, sp)
	cp	a, #0x04
	jrule	00113$
	jp	00108$
00113$:
	clrw	x
	ld	a, (0x08, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00114$, x)
	jp	(x)
00114$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	Sstm8s_exti$EXTI_SetExtIntSensitivity$10 ==.
;	StdPeriphLib/src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
00101$:
	Sstm8s_exti$EXTI_SetExtIntSensitivity$11 ==.
;	StdPeriphLib/src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$12 ==.
;	StdPeriphLib/src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
	ldw	x, #0x50a0
	ld	a, (x)
	or	a, (0x09, sp)
	ldw	x, #0x50a0
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$13 ==.
;	StdPeriphLib/src/stm8s_exti.c: 82: break;
	jp	00108$
	Sstm8s_exti$EXTI_SetExtIntSensitivity$14 ==.
;	StdPeriphLib/src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
00102$:
	Sstm8s_exti$EXTI_SetExtIntSensitivity$15 ==.
;	StdPeriphLib/src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$16 ==.
;	StdPeriphLib/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
	ldw	x, #0x50a0
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x09, sp)
	sll	a
	sll	a
	or	a, (0x01, sp)
	ldw	x, #0x50a0
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$17 ==.
;	StdPeriphLib/src/stm8s_exti.c: 86: break;
	jp	00108$
	Sstm8s_exti$EXTI_SetExtIntSensitivity$18 ==.
;	StdPeriphLib/src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
00103$:
	Sstm8s_exti$EXTI_SetExtIntSensitivity$19 ==.
;	StdPeriphLib/src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$20 ==.
;	StdPeriphLib/src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
	ldw	x, #0x50a0
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x09, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x03, sp)
	ldw	x, #0x50a0
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$21 ==.
;	StdPeriphLib/src/stm8s_exti.c: 90: break;
	jra	00108$
	Sstm8s_exti$EXTI_SetExtIntSensitivity$22 ==.
;	StdPeriphLib/src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
00104$:
	Sstm8s_exti$EXTI_SetExtIntSensitivity$23 ==.
;	StdPeriphLib/src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x3f
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$24 ==.
;	StdPeriphLib/src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
	ldw	x, #0x50a0
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x09, sp)
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	or	a, (0x02, sp)
	ldw	x, #0x50a0
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$25 ==.
;	StdPeriphLib/src/stm8s_exti.c: 94: break;
	jra	00108$
	Sstm8s_exti$EXTI_SetExtIntSensitivity$26 ==.
;	StdPeriphLib/src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
00105$:
	Sstm8s_exti$EXTI_SetExtIntSensitivity$27 ==.
;	StdPeriphLib/src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$28 ==.
;	StdPeriphLib/src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
	ldw	x, #0x50a1
	ld	a, (x)
	or	a, (0x09, sp)
	ldw	x, #0x50a1
	ld	(x), a
	Sstm8s_exti$EXTI_SetExtIntSensitivity$29 ==.
;	StdPeriphLib/src/stm8s_exti.c: 101: }
00108$:
	Sstm8s_exti$EXTI_SetExtIntSensitivity$30 ==.
;	StdPeriphLib/src/stm8s_exti.c: 102: }
	addw	sp, #3
	Sstm8s_exti$EXTI_SetExtIntSensitivity$31 ==.
	XG$EXTI_SetExtIntSensitivity$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_exti$EXTI_SetExtIntSensitivity$32 ==.
	Sstm8s_exti$EXTI_SetTLISensitivity$33 ==.
;	StdPeriphLib/src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
;	-----------------------------------------
;	 function EXTI_SetTLISensitivity
;	-----------------------------------------
_EXTI_SetTLISensitivity:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_exti$EXTI_SetTLISensitivity$34 ==.
	Sstm8s_exti$EXTI_SetTLISensitivity$35 ==.
;	StdPeriphLib/src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
	Sstm8s_exti$EXTI_SetTLISensitivity$36 ==.
;	StdPeriphLib/src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
	ldw	x, #0x50a1
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x50a1
	ld	(x), a
	Sstm8s_exti$EXTI_SetTLISensitivity$37 ==.
;	StdPeriphLib/src/stm8s_exti.c: 119: }
	Sstm8s_exti$EXTI_SetTLISensitivity$38 ==.
	XG$EXTI_SetTLISensitivity$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_exti$EXTI_SetTLISensitivity$39 ==.
	Sstm8s_exti$EXTI_GetExtIntSensitivity$40 ==.
;	StdPeriphLib/src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
;	-----------------------------------------
;	 function EXTI_GetExtIntSensitivity
;	-----------------------------------------
_EXTI_GetExtIntSensitivity:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_exti$EXTI_GetExtIntSensitivity$41 ==.
	Sstm8s_exti$EXTI_GetExtIntSensitivity$42 ==.
;	StdPeriphLib/src/stm8s_exti.c: 128: uint8_t value = 0;
	clr	a
	Sstm8s_exti$EXTI_GetExtIntSensitivity$43 ==.
;	StdPeriphLib/src/stm8s_exti.c: 133: switch (Port)
	push	a
	ld	a, (0x06, sp)
	cp	a, #0x04
	pop	a
	jrule	00113$
	jp	00107$
00113$:
	clrw	x
	ld	a, (0x05, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00114$, x)
	jp	(x)
00114$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	Sstm8s_exti$EXTI_GetExtIntSensitivity$44 ==.
;	StdPeriphLib/src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
00101$:
	Sstm8s_exti$EXTI_GetExtIntSensitivity$45 ==.
;	StdPeriphLib/src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x03
	Sstm8s_exti$EXTI_GetExtIntSensitivity$46 ==.
;	StdPeriphLib/src/stm8s_exti.c: 137: break;
	jra	00107$
	Sstm8s_exti$EXTI_GetExtIntSensitivity$47 ==.
;	StdPeriphLib/src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
00102$:
	Sstm8s_exti$EXTI_GetExtIntSensitivity$48 ==.
;	StdPeriphLib/src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x0c
	srl	a
	srl	a
	Sstm8s_exti$EXTI_GetExtIntSensitivity$49 ==.
;	StdPeriphLib/src/stm8s_exti.c: 140: break;
	jra	00107$
	Sstm8s_exti$EXTI_GetExtIntSensitivity$50 ==.
;	StdPeriphLib/src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
00103$:
	Sstm8s_exti$EXTI_GetExtIntSensitivity$51 ==.
;	StdPeriphLib/src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x30
	swap	a
	and	a, #0x0f
	Sstm8s_exti$EXTI_GetExtIntSensitivity$52 ==.
;	StdPeriphLib/src/stm8s_exti.c: 143: break;
	jra	00107$
	Sstm8s_exti$EXTI_GetExtIntSensitivity$53 ==.
;	StdPeriphLib/src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
00104$:
	Sstm8s_exti$EXTI_GetExtIntSensitivity$54 ==.
;	StdPeriphLib/src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xc0
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	Sstm8s_exti$EXTI_GetExtIntSensitivity$55 ==.
;	StdPeriphLib/src/stm8s_exti.c: 146: break;
	jra	00107$
	Sstm8s_exti$EXTI_GetExtIntSensitivity$56 ==.
;	StdPeriphLib/src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
00105$:
	Sstm8s_exti$EXTI_GetExtIntSensitivity$57 ==.
;	StdPeriphLib/src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0x03
	Sstm8s_exti$EXTI_GetExtIntSensitivity$58 ==.
;	StdPeriphLib/src/stm8s_exti.c: 152: }
00107$:
	Sstm8s_exti$EXTI_GetExtIntSensitivity$59 ==.
;	StdPeriphLib/src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
	Sstm8s_exti$EXTI_GetExtIntSensitivity$60 ==.
;	StdPeriphLib/src/stm8s_exti.c: 155: }
	Sstm8s_exti$EXTI_GetExtIntSensitivity$61 ==.
	XG$EXTI_GetExtIntSensitivity$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_exti$EXTI_GetExtIntSensitivity$62 ==.
	Sstm8s_exti$EXTI_GetTLISensitivity$63 ==.
;	StdPeriphLib/src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
;	-----------------------------------------
;	 function EXTI_GetTLISensitivity
;	-----------------------------------------
_EXTI_GetTLISensitivity:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_exti$EXTI_GetTLISensitivity$64 ==.
	Sstm8s_exti$EXTI_GetTLISensitivity$65 ==.
;	StdPeriphLib/src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0x04
	Sstm8s_exti$EXTI_GetTLISensitivity$66 ==.
;	StdPeriphLib/src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
	Sstm8s_exti$EXTI_GetTLISensitivity$67 ==.
;	StdPeriphLib/src/stm8s_exti.c: 170: }
	Sstm8s_exti$EXTI_GetTLISensitivity$68 ==.
	XG$EXTI_GetTLISensitivity$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_exti$EXTI_GetTLISensitivity$69 ==.
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
	.db	0
	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
	.db	0
	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
	.db	0
	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
	.db	0
	.db	0
	.ascii "StdPeriphLib/src/stm8s_exti.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_exti$EXTI_DeInit$0)
	.db	3
	.sleb128	52
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_DeInit$2-Sstm8s_exti$EXTI_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_DeInit$3-Sstm8s_exti$EXTI_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_DeInit$4-Sstm8s_exti$EXTI_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_exti$EXTI_DeInit$5-Sstm8s_exti$EXTI_DeInit$4
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_exti$EXTI_SetExtIntSensitivity$7)
	.db	3
	.sleb128	69
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$9-Sstm8s_exti$EXTI_SetExtIntSensitivity$7
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$10-Sstm8s_exti$EXTI_SetExtIntSensitivity$9
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$11-Sstm8s_exti$EXTI_SetExtIntSensitivity$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$12-Sstm8s_exti$EXTI_SetExtIntSensitivity$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$13-Sstm8s_exti$EXTI_SetExtIntSensitivity$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$14-Sstm8s_exti$EXTI_SetExtIntSensitivity$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$15-Sstm8s_exti$EXTI_SetExtIntSensitivity$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$16-Sstm8s_exti$EXTI_SetExtIntSensitivity$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$17-Sstm8s_exti$EXTI_SetExtIntSensitivity$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$18-Sstm8s_exti$EXTI_SetExtIntSensitivity$17
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$19-Sstm8s_exti$EXTI_SetExtIntSensitivity$18
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$20-Sstm8s_exti$EXTI_SetExtIntSensitivity$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$21-Sstm8s_exti$EXTI_SetExtIntSensitivity$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$22-Sstm8s_exti$EXTI_SetExtIntSensitivity$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$23-Sstm8s_exti$EXTI_SetExtIntSensitivity$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$24-Sstm8s_exti$EXTI_SetExtIntSensitivity$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$25-Sstm8s_exti$EXTI_SetExtIntSensitivity$24
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$26-Sstm8s_exti$EXTI_SetExtIntSensitivity$25
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$27-Sstm8s_exti$EXTI_SetExtIntSensitivity$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$28-Sstm8s_exti$EXTI_SetExtIntSensitivity$27
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$29-Sstm8s_exti$EXTI_SetExtIntSensitivity$28
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$30-Sstm8s_exti$EXTI_SetExtIntSensitivity$29
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_exti$EXTI_SetExtIntSensitivity$31-Sstm8s_exti$EXTI_SetExtIntSensitivity$30
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_exti$EXTI_SetTLISensitivity$33)
	.db	3
	.sleb128	110
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetTLISensitivity$35-Sstm8s_exti$EXTI_SetTLISensitivity$33
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetTLISensitivity$36-Sstm8s_exti$EXTI_SetTLISensitivity$35
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_SetTLISensitivity$37-Sstm8s_exti$EXTI_SetTLISensitivity$36
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_exti$EXTI_SetTLISensitivity$38-Sstm8s_exti$EXTI_SetTLISensitivity$37
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_exti$EXTI_GetExtIntSensitivity$40)
	.db	3
	.sleb128	125
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$42-Sstm8s_exti$EXTI_GetExtIntSensitivity$40
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$43-Sstm8s_exti$EXTI_GetExtIntSensitivity$42
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$44-Sstm8s_exti$EXTI_GetExtIntSensitivity$43
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$45-Sstm8s_exti$EXTI_GetExtIntSensitivity$44
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$46-Sstm8s_exti$EXTI_GetExtIntSensitivity$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$47-Sstm8s_exti$EXTI_GetExtIntSensitivity$46
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$48-Sstm8s_exti$EXTI_GetExtIntSensitivity$47
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$49-Sstm8s_exti$EXTI_GetExtIntSensitivity$48
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$50-Sstm8s_exti$EXTI_GetExtIntSensitivity$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$51-Sstm8s_exti$EXTI_GetExtIntSensitivity$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$52-Sstm8s_exti$EXTI_GetExtIntSensitivity$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$53-Sstm8s_exti$EXTI_GetExtIntSensitivity$52
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$54-Sstm8s_exti$EXTI_GetExtIntSensitivity$53
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$55-Sstm8s_exti$EXTI_GetExtIntSensitivity$54
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$56-Sstm8s_exti$EXTI_GetExtIntSensitivity$55
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$57-Sstm8s_exti$EXTI_GetExtIntSensitivity$56
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$58-Sstm8s_exti$EXTI_GetExtIntSensitivity$57
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$59-Sstm8s_exti$EXTI_GetExtIntSensitivity$58
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$60-Sstm8s_exti$EXTI_GetExtIntSensitivity$59
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_exti$EXTI_GetExtIntSensitivity$61-Sstm8s_exti$EXTI_GetExtIntSensitivity$60
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_exti$EXTI_GetTLISensitivity$63)
	.db	3
	.sleb128	161
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetTLISensitivity$65-Sstm8s_exti$EXTI_GetTLISensitivity$63
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetTLISensitivity$66-Sstm8s_exti$EXTI_GetTLISensitivity$65
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_exti$EXTI_GetTLISensitivity$67-Sstm8s_exti$EXTI_GetTLISensitivity$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_exti$EXTI_GetTLISensitivity$68-Sstm8s_exti$EXTI_GetTLISensitivity$67
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_exti$EXTI_GetTLISensitivity$64)
	.dw	0,(Sstm8s_exti$EXTI_GetTLISensitivity$69)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_exti$EXTI_GetExtIntSensitivity$41)
	.dw	0,(Sstm8s_exti$EXTI_GetExtIntSensitivity$62)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_exti$EXTI_SetTLISensitivity$34)
	.dw	0,(Sstm8s_exti$EXTI_SetTLISensitivity$39)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_exti$EXTI_SetExtIntSensitivity$8)
	.dw	0,(Sstm8s_exti$EXTI_SetExtIntSensitivity$32)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_exti$EXTI_DeInit$1)
	.dw	0,(Sstm8s_exti$EXTI_DeInit$6)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	5
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.uleb128	46
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "StdPeriphLib/src/stm8s_exti.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.ascii "EXTI_DeInit"
	.db	0
	.dw	0,(_EXTI_DeInit)
	.dw	0,(XG$EXTI_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	3
	.dw	0,182
	.ascii "EXTI_SetExtIntSensitivity"
	.db	0
	.dw	0,(_EXTI_SetExtIntSensitivity)
	.dw	0,(XG$EXTI_SetExtIntSensitivity$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Port"
	.db	0
	.dw	0,182
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "SensitivityValue"
	.db	0
	.dw	0,182
	.uleb128	5
	.uleb128	0
	.uleb128	6
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,266
	.ascii "EXTI_SetTLISensitivity"
	.db	0
	.dw	0,(_EXTI_SetTLISensitivity)
	.dw	0,(XG$EXTI_SetTLISensitivity$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "SensitivityValue"
	.db	0
	.dw	0,182
	.uleb128	0
	.uleb128	7
	.dw	0,342
	.ascii "EXTI_GetExtIntSensitivity"
	.db	0
	.dw	0,(_EXTI_GetExtIntSensitivity)
	.dw	0,(XG$EXTI_GetExtIntSensitivity$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,182
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Port"
	.db	0
	.dw	0,182
	.uleb128	5
	.uleb128	8
	.db	1
	.db	81
	.ascii "value"
	.db	0
	.dw	0,182
	.uleb128	0
	.uleb128	9
	.ascii "EXTI_GetTLISensitivity"
	.db	0
	.dw	0,(_EXTI_GetTLISensitivity)
	.dw	0,(XG$EXTI_GetTLISensitivity$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,182
	.uleb128	8
	.db	1
	.db	81
	.ascii "value"
	.db	0
	.dw	0,182
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,72
	.ascii "EXTI_DeInit"
	.db	0
	.dw	0,98
	.ascii "EXTI_SetExtIntSensitivity"
	.db	0
	.dw	0,199
	.ascii "EXTI_SetTLISensitivity"
	.db	0
	.dw	0,266
	.ascii "EXTI_GetExtIntSensitivity"
	.db	0
	.dw	0,342
	.ascii "EXTI_GetTLISensitivity"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE_end-Ldebug_CIE_start
Ldebug_CIE_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	0
	.db	12
	.uleb128	0
	.uleb128	0
	.db	128
	.uleb128	0
Ldebug_CIE_end:
