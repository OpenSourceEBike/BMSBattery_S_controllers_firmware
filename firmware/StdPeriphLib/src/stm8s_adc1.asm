;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_adc1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_DeInit
	.globl _ADC1_Init
	.globl _ADC1_Cmd
	.globl _ADC1_ScanModeCmd
	.globl _ADC1_DataBufferCmd
	.globl _ADC1_ITConfig
	.globl _ADC1_PrescalerConfig
	.globl _ADC1_SchmittTriggerConfig
	.globl _ADC1_ConversionConfig
	.globl _ADC1_ExternalTriggerConfig
	.globl _ADC1_StartConversion
	.globl _ADC1_GetConversionValue
	.globl _ADC1_AWDChannelConfig
	.globl _ADC1_SetHighThreshold
	.globl _ADC1_SetLowThreshold
	.globl _ADC1_GetBufferValue
	.globl _ADC1_GetAWDChannelStatus
	.globl _ADC1_GetFlagStatus
	.globl _ADC1_ClearFlag
	.globl _ADC1_GetITStatus
	.globl _ADC1_ClearITPendingBit
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
	Sstm8s_adc1$ADC1_DeInit$0 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 52: void ADC1_DeInit(void)
;	-----------------------------------------
;	 function ADC1_DeInit
;	-----------------------------------------
_ADC1_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_DeInit$1 ==.
	Sstm8s_adc1$ADC1_DeInit$2 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
	mov	0x5400+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$3 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
	mov	0x5401+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$4 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
	mov	0x5402+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$5 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
	mov	0x5403+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$6 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
	mov	0x5406+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$7 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
	mov	0x5407+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$8 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
	mov	0x5408+0, #0xff
	Sstm8s_adc1$ADC1_DeInit$9 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
	mov	0x5409+0, #0x03
	Sstm8s_adc1$ADC1_DeInit$10 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
	mov	0x540a+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$11 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
	mov	0x540b+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$12 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
	mov	0x540e+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$13 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
	mov	0x540f+0, #0x00
	Sstm8s_adc1$ADC1_DeInit$14 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 66: }
	Sstm8s_adc1$ADC1_DeInit$15 ==.
	XG$ADC1_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_DeInit$16 ==.
	Sstm8s_adc1$ADC1_Init$17 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
;	-----------------------------------------
;	 function ADC1_Init
;	-----------------------------------------
_ADC1_Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_Init$18 ==.
	Sstm8s_adc1$ADC1_Init$19 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 93: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_ADC1_ConversionConfig
	addw	sp, #3
	Sstm8s_adc1$ADC1_Init$20 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 95: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
	ld	a, (0x07, sp)
	push	a
	call	_ADC1_PrescalerConfig
	pop	a
	Sstm8s_adc1$ADC1_Init$21 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 100: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x09, sp)
	push	a
	call	_ADC1_ExternalTriggerConfig
	addw	sp, #2
	Sstm8s_adc1$ADC1_Init$22 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 105: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
	ld	a, (0x0c, sp)
	push	a
	ld	a, (0x0c, sp)
	push	a
	call	_ADC1_SchmittTriggerConfig
	addw	sp, #2
	Sstm8s_adc1$ADC1_Init$23 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 108: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	0x5401, #0
	Sstm8s_adc1$ADC1_Init$24 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 109: }
	Sstm8s_adc1$ADC1_Init$25 ==.
	XG$ADC1_Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_Init$26 ==.
	Sstm8s_adc1$ADC1_Cmd$27 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 116: void ADC1_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_Cmd
;	-----------------------------------------
_ADC1_Cmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_Cmd$28 ==.
	Sstm8s_adc1$ADC1_Cmd$29 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 121: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_adc1$ADC1_Cmd$30 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 123: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	0x5401, #0
	jra	00104$
00102$:
	Sstm8s_adc1$ADC1_Cmd$31 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 127: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
	bres	0x5401, #0
00104$:
	Sstm8s_adc1$ADC1_Cmd$32 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 129: }
	Sstm8s_adc1$ADC1_Cmd$33 ==.
	XG$ADC1_Cmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_Cmd$34 ==.
	Sstm8s_adc1$ADC1_ScanModeCmd$35 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 136: void ADC1_ScanModeCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ScanModeCmd
;	-----------------------------------------
_ADC1_ScanModeCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_ScanModeCmd$36 ==.
	Sstm8s_adc1$ADC1_ScanModeCmd$37 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 141: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_adc1$ADC1_ScanModeCmd$38 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 143: ADC1->CR2 |= ADC1_CR2_SCAN;
	ldw	x, #0x5402
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_adc1$ADC1_ScanModeCmd$39 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 147: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_adc1$ADC1_ScanModeCmd$40 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 149: }
	Sstm8s_adc1$ADC1_ScanModeCmd$41 ==.
	XG$ADC1_ScanModeCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_ScanModeCmd$42 ==.
	Sstm8s_adc1$ADC1_DataBufferCmd$43 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 156: void ADC1_DataBufferCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_DataBufferCmd
;	-----------------------------------------
_ADC1_DataBufferCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_DataBufferCmd$44 ==.
	Sstm8s_adc1$ADC1_DataBufferCmd$45 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 161: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_adc1$ADC1_DataBufferCmd$46 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 163: ADC1->CR3 |= ADC1_CR3_DBUF;
	bset	0x5403, #7
	jra	00104$
00102$:
	Sstm8s_adc1$ADC1_DataBufferCmd$47 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 167: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
	bres	0x5403, #7
00104$:
	Sstm8s_adc1$ADC1_DataBufferCmd$48 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 169: }
	Sstm8s_adc1$ADC1_DataBufferCmd$49 ==.
	XG$ADC1_DataBufferCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_DataBufferCmd$50 ==.
	Sstm8s_adc1$ADC1_ITConfig$51 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 180: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ITConfig
;	-----------------------------------------
_ADC1_ITConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_ITConfig$52 ==.
	push	a
	Sstm8s_adc1$ADC1_ITConfig$53 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 182: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00102$
	Sstm8s_adc1$ADC1_ITConfig$54 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 185: ADC1->CSR |= (uint8_t)ADC1_IT;
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5400
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_adc1$ADC1_ITConfig$55 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 190: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
	ldw	x, #0x5400
	ld	a, (x)
	ldw	x, (0x06, sp)
	cplw	x
	pushw	x
	and	a, (2, sp)
	popw	x
	ldw	x, #0x5400
	ld	(x), a
00104$:
	Sstm8s_adc1$ADC1_ITConfig$56 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 192: }
	pop	a
	Sstm8s_adc1$ADC1_ITConfig$57 ==.
	XG$ADC1_ITConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_ITConfig$58 ==.
	Sstm8s_adc1$ADC1_PrescalerConfig$59 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 200: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
;	-----------------------------------------
;	 function ADC1_PrescalerConfig
;	-----------------------------------------
_ADC1_PrescalerConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_PrescalerConfig$60 ==.
	Sstm8s_adc1$ADC1_PrescalerConfig$61 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 203: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
	ldw	x, #0x5401
	ld	a, (x)
	and	a, #0x8f
	ld	(x), a
	Sstm8s_adc1$ADC1_PrescalerConfig$62 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 205: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
	ldw	x, #0x5401
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5401
	ld	(x), a
	Sstm8s_adc1$ADC1_PrescalerConfig$63 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 206: }
	Sstm8s_adc1$ADC1_PrescalerConfig$64 ==.
	XG$ADC1_PrescalerConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_PrescalerConfig$65 ==.
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$66 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 216: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_SchmittTriggerConfig
;	-----------------------------------------
_ADC1_SchmittTriggerConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$67 ==.
	sub	sp, #4
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$68 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 218: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
	ld	a, (0x09, sp)
	cp	a, #0xff
	jrne	00114$
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$69 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 220: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00102$
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$70 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 222: ADC1->TDRL &= (uint8_t)0x0;
	ldw	x, #0x5407
	ld	a, (x)
	mov	0x5407+0, #0x00
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$71 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 223: ADC1->TDRH &= (uint8_t)0x0;
	ldw	x, #0x5406
	ld	a, (x)
	mov	0x5406+0, #0x00
	jp	00116$
00102$:
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$72 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 227: ADC1->TDRL |= (uint8_t)0xFF;
	ldw	x, #0x5407
	ld	a, (x)
	mov	0x5407+0, #0xff
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$73 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 228: ADC1->TDRH |= (uint8_t)0xFF;
	ldw	x, #0x5406
	ld	a, (x)
	mov	0x5406+0, #0xff
	jp	00116$
00114$:
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$74 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 231: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
	ld	a, (0x09, sp)
	cp	a, #0x08
	jrnc	00111$
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$75 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 233: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00105$
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$76 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 235: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
	ldw	x, #0x5407
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, #0x01
	push	a
	ld	a, (0x0a, sp)
	jreq	00140$
00139$:
	sll	(1, sp)
	dec	a
	jrne	00139$
00140$:
	pop	a
	cpl	a
	and	a, (0x04, sp)
	ldw	x, #0x5407
	ld	(x), a
	jra	00116$
00105$:
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$77 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 239: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
	ldw	x, #0x5407
	ld	a, (x)
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, (0x0a, sp)
	jreq	00142$
00141$:
	sll	(0x02, sp)
	dec	a
	jrne	00141$
00142$:
	pop	a
	or	a, (0x01, sp)
	ldw	x, #0x5407
	ld	(x), a
	jra	00116$
00111$:
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$78 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 244: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00108$
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$79 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 246: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
	ldw	x, #0x5406
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x09, sp)
	sub	a, #0x08
	ld	xl, a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00145$
00144$:
	sll	(1, sp)
	dec	a
	jrne	00144$
00145$:
	pop	a
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x5406
	ld	(x), a
	jra	00116$
00108$:
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$80 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 250: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
	ldw	x, #0x5406
	ld	a, (x)
	ld	xl, a
	ld	a, (0x09, sp)
	sub	a, #0x08
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00147$
00146$:
	sll	(0x02, sp)
	dec	a
	jrne	00146$
00147$:
	ld	a, xl
	or	a, (0x02, sp)
	ldw	x, #0x5406
	ld	(x), a
00116$:
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$81 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 253: }
	addw	sp, #4
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$82 ==.
	XG$ADC1_SchmittTriggerConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_SchmittTriggerConfig$83 ==.
	Sstm8s_adc1$ADC1_ConversionConfig$84 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 265: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
;	-----------------------------------------
;	 function ADC1_ConversionConfig
;	-----------------------------------------
_ADC1_ConversionConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_ConversionConfig$85 ==.
	Sstm8s_adc1$ADC1_ConversionConfig$86 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 268: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	Sstm8s_adc1$ADC1_ConversionConfig$87 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 270: ADC1->CR2 |= (uint8_t)(ADC1_Align);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, (0x07, sp)
	ldw	x, #0x5402
	ld	(x), a
	Sstm8s_adc1$ADC1_ConversionConfig$88 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 272: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00102$
	Sstm8s_adc1$ADC1_ConversionConfig$89 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 275: ADC1->CR1 |= ADC1_CR1_CONT;
	ldw	x, #0x5401
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_adc1$ADC1_ConversionConfig$90 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 280: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
	ldw	x, #0x5401
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
	Sstm8s_adc1$ADC1_ConversionConfig$91 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 284: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
	ldw	x, #0x5400
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
	Sstm8s_adc1$ADC1_ConversionConfig$92 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 286: ADC1->CSR |= (uint8_t)(ADC1_Channel);
	ldw	x, #0x5400
	ld	a, (x)
	or	a, (0x06, sp)
	ldw	x, #0x5400
	ld	(x), a
	Sstm8s_adc1$ADC1_ConversionConfig$93 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 287: }
	Sstm8s_adc1$ADC1_ConversionConfig$94 ==.
	XG$ADC1_ConversionConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_ConversionConfig$95 ==.
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$96 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 299: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ExternalTriggerConfig
;	-----------------------------------------
_ADC1_ExternalTriggerConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$97 ==.
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$98 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 302: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$99 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 304: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$100 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 307: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$101 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 312: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00103$:
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$102 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 316: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5402
	ld	(x), a
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$103 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 317: }
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$104 ==.
	XG$ADC1_ExternalTriggerConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_ExternalTriggerConfig$105 ==.
	Sstm8s_adc1$ADC1_StartConversion$106 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 328: void ADC1_StartConversion(void)
;	-----------------------------------------
;	 function ADC1_StartConversion
;	-----------------------------------------
_ADC1_StartConversion:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_StartConversion$107 ==.
	Sstm8s_adc1$ADC1_StartConversion$108 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 330: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	0x5401, #0
	Sstm8s_adc1$ADC1_StartConversion$109 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 331: }
	Sstm8s_adc1$ADC1_StartConversion$110 ==.
	XG$ADC1_StartConversion$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_StartConversion$111 ==.
	Sstm8s_adc1$ADC1_GetConversionValue$112 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 340: uint16_t ADC1_GetConversionValue(void)
;	-----------------------------------------
;	 function ADC1_GetConversionValue
;	-----------------------------------------
_ADC1_GetConversionValue:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_GetConversionValue$113 ==.
	sub	sp, #9
	Sstm8s_adc1$ADC1_GetConversionValue$114 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 345: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ldw	x, #0x5402
	ld	a, (x)
	bcp	a, #0x08
	jreq	00102$
	Sstm8s_adc1$ADC1_GetConversionValue$115 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 348: templ = ADC1->DRL;
	ldw	x, #0x5405
	ld	a, (x)
	ld	(0x01, sp), a
	Sstm8s_adc1$ADC1_GetConversionValue$116 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 350: temph = ADC1->DRH;
	ldw	x, #0x5404
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	(0x02, sp), x
	Sstm8s_adc1$ADC1_GetConversionValue$117 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 352: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	ld	a, (0x03, sp)
	clr	(0x05, sp)
	exg	a, xl
	ld	a, (0x01, sp)
	exg	a, xl
	clr	(0x08, sp)
	or	a, (0x08, sp)
	rrwa	x
	or	a, (0x05, sp)
	ld	xl, a
	ldw	(0x02, sp), x
	jra	00103$
00102$:
	Sstm8s_adc1$ADC1_GetConversionValue$118 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 357: temph = ADC1->DRH;
	ldw	x, #0x5404
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	(0x02, sp), x
	Sstm8s_adc1$ADC1_GetConversionValue$119 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 359: templ = ADC1->DRL;
	ldw	x, #0x5405
	ld	a, (x)
	ld	(0x01, sp), a
	Sstm8s_adc1$ADC1_GetConversionValue$120 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 361: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x06, sp), x
	ld	a, (0x03, sp)
	ld	xh, a
	clr	a
	or	a, (0x07, sp)
	rlwa	x
	or	a, (0x06, sp)
	ld	xh, a
	ldw	(0x02, sp), x
00103$:
	Sstm8s_adc1$ADC1_GetConversionValue$121 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 364: return ((uint16_t)temph);
	ldw	x, (0x02, sp)
	Sstm8s_adc1$ADC1_GetConversionValue$122 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 365: }
	addw	sp, #9
	Sstm8s_adc1$ADC1_GetConversionValue$123 ==.
	XG$ADC1_GetConversionValue$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_GetConversionValue$124 ==.
	Sstm8s_adc1$ADC1_AWDChannelConfig$125 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 375: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_AWDChannelConfig
;	-----------------------------------------
_ADC1_AWDChannelConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_AWDChannelConfig$126 ==.
	sub	sp, #4
	Sstm8s_adc1$ADC1_AWDChannelConfig$127 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 381: if (Channel < (uint8_t)8)
	ld	a, (0x09, sp)
	cp	a, #0x08
	jrnc	00108$
	Sstm8s_adc1$ADC1_AWDChannelConfig$128 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 383: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00102$
	Sstm8s_adc1$ADC1_AWDChannelConfig$129 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 385: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
	ldw	x, #0x540f
	ld	a, (x)
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, (0x0a, sp)
	jreq	00124$
00123$:
	sll	(0x02, sp)
	dec	a
	jrne	00123$
00124$:
	pop	a
	or	a, (0x01, sp)
	ldw	x, #0x540f
	ld	(x), a
	jra	00110$
00102$:
	Sstm8s_adc1$ADC1_AWDChannelConfig$130 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 389: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
	ldw	x, #0x540f
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, #0x01
	push	a
	ld	a, (0x0a, sp)
	jreq	00126$
00125$:
	sll	(1, sp)
	dec	a
	jrne	00125$
00126$:
	pop	a
	cpl	a
	and	a, (0x04, sp)
	ldw	x, #0x540f
	ld	(x), a
	jra	00110$
00108$:
	Sstm8s_adc1$ADC1_AWDChannelConfig$131 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 394: if (NewState != DISABLE)
	tnz	(0x0a, sp)
	jreq	00105$
	Sstm8s_adc1$ADC1_AWDChannelConfig$132 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 396: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
	ldw	x, #0x540e
	ld	a, (x)
	ld	xl, a
	ld	a, (0x09, sp)
	sub	a, #0x08
	push	a
	ld	a, #0x01
	ld	(0x04, sp), a
	pop	a
	tnz	a
	jreq	00129$
00128$:
	sll	(0x03, sp)
	dec	a
	jrne	00128$
00129$:
	ld	a, xl
	or	a, (0x03, sp)
	ldw	x, #0x540e
	ld	(x), a
	jra	00110$
00105$:
	Sstm8s_adc1$ADC1_AWDChannelConfig$133 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 400: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
	ldw	x, #0x540e
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x09, sp)
	sub	a, #0x08
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
	and	a, (0x02, sp)
	ldw	x, #0x540e
	ld	(x), a
00110$:
	Sstm8s_adc1$ADC1_AWDChannelConfig$134 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 403: }
	addw	sp, #4
	Sstm8s_adc1$ADC1_AWDChannelConfig$135 ==.
	XG$ADC1_AWDChannelConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_AWDChannelConfig$136 ==.
	Sstm8s_adc1$ADC1_SetHighThreshold$137 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 411: void ADC1_SetHighThreshold(uint16_t Threshold)
;	-----------------------------------------
;	 function ADC1_SetHighThreshold
;	-----------------------------------------
_ADC1_SetHighThreshold:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_SetHighThreshold$138 ==.
	Sstm8s_adc1$ADC1_SetHighThreshold$139 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 413: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
	ldw	x, (0x05, sp)
	srlw	x
	srlw	x
	ld	a, xl
	ldw	x, #0x5408
	ld	(x), a
	Sstm8s_adc1$ADC1_SetHighThreshold$140 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 414: ADC1->HTRL = (uint8_t)Threshold;
	ld	a, (0x06, sp)
	ldw	x, #0x5409
	ld	(x), a
	Sstm8s_adc1$ADC1_SetHighThreshold$141 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 415: }
	Sstm8s_adc1$ADC1_SetHighThreshold$142 ==.
	XG$ADC1_SetHighThreshold$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_SetHighThreshold$143 ==.
	Sstm8s_adc1$ADC1_SetLowThreshold$144 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 423: void ADC1_SetLowThreshold(uint16_t Threshold)
;	-----------------------------------------
;	 function ADC1_SetLowThreshold
;	-----------------------------------------
_ADC1_SetLowThreshold:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_SetLowThreshold$145 ==.
	Sstm8s_adc1$ADC1_SetLowThreshold$146 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 425: ADC1->LTRL = (uint8_t)Threshold;
	ld	a, (0x06, sp)
	ldw	x, #0x540b
	ld	(x), a
	Sstm8s_adc1$ADC1_SetLowThreshold$147 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 426: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
	ldw	x, (0x05, sp)
	srlw	x
	srlw	x
	ld	a, xl
	ldw	x, #0x540a
	ld	(x), a
	Sstm8s_adc1$ADC1_SetLowThreshold$148 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 427: }
	Sstm8s_adc1$ADC1_SetLowThreshold$149 ==.
	XG$ADC1_SetLowThreshold$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_SetLowThreshold$150 ==.
	Sstm8s_adc1$ADC1_GetBufferValue$151 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 436: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
;	-----------------------------------------
;	 function ADC1_GetBufferValue
;	-----------------------------------------
_ADC1_GetBufferValue:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_GetBufferValue$152 ==.
	sub	sp, #13
	Sstm8s_adc1$ADC1_GetBufferValue$153 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 444: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ldw	x, #0x5402
	ld	a, (x)
	bcp	a, #0x08
	jreq	00102$
	Sstm8s_adc1$ADC1_GetBufferValue$154 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 447: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (0x12, sp)
	sll	a
	clrw	x
	ld	xl, a
	ldw	(0x08, sp), x
	ldw	x, (0x08, sp)
	addw	x, #0x53e1
	ld	a, (x)
	ld	(0x01, sp), a
	Sstm8s_adc1$ADC1_GetBufferValue$155 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 449: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ldw	x, (0x08, sp)
	addw	x, #0x53e0
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	(0x02, sp), x
	Sstm8s_adc1$ADC1_GetBufferValue$156 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 451: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	ld	a, (0x03, sp)
	clr	(0x07, sp)
	exg	a, xl
	ld	a, (0x01, sp)
	exg	a, xl
	clr	(0x04, sp)
	or	a, (0x04, sp)
	rrwa	x
	or	a, (0x07, sp)
	ld	xl, a
	ldw	(0x02, sp), x
	jra	00103$
00102$:
	Sstm8s_adc1$ADC1_GetBufferValue$157 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 456: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ld	a, (0x12, sp)
	sll	a
	clrw	x
	ld	xl, a
	ldw	(0x0c, sp), x
	ldw	x, (0x0c, sp)
	addw	x, #0x53e0
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	(0x02, sp), x
	Sstm8s_adc1$ADC1_GetBufferValue$158 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 458: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ldw	x, (0x0c, sp)
	addw	x, #0x53e1
	ld	a, (x)
	ld	(0x01, sp), a
	Sstm8s_adc1$ADC1_GetBufferValue$159 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 460: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x0a, sp), x
	ld	a, (0x03, sp)
	ld	xh, a
	clr	a
	or	a, (0x0b, sp)
	rlwa	x
	or	a, (0x0a, sp)
	ld	xh, a
	ldw	(0x02, sp), x
00103$:
	Sstm8s_adc1$ADC1_GetBufferValue$160 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 463: return ((uint16_t)temph);
	ldw	x, (0x02, sp)
	Sstm8s_adc1$ADC1_GetBufferValue$161 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 464: }
	addw	sp, #13
	Sstm8s_adc1$ADC1_GetBufferValue$162 ==.
	XG$ADC1_GetBufferValue$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_GetBufferValue$163 ==.
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$164 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 472: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
;	-----------------------------------------
;	 function ADC1_GetAWDChannelStatus
;	-----------------------------------------
_ADC1_GetAWDChannelStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$165 ==.
	sub	sp, #2
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$166 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 479: if (Channel < (uint8_t)8)
	ld	a, (0x07, sp)
	cp	a, #0x08
	jrnc	00102$
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$167 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 481: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
	ldw	x, #0x540d
	ld	a, (x)
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, (0x08, sp)
	jreq	00111$
00110$:
	sll	(0x02, sp)
	dec	a
	jrne	00110$
00111$:
	pop	a
	and	a, (0x01, sp)
	jra	00103$
00102$:
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$168 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 485: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
	ldw	x, #0x540c
	ld	a, (x)
	ld	xl, a
	ld	a, (0x07, sp)
	sub	a, #0x08
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00113$
00112$:
	sll	(0x02, sp)
	dec	a
	jrne	00112$
00113$:
	ld	a, xl
	and	a, (0x02, sp)
00103$:
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$169 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 488: return ((FlagStatus)status);
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$170 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 489: }
	addw	sp, #2
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$171 ==.
	XG$ADC1_GetAWDChannelStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_GetAWDChannelStatus$172 ==.
	Sstm8s_adc1$ADC1_GetFlagStatus$173 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 497: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_GetFlagStatus
;	-----------------------------------------
_ADC1_GetFlagStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_GetFlagStatus$174 ==.
	sub	sp, #3
	Sstm8s_adc1$ADC1_GetFlagStatus$175 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 502: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x08, sp)
	and	a, #0x0f
	ld	(0x03, sp), a
	ld	a, (0x03, sp)
	cp	a, #0x01
	jrne	00108$
	Sstm8s_adc1$ADC1_GetFlagStatus$176 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 505: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
	ldw	x, #0x5403
	ld	a, (x)
	and	a, #0x40
	jra	00109$
00108$:
	Sstm8s_adc1$ADC1_GetFlagStatus$177 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 507: else if ((Flag & 0xF0) == 0x10)
	ld	a, (0x08, sp)
	and	a, #0xf0
	cp	a, #0x10
	jrne	00105$
	Sstm8s_adc1$ADC1_GetFlagStatus$178 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 510: temp = (uint8_t)(Flag & (uint8_t)0x0F);
	ld	a, (0x03, sp)
	Sstm8s_adc1$ADC1_GetFlagStatus$179 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 511: if (temp < 8)
	cp	a, #0x08
	jrnc	00102$
	Sstm8s_adc1$ADC1_GetFlagStatus$180 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 513: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ldw	x, #0x540d
	push	a
	ld	a, (x)
	ld	xl, a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00129$
00128$:
	sll	(0x01, sp)
	dec	a
	jrne	00128$
00129$:
	ld	a, xl
	and	a, (0x01, sp)
	jra	00109$
00102$:
	Sstm8s_adc1$ADC1_GetFlagStatus$181 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 517: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ldw	x, #0x540c
	push	a
	ld	a, (x)
	ld	(0x03, sp), a
	pop	a
	sub	a, #0x08
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
	and	a, (0x02, sp)
	jra	00109$
00105$:
	Sstm8s_adc1$ADC1_GetFlagStatus$182 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 522: flagstatus = (uint8_t)(ADC1->CSR & Flag);
	ldw	x, #0x5400
	ld	a, (x)
	and	a, (0x08, sp)
00109$:
	Sstm8s_adc1$ADC1_GetFlagStatus$183 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 524: return ((FlagStatus)flagstatus);
	Sstm8s_adc1$ADC1_GetFlagStatus$184 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 526: }
	addw	sp, #3
	Sstm8s_adc1$ADC1_GetFlagStatus$185 ==.
	XG$ADC1_GetFlagStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_GetFlagStatus$186 ==.
	Sstm8s_adc1$ADC1_ClearFlag$187 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 534: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_ClearFlag
;	-----------------------------------------
_ADC1_ClearFlag:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_ClearFlag$188 ==.
	sub	sp, #3
	Sstm8s_adc1$ADC1_ClearFlag$189 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 541: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x08, sp)
	and	a, #0x0f
	ld	xl, a
	cp	a, #0x01
	jrne	00108$
	Sstm8s_adc1$ADC1_ClearFlag$190 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 544: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
	ldw	x, #0x5403
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
	jp	00110$
00108$:
	Sstm8s_adc1$ADC1_ClearFlag$191 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 546: else if ((Flag & 0xF0) == 0x10)
	ld	a, (0x08, sp)
	and	a, #0xf0
	cp	a, #0x10
	jrne	00105$
	Sstm8s_adc1$ADC1_ClearFlag$192 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 549: temp = (uint8_t)(Flag & (uint8_t)0x0F);
	Sstm8s_adc1$ADC1_ClearFlag$193 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 550: if (temp < 8)
	ld	a, xl
	cp	a, #0x08
	jrnc	00102$
	Sstm8s_adc1$ADC1_ClearFlag$194 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 552: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
	ldw	y, #0x540d
	ld	a, (y)
	ld	(0x03, sp), a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00129$
00128$:
	sll	(1, sp)
	dec	a
	jrne	00128$
00129$:
	pop	a
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x540d
	ld	(x), a
	jra	00110$
00102$:
	Sstm8s_adc1$ADC1_ClearFlag$195 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 556: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
	ldw	y, #0x540c
	ld	a, (y)
	ld	(0x02, sp), a
	subw	x, #8
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
	and	a, (0x02, sp)
	ldw	x, #0x540c
	ld	(x), a
	jra	00110$
00105$:
	Sstm8s_adc1$ADC1_ClearFlag$196 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 561: ADC1->CSR &= (uint8_t) (~Flag);
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x08, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5400
	ld	(x), a
00110$:
	Sstm8s_adc1$ADC1_ClearFlag$197 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 563: }
	addw	sp, #3
	Sstm8s_adc1$ADC1_ClearFlag$198 ==.
	XG$ADC1_ClearFlag$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_ClearFlag$199 ==.
	Sstm8s_adc1$ADC1_GetITStatus$200 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 583: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
;	-----------------------------------------
;	 function ADC1_GetITStatus
;	-----------------------------------------
_ADC1_GetITStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_GetITStatus$201 ==.
	sub	sp, #3
	Sstm8s_adc1$ADC1_GetITStatus$202 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 591: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
	ld	a, (0x09, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
	Sstm8s_adc1$ADC1_GetITStatus$203 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 594: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
	ld	a, (0x09, sp)
	and	a, #0x0f
	ld	xl, a
	clr	a
	Sstm8s_adc1$ADC1_GetITStatus$204 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 595: if (temp < 8)
	ld	a, xl
	cp	a, #0x08
	jrnc	00102$
	Sstm8s_adc1$ADC1_GetITStatus$205 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 597: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ldw	y, #0x540d
	ld	a, (y)
	ld	(0x01, sp), a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00120$
00119$:
	sll	(1, sp)
	dec	a
	jrne	00119$
00120$:
	pop	a
	and	a, (0x01, sp)
	jra	00106$
00102$:
	Sstm8s_adc1$ADC1_GetITStatus$206 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 601: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ldw	y, #0x540c
	ld	a, (y)
	ld	(0x03, sp), a
	subw	x, #8
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00122$
00121$:
	sll	(1, sp)
	dec	a
	jrne	00121$
00122$:
	pop	a
	and	a, (0x03, sp)
	jra	00106$
00105$:
	Sstm8s_adc1$ADC1_GetITStatus$207 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 606: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x09, sp)
	and	a, (0x02, sp)
00106$:
	Sstm8s_adc1$ADC1_GetITStatus$208 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 608: return ((ITStatus)itstatus);
	Sstm8s_adc1$ADC1_GetITStatus$209 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 609: }
	addw	sp, #3
	Sstm8s_adc1$ADC1_GetITStatus$210 ==.
	XG$ADC1_GetITStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_GetITStatus$211 ==.
	Sstm8s_adc1$ADC1_ClearITPendingBit$212 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 629: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
;	-----------------------------------------
;	 function ADC1_ClearITPendingBit
;	-----------------------------------------
_ADC1_ClearITPendingBit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_adc1$ADC1_ClearITPendingBit$213 ==.
	sub	sp, #2
	Sstm8s_adc1$ADC1_ClearITPendingBit$214 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 636: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
	ld	a, (0x08, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
	Sstm8s_adc1$ADC1_ClearITPendingBit$215 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 639: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
	ld	a, (0x08, sp)
	and	a, #0x0f
	ld	xl, a
	clr	a
	Sstm8s_adc1$ADC1_ClearITPendingBit$216 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 640: if (temp < 8)
	ld	a, xl
	cp	a, #0x08
	jrnc	00102$
	Sstm8s_adc1$ADC1_ClearITPendingBit$217 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 642: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
	ldw	y, #0x540d
	ld	a, (y)
	ld	(0x01, sp), a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00120$
00119$:
	sll	(1, sp)
	dec	a
	jrne	00119$
00120$:
	pop	a
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x540d
	ld	(x), a
	jra	00107$
00102$:
	Sstm8s_adc1$ADC1_ClearITPendingBit$218 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 646: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
	ldw	y, #0x540c
	ld	a, (y)
	ld	(0x02, sp), a
	subw	x, #8
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00122$
00121$:
	sll	(1, sp)
	dec	a
	jrne	00121$
00122$:
	pop	a
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x540c
	ld	(x), a
	jra	00107$
00105$:
	Sstm8s_adc1$ADC1_ClearITPendingBit$219 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 651: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
	ldw	x, #0x5400
	ld	a, (x)
	ldw	x, (0x07, sp)
	cplw	x
	pushw	x
	and	a, (2, sp)
	popw	x
	ldw	x, #0x5400
	ld	(x), a
00107$:
	Sstm8s_adc1$ADC1_ClearITPendingBit$220 ==.
;	StdPeriphLib/src/stm8s_adc1.c: 653: }
	addw	sp, #2
	Sstm8s_adc1$ADC1_ClearITPendingBit$221 ==.
	XG$ADC1_ClearITPendingBit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_adc1$ADC1_ClearITPendingBit$222 ==.
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
	.ascii "StdPeriphLib/src/stm8s_adc1.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_DeInit$0)
	.db	3
	.sleb128	51
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$2-Sstm8s_adc1$ADC1_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$3-Sstm8s_adc1$ADC1_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$4-Sstm8s_adc1$ADC1_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$5-Sstm8s_adc1$ADC1_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$6-Sstm8s_adc1$ADC1_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$7-Sstm8s_adc1$ADC1_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$8-Sstm8s_adc1$ADC1_DeInit$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$9-Sstm8s_adc1$ADC1_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$10-Sstm8s_adc1$ADC1_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$11-Sstm8s_adc1$ADC1_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$12-Sstm8s_adc1$ADC1_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$13-Sstm8s_adc1$ADC1_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DeInit$14-Sstm8s_adc1$ADC1_DeInit$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_DeInit$15-Sstm8s_adc1$ADC1_DeInit$14
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_Init$17)
	.db	3
	.sleb128	87
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Init$19-Sstm8s_adc1$ADC1_Init$17
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Init$20-Sstm8s_adc1$ADC1_Init$19
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Init$21-Sstm8s_adc1$ADC1_Init$20
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Init$22-Sstm8s_adc1$ADC1_Init$21
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Init$23-Sstm8s_adc1$ADC1_Init$22
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Init$24-Sstm8s_adc1$ADC1_Init$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_Init$25-Sstm8s_adc1$ADC1_Init$24
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_Cmd$27)
	.db	3
	.sleb128	115
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Cmd$29-Sstm8s_adc1$ADC1_Cmd$27
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Cmd$30-Sstm8s_adc1$ADC1_Cmd$29
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Cmd$31-Sstm8s_adc1$ADC1_Cmd$30
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_Cmd$32-Sstm8s_adc1$ADC1_Cmd$31
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_Cmd$33-Sstm8s_adc1$ADC1_Cmd$32
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_ScanModeCmd$35)
	.db	3
	.sleb128	135
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$37-Sstm8s_adc1$ADC1_ScanModeCmd$35
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$38-Sstm8s_adc1$ADC1_ScanModeCmd$37
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$39-Sstm8s_adc1$ADC1_ScanModeCmd$38
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$40-Sstm8s_adc1$ADC1_ScanModeCmd$39
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_ScanModeCmd$41-Sstm8s_adc1$ADC1_ScanModeCmd$40
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_DataBufferCmd$43)
	.db	3
	.sleb128	155
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$45-Sstm8s_adc1$ADC1_DataBufferCmd$43
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$46-Sstm8s_adc1$ADC1_DataBufferCmd$45
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$47-Sstm8s_adc1$ADC1_DataBufferCmd$46
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$48-Sstm8s_adc1$ADC1_DataBufferCmd$47
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_DataBufferCmd$49-Sstm8s_adc1$ADC1_DataBufferCmd$48
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_ITConfig$51)
	.db	3
	.sleb128	179
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ITConfig$53-Sstm8s_adc1$ADC1_ITConfig$51
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ITConfig$54-Sstm8s_adc1$ADC1_ITConfig$53
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ITConfig$55-Sstm8s_adc1$ADC1_ITConfig$54
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ITConfig$56-Sstm8s_adc1$ADC1_ITConfig$55
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_ITConfig$57-Sstm8s_adc1$ADC1_ITConfig$56
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_PrescalerConfig$59)
	.db	3
	.sleb128	199
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_PrescalerConfig$61-Sstm8s_adc1$ADC1_PrescalerConfig$59
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_PrescalerConfig$62-Sstm8s_adc1$ADC1_PrescalerConfig$61
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_PrescalerConfig$63-Sstm8s_adc1$ADC1_PrescalerConfig$62
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_PrescalerConfig$64-Sstm8s_adc1$ADC1_PrescalerConfig$63
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_SchmittTriggerConfig$66)
	.db	3
	.sleb128	215
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$68-Sstm8s_adc1$ADC1_SchmittTriggerConfig$66
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$69-Sstm8s_adc1$ADC1_SchmittTriggerConfig$68
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$70-Sstm8s_adc1$ADC1_SchmittTriggerConfig$69
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$71-Sstm8s_adc1$ADC1_SchmittTriggerConfig$70
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$72-Sstm8s_adc1$ADC1_SchmittTriggerConfig$71
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$73-Sstm8s_adc1$ADC1_SchmittTriggerConfig$72
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$74-Sstm8s_adc1$ADC1_SchmittTriggerConfig$73
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$75-Sstm8s_adc1$ADC1_SchmittTriggerConfig$74
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$76-Sstm8s_adc1$ADC1_SchmittTriggerConfig$75
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$77-Sstm8s_adc1$ADC1_SchmittTriggerConfig$76
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$78-Sstm8s_adc1$ADC1_SchmittTriggerConfig$77
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$79-Sstm8s_adc1$ADC1_SchmittTriggerConfig$78
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$80-Sstm8s_adc1$ADC1_SchmittTriggerConfig$79
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$81-Sstm8s_adc1$ADC1_SchmittTriggerConfig$80
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_SchmittTriggerConfig$82-Sstm8s_adc1$ADC1_SchmittTriggerConfig$81
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_ConversionConfig$84)
	.db	3
	.sleb128	264
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$86-Sstm8s_adc1$ADC1_ConversionConfig$84
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$87-Sstm8s_adc1$ADC1_ConversionConfig$86
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$88-Sstm8s_adc1$ADC1_ConversionConfig$87
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$89-Sstm8s_adc1$ADC1_ConversionConfig$88
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$90-Sstm8s_adc1$ADC1_ConversionConfig$89
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$91-Sstm8s_adc1$ADC1_ConversionConfig$90
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$92-Sstm8s_adc1$ADC1_ConversionConfig$91
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ConversionConfig$93-Sstm8s_adc1$ADC1_ConversionConfig$92
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_ConversionConfig$94-Sstm8s_adc1$ADC1_ConversionConfig$93
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_ExternalTriggerConfig$96)
	.db	3
	.sleb128	298
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$98-Sstm8s_adc1$ADC1_ExternalTriggerConfig$96
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$99-Sstm8s_adc1$ADC1_ExternalTriggerConfig$98
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$100-Sstm8s_adc1$ADC1_ExternalTriggerConfig$99
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$101-Sstm8s_adc1$ADC1_ExternalTriggerConfig$100
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$102-Sstm8s_adc1$ADC1_ExternalTriggerConfig$101
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$103-Sstm8s_adc1$ADC1_ExternalTriggerConfig$102
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_ExternalTriggerConfig$104-Sstm8s_adc1$ADC1_ExternalTriggerConfig$103
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_StartConversion$106)
	.db	3
	.sleb128	327
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_StartConversion$108-Sstm8s_adc1$ADC1_StartConversion$106
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_StartConversion$109-Sstm8s_adc1$ADC1_StartConversion$108
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_StartConversion$110-Sstm8s_adc1$ADC1_StartConversion$109
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_GetConversionValue$112)
	.db	3
	.sleb128	339
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$114-Sstm8s_adc1$ADC1_GetConversionValue$112
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$115-Sstm8s_adc1$ADC1_GetConversionValue$114
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$116-Sstm8s_adc1$ADC1_GetConversionValue$115
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$117-Sstm8s_adc1$ADC1_GetConversionValue$116
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$118-Sstm8s_adc1$ADC1_GetConversionValue$117
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$119-Sstm8s_adc1$ADC1_GetConversionValue$118
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$120-Sstm8s_adc1$ADC1_GetConversionValue$119
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$121-Sstm8s_adc1$ADC1_GetConversionValue$120
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetConversionValue$122-Sstm8s_adc1$ADC1_GetConversionValue$121
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_GetConversionValue$123-Sstm8s_adc1$ADC1_GetConversionValue$122
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_AWDChannelConfig$125)
	.db	3
	.sleb128	374
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$127-Sstm8s_adc1$ADC1_AWDChannelConfig$125
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$128-Sstm8s_adc1$ADC1_AWDChannelConfig$127
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$129-Sstm8s_adc1$ADC1_AWDChannelConfig$128
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$130-Sstm8s_adc1$ADC1_AWDChannelConfig$129
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$131-Sstm8s_adc1$ADC1_AWDChannelConfig$130
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$132-Sstm8s_adc1$ADC1_AWDChannelConfig$131
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$133-Sstm8s_adc1$ADC1_AWDChannelConfig$132
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$134-Sstm8s_adc1$ADC1_AWDChannelConfig$133
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_AWDChannelConfig$135-Sstm8s_adc1$ADC1_AWDChannelConfig$134
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_SetHighThreshold$137)
	.db	3
	.sleb128	410
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SetHighThreshold$139-Sstm8s_adc1$ADC1_SetHighThreshold$137
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SetHighThreshold$140-Sstm8s_adc1$ADC1_SetHighThreshold$139
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SetHighThreshold$141-Sstm8s_adc1$ADC1_SetHighThreshold$140
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_SetHighThreshold$142-Sstm8s_adc1$ADC1_SetHighThreshold$141
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_SetLowThreshold$144)
	.db	3
	.sleb128	422
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SetLowThreshold$146-Sstm8s_adc1$ADC1_SetLowThreshold$144
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SetLowThreshold$147-Sstm8s_adc1$ADC1_SetLowThreshold$146
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_SetLowThreshold$148-Sstm8s_adc1$ADC1_SetLowThreshold$147
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_SetLowThreshold$149-Sstm8s_adc1$ADC1_SetLowThreshold$148
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_GetBufferValue$151)
	.db	3
	.sleb128	435
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$153-Sstm8s_adc1$ADC1_GetBufferValue$151
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$154-Sstm8s_adc1$ADC1_GetBufferValue$153
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$155-Sstm8s_adc1$ADC1_GetBufferValue$154
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$156-Sstm8s_adc1$ADC1_GetBufferValue$155
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$157-Sstm8s_adc1$ADC1_GetBufferValue$156
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$158-Sstm8s_adc1$ADC1_GetBufferValue$157
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$159-Sstm8s_adc1$ADC1_GetBufferValue$158
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$160-Sstm8s_adc1$ADC1_GetBufferValue$159
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetBufferValue$161-Sstm8s_adc1$ADC1_GetBufferValue$160
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_GetBufferValue$162-Sstm8s_adc1$ADC1_GetBufferValue$161
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_GetAWDChannelStatus$164)
	.db	3
	.sleb128	471
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$166-Sstm8s_adc1$ADC1_GetAWDChannelStatus$164
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$167-Sstm8s_adc1$ADC1_GetAWDChannelStatus$166
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$168-Sstm8s_adc1$ADC1_GetAWDChannelStatus$167
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$169-Sstm8s_adc1$ADC1_GetAWDChannelStatus$168
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$170-Sstm8s_adc1$ADC1_GetAWDChannelStatus$169
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_GetAWDChannelStatus$171-Sstm8s_adc1$ADC1_GetAWDChannelStatus$170
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_GetFlagStatus$173)
	.db	3
	.sleb128	496
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$175-Sstm8s_adc1$ADC1_GetFlagStatus$173
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$176-Sstm8s_adc1$ADC1_GetFlagStatus$175
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$177-Sstm8s_adc1$ADC1_GetFlagStatus$176
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$178-Sstm8s_adc1$ADC1_GetFlagStatus$177
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$179-Sstm8s_adc1$ADC1_GetFlagStatus$178
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$180-Sstm8s_adc1$ADC1_GetFlagStatus$179
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$181-Sstm8s_adc1$ADC1_GetFlagStatus$180
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$182-Sstm8s_adc1$ADC1_GetFlagStatus$181
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$183-Sstm8s_adc1$ADC1_GetFlagStatus$182
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$184-Sstm8s_adc1$ADC1_GetFlagStatus$183
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_GetFlagStatus$185-Sstm8s_adc1$ADC1_GetFlagStatus$184
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_ClearFlag$187)
	.db	3
	.sleb128	533
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$189-Sstm8s_adc1$ADC1_ClearFlag$187
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$190-Sstm8s_adc1$ADC1_ClearFlag$189
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$191-Sstm8s_adc1$ADC1_ClearFlag$190
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$192-Sstm8s_adc1$ADC1_ClearFlag$191
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$193-Sstm8s_adc1$ADC1_ClearFlag$192
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$194-Sstm8s_adc1$ADC1_ClearFlag$193
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$195-Sstm8s_adc1$ADC1_ClearFlag$194
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$196-Sstm8s_adc1$ADC1_ClearFlag$195
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearFlag$197-Sstm8s_adc1$ADC1_ClearFlag$196
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_ClearFlag$198-Sstm8s_adc1$ADC1_ClearFlag$197
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_GetITStatus$200)
	.db	3
	.sleb128	582
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$202-Sstm8s_adc1$ADC1_GetITStatus$200
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$203-Sstm8s_adc1$ADC1_GetITStatus$202
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$204-Sstm8s_adc1$ADC1_GetITStatus$203
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$205-Sstm8s_adc1$ADC1_GetITStatus$204
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$206-Sstm8s_adc1$ADC1_GetITStatus$205
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$207-Sstm8s_adc1$ADC1_GetITStatus$206
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$208-Sstm8s_adc1$ADC1_GetITStatus$207
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_GetITStatus$209-Sstm8s_adc1$ADC1_GetITStatus$208
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_GetITStatus$210-Sstm8s_adc1$ADC1_GetITStatus$209
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc1$ADC1_ClearITPendingBit$212)
	.db	3
	.sleb128	628
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$214-Sstm8s_adc1$ADC1_ClearITPendingBit$212
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$215-Sstm8s_adc1$ADC1_ClearITPendingBit$214
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$216-Sstm8s_adc1$ADC1_ClearITPendingBit$215
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$217-Sstm8s_adc1$ADC1_ClearITPendingBit$216
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$218-Sstm8s_adc1$ADC1_ClearITPendingBit$217
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$219-Sstm8s_adc1$ADC1_ClearITPendingBit$218
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$220-Sstm8s_adc1$ADC1_ClearITPendingBit$219
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_adc1$ADC1_ClearITPendingBit$221-Sstm8s_adc1$ADC1_ClearITPendingBit$220
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_adc1$ADC1_ClearITPendingBit$213)
	.dw	0,(Sstm8s_adc1$ADC1_ClearITPendingBit$222)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_GetITStatus$201)
	.dw	0,(Sstm8s_adc1$ADC1_GetITStatus$211)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_ClearFlag$188)
	.dw	0,(Sstm8s_adc1$ADC1_ClearFlag$199)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_GetFlagStatus$174)
	.dw	0,(Sstm8s_adc1$ADC1_GetFlagStatus$186)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_GetAWDChannelStatus$165)
	.dw	0,(Sstm8s_adc1$ADC1_GetAWDChannelStatus$172)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_GetBufferValue$152)
	.dw	0,(Sstm8s_adc1$ADC1_GetBufferValue$163)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_SetLowThreshold$145)
	.dw	0,(Sstm8s_adc1$ADC1_SetLowThreshold$150)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_SetHighThreshold$138)
	.dw	0,(Sstm8s_adc1$ADC1_SetHighThreshold$143)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_AWDChannelConfig$126)
	.dw	0,(Sstm8s_adc1$ADC1_AWDChannelConfig$136)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_GetConversionValue$113)
	.dw	0,(Sstm8s_adc1$ADC1_GetConversionValue$124)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_StartConversion$107)
	.dw	0,(Sstm8s_adc1$ADC1_StartConversion$111)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_ExternalTriggerConfig$97)
	.dw	0,(Sstm8s_adc1$ADC1_ExternalTriggerConfig$105)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_ConversionConfig$85)
	.dw	0,(Sstm8s_adc1$ADC1_ConversionConfig$95)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_SchmittTriggerConfig$67)
	.dw	0,(Sstm8s_adc1$ADC1_SchmittTriggerConfig$83)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_PrescalerConfig$60)
	.dw	0,(Sstm8s_adc1$ADC1_PrescalerConfig$65)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_ITConfig$52)
	.dw	0,(Sstm8s_adc1$ADC1_ITConfig$58)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_DataBufferCmd$44)
	.dw	0,(Sstm8s_adc1$ADC1_DataBufferCmd$50)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_ScanModeCmd$36)
	.dw	0,(Sstm8s_adc1$ADC1_ScanModeCmd$42)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_Cmd$28)
	.dw	0,(Sstm8s_adc1$ADC1_Cmd$34)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_Init$18)
	.dw	0,(Sstm8s_adc1$ADC1_Init$26)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc1$ADC1_DeInit$1)
	.dw	0,(Sstm8s_adc1$ADC1_DeInit$16)
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
	.uleb128	8
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
	.ascii "StdPeriphLib/src/stm8s_adc1.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.ascii "ADC1_DeInit"
	.db	0
	.dw	0,(_ADC1_DeInit)
	.dw	0,(XG$ADC1_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+400)
	.uleb128	3
	.dw	0,348
	.ascii "ADC1_Init"
	.db	0
	.dw	0,(_ADC1_Init)
	.dw	0,(XG$ADC1_Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC1_ConversionMode"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "ADC1_Channel"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ADC1_PrescalerSelection"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "ADC1_ExtTrigger"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "ADC1_ExtTriggerState"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "ADC1_Align"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	10
	.ascii "ADC1_SchmittTriggerChannel"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	11
	.ascii "ADC1_SchmittTriggerState"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,412
	.ascii "ADC1_Cmd"
	.db	0
	.dw	0,(_ADC1_Cmd)
	.dw	0,(XG$ADC1_Cmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,467
	.ascii "ADC1_ScanModeCmd"
	.db	0
	.dw	0,(_ADC1_ScanModeCmd)
	.dw	0,(XG$ADC1_ScanModeCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,524
	.ascii "ADC1_DataBufferCmd"
	.db	0
	.dw	0,(_ADC1_DataBufferCmd)
	.dw	0,(XG$ADC1_DataBufferCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,592
	.ascii "ADC1_ITConfig"
	.db	0
	.dw	0,(_ADC1_ITConfig)
	.dw	0,(XG$ADC1_ITConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC1_IT"
	.db	0
	.dw	0,592
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "NewState"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	3
	.dw	0,671
	.ascii "ADC1_PrescalerConfig"
	.db	0
	.dw	0,(_ADC1_PrescalerConfig)
	.dw	0,(XG$ADC1_PrescalerConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC1_Prescaler"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	3
	.dw	0,788
	.ascii "ADC1_SchmittTriggerConfig"
	.db	0
	.dw	0,(_ADC1_SchmittTriggerConfig)
	.dw	0,(XG$ADC1_SchmittTriggerConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC1_SchmittTriggerChannel"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,348
	.uleb128	7
	.dw	0,775
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	7
	.dw	0,783
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	8
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,899
	.ascii "ADC1_ConversionConfig"
	.db	0
	.dw	0,(_ADC1_ConversionConfig)
	.dw	0,(XG$ADC1_ConversionConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC1_ConversionMode"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "ADC1_Channel"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ADC1_Align"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	3
	.dw	0,988
	.ascii "ADC1_ExternalTriggerConfig"
	.db	0
	.dw	0,(_ADC1_ExternalTriggerConfig)
	.dw	0,(XG$ADC1_ExternalTriggerConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC1_ExtTrigger"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	2
	.ascii "ADC1_StartConversion"
	.db	0
	.dw	0,(_ADC1_StartConversion)
	.dw	0,(XG$ADC1_StartConversion$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.uleb128	9
	.dw	0,1100
	.ascii "ADC1_GetConversionValue"
	.db	0
	.dw	0,(_ADC1_GetConversionValue)
	.dw	0,(XG$ADC1_GetConversionValue$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.dw	0,592
	.uleb128	6
	.uleb128	6
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-8
	.ascii "temph"
	.db	0
	.dw	0,592
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-9
	.ascii "templ"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	3
	.dw	0,1186
	.ascii "ADC1_AWDChannelConfig"
	.db	0
	.dw	0,(_ADC1_AWDChannelConfig)
	.dw	0,(XG$ADC1_AWDChannelConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Channel"
	.db	0
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "NewState"
	.db	0
	.dw	0,348
	.uleb128	7
	.dw	0,1181
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	8
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,1245
	.ascii "ADC1_SetHighThreshold"
	.db	0
	.dw	0,(_ADC1_SetHighThreshold)
	.dw	0,(XG$ADC1_SetHighThreshold$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Threshold"
	.db	0
	.dw	0,592
	.uleb128	0
	.uleb128	3
	.dw	0,1303
	.ascii "ADC1_SetLowThreshold"
	.db	0
	.dw	0,(_ADC1_SetLowThreshold)
	.dw	0,(XG$ADC1_SetLowThreshold$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Threshold"
	.db	0
	.dw	0,592
	.uleb128	0
	.uleb128	9
	.dw	0,1391
	.ascii "ADC1_GetBufferValue"
	.db	0
	.dw	0,(_ADC1_GetBufferValue)
	.dw	0,(XG$ADC1_GetBufferValue$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.dw	0,592
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Buffer"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-12
	.ascii "temph"
	.db	0
	.dw	0,592
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-13
	.ascii "templ"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	9
	.dw	0,1471
	.ascii "ADC1_GetAWDChannelStatus"
	.db	0
	.dw	0,(_ADC1_GetAWDChannelStatus)
	.dw	0,(XG$ADC1_GetAWDChannelStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Channel"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	6
	.uleb128	10
	.db	1
	.db	81
	.ascii "status"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	9
	.dw	0,1566
	.ascii "ADC1_GetFlagStatus"
	.db	0
	.dw	0,(_ADC1_GetFlagStatus)
	.dw	0,(XG$ADC1_GetFlagStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Flag"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	7
	.dw	0,1534
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	6
	.uleb128	10
	.db	1
	.db	81
	.ascii "flagstatus"
	.db	0
	.dw	0,348
	.uleb128	10
	.db	1
	.db	81
	.ascii "temp"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	3
	.dw	0,1633
	.ascii "ADC1_ClearFlag"
	.db	0
	.dw	0,(_ADC1_ClearFlag)
	.dw	0,(XG$ADC1_ClearFlag$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Flag"
	.db	0
	.dw	0,348
	.uleb128	6
	.uleb128	7
	.dw	0,1621
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	6
	.uleb128	11
	.ascii "temp"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	9
	.dw	0,1729
	.ascii "ADC1_GetITStatus"
	.db	0
	.dw	0,(_ADC1_GetITStatus)
	.dw	0,(XG$ADC1_GetITStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,348
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ITPendingBit"
	.db	0
	.dw	0,592
	.uleb128	7
	.dw	0,1701
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	6
	.uleb128	10
	.db	1
	.db	81
	.ascii "itstatus"
	.db	0
	.dw	0,348
	.uleb128	11
	.ascii "temp"
	.db	0
	.dw	0,348
	.uleb128	0
	.uleb128	12
	.ascii "ADC1_ClearITPendingBit"
	.db	0
	.dw	0,(_ADC1_ClearITPendingBit)
	.dw	0,(XG$ADC1_ClearITPendingBit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ITPendingBit"
	.db	0
	.dw	0,592
	.uleb128	7
	.dw	0,1795
	.uleb128	6
	.uleb128	6
	.uleb128	0
	.uleb128	6
	.uleb128	11
	.ascii "temp"
	.db	0
	.dw	0,348
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
	.ascii "ADC1_DeInit"
	.db	0
	.dw	0,98
	.ascii "ADC1_Init"
	.db	0
	.dw	0,365
	.ascii "ADC1_Cmd"
	.db	0
	.dw	0,412
	.ascii "ADC1_ScanModeCmd"
	.db	0
	.dw	0,467
	.ascii "ADC1_DataBufferCmd"
	.db	0
	.dw	0,524
	.ascii "ADC1_ITConfig"
	.db	0
	.dw	0,608
	.ascii "ADC1_PrescalerConfig"
	.db	0
	.dw	0,671
	.ascii "ADC1_SchmittTriggerConfig"
	.db	0
	.dw	0,788
	.ascii "ADC1_ConversionConfig"
	.db	0
	.dw	0,899
	.ascii "ADC1_ExternalTriggerConfig"
	.db	0
	.dw	0,988
	.ascii "ADC1_StartConversion"
	.db	0
	.dw	0,1023
	.ascii "ADC1_GetConversionValue"
	.db	0
	.dw	0,1100
	.ascii "ADC1_AWDChannelConfig"
	.db	0
	.dw	0,1186
	.ascii "ADC1_SetHighThreshold"
	.db	0
	.dw	0,1245
	.ascii "ADC1_SetLowThreshold"
	.db	0
	.dw	0,1303
	.ascii "ADC1_GetBufferValue"
	.db	0
	.dw	0,1391
	.ascii "ADC1_GetAWDChannelStatus"
	.db	0
	.dw	0,1471
	.ascii "ADC1_GetFlagStatus"
	.db	0
	.dw	0,1566
	.ascii "ADC1_ClearFlag"
	.db	0
	.dw	0,1633
	.ascii "ADC1_GetITStatus"
	.db	0
	.dw	0,1729
	.ascii "ADC1_ClearITPendingBit"
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
