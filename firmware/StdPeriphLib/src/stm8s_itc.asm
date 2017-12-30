;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_itc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
	.globl _ITC_DeInit
	.globl _ITC_GetSoftIntStatus
	.globl _ITC_GetSoftwarePriority
	.globl _ITC_SetSoftwarePriority
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
	Sstm8s_itc$ITC_GetCPUCC$0 ==.
;	StdPeriphLib/src/stm8s_itc.c: 54: uint8_t ITC_GetCPUCC(void)
;	-----------------------------------------
;	 function ITC_GetCPUCC
;	-----------------------------------------
_ITC_GetCPUCC:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_itc$ITC_GetCPUCC$1 ==.
	Sstm8s_itc$ITC_GetCPUCC$2 ==.
;	StdPeriphLib/src/stm8s_itc.c: 63: __asm__("push cc");
	push	cc
	Sstm8s_itc$ITC_GetCPUCC$3 ==.
;	StdPeriphLib/src/stm8s_itc.c: 64: __asm__("pop a"); /* Ignore compiler warning, the returned value is in A register */
	pop	a
	Sstm8s_itc$ITC_GetCPUCC$4 ==.
;	StdPeriphLib/src/stm8s_itc.c: 69: }
	Sstm8s_itc$ITC_GetCPUCC$5 ==.
	XG$ITC_GetCPUCC$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_itc$ITC_GetCPUCC$6 ==.
	Sstm8s_itc$ITC_DeInit$7 ==.
;	StdPeriphLib/src/stm8s_itc.c: 90: void ITC_DeInit(void)
;	-----------------------------------------
;	 function ITC_DeInit
;	-----------------------------------------
_ITC_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_itc$ITC_DeInit$8 ==.
	Sstm8s_itc$ITC_DeInit$9 ==.
;	StdPeriphLib/src/stm8s_itc.c: 92: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
	mov	0x7f70+0, #0xff
	Sstm8s_itc$ITC_DeInit$10 ==.
;	StdPeriphLib/src/stm8s_itc.c: 93: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
	mov	0x7f71+0, #0xff
	Sstm8s_itc$ITC_DeInit$11 ==.
;	StdPeriphLib/src/stm8s_itc.c: 94: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
	mov	0x7f72+0, #0xff
	Sstm8s_itc$ITC_DeInit$12 ==.
;	StdPeriphLib/src/stm8s_itc.c: 95: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
	mov	0x7f73+0, #0xff
	Sstm8s_itc$ITC_DeInit$13 ==.
;	StdPeriphLib/src/stm8s_itc.c: 96: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
	mov	0x7f74+0, #0xff
	Sstm8s_itc$ITC_DeInit$14 ==.
;	StdPeriphLib/src/stm8s_itc.c: 97: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
	mov	0x7f75+0, #0xff
	Sstm8s_itc$ITC_DeInit$15 ==.
;	StdPeriphLib/src/stm8s_itc.c: 98: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
	mov	0x7f76+0, #0xff
	Sstm8s_itc$ITC_DeInit$16 ==.
;	StdPeriphLib/src/stm8s_itc.c: 99: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
	mov	0x7f77+0, #0xff
	Sstm8s_itc$ITC_DeInit$17 ==.
;	StdPeriphLib/src/stm8s_itc.c: 100: }
	Sstm8s_itc$ITC_DeInit$18 ==.
	XG$ITC_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_itc$ITC_DeInit$19 ==.
	Sstm8s_itc$ITC_GetSoftIntStatus$20 ==.
;	StdPeriphLib/src/stm8s_itc.c: 107: uint8_t ITC_GetSoftIntStatus(void)
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
_ITC_GetSoftIntStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_itc$ITC_GetSoftIntStatus$21 ==.
	Sstm8s_itc$ITC_GetSoftIntStatus$22 ==.
;	StdPeriphLib/src/stm8s_itc.c: 109: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
	call	_ITC_GetCPUCC
	and	a, #0x28
	Sstm8s_itc$ITC_GetSoftIntStatus$23 ==.
;	StdPeriphLib/src/stm8s_itc.c: 110: }
	Sstm8s_itc$ITC_GetSoftIntStatus$24 ==.
	XG$ITC_GetSoftIntStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_itc$ITC_GetSoftIntStatus$25 ==.
	Sstm8s_itc$ITC_GetSoftwarePriority$26 ==.
;	StdPeriphLib/src/stm8s_itc.c: 117: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
;	-----------------------------------------
;	 function ITC_GetSoftwarePriority
;	-----------------------------------------
_ITC_GetSoftwarePriority:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_itc$ITC_GetSoftwarePriority$27 ==.
	sub	sp, #2
	Sstm8s_itc$ITC_GetSoftwarePriority$28 ==.
;	StdPeriphLib/src/stm8s_itc.c: 119: uint8_t Value = 0;
	clr	a
	Sstm8s_itc$ITC_GetSoftwarePriority$29 ==.
;	StdPeriphLib/src/stm8s_itc.c: 126: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
	clrw	x
	exg	a, xl
	ld	a, (0x07, sp)
	exg	a, xl
	push	a
	ld	a, xl
	and	a, #0x03
	ld	xl, a
	clr	a
	ld	xh, a
	pop	a
	exg	a, xl
	ld	(0x02, sp), a
	exg	a, xl
	sll	(0x02, sp)
	push	a
	ld	a, #0x03
	ld	xl, a
	ld	a, (0x03, sp)
	jreq	00130$
00129$:
	exg	a, xl
	sll	a
	exg	a, xl
	dec	a
	jrne	00129$
00130$:
	pop	a
	exg	a, xl
	ld	(0x01, sp), a
	exg	a, xl
	Sstm8s_itc$ITC_GetSoftwarePriority$30 ==.
;	StdPeriphLib/src/stm8s_itc.c: 128: switch (IrqNum)
	push	a
	ld	a, (0x08, sp)
	cp	a, #0x18
	pop	a
	jrule	00131$
	jp	00123$
00131$:
	clrw	x
	exg	a, xl
	ld	a, (0x07, sp)
	exg	a, xl
	sllw	x
	ldw	x, (#00132$, x)
	jp	(x)
00132$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	.dw	#00106$
	.dw	#00107$
	.dw	#00108$
	.dw	#00122$
	.dw	#00122$
	.dw	#00109$
	.dw	#00110$
	.dw	#00111$
	.dw	#00112$
	.dw	#00113$
	.dw	#00114$
	.dw	#00115$
	.dw	#00122$
	.dw	#00122$
	.dw	#00116$
	.dw	#00117$
	.dw	#00118$
	.dw	#00119$
	.dw	#00120$
	.dw	#00121$
	Sstm8s_itc$ITC_GetSoftwarePriority$31 ==.
;	StdPeriphLib/src/stm8s_itc.c: 130: case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
00101$:
	Sstm8s_itc$ITC_GetSoftwarePriority$32 ==.
;	StdPeriphLib/src/stm8s_itc.c: 131: case ITC_IRQ_AWU:
00102$:
	Sstm8s_itc$ITC_GetSoftwarePriority$33 ==.
;	StdPeriphLib/src/stm8s_itc.c: 132: case ITC_IRQ_CLK:
00103$:
	Sstm8s_itc$ITC_GetSoftwarePriority$34 ==.
;	StdPeriphLib/src/stm8s_itc.c: 133: case ITC_IRQ_PORTA:
00104$:
	Sstm8s_itc$ITC_GetSoftwarePriority$35 ==.
;	StdPeriphLib/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
	ldw	x, #0x7f70
	ld	a, (x)
	and	a, (0x01, sp)
	Sstm8s_itc$ITC_GetSoftwarePriority$36 ==.
;	StdPeriphLib/src/stm8s_itc.c: 135: break;
	jp	00123$
	Sstm8s_itc$ITC_GetSoftwarePriority$37 ==.
;	StdPeriphLib/src/stm8s_itc.c: 137: case ITC_IRQ_PORTB:
00105$:
	Sstm8s_itc$ITC_GetSoftwarePriority$38 ==.
;	StdPeriphLib/src/stm8s_itc.c: 138: case ITC_IRQ_PORTC:
00106$:
	Sstm8s_itc$ITC_GetSoftwarePriority$39 ==.
;	StdPeriphLib/src/stm8s_itc.c: 139: case ITC_IRQ_PORTD:
00107$:
	Sstm8s_itc$ITC_GetSoftwarePriority$40 ==.
;	StdPeriphLib/src/stm8s_itc.c: 140: case ITC_IRQ_PORTE:
00108$:
	Sstm8s_itc$ITC_GetSoftwarePriority$41 ==.
;	StdPeriphLib/src/stm8s_itc.c: 141: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
	ldw	x, #0x7f71
	ld	a, (x)
	and	a, (0x01, sp)
	Sstm8s_itc$ITC_GetSoftwarePriority$42 ==.
;	StdPeriphLib/src/stm8s_itc.c: 142: break;
	jp	00123$
	Sstm8s_itc$ITC_GetSoftwarePriority$43 ==.
;	StdPeriphLib/src/stm8s_itc.c: 151: case ITC_IRQ_SPI:
00109$:
	Sstm8s_itc$ITC_GetSoftwarePriority$44 ==.
;	StdPeriphLib/src/stm8s_itc.c: 152: case ITC_IRQ_TIM1_OVF:
00110$:
	Sstm8s_itc$ITC_GetSoftwarePriority$45 ==.
;	StdPeriphLib/src/stm8s_itc.c: 153: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
	ldw	x, #0x7f72
	ld	a, (x)
	and	a, (0x01, sp)
	Sstm8s_itc$ITC_GetSoftwarePriority$46 ==.
;	StdPeriphLib/src/stm8s_itc.c: 154: break;
	jp	00123$
	Sstm8s_itc$ITC_GetSoftwarePriority$47 ==.
;	StdPeriphLib/src/stm8s_itc.c: 156: case ITC_IRQ_TIM1_CAPCOM:
00111$:
	Sstm8s_itc$ITC_GetSoftwarePriority$48 ==.
;	StdPeriphLib/src/stm8s_itc.c: 161: case ITC_IRQ_TIM2_OVF:
00112$:
	Sstm8s_itc$ITC_GetSoftwarePriority$49 ==.
;	StdPeriphLib/src/stm8s_itc.c: 162: case ITC_IRQ_TIM2_CAPCOM:
00113$:
	Sstm8s_itc$ITC_GetSoftwarePriority$50 ==.
;	StdPeriphLib/src/stm8s_itc.c: 164: case ITC_IRQ_TIM3_OVF:
00114$:
	Sstm8s_itc$ITC_GetSoftwarePriority$51 ==.
;	StdPeriphLib/src/stm8s_itc.c: 165: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
	ldw	x, #0x7f73
	ld	a, (x)
	and	a, (0x01, sp)
	Sstm8s_itc$ITC_GetSoftwarePriority$52 ==.
;	StdPeriphLib/src/stm8s_itc.c: 166: break;
	jra	00123$
	Sstm8s_itc$ITC_GetSoftwarePriority$53 ==.
;	StdPeriphLib/src/stm8s_itc.c: 168: case ITC_IRQ_TIM3_CAPCOM:
00115$:
	Sstm8s_itc$ITC_GetSoftwarePriority$54 ==.
;	StdPeriphLib/src/stm8s_itc.c: 178: case ITC_IRQ_I2C:
00116$:
	Sstm8s_itc$ITC_GetSoftwarePriority$55 ==.
;	StdPeriphLib/src/stm8s_itc.c: 179: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
	ldw	x, #0x7f74
	ld	a, (x)
	and	a, (0x01, sp)
	Sstm8s_itc$ITC_GetSoftwarePriority$56 ==.
;	StdPeriphLib/src/stm8s_itc.c: 180: break;
	jra	00123$
	Sstm8s_itc$ITC_GetSoftwarePriority$57 ==.
;	StdPeriphLib/src/stm8s_itc.c: 183: case ITC_IRQ_UART2_TX:
00117$:
	Sstm8s_itc$ITC_GetSoftwarePriority$58 ==.
;	StdPeriphLib/src/stm8s_itc.c: 184: case ITC_IRQ_UART2_RX:
00118$:
	Sstm8s_itc$ITC_GetSoftwarePriority$59 ==.
;	StdPeriphLib/src/stm8s_itc.c: 194: case ITC_IRQ_ADC1:
00119$:
	Sstm8s_itc$ITC_GetSoftwarePriority$60 ==.
;	StdPeriphLib/src/stm8s_itc.c: 199: case ITC_IRQ_TIM4_OVF:
00120$:
	Sstm8s_itc$ITC_GetSoftwarePriority$61 ==.
;	StdPeriphLib/src/stm8s_itc.c: 201: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
	ldw	x, #0x7f75
	ld	a, (x)
	and	a, (0x01, sp)
	Sstm8s_itc$ITC_GetSoftwarePriority$62 ==.
;	StdPeriphLib/src/stm8s_itc.c: 202: break;
	jra	00123$
	Sstm8s_itc$ITC_GetSoftwarePriority$63 ==.
;	StdPeriphLib/src/stm8s_itc.c: 204: case ITC_IRQ_EEPROM_EEC:
00121$:
	Sstm8s_itc$ITC_GetSoftwarePriority$64 ==.
;	StdPeriphLib/src/stm8s_itc.c: 205: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
	ldw	x, #0x7f76
	ld	a, (x)
	and	a, (0x01, sp)
	Sstm8s_itc$ITC_GetSoftwarePriority$65 ==.
;	StdPeriphLib/src/stm8s_itc.c: 206: break;
	jra	00123$
	Sstm8s_itc$ITC_GetSoftwarePriority$66 ==.
;	StdPeriphLib/src/stm8s_itc.c: 208: default:
00122$:
	Sstm8s_itc$ITC_GetSoftwarePriority$67 ==.
;	StdPeriphLib/src/stm8s_itc.c: 210: }
00123$:
	Sstm8s_itc$ITC_GetSoftwarePriority$68 ==.
;	StdPeriphLib/src/stm8s_itc.c: 212: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
	push	a
	ld	a, (0x03, sp)
	jreq	00134$
00133$:
	srl	(1, sp)
	dec	a
	jrne	00133$
00134$:
	pop	a
	Sstm8s_itc$ITC_GetSoftwarePriority$69 ==.
;	StdPeriphLib/src/stm8s_itc.c: 214: return((ITC_PriorityLevel_TypeDef)Value);
	Sstm8s_itc$ITC_GetSoftwarePriority$70 ==.
;	StdPeriphLib/src/stm8s_itc.c: 215: }
	addw	sp, #2
	Sstm8s_itc$ITC_GetSoftwarePriority$71 ==.
	XG$ITC_GetSoftwarePriority$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_itc$ITC_GetSoftwarePriority$72 ==.
	Sstm8s_itc$ITC_SetSoftwarePriority$73 ==.
;	StdPeriphLib/src/stm8s_itc.c: 230: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
;	-----------------------------------------
;	 function ITC_SetSoftwarePriority
;	-----------------------------------------
_ITC_SetSoftwarePriority:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_itc$ITC_SetSoftwarePriority$74 ==.
	sub	sp, #4
	Sstm8s_itc$ITC_SetSoftwarePriority$75 ==.
;	StdPeriphLib/src/stm8s_itc.c: 244: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
	ld	a, (0x09, sp)
	clr	(0x03, sp)
	and	a, #0x03
	ld	xl, a
	clr	a
	sllw	x
	ld	a, #0x03
	push	a
	ld	a, xl
	tnz	a
	jreq	00130$
00129$:
	sll	(1, sp)
	dec	a
	jrne	00129$
00130$:
	pop	a
	cpl	a
	ld	(0x02, sp), a
	Sstm8s_itc$ITC_SetSoftwarePriority$76 ==.
;	StdPeriphLib/src/stm8s_itc.c: 247: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
	ld	a, (0x0a, sp)
	push	a
	ld	a, xl
	tnz	a
	jreq	00132$
00131$:
	sll	(1, sp)
	dec	a
	jrne	00131$
00132$:
	pop	a
	ld	(0x01, sp), a
	Sstm8s_itc$ITC_SetSoftwarePriority$77 ==.
;	StdPeriphLib/src/stm8s_itc.c: 249: switch (IrqNum)
	ld	a, (0x09, sp)
	cp	a, #0x18
	jrule	00133$
	jp	00124$
00133$:
	clrw	x
	ld	a, (0x09, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00134$, x)
	jp	(x)
00134$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	.dw	#00106$
	.dw	#00107$
	.dw	#00108$
	.dw	#00122$
	.dw	#00122$
	.dw	#00109$
	.dw	#00110$
	.dw	#00111$
	.dw	#00112$
	.dw	#00113$
	.dw	#00114$
	.dw	#00115$
	.dw	#00122$
	.dw	#00122$
	.dw	#00116$
	.dw	#00117$
	.dw	#00118$
	.dw	#00119$
	.dw	#00120$
	.dw	#00121$
	Sstm8s_itc$ITC_SetSoftwarePriority$78 ==.
;	StdPeriphLib/src/stm8s_itc.c: 251: case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
00101$:
	Sstm8s_itc$ITC_SetSoftwarePriority$79 ==.
;	StdPeriphLib/src/stm8s_itc.c: 252: case ITC_IRQ_AWU:
00102$:
	Sstm8s_itc$ITC_SetSoftwarePriority$80 ==.
;	StdPeriphLib/src/stm8s_itc.c: 253: case ITC_IRQ_CLK:
00103$:
	Sstm8s_itc$ITC_SetSoftwarePriority$81 ==.
;	StdPeriphLib/src/stm8s_itc.c: 254: case ITC_IRQ_PORTA:
00104$:
	Sstm8s_itc$ITC_SetSoftwarePriority$82 ==.
;	StdPeriphLib/src/stm8s_itc.c: 255: ITC->ISPR1 &= Mask;
	ldw	x, #0x7f70
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f70
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$83 ==.
;	StdPeriphLib/src/stm8s_itc.c: 256: ITC->ISPR1 |= NewPriority;
	ldw	x, #0x7f70
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f70
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$84 ==.
;	StdPeriphLib/src/stm8s_itc.c: 257: break;
	jp	00124$
	Sstm8s_itc$ITC_SetSoftwarePriority$85 ==.
;	StdPeriphLib/src/stm8s_itc.c: 259: case ITC_IRQ_PORTB:
00105$:
	Sstm8s_itc$ITC_SetSoftwarePriority$86 ==.
;	StdPeriphLib/src/stm8s_itc.c: 260: case ITC_IRQ_PORTC:
00106$:
	Sstm8s_itc$ITC_SetSoftwarePriority$87 ==.
;	StdPeriphLib/src/stm8s_itc.c: 261: case ITC_IRQ_PORTD:
00107$:
	Sstm8s_itc$ITC_SetSoftwarePriority$88 ==.
;	StdPeriphLib/src/stm8s_itc.c: 262: case ITC_IRQ_PORTE:
00108$:
	Sstm8s_itc$ITC_SetSoftwarePriority$89 ==.
;	StdPeriphLib/src/stm8s_itc.c: 263: ITC->ISPR2 &= Mask;
	ldw	x, #0x7f71
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f71
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$90 ==.
;	StdPeriphLib/src/stm8s_itc.c: 264: ITC->ISPR2 |= NewPriority;
	ldw	x, #0x7f71
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f71
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$91 ==.
;	StdPeriphLib/src/stm8s_itc.c: 265: break;
	jp	00124$
	Sstm8s_itc$ITC_SetSoftwarePriority$92 ==.
;	StdPeriphLib/src/stm8s_itc.c: 274: case ITC_IRQ_SPI:
00109$:
	Sstm8s_itc$ITC_SetSoftwarePriority$93 ==.
;	StdPeriphLib/src/stm8s_itc.c: 275: case ITC_IRQ_TIM1_OVF:
00110$:
	Sstm8s_itc$ITC_SetSoftwarePriority$94 ==.
;	StdPeriphLib/src/stm8s_itc.c: 276: ITC->ISPR3 &= Mask;
	ldw	x, #0x7f72
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f72
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$95 ==.
;	StdPeriphLib/src/stm8s_itc.c: 277: ITC->ISPR3 |= NewPriority;
	ldw	x, #0x7f72
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f72
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$96 ==.
;	StdPeriphLib/src/stm8s_itc.c: 278: break;
	jp	00124$
	Sstm8s_itc$ITC_SetSoftwarePriority$97 ==.
;	StdPeriphLib/src/stm8s_itc.c: 280: case ITC_IRQ_TIM1_CAPCOM:
00111$:
	Sstm8s_itc$ITC_SetSoftwarePriority$98 ==.
;	StdPeriphLib/src/stm8s_itc.c: 285: case ITC_IRQ_TIM2_OVF:
00112$:
	Sstm8s_itc$ITC_SetSoftwarePriority$99 ==.
;	StdPeriphLib/src/stm8s_itc.c: 286: case ITC_IRQ_TIM2_CAPCOM:
00113$:
	Sstm8s_itc$ITC_SetSoftwarePriority$100 ==.
;	StdPeriphLib/src/stm8s_itc.c: 288: case ITC_IRQ_TIM3_OVF:
00114$:
	Sstm8s_itc$ITC_SetSoftwarePriority$101 ==.
;	StdPeriphLib/src/stm8s_itc.c: 289: ITC->ISPR4 &= Mask;
	ldw	x, #0x7f73
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f73
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$102 ==.
;	StdPeriphLib/src/stm8s_itc.c: 290: ITC->ISPR4 |= NewPriority;
	ldw	x, #0x7f73
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f73
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$103 ==.
;	StdPeriphLib/src/stm8s_itc.c: 291: break;
	jp	00124$
	Sstm8s_itc$ITC_SetSoftwarePriority$104 ==.
;	StdPeriphLib/src/stm8s_itc.c: 293: case ITC_IRQ_TIM3_CAPCOM:
00115$:
	Sstm8s_itc$ITC_SetSoftwarePriority$105 ==.
;	StdPeriphLib/src/stm8s_itc.c: 303: case ITC_IRQ_I2C:
00116$:
	Sstm8s_itc$ITC_SetSoftwarePriority$106 ==.
;	StdPeriphLib/src/stm8s_itc.c: 304: ITC->ISPR5 &= Mask;
	ldw	x, #0x7f74
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f74
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$107 ==.
;	StdPeriphLib/src/stm8s_itc.c: 305: ITC->ISPR5 |= NewPriority;
	ldw	x, #0x7f74
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f74
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$108 ==.
;	StdPeriphLib/src/stm8s_itc.c: 306: break;
	jra	00124$
	Sstm8s_itc$ITC_SetSoftwarePriority$109 ==.
;	StdPeriphLib/src/stm8s_itc.c: 309: case ITC_IRQ_UART2_TX:
00117$:
	Sstm8s_itc$ITC_SetSoftwarePriority$110 ==.
;	StdPeriphLib/src/stm8s_itc.c: 310: case ITC_IRQ_UART2_RX:
00118$:
	Sstm8s_itc$ITC_SetSoftwarePriority$111 ==.
;	StdPeriphLib/src/stm8s_itc.c: 322: case ITC_IRQ_ADC1:
00119$:
	Sstm8s_itc$ITC_SetSoftwarePriority$112 ==.
;	StdPeriphLib/src/stm8s_itc.c: 328: case ITC_IRQ_TIM4_OVF:
00120$:
	Sstm8s_itc$ITC_SetSoftwarePriority$113 ==.
;	StdPeriphLib/src/stm8s_itc.c: 330: ITC->ISPR6 &= Mask;
	ldw	x, #0x7f75
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f75
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$114 ==.
;	StdPeriphLib/src/stm8s_itc.c: 331: ITC->ISPR6 |= NewPriority;
	ldw	x, #0x7f75
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f75
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$115 ==.
;	StdPeriphLib/src/stm8s_itc.c: 332: break;
	jra	00124$
	Sstm8s_itc$ITC_SetSoftwarePriority$116 ==.
;	StdPeriphLib/src/stm8s_itc.c: 334: case ITC_IRQ_EEPROM_EEC:
00121$:
	Sstm8s_itc$ITC_SetSoftwarePriority$117 ==.
;	StdPeriphLib/src/stm8s_itc.c: 335: ITC->ISPR7 &= Mask;
	ldw	x, #0x7f76
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f76
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$118 ==.
;	StdPeriphLib/src/stm8s_itc.c: 336: ITC->ISPR7 |= NewPriority;
	ldw	x, #0x7f76
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f76
	ld	(x), a
	Sstm8s_itc$ITC_SetSoftwarePriority$119 ==.
;	StdPeriphLib/src/stm8s_itc.c: 337: break;
	jra	00124$
	Sstm8s_itc$ITC_SetSoftwarePriority$120 ==.
;	StdPeriphLib/src/stm8s_itc.c: 339: default:
00122$:
	Sstm8s_itc$ITC_SetSoftwarePriority$121 ==.
;	StdPeriphLib/src/stm8s_itc.c: 341: }
00124$:
	Sstm8s_itc$ITC_SetSoftwarePriority$122 ==.
;	StdPeriphLib/src/stm8s_itc.c: 342: }
	addw	sp, #4
	Sstm8s_itc$ITC_SetSoftwarePriority$123 ==.
	XG$ITC_SetSoftwarePriority$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_itc$ITC_SetSoftwarePriority$124 ==.
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
	.ascii "StdPeriphLib/src/stm8s_itc.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$0)
	.db	3
	.sleb128	53
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetCPUCC$2-Sstm8s_itc$ITC_GetCPUCC$0
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetCPUCC$3-Sstm8s_itc$ITC_GetCPUCC$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetCPUCC$4-Sstm8s_itc$ITC_GetCPUCC$3
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	7+Sstm8s_itc$ITC_GetCPUCC$5-Sstm8s_itc$ITC_GetCPUCC$4
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_DeInit$7)
	.db	3
	.sleb128	89
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$9-Sstm8s_itc$ITC_DeInit$7
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$10-Sstm8s_itc$ITC_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$11-Sstm8s_itc$ITC_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$12-Sstm8s_itc$ITC_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$13-Sstm8s_itc$ITC_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$14-Sstm8s_itc$ITC_DeInit$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$15-Sstm8s_itc$ITC_DeInit$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$16-Sstm8s_itc$ITC_DeInit$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$17-Sstm8s_itc$ITC_DeInit$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_itc$ITC_DeInit$18-Sstm8s_itc$ITC_DeInit$17
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$20)
	.db	3
	.sleb128	106
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$22-Sstm8s_itc$ITC_GetSoftIntStatus$20
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$23-Sstm8s_itc$ITC_GetSoftIntStatus$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_itc$ITC_GetSoftIntStatus$24-Sstm8s_itc$ITC_GetSoftIntStatus$23
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$26)
	.db	3
	.sleb128	116
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$28-Sstm8s_itc$ITC_GetSoftwarePriority$26
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$29-Sstm8s_itc$ITC_GetSoftwarePriority$28
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$30-Sstm8s_itc$ITC_GetSoftwarePriority$29
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$31-Sstm8s_itc$ITC_GetSoftwarePriority$30
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$32-Sstm8s_itc$ITC_GetSoftwarePriority$31
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$33-Sstm8s_itc$ITC_GetSoftwarePriority$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$34-Sstm8s_itc$ITC_GetSoftwarePriority$33
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$35-Sstm8s_itc$ITC_GetSoftwarePriority$34
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$36-Sstm8s_itc$ITC_GetSoftwarePriority$35
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$37-Sstm8s_itc$ITC_GetSoftwarePriority$36
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$38-Sstm8s_itc$ITC_GetSoftwarePriority$37
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$39-Sstm8s_itc$ITC_GetSoftwarePriority$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$40-Sstm8s_itc$ITC_GetSoftwarePriority$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$41-Sstm8s_itc$ITC_GetSoftwarePriority$40
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$42-Sstm8s_itc$ITC_GetSoftwarePriority$41
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$43-Sstm8s_itc$ITC_GetSoftwarePriority$42
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$44-Sstm8s_itc$ITC_GetSoftwarePriority$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$45-Sstm8s_itc$ITC_GetSoftwarePriority$44
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$46-Sstm8s_itc$ITC_GetSoftwarePriority$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$47-Sstm8s_itc$ITC_GetSoftwarePriority$46
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$48-Sstm8s_itc$ITC_GetSoftwarePriority$47
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$49-Sstm8s_itc$ITC_GetSoftwarePriority$48
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$50-Sstm8s_itc$ITC_GetSoftwarePriority$49
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$51-Sstm8s_itc$ITC_GetSoftwarePriority$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$52-Sstm8s_itc$ITC_GetSoftwarePriority$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$53-Sstm8s_itc$ITC_GetSoftwarePriority$52
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$54-Sstm8s_itc$ITC_GetSoftwarePriority$53
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$55-Sstm8s_itc$ITC_GetSoftwarePriority$54
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$56-Sstm8s_itc$ITC_GetSoftwarePriority$55
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$57-Sstm8s_itc$ITC_GetSoftwarePriority$56
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$58-Sstm8s_itc$ITC_GetSoftwarePriority$57
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$59-Sstm8s_itc$ITC_GetSoftwarePriority$58
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$60-Sstm8s_itc$ITC_GetSoftwarePriority$59
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$61-Sstm8s_itc$ITC_GetSoftwarePriority$60
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$62-Sstm8s_itc$ITC_GetSoftwarePriority$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$63-Sstm8s_itc$ITC_GetSoftwarePriority$62
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$64-Sstm8s_itc$ITC_GetSoftwarePriority$63
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$65-Sstm8s_itc$ITC_GetSoftwarePriority$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$66-Sstm8s_itc$ITC_GetSoftwarePriority$65
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$67-Sstm8s_itc$ITC_GetSoftwarePriority$66
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$68-Sstm8s_itc$ITC_GetSoftwarePriority$67
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$69-Sstm8s_itc$ITC_GetSoftwarePriority$68
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$70-Sstm8s_itc$ITC_GetSoftwarePriority$69
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_itc$ITC_GetSoftwarePriority$71-Sstm8s_itc$ITC_GetSoftwarePriority$70
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$73)
	.db	3
	.sleb128	229
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$75-Sstm8s_itc$ITC_SetSoftwarePriority$73
	.db	3
	.sleb128	14
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$76-Sstm8s_itc$ITC_SetSoftwarePriority$75
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$77-Sstm8s_itc$ITC_SetSoftwarePriority$76
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$78-Sstm8s_itc$ITC_SetSoftwarePriority$77
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$79-Sstm8s_itc$ITC_SetSoftwarePriority$78
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$80-Sstm8s_itc$ITC_SetSoftwarePriority$79
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$81-Sstm8s_itc$ITC_SetSoftwarePriority$80
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$82-Sstm8s_itc$ITC_SetSoftwarePriority$81
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$83-Sstm8s_itc$ITC_SetSoftwarePriority$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$84-Sstm8s_itc$ITC_SetSoftwarePriority$83
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$85-Sstm8s_itc$ITC_SetSoftwarePriority$84
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$86-Sstm8s_itc$ITC_SetSoftwarePriority$85
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$87-Sstm8s_itc$ITC_SetSoftwarePriority$86
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$88-Sstm8s_itc$ITC_SetSoftwarePriority$87
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$89-Sstm8s_itc$ITC_SetSoftwarePriority$88
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$90-Sstm8s_itc$ITC_SetSoftwarePriority$89
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$91-Sstm8s_itc$ITC_SetSoftwarePriority$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$92-Sstm8s_itc$ITC_SetSoftwarePriority$91
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$93-Sstm8s_itc$ITC_SetSoftwarePriority$92
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$94-Sstm8s_itc$ITC_SetSoftwarePriority$93
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$95-Sstm8s_itc$ITC_SetSoftwarePriority$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$96-Sstm8s_itc$ITC_SetSoftwarePriority$95
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$97-Sstm8s_itc$ITC_SetSoftwarePriority$96
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$98-Sstm8s_itc$ITC_SetSoftwarePriority$97
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$99-Sstm8s_itc$ITC_SetSoftwarePriority$98
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$100-Sstm8s_itc$ITC_SetSoftwarePriority$99
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$101-Sstm8s_itc$ITC_SetSoftwarePriority$100
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$102-Sstm8s_itc$ITC_SetSoftwarePriority$101
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$103-Sstm8s_itc$ITC_SetSoftwarePriority$102
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$104-Sstm8s_itc$ITC_SetSoftwarePriority$103
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$105-Sstm8s_itc$ITC_SetSoftwarePriority$104
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$106-Sstm8s_itc$ITC_SetSoftwarePriority$105
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$107-Sstm8s_itc$ITC_SetSoftwarePriority$106
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$108-Sstm8s_itc$ITC_SetSoftwarePriority$107
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$109-Sstm8s_itc$ITC_SetSoftwarePriority$108
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$110-Sstm8s_itc$ITC_SetSoftwarePriority$109
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$111-Sstm8s_itc$ITC_SetSoftwarePriority$110
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$112-Sstm8s_itc$ITC_SetSoftwarePriority$111
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$113-Sstm8s_itc$ITC_SetSoftwarePriority$112
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$114-Sstm8s_itc$ITC_SetSoftwarePriority$113
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$115-Sstm8s_itc$ITC_SetSoftwarePriority$114
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$116-Sstm8s_itc$ITC_SetSoftwarePriority$115
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$117-Sstm8s_itc$ITC_SetSoftwarePriority$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$118-Sstm8s_itc$ITC_SetSoftwarePriority$117
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$119-Sstm8s_itc$ITC_SetSoftwarePriority$118
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$120-Sstm8s_itc$ITC_SetSoftwarePriority$119
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$121-Sstm8s_itc$ITC_SetSoftwarePriority$120
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$122-Sstm8s_itc$ITC_SetSoftwarePriority$121
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_itc$ITC_SetSoftwarePriority$123-Sstm8s_itc$ITC_SetSoftwarePriority$122
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$124)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$72)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$25)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
	.dw	0,(Sstm8s_itc$ITC_DeInit$19)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$6)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	7
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	3
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
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
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
	.uleb128	5
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
	.uleb128	4
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
	.uleb128	0
	.uleb128	0
	.uleb128	2
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
	.ascii "StdPeriphLib/src/stm8s_itc.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.ascii "ITC_GetCPUCC"
	.db	0
	.dw	0,(_ITC_GetCPUCC)
	.dw	0,(XG$ITC_GetCPUCC$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,71
	.uleb128	4
	.ascii "ITC_DeInit"
	.db	0
	.dw	0,(_ITC_DeInit)
	.dw	0,(XG$ITC_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	3
	.ascii "ITC_GetSoftIntStatus"
	.db	0
	.dw	0,(_ITC_GetSoftIntStatus)
	.dw	0,(XG$ITC_GetSoftIntStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.dw	0,71
	.uleb128	5
	.dw	0,272
	.ascii "ITC_GetSoftwarePriority"
	.db	0
	.dw	0,(_ITC_GetSoftwarePriority)
	.dw	0,(XG$ITC_GetSoftwarePriority$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,71
	.uleb128	6
	.db	2
	.db	145
	.sleb128	4
	.ascii "IrqNum"
	.db	0
	.dw	0,71
	.uleb128	7
	.uleb128	8
	.db	1
	.db	81
	.ascii "Value"
	.db	0
	.dw	0,71
	.uleb128	8
	.db	2
	.db	145
	.sleb128	-2
	.ascii "Mask"
	.db	0
	.dw	0,71
	.uleb128	0
	.uleb128	9
	.ascii "ITC_SetSoftwarePriority"
	.db	0
	.dw	0,(_ITC_SetSoftwarePriority)
	.dw	0,(XG$ITC_SetSoftwarePriority$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	4
	.ascii "IrqNum"
	.db	0
	.dw	0,71
	.uleb128	6
	.db	2
	.db	145
	.sleb128	5
	.ascii "PriorityValue"
	.db	0
	.dw	0,71
	.uleb128	7
	.uleb128	8
	.db	2
	.db	145
	.sleb128	-3
	.ascii "Mask"
	.db	0
	.dw	0,71
	.uleb128	8
	.db	2
	.db	145
	.sleb128	-4
	.ascii "NewPriority"
	.db	0
	.dw	0,71
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
	.dw	0,88
	.ascii "ITC_GetCPUCC"
	.db	0
	.dw	0,119
	.ascii "ITC_DeInit"
	.db	0
	.dw	0,144
	.ascii "ITC_GetSoftIntStatus"
	.db	0
	.dw	0,183
	.ascii "ITC_GetSoftwarePriority"
	.db	0
	.dw	0,272
	.ascii "ITC_SetSoftwarePriority"
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
