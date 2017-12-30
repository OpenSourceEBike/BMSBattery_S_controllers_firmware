;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_clk
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLKPrescTable
	.globl _HSIDivFactor
	.globl _CLK_DeInit
	.globl _CLK_FastHaltWakeUpCmd
	.globl _CLK_HSECmd
	.globl _CLK_HSICmd
	.globl _CLK_LSICmd
	.globl _CLK_CCOCmd
	.globl _CLK_ClockSwitchCmd
	.globl _CLK_SlowActiveHaltWakeUpCmd
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_HSIPrescalerConfig
	.globl _CLK_CCOConfig
	.globl _CLK_ITConfig
	.globl _CLK_SYSCLKConfig
	.globl _CLK_SWIMConfig
	.globl _CLK_ClockSecuritySystemEnable
	.globl _CLK_GetSYSCLKSource
	.globl _CLK_GetClockFreq
	.globl _CLK_AdjustHSICalibrationValue
	.globl _CLK_SYSCLKEmergencyClear
	.globl _CLK_GetFlagStatus
	.globl _CLK_GetITStatus
	.globl _CLK_ClearITPendingBit
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
	Sstm8s_clk$CLK_DeInit$0 ==.
;	StdPeriphLib/src/stm8s_clk.c: 72: void CLK_DeInit(void)
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
_CLK_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_DeInit$1 ==.
	Sstm8s_clk$CLK_DeInit$2 ==.
;	StdPeriphLib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
	mov	0x50c0+0, #0x01
	Sstm8s_clk$CLK_DeInit$3 ==.
;	StdPeriphLib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
	mov	0x50c1+0, #0x00
	Sstm8s_clk$CLK_DeInit$4 ==.
;	StdPeriphLib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
	mov	0x50c4+0, #0xe1
	Sstm8s_clk$CLK_DeInit$5 ==.
;	StdPeriphLib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
	mov	0x50c5+0, #0x00
	Sstm8s_clk$CLK_DeInit$6 ==.
;	StdPeriphLib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
	mov	0x50c6+0, #0x18
	Sstm8s_clk$CLK_DeInit$7 ==.
;	StdPeriphLib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
	mov	0x50c7+0, #0xff
	Sstm8s_clk$CLK_DeInit$8 ==.
;	StdPeriphLib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
	mov	0x50ca+0, #0xff
	Sstm8s_clk$CLK_DeInit$9 ==.
;	StdPeriphLib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
	mov	0x50c8+0, #0x00
	Sstm8s_clk$CLK_DeInit$10 ==.
;	StdPeriphLib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
	Sstm8s_clk$CLK_DeInit$11 ==.
;	StdPeriphLib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
00101$:
	ldw	x, #0x50c9
	ld	a, (x)
	srl	a
	jrc	00101$
	Sstm8s_clk$CLK_DeInit$12 ==.
;	StdPeriphLib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
	Sstm8s_clk$CLK_DeInit$13 ==.
;	StdPeriphLib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
	mov	0x50cc+0, #0x00
	Sstm8s_clk$CLK_DeInit$14 ==.
;	StdPeriphLib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
	mov	0x50cd+0, #0x00
	Sstm8s_clk$CLK_DeInit$15 ==.
;	StdPeriphLib/src/stm8s_clk.c: 88: }
	Sstm8s_clk$CLK_DeInit$16 ==.
	XG$CLK_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_DeInit$17 ==.
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$18 ==.
;	StdPeriphLib/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_FastHaltWakeUpCmd
;	-----------------------------------------
_CLK_FastHaltWakeUpCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$19 ==.
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20 ==.
;	StdPeriphLib/src/stm8s_clk.c: 104: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21 ==.
;	StdPeriphLib/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
	ldw	x, #0x50c0
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$22 ==.
;	StdPeriphLib/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23 ==.
;	StdPeriphLib/src/stm8s_clk.c: 114: }
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$24 ==.
	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_FastHaltWakeUpCmd$25 ==.
	Sstm8s_clk$CLK_HSECmd$26 ==.
;	StdPeriphLib/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSECmd
;	-----------------------------------------
_CLK_HSECmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_HSECmd$27 ==.
	Sstm8s_clk$CLK_HSECmd$28 ==.
;	StdPeriphLib/src/stm8s_clk.c: 126: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_HSECmd$29 ==.
;	StdPeriphLib/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	bset	0x50c1, #0
	jra	00104$
00102$:
	Sstm8s_clk$CLK_HSECmd$30 ==.
;	StdPeriphLib/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	bres	0x50c1, #0
00104$:
	Sstm8s_clk$CLK_HSECmd$31 ==.
;	StdPeriphLib/src/stm8s_clk.c: 136: }
	Sstm8s_clk$CLK_HSECmd$32 ==.
	XG$CLK_HSECmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_HSECmd$33 ==.
	Sstm8s_clk$CLK_HSICmd$34 ==.
;	StdPeriphLib/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSICmd
;	-----------------------------------------
_CLK_HSICmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_HSICmd$35 ==.
	Sstm8s_clk$CLK_HSICmd$36 ==.
;	StdPeriphLib/src/stm8s_clk.c: 148: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_HSICmd$37 ==.
;	StdPeriphLib/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
	bset	0x50c0, #0
	jra	00104$
00102$:
	Sstm8s_clk$CLK_HSICmd$38 ==.
;	StdPeriphLib/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	bres	0x50c0, #0
00104$:
	Sstm8s_clk$CLK_HSICmd$39 ==.
;	StdPeriphLib/src/stm8s_clk.c: 158: }
	Sstm8s_clk$CLK_HSICmd$40 ==.
	XG$CLK_HSICmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_HSICmd$41 ==.
	Sstm8s_clk$CLK_LSICmd$42 ==.
;	StdPeriphLib/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_LSICmd
;	-----------------------------------------
_CLK_LSICmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_LSICmd$43 ==.
	Sstm8s_clk$CLK_LSICmd$44 ==.
;	StdPeriphLib/src/stm8s_clk.c: 171: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_LSICmd$45 ==.
;	StdPeriphLib/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
	ldw	x, #0x50c0
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_clk$CLK_LSICmd$46 ==.
;	StdPeriphLib/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_clk$CLK_LSICmd$47 ==.
;	StdPeriphLib/src/stm8s_clk.c: 181: }
	Sstm8s_clk$CLK_LSICmd$48 ==.
	XG$CLK_LSICmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_LSICmd$49 ==.
	Sstm8s_clk$CLK_CCOCmd$50 ==.
;	StdPeriphLib/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_CCOCmd
;	-----------------------------------------
_CLK_CCOCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_CCOCmd$51 ==.
	Sstm8s_clk$CLK_CCOCmd$52 ==.
;	StdPeriphLib/src/stm8s_clk.c: 194: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_CCOCmd$53 ==.
;	StdPeriphLib/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
	bset	0x50c9, #0
	jra	00104$
00102$:
	Sstm8s_clk$CLK_CCOCmd$54 ==.
;	StdPeriphLib/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
	bres	0x50c9, #0
00104$:
	Sstm8s_clk$CLK_CCOCmd$55 ==.
;	StdPeriphLib/src/stm8s_clk.c: 204: }
	Sstm8s_clk$CLK_CCOCmd$56 ==.
	XG$CLK_CCOCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_CCOCmd$57 ==.
	Sstm8s_clk$CLK_ClockSwitchCmd$58 ==.
;	StdPeriphLib/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ClockSwitchCmd
;	-----------------------------------------
_CLK_ClockSwitchCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_ClockSwitchCmd$59 ==.
	Sstm8s_clk$CLK_ClockSwitchCmd$60 ==.
;	StdPeriphLib/src/stm8s_clk.c: 218: if (NewState != DISABLE )
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_ClockSwitchCmd$61 ==.
;	StdPeriphLib/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_clk$CLK_ClockSwitchCmd$62 ==.
;	StdPeriphLib/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_clk$CLK_ClockSwitchCmd$63 ==.
;	StdPeriphLib/src/stm8s_clk.c: 228: }
	Sstm8s_clk$CLK_ClockSwitchCmd$64 ==.
	XG$CLK_ClockSwitchCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_ClockSwitchCmd$65 ==.
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$66 ==.
;	StdPeriphLib/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_SlowActiveHaltWakeUpCmd
;	-----------------------------------------
_CLK_SlowActiveHaltWakeUpCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$67 ==.
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$68 ==.
;	StdPeriphLib/src/stm8s_clk.c: 243: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$69 ==.
;	StdPeriphLib/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
	ldw	x, #0x50c0
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$70 ==.
;	StdPeriphLib/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$71 ==.
;	StdPeriphLib/src/stm8s_clk.c: 253: }
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$72 ==.
	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$73 ==.
	Sstm8s_clk$CLK_PeripheralClockConfig$74 ==.
;	StdPeriphLib/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
_CLK_PeripheralClockConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_PeripheralClockConfig$75 ==.
	sub	sp, #4
	Sstm8s_clk$CLK_PeripheralClockConfig$76 ==.
;	StdPeriphLib/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
	ld	a, (0x09, sp)
	bcp	a, #0x10
	jrne	00108$
	Sstm8s_clk$CLK_PeripheralClockConfig$77 ==.
;	StdPeriphLib/src/stm8s_clk.c: 271: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00102$
	Sstm8s_clk$CLK_PeripheralClockConfig$78 ==.
;	StdPeriphLib/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ldw	x, #0x50c7
	ld	a, (x)
	ld	xl, a
	ld	a, (0x09, sp)
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x05, sp), a
	pop	a
	tnz	a
	jreq	00124$
00123$:
	sll	(0x04, sp)
	dec	a
	jrne	00123$
00124$:
	ld	a, xl
	or	a, (0x04, sp)
	ldw	x, #0x50c7
	ld	(x), a
	jp	00110$
00102$:
	Sstm8s_clk$CLK_PeripheralClockConfig$79 ==.
;	StdPeriphLib/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	ldw	x, #0x50c7
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x09, sp)
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00126$
00125$:
	sll	(1, sp)
	dec	a
	jrne	00125$
00126$:
	pop	a
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x50c7
	ld	(x), a
	jra	00110$
00108$:
	Sstm8s_clk$CLK_PeripheralClockConfig$80 ==.
;	StdPeriphLib/src/stm8s_clk.c: 284: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00105$
	Sstm8s_clk$CLK_PeripheralClockConfig$81 ==.
;	StdPeriphLib/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ldw	x, #0x50ca
	ld	a, (x)
	ld	xl, a
	ld	a, (0x09, sp)
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00129$
00128$:
	sll	(0x02, sp)
	dec	a
	jrne	00128$
00129$:
	ld	a, xl
	or	a, (0x02, sp)
	ldw	x, #0x50ca
	ld	(x), a
	jra	00110$
00105$:
	Sstm8s_clk$CLK_PeripheralClockConfig$82 ==.
;	StdPeriphLib/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	ldw	x, #0x50ca
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x09, sp)
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00131$
00130$:
	sll	(1, sp)
	dec	a
	jrne	00130$
00131$:
	pop	a
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x50ca
	ld	(x), a
00110$:
	Sstm8s_clk$CLK_PeripheralClockConfig$83 ==.
;	StdPeriphLib/src/stm8s_clk.c: 295: }
	addw	sp, #4
	Sstm8s_clk$CLK_PeripheralClockConfig$84 ==.
	XG$CLK_PeripheralClockConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_PeripheralClockConfig$85 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$86 ==.
;	StdPeriphLib/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
_CLK_ClockSwitchConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_ClockSwitchConfig$87 ==.
	sub	sp, #2
	Sstm8s_clk$CLK_ClockSwitchConfig$88 ==.
;	StdPeriphLib/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
	ldw	x, #0x50c3
	ld	a, (x)
	ld	(0x02, sp), a
	Sstm8s_clk$CLK_ClockSwitchConfig$89 ==.
;	StdPeriphLib/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
	ld	a, (0x07, sp)
	cp	a, #0x01
	jrne	00122$
	Sstm8s_clk$CLK_ClockSwitchConfig$90 ==.
;	StdPeriphLib/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	Sstm8s_clk$CLK_ClockSwitchConfig$91 ==.
;	StdPeriphLib/src/stm8s_clk.c: 331: if (ITState != DISABLE)
	tnz	(0x09, sp)
	jreq	00102$
	Sstm8s_clk$CLK_ClockSwitchConfig$92 ==.
;	StdPeriphLib/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_clk$CLK_ClockSwitchConfig$93 ==.
;	StdPeriphLib/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00103$:
	Sstm8s_clk$CLK_ClockSwitchConfig$94 ==.
;	StdPeriphLib/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x08, sp)
	ld	(x), a
	Sstm8s_clk$CLK_ClockSwitchConfig$95 ==.
;	StdPeriphLib/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
	ldw	x, #0xffff
00105$:
	ldw	y, #0x50c5
	ld	a, (y)
	srl	a
	jrnc	00107$
	tnzw	x
	jreq	00107$
	Sstm8s_clk$CLK_ClockSwitchConfig$96 ==.
;	StdPeriphLib/src/stm8s_clk.c: 346: DownCounter--;
	decw	x
	jra	00105$
00107$:
	Sstm8s_clk$CLK_ClockSwitchConfig$97 ==.
;	StdPeriphLib/src/stm8s_clk.c: 349: if(DownCounter != 0)
	tnzw	x
	jreq	00109$
	Sstm8s_clk$CLK_ClockSwitchConfig$98 ==.
;	StdPeriphLib/src/stm8s_clk.c: 351: Swif = SUCCESS;
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00123$
00109$:
	Sstm8s_clk$CLK_ClockSwitchConfig$99 ==.
;	StdPeriphLib/src/stm8s_clk.c: 355: Swif = ERROR;
	clr	(0x01, sp)
	jra	00123$
00122$:
	Sstm8s_clk$CLK_ClockSwitchConfig$100 ==.
;	StdPeriphLib/src/stm8s_clk.c: 361: if (ITState != DISABLE)
	tnz	(0x09, sp)
	jreq	00112$
	Sstm8s_clk$CLK_ClockSwitchConfig$101 ==.
;	StdPeriphLib/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00113$
00112$:
	Sstm8s_clk$CLK_ClockSwitchConfig$102 ==.
;	StdPeriphLib/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00113$:
	Sstm8s_clk$CLK_ClockSwitchConfig$103 ==.
;	StdPeriphLib/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x08, sp)
	ld	(x), a
	Sstm8s_clk$CLK_ClockSwitchConfig$104 ==.
;	StdPeriphLib/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
	ldw	x, #0xffff
00115$:
	ldw	y, #0x50c5
	ld	a, (y)
	bcp	a, #0x08
	jreq	00117$
	tnzw	x
	jreq	00117$
	Sstm8s_clk$CLK_ClockSwitchConfig$105 ==.
;	StdPeriphLib/src/stm8s_clk.c: 376: DownCounter--;
	decw	x
	jra	00115$
00117$:
	Sstm8s_clk$CLK_ClockSwitchConfig$106 ==.
;	StdPeriphLib/src/stm8s_clk.c: 379: if(DownCounter != 0)
	tnzw	x
	jreq	00119$
	Sstm8s_clk$CLK_ClockSwitchConfig$107 ==.
;	StdPeriphLib/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	Sstm8s_clk$CLK_ClockSwitchConfig$108 ==.
;	StdPeriphLib/src/stm8s_clk.c: 383: Swif = SUCCESS;
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00123$
00119$:
	Sstm8s_clk$CLK_ClockSwitchConfig$109 ==.
;	StdPeriphLib/src/stm8s_clk.c: 387: Swif = ERROR;
	clr	(0x01, sp)
00123$:
	Sstm8s_clk$CLK_ClockSwitchConfig$110 ==.
;	StdPeriphLib/src/stm8s_clk.c: 390: if(Swif != ERROR)
	tnz	(0x01, sp)
	jreq	00136$
	Sstm8s_clk$CLK_ClockSwitchConfig$111 ==.
;	StdPeriphLib/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
	tnz	(0x0a, sp)
	jrne	00132$
	ld	a, (0x02, sp)
	cp	a, #0xe1
	jrne	00132$
	Sstm8s_clk$CLK_ClockSwitchConfig$112 ==.
;	StdPeriphLib/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
	jra	00136$
00132$:
	Sstm8s_clk$CLK_ClockSwitchConfig$113 ==.
;	StdPeriphLib/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
	tnz	(0x0a, sp)
	jrne	00128$
	ld	a, (0x02, sp)
	cp	a, #0xd2
	jrne	00128$
	Sstm8s_clk$CLK_ClockSwitchConfig$114 ==.
;	StdPeriphLib/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00136$
00128$:
	Sstm8s_clk$CLK_ClockSwitchConfig$115 ==.
;	StdPeriphLib/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
	tnz	(0x0a, sp)
	jrne	00136$
	ld	a, (0x02, sp)
	cp	a, #0xb4
	jrne	00136$
	Sstm8s_clk$CLK_ClockSwitchConfig$116 ==.
;	StdPeriphLib/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	ldw	x, #0x50c1
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
00136$:
	Sstm8s_clk$CLK_ClockSwitchConfig$117 ==.
;	StdPeriphLib/src/stm8s_clk.c: 406: return(Swif);
	ld	a, (0x01, sp)
	Sstm8s_clk$CLK_ClockSwitchConfig$118 ==.
;	StdPeriphLib/src/stm8s_clk.c: 407: }
	addw	sp, #2
	Sstm8s_clk$CLK_ClockSwitchConfig$119 ==.
	XG$CLK_ClockSwitchConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_ClockSwitchConfig$120 ==.
	Sstm8s_clk$CLK_HSIPrescalerConfig$121 ==.
;	StdPeriphLib/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
;	-----------------------------------------
;	 function CLK_HSIPrescalerConfig
;	-----------------------------------------
_CLK_HSIPrescalerConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_HSIPrescalerConfig$122 ==.
	Sstm8s_clk$CLK_HSIPrescalerConfig$123 ==.
;	StdPeriphLib/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0xe7
	ld	(x), a
	Sstm8s_clk$CLK_HSIPrescalerConfig$124 ==.
;	StdPeriphLib/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
	ldw	x, #0x50c6
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x50c6
	ld	(x), a
	Sstm8s_clk$CLK_HSIPrescalerConfig$125 ==.
;	StdPeriphLib/src/stm8s_clk.c: 425: }
	Sstm8s_clk$CLK_HSIPrescalerConfig$126 ==.
	XG$CLK_HSIPrescalerConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_HSIPrescalerConfig$127 ==.
	Sstm8s_clk$CLK_CCOConfig$128 ==.
;	StdPeriphLib/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
_CLK_CCOConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_CCOConfig$129 ==.
	Sstm8s_clk$CLK_CCOConfig$130 ==.
;	StdPeriphLib/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
	ldw	x, #0x50c9
	ld	a, (x)
	and	a, #0xe1
	ld	(x), a
	Sstm8s_clk$CLK_CCOConfig$131 ==.
;	StdPeriphLib/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
	ldw	x, #0x50c9
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x50c9
	ld	(x), a
	Sstm8s_clk$CLK_CCOConfig$132 ==.
;	StdPeriphLib/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
	bset	0x50c9, #0
	Sstm8s_clk$CLK_CCOConfig$133 ==.
;	StdPeriphLib/src/stm8s_clk.c: 449: }
	Sstm8s_clk$CLK_CCOConfig$134 ==.
	XG$CLK_CCOConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_CCOConfig$135 ==.
	Sstm8s_clk$CLK_ITConfig$136 ==.
;	StdPeriphLib/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
_CLK_ITConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_ITConfig$137 ==.
	Sstm8s_clk$CLK_ITConfig$138 ==.
;	StdPeriphLib/src/stm8s_clk.c: 465: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00110$
	Sstm8s_clk$CLK_ITConfig$139 ==.
;	StdPeriphLib/src/stm8s_clk.c: 467: switch (CLK_IT)
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jreq	00102$
	ld	a, (0x05, sp)
	cp	a, #0x1c
	jrne	00112$
	Sstm8s_clk$CLK_ITConfig$140 ==.
;	StdPeriphLib/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	Sstm8s_clk$CLK_ITConfig$141 ==.
;	StdPeriphLib/src/stm8s_clk.c: 471: break;
	jra	00112$
	Sstm8s_clk$CLK_ITConfig$142 ==.
;	StdPeriphLib/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
00102$:
	Sstm8s_clk$CLK_ITConfig$143 ==.
;	StdPeriphLib/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
	ldw	x, #0x50c8
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	Sstm8s_clk$CLK_ITConfig$144 ==.
;	StdPeriphLib/src/stm8s_clk.c: 474: break;
	jra	00112$
	Sstm8s_clk$CLK_ITConfig$145 ==.
;	StdPeriphLib/src/stm8s_clk.c: 477: }
00110$:
	Sstm8s_clk$CLK_ITConfig$146 ==.
;	StdPeriphLib/src/stm8s_clk.c: 481: switch (CLK_IT)
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jreq	00106$
	ld	a, (0x05, sp)
	cp	a, #0x1c
	jrne	00112$
	Sstm8s_clk$CLK_ITConfig$147 ==.
;	StdPeriphLib/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
	Sstm8s_clk$CLK_ITConfig$148 ==.
;	StdPeriphLib/src/stm8s_clk.c: 485: break;
	jra	00112$
	Sstm8s_clk$CLK_ITConfig$149 ==.
;	StdPeriphLib/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
00106$:
	Sstm8s_clk$CLK_ITConfig$150 ==.
;	StdPeriphLib/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
	ldw	x, #0x50c8
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
	Sstm8s_clk$CLK_ITConfig$151 ==.
;	StdPeriphLib/src/stm8s_clk.c: 491: }
00112$:
	Sstm8s_clk$CLK_ITConfig$152 ==.
;	StdPeriphLib/src/stm8s_clk.c: 493: }
	Sstm8s_clk$CLK_ITConfig$153 ==.
	XG$CLK_ITConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_ITConfig$154 ==.
	Sstm8s_clk$CLK_SYSCLKConfig$155 ==.
;	StdPeriphLib/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
;	-----------------------------------------
;	 function CLK_SYSCLKConfig
;	-----------------------------------------
_CLK_SYSCLKConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_SYSCLKConfig$156 ==.
	sub	sp, #2
	Sstm8s_clk$CLK_SYSCLKConfig$157 ==.
;	StdPeriphLib/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
	tnz	(0x07, sp)
	jrmi	00102$
	Sstm8s_clk$CLK_SYSCLKConfig$158 ==.
;	StdPeriphLib/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0xe7
	ld	(x), a
	Sstm8s_clk$CLK_SYSCLKConfig$159 ==.
;	StdPeriphLib/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x07, sp)
	and	a, #0x18
	or	a, (0x02, sp)
	ldw	x, #0x50c6
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_clk$CLK_SYSCLKConfig$160 ==.
;	StdPeriphLib/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0xf8
	ld	(x), a
	Sstm8s_clk$CLK_SYSCLKConfig$161 ==.
;	StdPeriphLib/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	and	a, #0x07
	or	a, (0x01, sp)
	ldw	x, #0x50c6
	ld	(x), a
00104$:
	Sstm8s_clk$CLK_SYSCLKConfig$162 ==.
;	StdPeriphLib/src/stm8s_clk.c: 515: }
	addw	sp, #2
	Sstm8s_clk$CLK_SYSCLKConfig$163 ==.
	XG$CLK_SYSCLKConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_SYSCLKConfig$164 ==.
	Sstm8s_clk$CLK_SWIMConfig$165 ==.
;	StdPeriphLib/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
;	-----------------------------------------
;	 function CLK_SWIMConfig
;	-----------------------------------------
_CLK_SWIMConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_SWIMConfig$166 ==.
	Sstm8s_clk$CLK_SWIMConfig$167 ==.
;	StdPeriphLib/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_SWIMConfig$168 ==.
;	StdPeriphLib/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
	bset	0x50cd, #0
	jra	00104$
00102$:
	Sstm8s_clk$CLK_SWIMConfig$169 ==.
;	StdPeriphLib/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
	bres	0x50cd, #0
00104$:
	Sstm8s_clk$CLK_SWIMConfig$170 ==.
;	StdPeriphLib/src/stm8s_clk.c: 538: }
	Sstm8s_clk$CLK_SWIMConfig$171 ==.
	XG$CLK_SWIMConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_SWIMConfig$172 ==.
	Sstm8s_clk$CLK_ClockSecuritySystemEnable$173 ==.
;	StdPeriphLib/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
_CLK_ClockSecuritySystemEnable:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_ClockSecuritySystemEnable$174 ==.
	Sstm8s_clk$CLK_ClockSecuritySystemEnable$175 ==.
;	StdPeriphLib/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
	bset	0x50c8, #0
	Sstm8s_clk$CLK_ClockSecuritySystemEnable$176 ==.
;	StdPeriphLib/src/stm8s_clk.c: 551: }
	Sstm8s_clk$CLK_ClockSecuritySystemEnable$177 ==.
	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_ClockSecuritySystemEnable$178 ==.
	Sstm8s_clk$CLK_GetSYSCLKSource$179 ==.
;	StdPeriphLib/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
;	-----------------------------------------
;	 function CLK_GetSYSCLKSource
;	-----------------------------------------
_CLK_GetSYSCLKSource:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_GetSYSCLKSource$180 ==.
	Sstm8s_clk$CLK_GetSYSCLKSource$181 ==.
;	StdPeriphLib/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
	ldw	x, #0x50c3
	ld	a, (x)
	Sstm8s_clk$CLK_GetSYSCLKSource$182 ==.
;	StdPeriphLib/src/stm8s_clk.c: 562: }
	Sstm8s_clk$CLK_GetSYSCLKSource$183 ==.
	XG$CLK_GetSYSCLKSource$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_GetSYSCLKSource$184 ==.
	Sstm8s_clk$CLK_GetClockFreq$185 ==.
;	StdPeriphLib/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_GetClockFreq$186 ==.
	sub	sp, #7
	Sstm8s_clk$CLK_GetClockFreq$187 ==.
;	StdPeriphLib/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
	ldw	x, #0x50c3
	ld	a, (x)
	ld	(0x01, sp), a
	Sstm8s_clk$CLK_GetClockFreq$188 ==.
;	StdPeriphLib/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
	ld	a, (0x01, sp)
	cp	a, #0xe1
	jrne	00105$
	Sstm8s_clk$CLK_GetClockFreq$189 ==.
;	StdPeriphLib/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0x18
	Sstm8s_clk$CLK_GetClockFreq$190 ==.
;	StdPeriphLib/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
	srl	a
	srl	a
	srl	a
	Sstm8s_clk$CLK_GetClockFreq$191 ==.
;	StdPeriphLib/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
	ldw	x, #_HSIDivFactor+0
	ldw	(0x06, sp), x
	clrw	x
	ld	xl, a
	addw	x, (0x06, sp)
	ld	a, (x)
	Sstm8s_clk$CLK_GetClockFreq$192 ==.
;	StdPeriphLib/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
	clrw	x
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
	call	__divulong
	addw	sp, #8
	ldw	(0x04, sp), x
	jra	00106$
00105$:
	Sstm8s_clk$CLK_GetClockFreq$193 ==.
;	StdPeriphLib/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
	ld	a, (0x01, sp)
	cp	a, #0xd2
	jrne	00102$
	Sstm8s_clk$CLK_GetClockFreq$194 ==.
;	StdPeriphLib/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
	ldw	x, #0xf400
	ldw	(0x04, sp), x
	ldw	y, #0x0001
	jra	00106$
00102$:
	Sstm8s_clk$CLK_GetClockFreq$195 ==.
;	StdPeriphLib/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
	ldw	x, #0x2400
	ldw	(0x04, sp), x
	ldw	y, #0x00f4
00106$:
	Sstm8s_clk$CLK_GetClockFreq$196 ==.
;	StdPeriphLib/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
	ldw	x, (0x04, sp)
	Sstm8s_clk$CLK_GetClockFreq$197 ==.
;	StdPeriphLib/src/stm8s_clk.c: 595: }
	addw	sp, #7
	Sstm8s_clk$CLK_GetClockFreq$198 ==.
	XG$CLK_GetClockFreq$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_GetClockFreq$199 ==.
	Sstm8s_clk$CLK_AdjustHSICalibrationValue$200 ==.
;	StdPeriphLib/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
;	-----------------------------------------
;	 function CLK_AdjustHSICalibrationValue
;	-----------------------------------------
_CLK_AdjustHSICalibrationValue:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_AdjustHSICalibrationValue$201 ==.
	Sstm8s_clk$CLK_AdjustHSICalibrationValue$202 ==.
;	StdPeriphLib/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
	ldw	x, #0x50cc
	ld	a, (x)
	and	a, #0xf8
	or	a, (0x05, sp)
	ldw	x, #0x50cc
	ld	(x), a
	Sstm8s_clk$CLK_AdjustHSICalibrationValue$203 ==.
;	StdPeriphLib/src/stm8s_clk.c: 611: }
	Sstm8s_clk$CLK_AdjustHSICalibrationValue$204 ==.
	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_AdjustHSICalibrationValue$205 ==.
	Sstm8s_clk$CLK_SYSCLKEmergencyClear$206 ==.
;	StdPeriphLib/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
;	-----------------------------------------
;	 function CLK_SYSCLKEmergencyClear
;	-----------------------------------------
_CLK_SYSCLKEmergencyClear:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_SYSCLKEmergencyClear$207 ==.
	Sstm8s_clk$CLK_SYSCLKEmergencyClear$208 ==.
;	StdPeriphLib/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
	bres	0x50c5, #0
	Sstm8s_clk$CLK_SYSCLKEmergencyClear$209 ==.
;	StdPeriphLib/src/stm8s_clk.c: 625: }
	Sstm8s_clk$CLK_SYSCLKEmergencyClear$210 ==.
	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_SYSCLKEmergencyClear$211 ==.
	Sstm8s_clk$CLK_GetFlagStatus$212 ==.
;	StdPeriphLib/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
_CLK_GetFlagStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_GetFlagStatus$213 ==.
	push	a
	Sstm8s_clk$CLK_GetFlagStatus$214 ==.
;	StdPeriphLib/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
	clr	a
	ld	xl, a
	ld	a, (0x06, sp)
	ld	xh, a
	Sstm8s_clk$CLK_GetFlagStatus$215 ==.
;	StdPeriphLib/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
	cpw	x, #0x0100
	jrne	00111$
	Sstm8s_clk$CLK_GetFlagStatus$216 ==.
;	StdPeriphLib/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
	ldw	x, #0x50c0
	ld	a, (x)
	jra	00112$
00111$:
	Sstm8s_clk$CLK_GetFlagStatus$217 ==.
;	StdPeriphLib/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
	cpw	x, #0x0200
	jrne	00108$
	Sstm8s_clk$CLK_GetFlagStatus$218 ==.
;	StdPeriphLib/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
	ldw	x, #0x50c1
	ld	a, (x)
	jra	00112$
00108$:
	Sstm8s_clk$CLK_GetFlagStatus$219 ==.
;	StdPeriphLib/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
	cpw	x, #0x0300
	jrne	00105$
	Sstm8s_clk$CLK_GetFlagStatus$220 ==.
;	StdPeriphLib/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
	ldw	x, #0x50c5
	ld	a, (x)
	jra	00112$
00105$:
	Sstm8s_clk$CLK_GetFlagStatus$221 ==.
;	StdPeriphLib/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
	cpw	x, #0x0400
	jrne	00102$
	Sstm8s_clk$CLK_GetFlagStatus$222 ==.
;	StdPeriphLib/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
	ldw	x, #0x50c8
	ld	a, (x)
	jra	00112$
00102$:
	Sstm8s_clk$CLK_GetFlagStatus$223 ==.
;	StdPeriphLib/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
	ldw	x, #0x50c9
	ld	a, (x)
00112$:
	Sstm8s_clk$CLK_GetFlagStatus$224 ==.
;	StdPeriphLib/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
	push	a
	ld	a, (0x08, sp)
	ld	(0x02, sp), a
	pop	a
	and	a, (0x01, sp)
	tnz	a
	jreq	00114$
	Sstm8s_clk$CLK_GetFlagStatus$225 ==.
;	StdPeriphLib/src/stm8s_clk.c: 670: bitstatus = SET;
	ld	a, #0x01
	jra	00115$
00114$:
	Sstm8s_clk$CLK_GetFlagStatus$226 ==.
;	StdPeriphLib/src/stm8s_clk.c: 674: bitstatus = RESET;
	clr	a
00115$:
	Sstm8s_clk$CLK_GetFlagStatus$227 ==.
;	StdPeriphLib/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
	Sstm8s_clk$CLK_GetFlagStatus$228 ==.
;	StdPeriphLib/src/stm8s_clk.c: 679: }
	addw	sp, #1
	Sstm8s_clk$CLK_GetFlagStatus$229 ==.
	XG$CLK_GetFlagStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_GetFlagStatus$230 ==.
	Sstm8s_clk$CLK_GetITStatus$231 ==.
;	StdPeriphLib/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
_CLK_GetITStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_GetITStatus$232 ==.
	Sstm8s_clk$CLK_GetITStatus$233 ==.
;	StdPeriphLib/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
	ld	a, (0x05, sp)
	cp	a, #0x1c
	jrne	00108$
	Sstm8s_clk$CLK_GetITStatus$234 ==.
;	StdPeriphLib/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, (0x05, sp)
	cp	a, #0x0c
	jrne	00102$
	Sstm8s_clk$CLK_GetITStatus$235 ==.
;	StdPeriphLib/src/stm8s_clk.c: 699: bitstatus = SET;
	ld	a, #0x01
	jra	00109$
00102$:
	Sstm8s_clk$CLK_GetITStatus$236 ==.
;	StdPeriphLib/src/stm8s_clk.c: 703: bitstatus = RESET;
	clr	a
	jra	00109$
00108$:
	Sstm8s_clk$CLK_GetITStatus$237 ==.
;	StdPeriphLib/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ldw	x, #0x50c8
	ld	a, (x)
	and	a, (0x05, sp)
	cp	a, #0x0c
	jrne	00105$
	Sstm8s_clk$CLK_GetITStatus$238 ==.
;	StdPeriphLib/src/stm8s_clk.c: 711: bitstatus = SET;
	ld	a, #0x01
	jra	00109$
00105$:
	Sstm8s_clk$CLK_GetITStatus$239 ==.
;	StdPeriphLib/src/stm8s_clk.c: 715: bitstatus = RESET;
	clr	a
00109$:
	Sstm8s_clk$CLK_GetITStatus$240 ==.
;	StdPeriphLib/src/stm8s_clk.c: 720: return bitstatus;
	Sstm8s_clk$CLK_GetITStatus$241 ==.
;	StdPeriphLib/src/stm8s_clk.c: 721: }
	Sstm8s_clk$CLK_GetITStatus$242 ==.
	XG$CLK_GetITStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_GetITStatus$243 ==.
	Sstm8s_clk$CLK_ClearITPendingBit$244 ==.
;	StdPeriphLib/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
_CLK_ClearITPendingBit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_clk$CLK_ClearITPendingBit$245 ==.
	Sstm8s_clk$CLK_ClearITPendingBit$246 ==.
;	StdPeriphLib/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jrne	00102$
	Sstm8s_clk$CLK_ClearITPendingBit$247 ==.
;	StdPeriphLib/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
	ldw	x, #0x50c8
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_clk$CLK_ClearITPendingBit$248 ==.
;	StdPeriphLib/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_clk$CLK_ClearITPendingBit$249 ==.
;	StdPeriphLib/src/stm8s_clk.c: 745: }
	Sstm8s_clk$CLK_ClearITPendingBit$250 ==.
	XG$CLK_ClearITPendingBit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_clk$CLK_ClearITPendingBit$251 ==.
	.area CODE
G$HSIDivFactor$0$0 == .
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
G$CLKPrescTable$0$0 == .
_CLKPrescTable:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x10	; 16
	.db #0x14	; 20
	.db #0x28	; 40
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
	.ascii "StdPeriphLib/src/stm8s_clk.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_DeInit$0)
	.db	3
	.sleb128	71
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$2-Sstm8s_clk$CLK_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$3-Sstm8s_clk$CLK_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$4-Sstm8s_clk$CLK_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$5-Sstm8s_clk$CLK_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$6-Sstm8s_clk$CLK_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$7-Sstm8s_clk$CLK_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$8-Sstm8s_clk$CLK_DeInit$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$9-Sstm8s_clk$CLK_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$10-Sstm8s_clk$CLK_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$11-Sstm8s_clk$CLK_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$12-Sstm8s_clk$CLK_DeInit$11
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$13-Sstm8s_clk$CLK_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$14-Sstm8s_clk$CLK_DeInit$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_DeInit$15-Sstm8s_clk$CLK_DeInit$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_DeInit$16-Sstm8s_clk$CLK_DeInit$15
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$18)
	.db	3
	.sleb128	98
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20-Sstm8s_clk$CLK_FastHaltWakeUpCmd$18
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21-Sstm8s_clk$CLK_FastHaltWakeUpCmd$20
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$22-Sstm8s_clk$CLK_FastHaltWakeUpCmd$21
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23-Sstm8s_clk$CLK_FastHaltWakeUpCmd$22
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_FastHaltWakeUpCmd$24-Sstm8s_clk$CLK_FastHaltWakeUpCmd$23
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_HSECmd$26)
	.db	3
	.sleb128	120
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$28-Sstm8s_clk$CLK_HSECmd$26
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$29-Sstm8s_clk$CLK_HSECmd$28
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$30-Sstm8s_clk$CLK_HSECmd$29
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$31-Sstm8s_clk$CLK_HSECmd$30
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_HSECmd$32-Sstm8s_clk$CLK_HSECmd$31
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_HSICmd$34)
	.db	3
	.sleb128	142
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSICmd$36-Sstm8s_clk$CLK_HSICmd$34
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSICmd$37-Sstm8s_clk$CLK_HSICmd$36
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSICmd$38-Sstm8s_clk$CLK_HSICmd$37
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSICmd$39-Sstm8s_clk$CLK_HSICmd$38
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_HSICmd$40-Sstm8s_clk$CLK_HSICmd$39
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_LSICmd$42)
	.db	3
	.sleb128	165
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_LSICmd$44-Sstm8s_clk$CLK_LSICmd$42
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_LSICmd$45-Sstm8s_clk$CLK_LSICmd$44
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_LSICmd$46-Sstm8s_clk$CLK_LSICmd$45
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_LSICmd$47-Sstm8s_clk$CLK_LSICmd$46
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_LSICmd$48-Sstm8s_clk$CLK_LSICmd$47
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_CCOCmd$50)
	.db	3
	.sleb128	188
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOCmd$52-Sstm8s_clk$CLK_CCOCmd$50
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOCmd$53-Sstm8s_clk$CLK_CCOCmd$52
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOCmd$54-Sstm8s_clk$CLK_CCOCmd$53
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOCmd$55-Sstm8s_clk$CLK_CCOCmd$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_CCOCmd$56-Sstm8s_clk$CLK_CCOCmd$55
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$58)
	.db	3
	.sleb128	212
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$60-Sstm8s_clk$CLK_ClockSwitchCmd$58
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$61-Sstm8s_clk$CLK_ClockSwitchCmd$60
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$62-Sstm8s_clk$CLK_ClockSwitchCmd$61
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$63-Sstm8s_clk$CLK_ClockSwitchCmd$62
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_ClockSwitchCmd$64-Sstm8s_clk$CLK_ClockSwitchCmd$63
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$66)
	.db	3
	.sleb128	237
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$68-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$66
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$69-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$68
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$70-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$69
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$71-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$70
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$72-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$71
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$74)
	.db	3
	.sleb128	262
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$76-Sstm8s_clk$CLK_PeripheralClockConfig$74
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$77-Sstm8s_clk$CLK_PeripheralClockConfig$76
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$78-Sstm8s_clk$CLK_PeripheralClockConfig$77
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$79-Sstm8s_clk$CLK_PeripheralClockConfig$78
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$80-Sstm8s_clk$CLK_PeripheralClockConfig$79
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$81-Sstm8s_clk$CLK_PeripheralClockConfig$80
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$82-Sstm8s_clk$CLK_PeripheralClockConfig$81
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$83-Sstm8s_clk$CLK_PeripheralClockConfig$82
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_PeripheralClockConfig$84-Sstm8s_clk$CLK_PeripheralClockConfig$83
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$86)
	.db	3
	.sleb128	308
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$88-Sstm8s_clk$CLK_ClockSwitchConfig$86
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$89-Sstm8s_clk$CLK_ClockSwitchConfig$88
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$90-Sstm8s_clk$CLK_ClockSwitchConfig$89
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$91-Sstm8s_clk$CLK_ClockSwitchConfig$90
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$92-Sstm8s_clk$CLK_ClockSwitchConfig$91
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$93-Sstm8s_clk$CLK_ClockSwitchConfig$92
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$94-Sstm8s_clk$CLK_ClockSwitchConfig$93
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$95-Sstm8s_clk$CLK_ClockSwitchConfig$94
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$96-Sstm8s_clk$CLK_ClockSwitchConfig$95
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$97-Sstm8s_clk$CLK_ClockSwitchConfig$96
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$98-Sstm8s_clk$CLK_ClockSwitchConfig$97
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$99-Sstm8s_clk$CLK_ClockSwitchConfig$98
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$100-Sstm8s_clk$CLK_ClockSwitchConfig$99
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$101-Sstm8s_clk$CLK_ClockSwitchConfig$100
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$102-Sstm8s_clk$CLK_ClockSwitchConfig$101
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$103-Sstm8s_clk$CLK_ClockSwitchConfig$102
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$104-Sstm8s_clk$CLK_ClockSwitchConfig$103
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$105-Sstm8s_clk$CLK_ClockSwitchConfig$104
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$106-Sstm8s_clk$CLK_ClockSwitchConfig$105
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$107-Sstm8s_clk$CLK_ClockSwitchConfig$106
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$108-Sstm8s_clk$CLK_ClockSwitchConfig$107
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$109-Sstm8s_clk$CLK_ClockSwitchConfig$108
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$110-Sstm8s_clk$CLK_ClockSwitchConfig$109
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$111-Sstm8s_clk$CLK_ClockSwitchConfig$110
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$112-Sstm8s_clk$CLK_ClockSwitchConfig$111
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$113-Sstm8s_clk$CLK_ClockSwitchConfig$112
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$114-Sstm8s_clk$CLK_ClockSwitchConfig$113
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$115-Sstm8s_clk$CLK_ClockSwitchConfig$114
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$116-Sstm8s_clk$CLK_ClockSwitchConfig$115
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$117-Sstm8s_clk$CLK_ClockSwitchConfig$116
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$118-Sstm8s_clk$CLK_ClockSwitchConfig$117
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_ClockSwitchConfig$119-Sstm8s_clk$CLK_ClockSwitchConfig$118
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$121)
	.db	3
	.sleb128	414
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$123-Sstm8s_clk$CLK_HSIPrescalerConfig$121
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$124-Sstm8s_clk$CLK_HSIPrescalerConfig$123
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$125-Sstm8s_clk$CLK_HSIPrescalerConfig$124
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_HSIPrescalerConfig$126-Sstm8s_clk$CLK_HSIPrescalerConfig$125
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_CCOConfig$128)
	.db	3
	.sleb128	435
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOConfig$130-Sstm8s_clk$CLK_CCOConfig$128
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOConfig$131-Sstm8s_clk$CLK_CCOConfig$130
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOConfig$132-Sstm8s_clk$CLK_CCOConfig$131
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_CCOConfig$133-Sstm8s_clk$CLK_CCOConfig$132
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_CCOConfig$134-Sstm8s_clk$CLK_CCOConfig$133
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_ITConfig$136)
	.db	3
	.sleb128	458
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$138-Sstm8s_clk$CLK_ITConfig$136
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$139-Sstm8s_clk$CLK_ITConfig$138
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$140-Sstm8s_clk$CLK_ITConfig$139
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$141-Sstm8s_clk$CLK_ITConfig$140
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$142-Sstm8s_clk$CLK_ITConfig$141
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$143-Sstm8s_clk$CLK_ITConfig$142
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$144-Sstm8s_clk$CLK_ITConfig$143
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$145-Sstm8s_clk$CLK_ITConfig$144
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$146-Sstm8s_clk$CLK_ITConfig$145
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$147-Sstm8s_clk$CLK_ITConfig$146
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$148-Sstm8s_clk$CLK_ITConfig$147
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$149-Sstm8s_clk$CLK_ITConfig$148
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$150-Sstm8s_clk$CLK_ITConfig$149
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$151-Sstm8s_clk$CLK_ITConfig$150
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ITConfig$152-Sstm8s_clk$CLK_ITConfig$151
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_ITConfig$153-Sstm8s_clk$CLK_ITConfig$152
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$155)
	.db	3
	.sleb128	499
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKConfig$157-Sstm8s_clk$CLK_SYSCLKConfig$155
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKConfig$158-Sstm8s_clk$CLK_SYSCLKConfig$157
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKConfig$159-Sstm8s_clk$CLK_SYSCLKConfig$158
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKConfig$160-Sstm8s_clk$CLK_SYSCLKConfig$159
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKConfig$161-Sstm8s_clk$CLK_SYSCLKConfig$160
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKConfig$162-Sstm8s_clk$CLK_SYSCLKConfig$161
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_SYSCLKConfig$163-Sstm8s_clk$CLK_SYSCLKConfig$162
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$165)
	.db	3
	.sleb128	522
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SWIMConfig$167-Sstm8s_clk$CLK_SWIMConfig$165
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SWIMConfig$168-Sstm8s_clk$CLK_SWIMConfig$167
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SWIMConfig$169-Sstm8s_clk$CLK_SWIMConfig$168
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SWIMConfig$170-Sstm8s_clk$CLK_SWIMConfig$169
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_SWIMConfig$171-Sstm8s_clk$CLK_SWIMConfig$170
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$173)
	.db	3
	.sleb128	546
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$175-Sstm8s_clk$CLK_ClockSecuritySystemEnable$173
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$176-Sstm8s_clk$CLK_ClockSecuritySystemEnable$175
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_ClockSecuritySystemEnable$177-Sstm8s_clk$CLK_ClockSecuritySystemEnable$176
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$179)
	.db	3
	.sleb128	558
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$181-Sstm8s_clk$CLK_GetSYSCLKSource$179
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$182-Sstm8s_clk$CLK_GetSYSCLKSource$181
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_GetSYSCLKSource$183-Sstm8s_clk$CLK_GetSYSCLKSource$182
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$185)
	.db	3
	.sleb128	568
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$187-Sstm8s_clk$CLK_GetClockFreq$185
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$188-Sstm8s_clk$CLK_GetClockFreq$187
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$189-Sstm8s_clk$CLK_GetClockFreq$188
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$190-Sstm8s_clk$CLK_GetClockFreq$189
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$191-Sstm8s_clk$CLK_GetClockFreq$190
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$192-Sstm8s_clk$CLK_GetClockFreq$191
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$193-Sstm8s_clk$CLK_GetClockFreq$192
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$194-Sstm8s_clk$CLK_GetClockFreq$193
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$195-Sstm8s_clk$CLK_GetClockFreq$194
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$196-Sstm8s_clk$CLK_GetClockFreq$195
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$197-Sstm8s_clk$CLK_GetClockFreq$196
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_GetClockFreq$198-Sstm8s_clk$CLK_GetClockFreq$197
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$200)
	.db	3
	.sleb128	603
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$202-Sstm8s_clk$CLK_AdjustHSICalibrationValue$200
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$203-Sstm8s_clk$CLK_AdjustHSICalibrationValue$202
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_AdjustHSICalibrationValue$204-Sstm8s_clk$CLK_AdjustHSICalibrationValue$203
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$206)
	.db	3
	.sleb128	621
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$208-Sstm8s_clk$CLK_SYSCLKEmergencyClear$206
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$209-Sstm8s_clk$CLK_SYSCLKEmergencyClear$208
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_SYSCLKEmergencyClear$210-Sstm8s_clk$CLK_SYSCLKEmergencyClear$209
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$212)
	.db	3
	.sleb128	633
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$214-Sstm8s_clk$CLK_GetFlagStatus$212
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$215-Sstm8s_clk$CLK_GetFlagStatus$214
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$216-Sstm8s_clk$CLK_GetFlagStatus$215
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$217-Sstm8s_clk$CLK_GetFlagStatus$216
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$218-Sstm8s_clk$CLK_GetFlagStatus$217
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$219-Sstm8s_clk$CLK_GetFlagStatus$218
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$220-Sstm8s_clk$CLK_GetFlagStatus$219
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$221-Sstm8s_clk$CLK_GetFlagStatus$220
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$222-Sstm8s_clk$CLK_GetFlagStatus$221
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$223-Sstm8s_clk$CLK_GetFlagStatus$222
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$224-Sstm8s_clk$CLK_GetFlagStatus$223
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$225-Sstm8s_clk$CLK_GetFlagStatus$224
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$226-Sstm8s_clk$CLK_GetFlagStatus$225
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$227-Sstm8s_clk$CLK_GetFlagStatus$226
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetFlagStatus$228-Sstm8s_clk$CLK_GetFlagStatus$227
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_GetFlagStatus$229-Sstm8s_clk$CLK_GetFlagStatus$228
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_GetITStatus$231)
	.db	3
	.sleb128	686
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$233-Sstm8s_clk$CLK_GetITStatus$231
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$234-Sstm8s_clk$CLK_GetITStatus$233
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$235-Sstm8s_clk$CLK_GetITStatus$234
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$236-Sstm8s_clk$CLK_GetITStatus$235
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$237-Sstm8s_clk$CLK_GetITStatus$236
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$238-Sstm8s_clk$CLK_GetITStatus$237
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$239-Sstm8s_clk$CLK_GetITStatus$238
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$240-Sstm8s_clk$CLK_GetITStatus$239
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetITStatus$241-Sstm8s_clk$CLK_GetITStatus$240
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_GetITStatus$242-Sstm8s_clk$CLK_GetITStatus$241
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$244)
	.db	3
	.sleb128	728
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClearITPendingBit$246-Sstm8s_clk$CLK_ClearITPendingBit$244
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClearITPendingBit$247-Sstm8s_clk$CLK_ClearITPendingBit$246
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClearITPendingBit$248-Sstm8s_clk$CLK_ClearITPendingBit$247
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClearITPendingBit$249-Sstm8s_clk$CLK_ClearITPendingBit$248
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_clk$CLK_ClearITPendingBit$250-Sstm8s_clk$CLK_ClearITPendingBit$249
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$245)
	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$251)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_GetITStatus$232)
	.dw	0,(Sstm8s_clk$CLK_GetITStatus$243)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$213)
	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$230)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$207)
	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$211)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$201)
	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$205)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$186)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$199)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$180)
	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$184)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$174)
	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$178)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$166)
	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$172)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$156)
	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$164)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_ITConfig$137)
	.dw	0,(Sstm8s_clk$CLK_ITConfig$154)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_CCOConfig$129)
	.dw	0,(Sstm8s_clk$CLK_CCOConfig$135)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$122)
	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$127)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$87)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$120)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$75)
	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$85)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$67)
	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$73)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$59)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$65)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_CCOCmd$51)
	.dw	0,(Sstm8s_clk$CLK_CCOCmd$57)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_LSICmd$43)
	.dw	0,(Sstm8s_clk$CLK_LSICmd$49)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_HSICmd$35)
	.dw	0,(Sstm8s_clk$CLK_HSICmd$41)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_HSECmd$27)
	.dw	0,(Sstm8s_clk$CLK_HSECmd$33)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$25)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
	.dw	0,(Sstm8s_clk$CLK_DeInit$17)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	11
	.uleb128	52
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	0
	.uleb128	0
	.uleb128	12
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
	.uleb128	16
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	63
	.uleb128	12
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
	.uleb128	14
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
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
	.uleb128	10
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
	.uleb128	9
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
	.uleb128	7
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	13
	.uleb128	38
	.db	0
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
	.uleb128	15
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
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
	.ascii "StdPeriphLib/src/stm8s_clk.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.ascii "CLK_DeInit"
	.db	0
	.dw	0,(_CLK_DeInit)
	.dw	0,(XG$CLK_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+440)
	.uleb128	3
	.dw	0,156
	.ascii "CLK_FastHaltWakeUpCmd"
	.db	0
	.dw	0,(_CLK_FastHaltWakeUpCmd)
	.dw	0,(XG$CLK_FastHaltWakeUpCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+420)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	6
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,222
	.ascii "CLK_HSECmd"
	.db	0
	.dw	0,(_CLK_HSECmd)
	.dw	0,(XG$CLK_HSECmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+400)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,271
	.ascii "CLK_HSICmd"
	.db	0
	.dw	0,(_CLK_HSICmd)
	.dw	0,(XG$CLK_HSICmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,320
	.ascii "CLK_LSICmd"
	.db	0
	.dw	0,(_CLK_LSICmd)
	.dw	0,(XG$CLK_LSICmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,369
	.ascii "CLK_CCOCmd"
	.db	0
	.dw	0,(_CLK_CCOCmd)
	.dw	0,(XG$CLK_CCOCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,426
	.ascii "CLK_ClockSwitchCmd"
	.db	0
	.dw	0,(_CLK_ClockSwitchCmd)
	.dw	0,(XG$CLK_ClockSwitchCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,492
	.ascii "CLK_SlowActiveHaltWakeUpCmd"
	.db	0
	.dw	0,(_CLK_SlowActiveHaltWakeUpCmd)
	.dw	0,(XG$CLK_SlowActiveHaltWakeUpCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,589
	.ascii "CLK_PeripheralClockConfig"
	.db	0
	.dw	0,(_CLK_PeripheralClockConfig)
	.dw	0,(XG$CLK_PeripheralClockConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_Peripheral"
	.db	0
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	7
	.dw	0,584
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.dw	0,806
	.ascii "CLK_ClockSwitchConfig"
	.db	0
	.dw	0,(_CLK_ClockSwitchConfig)
	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_SwitchMode"
	.db	0
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "CLK_NewClock"
	.db	0
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ITState"
	.db	0
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "CLK_CurrentClockState"
	.db	0
	.dw	0,156
	.uleb128	7
	.dw	0,734
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	7
	.dw	0,745
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	7
	.dw	0,754
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "clock_master"
	.db	0
	.dw	0,156
	.uleb128	11
	.ascii "DownCounter"
	.db	0
	.dw	0,806
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-2
	.ascii "Swif"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	6
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	3
	.dw	0,885
	.ascii "CLK_HSIPrescalerConfig"
	.db	0
	.dw	0,(_CLK_HSIPrescalerConfig)
	.dw	0,(XG$CLK_HSIPrescalerConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "HSIPrescaler"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	3
	.dw	0,934
	.ascii "CLK_CCOConfig"
	.db	0
	.dw	0,(_CLK_CCOConfig)
	.dw	0,(XG$CLK_CCOConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_CCO"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	3
	.dw	0,1008
	.ascii "CLK_ITConfig"
	.db	0
	.dw	0,(_CLK_ITConfig)
	.dw	0,(XG$CLK_ITConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_IT"
	.db	0
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,156
	.uleb128	7
	.dw	0,1004
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.uleb128	5
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,1068
	.ascii "CLK_SYSCLKConfig"
	.db	0
	.dw	0,(_CLK_SYSCLKConfig)
	.dw	0,(XG$CLK_SYSCLKConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_Prescaler"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,1128
	.ascii "CLK_SWIMConfig"
	.db	0
	.dw	0,(_CLK_SWIMConfig)
	.dw	0,(XG$CLK_SWIMConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_SWIMDivider"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	2
	.ascii "CLK_ClockSecuritySystemEnable"
	.db	0
	.dw	0,(_CLK_ClockSecuritySystemEnable)
	.dw	0,(XG$CLK_ClockSecuritySystemEnable$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	12
	.ascii "CLK_GetSYSCLKSource"
	.db	0
	.dw	0,(_CLK_GetSYSCLKSource)
	.dw	0,(XG$CLK_GetSYSCLKSource$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.dw	0,156
	.uleb128	6
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	9
	.dw	0,1337
	.ascii "CLK_GetClockFreq"
	.db	0
	.dw	0,(_CLK_GetClockFreq)
	.dw	0,(XG$CLK_GetClockFreq$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.dw	0,1210
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-6
	.ascii "clockfrequency"
	.db	0
	.dw	0,1210
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-7
	.ascii "clocksource"
	.db	0
	.dw	0,156
	.uleb128	10
	.db	1
	.db	81
	.ascii "tmp"
	.db	0
	.dw	0,156
	.uleb128	10
	.db	1
	.db	81
	.ascii "presc"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	3
	.dw	0,1418
	.ascii "CLK_AdjustHSICalibrationValue"
	.db	0
	.dw	0,(_CLK_AdjustHSICalibrationValue)
	.dw	0,(XG$CLK_AdjustHSICalibrationValue$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_HSICalibrationValue"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	2
	.ascii "CLK_SYSCLKEmergencyClear"
	.db	0
	.dw	0,(_CLK_SYSCLKEmergencyClear)
	.dw	0,(XG$CLK_SYSCLKEmergencyClear$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	9
	.dw	0,1568
	.ascii "CLK_GetFlagStatus"
	.db	0
	.dw	0,(_CLK_GetFlagStatus)
	.dw	0,(XG$CLK_GetFlagStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_FLAG"
	.db	0
	.dw	0,806
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	11
	.ascii "statusreg"
	.db	0
	.dw	0,806
	.uleb128	10
	.db	1
	.db	81
	.ascii "tmpreg"
	.db	0
	.dw	0,156
	.uleb128	10
	.db	1
	.db	81
	.ascii "bitstatus"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	9
	.dw	0,1655
	.ascii "CLK_GetITStatus"
	.db	0
	.dw	0,(_CLK_GetITStatus)
	.dw	0,(XG$CLK_GetITStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,156
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_IT"
	.db	0
	.dw	0,156
	.uleb128	7
	.dw	0,1629
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	7
	.dw	0,1637
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	10
	.db	1
	.db	81
	.ascii "bitstatus"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	3
	.dw	0,1713
	.ascii "CLK_ClearITPendingBit"
	.db	0
	.dw	0,(_CLK_ClearITPendingBit)
	.dw	0,(XG$CLK_ClearITPendingBit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "CLK_IT"
	.db	0
	.dw	0,156
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	13
	.dw	0,156
	.uleb128	14
	.dw	0,1731
	.db	4
	.dw	0,1713
	.uleb128	15
	.db	3
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(_HSIDivFactor)
	.ascii "HSIDivFactor"
	.db	0
	.db	1
	.dw	0,1718
	.uleb128	14
	.dw	0,1769
	.db	8
	.dw	0,1713
	.uleb128	15
	.db	7
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(_CLKPrescTable)
	.ascii "CLKPrescTable"
	.db	0
	.db	1
	.dw	0,1756
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
	.dw	0,71
	.ascii "CLK_DeInit"
	.db	0
	.dw	0,96
	.ascii "CLK_FastHaltWakeUpCmd"
	.db	0
	.dw	0,173
	.ascii "CLK_HSECmd"
	.db	0
	.dw	0,222
	.ascii "CLK_HSICmd"
	.db	0
	.dw	0,271
	.ascii "CLK_LSICmd"
	.db	0
	.dw	0,320
	.ascii "CLK_CCOCmd"
	.db	0
	.dw	0,369
	.ascii "CLK_ClockSwitchCmd"
	.db	0
	.dw	0,426
	.ascii "CLK_SlowActiveHaltWakeUpCmd"
	.db	0
	.dw	0,492
	.ascii "CLK_PeripheralClockConfig"
	.db	0
	.dw	0,589
	.ascii "CLK_ClockSwitchConfig"
	.db	0
	.dw	0,822
	.ascii "CLK_HSIPrescalerConfig"
	.db	0
	.dw	0,885
	.ascii "CLK_CCOConfig"
	.db	0
	.dw	0,934
	.ascii "CLK_ITConfig"
	.db	0
	.dw	0,1008
	.ascii "CLK_SYSCLKConfig"
	.db	0
	.dw	0,1068
	.ascii "CLK_SWIMConfig"
	.db	0
	.dw	0,1128
	.ascii "CLK_ClockSecuritySystemEnable"
	.db	0
	.dw	0,1172
	.ascii "CLK_GetSYSCLKSource"
	.db	0
	.dw	0,1227
	.ascii "CLK_GetClockFreq"
	.db	0
	.dw	0,1337
	.ascii "CLK_AdjustHSICalibrationValue"
	.db	0
	.dw	0,1418
	.ascii "CLK_SYSCLKEmergencyClear"
	.db	0
	.dw	0,1457
	.ascii "CLK_GetFlagStatus"
	.db	0
	.dw	0,1568
	.ascii "CLK_GetITStatus"
	.db	0
	.dw	0,1655
	.ascii "CLK_ClearITPendingBit"
	.db	0
	.dw	0,1731
	.ascii "HSIDivFactor"
	.db	0
	.dw	0,1769
	.ascii "CLKPrescTable"
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
