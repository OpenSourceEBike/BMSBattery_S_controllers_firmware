;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_DeInit
	.globl _TIM1_TimeBaseInit
	.globl _TIM1_OC1Init
	.globl _TIM1_OC2Init
	.globl _TIM1_OC3Init
	.globl _TIM1_OC4Init
	.globl _TIM1_BDTRConfig
	.globl _TIM1_ICInit
	.globl _TIM1_PWMIConfig
	.globl _TIM1_Cmd
	.globl _TIM1_CtrlPWMOutputs
	.globl _TIM1_ITConfig
	.globl _TIM1_InternalClockConfig
	.globl _TIM1_ETRClockMode1Config
	.globl _TIM1_ETRClockMode2Config
	.globl _TIM1_ETRConfig
	.globl _TIM1_TIxExternalClockConfig
	.globl _TIM1_SelectInputTrigger
	.globl _TIM1_UpdateDisableConfig
	.globl _TIM1_UpdateRequestConfig
	.globl _TIM1_SelectHallSensor
	.globl _TIM1_SelectOnePulseMode
	.globl _TIM1_SelectOutputTrigger
	.globl _TIM1_SelectSlaveMode
	.globl _TIM1_SelectMasterSlaveMode
	.globl _TIM1_EncoderInterfaceConfig
	.globl _TIM1_PrescalerConfig
	.globl _TIM1_CounterModeConfig
	.globl _TIM1_ForcedOC1Config
	.globl _TIM1_ForcedOC2Config
	.globl _TIM1_ForcedOC3Config
	.globl _TIM1_ForcedOC4Config
	.globl _TIM1_ARRPreloadConfig
	.globl _TIM1_SelectCOM
	.globl _TIM1_CCPreloadControl
	.globl _TIM1_OC1PreloadConfig
	.globl _TIM1_OC2PreloadConfig
	.globl _TIM1_OC3PreloadConfig
	.globl _TIM1_OC4PreloadConfig
	.globl _TIM1_OC1FastConfig
	.globl _TIM1_OC2FastConfig
	.globl _TIM1_OC3FastConfig
	.globl _TIM1_OC4FastConfig
	.globl _TIM1_GenerateEvent
	.globl _TIM1_OC1PolarityConfig
	.globl _TIM1_OC1NPolarityConfig
	.globl _TIM1_OC2PolarityConfig
	.globl _TIM1_OC2NPolarityConfig
	.globl _TIM1_OC3PolarityConfig
	.globl _TIM1_OC3NPolarityConfig
	.globl _TIM1_OC4PolarityConfig
	.globl _TIM1_CCxCmd
	.globl _TIM1_CCxNCmd
	.globl _TIM1_SelectOCxM
	.globl _TIM1_SetCounter
	.globl _TIM1_SetAutoreload
	.globl _TIM1_SetCompare1
	.globl _TIM1_SetCompare2
	.globl _TIM1_SetCompare3
	.globl _TIM1_SetCompare4
	.globl _TIM1_SetIC1Prescaler
	.globl _TIM1_SetIC2Prescaler
	.globl _TIM1_SetIC3Prescaler
	.globl _TIM1_SetIC4Prescaler
	.globl _TIM1_GetCapture1
	.globl _TIM1_GetCapture2
	.globl _TIM1_GetCapture3
	.globl _TIM1_GetCapture4
	.globl _TIM1_GetCounter
	.globl _TIM1_GetPrescaler
	.globl _TIM1_GetFlagStatus
	.globl _TIM1_ClearFlag
	.globl _TIM1_GetITStatus
	.globl _TIM1_ClearITPendingBit
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
	Sstm8s_tim1$TIM1_DeInit$0 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 58: void TIM1_DeInit(void)
;	-----------------------------------------
;	 function TIM1_DeInit
;	-----------------------------------------
_TIM1_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_DeInit$1 ==.
	Sstm8s_tim1$TIM1_DeInit$2 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
	mov	0x5250+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$3 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
	mov	0x5251+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$4 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
	mov	0x5252+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$5 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
	mov	0x5253+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$6 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
	mov	0x5254+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$7 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
	mov	0x5256+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$8 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
	mov	0x525c+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$9 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
	mov	0x525d+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$10 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
	mov	0x5258+0, #0x01
	Sstm8s_tim1$TIM1_DeInit$11 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
	mov	0x5259+0, #0x01
	Sstm8s_tim1$TIM1_DeInit$12 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
	mov	0x525a+0, #0x01
	Sstm8s_tim1$TIM1_DeInit$13 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
	mov	0x525b+0, #0x01
	Sstm8s_tim1$TIM1_DeInit$14 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
	mov	0x525c+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$15 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
	mov	0x525d+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$16 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
	mov	0x5258+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$17 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
	mov	0x5259+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$18 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
	mov	0x525a+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$19 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
	mov	0x525b+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$20 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
	mov	0x525e+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$21 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
	mov	0x525f+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$22 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
	mov	0x5260+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$23 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
	mov	0x5261+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$24 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
	mov	0x5262+0, #0xff
	Sstm8s_tim1$TIM1_DeInit$25 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
	mov	0x5263+0, #0xff
	Sstm8s_tim1$TIM1_DeInit$26 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
	mov	0x5265+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$27 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
	mov	0x5266+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$28 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
	mov	0x5267+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$29 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
	mov	0x5268+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$30 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
	mov	0x5269+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$31 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
	mov	0x526a+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$32 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
	mov	0x526b+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$33 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
	mov	0x526c+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$34 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
	mov	0x526f+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$35 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
	mov	0x5257+0, #0x01
	Sstm8s_tim1$TIM1_DeInit$36 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
	mov	0x526e+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$37 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
	mov	0x526d+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$38 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
	mov	0x5264+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$39 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
	mov	0x5255+0, #0x00
	Sstm8s_tim1$TIM1_DeInit$40 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 101: }
	Sstm8s_tim1$TIM1_DeInit$41 ==.
	XG$TIM1_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_DeInit$42 ==.
	Sstm8s_tim1$TIM1_TimeBaseInit$43 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
;	-----------------------------------------
;	 function TIM1_TimeBaseInit
;	-----------------------------------------
_TIM1_TimeBaseInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_TimeBaseInit$44 ==.
	sub	sp, #4
	Sstm8s_tim1$TIM1_TimeBaseInit$45 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
	ld	a, (0x0c, sp)
	clr	(0x03, sp)
	ldw	x, #0x5262
	ld	(x), a
	Sstm8s_tim1$TIM1_TimeBaseInit$46 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
	ld	a, (0x0d, sp)
	ldw	x, #0x5263
	ld	(x), a
	Sstm8s_tim1$TIM1_TimeBaseInit$47 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
	ld	a, (0x09, sp)
	clr	(0x01, sp)
	ldw	x, #0x5260
	ld	(x), a
	Sstm8s_tim1$TIM1_TimeBaseInit$48 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
	ld	a, (0x0a, sp)
	ldw	x, #0x5261
	ld	(x), a
	Sstm8s_tim1$TIM1_TimeBaseInit$49 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
	ldw	x, #0x5250
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_TimeBaseInit$50 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
	or	a, (0x0b, sp)
	ldw	x, #0x5250
	ld	(x), a
	Sstm8s_tim1$TIM1_TimeBaseInit$51 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
	ldw	x, #0x5264
	ld	a, (0x0e, sp)
	ld	(x), a
	Sstm8s_tim1$TIM1_TimeBaseInit$52 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 133: }
	addw	sp, #4
	Sstm8s_tim1$TIM1_TimeBaseInit$53 ==.
	XG$TIM1_TimeBaseInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_TimeBaseInit$54 ==.
	Sstm8s_tim1$TIM1_OC1Init$55 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC1Init
;	-----------------------------------------
_TIM1_OC1Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC1Init$56 ==.
	sub	sp, #8
	Sstm8s_tim1$TIM1_OC1Init$57 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
	Sstm8s_tim1$TIM1_OC1Init$58 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
	ldw	x, #0x525c
	ld	a, (x)
	ld	(0x05, sp), a
	ld	a, (0x0e, sp)
	and	a, #0x01
	ld	(0x04, sp), a
	Sstm8s_tim1$TIM1_OC1Init$59 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
	ld	a, (0x0f, sp)
	and	a, #0x04
	or	a, (0x04, sp)
	ld	(0x01, sp), a
	Sstm8s_tim1$TIM1_OC1Init$60 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
	ld	a, (0x12, sp)
	and	a, #0x02
	ld	(0x03, sp), a
	Sstm8s_tim1$TIM1_OC1Init$61 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
	ld	a, (0x13, sp)
	and	a, #0x08
	or	a, (0x03, sp)
	or	a, (0x01, sp)
	or	a, (0x05, sp)
	ldw	x, #0x525c
	ld	(x), a
	Sstm8s_tim1$TIM1_OC1Init$62 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_OC1Init$63 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
	or	a, (0x0d, sp)
	ldw	x, #0x5258
	ld	(x), a
	Sstm8s_tim1$TIM1_OC1Init$64 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
	ldw	x, #0x526f
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
	Sstm8s_tim1$TIM1_OC1Init$65 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
	ldw	x, #0x526f
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x14, sp)
	and	a, #0x01
	ld	(0x08, sp), a
	Sstm8s_tim1$TIM1_OC1Init$66 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
	ld	a, (0x15, sp)
	and	a, #0x02
	or	a, (0x08, sp)
	or	a, (0x02, sp)
	ldw	x, #0x526f
	ld	(x), a
	Sstm8s_tim1$TIM1_OC1Init$67 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x10, sp)
	clr	(0x06, sp)
	ldw	x, #0x5265
	ld	(x), a
	Sstm8s_tim1$TIM1_OC1Init$68 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x11, sp)
	ldw	x, #0x5266
	ld	(x), a
	Sstm8s_tim1$TIM1_OC1Init$69 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 196: }
	addw	sp, #8
	Sstm8s_tim1$TIM1_OC1Init$70 ==.
	XG$TIM1_OC1Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC1Init$71 ==.
	Sstm8s_tim1$TIM1_OC2Init$72 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC2Init
;	-----------------------------------------
_TIM1_OC2Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC2Init$73 ==.
	sub	sp, #8
	Sstm8s_tim1$TIM1_OC2Init$74 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0x0f
	ld	(x), a
	Sstm8s_tim1$TIM1_OC2Init$75 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
	ldw	x, #0x525c
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x0e, sp)
	and	a, #0x10
	ld	(0x08, sp), a
	Sstm8s_tim1$TIM1_OC2Init$76 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
	ld	a, (0x0f, sp)
	and	a, #0x40
	or	a, (0x08, sp)
	ld	(0x02, sp), a
	Sstm8s_tim1$TIM1_OC2Init$77 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
	ld	a, (0x12, sp)
	and	a, #0x20
	ld	(0x07, sp), a
	Sstm8s_tim1$TIM1_OC2Init$78 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
	ld	a, (0x13, sp)
	and	a, #0x80
	or	a, (0x07, sp)
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ldw	x, #0x525c
	ld	(x), a
	Sstm8s_tim1$TIM1_OC2Init$79 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_OC2Init$80 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
	or	a, (0x0d, sp)
	ldw	x, #0x5259
	ld	(x), a
	Sstm8s_tim1$TIM1_OC2Init$81 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
	ldw	x, #0x526f
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
	Sstm8s_tim1$TIM1_OC2Init$82 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
	ldw	x, #0x526f
	ld	a, (x)
	ld	(0x06, sp), a
	ld	a, (0x14, sp)
	and	a, #0x04
	ld	(0x05, sp), a
	Sstm8s_tim1$TIM1_OC2Init$83 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
	ld	a, (0x15, sp)
	and	a, #0x08
	or	a, (0x05, sp)
	or	a, (0x06, sp)
	ldw	x, #0x526f
	ld	(x), a
	Sstm8s_tim1$TIM1_OC2Init$84 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x10, sp)
	clr	(0x03, sp)
	ldw	x, #0x5267
	ld	(x), a
	Sstm8s_tim1$TIM1_OC2Init$85 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x11, sp)
	ldw	x, #0x5268
	ld	(x), a
	Sstm8s_tim1$TIM1_OC2Init$86 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 260: }
	addw	sp, #8
	Sstm8s_tim1$TIM1_OC2Init$87 ==.
	XG$TIM1_OC2Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC2Init$88 ==.
	Sstm8s_tim1$TIM1_OC3Init$89 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC3Init
;	-----------------------------------------
_TIM1_OC3Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC3Init$90 ==.
	sub	sp, #8
	Sstm8s_tim1$TIM1_OC3Init$91 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
	Sstm8s_tim1$TIM1_OC3Init$92 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
	ldw	x, #0x525d
	ld	a, (x)
	ld	(0x08, sp), a
	ld	a, (0x0e, sp)
	and	a, #0x01
	ld	(0x07, sp), a
	Sstm8s_tim1$TIM1_OC3Init$93 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
	ld	a, (0x0f, sp)
	and	a, #0x04
	or	a, (0x07, sp)
	ld	(0x06, sp), a
	Sstm8s_tim1$TIM1_OC3Init$94 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
	ld	a, (0x12, sp)
	and	a, #0x02
	ld	(0x05, sp), a
	Sstm8s_tim1$TIM1_OC3Init$95 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
	ld	a, (0x13, sp)
	and	a, #0x08
	or	a, (0x05, sp)
	or	a, (0x06, sp)
	or	a, (0x08, sp)
	ldw	x, #0x525d
	ld	(x), a
	Sstm8s_tim1$TIM1_OC3Init$96 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_OC3Init$97 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
	or	a, (0x0d, sp)
	ldw	x, #0x525a
	ld	(x), a
	Sstm8s_tim1$TIM1_OC3Init$98 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
	ldw	x, #0x526f
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
	Sstm8s_tim1$TIM1_OC3Init$99 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
	ldw	x, #0x526f
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x14, sp)
	and	a, #0x10
	ld	(0x03, sp), a
	Sstm8s_tim1$TIM1_OC3Init$100 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
	ld	a, (0x15, sp)
	and	a, #0x20
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x526f
	ld	(x), a
	Sstm8s_tim1$TIM1_OC3Init$101 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x10, sp)
	clr	(0x01, sp)
	ldw	x, #0x5269
	ld	(x), a
	Sstm8s_tim1$TIM1_OC3Init$102 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x11, sp)
	ldw	x, #0x526a
	ld	(x), a
	Sstm8s_tim1$TIM1_OC3Init$103 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 323: }
	addw	sp, #8
	Sstm8s_tim1$TIM1_OC3Init$104 ==.
	XG$TIM1_OC3Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC3Init$105 ==.
	Sstm8s_tim1$TIM1_OC4Init$106 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC4Init
;	-----------------------------------------
_TIM1_OC4Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC4Init$107 ==.
	sub	sp, #4
	Sstm8s_tim1$TIM1_OC4Init$108 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
	Sstm8s_tim1$TIM1_OC4Init$109 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
	ldw	x, #0x525d
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x0a, sp)
	and	a, #0x10
	ld	(0x04, sp), a
	Sstm8s_tim1$TIM1_OC4Init$110 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
	ld	a, (0x0d, sp)
	and	a, #0x20
	or	a, (0x04, sp)
	or	a, (0x01, sp)
	ldw	x, #0x525d
	ld	(x), a
	Sstm8s_tim1$TIM1_OC4Init$111 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x09, sp)
	ldw	x, #0x525b
	ld	(x), a
	Sstm8s_tim1$TIM1_OC4Init$112 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
	tnz	(0x0e, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC4Init$113 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
	ldw	x, #0x526f
	ld	a, (x)
	or	a, #0xdf
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim1$TIM1_OC4Init$114 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
	ldw	x, #0x526f
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00103$:
	Sstm8s_tim1$TIM1_OC4Init$115 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x0b, sp)
	clr	(0x02, sp)
	ldw	x, #0x526b
	ld	(x), a
	Sstm8s_tim1$TIM1_OC4Init$116 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x0c, sp)
	ldw	x, #0x526c
	ld	(x), a
	Sstm8s_tim1$TIM1_OC4Init$117 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 373: }
	addw	sp, #4
	Sstm8s_tim1$TIM1_OC4Init$118 ==.
	XG$TIM1_OC4Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC4Init$119 ==.
	Sstm8s_tim1$TIM1_BDTRConfig$120 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
;	-----------------------------------------
;	 function TIM1_BDTRConfig
;	-----------------------------------------
_TIM1_BDTRConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_BDTRConfig$121 ==.
	push	a
	Sstm8s_tim1$TIM1_BDTRConfig$122 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
	ldw	x, #0x526e
	ld	a, (0x08, sp)
	ld	(x), a
	Sstm8s_tim1$TIM1_BDTRConfig$123 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
	ld	a, (0x06, sp)
	or	a, (0x07, sp)
	ld	(0x01, sp), a
	Sstm8s_tim1$TIM1_BDTRConfig$124 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
	ld	a, (0x09, sp)
	or	a, (0x0a, sp)
	Sstm8s_tim1$TIM1_BDTRConfig$125 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
	or	a, (0x0b, sp)
	or	a, (0x01, sp)
	ldw	x, #0x526d
	ld	(x), a
	Sstm8s_tim1$TIM1_BDTRConfig$126 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 409: }
	pop	a
	Sstm8s_tim1$TIM1_BDTRConfig$127 ==.
	XG$TIM1_BDTRConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_BDTRConfig$128 ==.
	Sstm8s_tim1$TIM1_ICInit$129 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
;	-----------------------------------------
;	 function TIM1_ICInit
;	-----------------------------------------
_TIM1_ICInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ICInit$130 ==.
	Sstm8s_tim1$TIM1_ICInit$131 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00108$
	Sstm8s_tim1$TIM1_ICInit$132 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_ICInit$133 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
	jra	00110$
00108$:
	Sstm8s_tim1$TIM1_ICInit$134 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00105$
	Sstm8s_tim1$TIM1_ICInit$135 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_ICInit$136 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	jra	00110$
00105$:
	Sstm8s_tim1$TIM1_ICInit$137 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00102$
	Sstm8s_tim1$TIM1_ICInit$138 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI3_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_ICInit$139 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC3Prescaler
	pop	a
	jra	00110$
00102$:
	Sstm8s_tim1$TIM1_ICInit$140 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI4_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_ICInit$141 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC4Prescaler
	pop	a
00110$:
	Sstm8s_tim1$TIM1_ICInit$142 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 472: }
	Sstm8s_tim1$TIM1_ICInit$143 ==.
	XG$TIM1_ICInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ICInit$144 ==.
	Sstm8s_tim1$TIM1_PWMIConfig$145 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
;	-----------------------------------------
;	 function TIM1_PWMIConfig
;	-----------------------------------------
_TIM1_PWMIConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_PWMIConfig$146 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_PWMIConfig$147 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
	ld	a, (0x08, sp)
	cp	a, #0x01
	jreq	00102$
	Sstm8s_tim1$TIM1_PWMIConfig$148 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00103$
00102$:
	Sstm8s_tim1$TIM1_PWMIConfig$149 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
	clr	(0x02, sp)
00103$:
	Sstm8s_tim1$TIM1_PWMIConfig$150 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
	ld	a, (0x09, sp)
	cp	a, #0x01
	jrne	00105$
	Sstm8s_tim1$TIM1_PWMIConfig$151 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x01, sp), a
	jra	00106$
00105$:
	Sstm8s_tim1$TIM1_PWMIConfig$152 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x01, sp), a
00106$:
	Sstm8s_tim1$TIM1_PWMIConfig$153 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x07, sp)
	jrne	00108$
	Sstm8s_tim1$TIM1_PWMIConfig$154 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_PWMIConfig$155 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
	Sstm8s_tim1$TIM1_PWMIConfig$156 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_PWMIConfig$157 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
	Sstm8s_tim1$TIM1_PWMIConfig$158 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_PWMIConfig$159 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	Sstm8s_tim1$TIM1_PWMIConfig$160 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
	Sstm8s_tim1$TIM1_PWMIConfig$161 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
00110$:
	Sstm8s_tim1$TIM1_PWMIConfig$162 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 553: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_PWMIConfig$163 ==.
	XG$TIM1_PWMIConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_PWMIConfig$164 ==.
	Sstm8s_tim1$TIM1_Cmd$165 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_Cmd
;	-----------------------------------------
_TIM1_Cmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_Cmd$166 ==.
	Sstm8s_tim1$TIM1_Cmd$167 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 567: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_Cmd$168 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
	bset	0x5250, #0
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_Cmd$169 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
	bres	0x5250, #0
00104$:
	Sstm8s_tim1$TIM1_Cmd$170 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 575: }
	Sstm8s_tim1$TIM1_Cmd$171 ==.
	XG$TIM1_Cmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_Cmd$172 ==.
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$173 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CtrlPWMOutputs
;	-----------------------------------------
_TIM1_CtrlPWMOutputs:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$174 ==.
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$175 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 590: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$176 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
	bset	0x526d, #7
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$177 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
	bres	0x526d, #7
00104$:
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$178 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 598: }
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$179 ==.
	XG$TIM1_CtrlPWMOutputs$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_CtrlPWMOutputs$180 ==.
	Sstm8s_tim1$TIM1_ITConfig$181 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_ITConfig
;	-----------------------------------------
_TIM1_ITConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ITConfig$182 ==.
	push	a
	Sstm8s_tim1$TIM1_ITConfig$183 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 623: if (NewState != DISABLE)
	tnz	(0x07, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_ITConfig$184 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
	ldw	x, #0x5254
	ld	a, (x)
	or	a, (0x06, sp)
	ldw	x, #0x5254
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_ITConfig$185 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
	ldw	x, #0x5254
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5254
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_ITConfig$186 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 633: }
	pop	a
	Sstm8s_tim1$TIM1_ITConfig$187 ==.
	XG$TIM1_ITConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ITConfig$188 ==.
	Sstm8s_tim1$TIM1_InternalClockConfig$189 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
;	-----------------------------------------
;	 function TIM1_InternalClockConfig
;	-----------------------------------------
_TIM1_InternalClockConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_InternalClockConfig$190 ==.
	Sstm8s_tim1$TIM1_InternalClockConfig$191 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0xf8
	ld	(x), a
	Sstm8s_tim1$TIM1_InternalClockConfig$192 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 644: }
	Sstm8s_tim1$TIM1_InternalClockConfig$193 ==.
	XG$TIM1_InternalClockConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_InternalClockConfig$194 ==.
	Sstm8s_tim1$TIM1_ETRClockMode1Config$195 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRClockMode1Config
;	-----------------------------------------
_TIM1_ETRClockMode1Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ETRClockMode1Config$196 ==.
	Sstm8s_tim1$TIM1_ETRClockMode1Config$197 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_TIM1_ETRConfig
	addw	sp, #3
	Sstm8s_tim1$TIM1_ETRClockMode1Config$198 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0x88
	or	a, #0x77
	ldw	x, #0x5252
	ld	(x), a
	Sstm8s_tim1$TIM1_ETRClockMode1Config$199 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 676: }
	Sstm8s_tim1$TIM1_ETRClockMode1Config$200 ==.
	XG$TIM1_ETRClockMode1Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ETRClockMode1Config$201 ==.
	Sstm8s_tim1$TIM1_ETRClockMode2Config$202 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRClockMode2Config
;	-----------------------------------------
_TIM1_ETRClockMode2Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ETRClockMode2Config$203 ==.
	Sstm8s_tim1$TIM1_ETRClockMode2Config$204 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_TIM1_ETRConfig
	addw	sp, #3
	Sstm8s_tim1$TIM1_ETRClockMode2Config$205 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
	ldw	x, #0x5253
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	Sstm8s_tim1$TIM1_ETRClockMode2Config$206 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 707: }
	Sstm8s_tim1$TIM1_ETRClockMode2Config$207 ==.
	XG$TIM1_ETRClockMode2Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ETRClockMode2Config$208 ==.
	Sstm8s_tim1$TIM1_ETRConfig$209 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRConfig
;	-----------------------------------------
_TIM1_ETRConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ETRConfig$210 ==.
	push	a
	Sstm8s_tim1$TIM1_ETRConfig$211 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
	ldw	x, #0x5253
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	or	a, (0x07, sp)
	Sstm8s_tim1$TIM1_ETRConfig$212 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
	or	a, (0x08, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5253
	ld	(x), a
	Sstm8s_tim1$TIM1_ETRConfig$213 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 734: }
	pop	a
	Sstm8s_tim1$TIM1_ETRConfig$214 ==.
	XG$TIM1_ETRConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ETRConfig$215 ==.
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$216 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
;	-----------------------------------------
;	 function TIM1_TIxExternalClockConfig
;	-----------------------------------------
_TIM1_TIxExternalClockConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$217 ==.
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$218 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
	ld	a, (0x05, sp)
	cp	a, #0x60
	jrne	00102$
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$219 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
	ld	a, (0x07, sp)
	push	a
	push	#0x01
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
	jra	00103$
00102$:
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$220 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
	ld	a, (0x07, sp)
	push	a
	push	#0x01
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
00103$:
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$221 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
	ld	a, (0x05, sp)
	push	a
	call	_TIM1_SelectInputTrigger
	pop	a
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$222 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
	ldw	x, #0x5252
	ld	a, (x)
	or	a, #0x07
	ld	(x), a
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$223 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 775: }
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$224 ==.
	XG$TIM1_TIxExternalClockConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_TIxExternalClockConfig$225 ==.
	Sstm8s_tim1$TIM1_SelectInputTrigger$226 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
;	-----------------------------------------
;	 function TIM1_SelectInputTrigger
;	-----------------------------------------
_TIM1_SelectInputTrigger:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectInputTrigger$227 ==.
	Sstm8s_tim1$TIM1_SelectInputTrigger$228 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x05, sp)
	ldw	x, #0x5252
	ld	(x), a
	Sstm8s_tim1$TIM1_SelectInputTrigger$229 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 794: }
	Sstm8s_tim1$TIM1_SelectInputTrigger$230 ==.
	XG$TIM1_SelectInputTrigger$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectInputTrigger$231 ==.
	Sstm8s_tim1$TIM1_UpdateDisableConfig$232 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_UpdateDisableConfig
;	-----------------------------------------
_TIM1_UpdateDisableConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_UpdateDisableConfig$233 ==.
	Sstm8s_tim1$TIM1_UpdateDisableConfig$234 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 809: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_UpdateDisableConfig$235 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
	ldw	x, #0x5250
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_UpdateDisableConfig$236 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
	ldw	x, #0x5250
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_UpdateDisableConfig$237 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 817: }
	Sstm8s_tim1$TIM1_UpdateDisableConfig$238 ==.
	XG$TIM1_UpdateDisableConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_UpdateDisableConfig$239 ==.
	Sstm8s_tim1$TIM1_UpdateRequestConfig$240 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
;	-----------------------------------------
;	 function TIM1_UpdateRequestConfig
;	-----------------------------------------
_TIM1_UpdateRequestConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_UpdateRequestConfig$241 ==.
	Sstm8s_tim1$TIM1_UpdateRequestConfig$242 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_UpdateRequestConfig$243 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
	ldw	x, #0x5250
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_UpdateRequestConfig$244 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
	ldw	x, #0x5250
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_UpdateRequestConfig$245 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 841: }
	Sstm8s_tim1$TIM1_UpdateRequestConfig$246 ==.
	XG$TIM1_UpdateRequestConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_UpdateRequestConfig$247 ==.
	Sstm8s_tim1$TIM1_SelectHallSensor$248 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_SelectHallSensor
;	-----------------------------------------
_TIM1_SelectHallSensor:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectHallSensor$249 ==.
	Sstm8s_tim1$TIM1_SelectHallSensor$250 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 855: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_SelectHallSensor$251 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
	bset	0x5251, #7
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_SelectHallSensor$252 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
	bres	0x5251, #7
00104$:
	Sstm8s_tim1$TIM1_SelectHallSensor$253 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 863: }
	Sstm8s_tim1$TIM1_SelectHallSensor$254 ==.
	XG$TIM1_SelectHallSensor$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectHallSensor$255 ==.
	Sstm8s_tim1$TIM1_SelectOnePulseMode$256 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
;	-----------------------------------------
;	 function TIM1_SelectOnePulseMode
;	-----------------------------------------
_TIM1_SelectOnePulseMode:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectOnePulseMode$257 ==.
	Sstm8s_tim1$TIM1_SelectOnePulseMode$258 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_SelectOnePulseMode$259 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
	ldw	x, #0x5250
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_SelectOnePulseMode$260 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
	ldw	x, #0x5250
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_SelectOnePulseMode$261 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 888: }
	Sstm8s_tim1$TIM1_SelectOnePulseMode$262 ==.
	XG$TIM1_SelectOnePulseMode$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectOnePulseMode$263 ==.
	Sstm8s_tim1$TIM1_SelectOutputTrigger$264 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
;	-----------------------------------------
;	 function TIM1_SelectOutputTrigger
;	-----------------------------------------
_TIM1_SelectOutputTrigger:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectOutputTrigger$265 ==.
	Sstm8s_tim1$TIM1_SelectOutputTrigger$266 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
	ldw	x, #0x5251
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_SelectOutputTrigger$267 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
	or	a, (0x05, sp)
	ldw	x, #0x5251
	ld	(x), a
	Sstm8s_tim1$TIM1_SelectOutputTrigger$268 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 911: }
	Sstm8s_tim1$TIM1_SelectOutputTrigger$269 ==.
	XG$TIM1_SelectOutputTrigger$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectOutputTrigger$270 ==.
	Sstm8s_tim1$TIM1_SelectSlaveMode$271 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
;	-----------------------------------------
;	 function TIM1_SelectSlaveMode
;	-----------------------------------------
_TIM1_SelectSlaveMode:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectSlaveMode$272 ==.
	Sstm8s_tim1$TIM1_SelectSlaveMode$273 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0xf8
	Sstm8s_tim1$TIM1_SelectSlaveMode$274 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
	or	a, (0x05, sp)
	ldw	x, #0x5252
	ld	(x), a
	Sstm8s_tim1$TIM1_SelectSlaveMode$275 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 931: }
	Sstm8s_tim1$TIM1_SelectSlaveMode$276 ==.
	XG$TIM1_SelectSlaveMode$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectSlaveMode$277 ==.
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$278 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_SelectMasterSlaveMode
;	-----------------------------------------
_TIM1_SelectMasterSlaveMode:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$279 ==.
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$280 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 945: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$281 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
	bset	0x5252, #7
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$282 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
	bres	0x5252, #7
00104$:
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$283 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 953: }
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$284 ==.
	XG$TIM1_SelectMasterSlaveMode$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$285 ==.
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$286 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
;	-----------------------------------------
;	 function TIM1_EncoderInterfaceConfig
;	-----------------------------------------
_TIM1_EncoderInterfaceConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$287 ==.
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$288 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$289 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$290 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$291 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x07, sp)
	jreq	00105$
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$292 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00106$
00105$:
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$293 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00106$:
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$294 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0xf0
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$295 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
	or	a, (0x05, sp)
	ldw	x, #0x5252
	ld	(x), a
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$296 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0xfc
	or	a, #0x01
	ldw	x, #0x5258
	ld	(x), a
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$297 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0xfc
	or	a, #0x01
	ldw	x, #0x5259
	ld	(x), a
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$298 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1011: }
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$299 ==.
	XG$TIM1_EncoderInterfaceConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$300 ==.
	Sstm8s_tim1$TIM1_PrescalerConfig$301 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
;	-----------------------------------------
;	 function TIM1_PrescalerConfig
;	-----------------------------------------
_TIM1_PrescalerConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_PrescalerConfig$302 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_PrescalerConfig$303 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x5260
	ld	(x), a
	Sstm8s_tim1$TIM1_PrescalerConfig$304 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
	ld	a, (0x08, sp)
	ldw	x, #0x5261
	ld	(x), a
	Sstm8s_tim1$TIM1_PrescalerConfig$305 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
	ldw	x, #0x5257
	ld	a, (0x09, sp)
	ld	(x), a
	Sstm8s_tim1$TIM1_PrescalerConfig$306 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1035: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_PrescalerConfig$307 ==.
	XG$TIM1_PrescalerConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_PrescalerConfig$308 ==.
	Sstm8s_tim1$TIM1_CounterModeConfig$309 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
;	-----------------------------------------
;	 function TIM1_CounterModeConfig
;	-----------------------------------------
_TIM1_CounterModeConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_CounterModeConfig$310 ==.
	Sstm8s_tim1$TIM1_CounterModeConfig$311 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
	ldw	x, #0x5250
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_CounterModeConfig$312 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
	or	a, (0x05, sp)
	ldw	x, #0x5250
	ld	(x), a
	Sstm8s_tim1$TIM1_CounterModeConfig$313 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1057: }
	Sstm8s_tim1$TIM1_CounterModeConfig$314 ==.
	XG$TIM1_CounterModeConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_CounterModeConfig$315 ==.
	Sstm8s_tim1$TIM1_ForcedOC1Config$316 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC1Config
;	-----------------------------------------
_TIM1_ForcedOC1Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ForcedOC1Config$317 ==.
	Sstm8s_tim1$TIM1_ForcedOC1Config$318 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_ForcedOC1Config$319 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
	or	a, (0x05, sp)
	ldw	x, #0x5258
	ld	(x), a
	Sstm8s_tim1$TIM1_ForcedOC1Config$320 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1075: }
	Sstm8s_tim1$TIM1_ForcedOC1Config$321 ==.
	XG$TIM1_ForcedOC1Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ForcedOC1Config$322 ==.
	Sstm8s_tim1$TIM1_ForcedOC2Config$323 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC2Config
;	-----------------------------------------
_TIM1_ForcedOC2Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ForcedOC2Config$324 ==.
	Sstm8s_tim1$TIM1_ForcedOC2Config$325 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_ForcedOC2Config$326 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
	or	a, (0x05, sp)
	ldw	x, #0x5259
	ld	(x), a
	Sstm8s_tim1$TIM1_ForcedOC2Config$327 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1093: }
	Sstm8s_tim1$TIM1_ForcedOC2Config$328 ==.
	XG$TIM1_ForcedOC2Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ForcedOC2Config$329 ==.
	Sstm8s_tim1$TIM1_ForcedOC3Config$330 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC3Config
;	-----------------------------------------
_TIM1_ForcedOC3Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ForcedOC3Config$331 ==.
	Sstm8s_tim1$TIM1_ForcedOC3Config$332 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_ForcedOC3Config$333 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
	or	a, (0x05, sp)
	ldw	x, #0x525a
	ld	(x), a
	Sstm8s_tim1$TIM1_ForcedOC3Config$334 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1112: }
	Sstm8s_tim1$TIM1_ForcedOC3Config$335 ==.
	XG$TIM1_ForcedOC3Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ForcedOC3Config$336 ==.
	Sstm8s_tim1$TIM1_ForcedOC4Config$337 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
;	-----------------------------------------
;	 function TIM1_ForcedOC4Config
;	-----------------------------------------
_TIM1_ForcedOC4Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ForcedOC4Config$338 ==.
	Sstm8s_tim1$TIM1_ForcedOC4Config$339 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_ForcedOC4Config$340 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
	or	a, (0x05, sp)
	ldw	x, #0x525b
	ld	(x), a
	Sstm8s_tim1$TIM1_ForcedOC4Config$341 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1131: }
	Sstm8s_tim1$TIM1_ForcedOC4Config$342 ==.
	XG$TIM1_ForcedOC4Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ForcedOC4Config$343 ==.
	Sstm8s_tim1$TIM1_ARRPreloadConfig$344 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_ARRPreloadConfig
;	-----------------------------------------
_TIM1_ARRPreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ARRPreloadConfig$345 ==.
	Sstm8s_tim1$TIM1_ARRPreloadConfig$346 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1145: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_ARRPreloadConfig$347 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
	bset	0x5250, #7
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_ARRPreloadConfig$348 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
	bres	0x5250, #7
00104$:
	Sstm8s_tim1$TIM1_ARRPreloadConfig$349 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1153: }
	Sstm8s_tim1$TIM1_ARRPreloadConfig$350 ==.
	XG$TIM1_ARRPreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ARRPreloadConfig$351 ==.
	Sstm8s_tim1$TIM1_SelectCOM$352 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_SelectCOM
;	-----------------------------------------
_TIM1_SelectCOM:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectCOM$353 ==.
	Sstm8s_tim1$TIM1_SelectCOM$354 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1167: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_SelectCOM$355 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
	ldw	x, #0x5251
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_SelectCOM$356 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
	ldw	x, #0x5251
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_SelectCOM$357 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1175: }
	Sstm8s_tim1$TIM1_SelectCOM$358 ==.
	XG$TIM1_SelectCOM$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectCOM$359 ==.
	Sstm8s_tim1$TIM1_CCPreloadControl$360 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCPreloadControl
;	-----------------------------------------
_TIM1_CCPreloadControl:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_CCPreloadControl$361 ==.
	Sstm8s_tim1$TIM1_CCPreloadControl$362 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1189: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_CCPreloadControl$363 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
	bset	0x5251, #0
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_CCPreloadControl$364 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
	bres	0x5251, #0
00104$:
	Sstm8s_tim1$TIM1_CCPreloadControl$365 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1197: }
	Sstm8s_tim1$TIM1_CCPreloadControl$366 ==.
	XG$TIM1_CCPreloadControl$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_CCPreloadControl$367 ==.
	Sstm8s_tim1$TIM1_OC1PreloadConfig$368 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC1PreloadConfig
;	-----------------------------------------
_TIM1_OC1PreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC1PreloadConfig$369 ==.
	Sstm8s_tim1$TIM1_OC1PreloadConfig$370 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1211: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC1PreloadConfig$371 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
	ldw	x, #0x5258
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC1PreloadConfig$372 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC1PreloadConfig$373 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1219: }
	Sstm8s_tim1$TIM1_OC1PreloadConfig$374 ==.
	XG$TIM1_OC1PreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC1PreloadConfig$375 ==.
	Sstm8s_tim1$TIM1_OC2PreloadConfig$376 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC2PreloadConfig
;	-----------------------------------------
_TIM1_OC2PreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC2PreloadConfig$377 ==.
	Sstm8s_tim1$TIM1_OC2PreloadConfig$378 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1233: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC2PreloadConfig$379 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
	ldw	x, #0x5259
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC2PreloadConfig$380 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC2PreloadConfig$381 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1241: }
	Sstm8s_tim1$TIM1_OC2PreloadConfig$382 ==.
	XG$TIM1_OC2PreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC2PreloadConfig$383 ==.
	Sstm8s_tim1$TIM1_OC3PreloadConfig$384 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC3PreloadConfig
;	-----------------------------------------
_TIM1_OC3PreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC3PreloadConfig$385 ==.
	Sstm8s_tim1$TIM1_OC3PreloadConfig$386 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1255: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC3PreloadConfig$387 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
	ldw	x, #0x525a
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC3PreloadConfig$388 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC3PreloadConfig$389 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1263: }
	Sstm8s_tim1$TIM1_OC3PreloadConfig$390 ==.
	XG$TIM1_OC3PreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC3PreloadConfig$391 ==.
	Sstm8s_tim1$TIM1_OC4PreloadConfig$392 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC4PreloadConfig
;	-----------------------------------------
_TIM1_OC4PreloadConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC4PreloadConfig$393 ==.
	Sstm8s_tim1$TIM1_OC4PreloadConfig$394 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1277: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC4PreloadConfig$395 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
	ldw	x, #0x525b
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC4PreloadConfig$396 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC4PreloadConfig$397 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1285: }
	Sstm8s_tim1$TIM1_OC4PreloadConfig$398 ==.
	XG$TIM1_OC4PreloadConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC4PreloadConfig$399 ==.
	Sstm8s_tim1$TIM1_OC1FastConfig$400 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC1FastConfig
;	-----------------------------------------
_TIM1_OC1FastConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC1FastConfig$401 ==.
	Sstm8s_tim1$TIM1_OC1FastConfig$402 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1299: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC1FastConfig$403 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
	ldw	x, #0x5258
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC1FastConfig$404 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC1FastConfig$405 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1307: }
	Sstm8s_tim1$TIM1_OC1FastConfig$406 ==.
	XG$TIM1_OC1FastConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC1FastConfig$407 ==.
	Sstm8s_tim1$TIM1_OC2FastConfig$408 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC2FastConfig
;	-----------------------------------------
_TIM1_OC2FastConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC2FastConfig$409 ==.
	Sstm8s_tim1$TIM1_OC2FastConfig$410 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1321: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC2FastConfig$411 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
	ldw	x, #0x5259
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC2FastConfig$412 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC2FastConfig$413 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1329: }
	Sstm8s_tim1$TIM1_OC2FastConfig$414 ==.
	XG$TIM1_OC2FastConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC2FastConfig$415 ==.
	Sstm8s_tim1$TIM1_OC3FastConfig$416 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC3FastConfig
;	-----------------------------------------
_TIM1_OC3FastConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC3FastConfig$417 ==.
	Sstm8s_tim1$TIM1_OC3FastConfig$418 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1343: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC3FastConfig$419 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
	ldw	x, #0x525a
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC3FastConfig$420 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC3FastConfig$421 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1351: }
	Sstm8s_tim1$TIM1_OC3FastConfig$422 ==.
	XG$TIM1_OC3FastConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC3FastConfig$423 ==.
	Sstm8s_tim1$TIM1_OC4FastConfig$424 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC4FastConfig
;	-----------------------------------------
_TIM1_OC4FastConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC4FastConfig$425 ==.
	Sstm8s_tim1$TIM1_OC4FastConfig$426 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1365: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC4FastConfig$427 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
	ldw	x, #0x525b
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC4FastConfig$428 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC4FastConfig$429 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1373: }
	Sstm8s_tim1$TIM1_OC4FastConfig$430 ==.
	XG$TIM1_OC4FastConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC4FastConfig$431 ==.
	Sstm8s_tim1$TIM1_GenerateEvent$432 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
;	-----------------------------------------
;	 function TIM1_GenerateEvent
;	-----------------------------------------
_TIM1_GenerateEvent:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GenerateEvent$433 ==.
	Sstm8s_tim1$TIM1_GenerateEvent$434 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
	ldw	x, #0x5257
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_tim1$TIM1_GenerateEvent$435 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1396: }
	Sstm8s_tim1$TIM1_GenerateEvent$436 ==.
	XG$TIM1_GenerateEvent$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GenerateEvent$437 ==.
	Sstm8s_tim1$TIM1_OC1PolarityConfig$438 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC1PolarityConfig
;	-----------------------------------------
_TIM1_OC1PolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC1PolarityConfig$439 ==.
	Sstm8s_tim1$TIM1_OC1PolarityConfig$440 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC1PolarityConfig$441 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC1PolarityConfig$442 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC1PolarityConfig$443 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1420: }
	Sstm8s_tim1$TIM1_OC1PolarityConfig$444 ==.
	XG$TIM1_OC1PolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC1PolarityConfig$445 ==.
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$446 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
;	-----------------------------------------
;	 function TIM1_OC1NPolarityConfig
;	-----------------------------------------
_TIM1_OC1NPolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$447 ==.
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$448 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$449 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$450 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$451 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1444: }
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$452 ==.
	XG$TIM1_OC1NPolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC1NPolarityConfig$453 ==.
	Sstm8s_tim1$TIM1_OC2PolarityConfig$454 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC2PolarityConfig
;	-----------------------------------------
_TIM1_OC2PolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC2PolarityConfig$455 ==.
	Sstm8s_tim1$TIM1_OC2PolarityConfig$456 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC2PolarityConfig$457 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC2PolarityConfig$458 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC2PolarityConfig$459 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1468: }
	Sstm8s_tim1$TIM1_OC2PolarityConfig$460 ==.
	XG$TIM1_OC2PolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC2PolarityConfig$461 ==.
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$462 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
;	-----------------------------------------
;	 function TIM1_OC2NPolarityConfig
;	-----------------------------------------
_TIM1_OC2NPolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$463 ==.
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$464 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$465 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
	bset	0x525c, #7
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$466 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
	bres	0x525c, #7
00104$:
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$467 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1492: }
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$468 ==.
	XG$TIM1_OC2NPolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC2NPolarityConfig$469 ==.
	Sstm8s_tim1$TIM1_OC3PolarityConfig$470 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC3PolarityConfig
;	-----------------------------------------
_TIM1_OC3PolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC3PolarityConfig$471 ==.
	Sstm8s_tim1$TIM1_OC3PolarityConfig$472 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC3PolarityConfig$473 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC3PolarityConfig$474 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC3PolarityConfig$475 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1516: }
	Sstm8s_tim1$TIM1_OC3PolarityConfig$476 ==.
	XG$TIM1_OC3PolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC3PolarityConfig$477 ==.
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$478 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
;	-----------------------------------------
;	 function TIM1_OC3NPolarityConfig
;	-----------------------------------------
_TIM1_OC3NPolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$479 ==.
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$480 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$481 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$482 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$483 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1541: }
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$484 ==.
	XG$TIM1_OC3NPolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC3NPolarityConfig$485 ==.
	Sstm8s_tim1$TIM1_OC4PolarityConfig$486 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC4PolarityConfig
;	-----------------------------------------
_TIM1_OC4PolarityConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_OC4PolarityConfig$487 ==.
	Sstm8s_tim1$TIM1_OC4PolarityConfig$488 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_OC4PolarityConfig$489 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_tim1$TIM1_OC4PolarityConfig$490 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	Sstm8s_tim1$TIM1_OC4PolarityConfig$491 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1565: }
	Sstm8s_tim1$TIM1_OC4PolarityConfig$492 ==.
	XG$TIM1_OC4PolarityConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_OC4PolarityConfig$493 ==.
	Sstm8s_tim1$TIM1_CCxCmd$494 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCxCmd
;	-----------------------------------------
_TIM1_CCxCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_CCxCmd$495 ==.
	Sstm8s_tim1$TIM1_CCxCmd$496 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00120$
	Sstm8s_tim1$TIM1_CCxCmd$497 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1588: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_CCxCmd$498 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
	bset	0x525c, #0
	jp	00122$
00102$:
	Sstm8s_tim1$TIM1_CCxCmd$499 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	0x525c, #0
	jp	00122$
00120$:
	Sstm8s_tim1$TIM1_CCxCmd$500 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00117$
	Sstm8s_tim1$TIM1_CCxCmd$501 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1601: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00105$
	Sstm8s_tim1$TIM1_CCxCmd$502 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00122$
00105$:
	Sstm8s_tim1$TIM1_CCxCmd$503 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	jra	00122$
00117$:
	Sstm8s_tim1$TIM1_CCxCmd$504 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00114$
	Sstm8s_tim1$TIM1_CCxCmd$505 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1613: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00108$
	Sstm8s_tim1$TIM1_CCxCmd$506 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
	bset	0x525d, #0
	jra	00122$
00108$:
	Sstm8s_tim1$TIM1_CCxCmd$507 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
	bres	0x525d, #0
	jra	00122$
00114$:
	Sstm8s_tim1$TIM1_CCxCmd$508 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1625: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00111$
	Sstm8s_tim1$TIM1_CCxCmd$509 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00122$
00111$:
	Sstm8s_tim1$TIM1_CCxCmd$510 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00122$:
	Sstm8s_tim1$TIM1_CCxCmd$511 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1634: }
	Sstm8s_tim1$TIM1_CCxCmd$512 ==.
	XG$TIM1_CCxCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_CCxCmd$513 ==.
	Sstm8s_tim1$TIM1_CCxNCmd$514 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCxNCmd
;	-----------------------------------------
_TIM1_CCxNCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_CCxNCmd$515 ==.
	Sstm8s_tim1$TIM1_CCxNCmd$516 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00114$
	Sstm8s_tim1$TIM1_CCxNCmd$517 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1656: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim1$TIM1_CCxNCmd$518 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00116$
00102$:
	Sstm8s_tim1$TIM1_CCxNCmd$519 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
	jra	00116$
00114$:
	Sstm8s_tim1$TIM1_CCxNCmd$520 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00111$
	Sstm8s_tim1$TIM1_CCxNCmd$521 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1668: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00105$
	Sstm8s_tim1$TIM1_CCxNCmd$522 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00116$
00105$:
	Sstm8s_tim1$TIM1_CCxNCmd$523 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
	jra	00116$
00111$:
	Sstm8s_tim1$TIM1_CCxNCmd$524 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1680: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00108$
	Sstm8s_tim1$TIM1_CCxNCmd$525 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00116$
00108$:
	Sstm8s_tim1$TIM1_CCxNCmd$526 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00116$:
	Sstm8s_tim1$TIM1_CCxNCmd$527 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1689: }
	Sstm8s_tim1$TIM1_CCxNCmd$528 ==.
	XG$TIM1_CCxNCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_CCxNCmd$529 ==.
	Sstm8s_tim1$TIM1_SelectOCxM$530 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
;	-----------------------------------------
;	 function TIM1_SelectOCxM
;	-----------------------------------------
_TIM1_SelectOCxM:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SelectOCxM$531 ==.
	Sstm8s_tim1$TIM1_SelectOCxM$532 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00108$
	Sstm8s_tim1$TIM1_SelectOCxM$533 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	0x525c, #0
	Sstm8s_tim1$TIM1_SelectOCxM$534 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_SelectOCxM$535 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x5258
	ld	(x), a
	jp	00110$
00108$:
	Sstm8s_tim1$TIM1_SelectOCxM$536 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00105$
	Sstm8s_tim1$TIM1_SelectOCxM$537 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_tim1$TIM1_SelectOCxM$538 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_SelectOCxM$539 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x5259
	ld	(x), a
	jra	00110$
00105$:
	Sstm8s_tim1$TIM1_SelectOCxM$540 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00102$
	Sstm8s_tim1$TIM1_SelectOCxM$541 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
	bres	0x525d, #0
	Sstm8s_tim1$TIM1_SelectOCxM$542 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_SelectOCxM$543 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x525a
	ld	(x), a
	jra	00110$
00102$:
	Sstm8s_tim1$TIM1_SelectOCxM$544 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_tim1$TIM1_SelectOCxM$545 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0x8f
	Sstm8s_tim1$TIM1_SelectOCxM$546 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x525b
	ld	(x), a
00110$:
	Sstm8s_tim1$TIM1_SelectOCxM$547 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1754: }
	Sstm8s_tim1$TIM1_SelectOCxM$548 ==.
	XG$TIM1_SelectOCxM$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SelectOCxM$549 ==.
	Sstm8s_tim1$TIM1_SetCounter$550 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM1_SetCounter
;	-----------------------------------------
_TIM1_SetCounter:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetCounter$551 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_SetCounter$552 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x525e
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCounter$553 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
	ld	a, (0x08, sp)
	ldw	x, #0x525f
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCounter$554 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1767: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_SetCounter$555 ==.
	XG$TIM1_SetCounter$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetCounter$556 ==.
	Sstm8s_tim1$TIM1_SetAutoreload$557 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM1_SetAutoreload
;	-----------------------------------------
_TIM1_SetAutoreload:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetAutoreload$558 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_SetAutoreload$559 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x5262
	ld	(x), a
	Sstm8s_tim1$TIM1_SetAutoreload$560 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x08, sp)
	ldw	x, #0x5263
	ld	(x), a
	Sstm8s_tim1$TIM1_SetAutoreload$561 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1780: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_SetAutoreload$562 ==.
	XG$TIM1_SetAutoreload$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetAutoreload$563 ==.
	Sstm8s_tim1$TIM1_SetCompare1$564 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM1_SetCompare1
;	-----------------------------------------
_TIM1_SetCompare1:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetCompare1$565 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_SetCompare1$566 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x5265
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare1$567 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x08, sp)
	ldw	x, #0x5266
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare1$568 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1793: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_SetCompare1$569 ==.
	XG$TIM1_SetCompare1$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetCompare1$570 ==.
	Sstm8s_tim1$TIM1_SetCompare2$571 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM1_SetCompare2
;	-----------------------------------------
_TIM1_SetCompare2:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetCompare2$572 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_SetCompare2$573 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x5267
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare2$574 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x08, sp)
	ldw	x, #0x5268
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare2$575 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1806: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_SetCompare2$576 ==.
	XG$TIM1_SetCompare2$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetCompare2$577 ==.
	Sstm8s_tim1$TIM1_SetCompare3$578 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
;	-----------------------------------------
;	 function TIM1_SetCompare3
;	-----------------------------------------
_TIM1_SetCompare3:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetCompare3$579 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_SetCompare3$580 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x5269
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare3$581 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
	ld	a, (0x08, sp)
	ldw	x, #0x526a
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare3$582 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1819: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_SetCompare3$583 ==.
	XG$TIM1_SetCompare3$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetCompare3$584 ==.
	Sstm8s_tim1$TIM1_SetCompare4$585 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
;	-----------------------------------------
;	 function TIM1_SetCompare4
;	-----------------------------------------
_TIM1_SetCompare4:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetCompare4$586 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_SetCompare4$587 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	ldw	x, #0x526b
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare4$588 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
	ld	a, (0x08, sp)
	ldw	x, #0x526c
	ld	(x), a
	Sstm8s_tim1$TIM1_SetCompare4$589 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1832: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_SetCompare4$590 ==.
	XG$TIM1_SetCompare4$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetCompare4$591 ==.
	Sstm8s_tim1$TIM1_SetIC1Prescaler$592 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC1Prescaler
;	-----------------------------------------
_TIM1_SetIC1Prescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetIC1Prescaler$593 ==.
	Sstm8s_tim1$TIM1_SetIC1Prescaler$594 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0xf3
	Sstm8s_tim1$TIM1_SetIC1Prescaler$595 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
	or	a, (0x05, sp)
	ldw	x, #0x5258
	ld	(x), a
	Sstm8s_tim1$TIM1_SetIC1Prescaler$596 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1852: }
	Sstm8s_tim1$TIM1_SetIC1Prescaler$597 ==.
	XG$TIM1_SetIC1Prescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetIC1Prescaler$598 ==.
	Sstm8s_tim1$TIM1_SetIC2Prescaler$599 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC2Prescaler
;	-----------------------------------------
_TIM1_SetIC2Prescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetIC2Prescaler$600 ==.
	Sstm8s_tim1$TIM1_SetIC2Prescaler$601 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0xf3
	Sstm8s_tim1$TIM1_SetIC2Prescaler$602 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
	or	a, (0x05, sp)
	ldw	x, #0x5259
	ld	(x), a
	Sstm8s_tim1$TIM1_SetIC2Prescaler$603 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1873: }
	Sstm8s_tim1$TIM1_SetIC2Prescaler$604 ==.
	XG$TIM1_SetIC2Prescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetIC2Prescaler$605 ==.
	Sstm8s_tim1$TIM1_SetIC3Prescaler$606 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC3Prescaler
;	-----------------------------------------
_TIM1_SetIC3Prescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetIC3Prescaler$607 ==.
	Sstm8s_tim1$TIM1_SetIC3Prescaler$608 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0xf3
	Sstm8s_tim1$TIM1_SetIC3Prescaler$609 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
	or	a, (0x05, sp)
	ldw	x, #0x525a
	ld	(x), a
	Sstm8s_tim1$TIM1_SetIC3Prescaler$610 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1894: }
	Sstm8s_tim1$TIM1_SetIC3Prescaler$611 ==.
	XG$TIM1_SetIC3Prescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetIC3Prescaler$612 ==.
	Sstm8s_tim1$TIM1_SetIC4Prescaler$613 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
;	-----------------------------------------
;	 function TIM1_SetIC4Prescaler
;	-----------------------------------------
_TIM1_SetIC4Prescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_SetIC4Prescaler$614 ==.
	Sstm8s_tim1$TIM1_SetIC4Prescaler$615 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0xf3
	Sstm8s_tim1$TIM1_SetIC4Prescaler$616 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
	or	a, (0x05, sp)
	ldw	x, #0x525b
	ld	(x), a
	Sstm8s_tim1$TIM1_SetIC4Prescaler$617 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1915: }
	Sstm8s_tim1$TIM1_SetIC4Prescaler$618 ==.
	XG$TIM1_SetIC4Prescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_SetIC4Prescaler$619 ==.
	Sstm8s_tim1$TIM1_GetCapture1$620 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
;	-----------------------------------------
;	 function TIM1_GetCapture1
;	-----------------------------------------
_TIM1_GetCapture1:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetCapture1$621 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_GetCapture1$622 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
	ldw	x, #0x5265
	ld	a, (x)
	ld	yl, a
	Sstm8s_tim1$TIM1_GetCapture1$623 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
	ldw	x, #0x5266
	ld	a, (x)
	Sstm8s_tim1$TIM1_GetCapture1$624 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
	clrw	x
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture1$625 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clr	a
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture1$626 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
	Sstm8s_tim1$TIM1_GetCapture1$627 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1936: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_GetCapture1$628 ==.
	XG$TIM1_GetCapture1$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetCapture1$629 ==.
	Sstm8s_tim1$TIM1_GetCapture2$630 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
;	-----------------------------------------
;	 function TIM1_GetCapture2
;	-----------------------------------------
_TIM1_GetCapture2:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetCapture2$631 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_GetCapture2$632 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
	ldw	x, #0x5267
	ld	a, (x)
	ld	yl, a
	Sstm8s_tim1$TIM1_GetCapture2$633 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
	ldw	x, #0x5268
	ld	a, (x)
	Sstm8s_tim1$TIM1_GetCapture2$634 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
	clrw	x
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture2$635 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clr	a
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture2$636 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
	Sstm8s_tim1$TIM1_GetCapture2$637 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1957: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_GetCapture2$638 ==.
	XG$TIM1_GetCapture2$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetCapture2$639 ==.
	Sstm8s_tim1$TIM1_GetCapture3$640 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
;	-----------------------------------------
;	 function TIM1_GetCapture3
;	-----------------------------------------
_TIM1_GetCapture3:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetCapture3$641 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_GetCapture3$642 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
	ldw	x, #0x5269
	ld	a, (x)
	ld	yl, a
	Sstm8s_tim1$TIM1_GetCapture3$643 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
	ldw	x, #0x526a
	ld	a, (x)
	Sstm8s_tim1$TIM1_GetCapture3$644 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
	clrw	x
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture3$645 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
	clr	a
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture3$646 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
	Sstm8s_tim1$TIM1_GetCapture3$647 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1977: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_GetCapture3$648 ==.
	XG$TIM1_GetCapture3$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetCapture3$649 ==.
	Sstm8s_tim1$TIM1_GetCapture4$650 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
;	-----------------------------------------
;	 function TIM1_GetCapture4
;	-----------------------------------------
_TIM1_GetCapture4:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetCapture4$651 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_GetCapture4$652 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
	ldw	x, #0x526b
	ld	a, (x)
	ld	yl, a
	Sstm8s_tim1$TIM1_GetCapture4$653 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
	ldw	x, #0x526c
	ld	a, (x)
	Sstm8s_tim1$TIM1_GetCapture4$654 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
	clrw	x
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture4$655 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
	clr	a
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
	Sstm8s_tim1$TIM1_GetCapture4$656 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
	Sstm8s_tim1$TIM1_GetCapture4$657 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 1997: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_GetCapture4$658 ==.
	XG$TIM1_GetCapture4$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetCapture4$659 ==.
	Sstm8s_tim1$TIM1_GetCounter$660 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
;	-----------------------------------------
;	 function TIM1_GetCounter
;	-----------------------------------------
_TIM1_GetCounter:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetCounter$661 ==.
	sub	sp, #4
	Sstm8s_tim1$TIM1_GetCounter$662 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
	ldw	x, #0x525e
	ld	a, (x)
	ld	xh, a
	clr	a
	clr	a
	ld	(0x02, sp), a
	Sstm8s_tim1$TIM1_GetCounter$663 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
	ldw	y, #0x525f
	ld	a, (y)
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	Sstm8s_tim1$TIM1_GetCounter$664 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2012: }
	addw	sp, #4
	Sstm8s_tim1$TIM1_GetCounter$665 ==.
	XG$TIM1_GetCounter$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetCounter$666 ==.
	Sstm8s_tim1$TIM1_GetPrescaler$667 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM1_GetPrescaler
;	-----------------------------------------
_TIM1_GetPrescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetPrescaler$668 ==.
	sub	sp, #4
	Sstm8s_tim1$TIM1_GetPrescaler$669 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
	ldw	x, #0x5260
	ld	a, (x)
	ld	xh, a
	clr	a
	clr	a
	ld	(0x02, sp), a
	Sstm8s_tim1$TIM1_GetPrescaler$670 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
	ldw	y, #0x5261
	ld	a, (y)
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	Sstm8s_tim1$TIM1_GetPrescaler$671 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2027: }
	addw	sp, #4
	Sstm8s_tim1$TIM1_GetPrescaler$672 ==.
	XG$TIM1_GetPrescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetPrescaler$673 ==.
	Sstm8s_tim1$TIM1_GetFlagStatus$674 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
;	-----------------------------------------
;	 function TIM1_GetFlagStatus
;	-----------------------------------------
_TIM1_GetFlagStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetFlagStatus$675 ==.
	sub	sp, #5
	Sstm8s_tim1$TIM1_GetFlagStatus$676 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
	ldw	x, #0x5255
	ld	a, (x)
	ld	(0x05, sp), a
	ld	a, (0x0b, sp)
	and	a, (0x05, sp)
	ld	(0x01, sp), a
	Sstm8s_tim1$TIM1_GetFlagStatus$677 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
	ld	a, (0x0a, sp)
	clr	(0x03, sp)
	ld	(0x02, sp), a
	Sstm8s_tim1$TIM1_GetFlagStatus$678 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
	ldw	x, #0x5256
	ld	a, (x)
	and	a, (0x02, sp)
	or	a, (0x01, sp)
	tnz	a
	jreq	00102$
	Sstm8s_tim1$TIM1_GetFlagStatus$679 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2060: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	Sstm8s_tim1$TIM1_GetFlagStatus$680 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2064: bitstatus = RESET;
	clr	a
00103$:
	Sstm8s_tim1$TIM1_GetFlagStatus$681 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
	Sstm8s_tim1$TIM1_GetFlagStatus$682 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2067: }
	addw	sp, #5
	Sstm8s_tim1$TIM1_GetFlagStatus$683 ==.
	XG$TIM1_GetFlagStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetFlagStatus$684 ==.
	Sstm8s_tim1$TIM1_ClearFlag$685 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
;	-----------------------------------------
;	 function TIM1_ClearFlag
;	-----------------------------------------
_TIM1_ClearFlag:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ClearFlag$686 ==.
	sub	sp, #2
	Sstm8s_tim1$TIM1_ClearFlag$687 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
	ld	a, (0x08, sp)
	cpl	a
	ldw	x, #0x5255
	ld	(x), a
	Sstm8s_tim1$TIM1_ClearFlag$688 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
	ld	a, (0x07, sp)
	clr	(0x01, sp)
	cpl	a
	and	a, #0x1e
	ldw	x, #0x5256
	ld	(x), a
	Sstm8s_tim1$TIM1_ClearFlag$689 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2096: }
	addw	sp, #2
	Sstm8s_tim1$TIM1_ClearFlag$690 ==.
	XG$TIM1_ClearFlag$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ClearFlag$691 ==.
	Sstm8s_tim1$TIM1_GetITStatus$692 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
;	-----------------------------------------
;	 function TIM1_GetITStatus
;	-----------------------------------------
_TIM1_GetITStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_GetITStatus$693 ==.
	push	a
	Sstm8s_tim1$TIM1_GetITStatus$694 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
	ldw	x, #0x5255
	ld	a, (x)
	and	a, (0x06, sp)
	ld	(0x01, sp), a
	Sstm8s_tim1$TIM1_GetITStatus$695 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
	ldw	x, #0x5254
	ld	a, (x)
	and	a, (0x06, sp)
	Sstm8s_tim1$TIM1_GetITStatus$696 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
	Sstm8s_tim1$TIM1_GetITStatus$697 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2126: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
	Sstm8s_tim1$TIM1_GetITStatus$698 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2130: bitstatus = RESET;
	clr	a
00103$:
	Sstm8s_tim1$TIM1_GetITStatus$699 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
	Sstm8s_tim1$TIM1_GetITStatus$700 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2133: }
	addw	sp, #1
	Sstm8s_tim1$TIM1_GetITStatus$701 ==.
	XG$TIM1_GetITStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_GetITStatus$702 ==.
	Sstm8s_tim1$TIM1_ClearITPendingBit$703 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
;	-----------------------------------------
;	 function TIM1_ClearITPendingBit
;	-----------------------------------------
_TIM1_ClearITPendingBit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TIM1_ClearITPendingBit$704 ==.
	Sstm8s_tim1$TIM1_ClearITPendingBit$705 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
	ld	a, (0x05, sp)
	cpl	a
	ldw	x, #0x5255
	ld	(x), a
	Sstm8s_tim1$TIM1_ClearITPendingBit$706 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2156: }
	Sstm8s_tim1$TIM1_ClearITPendingBit$707 ==.
	XG$TIM1_ClearITPendingBit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TIM1_ClearITPendingBit$708 ==.
	Sstm8s_tim1$TI1_Config$709 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TI1_Config$710 ==.
	push	a
	Sstm8s_tim1$TI1_Config$711 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	0x525c, #0
	Sstm8s_tim1$TI1_Config$712 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim1$TI1_Config$713 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x08, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5258
	ld	(x), a
	Sstm8s_tim1$TI1_Config$714 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim1$TI1_Config$715 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim1$TI1_Config$716 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
	Sstm8s_tim1$TI1_Config$717 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
	bset	0x525c, #0
	Sstm8s_tim1$TI1_Config$718 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2197: }
	pop	a
	Sstm8s_tim1$TI1_Config$719 ==.
	XFstm8s_tim1$TI1_Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TI1_Config$720 ==.
	Sstm8s_tim1$TI2_Config$721 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TI2_Config$722 ==.
	push	a
	Sstm8s_tim1$TI2_Config$723 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_tim1$TI2_Config$724 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim1$TI2_Config$725 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x08, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5259
	ld	(x), a
	Sstm8s_tim1$TI2_Config$726 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim1$TI2_Config$727 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim1$TI2_Config$728 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00103$:
	Sstm8s_tim1$TI2_Config$729 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	Sstm8s_tim1$TI2_Config$730 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2236: }
	pop	a
	Sstm8s_tim1$TI2_Config$731 ==.
	XFstm8s_tim1$TI2_Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TI2_Config$732 ==.
	Sstm8s_tim1$TI3_Config$733 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI3_Config
;	-----------------------------------------
_TI3_Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TI3_Config$734 ==.
	push	a
	Sstm8s_tim1$TI3_Config$735 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
	bres	0x525d, #0
	Sstm8s_tim1$TI3_Config$736 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim1$TI3_Config$737 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x08, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x525a
	ld	(x), a
	Sstm8s_tim1$TI3_Config$738 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim1$TI3_Config$739 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim1$TI3_Config$740 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
	Sstm8s_tim1$TI3_Config$741 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
	bset	0x525d, #0
	Sstm8s_tim1$TI3_Config$742 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2276: }
	pop	a
	Sstm8s_tim1$TI3_Config$743 ==.
	XFstm8s_tim1$TI3_Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TI3_Config$744 ==.
	Sstm8s_tim1$TI4_Config$745 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TI4_Config
;	-----------------------------------------
_TI4_Config:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_tim1$TI4_Config$746 ==.
	push	a
	Sstm8s_tim1$TI4_Config$747 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_tim1$TI4_Config$748 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	Sstm8s_tim1$TI4_Config$749 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x08, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x525b
	ld	(x), a
	Sstm8s_tim1$TI4_Config$750 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_tim1$TI4_Config$751 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_tim1$TI4_Config$752 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00103$:
	Sstm8s_tim1$TI4_Config$753 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	Sstm8s_tim1$TI4_Config$754 ==.
;	StdPeriphLib/src/stm8s_tim1.c: 2317: }
	pop	a
	Sstm8s_tim1$TI4_Config$755 ==.
	XFstm8s_tim1$TI4_Config$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_tim1$TI4_Config$756 ==.
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
	.ascii "StdPeriphLib/src/stm8s_tim1.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_DeInit$0)
	.db	3
	.sleb128	57
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$2-Sstm8s_tim1$TIM1_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$3-Sstm8s_tim1$TIM1_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$4-Sstm8s_tim1$TIM1_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$5-Sstm8s_tim1$TIM1_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$6-Sstm8s_tim1$TIM1_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$7-Sstm8s_tim1$TIM1_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$8-Sstm8s_tim1$TIM1_DeInit$7
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$9-Sstm8s_tim1$TIM1_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$10-Sstm8s_tim1$TIM1_DeInit$9
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$11-Sstm8s_tim1$TIM1_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$12-Sstm8s_tim1$TIM1_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$13-Sstm8s_tim1$TIM1_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$14-Sstm8s_tim1$TIM1_DeInit$13
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$15-Sstm8s_tim1$TIM1_DeInit$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$16-Sstm8s_tim1$TIM1_DeInit$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$17-Sstm8s_tim1$TIM1_DeInit$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$18-Sstm8s_tim1$TIM1_DeInit$17
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$19-Sstm8s_tim1$TIM1_DeInit$18
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$20-Sstm8s_tim1$TIM1_DeInit$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$21-Sstm8s_tim1$TIM1_DeInit$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$22-Sstm8s_tim1$TIM1_DeInit$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$23-Sstm8s_tim1$TIM1_DeInit$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$24-Sstm8s_tim1$TIM1_DeInit$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$25-Sstm8s_tim1$TIM1_DeInit$24
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$26-Sstm8s_tim1$TIM1_DeInit$25
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$27-Sstm8s_tim1$TIM1_DeInit$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$28-Sstm8s_tim1$TIM1_DeInit$27
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$29-Sstm8s_tim1$TIM1_DeInit$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$30-Sstm8s_tim1$TIM1_DeInit$29
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$31-Sstm8s_tim1$TIM1_DeInit$30
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$32-Sstm8s_tim1$TIM1_DeInit$31
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$33-Sstm8s_tim1$TIM1_DeInit$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$34-Sstm8s_tim1$TIM1_DeInit$33
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$35-Sstm8s_tim1$TIM1_DeInit$34
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$36-Sstm8s_tim1$TIM1_DeInit$35
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$37-Sstm8s_tim1$TIM1_DeInit$36
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$38-Sstm8s_tim1$TIM1_DeInit$37
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$39-Sstm8s_tim1$TIM1_DeInit$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_DeInit$40-Sstm8s_tim1$TIM1_DeInit$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_DeInit$41-Sstm8s_tim1$TIM1_DeInit$40
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_TimeBaseInit$43)
	.db	3
	.sleb128	110
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$45-Sstm8s_tim1$TIM1_TimeBaseInit$43
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$46-Sstm8s_tim1$TIM1_TimeBaseInit$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$47-Sstm8s_tim1$TIM1_TimeBaseInit$46
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$48-Sstm8s_tim1$TIM1_TimeBaseInit$47
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$49-Sstm8s_tim1$TIM1_TimeBaseInit$48
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$50-Sstm8s_tim1$TIM1_TimeBaseInit$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$51-Sstm8s_tim1$TIM1_TimeBaseInit$50
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$52-Sstm8s_tim1$TIM1_TimeBaseInit$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_TimeBaseInit$53-Sstm8s_tim1$TIM1_TimeBaseInit$52
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC1Init$55)
	.db	3
	.sleb128	153
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$57-Sstm8s_tim1$TIM1_OC1Init$55
	.db	3
	.sleb128	20
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$58-Sstm8s_tim1$TIM1_OC1Init$57
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$59-Sstm8s_tim1$TIM1_OC1Init$58
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$60-Sstm8s_tim1$TIM1_OC1Init$59
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$61-Sstm8s_tim1$TIM1_OC1Init$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$62-Sstm8s_tim1$TIM1_OC1Init$61
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$63-Sstm8s_tim1$TIM1_OC1Init$62
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$64-Sstm8s_tim1$TIM1_OC1Init$63
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$65-Sstm8s_tim1$TIM1_OC1Init$64
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$66-Sstm8s_tim1$TIM1_OC1Init$65
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$67-Sstm8s_tim1$TIM1_OC1Init$66
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$68-Sstm8s_tim1$TIM1_OC1Init$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1Init$69-Sstm8s_tim1$TIM1_OC1Init$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC1Init$70-Sstm8s_tim1$TIM1_OC1Init$69
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC2Init$72)
	.db	3
	.sleb128	216
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$74-Sstm8s_tim1$TIM1_OC2Init$72
	.db	3
	.sleb128	20
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$75-Sstm8s_tim1$TIM1_OC2Init$74
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$76-Sstm8s_tim1$TIM1_OC2Init$75
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$77-Sstm8s_tim1$TIM1_OC2Init$76
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$78-Sstm8s_tim1$TIM1_OC2Init$77
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$79-Sstm8s_tim1$TIM1_OC2Init$78
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$80-Sstm8s_tim1$TIM1_OC2Init$79
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$81-Sstm8s_tim1$TIM1_OC2Init$80
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$82-Sstm8s_tim1$TIM1_OC2Init$81
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$83-Sstm8s_tim1$TIM1_OC2Init$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$84-Sstm8s_tim1$TIM1_OC2Init$83
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$85-Sstm8s_tim1$TIM1_OC2Init$84
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2Init$86-Sstm8s_tim1$TIM1_OC2Init$85
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC2Init$87-Sstm8s_tim1$TIM1_OC2Init$86
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC3Init$89)
	.db	3
	.sleb128	280
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$91-Sstm8s_tim1$TIM1_OC3Init$89
	.db	3
	.sleb128	20
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$92-Sstm8s_tim1$TIM1_OC3Init$91
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$93-Sstm8s_tim1$TIM1_OC3Init$92
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$94-Sstm8s_tim1$TIM1_OC3Init$93
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$95-Sstm8s_tim1$TIM1_OC3Init$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$96-Sstm8s_tim1$TIM1_OC3Init$95
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$97-Sstm8s_tim1$TIM1_OC3Init$96
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$98-Sstm8s_tim1$TIM1_OC3Init$97
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$99-Sstm8s_tim1$TIM1_OC3Init$98
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$100-Sstm8s_tim1$TIM1_OC3Init$99
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$101-Sstm8s_tim1$TIM1_OC3Init$100
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$102-Sstm8s_tim1$TIM1_OC3Init$101
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3Init$103-Sstm8s_tim1$TIM1_OC3Init$102
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC3Init$104-Sstm8s_tim1$TIM1_OC3Init$103
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC4Init$106)
	.db	3
	.sleb128	337
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$108-Sstm8s_tim1$TIM1_OC4Init$106
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$109-Sstm8s_tim1$TIM1_OC4Init$108
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$110-Sstm8s_tim1$TIM1_OC4Init$109
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$111-Sstm8s_tim1$TIM1_OC4Init$110
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$112-Sstm8s_tim1$TIM1_OC4Init$111
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$113-Sstm8s_tim1$TIM1_OC4Init$112
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$114-Sstm8s_tim1$TIM1_OC4Init$113
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$115-Sstm8s_tim1$TIM1_OC4Init$114
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$116-Sstm8s_tim1$TIM1_OC4Init$115
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4Init$117-Sstm8s_tim1$TIM1_OC4Init$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC4Init$118-Sstm8s_tim1$TIM1_OC4Init$117
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_BDTRConfig$120)
	.db	3
	.sleb128	387
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_BDTRConfig$122-Sstm8s_tim1$TIM1_BDTRConfig$120
	.db	3
	.sleb128	14
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_BDTRConfig$123-Sstm8s_tim1$TIM1_BDTRConfig$122
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_BDTRConfig$124-Sstm8s_tim1$TIM1_BDTRConfig$123
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_BDTRConfig$125-Sstm8s_tim1$TIM1_BDTRConfig$124
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_BDTRConfig$126-Sstm8s_tim1$TIM1_BDTRConfig$125
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_BDTRConfig$127-Sstm8s_tim1$TIM1_BDTRConfig$126
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ICInit$129)
	.db	3
	.sleb128	422
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$131-Sstm8s_tim1$TIM1_ICInit$129
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$132-Sstm8s_tim1$TIM1_ICInit$131
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$133-Sstm8s_tim1$TIM1_ICInit$132
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$134-Sstm8s_tim1$TIM1_ICInit$133
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$135-Sstm8s_tim1$TIM1_ICInit$134
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$136-Sstm8s_tim1$TIM1_ICInit$135
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$137-Sstm8s_tim1$TIM1_ICInit$136
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$138-Sstm8s_tim1$TIM1_ICInit$137
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$139-Sstm8s_tim1$TIM1_ICInit$138
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$140-Sstm8s_tim1$TIM1_ICInit$139
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$141-Sstm8s_tim1$TIM1_ICInit$140
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ICInit$142-Sstm8s_tim1$TIM1_ICInit$141
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ICInit$143-Sstm8s_tim1$TIM1_ICInit$142
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_PWMIConfig$145)
	.db	3
	.sleb128	487
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$147-Sstm8s_tim1$TIM1_PWMIConfig$145
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$148-Sstm8s_tim1$TIM1_PWMIConfig$147
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$149-Sstm8s_tim1$TIM1_PWMIConfig$148
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$150-Sstm8s_tim1$TIM1_PWMIConfig$149
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$151-Sstm8s_tim1$TIM1_PWMIConfig$150
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$152-Sstm8s_tim1$TIM1_PWMIConfig$151
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$153-Sstm8s_tim1$TIM1_PWMIConfig$152
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$154-Sstm8s_tim1$TIM1_PWMIConfig$153
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$155-Sstm8s_tim1$TIM1_PWMIConfig$154
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$156-Sstm8s_tim1$TIM1_PWMIConfig$155
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$157-Sstm8s_tim1$TIM1_PWMIConfig$156
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$158-Sstm8s_tim1$TIM1_PWMIConfig$157
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$159-Sstm8s_tim1$TIM1_PWMIConfig$158
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$160-Sstm8s_tim1$TIM1_PWMIConfig$159
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$161-Sstm8s_tim1$TIM1_PWMIConfig$160
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PWMIConfig$162-Sstm8s_tim1$TIM1_PWMIConfig$161
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_PWMIConfig$163-Sstm8s_tim1$TIM1_PWMIConfig$162
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_Cmd$165)
	.db	3
	.sleb128	560
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_Cmd$167-Sstm8s_tim1$TIM1_Cmd$165
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_Cmd$168-Sstm8s_tim1$TIM1_Cmd$167
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_Cmd$169-Sstm8s_tim1$TIM1_Cmd$168
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_Cmd$170-Sstm8s_tim1$TIM1_Cmd$169
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_Cmd$171-Sstm8s_tim1$TIM1_Cmd$170
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_CtrlPWMOutputs$173)
	.db	3
	.sleb128	582
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$175-Sstm8s_tim1$TIM1_CtrlPWMOutputs$173
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$176-Sstm8s_tim1$TIM1_CtrlPWMOutputs$175
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$177-Sstm8s_tim1$TIM1_CtrlPWMOutputs$176
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$178-Sstm8s_tim1$TIM1_CtrlPWMOutputs$177
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_CtrlPWMOutputs$179-Sstm8s_tim1$TIM1_CtrlPWMOutputs$178
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ITConfig$181)
	.db	3
	.sleb128	616
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ITConfig$183-Sstm8s_tim1$TIM1_ITConfig$181
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ITConfig$184-Sstm8s_tim1$TIM1_ITConfig$183
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ITConfig$185-Sstm8s_tim1$TIM1_ITConfig$184
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ITConfig$186-Sstm8s_tim1$TIM1_ITConfig$185
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ITConfig$187-Sstm8s_tim1$TIM1_ITConfig$186
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_InternalClockConfig$189)
	.db	3
	.sleb128	639
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_InternalClockConfig$191-Sstm8s_tim1$TIM1_InternalClockConfig$189
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_InternalClockConfig$192-Sstm8s_tim1$TIM1_InternalClockConfig$191
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_InternalClockConfig$193-Sstm8s_tim1$TIM1_InternalClockConfig$192
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode1Config$195)
	.db	3
	.sleb128	661
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRClockMode1Config$197-Sstm8s_tim1$TIM1_ETRClockMode1Config$195
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRClockMode1Config$198-Sstm8s_tim1$TIM1_ETRClockMode1Config$197
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRClockMode1Config$199-Sstm8s_tim1$TIM1_ETRClockMode1Config$198
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ETRClockMode1Config$200-Sstm8s_tim1$TIM1_ETRClockMode1Config$199
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode2Config$202)
	.db	3
	.sleb128	693
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRClockMode2Config$204-Sstm8s_tim1$TIM1_ETRClockMode2Config$202
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRClockMode2Config$205-Sstm8s_tim1$TIM1_ETRClockMode2Config$204
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRClockMode2Config$206-Sstm8s_tim1$TIM1_ETRClockMode2Config$205
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ETRClockMode2Config$207-Sstm8s_tim1$TIM1_ETRClockMode2Config$206
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ETRConfig$209)
	.db	3
	.sleb128	724
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRConfig$211-Sstm8s_tim1$TIM1_ETRConfig$209
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRConfig$212-Sstm8s_tim1$TIM1_ETRConfig$211
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ETRConfig$213-Sstm8s_tim1$TIM1_ETRConfig$212
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ETRConfig$214-Sstm8s_tim1$TIM1_ETRConfig$213
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_TIxExternalClockConfig$216)
	.db	3
	.sleb128	750
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$218-Sstm8s_tim1$TIM1_TIxExternalClockConfig$216
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$219-Sstm8s_tim1$TIM1_TIxExternalClockConfig$218
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$220-Sstm8s_tim1$TIM1_TIxExternalClockConfig$219
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$221-Sstm8s_tim1$TIM1_TIxExternalClockConfig$220
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$222-Sstm8s_tim1$TIM1_TIxExternalClockConfig$221
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$223-Sstm8s_tim1$TIM1_TIxExternalClockConfig$222
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_TIxExternalClockConfig$224-Sstm8s_tim1$TIM1_TIxExternalClockConfig$223
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectInputTrigger$226)
	.db	3
	.sleb128	786
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectInputTrigger$228-Sstm8s_tim1$TIM1_SelectInputTrigger$226
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectInputTrigger$229-Sstm8s_tim1$TIM1_SelectInputTrigger$228
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectInputTrigger$230-Sstm8s_tim1$TIM1_SelectInputTrigger$229
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_UpdateDisableConfig$232)
	.db	3
	.sleb128	802
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$234-Sstm8s_tim1$TIM1_UpdateDisableConfig$232
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$235-Sstm8s_tim1$TIM1_UpdateDisableConfig$234
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$236-Sstm8s_tim1$TIM1_UpdateDisableConfig$235
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$237-Sstm8s_tim1$TIM1_UpdateDisableConfig$236
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_UpdateDisableConfig$238-Sstm8s_tim1$TIM1_UpdateDisableConfig$237
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_UpdateRequestConfig$240)
	.db	3
	.sleb128	826
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$242-Sstm8s_tim1$TIM1_UpdateRequestConfig$240
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$243-Sstm8s_tim1$TIM1_UpdateRequestConfig$242
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$244-Sstm8s_tim1$TIM1_UpdateRequestConfig$243
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$245-Sstm8s_tim1$TIM1_UpdateRequestConfig$244
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_UpdateRequestConfig$246-Sstm8s_tim1$TIM1_UpdateRequestConfig$245
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectHallSensor$248)
	.db	3
	.sleb128	848
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$250-Sstm8s_tim1$TIM1_SelectHallSensor$248
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$251-Sstm8s_tim1$TIM1_SelectHallSensor$250
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$252-Sstm8s_tim1$TIM1_SelectHallSensor$251
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$253-Sstm8s_tim1$TIM1_SelectHallSensor$252
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectHallSensor$254-Sstm8s_tim1$TIM1_SelectHallSensor$253
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectOnePulseMode$256)
	.db	3
	.sleb128	872
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$258-Sstm8s_tim1$TIM1_SelectOnePulseMode$256
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$259-Sstm8s_tim1$TIM1_SelectOnePulseMode$258
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$260-Sstm8s_tim1$TIM1_SelectOnePulseMode$259
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$261-Sstm8s_tim1$TIM1_SelectOnePulseMode$260
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectOnePulseMode$262-Sstm8s_tim1$TIM1_SelectOnePulseMode$261
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectOutputTrigger$264)
	.db	3
	.sleb128	902
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOutputTrigger$266-Sstm8s_tim1$TIM1_SelectOutputTrigger$264
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOutputTrigger$267-Sstm8s_tim1$TIM1_SelectOutputTrigger$266
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOutputTrigger$268-Sstm8s_tim1$TIM1_SelectOutputTrigger$267
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectOutputTrigger$269-Sstm8s_tim1$TIM1_SelectOutputTrigger$268
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectSlaveMode$271)
	.db	3
	.sleb128	922
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectSlaveMode$273-Sstm8s_tim1$TIM1_SelectSlaveMode$271
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectSlaveMode$274-Sstm8s_tim1$TIM1_SelectSlaveMode$273
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectSlaveMode$275-Sstm8s_tim1$TIM1_SelectSlaveMode$274
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectSlaveMode$276-Sstm8s_tim1$TIM1_SelectSlaveMode$275
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectMasterSlaveMode$278)
	.db	3
	.sleb128	938
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$280-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$278
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$281-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$280
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$282-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$281
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$283-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$282
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectMasterSlaveMode$284-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$283
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_EncoderInterfaceConfig$286)
	.db	3
	.sleb128	974
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$288-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$286
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$289-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$288
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$290-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$289
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$291-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$290
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$292-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$291
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$293-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$292
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$294-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$293
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$295-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$294
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$296-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$295
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$297-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$296
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$298-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$297
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_EncoderInterfaceConfig$299-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$298
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_PrescalerConfig$301)
	.db	3
	.sleb128	1022
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$303-Sstm8s_tim1$TIM1_PrescalerConfig$301
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$304-Sstm8s_tim1$TIM1_PrescalerConfig$303
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$305-Sstm8s_tim1$TIM1_PrescalerConfig$304
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$306-Sstm8s_tim1$TIM1_PrescalerConfig$305
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_PrescalerConfig$307-Sstm8s_tim1$TIM1_PrescalerConfig$306
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_CounterModeConfig$309)
	.db	3
	.sleb128	1047
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CounterModeConfig$311-Sstm8s_tim1$TIM1_CounterModeConfig$309
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CounterModeConfig$312-Sstm8s_tim1$TIM1_CounterModeConfig$311
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CounterModeConfig$313-Sstm8s_tim1$TIM1_CounterModeConfig$312
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_CounterModeConfig$314-Sstm8s_tim1$TIM1_CounterModeConfig$313
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC1Config$316)
	.db	3
	.sleb128	1066
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC1Config$318-Sstm8s_tim1$TIM1_ForcedOC1Config$316
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC1Config$319-Sstm8s_tim1$TIM1_ForcedOC1Config$318
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC1Config$320-Sstm8s_tim1$TIM1_ForcedOC1Config$319
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ForcedOC1Config$321-Sstm8s_tim1$TIM1_ForcedOC1Config$320
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC2Config$323)
	.db	3
	.sleb128	1084
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC2Config$325-Sstm8s_tim1$TIM1_ForcedOC2Config$323
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC2Config$326-Sstm8s_tim1$TIM1_ForcedOC2Config$325
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC2Config$327-Sstm8s_tim1$TIM1_ForcedOC2Config$326
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ForcedOC2Config$328-Sstm8s_tim1$TIM1_ForcedOC2Config$327
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC3Config$330)
	.db	3
	.sleb128	1103
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC3Config$332-Sstm8s_tim1$TIM1_ForcedOC3Config$330
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC3Config$333-Sstm8s_tim1$TIM1_ForcedOC3Config$332
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC3Config$334-Sstm8s_tim1$TIM1_ForcedOC3Config$333
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ForcedOC3Config$335-Sstm8s_tim1$TIM1_ForcedOC3Config$334
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC4Config$337)
	.db	3
	.sleb128	1122
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC4Config$339-Sstm8s_tim1$TIM1_ForcedOC4Config$337
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC4Config$340-Sstm8s_tim1$TIM1_ForcedOC4Config$339
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ForcedOC4Config$341-Sstm8s_tim1$TIM1_ForcedOC4Config$340
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ForcedOC4Config$342-Sstm8s_tim1$TIM1_ForcedOC4Config$341
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ARRPreloadConfig$344)
	.db	3
	.sleb128	1138
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$346-Sstm8s_tim1$TIM1_ARRPreloadConfig$344
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$347-Sstm8s_tim1$TIM1_ARRPreloadConfig$346
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$348-Sstm8s_tim1$TIM1_ARRPreloadConfig$347
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$349-Sstm8s_tim1$TIM1_ARRPreloadConfig$348
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ARRPreloadConfig$350-Sstm8s_tim1$TIM1_ARRPreloadConfig$349
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectCOM$352)
	.db	3
	.sleb128	1160
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectCOM$354-Sstm8s_tim1$TIM1_SelectCOM$352
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectCOM$355-Sstm8s_tim1$TIM1_SelectCOM$354
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectCOM$356-Sstm8s_tim1$TIM1_SelectCOM$355
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectCOM$357-Sstm8s_tim1$TIM1_SelectCOM$356
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectCOM$358-Sstm8s_tim1$TIM1_SelectCOM$357
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_CCPreloadControl$360)
	.db	3
	.sleb128	1182
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$362-Sstm8s_tim1$TIM1_CCPreloadControl$360
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$363-Sstm8s_tim1$TIM1_CCPreloadControl$362
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$364-Sstm8s_tim1$TIM1_CCPreloadControl$363
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$365-Sstm8s_tim1$TIM1_CCPreloadControl$364
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_CCPreloadControl$366-Sstm8s_tim1$TIM1_CCPreloadControl$365
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC1PreloadConfig$368)
	.db	3
	.sleb128	1204
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$370-Sstm8s_tim1$TIM1_OC1PreloadConfig$368
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$371-Sstm8s_tim1$TIM1_OC1PreloadConfig$370
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$372-Sstm8s_tim1$TIM1_OC1PreloadConfig$371
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$373-Sstm8s_tim1$TIM1_OC1PreloadConfig$372
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC1PreloadConfig$374-Sstm8s_tim1$TIM1_OC1PreloadConfig$373
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC2PreloadConfig$376)
	.db	3
	.sleb128	1226
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$378-Sstm8s_tim1$TIM1_OC2PreloadConfig$376
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$379-Sstm8s_tim1$TIM1_OC2PreloadConfig$378
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$380-Sstm8s_tim1$TIM1_OC2PreloadConfig$379
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$381-Sstm8s_tim1$TIM1_OC2PreloadConfig$380
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC2PreloadConfig$382-Sstm8s_tim1$TIM1_OC2PreloadConfig$381
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC3PreloadConfig$384)
	.db	3
	.sleb128	1248
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$386-Sstm8s_tim1$TIM1_OC3PreloadConfig$384
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$387-Sstm8s_tim1$TIM1_OC3PreloadConfig$386
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$388-Sstm8s_tim1$TIM1_OC3PreloadConfig$387
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$389-Sstm8s_tim1$TIM1_OC3PreloadConfig$388
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC3PreloadConfig$390-Sstm8s_tim1$TIM1_OC3PreloadConfig$389
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC4PreloadConfig$392)
	.db	3
	.sleb128	1270
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$394-Sstm8s_tim1$TIM1_OC4PreloadConfig$392
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$395-Sstm8s_tim1$TIM1_OC4PreloadConfig$394
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$396-Sstm8s_tim1$TIM1_OC4PreloadConfig$395
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$397-Sstm8s_tim1$TIM1_OC4PreloadConfig$396
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC4PreloadConfig$398-Sstm8s_tim1$TIM1_OC4PreloadConfig$397
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC1FastConfig$400)
	.db	3
	.sleb128	1292
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$402-Sstm8s_tim1$TIM1_OC1FastConfig$400
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$403-Sstm8s_tim1$TIM1_OC1FastConfig$402
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$404-Sstm8s_tim1$TIM1_OC1FastConfig$403
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$405-Sstm8s_tim1$TIM1_OC1FastConfig$404
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC1FastConfig$406-Sstm8s_tim1$TIM1_OC1FastConfig$405
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC2FastConfig$408)
	.db	3
	.sleb128	1314
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$410-Sstm8s_tim1$TIM1_OC2FastConfig$408
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$411-Sstm8s_tim1$TIM1_OC2FastConfig$410
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$412-Sstm8s_tim1$TIM1_OC2FastConfig$411
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$413-Sstm8s_tim1$TIM1_OC2FastConfig$412
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC2FastConfig$414-Sstm8s_tim1$TIM1_OC2FastConfig$413
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC3FastConfig$416)
	.db	3
	.sleb128	1336
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$418-Sstm8s_tim1$TIM1_OC3FastConfig$416
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$419-Sstm8s_tim1$TIM1_OC3FastConfig$418
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$420-Sstm8s_tim1$TIM1_OC3FastConfig$419
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$421-Sstm8s_tim1$TIM1_OC3FastConfig$420
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC3FastConfig$422-Sstm8s_tim1$TIM1_OC3FastConfig$421
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC4FastConfig$424)
	.db	3
	.sleb128	1358
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$426-Sstm8s_tim1$TIM1_OC4FastConfig$424
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$427-Sstm8s_tim1$TIM1_OC4FastConfig$426
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$428-Sstm8s_tim1$TIM1_OC4FastConfig$427
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$429-Sstm8s_tim1$TIM1_OC4FastConfig$428
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC4FastConfig$430-Sstm8s_tim1$TIM1_OC4FastConfig$429
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GenerateEvent$432)
	.db	3
	.sleb128	1388
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GenerateEvent$434-Sstm8s_tim1$TIM1_GenerateEvent$432
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GenerateEvent$435-Sstm8s_tim1$TIM1_GenerateEvent$434
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GenerateEvent$436-Sstm8s_tim1$TIM1_GenerateEvent$435
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC1PolarityConfig$438)
	.db	3
	.sleb128	1405
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$440-Sstm8s_tim1$TIM1_OC1PolarityConfig$438
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$441-Sstm8s_tim1$TIM1_OC1PolarityConfig$440
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$442-Sstm8s_tim1$TIM1_OC1PolarityConfig$441
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$443-Sstm8s_tim1$TIM1_OC1PolarityConfig$442
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC1PolarityConfig$444-Sstm8s_tim1$TIM1_OC1PolarityConfig$443
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC1NPolarityConfig$446)
	.db	3
	.sleb128	1429
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$448-Sstm8s_tim1$TIM1_OC1NPolarityConfig$446
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$449-Sstm8s_tim1$TIM1_OC1NPolarityConfig$448
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$450-Sstm8s_tim1$TIM1_OC1NPolarityConfig$449
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$451-Sstm8s_tim1$TIM1_OC1NPolarityConfig$450
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC1NPolarityConfig$452-Sstm8s_tim1$TIM1_OC1NPolarityConfig$451
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC2PolarityConfig$454)
	.db	3
	.sleb128	1453
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$456-Sstm8s_tim1$TIM1_OC2PolarityConfig$454
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$457-Sstm8s_tim1$TIM1_OC2PolarityConfig$456
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$458-Sstm8s_tim1$TIM1_OC2PolarityConfig$457
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$459-Sstm8s_tim1$TIM1_OC2PolarityConfig$458
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC2PolarityConfig$460-Sstm8s_tim1$TIM1_OC2PolarityConfig$459
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC2NPolarityConfig$462)
	.db	3
	.sleb128	1477
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$464-Sstm8s_tim1$TIM1_OC2NPolarityConfig$462
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$465-Sstm8s_tim1$TIM1_OC2NPolarityConfig$464
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$466-Sstm8s_tim1$TIM1_OC2NPolarityConfig$465
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$467-Sstm8s_tim1$TIM1_OC2NPolarityConfig$466
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC2NPolarityConfig$468-Sstm8s_tim1$TIM1_OC2NPolarityConfig$467
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC3PolarityConfig$470)
	.db	3
	.sleb128	1501
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$472-Sstm8s_tim1$TIM1_OC3PolarityConfig$470
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$473-Sstm8s_tim1$TIM1_OC3PolarityConfig$472
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$474-Sstm8s_tim1$TIM1_OC3PolarityConfig$473
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$475-Sstm8s_tim1$TIM1_OC3PolarityConfig$474
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC3PolarityConfig$476-Sstm8s_tim1$TIM1_OC3PolarityConfig$475
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC3NPolarityConfig$478)
	.db	3
	.sleb128	1526
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$480-Sstm8s_tim1$TIM1_OC3NPolarityConfig$478
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$481-Sstm8s_tim1$TIM1_OC3NPolarityConfig$480
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$482-Sstm8s_tim1$TIM1_OC3NPolarityConfig$481
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$483-Sstm8s_tim1$TIM1_OC3NPolarityConfig$482
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC3NPolarityConfig$484-Sstm8s_tim1$TIM1_OC3NPolarityConfig$483
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_OC4PolarityConfig$486)
	.db	3
	.sleb128	1550
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$488-Sstm8s_tim1$TIM1_OC4PolarityConfig$486
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$489-Sstm8s_tim1$TIM1_OC4PolarityConfig$488
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$490-Sstm8s_tim1$TIM1_OC4PolarityConfig$489
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$491-Sstm8s_tim1$TIM1_OC4PolarityConfig$490
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_OC4PolarityConfig$492-Sstm8s_tim1$TIM1_OC4PolarityConfig$491
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_CCxCmd$494)
	.db	3
	.sleb128	1578
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$496-Sstm8s_tim1$TIM1_CCxCmd$494
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$497-Sstm8s_tim1$TIM1_CCxCmd$496
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$498-Sstm8s_tim1$TIM1_CCxCmd$497
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$499-Sstm8s_tim1$TIM1_CCxCmd$498
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$500-Sstm8s_tim1$TIM1_CCxCmd$499
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$501-Sstm8s_tim1$TIM1_CCxCmd$500
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$502-Sstm8s_tim1$TIM1_CCxCmd$501
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$503-Sstm8s_tim1$TIM1_CCxCmd$502
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$504-Sstm8s_tim1$TIM1_CCxCmd$503
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$505-Sstm8s_tim1$TIM1_CCxCmd$504
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$506-Sstm8s_tim1$TIM1_CCxCmd$505
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$507-Sstm8s_tim1$TIM1_CCxCmd$506
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$508-Sstm8s_tim1$TIM1_CCxCmd$507
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$509-Sstm8s_tim1$TIM1_CCxCmd$508
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$510-Sstm8s_tim1$TIM1_CCxCmd$509
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxCmd$511-Sstm8s_tim1$TIM1_CCxCmd$510
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_CCxCmd$512-Sstm8s_tim1$TIM1_CCxCmd$511
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_CCxNCmd$514)
	.db	3
	.sleb128	1646
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$516-Sstm8s_tim1$TIM1_CCxNCmd$514
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$517-Sstm8s_tim1$TIM1_CCxNCmd$516
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$518-Sstm8s_tim1$TIM1_CCxNCmd$517
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$519-Sstm8s_tim1$TIM1_CCxNCmd$518
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$520-Sstm8s_tim1$TIM1_CCxNCmd$519
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$521-Sstm8s_tim1$TIM1_CCxNCmd$520
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$522-Sstm8s_tim1$TIM1_CCxNCmd$521
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$523-Sstm8s_tim1$TIM1_CCxNCmd$522
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$524-Sstm8s_tim1$TIM1_CCxNCmd$523
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$525-Sstm8s_tim1$TIM1_CCxNCmd$524
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$526-Sstm8s_tim1$TIM1_CCxNCmd$525
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_CCxNCmd$527-Sstm8s_tim1$TIM1_CCxNCmd$526
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_CCxNCmd$528-Sstm8s_tim1$TIM1_CCxNCmd$527
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SelectOCxM$530)
	.db	3
	.sleb128	1711
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$532-Sstm8s_tim1$TIM1_SelectOCxM$530
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$533-Sstm8s_tim1$TIM1_SelectOCxM$532
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$534-Sstm8s_tim1$TIM1_SelectOCxM$533
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$535-Sstm8s_tim1$TIM1_SelectOCxM$534
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$536-Sstm8s_tim1$TIM1_SelectOCxM$535
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$537-Sstm8s_tim1$TIM1_SelectOCxM$536
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$538-Sstm8s_tim1$TIM1_SelectOCxM$537
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$539-Sstm8s_tim1$TIM1_SelectOCxM$538
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$540-Sstm8s_tim1$TIM1_SelectOCxM$539
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$541-Sstm8s_tim1$TIM1_SelectOCxM$540
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$542-Sstm8s_tim1$TIM1_SelectOCxM$541
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$543-Sstm8s_tim1$TIM1_SelectOCxM$542
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$544-Sstm8s_tim1$TIM1_SelectOCxM$543
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$545-Sstm8s_tim1$TIM1_SelectOCxM$544
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$546-Sstm8s_tim1$TIM1_SelectOCxM$545
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SelectOCxM$547-Sstm8s_tim1$TIM1_SelectOCxM$546
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SelectOCxM$548-Sstm8s_tim1$TIM1_SelectOCxM$547
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetCounter$550)
	.db	3
	.sleb128	1761
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCounter$552-Sstm8s_tim1$TIM1_SetCounter$550
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCounter$553-Sstm8s_tim1$TIM1_SetCounter$552
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCounter$554-Sstm8s_tim1$TIM1_SetCounter$553
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetCounter$555-Sstm8s_tim1$TIM1_SetCounter$554
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetAutoreload$557)
	.db	3
	.sleb128	1774
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetAutoreload$559-Sstm8s_tim1$TIM1_SetAutoreload$557
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetAutoreload$560-Sstm8s_tim1$TIM1_SetAutoreload$559
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetAutoreload$561-Sstm8s_tim1$TIM1_SetAutoreload$560
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetAutoreload$562-Sstm8s_tim1$TIM1_SetAutoreload$561
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare1$564)
	.db	3
	.sleb128	1787
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare1$566-Sstm8s_tim1$TIM1_SetCompare1$564
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare1$567-Sstm8s_tim1$TIM1_SetCompare1$566
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare1$568-Sstm8s_tim1$TIM1_SetCompare1$567
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetCompare1$569-Sstm8s_tim1$TIM1_SetCompare1$568
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare2$571)
	.db	3
	.sleb128	1800
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare2$573-Sstm8s_tim1$TIM1_SetCompare2$571
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare2$574-Sstm8s_tim1$TIM1_SetCompare2$573
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare2$575-Sstm8s_tim1$TIM1_SetCompare2$574
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetCompare2$576-Sstm8s_tim1$TIM1_SetCompare2$575
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare3$578)
	.db	3
	.sleb128	1813
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare3$580-Sstm8s_tim1$TIM1_SetCompare3$578
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare3$581-Sstm8s_tim1$TIM1_SetCompare3$580
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare3$582-Sstm8s_tim1$TIM1_SetCompare3$581
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetCompare3$583-Sstm8s_tim1$TIM1_SetCompare3$582
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare4$585)
	.db	3
	.sleb128	1826
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare4$587-Sstm8s_tim1$TIM1_SetCompare4$585
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare4$588-Sstm8s_tim1$TIM1_SetCompare4$587
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetCompare4$589-Sstm8s_tim1$TIM1_SetCompare4$588
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetCompare4$590-Sstm8s_tim1$TIM1_SetCompare4$589
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetIC1Prescaler$592)
	.db	3
	.sleb128	1843
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC1Prescaler$594-Sstm8s_tim1$TIM1_SetIC1Prescaler$592
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC1Prescaler$595-Sstm8s_tim1$TIM1_SetIC1Prescaler$594
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC1Prescaler$596-Sstm8s_tim1$TIM1_SetIC1Prescaler$595
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetIC1Prescaler$597-Sstm8s_tim1$TIM1_SetIC1Prescaler$596
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetIC2Prescaler$599)
	.db	3
	.sleb128	1863
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC2Prescaler$601-Sstm8s_tim1$TIM1_SetIC2Prescaler$599
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC2Prescaler$602-Sstm8s_tim1$TIM1_SetIC2Prescaler$601
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC2Prescaler$603-Sstm8s_tim1$TIM1_SetIC2Prescaler$602
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetIC2Prescaler$604-Sstm8s_tim1$TIM1_SetIC2Prescaler$603
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetIC3Prescaler$606)
	.db	3
	.sleb128	1884
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC3Prescaler$608-Sstm8s_tim1$TIM1_SetIC3Prescaler$606
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC3Prescaler$609-Sstm8s_tim1$TIM1_SetIC3Prescaler$608
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC3Prescaler$610-Sstm8s_tim1$TIM1_SetIC3Prescaler$609
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetIC3Prescaler$611-Sstm8s_tim1$TIM1_SetIC3Prescaler$610
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_SetIC4Prescaler$613)
	.db	3
	.sleb128	1905
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC4Prescaler$615-Sstm8s_tim1$TIM1_SetIC4Prescaler$613
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC4Prescaler$616-Sstm8s_tim1$TIM1_SetIC4Prescaler$615
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_SetIC4Prescaler$617-Sstm8s_tim1$TIM1_SetIC4Prescaler$616
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_SetIC4Prescaler$618-Sstm8s_tim1$TIM1_SetIC4Prescaler$617
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture1$620)
	.db	3
	.sleb128	1921
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture1$622-Sstm8s_tim1$TIM1_GetCapture1$620
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture1$623-Sstm8s_tim1$TIM1_GetCapture1$622
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture1$624-Sstm8s_tim1$TIM1_GetCapture1$623
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture1$625-Sstm8s_tim1$TIM1_GetCapture1$624
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture1$626-Sstm8s_tim1$TIM1_GetCapture1$625
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture1$627-Sstm8s_tim1$TIM1_GetCapture1$626
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetCapture1$628-Sstm8s_tim1$TIM1_GetCapture1$627
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture2$630)
	.db	3
	.sleb128	1942
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture2$632-Sstm8s_tim1$TIM1_GetCapture2$630
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture2$633-Sstm8s_tim1$TIM1_GetCapture2$632
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture2$634-Sstm8s_tim1$TIM1_GetCapture2$633
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture2$635-Sstm8s_tim1$TIM1_GetCapture2$634
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture2$636-Sstm8s_tim1$TIM1_GetCapture2$635
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture2$637-Sstm8s_tim1$TIM1_GetCapture2$636
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetCapture2$638-Sstm8s_tim1$TIM1_GetCapture2$637
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture3$640)
	.db	3
	.sleb128	1963
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture3$642-Sstm8s_tim1$TIM1_GetCapture3$640
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture3$643-Sstm8s_tim1$TIM1_GetCapture3$642
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture3$644-Sstm8s_tim1$TIM1_GetCapture3$643
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture3$645-Sstm8s_tim1$TIM1_GetCapture3$644
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture3$646-Sstm8s_tim1$TIM1_GetCapture3$645
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture3$647-Sstm8s_tim1$TIM1_GetCapture3$646
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetCapture3$648-Sstm8s_tim1$TIM1_GetCapture3$647
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture4$650)
	.db	3
	.sleb128	1983
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture4$652-Sstm8s_tim1$TIM1_GetCapture4$650
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture4$653-Sstm8s_tim1$TIM1_GetCapture4$652
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture4$654-Sstm8s_tim1$TIM1_GetCapture4$653
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture4$655-Sstm8s_tim1$TIM1_GetCapture4$654
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture4$656-Sstm8s_tim1$TIM1_GetCapture4$655
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCapture4$657-Sstm8s_tim1$TIM1_GetCapture4$656
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetCapture4$658-Sstm8s_tim1$TIM1_GetCapture4$657
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetCounter$660)
	.db	3
	.sleb128	2003
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCounter$662-Sstm8s_tim1$TIM1_GetCounter$660
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCounter$663-Sstm8s_tim1$TIM1_GetCounter$662
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetCounter$664-Sstm8s_tim1$TIM1_GetCounter$663
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetCounter$665-Sstm8s_tim1$TIM1_GetCounter$664
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetPrescaler$667)
	.db	3
	.sleb128	2018
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetPrescaler$669-Sstm8s_tim1$TIM1_GetPrescaler$667
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetPrescaler$670-Sstm8s_tim1$TIM1_GetPrescaler$669
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetPrescaler$671-Sstm8s_tim1$TIM1_GetPrescaler$670
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetPrescaler$672-Sstm8s_tim1$TIM1_GetPrescaler$671
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetFlagStatus$674)
	.db	3
	.sleb128	2046
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$676-Sstm8s_tim1$TIM1_GetFlagStatus$674
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$677-Sstm8s_tim1$TIM1_GetFlagStatus$676
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$678-Sstm8s_tim1$TIM1_GetFlagStatus$677
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$679-Sstm8s_tim1$TIM1_GetFlagStatus$678
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$680-Sstm8s_tim1$TIM1_GetFlagStatus$679
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$681-Sstm8s_tim1$TIM1_GetFlagStatus$680
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$682-Sstm8s_tim1$TIM1_GetFlagStatus$681
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetFlagStatus$683-Sstm8s_tim1$TIM1_GetFlagStatus$682
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ClearFlag$685)
	.db	3
	.sleb128	2086
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ClearFlag$687-Sstm8s_tim1$TIM1_ClearFlag$685
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ClearFlag$688-Sstm8s_tim1$TIM1_ClearFlag$687
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ClearFlag$689-Sstm8s_tim1$TIM1_ClearFlag$688
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ClearFlag$690-Sstm8s_tim1$TIM1_ClearFlag$689
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_GetITStatus$692)
	.db	3
	.sleb128	2111
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetITStatus$694-Sstm8s_tim1$TIM1_GetITStatus$692
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetITStatus$695-Sstm8s_tim1$TIM1_GetITStatus$694
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetITStatus$696-Sstm8s_tim1$TIM1_GetITStatus$695
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetITStatus$697-Sstm8s_tim1$TIM1_GetITStatus$696
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetITStatus$698-Sstm8s_tim1$TIM1_GetITStatus$697
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetITStatus$699-Sstm8s_tim1$TIM1_GetITStatus$698
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_GetITStatus$700-Sstm8s_tim1$TIM1_GetITStatus$699
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_GetITStatus$701-Sstm8s_tim1$TIM1_GetITStatus$700
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TIM1_ClearITPendingBit$703)
	.db	3
	.sleb128	2148
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ClearITPendingBit$705-Sstm8s_tim1$TIM1_ClearITPendingBit$703
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TIM1_ClearITPendingBit$706-Sstm8s_tim1$TIM1_ClearITPendingBit$705
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TIM1_ClearITPendingBit$707-Sstm8s_tim1$TIM1_ClearITPendingBit$706
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TI1_Config$709)
	.db	3
	.sleb128	2173
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$711-Sstm8s_tim1$TI1_Config$709
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$712-Sstm8s_tim1$TI1_Config$711
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$713-Sstm8s_tim1$TI1_Config$712
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$714-Sstm8s_tim1$TI1_Config$713
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$715-Sstm8s_tim1$TI1_Config$714
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$716-Sstm8s_tim1$TI1_Config$715
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$717-Sstm8s_tim1$TI1_Config$716
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI1_Config$718-Sstm8s_tim1$TI1_Config$717
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TI1_Config$719-Sstm8s_tim1$TI1_Config$718
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TI2_Config$721)
	.db	3
	.sleb128	2214
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$723-Sstm8s_tim1$TI2_Config$721
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$724-Sstm8s_tim1$TI2_Config$723
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$725-Sstm8s_tim1$TI2_Config$724
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$726-Sstm8s_tim1$TI2_Config$725
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$727-Sstm8s_tim1$TI2_Config$726
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$728-Sstm8s_tim1$TI2_Config$727
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$729-Sstm8s_tim1$TI2_Config$728
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI2_Config$730-Sstm8s_tim1$TI2_Config$729
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TI2_Config$731-Sstm8s_tim1$TI2_Config$730
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TI3_Config$733)
	.db	3
	.sleb128	2253
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$735-Sstm8s_tim1$TI3_Config$733
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$736-Sstm8s_tim1$TI3_Config$735
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$737-Sstm8s_tim1$TI3_Config$736
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$738-Sstm8s_tim1$TI3_Config$737
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$739-Sstm8s_tim1$TI3_Config$738
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$740-Sstm8s_tim1$TI3_Config$739
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$741-Sstm8s_tim1$TI3_Config$740
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI3_Config$742-Sstm8s_tim1$TI3_Config$741
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TI3_Config$743-Sstm8s_tim1$TI3_Config$742
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_tim1$TI4_Config$745)
	.db	3
	.sleb128	2293
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$747-Sstm8s_tim1$TI4_Config$745
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$748-Sstm8s_tim1$TI4_Config$747
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$749-Sstm8s_tim1$TI4_Config$748
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$750-Sstm8s_tim1$TI4_Config$749
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$751-Sstm8s_tim1$TI4_Config$750
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$752-Sstm8s_tim1$TI4_Config$751
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$753-Sstm8s_tim1$TI4_Config$752
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_tim1$TI4_Config$754-Sstm8s_tim1$TI4_Config$753
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_tim1$TI4_Config$755-Sstm8s_tim1$TI4_Config$754
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_tim1$TI4_Config$746)
	.dw	0,(Sstm8s_tim1$TI4_Config$756)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TI3_Config$734)
	.dw	0,(Sstm8s_tim1$TI3_Config$744)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TI2_Config$722)
	.dw	0,(Sstm8s_tim1$TI2_Config$732)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TI1_Config$710)
	.dw	0,(Sstm8s_tim1$TI1_Config$720)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ClearITPendingBit$704)
	.dw	0,(Sstm8s_tim1$TIM1_ClearITPendingBit$708)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetITStatus$693)
	.dw	0,(Sstm8s_tim1$TIM1_GetITStatus$702)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ClearFlag$686)
	.dw	0,(Sstm8s_tim1$TIM1_ClearFlag$691)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetFlagStatus$675)
	.dw	0,(Sstm8s_tim1$TIM1_GetFlagStatus$684)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetPrescaler$668)
	.dw	0,(Sstm8s_tim1$TIM1_GetPrescaler$673)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetCounter$661)
	.dw	0,(Sstm8s_tim1$TIM1_GetCounter$666)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture4$651)
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture4$659)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture3$641)
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture3$649)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture2$631)
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture2$639)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture1$621)
	.dw	0,(Sstm8s_tim1$TIM1_GetCapture1$629)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetIC4Prescaler$614)
	.dw	0,(Sstm8s_tim1$TIM1_SetIC4Prescaler$619)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetIC3Prescaler$607)
	.dw	0,(Sstm8s_tim1$TIM1_SetIC3Prescaler$612)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetIC2Prescaler$600)
	.dw	0,(Sstm8s_tim1$TIM1_SetIC2Prescaler$605)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetIC1Prescaler$593)
	.dw	0,(Sstm8s_tim1$TIM1_SetIC1Prescaler$598)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare4$586)
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare4$591)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare3$579)
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare3$584)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare2$572)
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare2$577)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare1$565)
	.dw	0,(Sstm8s_tim1$TIM1_SetCompare1$570)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetAutoreload$558)
	.dw	0,(Sstm8s_tim1$TIM1_SetAutoreload$563)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SetCounter$551)
	.dw	0,(Sstm8s_tim1$TIM1_SetCounter$556)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectOCxM$531)
	.dw	0,(Sstm8s_tim1$TIM1_SelectOCxM$549)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_CCxNCmd$515)
	.dw	0,(Sstm8s_tim1$TIM1_CCxNCmd$529)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_CCxCmd$495)
	.dw	0,(Sstm8s_tim1$TIM1_CCxCmd$513)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC4PolarityConfig$487)
	.dw	0,(Sstm8s_tim1$TIM1_OC4PolarityConfig$493)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC3NPolarityConfig$479)
	.dw	0,(Sstm8s_tim1$TIM1_OC3NPolarityConfig$485)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC3PolarityConfig$471)
	.dw	0,(Sstm8s_tim1$TIM1_OC3PolarityConfig$477)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC2NPolarityConfig$463)
	.dw	0,(Sstm8s_tim1$TIM1_OC2NPolarityConfig$469)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC2PolarityConfig$455)
	.dw	0,(Sstm8s_tim1$TIM1_OC2PolarityConfig$461)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC1NPolarityConfig$447)
	.dw	0,(Sstm8s_tim1$TIM1_OC1NPolarityConfig$453)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC1PolarityConfig$439)
	.dw	0,(Sstm8s_tim1$TIM1_OC1PolarityConfig$445)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_GenerateEvent$433)
	.dw	0,(Sstm8s_tim1$TIM1_GenerateEvent$437)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC4FastConfig$425)
	.dw	0,(Sstm8s_tim1$TIM1_OC4FastConfig$431)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC3FastConfig$417)
	.dw	0,(Sstm8s_tim1$TIM1_OC3FastConfig$423)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC2FastConfig$409)
	.dw	0,(Sstm8s_tim1$TIM1_OC2FastConfig$415)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC1FastConfig$401)
	.dw	0,(Sstm8s_tim1$TIM1_OC1FastConfig$407)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC4PreloadConfig$393)
	.dw	0,(Sstm8s_tim1$TIM1_OC4PreloadConfig$399)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC3PreloadConfig$385)
	.dw	0,(Sstm8s_tim1$TIM1_OC3PreloadConfig$391)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC2PreloadConfig$377)
	.dw	0,(Sstm8s_tim1$TIM1_OC2PreloadConfig$383)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC1PreloadConfig$369)
	.dw	0,(Sstm8s_tim1$TIM1_OC1PreloadConfig$375)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_CCPreloadControl$361)
	.dw	0,(Sstm8s_tim1$TIM1_CCPreloadControl$367)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectCOM$353)
	.dw	0,(Sstm8s_tim1$TIM1_SelectCOM$359)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ARRPreloadConfig$345)
	.dw	0,(Sstm8s_tim1$TIM1_ARRPreloadConfig$351)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC4Config$338)
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC4Config$343)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC3Config$331)
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC3Config$336)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC2Config$324)
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC2Config$329)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC1Config$317)
	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC1Config$322)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_CounterModeConfig$310)
	.dw	0,(Sstm8s_tim1$TIM1_CounterModeConfig$315)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_PrescalerConfig$302)
	.dw	0,(Sstm8s_tim1$TIM1_PrescalerConfig$308)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_EncoderInterfaceConfig$287)
	.dw	0,(Sstm8s_tim1$TIM1_EncoderInterfaceConfig$300)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectMasterSlaveMode$279)
	.dw	0,(Sstm8s_tim1$TIM1_SelectMasterSlaveMode$285)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectSlaveMode$272)
	.dw	0,(Sstm8s_tim1$TIM1_SelectSlaveMode$277)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectOutputTrigger$265)
	.dw	0,(Sstm8s_tim1$TIM1_SelectOutputTrigger$270)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectOnePulseMode$257)
	.dw	0,(Sstm8s_tim1$TIM1_SelectOnePulseMode$263)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectHallSensor$249)
	.dw	0,(Sstm8s_tim1$TIM1_SelectHallSensor$255)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_UpdateRequestConfig$241)
	.dw	0,(Sstm8s_tim1$TIM1_UpdateRequestConfig$247)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_UpdateDisableConfig$233)
	.dw	0,(Sstm8s_tim1$TIM1_UpdateDisableConfig$239)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_SelectInputTrigger$227)
	.dw	0,(Sstm8s_tim1$TIM1_SelectInputTrigger$231)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_TIxExternalClockConfig$217)
	.dw	0,(Sstm8s_tim1$TIM1_TIxExternalClockConfig$225)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ETRConfig$210)
	.dw	0,(Sstm8s_tim1$TIM1_ETRConfig$215)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode2Config$203)
	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode2Config$208)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode1Config$196)
	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode1Config$201)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_InternalClockConfig$190)
	.dw	0,(Sstm8s_tim1$TIM1_InternalClockConfig$194)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ITConfig$182)
	.dw	0,(Sstm8s_tim1$TIM1_ITConfig$188)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_CtrlPWMOutputs$174)
	.dw	0,(Sstm8s_tim1$TIM1_CtrlPWMOutputs$180)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_Cmd$166)
	.dw	0,(Sstm8s_tim1$TIM1_Cmd$172)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_PWMIConfig$146)
	.dw	0,(Sstm8s_tim1$TIM1_PWMIConfig$164)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_ICInit$130)
	.dw	0,(Sstm8s_tim1$TIM1_ICInit$144)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_BDTRConfig$121)
	.dw	0,(Sstm8s_tim1$TIM1_BDTRConfig$128)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC4Init$107)
	.dw	0,(Sstm8s_tim1$TIM1_OC4Init$119)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC3Init$90)
	.dw	0,(Sstm8s_tim1$TIM1_OC3Init$105)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC2Init$73)
	.dw	0,(Sstm8s_tim1$TIM1_OC2Init$88)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_OC1Init$56)
	.dw	0,(Sstm8s_tim1$TIM1_OC1Init$71)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_TimeBaseInit$44)
	.dw	0,(Sstm8s_tim1$TIM1_TimeBaseInit$54)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_tim1$TIM1_DeInit$1)
	.dw	0,(Sstm8s_tim1$TIM1_DeInit$42)
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
	.uleb128	12
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
	.ascii "StdPeriphLib/src/stm8s_tim1.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.ascii "TIM1_DeInit"
	.db	0
	.dw	0,(_TIM1_DeInit)
	.dw	0,(XG$TIM1_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1540)
	.uleb128	3
	.dw	0,234
	.ascii "TIM1_TimeBaseInit"
	.db	0
	.dw	0,(_TIM1_TimeBaseInit)
	.dw	0,(XG$TIM1_TimeBaseInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1520)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_Prescaler"
	.db	0
	.dw	0,234
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_CounterMode"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM1_Period"
	.db	0
	.dw	0,234
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "TIM1_RepetitionCounter"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,489
	.ascii "TIM1_OC1Init"
	.db	0
	.dw	0,(_TIM1_OC1Init)
	.dw	0,(XG$TIM1_OC1Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1500)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCMode"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_OutputState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_OutputNState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM1_Pulse"
	.db	0
	.dw	0,234
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	10
	.ascii "TIM1_OCNPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	11
	.ascii "TIM1_OCIdleState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	12
	.ascii "TIM1_OCNIdleState"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,711
	.ascii "TIM1_OC2Init"
	.db	0
	.dw	0,(_TIM1_OC2Init)
	.dw	0,(XG$TIM1_OC2Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1480)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCMode"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_OutputState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_OutputNState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM1_Pulse"
	.db	0
	.dw	0,234
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	10
	.ascii "TIM1_OCNPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	11
	.ascii "TIM1_OCIdleState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	12
	.ascii "TIM1_OCNIdleState"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,933
	.ascii "TIM1_OC3Init"
	.db	0
	.dw	0,(_TIM1_OC3Init)
	.dw	0,(XG$TIM1_OC3Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1460)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCMode"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_OutputState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_OutputNState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM1_Pulse"
	.db	0
	.dw	0,234
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	10
	.ascii "TIM1_OCNPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	11
	.ascii "TIM1_OCIdleState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	12
	.ascii "TIM1_OCNIdleState"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,1080
	.ascii "TIM1_OC4Init"
	.db	0
	.dw	0,(_TIM1_OC4Init)
	.dw	0,(XG$TIM1_OC4Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1440)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCMode"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_OutputState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_Pulse"
	.db	0
	.dw	0,234
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "TIM1_OCIdleState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1258
	.ascii "TIM1_BDTRConfig"
	.db	0
	.dw	0,(_TIM1_BDTRConfig)
	.dw	0,(XG$TIM1_BDTRConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1420)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OSSIState"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_LockLevel"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_DeadTime"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM1_Break"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM1_BreakPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "TIM1_AutomaticOutput"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,1410
	.ascii "TIM1_ICInit"
	.db	0
	.dw	0,(_TIM1_ICInit)
	.dw	0,(XG$TIM1_ICInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1400)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_Channel"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ICPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_ICSelection"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM1_ICPrescaler"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM1_ICFilter"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1607
	.ascii "TIM1_PWMIConfig"
	.db	0
	.dw	0,(_TIM1_PWMIConfig)
	.dw	0,(XG$TIM1_PWMIConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1380)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_Channel"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ICPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_ICSelection"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "TIM1_ICPrescaler"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "TIM1_ICFilter"
	.db	0
	.dw	0,250
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
	.dw	0,250
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-2
	.ascii "icselection"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,1654
	.ascii "TIM1_Cmd"
	.db	0
	.dw	0,(_TIM1_Cmd)
	.dw	0,(XG$TIM1_Cmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1360)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1712
	.ascii "TIM1_CtrlPWMOutputs"
	.db	0
	.dw	0,(_TIM1_CtrlPWMOutputs)
	.dw	0,(XG$TIM1_CtrlPWMOutputs$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1340)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,1780
	.ascii "TIM1_ITConfig"
	.db	0
	.dw	0,(_TIM1_ITConfig)
	.dw	0,(XG$TIM1_ITConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1320)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_IT"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	2
	.ascii "TIM1_InternalClockConfig"
	.db	0
	.dw	0,(_TIM1_InternalClockConfig)
	.dw	0,(XG$TIM1_InternalClockConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1300)
	.uleb128	3
	.dw	0,1941
	.ascii "TIM1_ETRClockMode1Config"
	.db	0
	.dw	0,(_TIM1_ETRClockMode1Config)
	.dw	0,(XG$TIM1_ETRClockMode1Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1280)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ExtTRGPrescaler"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ExtTRGPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ExtTRGFilter"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,2063
	.ascii "TIM1_ETRClockMode2Config"
	.db	0
	.dw	0,(_TIM1_ETRClockMode2Config)
	.dw	0,(XG$TIM1_ETRClockMode2Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1260)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ExtTRGPrescaler"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ExtTRGPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ExtTRGFilter"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,2175
	.ascii "TIM1_ETRConfig"
	.db	0
	.dw	0,(_TIM1_ETRConfig)
	.dw	0,(XG$TIM1_ETRConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1240)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ExtTRGPrescaler"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ExtTRGPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ExtTRGFilter"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,2299
	.ascii "TIM1_TIxExternalClockConfig"
	.db	0
	.dw	0,(_TIM1_TIxExternalClockConfig)
	.dw	0,(XG$TIM1_TIxExternalClockConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1220)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_TIxExternalCLKSource"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ICPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ICFilter"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2374
	.ascii "TIM1_SelectInputTrigger"
	.db	0
	.dw	0,(_TIM1_SelectInputTrigger)
	.dw	0,(XG$TIM1_SelectInputTrigger$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1200)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_InputTriggerSource"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,2437
	.ascii "TIM1_UpdateDisableConfig"
	.db	0
	.dw	0,(_TIM1_UpdateDisableConfig)
	.dw	0,(XG$TIM1_UpdateDisableConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1180)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2509
	.ascii "TIM1_UpdateRequestConfig"
	.db	0
	.dw	0,(_TIM1_UpdateRequestConfig)
	.dw	0,(XG$TIM1_UpdateRequestConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1160)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_UpdateSource"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2569
	.ascii "TIM1_SelectHallSensor"
	.db	0
	.dw	0,(_TIM1_SelectHallSensor)
	.dw	0,(XG$TIM1_SelectHallSensor$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1140)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2634
	.ascii "TIM1_SelectOnePulseMode"
	.db	0
	.dw	0,(_TIM1_SelectOnePulseMode)
	.dw	0,(XG$TIM1_SelectOnePulseMode$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1120)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OPMode"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2702
	.ascii "TIM1_SelectOutputTrigger"
	.db	0
	.dw	0,(_TIM1_SelectOutputTrigger)
	.dw	0,(XG$TIM1_SelectOutputTrigger$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1100)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_TRGOSource"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,2765
	.ascii "TIM1_SelectSlaveMode"
	.db	0
	.dw	0,(_TIM1_SelectSlaveMode)
	.dw	0,(XG$TIM1_SelectSlaveMode$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1080)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_SlaveMode"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,2830
	.ascii "TIM1_SelectMasterSlaveMode"
	.db	0
	.dw	0,(_TIM1_SelectMasterSlaveMode)
	.dw	0,(XG$TIM1_SelectMasterSlaveMode$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1060)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,2956
	.ascii "TIM1_EncoderInterfaceConfig"
	.db	0
	.dw	0,(_TIM1_EncoderInterfaceConfig)
	.dw	0,(XG$TIM1_EncoderInterfaceConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1040)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_EncoderMode"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_IC1Polarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_IC2Polarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3041
	.ascii "TIM1_PrescalerConfig"
	.db	0
	.dw	0,(_TIM1_PrescalerConfig)
	.dw	0,(XG$TIM1_PrescalerConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1020)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Prescaler"
	.db	0
	.dw	0,234
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_PSCReloadMode"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,3108
	.ascii "TIM1_CounterModeConfig"
	.db	0
	.dw	0,(_TIM1_CounterModeConfig)
	.dw	0,(XG$TIM1_CounterModeConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+1000)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_CounterMode"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,3174
	.ascii "TIM1_ForcedOC1Config"
	.db	0
	.dw	0,(_TIM1_ForcedOC1Config)
	.dw	0,(XG$TIM1_ForcedOC1Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+980)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ForcedAction"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,3240
	.ascii "TIM1_ForcedOC2Config"
	.db	0
	.dw	0,(_TIM1_ForcedOC2Config)
	.dw	0,(XG$TIM1_ForcedOC2Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+960)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ForcedAction"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,3306
	.ascii "TIM1_ForcedOC3Config"
	.db	0
	.dw	0,(_TIM1_ForcedOC3Config)
	.dw	0,(XG$TIM1_ForcedOC3Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+940)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ForcedAction"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,3372
	.ascii "TIM1_ForcedOC4Config"
	.db	0
	.dw	0,(_TIM1_ForcedOC4Config)
	.dw	0,(XG$TIM1_ForcedOC4Config$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+920)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ForcedAction"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,3432
	.ascii "TIM1_ARRPreloadConfig"
	.db	0
	.dw	0,(_TIM1_ARRPreloadConfig)
	.dw	0,(XG$TIM1_ARRPreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+900)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3485
	.ascii "TIM1_SelectCOM"
	.db	0
	.dw	0,(_TIM1_SelectCOM)
	.dw	0,(XG$TIM1_SelectCOM$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+880)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3545
	.ascii "TIM1_CCPreloadControl"
	.db	0
	.dw	0,(_TIM1_CCPreloadControl)
	.dw	0,(XG$TIM1_CCPreloadControl$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+860)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3605
	.ascii "TIM1_OC1PreloadConfig"
	.db	0
	.dw	0,(_TIM1_OC1PreloadConfig)
	.dw	0,(XG$TIM1_OC1PreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+840)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3665
	.ascii "TIM1_OC2PreloadConfig"
	.db	0
	.dw	0,(_TIM1_OC2PreloadConfig)
	.dw	0,(XG$TIM1_OC2PreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+820)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3725
	.ascii "TIM1_OC3PreloadConfig"
	.db	0
	.dw	0,(_TIM1_OC3PreloadConfig)
	.dw	0,(XG$TIM1_OC3PreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+800)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3785
	.ascii "TIM1_OC4PreloadConfig"
	.db	0
	.dw	0,(_TIM1_OC4PreloadConfig)
	.dw	0,(XG$TIM1_OC4PreloadConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+780)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3842
	.ascii "TIM1_OC1FastConfig"
	.db	0
	.dw	0,(_TIM1_OC1FastConfig)
	.dw	0,(XG$TIM1_OC1FastConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+760)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3899
	.ascii "TIM1_OC2FastConfig"
	.db	0
	.dw	0,(_TIM1_OC2FastConfig)
	.dw	0,(XG$TIM1_OC2FastConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+740)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,3956
	.ascii "TIM1_OC3FastConfig"
	.db	0
	.dw	0,(_TIM1_OC3FastConfig)
	.dw	0,(XG$TIM1_OC3FastConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+720)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4013
	.ascii "TIM1_OC4FastConfig"
	.db	0
	.dw	0,(_TIM1_OC4FastConfig)
	.dw	0,(XG$TIM1_OC4FastConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+700)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4076
	.ascii "TIM1_GenerateEvent"
	.db	0
	.dw	0,(_TIM1_GenerateEvent)
	.dw	0,(XG$TIM1_GenerateEvent$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+680)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_EventSource"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,4144
	.ascii "TIM1_OC1PolarityConfig"
	.db	0
	.dw	0,(_TIM1_OC1PolarityConfig)
	.dw	0,(XG$TIM1_OC1PolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+660)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4214
	.ascii "TIM1_OC1NPolarityConfig"
	.db	0
	.dw	0,(_TIM1_OC1NPolarityConfig)
	.dw	0,(XG$TIM1_OC1NPolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+640)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCNPolarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4282
	.ascii "TIM1_OC2PolarityConfig"
	.db	0
	.dw	0,(_TIM1_OC2PolarityConfig)
	.dw	0,(XG$TIM1_OC2PolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+620)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4352
	.ascii "TIM1_OC2NPolarityConfig"
	.db	0
	.dw	0,(_TIM1_OC2NPolarityConfig)
	.dw	0,(XG$TIM1_OC2NPolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+600)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCNPolarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4420
	.ascii "TIM1_OC3PolarityConfig"
	.db	0
	.dw	0,(_TIM1_OC3PolarityConfig)
	.dw	0,(XG$TIM1_OC3PolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+580)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4490
	.ascii "TIM1_OC3NPolarityConfig"
	.db	0
	.dw	0,(_TIM1_OC3NPolarityConfig)
	.dw	0,(XG$TIM1_OC3NPolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+560)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCNPolarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4558
	.ascii "TIM1_OC4PolarityConfig"
	.db	0
	.dw	0,(_TIM1_OC4PolarityConfig)
	.dw	0,(XG$TIM1_OC4PolarityConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+540)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_OCPolarity"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4655
	.ascii "TIM1_CCxCmd"
	.db	0
	.dw	0,(_TIM1_CCxCmd)
	.dw	0,(XG$TIM1_CCxCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+520)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_Channel"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	8
	.dw	0,4634
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	8
	.dw	0,4642
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	8
	.dw	0,4650
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	9
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,4745
	.ascii "TIM1_CCxNCmd"
	.db	0
	.dw	0,(_TIM1_CCxNCmd)
	.dw	0,(XG$TIM1_CCxNCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+500)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_Channel"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,250
	.uleb128	8
	.dw	0,4732
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	8
	.dw	0,4740
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	9
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,4825
	.ascii "TIM1_SelectOCxM"
	.db	0
	.dw	0,(_TIM1_SelectOCxM)
	.dw	0,(XG$TIM1_SelectOCxM$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+480)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_Channel"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_OCMode"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,4876
	.ascii "TIM1_SetCounter"
	.db	0
	.dw	0,(_TIM1_SetCounter)
	.dw	0,(XG$TIM1_SetCounter$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+460)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Counter"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	3
	.dw	0,4933
	.ascii "TIM1_SetAutoreload"
	.db	0
	.dw	0,(_TIM1_SetAutoreload)
	.dw	0,(XG$TIM1_SetAutoreload$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+440)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Autoreload"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	3
	.dw	0,4986
	.ascii "TIM1_SetCompare1"
	.db	0
	.dw	0,(_TIM1_SetCompare1)
	.dw	0,(XG$TIM1_SetCompare1$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+420)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Compare1"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	3
	.dw	0,5039
	.ascii "TIM1_SetCompare2"
	.db	0
	.dw	0,(_TIM1_SetCompare2)
	.dw	0,(XG$TIM1_SetCompare2$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+400)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Compare2"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	3
	.dw	0,5092
	.ascii "TIM1_SetCompare3"
	.db	0
	.dw	0,(_TIM1_SetCompare3)
	.dw	0,(XG$TIM1_SetCompare3$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Compare3"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	3
	.dw	0,5145
	.ascii "TIM1_SetCompare4"
	.db	0
	.dw	0,(_TIM1_SetCompare4)
	.dw	0,(XG$TIM1_SetCompare4$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Compare4"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	3
	.dw	0,5211
	.ascii "TIM1_SetIC1Prescaler"
	.db	0
	.dw	0,(_TIM1_SetIC1Prescaler)
	.dw	0,(XG$TIM1_SetIC1Prescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_IC1Prescaler"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,5277
	.ascii "TIM1_SetIC2Prescaler"
	.db	0
	.dw	0,(_TIM1_SetIC2Prescaler)
	.dw	0,(XG$TIM1_SetIC2Prescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_IC2Prescaler"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,5343
	.ascii "TIM1_SetIC3Prescaler"
	.db	0
	.dw	0,(_TIM1_SetIC3Prescaler)
	.dw	0,(XG$TIM1_SetIC3Prescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_IC3Prescaler"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,5409
	.ascii "TIM1_SetIC4Prescaler"
	.db	0
	.dw	0,(_TIM1_SetIC4Prescaler)
	.dw	0,(XG$TIM1_SetIC4Prescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_IC4Prescaler"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	10
	.dw	0,5492
	.ascii "TIM1_GetCapture1"
	.db	0
	.dw	0,(_TIM1_GetCapture1)
	.dw	0,(XG$TIM1_GetCapture1$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.dw	0,234
	.uleb128	11
	.ascii "tmpccr1"
	.db	0
	.dw	0,234
	.uleb128	7
	.db	1
	.db	81
	.ascii "tmpccr1l"
	.db	0
	.dw	0,250
	.uleb128	11
	.ascii "tmpccr1h"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	10
	.dw	0,5575
	.ascii "TIM1_GetCapture2"
	.db	0
	.dw	0,(_TIM1_GetCapture2)
	.dw	0,(XG$TIM1_GetCapture2$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.dw	0,234
	.uleb128	11
	.ascii "tmpccr2"
	.db	0
	.dw	0,234
	.uleb128	7
	.db	1
	.db	81
	.ascii "tmpccr2l"
	.db	0
	.dw	0,250
	.uleb128	11
	.ascii "tmpccr2h"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	10
	.dw	0,5658
	.ascii "TIM1_GetCapture3"
	.db	0
	.dw	0,(_TIM1_GetCapture3)
	.dw	0,(XG$TIM1_GetCapture3$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.dw	0,234
	.uleb128	11
	.ascii "tmpccr3"
	.db	0
	.dw	0,234
	.uleb128	7
	.db	1
	.db	81
	.ascii "tmpccr3l"
	.db	0
	.dw	0,250
	.uleb128	11
	.ascii "tmpccr3h"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	10
	.dw	0,5741
	.ascii "TIM1_GetCapture4"
	.db	0
	.dw	0,(_TIM1_GetCapture4)
	.dw	0,(XG$TIM1_GetCapture4$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.dw	0,234
	.uleb128	11
	.ascii "tmpccr4"
	.db	0
	.dw	0,234
	.uleb128	7
	.db	1
	.db	81
	.ascii "tmpccr4l"
	.db	0
	.dw	0,250
	.uleb128	11
	.ascii "tmpccr4h"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	10
	.dw	0,5796
	.ascii "TIM1_GetCounter"
	.db	0
	.dw	0,(_TIM1_GetCounter)
	.dw	0,(XG$TIM1_GetCounter$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.dw	0,234
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-4
	.ascii "tmpcntr"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	10
	.dw	0,5850
	.ascii "TIM1_GetPrescaler"
	.db	0
	.dw	0,(_TIM1_GetPrescaler)
	.dw	0,(XG$TIM1_GetPrescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.dw	0,234
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-4
	.ascii "temp"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	10
	.dw	0,5969
	.ascii "TIM1_GetFlagStatus"
	.db	0
	.dw	0,(_TIM1_GetFlagStatus)
	.dw	0,(XG$TIM1_GetFlagStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_FLAG"
	.db	0
	.dw	0,234
	.uleb128	6
	.uleb128	6
	.uleb128	7
	.db	1
	.db	81
	.ascii "bitstatus"
	.db	0
	.dw	0,250
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-5
	.ascii "tim1_flag_l"
	.db	0
	.dw	0,250
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-4
	.ascii "tim1_flag_h"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,6021
	.ascii "TIM1_ClearFlag"
	.db	0
	.dw	0,(_TIM1_ClearFlag)
	.dw	0,(XG$TIM1_ClearFlag$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_FLAG"
	.db	0
	.dw	0,234
	.uleb128	0
	.uleb128	10
	.dw	0,6139
	.ascii "TIM1_GetITStatus"
	.db	0
	.dw	0,(_TIM1_GetITStatus)
	.dw	0,(XG$TIM1_GetITStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_IT"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	7
	.db	1
	.db	81
	.ascii "bitstatus"
	.db	0
	.dw	0,250
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "TIM1_itStatus"
	.db	0
	.dw	0,250
	.uleb128	7
	.db	1
	.db	81
	.ascii "TIM1_itEnable"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,6197
	.ascii "TIM1_ClearITPendingBit"
	.db	0
	.dw	0,(_TIM1_ClearITPendingBit)
	.dw	0,(XG$TIM1_ClearITPendingBit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_IT"
	.db	0
	.dw	0,250
	.uleb128	0
	.uleb128	3
	.dw	0,6300
	.ascii "TI1_Config"
	.db	0
	.dw	0,(_TI1_Config)
	.dw	0,(XFstm8s_tim1$TI1_Config$0$0+7)
	.db	0
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ICPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ICSelection"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_ICFilter"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,6403
	.ascii "TI2_Config"
	.db	0
	.dw	0,(_TI2_Config)
	.dw	0,(XFstm8s_tim1$TI2_Config$0$0+7)
	.db	0
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ICPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ICSelection"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_ICFilter"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,6506
	.ascii "TI3_Config"
	.db	0
	.dw	0,(_TI3_Config)
	.dw	0,(XFstm8s_tim1$TI3_Config$0$0+7)
	.db	0
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ICPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ICSelection"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_ICFilter"
	.db	0
	.dw	0,250
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	12
	.ascii "TI4_Config"
	.db	0
	.dw	0,(_TI4_Config)
	.dw	0,(XFstm8s_tim1$TI4_Config$0$0+7)
	.db	0
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "TIM1_ICPolarity"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "TIM1_ICSelection"
	.db	0
	.dw	0,250
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "TIM1_ICFilter"
	.db	0
	.dw	0,250
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
	.ascii "TIM1_DeInit"
	.db	0
	.dw	0,98
	.ascii "TIM1_TimeBaseInit"
	.db	0
	.dw	0,267
	.ascii "TIM1_OC1Init"
	.db	0
	.dw	0,489
	.ascii "TIM1_OC2Init"
	.db	0
	.dw	0,711
	.ascii "TIM1_OC3Init"
	.db	0
	.dw	0,933
	.ascii "TIM1_OC4Init"
	.db	0
	.dw	0,1080
	.ascii "TIM1_BDTRConfig"
	.db	0
	.dw	0,1258
	.ascii "TIM1_ICInit"
	.db	0
	.dw	0,1410
	.ascii "TIM1_PWMIConfig"
	.db	0
	.dw	0,1607
	.ascii "TIM1_Cmd"
	.db	0
	.dw	0,1654
	.ascii "TIM1_CtrlPWMOutputs"
	.db	0
	.dw	0,1712
	.ascii "TIM1_ITConfig"
	.db	0
	.dw	0,1780
	.ascii "TIM1_InternalClockConfig"
	.db	0
	.dw	0,1819
	.ascii "TIM1_ETRClockMode1Config"
	.db	0
	.dw	0,1941
	.ascii "TIM1_ETRClockMode2Config"
	.db	0
	.dw	0,2063
	.ascii "TIM1_ETRConfig"
	.db	0
	.dw	0,2175
	.ascii "TIM1_TIxExternalClockConfig"
	.db	0
	.dw	0,2299
	.ascii "TIM1_SelectInputTrigger"
	.db	0
	.dw	0,2374
	.ascii "TIM1_UpdateDisableConfig"
	.db	0
	.dw	0,2437
	.ascii "TIM1_UpdateRequestConfig"
	.db	0
	.dw	0,2509
	.ascii "TIM1_SelectHallSensor"
	.db	0
	.dw	0,2569
	.ascii "TIM1_SelectOnePulseMode"
	.db	0
	.dw	0,2634
	.ascii "TIM1_SelectOutputTrigger"
	.db	0
	.dw	0,2702
	.ascii "TIM1_SelectSlaveMode"
	.db	0
	.dw	0,2765
	.ascii "TIM1_SelectMasterSlaveMode"
	.db	0
	.dw	0,2830
	.ascii "TIM1_EncoderInterfaceConfig"
	.db	0
	.dw	0,2956
	.ascii "TIM1_PrescalerConfig"
	.db	0
	.dw	0,3041
	.ascii "TIM1_CounterModeConfig"
	.db	0
	.dw	0,3108
	.ascii "TIM1_ForcedOC1Config"
	.db	0
	.dw	0,3174
	.ascii "TIM1_ForcedOC2Config"
	.db	0
	.dw	0,3240
	.ascii "TIM1_ForcedOC3Config"
	.db	0
	.dw	0,3306
	.ascii "TIM1_ForcedOC4Config"
	.db	0
	.dw	0,3372
	.ascii "TIM1_ARRPreloadConfig"
	.db	0
	.dw	0,3432
	.ascii "TIM1_SelectCOM"
	.db	0
	.dw	0,3485
	.ascii "TIM1_CCPreloadControl"
	.db	0
	.dw	0,3545
	.ascii "TIM1_OC1PreloadConfig"
	.db	0
	.dw	0,3605
	.ascii "TIM1_OC2PreloadConfig"
	.db	0
	.dw	0,3665
	.ascii "TIM1_OC3PreloadConfig"
	.db	0
	.dw	0,3725
	.ascii "TIM1_OC4PreloadConfig"
	.db	0
	.dw	0,3785
	.ascii "TIM1_OC1FastConfig"
	.db	0
	.dw	0,3842
	.ascii "TIM1_OC2FastConfig"
	.db	0
	.dw	0,3899
	.ascii "TIM1_OC3FastConfig"
	.db	0
	.dw	0,3956
	.ascii "TIM1_OC4FastConfig"
	.db	0
	.dw	0,4013
	.ascii "TIM1_GenerateEvent"
	.db	0
	.dw	0,4076
	.ascii "TIM1_OC1PolarityConfig"
	.db	0
	.dw	0,4144
	.ascii "TIM1_OC1NPolarityConfig"
	.db	0
	.dw	0,4214
	.ascii "TIM1_OC2PolarityConfig"
	.db	0
	.dw	0,4282
	.ascii "TIM1_OC2NPolarityConfig"
	.db	0
	.dw	0,4352
	.ascii "TIM1_OC3PolarityConfig"
	.db	0
	.dw	0,4420
	.ascii "TIM1_OC3NPolarityConfig"
	.db	0
	.dw	0,4490
	.ascii "TIM1_OC4PolarityConfig"
	.db	0
	.dw	0,4558
	.ascii "TIM1_CCxCmd"
	.db	0
	.dw	0,4655
	.ascii "TIM1_CCxNCmd"
	.db	0
	.dw	0,4745
	.ascii "TIM1_SelectOCxM"
	.db	0
	.dw	0,4825
	.ascii "TIM1_SetCounter"
	.db	0
	.dw	0,4876
	.ascii "TIM1_SetAutoreload"
	.db	0
	.dw	0,4933
	.ascii "TIM1_SetCompare1"
	.db	0
	.dw	0,4986
	.ascii "TIM1_SetCompare2"
	.db	0
	.dw	0,5039
	.ascii "TIM1_SetCompare3"
	.db	0
	.dw	0,5092
	.ascii "TIM1_SetCompare4"
	.db	0
	.dw	0,5145
	.ascii "TIM1_SetIC1Prescaler"
	.db	0
	.dw	0,5211
	.ascii "TIM1_SetIC2Prescaler"
	.db	0
	.dw	0,5277
	.ascii "TIM1_SetIC3Prescaler"
	.db	0
	.dw	0,5343
	.ascii "TIM1_SetIC4Prescaler"
	.db	0
	.dw	0,5409
	.ascii "TIM1_GetCapture1"
	.db	0
	.dw	0,5492
	.ascii "TIM1_GetCapture2"
	.db	0
	.dw	0,5575
	.ascii "TIM1_GetCapture3"
	.db	0
	.dw	0,5658
	.ascii "TIM1_GetCapture4"
	.db	0
	.dw	0,5741
	.ascii "TIM1_GetCounter"
	.db	0
	.dw	0,5796
	.ascii "TIM1_GetPrescaler"
	.db	0
	.dw	0,5850
	.ascii "TIM1_GetFlagStatus"
	.db	0
	.dw	0,5969
	.ascii "TIM1_ClearFlag"
	.db	0
	.dw	0,6021
	.ascii "TIM1_GetITStatus"
	.db	0
	.dw	0,6139
	.ascii "TIM1_ClearITPendingBit"
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
