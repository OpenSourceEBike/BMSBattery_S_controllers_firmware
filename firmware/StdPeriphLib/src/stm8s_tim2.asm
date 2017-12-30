;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_DeInit
	.globl _TIM2_TimeBaseInit
	.globl _TIM2_OC1Init
	.globl _TIM2_OC2Init
	.globl _TIM2_OC3Init
	.globl _TIM2_ICInit
	.globl _TIM2_PWMIConfig
	.globl _TIM2_Cmd
	.globl _TIM2_ITConfig
	.globl _TIM2_UpdateDisableConfig
	.globl _TIM2_UpdateRequestConfig
	.globl _TIM2_SelectOnePulseMode
	.globl _TIM2_PrescalerConfig
	.globl _TIM2_ForcedOC1Config
	.globl _TIM2_ForcedOC2Config
	.globl _TIM2_ForcedOC3Config
	.globl _TIM2_ARRPreloadConfig
	.globl _TIM2_OC1PreloadConfig
	.globl _TIM2_OC2PreloadConfig
	.globl _TIM2_OC3PreloadConfig
	.globl _TIM2_GenerateEvent
	.globl _TIM2_OC1PolarityConfig
	.globl _TIM2_OC2PolarityConfig
	.globl _TIM2_OC3PolarityConfig
	.globl _TIM2_CCxCmd
	.globl _TIM2_SelectOCxM
	.globl _TIM2_SetCounter
	.globl _TIM2_SetAutoreload
	.globl _TIM2_SetCompare1
	.globl _TIM2_SetCompare2
	.globl _TIM2_SetCompare3
	.globl _TIM2_SetIC1Prescaler
	.globl _TIM2_SetIC2Prescaler
	.globl _TIM2_SetIC3Prescaler
	.globl _TIM2_GetCapture1
	.globl _TIM2_GetCapture2
	.globl _TIM2_GetCapture3
	.globl _TIM2_GetCounter
	.globl _TIM2_GetPrescaler
	.globl _TIM2_GetFlagStatus
	.globl _TIM2_ClearFlag
	.globl _TIM2_GetITStatus
	.globl _TIM2_ClearITPendingBit
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
	Sstm8s_tim2$TIM2_DeInit$0 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
;	-----------------------------------------
;	 function TIM2_DeInit
;	-----------------------------------------
_TIM2_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_DeInit$1 ==.
	Sstm8s_tim2$TIM2_DeInit$2 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
	mov	0x5300+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$3 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
	mov	0x5301+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$4 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
	mov	0x5303+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$5 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
	mov	0x5308+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$6 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
	mov	0x5309+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$7 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
	mov	0x5308+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$8 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
	mov	0x5309+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$9 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
	mov	0x5305+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$10 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
	mov	0x5306+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$11 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
	mov	0x5307+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$12 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
	mov	0x530a+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$13 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
	mov	0x530b+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$14 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
	mov	0x530c+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$15 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
	mov	0x530d+0, #0xff
	Sstm8s_tim2$TIM2_DeInit$16 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
	mov	0x530e+0, #0xff
	Sstm8s_tim2$TIM2_DeInit$17 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
	mov	0x530f+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$18 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
	mov	0x5310+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$19 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
	mov	0x5311+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$20 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
	mov	0x5312+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$21 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
	mov	0x5313+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$22 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
	mov	0x5314+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$23 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
	mov	0x5302+0, #0x00
	Sstm8s_tim2$TIM2_DeInit$24 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 81: }
	Sstm8s_tim2$TIM2_DeInit$25 ==.
	XG$TIM2_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_DeInit$26 ==.
	Sstm8s_tim2$TIM2_TimeBaseInit$27 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
;	-----------------------------------------
;	 function TIM2_TimeBaseInit
;	-----------------------------------------
_TIM2_TimeBaseInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_TimeBaseInit$28 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_TimeBaseInit$29 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
	ldw	x, #0x530c
	ld	a, (0x07, sp)
	ld	(x), a
	Sstm8s_tim2$TIM2_TimeBaseInit$30 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
	ld	a, (0x08, sp)
	clr	(0x01, sp)
	ldw	x, #0x530d
	ld	(x), a
	Sstm8s_tim2$TIM2_TimeBaseInit$31 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
	ld	a, (0x09, sp)
	ldw	x, #0x530e
	ld	(x), a
	Sstm8s_tim2$TIM2_TimeBaseInit$32 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 97: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_TimeBaseInit$33 ==.
	XG$TIM2_TimeBaseInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_TimeBaseInit$34 ==.
	Sstm8s_tim2$TIM2_OC1Init$35 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC1Init
;	-----------------------------------------
_TIM2_OC1Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC1Init$36 ==.
	sub	sp, #4
	Sstm8s_tim2$TIM2_OC1Init$37 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
	Sstm8s_tim2$TIM2_OC1Init$38 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) |
	ldw	x, #0x5308
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x0a, sp)
	and	a, #0x01
	ld	(0x03, sp), a
	Sstm8s_tim2$TIM2_OC1Init$39 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
	ld	a, (0x0d, sp)
	and	a, #0x02
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x5308
	ld	(x), a
	Sstm8s_tim2$TIM2_OC1Init$40 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ldw	x, #0x5305
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_OC1Init$41 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
	or	a, (0x09, sp)
	ldw	x, #0x5305
	ld	(x), a
	Sstm8s_tim2$TIM2_OC1Init$42 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x0b, sp)
	clr	(0x01, sp)
	ldw	x, #0x530f
	ld	(x), a
	Sstm8s_tim2$TIM2_OC1Init$43 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x0c, sp)
	ldw	x, #0x5310
	ld	(x), a
	Sstm8s_tim2$TIM2_OC1Init$44 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 131: }
	addw	sp, #4
	Sstm8s_tim2$TIM2_OC1Init$45 ==.
	XG$TIM2_OC1Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC1Init$46 ==.
	Sstm8s_tim2$TIM2_OC2Init$47 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC2Init
;	-----------------------------------------
_TIM2_OC2Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC2Init$48 ==.
	sub	sp, #4
	Sstm8s_tim2$TIM2_OC2Init$49 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
	Sstm8s_tim2$TIM2_OC2Init$50 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
	ldw	x, #0x5308
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x0a, sp)
	and	a, #0x10
	ld	(0x01, sp), a
	Sstm8s_tim2$TIM2_OC2Init$51 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
	ld	a, (0x0d, sp)
	and	a, #0x20
	or	a, (0x01, sp)
	or	a, (0x04, sp)
	ldw	x, #0x5308
	ld	(x), a
	Sstm8s_tim2$TIM2_OC2Init$52 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ldw	x, #0x5306
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_OC2Init$53 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
	or	a, (0x09, sp)
	ldw	x, #0x5306
	ld	(x), a
	Sstm8s_tim2$TIM2_OC2Init$54 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x0b, sp)
	clr	(0x02, sp)
	ldw	x, #0x5311
	ld	(x), a
	Sstm8s_tim2$TIM2_OC2Init$55 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x0c, sp)
	ldw	x, #0x5312
	ld	(x), a
	Sstm8s_tim2$TIM2_OC2Init$56 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 168: }
	addw	sp, #4
	Sstm8s_tim2$TIM2_OC2Init$57 ==.
	XG$TIM2_OC2Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC2Init$58 ==.
	Sstm8s_tim2$TIM2_OC3Init$59 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC3Init
;	-----------------------------------------
_TIM2_OC3Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC3Init$60 ==.
	sub	sp, #4
	Sstm8s_tim2$TIM2_OC3Init$61 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
	ldw	x, #0x5309
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
	Sstm8s_tim2$TIM2_OC3Init$62 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |
	ldw	x, #0x5309
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x0a, sp)
	and	a, #0x01
	ld	(0x04, sp), a
	Sstm8s_tim2$TIM2_OC3Init$63 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
	ld	a, (0x0d, sp)
	and	a, #0x02
	or	a, (0x04, sp)
	or	a, (0x03, sp)
	ldw	x, #0x5309
	ld	(x), a
	Sstm8s_tim2$TIM2_OC3Init$64 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ldw	x, #0x5307
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_OC3Init$65 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
	or	a, (0x09, sp)
	ldw	x, #0x5307
	ld	(x), a
	Sstm8s_tim2$TIM2_OC3Init$66 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x0b, sp)
	clr	(0x01, sp)
	ldw	x, #0x5313
	ld	(x), a
	Sstm8s_tim2$TIM2_OC3Init$67 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x0c, sp)
	ldw	x, #0x5314
	ld	(x), a
	Sstm8s_tim2$TIM2_OC3Init$68 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 201: }
	addw	sp, #4
	Sstm8s_tim2$TIM2_OC3Init$69 ==.
	XG$TIM2_OC3Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC3Init$70 ==.
	Sstm8s_tim2$TIM2_ICInit$71 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
;	-----------------------------------------
;	 function TIM2_ICInit
;	-----------------------------------------
_TIM2_ICInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ICInit$72 ==.
	Sstm8s_tim2$TIM2_ICInit$73 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00105$
	Sstm8s_tim2$TIM2_ICInit$74 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_ICInit$75 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
	jra	00107$
00105$:
	Sstm8s_tim2$TIM2_ICInit$76 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00102$
	Sstm8s_tim2$TIM2_ICInit$77 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_ICInit$78 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	jra	00107$
00102$:
	Sstm8s_tim2$TIM2_ICInit$79 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI3_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_ICInit$80 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC3Prescaler
	pop	a
00107$:
	Sstm8s_tim2$TIM2_ICInit$81 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 255: }
	Sstm8s_tim2$TIM2_ICInit$82 ==.
	XG$TIM2_ICInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ICInit$83 ==.
	Sstm8s_tim2$TIM2_PWMIConfig$84 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
;	-----------------------------------------
;	 function TIM2_PWMIConfig
;	-----------------------------------------
_TIM2_PWMIConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_PWMIConfig$85 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_PWMIConfig$86 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
	ld	a, (0x08, sp)
	cp	a, #0x44
	jreq	00102$
	Sstm8s_tim2$TIM2_PWMIConfig$87 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
	ld	a, #0x44
	ld	(0x02, sp), a
	jra	00103$
00102$:
	Sstm8s_tim2$TIM2_PWMIConfig$88 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
	clr	(0x02, sp)
00103$:
	Sstm8s_tim2$TIM2_PWMIConfig$89 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
	ld	a, (0x09, sp)
	cp	a, #0x01
	jrne	00105$
	Sstm8s_tim2$TIM2_PWMIConfig$90 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x01, sp), a
	jra	00106$
00105$:
	Sstm8s_tim2$TIM2_PWMIConfig$91 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x01, sp), a
00106$:
	Sstm8s_tim2$TIM2_PWMIConfig$92 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x07, sp)
	jrne	00108$
	Sstm8s_tim2$TIM2_PWMIConfig$93 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$94 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
	Sstm8s_tim2$TIM2_PWMIConfig$95 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$96 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
	Sstm8s_tim2$TIM2_PWMIConfig$97 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$98 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	Sstm8s_tim2$TIM2_PWMIConfig$99 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim2$TIM2_PWMIConfig$100 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
00110$:
	Sstm8s_tim2$TIM2_PWMIConfig$101 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 331: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_PWMIConfig$102 ==.
	XG$TIM2_PWMIConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_PWMIConfig$103 ==.
	Sstm8s_tim2$TIM2_Cmd$104 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_Cmd
;	-----------------------------------------
_TIM2_Cmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_Cmd$105 ==.
	Sstm8s_tim2$TIM2_Cmd$106 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_Cmd$107 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
	bset	0x5300, #0
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_Cmd$108 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
	bres	0x5300, #0
00104$:
	Sstm8s_tim2$TIM2_Cmd$109 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 353: }
	Sstm8s_tim2$TIM2_Cmd$110 ==.
	XG$TIM2_Cmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_Cmd$111 ==.
	Sstm8s_tim2$TIM2_ITConfig$112 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_ITConfig
;	-----------------------------------------
_TIM2_ITConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ITConfig$113 ==.
	push	a
	Sstm8s_tim2$TIM2_ITConfig$114 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
	tnz	(0x07, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_ITConfig$115 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
	ldw	x, #0x5301
	ld	a, (x)
	or	a, (0x06, sp)
	ldw	x, #0x5301
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_ITConfig$116 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
	ldw	x, #0x5301
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5301
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_ITConfig$117 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 384: }
	pop	a
	Sstm8s_tim2$TIM2_ITConfig$118 ==.
	XG$TIM2_ITConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ITConfig$119 ==.
	Sstm8s_tim2$TIM2_UpdateDisableConfig$120 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_UpdateDisableConfig
;	-----------------------------------------
_TIM2_UpdateDisableConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_UpdateDisableConfig$121 ==.
	Sstm8s_tim2$TIM2_UpdateDisableConfig$122 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_UpdateDisableConfig$123 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
	ldw	x, #0x5300
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_UpdateDisableConfig$124 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
	ldw	x, #0x5300
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_UpdateDisableConfig$125 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 406: }
	Sstm8s_tim2$TIM2_UpdateDisableConfig$126 ==.
	XG$TIM2_UpdateDisableConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_UpdateDisableConfig$127 ==.
	Sstm8s_tim2$TIM2_UpdateRequestConfig$128 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
;	-----------------------------------------
;	 function TIM2_UpdateRequestConfig
;	-----------------------------------------
_TIM2_UpdateRequestConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_UpdateRequestConfig$129 ==.
	Sstm8s_tim2$TIM2_UpdateRequestConfig$130 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_UpdateRequestConfig$131 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
	ldw	x, #0x5300
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_UpdateRequestConfig$132 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
	ldw	x, #0x5300
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_UpdateRequestConfig$133 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 430: }
	Sstm8s_tim2$TIM2_UpdateRequestConfig$134 ==.
	XG$TIM2_UpdateRequestConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_UpdateRequestConfig$135 ==.
	Sstm8s_tim2$TIM2_SelectOnePulseMode$136 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
;	-----------------------------------------
;	 function TIM2_SelectOnePulseMode
;	-----------------------------------------
_TIM2_SelectOnePulseMode:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SelectOnePulseMode$137 ==.
	Sstm8s_tim2$TIM2_SelectOnePulseMode$138 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_SelectOnePulseMode$139 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
	ldw	x, #0x5300
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_SelectOnePulseMode$140 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
	ldw	x, #0x5300
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_SelectOnePulseMode$141 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 454: }
	Sstm8s_tim2$TIM2_SelectOnePulseMode$142 ==.
	XG$TIM2_SelectOnePulseMode$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SelectOnePulseMode$143 ==.
	Sstm8s_tim2$TIM2_PrescalerConfig$144 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
;	-----------------------------------------
;	 function TIM2_PrescalerConfig
;	-----------------------------------------
_TIM2_PrescalerConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_PrescalerConfig$145 ==.
	Sstm8s_tim2$TIM2_PrescalerConfig$146 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
	ldw	x, #0x530c
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_tim2$TIM2_PrescalerConfig$147 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
	ldw	x, #0x5304
	ld	a, (0x06, sp)
	ld	(x), a
	Sstm8s_tim2$TIM2_PrescalerConfig$148 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 496: }
	Sstm8s_tim2$TIM2_PrescalerConfig$149 ==.
	XG$TIM2_PrescalerConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_PrescalerConfig$150 ==.
	Sstm8s_tim2$TIM2_ForcedOC1Config$151 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC1Config
;	-----------------------------------------
_TIM2_ForcedOC1Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ForcedOC1Config$152 ==.
	Sstm8s_tim2$TIM2_ForcedOC1Config$153 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
	ldw	x, #0x5305
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_ForcedOC1Config$154 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x05, sp)
	ldw	x, #0x5305
	ld	(x), a
	Sstm8s_tim2$TIM2_ForcedOC1Config$155 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 515: }
	Sstm8s_tim2$TIM2_ForcedOC1Config$156 ==.
	XG$TIM2_ForcedOC1Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ForcedOC1Config$157 ==.
	Sstm8s_tim2$TIM2_ForcedOC2Config$158 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC2Config
;	-----------------------------------------
_TIM2_ForcedOC2Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ForcedOC2Config$159 ==.
	Sstm8s_tim2$TIM2_ForcedOC2Config$160 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
	ldw	x, #0x5306
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_ForcedOC2Config$161 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x05, sp)
	ldw	x, #0x5306
	ld	(x), a
	Sstm8s_tim2$TIM2_ForcedOC2Config$162 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 534: }
	Sstm8s_tim2$TIM2_ForcedOC2Config$163 ==.
	XG$TIM2_ForcedOC2Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ForcedOC2Config$164 ==.
	Sstm8s_tim2$TIM2_ForcedOC3Config$165 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC3Config
;	-----------------------------------------
_TIM2_ForcedOC3Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ForcedOC3Config$166 ==.
	Sstm8s_tim2$TIM2_ForcedOC3Config$167 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
	ldw	x, #0x5307
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_ForcedOC3Config$168 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x05, sp)
	ldw	x, #0x5307
	ld	(x), a
	Sstm8s_tim2$TIM2_ForcedOC3Config$169 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 553: }
	Sstm8s_tim2$TIM2_ForcedOC3Config$170 ==.
	XG$TIM2_ForcedOC3Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ForcedOC3Config$171 ==.
	Sstm8s_tim2$TIM2_ARRPreloadConfig$172 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_ARRPreloadConfig
;	-----------------------------------------
_TIM2_ARRPreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ARRPreloadConfig$173 ==.
	Sstm8s_tim2$TIM2_ARRPreloadConfig$174 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_ARRPreloadConfig$175 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
	bset	0x5300, #7
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_ARRPreloadConfig$176 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
	bres	0x5300, #7
00104$:
	Sstm8s_tim2$TIM2_ARRPreloadConfig$177 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 575: }
	Sstm8s_tim2$TIM2_ARRPreloadConfig$178 ==.
	XG$TIM2_ARRPreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ARRPreloadConfig$179 ==.
	Sstm8s_tim2$TIM2_OC1PreloadConfig$180 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC1PreloadConfig
;	-----------------------------------------
_TIM2_OC1PreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC1PreloadConfig$181 ==.
	Sstm8s_tim2$TIM2_OC1PreloadConfig$182 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_OC1PreloadConfig$183 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
	ldw	x, #0x5305
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_OC1PreloadConfig$184 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	ldw	x, #0x5305
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_OC1PreloadConfig$185 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 597: }
	Sstm8s_tim2$TIM2_OC1PreloadConfig$186 ==.
	XG$TIM2_OC1PreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC1PreloadConfig$187 ==.
	Sstm8s_tim2$TIM2_OC2PreloadConfig$188 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC2PreloadConfig
;	-----------------------------------------
_TIM2_OC2PreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC2PreloadConfig$189 ==.
	Sstm8s_tim2$TIM2_OC2PreloadConfig$190 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_OC2PreloadConfig$191 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
	ldw	x, #0x5306
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_OC2PreloadConfig$192 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	ldw	x, #0x5306
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_OC2PreloadConfig$193 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 619: }
	Sstm8s_tim2$TIM2_OC2PreloadConfig$194 ==.
	XG$TIM2_OC2PreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC2PreloadConfig$195 ==.
	Sstm8s_tim2$TIM2_OC3PreloadConfig$196 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC3PreloadConfig
;	-----------------------------------------
_TIM2_OC3PreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC3PreloadConfig$197 ==.
	Sstm8s_tim2$TIM2_OC3PreloadConfig$198 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_OC3PreloadConfig$199 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
	ldw	x, #0x5307
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_OC3PreloadConfig$200 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	ldw	x, #0x5307
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_OC3PreloadConfig$201 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 641: }
	Sstm8s_tim2$TIM2_OC3PreloadConfig$202 ==.
	XG$TIM2_OC3PreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC3PreloadConfig$203 ==.
	Sstm8s_tim2$TIM2_GenerateEvent$204 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
;	-----------------------------------------
;	 function TIM2_GenerateEvent
;	-----------------------------------------
_TIM2_GenerateEvent:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GenerateEvent$205 ==.
	Sstm8s_tim2$TIM2_GenerateEvent$206 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
	ldw	x, #0x5304
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_tim2$TIM2_GenerateEvent$207 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 660: }
	Sstm8s_tim2$TIM2_GenerateEvent$208 ==.
	XG$TIM2_GenerateEvent$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GenerateEvent$209 ==.
	Sstm8s_tim2$TIM2_OC1PolarityConfig$210 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC1PolarityConfig
;	-----------------------------------------
_TIM2_OC1PolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC1PolarityConfig$211 ==.
	Sstm8s_tim2$TIM2_OC1PolarityConfig$212 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_OC1PolarityConfig$213 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
	ldw	x, #0x5308
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_OC1PolarityConfig$214 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_OC1PolarityConfig$215 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 684: }
	Sstm8s_tim2$TIM2_OC1PolarityConfig$216 ==.
	XG$TIM2_OC1PolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC1PolarityConfig$217 ==.
	Sstm8s_tim2$TIM2_OC2PolarityConfig$218 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC2PolarityConfig
;	-----------------------------------------
_TIM2_OC2PolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC2PolarityConfig$219 ==.
	Sstm8s_tim2$TIM2_OC2PolarityConfig$220 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_OC2PolarityConfig$221 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
	ldw	x, #0x5308
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_OC2PolarityConfig$222 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_OC2PolarityConfig$223 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 708: }
	Sstm8s_tim2$TIM2_OC2PolarityConfig$224 ==.
	XG$TIM2_OC2PolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC2PolarityConfig$225 ==.
	Sstm8s_tim2$TIM2_OC3PolarityConfig$226 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC3PolarityConfig
;	-----------------------------------------
_TIM2_OC3PolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_OC3PolarityConfig$227 ==.
	Sstm8s_tim2$TIM2_OC3PolarityConfig$228 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_OC3PolarityConfig$229 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
	ldw	x, #0x5309
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim2$TIM2_OC3PolarityConfig$230 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
	ldw	x, #0x5309
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_tim2$TIM2_OC3PolarityConfig$231 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 732: }
	Sstm8s_tim2$TIM2_OC3PolarityConfig$232 ==.
	XG$TIM2_OC3PolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_OC3PolarityConfig$233 ==.
	Sstm8s_tim2$TIM2_CCxCmd$234 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_CCxCmd
;	-----------------------------------------
_TIM2_CCxCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_CCxCmd$235 ==.
	Sstm8s_tim2$TIM2_CCxCmd$236 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00114$
	Sstm8s_tim2$TIM2_CCxCmd$237 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim2$TIM2_CCxCmd$238 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
	bset	0x5308, #0
	jra	00116$
00102$:
	Sstm8s_tim2$TIM2_CCxCmd$239 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	0x5308, #0
	jra	00116$
00114$:
	Sstm8s_tim2$TIM2_CCxCmd$240 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00111$
	Sstm8s_tim2$TIM2_CCxCmd$241 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00105$
	Sstm8s_tim2$TIM2_CCxCmd$242 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
	ldw	x, #0x5308
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00116$
00105$:
	Sstm8s_tim2$TIM2_CCxCmd$243 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	jra	00116$
00111$:
	Sstm8s_tim2$TIM2_CCxCmd$244 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00108$
	Sstm8s_tim2$TIM2_CCxCmd$245 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
	bset	0x5309, #0
	jra	00116$
00108$:
	Sstm8s_tim2$TIM2_CCxCmd$246 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
	bres	0x5309, #0
00116$:
	Sstm8s_tim2$TIM2_CCxCmd$247 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 788: }
	Sstm8s_tim2$TIM2_CCxCmd$248 ==.
	XG$TIM2_CCxCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_CCxCmd$249 ==.
	Sstm8s_tim2$TIM2_SelectOCxM$250 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
;	-----------------------------------------
;	 function TIM2_SelectOCxM
;	-----------------------------------------
_TIM2_SelectOCxM:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SelectOCxM$251 ==.
	Sstm8s_tim2$TIM2_SelectOCxM$252 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00105$
	Sstm8s_tim2$TIM2_SelectOCxM$253 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	0x5308, #0
	Sstm8s_tim2$TIM2_SelectOCxM$254 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
	ldw	x, #0x5305
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_SelectOCxM$255 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x5305
	ld	(x), a
	jra	00107$
00105$:
	Sstm8s_tim2$TIM2_SelectOCxM$256 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00102$
	Sstm8s_tim2$TIM2_SelectOCxM$257 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_tim2$TIM2_SelectOCxM$258 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
	ldw	x, #0x5306
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_SelectOCxM$259 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x5306
	ld	(x), a
	jra	00107$
00102$:
	Sstm8s_tim2$TIM2_SelectOCxM$260 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
	bres	0x5309, #0
	Sstm8s_tim2$TIM2_SelectOCxM$261 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
	ldw	x, #0x5307
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim2$TIM2_SelectOCxM$262 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x5307
	ld	(x), a
00107$:
	Sstm8s_tim2$TIM2_SelectOCxM$263 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 843: }
	Sstm8s_tim2$TIM2_SelectOCxM$264 ==.
	XG$TIM2_SelectOCxM$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SelectOCxM$265 ==.
	Sstm8s_tim2$TIM2_SetCounter$266 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM2_SetCounter
;	-----------------------------------------
_TIM2_SetCounter:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetCounter$267 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_SetCounter$268 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x530a
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCounter$269 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
	ld	a, (0x08, sp)
	ldw	x, #0x530b
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCounter$270 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 856: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_SetCounter$271 ==.
	XG$TIM2_SetCounter$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetCounter$272 ==.
	Sstm8s_tim2$TIM2_SetAutoreload$273 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM2_SetAutoreload
;	-----------------------------------------
_TIM2_SetAutoreload:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetAutoreload$274 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_SetAutoreload$275 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x530d
	ld	(x), a
	Sstm8s_tim2$TIM2_SetAutoreload$276 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x08, sp)
	ldw	x, #0x530e
	ld	(x), a
	Sstm8s_tim2$TIM2_SetAutoreload$277 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 869: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_SetAutoreload$278 ==.
	XG$TIM2_SetAutoreload$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetAutoreload$279 ==.
	Sstm8s_tim2$TIM2_SetCompare1$280 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM2_SetCompare1
;	-----------------------------------------
_TIM2_SetCompare1:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetCompare1$281 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_SetCompare1$282 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x530f
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCompare1$283 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x08, sp)
	ldw	x, #0x5310
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCompare1$284 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 882: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_SetCompare1$285 ==.
	XG$TIM2_SetCompare1$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetCompare1$286 ==.
	Sstm8s_tim2$TIM2_SetCompare2$287 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM2_SetCompare2
;	-----------------------------------------
_TIM2_SetCompare2:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetCompare2$288 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_SetCompare2$289 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x5311
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCompare2$290 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x08, sp)
	ldw	x, #0x5312
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCompare2$291 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 895: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_SetCompare2$292 ==.
	XG$TIM2_SetCompare2$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetCompare2$293 ==.
	Sstm8s_tim2$TIM2_SetCompare3$294 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
;	-----------------------------------------
;	 function TIM2_SetCompare3
;	-----------------------------------------
_TIM2_SetCompare3:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetCompare3$295 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_SetCompare3$296 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x5313
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCompare3$297 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
	ld	a, (0x08, sp)
	ldw	x, #0x5314
	ld	(x), a
	Sstm8s_tim2$TIM2_SetCompare3$298 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 908: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_SetCompare3$299 ==.
	XG$TIM2_SetCompare3$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetCompare3$300 ==.
	Sstm8s_tim2$TIM2_SetIC1Prescaler$301 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC1Prescaler
;	-----------------------------------------
_TIM2_SetIC1Prescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetIC1Prescaler$302 ==.
	Sstm8s_tim2$TIM2_SetIC1Prescaler$303 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ldw	x, #0x5305
	ld	a, (x)
	and	a, #0xf3
	Sstm8s_tim2$TIM2_SetIC1Prescaler$304 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
	or	a, (0x05, sp)
	ldw	x, #0x5305
	ld	(x), a
	Sstm8s_tim2$TIM2_SetIC1Prescaler$305 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 928: }
	Sstm8s_tim2$TIM2_SetIC1Prescaler$306 ==.
	XG$TIM2_SetIC1Prescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetIC1Prescaler$307 ==.
	Sstm8s_tim2$TIM2_SetIC2Prescaler$308 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC2Prescaler
;	-----------------------------------------
_TIM2_SetIC2Prescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetIC2Prescaler$309 ==.
	Sstm8s_tim2$TIM2_SetIC2Prescaler$310 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ldw	x, #0x5306
	ld	a, (x)
	and	a, #0xf3
	Sstm8s_tim2$TIM2_SetIC2Prescaler$311 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
	or	a, (0x05, sp)
	ldw	x, #0x5306
	ld	(x), a
	Sstm8s_tim2$TIM2_SetIC2Prescaler$312 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 948: }
	Sstm8s_tim2$TIM2_SetIC2Prescaler$313 ==.
	XG$TIM2_SetIC2Prescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetIC2Prescaler$314 ==.
	Sstm8s_tim2$TIM2_SetIC3Prescaler$315 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC3Prescaler
;	-----------------------------------------
_TIM2_SetIC3Prescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_SetIC3Prescaler$316 ==.
	Sstm8s_tim2$TIM2_SetIC3Prescaler$317 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ldw	x, #0x5307
	ld	a, (x)
	and	a, #0xf3
	Sstm8s_tim2$TIM2_SetIC3Prescaler$318 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
	or	a, (0x05, sp)
	ldw	x, #0x5307
	ld	(x), a
	Sstm8s_tim2$TIM2_SetIC3Prescaler$319 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 968: }
	Sstm8s_tim2$TIM2_SetIC3Prescaler$320 ==.
	XG$TIM2_SetIC3Prescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_SetIC3Prescaler$321 ==.
	Sstm8s_tim2$TIM2_GetCapture1$322 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
;	-----------------------------------------
;	 function TIM2_GetCapture1
;	-----------------------------------------
_TIM2_GetCapture1:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GetCapture1$323 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_GetCapture1$324 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
	ldw	x, #0x530f
	ld	a, (x)
	ld	yl, a
	Sstm8s_tim2$TIM2_GetCapture1$325 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
	ldw	x, #0x5310
	ld	a, (x)
	Sstm8s_tim2$TIM2_GetCapture1$326 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
	clrw	x
	ld	xl, a
	Sstm8s_tim2$TIM2_GetCapture1$327 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clr	a
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	Sstm8s_tim2$TIM2_GetCapture1$328 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
	Sstm8s_tim2$TIM2_GetCapture1$329 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 988: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_GetCapture1$330 ==.
	XG$TIM2_GetCapture1$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GetCapture1$331 ==.
	Sstm8s_tim2$TIM2_GetCapture2$332 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
;	-----------------------------------------
;	 function TIM2_GetCapture2
;	-----------------------------------------
_TIM2_GetCapture2:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GetCapture2$333 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_GetCapture2$334 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
	ldw	x, #0x5311
	ld	a, (x)
	ld	yl, a
	Sstm8s_tim2$TIM2_GetCapture2$335 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
	ldw	x, #0x5312
	ld	a, (x)
	Sstm8s_tim2$TIM2_GetCapture2$336 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
	clrw	x
	ld	xl, a
	Sstm8s_tim2$TIM2_GetCapture2$337 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clr	a
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	Sstm8s_tim2$TIM2_GetCapture2$338 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
	Sstm8s_tim2$TIM2_GetCapture2$339 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1008: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_GetCapture2$340 ==.
	XG$TIM2_GetCapture2$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GetCapture2$341 ==.
	Sstm8s_tim2$TIM2_GetCapture3$342 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
;	-----------------------------------------
;	 function TIM2_GetCapture3
;	-----------------------------------------
_TIM2_GetCapture3:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GetCapture3$343 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_GetCapture3$344 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
	ldw	x, #0x5313
	ld	a, (x)
	ld	yl, a
	Sstm8s_tim2$TIM2_GetCapture3$345 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
	ldw	x, #0x5314
	ld	a, (x)
	Sstm8s_tim2$TIM2_GetCapture3$346 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
	clrw	x
	ld	xl, a
	Sstm8s_tim2$TIM2_GetCapture3$347 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
	clr	a
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	Sstm8s_tim2$TIM2_GetCapture3$348 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
	Sstm8s_tim2$TIM2_GetCapture3$349 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1028: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_GetCapture3$350 ==.
	XG$TIM2_GetCapture3$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GetCapture3$351 ==.
	Sstm8s_tim2$TIM2_GetCounter$352 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
;	-----------------------------------------
;	 function TIM2_GetCounter
;	-----------------------------------------
_TIM2_GetCounter:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GetCounter$353 ==.
	sub	sp, #4
	Sstm8s_tim2$TIM2_GetCounter$354 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
	ldw	x, #0x530a
	ld	a, (x)
	ld	xh, a
	clr	a
	clr	a
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_GetCounter$355 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
	ldw	y, #0x530b
	ld	a, (y)
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	Sstm8s_tim2$TIM2_GetCounter$356 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1042: }
	addw	sp, #4
	Sstm8s_tim2$TIM2_GetCounter$357 ==.
	XG$TIM2_GetCounter$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GetCounter$358 ==.
	Sstm8s_tim2$TIM2_GetPrescaler$359 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM2_GetPrescaler
;	-----------------------------------------
_TIM2_GetPrescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GetPrescaler$360 ==.
	Sstm8s_tim2$TIM2_GetPrescaler$361 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
	ldw	x, #0x530c
	ld	a, (x)
	Sstm8s_tim2$TIM2_GetPrescaler$362 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1053: }
	Sstm8s_tim2$TIM2_GetPrescaler$363 ==.
	XG$TIM2_GetPrescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GetPrescaler$364 ==.
	Sstm8s_tim2$TIM2_GetFlagStatus$365 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
;	-----------------------------------------
;	 function TIM2_GetFlagStatus
;	-----------------------------------------
_TIM2_GetFlagStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GetFlagStatus$366 ==.
	sub	sp, #5
	Sstm8s_tim2$TIM2_GetFlagStatus$367 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
	ldw	x, #0x5302
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x0b, sp)
	and	a, (0x03, sp)
	ld	(0x02, sp), a
	Sstm8s_tim2$TIM2_GetFlagStatus$368 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
	ld	a, (0x0a, sp)
	clr	(0x04, sp)
	ld	(0x01, sp), a
	Sstm8s_tim2$TIM2_GetFlagStatus$369 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
	ldw	x, #0x5303
	ld	a, (x)
	and	a, (0x01, sp)
	or	a, (0x02, sp)
	tnz	a
	jreq	00102$
	Sstm8s_tim2$TIM2_GetFlagStatus$370 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1081: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	Sstm8s_tim2$TIM2_GetFlagStatus$371 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1085: bitstatus = RESET;
	clr	a
00103$:
	Sstm8s_tim2$TIM2_GetFlagStatus$372 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
	Sstm8s_tim2$TIM2_GetFlagStatus$373 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1088: }
	addw	sp, #5
	Sstm8s_tim2$TIM2_GetFlagStatus$374 ==.
	XG$TIM2_GetFlagStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GetFlagStatus$375 ==.
	Sstm8s_tim2$TIM2_ClearFlag$376 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
;	-----------------------------------------
;	 function TIM2_ClearFlag
;	-----------------------------------------
_TIM2_ClearFlag:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ClearFlag$377 ==.
	sub	sp, #2
	Sstm8s_tim2$TIM2_ClearFlag$378 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
	ld	a, (0x08, sp)
	cpl	a
	ldw	x, #0x5302
	ld	(x), a
	Sstm8s_tim2$TIM2_ClearFlag$379 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1111: TIM2->SR2 = (uint8_t)(~((uint8_t)(TIM2_FLAG >> 8))); // [Roshan, 2015-Nov-09]
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	cpl	a
	ldw	x, #0x5303
	ld	(x), a
	Sstm8s_tim2$TIM2_ClearFlag$380 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1112: }
	addw	sp, #2
	Sstm8s_tim2$TIM2_ClearFlag$381 ==.
	XG$TIM2_ClearFlag$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ClearFlag$382 ==.
	Sstm8s_tim2$TIM2_GetITStatus$383 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1124: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
;	-----------------------------------------
;	 function TIM2_GetITStatus
;	-----------------------------------------
_TIM2_GetITStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_GetITStatus$384 ==.
	push	a
	Sstm8s_tim2$TIM2_GetITStatus$385 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1132: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
	ldw	x, #0x5302
	ld	a, (x)
	and	a, (0x06, sp)
	ld	(0x01, sp), a
	Sstm8s_tim2$TIM2_GetITStatus$386 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1134: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
	ldw	x, #0x5301
	ld	a, (x)
	and	a, (0x06, sp)
	Sstm8s_tim2$TIM2_GetITStatus$387 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1136: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
	Sstm8s_tim2$TIM2_GetITStatus$388 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1138: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	Sstm8s_tim2$TIM2_GetITStatus$389 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1142: bitstatus = RESET;
	clr	a
00103$:
	Sstm8s_tim2$TIM2_GetITStatus$390 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1144: return (ITStatus)(bitstatus);
	Sstm8s_tim2$TIM2_GetITStatus$391 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1145: }
	addw	sp, #1
	Sstm8s_tim2$TIM2_GetITStatus$392 ==.
	XG$TIM2_GetITStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_GetITStatus$393 ==.
	Sstm8s_tim2$TIM2_ClearITPendingBit$394 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1157: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
;	-----------------------------------------
;	 function TIM2_ClearITPendingBit
;	-----------------------------------------
_TIM2_ClearITPendingBit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TIM2_ClearITPendingBit$395 ==.
	Sstm8s_tim2$TIM2_ClearITPendingBit$396 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1163: TIM2->SR1 = (uint8_t)(~TIM2_IT);
	ld	a, (0x05, sp)
	cpl	a
	ldw	x, #0x5302
	ld	(x), a
	Sstm8s_tim2$TIM2_ClearITPendingBit$397 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1164: }
	Sstm8s_tim2$TIM2_ClearITPendingBit$398 ==.
	XG$TIM2_ClearITPendingBit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TIM2_ClearITPendingBit$399 ==.
	Sstm8s_tim2$TI1_Config$400 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1182: static void TI1_Config(uint8_t TIM2_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TI1_Config$401 ==.
	push	a
	Sstm8s_tim2$TI1_Config$402 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1187: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	0x5308, #0
	Sstm8s_tim2$TI1_Config$403 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1190: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
	ldw	x, #0x5305
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim2$TI1_Config$404 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1191: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x08, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5305
	ld	(x), a
	Sstm8s_tim2$TI1_Config$405 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1194: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim2$TI1_Config$406 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1196: TIM2->CCER1 |= TIM2_CCER1_CC1P;
	ldw	x, #0x5308
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim2$TI1_Config$407 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1200: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
	Sstm8s_tim2$TI1_Config$408 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1203: TIM2->CCER1 |= TIM2_CCER1_CC1E;
	bset	0x5308, #0
	Sstm8s_tim2$TI1_Config$409 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1204: }
	pop	a
	Sstm8s_tim2$TI1_Config$410 ==.
	XFstm8s_tim2$TI1_Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TI1_Config$411 ==.
	Sstm8s_tim2$TI2_Config$412 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1222: static void TI2_Config(uint8_t TIM2_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TI2_Config$413 ==.
	push	a
	Sstm8s_tim2$TI2_Config$414 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1227: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_tim2$TI2_Config$415 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1230: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
	ldw	x, #0x5306
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim2$TI2_Config$416 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1231: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x08, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5306
	ld	(x), a
	Sstm8s_tim2$TI2_Config$417 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1235: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim2$TI2_Config$418 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1237: TIM2->CCER1 |= TIM2_CCER1_CC2P;
	ldw	x, #0x5308
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim2$TI2_Config$419 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1241: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
	ldw	x, #0x5308
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00103$:
	Sstm8s_tim2$TI2_Config$420 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1245: TIM2->CCER1 |= TIM2_CCER1_CC2E;
	ldw	x, #0x5308
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	Sstm8s_tim2$TI2_Config$421 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1246: }
	pop	a
	Sstm8s_tim2$TI2_Config$422 ==.
	XFstm8s_tim2$TI2_Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TI2_Config$423 ==.
	Sstm8s_tim2$TI3_Config$424 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1262: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
;	-----------------------------------------
;	 function TI3_Config
;	-----------------------------------------
_TI3_Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim2$TI3_Config$425 ==.
	push	a
	Sstm8s_tim2$TI3_Config$426 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1266: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
	bres	0x5309, #0
	Sstm8s_tim2$TI3_Config$427 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1269: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF)))
	ldw	x, #0x5307
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim2$TI3_Config$428 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1270: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x08, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5307
	ld	(x), a
	Sstm8s_tim2$TI3_Config$429 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1274: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim2$TI3_Config$430 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1276: TIM2->CCER2 |= TIM2_CCER2_CC3P;
	ldw	x, #0x5309
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim2$TI3_Config$431 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1280: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
	ldw	x, #0x5309
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
	Sstm8s_tim2$TI3_Config$432 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1283: TIM2->CCER2 |= TIM2_CCER2_CC3E;
	bset	0x5309, #0
	Sstm8s_tim2$TI3_Config$433 ==.
;	StdPeriphLib/src/stm8s_tim2.c: 1284: }
	pop	a
	Sstm8s_tim2$TI3_Config$434 ==.
	XFstm8s_tim2$TI3_Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim2$TI3_Config$435 ==.
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
	.ascii "StdPeriphLib/src/stm8s_tim2.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$0)
	.db	3
	.sleb128	51
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$2-Sstm8s_tim2$TIM2_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$3-Sstm8s_tim2$TIM2_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$4-Sstm8s_tim2$TIM2_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$5-Sstm8s_tim2$TIM2_DeInit$4
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$6-Sstm8s_tim2$TIM2_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$7-Sstm8s_tim2$TIM2_DeInit$6
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$8-Sstm8s_tim2$TIM2_DeInit$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$9-Sstm8s_tim2$TIM2_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$10-Sstm8s_tim2$TIM2_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$11-Sstm8s_tim2$TIM2_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$12-Sstm8s_tim2$TIM2_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$13-Sstm8s_tim2$TIM2_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$14-Sstm8s_tim2$TIM2_DeInit$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$15-Sstm8s_tim2$TIM2_DeInit$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$16-Sstm8s_tim2$TIM2_DeInit$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$17-Sstm8s_tim2$TIM2_DeInit$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$18-Sstm8s_tim2$TIM2_DeInit$17
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$19-Sstm8s_tim2$TIM2_DeInit$18
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$20-Sstm8s_tim2$TIM2_DeInit$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$21-Sstm8s_tim2$TIM2_DeInit$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$22-Sstm8s_tim2$TIM2_DeInit$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$23-Sstm8s_tim2$TIM2_DeInit$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_DeInit$24-Sstm8s_tim2$TIM2_DeInit$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_DeInit$25-Sstm8s_tim2$TIM2_DeInit$24
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$27)
	.db	3
	.sleb128	88
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$29-Sstm8s_tim2$TIM2_TimeBaseInit$27
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$30-Sstm8s_tim2$TIM2_TimeBaseInit$29
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$31-Sstm8s_tim2$TIM2_TimeBaseInit$30
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$32-Sstm8s_tim2$TIM2_TimeBaseInit$31
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_TimeBaseInit$33-Sstm8s_tim2$TIM2_TimeBaseInit$32
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$35)
	.db	3
	.sleb128	107
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$37-Sstm8s_tim2$TIM2_OC1Init$35
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$38-Sstm8s_tim2$TIM2_OC1Init$37
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$39-Sstm8s_tim2$TIM2_OC1Init$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$40-Sstm8s_tim2$TIM2_OC1Init$39
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$41-Sstm8s_tim2$TIM2_OC1Init$40
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$42-Sstm8s_tim2$TIM2_OC1Init$41
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$43-Sstm8s_tim2$TIM2_OC1Init$42
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1Init$44-Sstm8s_tim2$TIM2_OC1Init$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC1Init$45-Sstm8s_tim2$TIM2_OC1Init$44
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$47)
	.db	3
	.sleb128	141
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$49-Sstm8s_tim2$TIM2_OC2Init$47
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$50-Sstm8s_tim2$TIM2_OC2Init$49
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$51-Sstm8s_tim2$TIM2_OC2Init$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$52-Sstm8s_tim2$TIM2_OC2Init$51
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$53-Sstm8s_tim2$TIM2_OC2Init$52
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$54-Sstm8s_tim2$TIM2_OC2Init$53
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$55-Sstm8s_tim2$TIM2_OC2Init$54
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2Init$56-Sstm8s_tim2$TIM2_OC2Init$55
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC2Init$57-Sstm8s_tim2$TIM2_OC2Init$56
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$59)
	.db	3
	.sleb128	178
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$61-Sstm8s_tim2$TIM2_OC3Init$59
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$62-Sstm8s_tim2$TIM2_OC3Init$61
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$63-Sstm8s_tim2$TIM2_OC3Init$62
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$64-Sstm8s_tim2$TIM2_OC3Init$63
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$65-Sstm8s_tim2$TIM2_OC3Init$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$66-Sstm8s_tim2$TIM2_OC3Init$65
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$67-Sstm8s_tim2$TIM2_OC3Init$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3Init$68-Sstm8s_tim2$TIM2_OC3Init$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC3Init$69-Sstm8s_tim2$TIM2_OC3Init$68
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$71)
	.db	3
	.sleb128	211
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$73-Sstm8s_tim2$TIM2_ICInit$71
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$74-Sstm8s_tim2$TIM2_ICInit$73
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$75-Sstm8s_tim2$TIM2_ICInit$74
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$76-Sstm8s_tim2$TIM2_ICInit$75
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$77-Sstm8s_tim2$TIM2_ICInit$76
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$78-Sstm8s_tim2$TIM2_ICInit$77
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$79-Sstm8s_tim2$TIM2_ICInit$78
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$80-Sstm8s_tim2$TIM2_ICInit$79
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ICInit$81-Sstm8s_tim2$TIM2_ICInit$80
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ICInit$82-Sstm8s_tim2$TIM2_ICInit$81
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$84)
	.db	3
	.sleb128	265
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$86-Sstm8s_tim2$TIM2_PWMIConfig$84
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$87-Sstm8s_tim2$TIM2_PWMIConfig$86
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$88-Sstm8s_tim2$TIM2_PWMIConfig$87
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$89-Sstm8s_tim2$TIM2_PWMIConfig$88
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$90-Sstm8s_tim2$TIM2_PWMIConfig$89
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$91-Sstm8s_tim2$TIM2_PWMIConfig$90
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$92-Sstm8s_tim2$TIM2_PWMIConfig$91
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$93-Sstm8s_tim2$TIM2_PWMIConfig$92
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$94-Sstm8s_tim2$TIM2_PWMIConfig$93
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$95-Sstm8s_tim2$TIM2_PWMIConfig$94
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$96-Sstm8s_tim2$TIM2_PWMIConfig$95
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$97-Sstm8s_tim2$TIM2_PWMIConfig$96
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$98-Sstm8s_tim2$TIM2_PWMIConfig$97
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$99-Sstm8s_tim2$TIM2_PWMIConfig$98
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$100-Sstm8s_tim2$TIM2_PWMIConfig$99
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PWMIConfig$101-Sstm8s_tim2$TIM2_PWMIConfig$100
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_PWMIConfig$102-Sstm8s_tim2$TIM2_PWMIConfig$101
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$104)
	.db	3
	.sleb128	338
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$106-Sstm8s_tim2$TIM2_Cmd$104
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$107-Sstm8s_tim2$TIM2_Cmd$106
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$108-Sstm8s_tim2$TIM2_Cmd$107
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_Cmd$109-Sstm8s_tim2$TIM2_Cmd$108
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_Cmd$110-Sstm8s_tim2$TIM2_Cmd$109
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$112)
	.db	3
	.sleb128	367
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$114-Sstm8s_tim2$TIM2_ITConfig$112
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$115-Sstm8s_tim2$TIM2_ITConfig$114
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$116-Sstm8s_tim2$TIM2_ITConfig$115
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ITConfig$117-Sstm8s_tim2$TIM2_ITConfig$116
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ITConfig$118-Sstm8s_tim2$TIM2_ITConfig$117
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$120)
	.db	3
	.sleb128	391
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$122-Sstm8s_tim2$TIM2_UpdateDisableConfig$120
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$123-Sstm8s_tim2$TIM2_UpdateDisableConfig$122
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$124-Sstm8s_tim2$TIM2_UpdateDisableConfig$123
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$125-Sstm8s_tim2$TIM2_UpdateDisableConfig$124
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_UpdateDisableConfig$126-Sstm8s_tim2$TIM2_UpdateDisableConfig$125
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$128)
	.db	3
	.sleb128	415
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$130-Sstm8s_tim2$TIM2_UpdateRequestConfig$128
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$131-Sstm8s_tim2$TIM2_UpdateRequestConfig$130
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$132-Sstm8s_tim2$TIM2_UpdateRequestConfig$131
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$133-Sstm8s_tim2$TIM2_UpdateRequestConfig$132
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_UpdateRequestConfig$134-Sstm8s_tim2$TIM2_UpdateRequestConfig$133
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$136)
	.db	3
	.sleb128	439
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$138-Sstm8s_tim2$TIM2_SelectOnePulseMode$136
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$139-Sstm8s_tim2$TIM2_SelectOnePulseMode$138
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$140-Sstm8s_tim2$TIM2_SelectOnePulseMode$139
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$141-Sstm8s_tim2$TIM2_SelectOnePulseMode$140
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SelectOnePulseMode$142-Sstm8s_tim2$TIM2_SelectOnePulseMode$141
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$144)
	.db	3
	.sleb128	483
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$146-Sstm8s_tim2$TIM2_PrescalerConfig$144
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$147-Sstm8s_tim2$TIM2_PrescalerConfig$146
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$148-Sstm8s_tim2$TIM2_PrescalerConfig$147
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_PrescalerConfig$149-Sstm8s_tim2$TIM2_PrescalerConfig$148
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$151)
	.db	3
	.sleb128	506
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$153-Sstm8s_tim2$TIM2_ForcedOC1Config$151
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$154-Sstm8s_tim2$TIM2_ForcedOC1Config$153
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$155-Sstm8s_tim2$TIM2_ForcedOC1Config$154
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ForcedOC1Config$156-Sstm8s_tim2$TIM2_ForcedOC1Config$155
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$158)
	.db	3
	.sleb128	525
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$160-Sstm8s_tim2$TIM2_ForcedOC2Config$158
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$161-Sstm8s_tim2$TIM2_ForcedOC2Config$160
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$162-Sstm8s_tim2$TIM2_ForcedOC2Config$161
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ForcedOC2Config$163-Sstm8s_tim2$TIM2_ForcedOC2Config$162
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$165)
	.db	3
	.sleb128	544
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$167-Sstm8s_tim2$TIM2_ForcedOC3Config$165
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$168-Sstm8s_tim2$TIM2_ForcedOC3Config$167
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$169-Sstm8s_tim2$TIM2_ForcedOC3Config$168
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ForcedOC3Config$170-Sstm8s_tim2$TIM2_ForcedOC3Config$169
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$172)
	.db	3
	.sleb128	560
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$174-Sstm8s_tim2$TIM2_ARRPreloadConfig$172
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$175-Sstm8s_tim2$TIM2_ARRPreloadConfig$174
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$176-Sstm8s_tim2$TIM2_ARRPreloadConfig$175
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$177-Sstm8s_tim2$TIM2_ARRPreloadConfig$176
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ARRPreloadConfig$178-Sstm8s_tim2$TIM2_ARRPreloadConfig$177
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$180)
	.db	3
	.sleb128	582
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$182-Sstm8s_tim2$TIM2_OC1PreloadConfig$180
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$183-Sstm8s_tim2$TIM2_OC1PreloadConfig$182
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$184-Sstm8s_tim2$TIM2_OC1PreloadConfig$183
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$185-Sstm8s_tim2$TIM2_OC1PreloadConfig$184
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC1PreloadConfig$186-Sstm8s_tim2$TIM2_OC1PreloadConfig$185
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$188)
	.db	3
	.sleb128	604
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$190-Sstm8s_tim2$TIM2_OC2PreloadConfig$188
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$191-Sstm8s_tim2$TIM2_OC2PreloadConfig$190
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$192-Sstm8s_tim2$TIM2_OC2PreloadConfig$191
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$193-Sstm8s_tim2$TIM2_OC2PreloadConfig$192
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC2PreloadConfig$194-Sstm8s_tim2$TIM2_OC2PreloadConfig$193
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$196)
	.db	3
	.sleb128	626
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$198-Sstm8s_tim2$TIM2_OC3PreloadConfig$196
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$199-Sstm8s_tim2$TIM2_OC3PreloadConfig$198
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$200-Sstm8s_tim2$TIM2_OC3PreloadConfig$199
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$201-Sstm8s_tim2$TIM2_OC3PreloadConfig$200
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC3PreloadConfig$202-Sstm8s_tim2$TIM2_OC3PreloadConfig$201
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$204)
	.db	3
	.sleb128	652
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GenerateEvent$206-Sstm8s_tim2$TIM2_GenerateEvent$204
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GenerateEvent$207-Sstm8s_tim2$TIM2_GenerateEvent$206
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GenerateEvent$208-Sstm8s_tim2$TIM2_GenerateEvent$207
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$210)
	.db	3
	.sleb128	669
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$212-Sstm8s_tim2$TIM2_OC1PolarityConfig$210
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$213-Sstm8s_tim2$TIM2_OC1PolarityConfig$212
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$214-Sstm8s_tim2$TIM2_OC1PolarityConfig$213
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$215-Sstm8s_tim2$TIM2_OC1PolarityConfig$214
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC1PolarityConfig$216-Sstm8s_tim2$TIM2_OC1PolarityConfig$215
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$218)
	.db	3
	.sleb128	693
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$220-Sstm8s_tim2$TIM2_OC2PolarityConfig$218
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$221-Sstm8s_tim2$TIM2_OC2PolarityConfig$220
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$222-Sstm8s_tim2$TIM2_OC2PolarityConfig$221
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$223-Sstm8s_tim2$TIM2_OC2PolarityConfig$222
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC2PolarityConfig$224-Sstm8s_tim2$TIM2_OC2PolarityConfig$223
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$226)
	.db	3
	.sleb128	717
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$228-Sstm8s_tim2$TIM2_OC3PolarityConfig$226
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$229-Sstm8s_tim2$TIM2_OC3PolarityConfig$228
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$230-Sstm8s_tim2$TIM2_OC3PolarityConfig$229
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$231-Sstm8s_tim2$TIM2_OC3PolarityConfig$230
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_OC3PolarityConfig$232-Sstm8s_tim2$TIM2_OC3PolarityConfig$231
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$234)
	.db	3
	.sleb128	744
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$236-Sstm8s_tim2$TIM2_CCxCmd$234
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$237-Sstm8s_tim2$TIM2_CCxCmd$236
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$238-Sstm8s_tim2$TIM2_CCxCmd$237
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$239-Sstm8s_tim2$TIM2_CCxCmd$238
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$240-Sstm8s_tim2$TIM2_CCxCmd$239
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$241-Sstm8s_tim2$TIM2_CCxCmd$240
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$242-Sstm8s_tim2$TIM2_CCxCmd$241
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$243-Sstm8s_tim2$TIM2_CCxCmd$242
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$244-Sstm8s_tim2$TIM2_CCxCmd$243
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$245-Sstm8s_tim2$TIM2_CCxCmd$244
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$246-Sstm8s_tim2$TIM2_CCxCmd$245
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_CCxCmd$247-Sstm8s_tim2$TIM2_CCxCmd$246
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_CCxCmd$248-Sstm8s_tim2$TIM2_CCxCmd$247
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$250)
	.db	3
	.sleb128	809
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$252-Sstm8s_tim2$TIM2_SelectOCxM$250
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$253-Sstm8s_tim2$TIM2_SelectOCxM$252
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$254-Sstm8s_tim2$TIM2_SelectOCxM$253
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$255-Sstm8s_tim2$TIM2_SelectOCxM$254
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$256-Sstm8s_tim2$TIM2_SelectOCxM$255
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$257-Sstm8s_tim2$TIM2_SelectOCxM$256
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$258-Sstm8s_tim2$TIM2_SelectOCxM$257
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$259-Sstm8s_tim2$TIM2_SelectOCxM$258
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$260-Sstm8s_tim2$TIM2_SelectOCxM$259
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$261-Sstm8s_tim2$TIM2_SelectOCxM$260
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$262-Sstm8s_tim2$TIM2_SelectOCxM$261
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SelectOCxM$263-Sstm8s_tim2$TIM2_SelectOCxM$262
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SelectOCxM$264-Sstm8s_tim2$TIM2_SelectOCxM$263
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$266)
	.db	3
	.sleb128	850
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCounter$268-Sstm8s_tim2$TIM2_SetCounter$266
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCounter$269-Sstm8s_tim2$TIM2_SetCounter$268
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCounter$270-Sstm8s_tim2$TIM2_SetCounter$269
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetCounter$271-Sstm8s_tim2$TIM2_SetCounter$270
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$273)
	.db	3
	.sleb128	863
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetAutoreload$275-Sstm8s_tim2$TIM2_SetAutoreload$273
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetAutoreload$276-Sstm8s_tim2$TIM2_SetAutoreload$275
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetAutoreload$277-Sstm8s_tim2$TIM2_SetAutoreload$276
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetAutoreload$278-Sstm8s_tim2$TIM2_SetAutoreload$277
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$280)
	.db	3
	.sleb128	876
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare1$282-Sstm8s_tim2$TIM2_SetCompare1$280
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare1$283-Sstm8s_tim2$TIM2_SetCompare1$282
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare1$284-Sstm8s_tim2$TIM2_SetCompare1$283
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetCompare1$285-Sstm8s_tim2$TIM2_SetCompare1$284
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$287)
	.db	3
	.sleb128	889
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare2$289-Sstm8s_tim2$TIM2_SetCompare2$287
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare2$290-Sstm8s_tim2$TIM2_SetCompare2$289
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare2$291-Sstm8s_tim2$TIM2_SetCompare2$290
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetCompare2$292-Sstm8s_tim2$TIM2_SetCompare2$291
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$294)
	.db	3
	.sleb128	902
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare3$296-Sstm8s_tim2$TIM2_SetCompare3$294
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare3$297-Sstm8s_tim2$TIM2_SetCompare3$296
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetCompare3$298-Sstm8s_tim2$TIM2_SetCompare3$297
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetCompare3$299-Sstm8s_tim2$TIM2_SetCompare3$298
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$301)
	.db	3
	.sleb128	919
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$303-Sstm8s_tim2$TIM2_SetIC1Prescaler$301
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$304-Sstm8s_tim2$TIM2_SetIC1Prescaler$303
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$305-Sstm8s_tim2$TIM2_SetIC1Prescaler$304
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetIC1Prescaler$306-Sstm8s_tim2$TIM2_SetIC1Prescaler$305
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$308)
	.db	3
	.sleb128	939
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$310-Sstm8s_tim2$TIM2_SetIC2Prescaler$308
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$311-Sstm8s_tim2$TIM2_SetIC2Prescaler$310
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$312-Sstm8s_tim2$TIM2_SetIC2Prescaler$311
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetIC2Prescaler$313-Sstm8s_tim2$TIM2_SetIC2Prescaler$312
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$315)
	.db	3
	.sleb128	959
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$317-Sstm8s_tim2$TIM2_SetIC3Prescaler$315
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$318-Sstm8s_tim2$TIM2_SetIC3Prescaler$317
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$319-Sstm8s_tim2$TIM2_SetIC3Prescaler$318
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_SetIC3Prescaler$320-Sstm8s_tim2$TIM2_SetIC3Prescaler$319
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$322)
	.db	3
	.sleb128	974
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$324-Sstm8s_tim2$TIM2_GetCapture1$322
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$325-Sstm8s_tim2$TIM2_GetCapture1$324
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$326-Sstm8s_tim2$TIM2_GetCapture1$325
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$327-Sstm8s_tim2$TIM2_GetCapture1$326
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$328-Sstm8s_tim2$TIM2_GetCapture1$327
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture1$329-Sstm8s_tim2$TIM2_GetCapture1$328
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GetCapture1$330-Sstm8s_tim2$TIM2_GetCapture1$329
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$332)
	.db	3
	.sleb128	994
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$334-Sstm8s_tim2$TIM2_GetCapture2$332
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$335-Sstm8s_tim2$TIM2_GetCapture2$334
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$336-Sstm8s_tim2$TIM2_GetCapture2$335
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$337-Sstm8s_tim2$TIM2_GetCapture2$336
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$338-Sstm8s_tim2$TIM2_GetCapture2$337
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture2$339-Sstm8s_tim2$TIM2_GetCapture2$338
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GetCapture2$340-Sstm8s_tim2$TIM2_GetCapture2$339
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$342)
	.db	3
	.sleb128	1014
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$344-Sstm8s_tim2$TIM2_GetCapture3$342
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$345-Sstm8s_tim2$TIM2_GetCapture3$344
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$346-Sstm8s_tim2$TIM2_GetCapture3$345
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$347-Sstm8s_tim2$TIM2_GetCapture3$346
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$348-Sstm8s_tim2$TIM2_GetCapture3$347
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCapture3$349-Sstm8s_tim2$TIM2_GetCapture3$348
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GetCapture3$350-Sstm8s_tim2$TIM2_GetCapture3$349
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$352)
	.db	3
	.sleb128	1034
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCounter$354-Sstm8s_tim2$TIM2_GetCounter$352
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCounter$355-Sstm8s_tim2$TIM2_GetCounter$354
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetCounter$356-Sstm8s_tim2$TIM2_GetCounter$355
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GetCounter$357-Sstm8s_tim2$TIM2_GetCounter$356
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$359)
	.db	3
	.sleb128	1048
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetPrescaler$361-Sstm8s_tim2$TIM2_GetPrescaler$359
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetPrescaler$362-Sstm8s_tim2$TIM2_GetPrescaler$361
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GetPrescaler$363-Sstm8s_tim2$TIM2_GetPrescaler$362
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$365)
	.db	3
	.sleb128	1067
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$367-Sstm8s_tim2$TIM2_GetFlagStatus$365
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$368-Sstm8s_tim2$TIM2_GetFlagStatus$367
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$369-Sstm8s_tim2$TIM2_GetFlagStatus$368
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$370-Sstm8s_tim2$TIM2_GetFlagStatus$369
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$371-Sstm8s_tim2$TIM2_GetFlagStatus$370
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$372-Sstm8s_tim2$TIM2_GetFlagStatus$371
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$373-Sstm8s_tim2$TIM2_GetFlagStatus$372
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GetFlagStatus$374-Sstm8s_tim2$TIM2_GetFlagStatus$373
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$376)
	.db	3
	.sleb128	1102
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearFlag$378-Sstm8s_tim2$TIM2_ClearFlag$376
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearFlag$379-Sstm8s_tim2$TIM2_ClearFlag$378
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearFlag$380-Sstm8s_tim2$TIM2_ClearFlag$379
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ClearFlag$381-Sstm8s_tim2$TIM2_ClearFlag$380
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$383)
	.db	3
	.sleb128	1123
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$385-Sstm8s_tim2$TIM2_GetITStatus$383
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$386-Sstm8s_tim2$TIM2_GetITStatus$385
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$387-Sstm8s_tim2$TIM2_GetITStatus$386
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$388-Sstm8s_tim2$TIM2_GetITStatus$387
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$389-Sstm8s_tim2$TIM2_GetITStatus$388
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$390-Sstm8s_tim2$TIM2_GetITStatus$389
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_GetITStatus$391-Sstm8s_tim2$TIM2_GetITStatus$390
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_GetITStatus$392-Sstm8s_tim2$TIM2_GetITStatus$391
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$394)
	.db	3
	.sleb128	1156
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$396-Sstm8s_tim2$TIM2_ClearITPendingBit$394
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$397-Sstm8s_tim2$TIM2_ClearITPendingBit$396
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TIM2_ClearITPendingBit$398-Sstm8s_tim2$TIM2_ClearITPendingBit$397
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TI1_Config$400)
	.db	3
	.sleb128	1181
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$402-Sstm8s_tim2$TI1_Config$400
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$403-Sstm8s_tim2$TI1_Config$402
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$404-Sstm8s_tim2$TI1_Config$403
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$405-Sstm8s_tim2$TI1_Config$404
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$406-Sstm8s_tim2$TI1_Config$405
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$407-Sstm8s_tim2$TI1_Config$406
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$408-Sstm8s_tim2$TI1_Config$407
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI1_Config$409-Sstm8s_tim2$TI1_Config$408
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TI1_Config$410-Sstm8s_tim2$TI1_Config$409
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TI2_Config$412)
	.db	3
	.sleb128	1221
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$414-Sstm8s_tim2$TI2_Config$412
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$415-Sstm8s_tim2$TI2_Config$414
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$416-Sstm8s_tim2$TI2_Config$415
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$417-Sstm8s_tim2$TI2_Config$416
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$418-Sstm8s_tim2$TI2_Config$417
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$419-Sstm8s_tim2$TI2_Config$418
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$420-Sstm8s_tim2$TI2_Config$419
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI2_Config$421-Sstm8s_tim2$TI2_Config$420
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TI2_Config$422-Sstm8s_tim2$TI2_Config$421
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim2$TI3_Config$424)
	.db	3
	.sleb128	1261
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$426-Sstm8s_tim2$TI3_Config$424
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$427-Sstm8s_tim2$TI3_Config$426
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$428-Sstm8s_tim2$TI3_Config$427
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$429-Sstm8s_tim2$TI3_Config$428
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$430-Sstm8s_tim2$TI3_Config$429
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$431-Sstm8s_tim2$TI3_Config$430
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$432-Sstm8s_tim2$TI3_Config$431
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim2$TI3_Config$433-Sstm8s_tim2$TI3_Config$432
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim2$TI3_Config$434-Sstm8s_tim2$TI3_Config$433
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_tim2$TI3_Config$425)
	.dw	0,(Sstm8s_tim2$TI3_Config$435)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TI2_Config$413)
	.dw	0,(Sstm8s_tim2$TI2_Config$423)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TI1_Config$401)
	.dw	0,(Sstm8s_tim2$TI1_Config$411)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$395)
	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$399)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$384)
	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$393)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$377)
	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$382)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$366)
	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$375)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$360)
	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$364)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$353)
	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$358)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$343)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$351)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$333)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$341)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$323)
	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$331)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$316)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$321)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$309)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$314)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$302)
	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$307)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$295)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$300)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$288)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$293)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$281)
	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$286)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$274)
	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$279)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$267)
	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$272)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$251)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$265)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$235)
	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$249)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$227)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$233)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$219)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$225)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$211)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$217)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$205)
	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$209)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$197)
	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$203)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$189)
	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$195)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$181)
	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$187)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$173)
	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$179)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$166)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$171)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$159)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$164)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$152)
	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$157)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$145)
	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$150)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$137)
	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$143)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$129)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$135)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$121)
	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$127)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$113)
	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$119)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$105)
	.dw	0,(Sstm8s_tim2$TIM2_Cmd$111)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$85)
	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$103)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$72)
	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$60)
	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$70)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$48)
	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$58)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)
	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)
	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$34)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)
	.dw	0,(Sstm8s_tim2$TIM2_DeInit$26)
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
	.uleb128	6
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	9
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
	.uleb128	7
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
	.uleb128	10
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
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	1
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
	.uleb128	13
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
	.uleb128	5
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
	.ascii "StdPeriphLib/src/stm8s_tim2.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.ascii "TIM2_DeInit"
	.db	0
	.dw	0,(_TIM2_DeInit)
	.dw	0,(XG$TIM2_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+900)
	.uleb128	3
	.dw	0,178
	.ascii "TIM2_TimeBaseInit"
	.db	0
	.dw	0,(_TIM2_TimeBaseInit)
	.dw	0,(XG$TIM2_TimeBaseInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+880)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Prescaler"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_Period"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	3
	.dw	0,331
	.ascii "TIM2_OC1Init"
	.db	0
	.dw	0,(_TIM2_OC1Init)
	.dw	0,(XG$TIM2_OC1Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+860)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_OutputState"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_Pulse"
	.db	0
	.dw	0,195
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,451
	.ascii "TIM2_OC2Init"
	.db	0
	.dw	0,(_TIM2_OC2Init)
	.dw	0,(XG$TIM2_OC2Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+840)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_OutputState"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_Pulse"
	.db	0
	.dw	0,195
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,571
	.ascii "TIM2_OC3Init"
	.db	0
	.dw	0,(_TIM2_OC3Init)
	.dw	0,(XG$TIM2_OC3Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+820)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_OutputState"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_Pulse"
	.db	0
	.dw	0,195
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,722
	.ascii "TIM2_ICInit"
	.db	0
	.dw	0,(_TIM2_ICInit)
	.dw	0,(XG$TIM2_ICInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+800)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM2_ICPrescaler"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,919
	.ascii "TIM2_PWMIConfig"
	.db	0
	.dw	0,(_TIM2_PWMIConfig)
	.dw	0,(XG$TIM2_PWMIConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+780)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM2_ICPrescaler"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "icpolarity"
	.db	0
	.dw	0,178
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-2
	.ascii "icselection"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,966
	.ascii "TIM2_Cmd"
	.db	0
	.dw	0,(_TIM2_Cmd)
	.dw	0,(XG$TIM2_Cmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+760)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1034
	.ascii "TIM2_ITConfig"
	.db	0
	.dw	0,(_TIM2_ITConfig)
	.dw	0,(XG$TIM2_ITConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+740)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_IT"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1097
	.ascii "TIM2_UpdateDisableConfig"
	.db	0
	.dw	0,(_TIM2_UpdateDisableConfig)
	.dw	0,(XG$TIM2_UpdateDisableConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+720)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1169
	.ascii "TIM2_UpdateRequestConfig"
	.db	0
	.dw	0,(_TIM2_UpdateRequestConfig)
	.dw	0,(XG$TIM2_UpdateRequestConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+700)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_UpdateSource"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1234
	.ascii "TIM2_SelectOnePulseMode"
	.db	0
	.dw	0,(_TIM2_SelectOnePulseMode)
	.dw	0,(XG$TIM2_SelectOnePulseMode$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+680)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_OPMode"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1319
	.ascii "TIM2_PrescalerConfig"
	.db	0
	.dw	0,(_TIM2_PrescalerConfig)
	.dw	0,(XG$TIM2_PrescalerConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+660)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Prescaler"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_PSCReloadMode"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,1385
	.ascii "TIM2_ForcedOC1Config"
	.db	0
	.dw	0,(_TIM2_ForcedOC1Config)
	.dw	0,(XG$TIM2_ForcedOC1Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+640)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ForcedAction"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,1451
	.ascii "TIM2_ForcedOC2Config"
	.db	0
	.dw	0,(_TIM2_ForcedOC2Config)
	.dw	0,(XG$TIM2_ForcedOC2Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+620)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ForcedAction"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,1517
	.ascii "TIM2_ForcedOC3Config"
	.db	0
	.dw	0,(_TIM2_ForcedOC3Config)
	.dw	0,(XG$TIM2_ForcedOC3Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+600)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ForcedAction"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,1577
	.ascii "TIM2_ARRPreloadConfig"
	.db	0
	.dw	0,(_TIM2_ARRPreloadConfig)
	.dw	0,(XG$TIM2_ARRPreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+580)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1637
	.ascii "TIM2_OC1PreloadConfig"
	.db	0
	.dw	0,(_TIM2_OC1PreloadConfig)
	.dw	0,(XG$TIM2_OC1PreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+560)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1697
	.ascii "TIM2_OC2PreloadConfig"
	.db	0
	.dw	0,(_TIM2_OC2PreloadConfig)
	.dw	0,(XG$TIM2_OC2PreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+540)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1757
	.ascii "TIM2_OC3PreloadConfig"
	.db	0
	.dw	0,(_TIM2_OC3PreloadConfig)
	.dw	0,(XG$TIM2_OC3PreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+520)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1820
	.ascii "TIM2_GenerateEvent"
	.db	0
	.dw	0,(_TIM2_GenerateEvent)
	.dw	0,(XG$TIM2_GenerateEvent$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+500)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_EventSource"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,1888
	.ascii "TIM2_OC1PolarityConfig"
	.db	0
	.dw	0,(_TIM2_OC1PolarityConfig)
	.dw	0,(XG$TIM2_OC1PolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+480)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1956
	.ascii "TIM2_OC2PolarityConfig"
	.db	0
	.dw	0,(_TIM2_OC2PolarityConfig)
	.dw	0,(XG$TIM2_OC2PolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+460)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2024
	.ascii "TIM2_OC3PolarityConfig"
	.db	0
	.dw	0,(_TIM2_OC3PolarityConfig)
	.dw	0,(XG$TIM2_OC3PolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+440)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_OCPolarity"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2113
	.ascii "TIM2_CCxCmd"
	.db	0
	.dw	0,(_TIM2_CCxCmd)
	.dw	0,(XG$TIM2_CCxCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+420)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,178
	.uleb128	8
	.dw	0,2100
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	8
	.dw	0,2108
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	9
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,2192
	.ascii "TIM2_SelectOCxM"
	.db	0
	.dw	0,(_TIM2_SelectOCxM)
	.dw	0,(XG$TIM2_SelectOCxM$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+400)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_Channel"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_OCMode"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2243
	.ascii "TIM2_SetCounter"
	.db	0
	.dw	0,(_TIM2_SetCounter)
	.dw	0,(XG$TIM2_SetCounter$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Counter"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	3
	.dw	0,2300
	.ascii "TIM2_SetAutoreload"
	.db	0
	.dw	0,(_TIM2_SetAutoreload)
	.dw	0,(XG$TIM2_SetAutoreload$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Autoreload"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	3
	.dw	0,2353
	.ascii "TIM2_SetCompare1"
	.db	0
	.dw	0,(_TIM2_SetCompare1)
	.dw	0,(XG$TIM2_SetCompare1$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Compare1"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	3
	.dw	0,2406
	.ascii "TIM2_SetCompare2"
	.db	0
	.dw	0,(_TIM2_SetCompare2)
	.dw	0,(XG$TIM2_SetCompare2$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Compare2"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	3
	.dw	0,2459
	.ascii "TIM2_SetCompare3"
	.db	0
	.dw	0,(_TIM2_SetCompare3)
	.dw	0,(XG$TIM2_SetCompare3$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Compare3"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	3
	.dw	0,2525
	.ascii "TIM2_SetIC1Prescaler"
	.db	0
	.dw	0,(_TIM2_SetIC1Prescaler)
	.dw	0,(XG$TIM2_SetIC1Prescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_IC1Prescaler"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,2591
	.ascii "TIM2_SetIC2Prescaler"
	.db	0
	.dw	0,(_TIM2_SetIC2Prescaler)
	.dw	0,(XG$TIM2_SetIC2Prescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_IC2Prescaler"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,2657
	.ascii "TIM2_SetIC3Prescaler"
	.db	0
	.dw	0,(_TIM2_SetIC3Prescaler)
	.dw	0,(XG$TIM2_SetIC3Prescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_IC3Prescaler"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	10
	.dw	0,2740
	.ascii "TIM2_GetCapture1"
	.db	0
	.dw	0,(_TIM2_GetCapture1)
	.dw	0,(XG$TIM2_GetCapture1$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.dw	0,195
	.uleb128	11
	.ascii "tmpccr1"
	.db	0
	.dw	0,195
	.uleb128	7
	.db	1
	.db	81
	.ascii "tmpccr1l"
	.db	0
	.dw	0,178
	.uleb128	11
	.ascii "tmpccr1h"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	10
	.dw	0,2823
	.ascii "TIM2_GetCapture2"
	.db	0
	.dw	0,(_TIM2_GetCapture2)
	.dw	0,(XG$TIM2_GetCapture2$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.dw	0,195
	.uleb128	11
	.ascii "tmpccr2"
	.db	0
	.dw	0,195
	.uleb128	7
	.db	1
	.db	81
	.ascii "tmpccr2l"
	.db	0
	.dw	0,178
	.uleb128	11
	.ascii "tmpccr2h"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	10
	.dw	0,2906
	.ascii "TIM2_GetCapture3"
	.db	0
	.dw	0,(_TIM2_GetCapture3)
	.dw	0,(XG$TIM2_GetCapture3$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.dw	0,195
	.uleb128	11
	.ascii "tmpccr3"
	.db	0
	.dw	0,195
	.uleb128	7
	.db	1
	.db	81
	.ascii "tmpccr3l"
	.db	0
	.dw	0,178
	.uleb128	11
	.ascii "tmpccr3h"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	10
	.dw	0,2961
	.ascii "TIM2_GetCounter"
	.db	0
	.dw	0,(_TIM2_GetCounter)
	.dw	0,(XG$TIM2_GetCounter$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.dw	0,195
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-4
	.ascii "tmpcntr"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	12
	.ascii "TIM2_GetPrescaler"
	.db	0
	.dw	0,(_TIM2_GetPrescaler)
	.dw	0,(XG$TIM2_GetPrescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.dw	0,178
	.uleb128	10
	.dw	0,3116
	.ascii "TIM2_GetFlagStatus"
	.db	0
	.dw	0,(_TIM2_GetFlagStatus)
	.dw	0,(XG$TIM2_GetFlagStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_FLAG"
	.db	0
	.dw	0,195
	.uleb128	6
	.uleb128	6
	.uleb128	7
	.db	1
	.db	81
	.ascii "bitstatus"
	.db	0
	.dw	0,178
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-4
	.ascii "tim2_flag_l"
	.db	0
	.dw	0,178
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-5
	.ascii "tim2_flag_h"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,3168
	.ascii "TIM2_ClearFlag"
	.db	0
	.dw	0,(_TIM2_ClearFlag)
	.dw	0,(XG$TIM2_ClearFlag$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_FLAG"
	.db	0
	.dw	0,195
	.uleb128	0
	.uleb128	10
	.dw	0,3286
	.ascii "TIM2_GetITStatus"
	.db	0
	.dw	0,(_TIM2_GetITStatus)
	.dw	0,(XG$TIM2_GetITStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_IT"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	7
	.db	1
	.db	81
	.ascii "bitstatus"
	.db	0
	.dw	0,178
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "TIM2_itStatus"
	.db	0
	.dw	0,178
	.uleb128	7
	.db	1
	.db	81
	.ascii "TIM2_itEnable"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,3344
	.ascii "TIM2_ClearITPendingBit"
	.db	0
	.dw	0,(_TIM2_ClearITPendingBit)
	.dw	0,(XG$TIM2_ClearITPendingBit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_IT"
	.db	0
	.dw	0,178
	.uleb128	0
	.uleb128	3
	.dw	0,3447
	.ascii "TI1_Config"
	.db	0
	.dw	0,(_TI1_Config)
	.dw	0,(XFstm8s_tim2$TI1_Config$0$0+7)
	.db	0
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3550
	.ascii "TI2_Config"
	.db	0
	.dw	0,(_TI2_Config)
	.dw	0,(XFstm8s_tim2$TI2_Config$0$0+7)
	.db	0
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	13
	.ascii "TI3_Config"
	.db	0
	.dw	0,(_TI3_Config)
	.dw	0,(XFstm8s_tim2$TI3_Config$0$0+7)
	.db	0
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM2_ICPolarity"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM2_ICSelection"
	.db	0
	.dw	0,178
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM2_ICFilter"
	.db	0
	.dw	0,178
	.uleb128	6
	.uleb128	6
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
	.ascii "TIM2_DeInit"
	.db	0
	.dw	0,98
	.ascii "TIM2_TimeBaseInit"
	.db	0
	.dw	0,211
	.ascii "TIM2_OC1Init"
	.db	0
	.dw	0,331
	.ascii "TIM2_OC2Init"
	.db	0
	.dw	0,451
	.ascii "TIM2_OC3Init"
	.db	0
	.dw	0,571
	.ascii "TIM2_ICInit"
	.db	0
	.dw	0,722
	.ascii "TIM2_PWMIConfig"
	.db	0
	.dw	0,919
	.ascii "TIM2_Cmd"
	.db	0
	.dw	0,966
	.ascii "TIM2_ITConfig"
	.db	0
	.dw	0,1034
	.ascii "TIM2_UpdateDisableConfig"
	.db	0
	.dw	0,1097
	.ascii "TIM2_UpdateRequestConfig"
	.db	0
	.dw	0,1169
	.ascii "TIM2_SelectOnePulseMode"
	.db	0
	.dw	0,1234
	.ascii "TIM2_PrescalerConfig"
	.db	0
	.dw	0,1319
	.ascii "TIM2_ForcedOC1Config"
	.db	0
	.dw	0,1385
	.ascii "TIM2_ForcedOC2Config"
	.db	0
	.dw	0,1451
	.ascii "TIM2_ForcedOC3Config"
	.db	0
	.dw	0,1517
	.ascii "TIM2_ARRPreloadConfig"
	.db	0
	.dw	0,1577
	.ascii "TIM2_OC1PreloadConfig"
	.db	0
	.dw	0,1637
	.ascii "TIM2_OC2PreloadConfig"
	.db	0
	.dw	0,1697
	.ascii "TIM2_OC3PreloadConfig"
	.db	0
	.dw	0,1757
	.ascii "TIM2_GenerateEvent"
	.db	0
	.dw	0,1820
	.ascii "TIM2_OC1PolarityConfig"
	.db	0
	.dw	0,1888
	.ascii "TIM2_OC2PolarityConfig"
	.db	0
	.dw	0,1956
	.ascii "TIM2_OC3PolarityConfig"
	.db	0
	.dw	0,2024
	.ascii "TIM2_CCxCmd"
	.db	0
	.dw	0,2113
	.ascii "TIM2_SelectOCxM"
	.db	0
	.dw	0,2192
	.ascii "TIM2_SetCounter"
	.db	0
	.dw	0,2243
	.ascii "TIM2_SetAutoreload"
	.db	0
	.dw	0,2300
	.ascii "TIM2_SetCompare1"
	.db	0
	.dw	0,2353
	.ascii "TIM2_SetCompare2"
	.db	0
	.dw	0,2406
	.ascii "TIM2_SetCompare3"
	.db	0
	.dw	0,2459
	.ascii "TIM2_SetIC1Prescaler"
	.db	0
	.dw	0,2525
	.ascii "TIM2_SetIC2Prescaler"
	.db	0
	.dw	0,2591
	.ascii "TIM2_SetIC3Prescaler"
	.db	0
	.dw	0,2657
	.ascii "TIM2_GetCapture1"
	.db	0
	.dw	0,2740
	.ascii "TIM2_GetCapture2"
	.db	0
	.dw	0,2823
	.ascii "TIM2_GetCapture3"
	.db	0
	.dw	0,2906
	.ascii "TIM2_GetCounter"
	.db	0
	.dw	0,2961
	.ascii "TIM2_GetPrescaler"
	.db	0
	.dw	0,2997
	.ascii "TIM2_GetFlagStatus"
	.db	0
	.dw	0,3116
	.ascii "TIM2_ClearFlag"
	.db	0
	.dw	0,3168
	.ascii "TIM2_GetITStatus"
	.db	0
	.dw	0,3286
	.ascii "TIM2_ClearITPendingBit"
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
