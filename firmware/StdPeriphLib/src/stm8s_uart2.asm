;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_uart2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _UART2_DeInit
	.globl _UART2_Init
	.globl _UART2_Cmd
	.globl _UART2_ITConfig
	.globl _UART2_IrDAConfig
	.globl _UART2_IrDACmd
	.globl _UART2_LINBreakDetectionConfig
	.globl _UART2_LINConfig
	.globl _UART2_LINCmd
	.globl _UART2_SmartCardCmd
	.globl _UART2_SmartCardNACKCmd
	.globl _UART2_WakeUpConfig
	.globl _UART2_ReceiverWakeUpCmd
	.globl _UART2_ReceiveData8
	.globl _UART2_ReceiveData9
	.globl _UART2_SendData8
	.globl _UART2_SendData9
	.globl _UART2_SendBreak
	.globl _UART2_SetAddress
	.globl _UART2_SetGuardTime
	.globl _UART2_SetPrescaler
	.globl _UART2_GetFlagStatus
	.globl _UART2_ClearFlag
	.globl _UART2_GetITStatus
	.globl _UART2_ClearITPendingBit
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
	Sstm8s_uart2$UART2_DeInit$0 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 53: void UART2_DeInit(void)
;	-----------------------------------------
;	 function UART2_DeInit
;	-----------------------------------------
_UART2_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_DeInit$1 ==.
	Sstm8s_uart2$UART2_DeInit$2 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 57: (void) UART2->SR;
	ldw	x, #0x5240
	ld	a, (x)
	Sstm8s_uart2$UART2_DeInit$3 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 58: (void)UART2->DR;
	ldw	x, #0x5241
	ld	a, (x)
	Sstm8s_uart2$UART2_DeInit$4 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
	mov	0x5243+0, #0x00
	Sstm8s_uart2$UART2_DeInit$5 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
	mov	0x5242+0, #0x00
	Sstm8s_uart2$UART2_DeInit$6 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
	mov	0x5244+0, #0x00
	Sstm8s_uart2$UART2_DeInit$7 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
	mov	0x5245+0, #0x00
	Sstm8s_uart2$UART2_DeInit$8 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
	mov	0x5246+0, #0x00
	Sstm8s_uart2$UART2_DeInit$9 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
	mov	0x5247+0, #0x00
	Sstm8s_uart2$UART2_DeInit$10 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
	mov	0x5248+0, #0x00
	Sstm8s_uart2$UART2_DeInit$11 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
	mov	0x5249+0, #0x00
	Sstm8s_uart2$UART2_DeInit$12 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 69: }
	Sstm8s_uart2$UART2_DeInit$13 ==.
	XG$UART2_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_DeInit$14 ==.
	Sstm8s_uart2$UART2_Init$15 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
;	-----------------------------------------
;	 function UART2_Init
;	-----------------------------------------
_UART2_Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_Init$16 ==.
	sub	sp, #35
	Sstm8s_uart2$UART2_Init$17 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_uart2$UART2_Init$18 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x2c, sp)
	ldw	x, #0x5244
	ld	(x), a
	Sstm8s_uart2$UART2_Init$19 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
	Sstm8s_uart2$UART2_Init$20 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
	ldw	x, #0x5246
	ld	a, (x)
	or	a, (0x2d, sp)
	ldw	x, #0x5246
	ld	(x), a
	Sstm8s_uart2$UART2_Init$21 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xf9
	ld	(x), a
	Sstm8s_uart2$UART2_Init$22 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x2e, sp)
	ldw	x, #0x5244
	ld	(x), a
	Sstm8s_uart2$UART2_Init$23 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
	ldw	x, #0x5242
	ld	a, (x)
	mov	0x5242+0, #0x00
	Sstm8s_uart2$UART2_Init$24 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
	ldw	x, #0x5243
	ld	a, (x)
	and	a, #0x0f
	ld	(x), a
	Sstm8s_uart2$UART2_Init$25 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
	ldw	x, #0x5243
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
	Sstm8s_uart2$UART2_Init$26 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x0c, sp), x
	ldw	x, (0x28, sp)
	ldw	(0x0e, sp), x
	ldw	x, (0x2a, sp)
	ld	a, #0x04
00121$:
	sllw	x
	rlc	(0x0f, sp)
	rlc	(0x0e, sp)
	dec	a
	jrne	00121$
	ldw	(0x10, sp), x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
	Sstm8s_uart2$UART2_Init$27 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ld	a, xl
	push	a
	ld	a, xh
	push	a
	pushw	y
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x22, sp), x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x26, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
	Sstm8s_uart2$UART2_Init$28 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x1e, sp), x
	ldw	(0x1c, sp), y
	ldw	x, (0x03, sp)
	subw	x, (0x1e, sp)
	ldw	(0x1a, sp), x
	ld	a, (0x02, sp)
	sbc	a, (0x1d, sp)
	ld	(0x19, sp), a
	ld	a, (0x01, sp)
	sbc	a, (0x1c, sp)
	ld	(0x18, sp), a
	ldw	x, (0x1a, sp)
	ldw	y, (0x18, sp)
	ld	a, #0x04
00123$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00123$
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ld	a, xl
	and	a, #0x0f
	ld	(0x09, sp), a
	Sstm8s_uart2$UART2_Init$29 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
	ldw	x, (0x07, sp)
	ldw	y, (0x05, sp)
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	ld	a, xl
	and	a, #0xf0
	push	a
	clrw	x
	clr	(0x15, sp)
	pop	a
	Sstm8s_uart2$UART2_Init$30 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
	or	a, (0x09, sp)
	ldw	x, #0x5243
	ld	(x), a
	Sstm8s_uart2$UART2_Init$31 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
	ld	a, (0x08, sp)
	ldw	x, #0x5242
	ld	(x), a
	Sstm8s_uart2$UART2_Init$32 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
	Sstm8s_uart2$UART2_Init$33 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xf8
	ld	(x), a
	Sstm8s_uart2$UART2_Init$34 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
	ldw	x, #0x5246
	ld	a, (x)
	ld	(0x13, sp), a
	ld	a, (0x2f, sp)
	and	a, #0x07
	or	a, (0x13, sp)
	ldw	x, #0x5246
	ld	(x), a
	Sstm8s_uart2$UART2_Init$35 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
	ld	a, (0x30, sp)
	bcp	a, #0x04
	jreq	00102$
	Sstm8s_uart2$UART2_Init$36 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_uart2$UART2_Init$37 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00103$:
	Sstm8s_uart2$UART2_Init$38 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
	ld	a, (0x30, sp)
	bcp	a, #0x08
	jreq	00105$
	Sstm8s_uart2$UART2_Init$39 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00106$
00105$:
	Sstm8s_uart2$UART2_Init$40 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00106$:
	Sstm8s_uart2$UART2_Init$41 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
	tnz	(0x2f, sp)
	jrpl	00108$
	Sstm8s_uart2$UART2_Init$42 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00110$
00108$:
	Sstm8s_uart2$UART2_Init$43 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
	ldw	x, #0x5246
	ld	a, (x)
	ld	(0x12, sp), a
	ld	a, (0x2f, sp)
	and	a, #0x08
	or	a, (0x12, sp)
	ldw	x, #0x5246
	ld	(x), a
00110$:
	Sstm8s_uart2$UART2_Init$44 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 173: }
	addw	sp, #35
	Sstm8s_uart2$UART2_Init$45 ==.
	XG$UART2_Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_Init$46 ==.
	Sstm8s_uart2$UART2_Cmd$47 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_Cmd
;	-----------------------------------------
_UART2_Cmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_Cmd$48 ==.
	Sstm8s_uart2$UART2_Cmd$49 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_Cmd$50 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_Cmd$51 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
	ldw	x, #0x5244
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_Cmd$52 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 193: }
	Sstm8s_uart2$UART2_Cmd$53 ==.
	XG$UART2_Cmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_Cmd$54 ==.
	Sstm8s_uart2$UART2_ITConfig$55 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ITConfig
;	-----------------------------------------
_UART2_ITConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_ITConfig$56 ==.
	sub	sp, #5
	Sstm8s_uart2$UART2_ITConfig$57 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
	ld	a, (0x0a, sp)
	ld	xl, a
	clr	a
	Sstm8s_uart2$UART2_ITConfig$58 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ld	a, (0x0b, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00146$
00145$:
	sll	(1, sp)
	dec	a
	jrne	00145$
00146$:
	pop	a
	ld	(0x01, sp), a
	Sstm8s_uart2$UART2_ITConfig$59 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
	tnz	(0x0c, sp)
	jreq	00120$
	Sstm8s_uart2$UART2_ITConfig$60 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
	ld	a, xl
	cp	a, #0x01
	jrne	00108$
	Sstm8s_uart2$UART2_ITConfig$61 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5244
	ld	(x), a
	jp	00122$
00108$:
	Sstm8s_uart2$UART2_ITConfig$62 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
	ld	a, xl
	cp	a, #0x02
	jrne	00105$
	Sstm8s_uart2$UART2_ITConfig$63 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5245
	ld	(x), a
	jp	00122$
00105$:
	Sstm8s_uart2$UART2_ITConfig$64 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
	ld	a, xl
	cp	a, #0x03
	jrne	00102$
	Sstm8s_uart2$UART2_ITConfig$65 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
	ldw	x, #0x5247
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5247
	ld	(x), a
	jp	00122$
00102$:
	Sstm8s_uart2$UART2_ITConfig$66 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
	ldw	x, #0x5249
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5249
	ld	(x), a
	jra	00122$
00120$:
	Sstm8s_uart2$UART2_ITConfig$67 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
	ld	a, xl
	cp	a, #0x01
	jrne	00117$
	Sstm8s_uart2$UART2_ITConfig$68 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
	ldw	x, #0x5244
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x5244
	ld	(x), a
	jra	00122$
00117$:
	Sstm8s_uart2$UART2_ITConfig$69 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
	ld	a, xl
	cp	a, #0x02
	jrne	00114$
	Sstm8s_uart2$UART2_ITConfig$70 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
	ldw	x, #0x5245
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x04, sp)
	ldw	x, #0x5245
	ld	(x), a
	jra	00122$
00114$:
	Sstm8s_uart2$UART2_ITConfig$71 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
	ld	a, xl
	cp	a, #0x03
	jrne	00111$
	Sstm8s_uart2$UART2_ITConfig$72 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
	ldw	x, #0x5247
	ld	a, (x)
	ld	(0x05, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x05, sp)
	ldw	x, #0x5247
	ld	(x), a
	jra	00122$
00111$:
	Sstm8s_uart2$UART2_ITConfig$73 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
	ldw	x, #0x5249
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x5249
	ld	(x), a
00122$:
	Sstm8s_uart2$UART2_ITConfig$74 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 264: }
	addw	sp, #5
	Sstm8s_uart2$UART2_ITConfig$75 ==.
	XG$UART2_ITConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_ITConfig$76 ==.
	Sstm8s_uart2$UART2_IrDAConfig$77 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
;	-----------------------------------------
;	 function UART2_IrDAConfig
;	-----------------------------------------
_UART2_IrDAConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_IrDAConfig$78 ==.
	Sstm8s_uart2$UART2_IrDAConfig$79 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_IrDAConfig$80 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_IrDAConfig$81 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_IrDAConfig$82 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 284: }
	Sstm8s_uart2$UART2_IrDAConfig$83 ==.
	XG$UART2_IrDAConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_IrDAConfig$84 ==.
	Sstm8s_uart2$UART2_IrDACmd$85 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_IrDACmd
;	-----------------------------------------
_UART2_IrDACmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_IrDACmd$86 ==.
	Sstm8s_uart2$UART2_IrDACmd$87 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_IrDACmd$88 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_IrDACmd$89 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_IrDACmd$90 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 307: }
	Sstm8s_uart2$UART2_IrDACmd$91 ==.
	XG$UART2_IrDACmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_IrDACmd$92 ==.
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$93 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
;	-----------------------------------------
;	 function UART2_LINBreakDetectionConfig
;	-----------------------------------------
_UART2_LINBreakDetectionConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$94 ==.
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$95 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$96 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
	ldw	x, #0x5247
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$97 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$98 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 329: }
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$99 ==.
	XG$UART2_LINBreakDetectionConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_LINBreakDetectionConfig$100 ==.
	Sstm8s_uart2$UART2_LINConfig$101 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
;	-----------------------------------------
;	 function UART2_LINConfig
;	-----------------------------------------
_UART2_LINConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_LINConfig$102 ==.
	Sstm8s_uart2$UART2_LINConfig$103 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_LINConfig$104 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
	ldw	x, #0x5249
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_uart2$UART2_LINConfig$105 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00103$:
	Sstm8s_uart2$UART2_LINConfig$106 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
	tnz	(0x06, sp)
	jreq	00105$
	Sstm8s_uart2$UART2_LINConfig$107 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
	ldw	x, #0x5249
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00106$
00105$:
	Sstm8s_uart2$UART2_LINConfig$108 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00106$:
	Sstm8s_uart2$UART2_LINConfig$109 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
	tnz	(0x07, sp)
	jreq	00108$
	Sstm8s_uart2$UART2_LINConfig$110 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
	bset	0x5249, #7
	jra	00110$
00108$:
	Sstm8s_uart2$UART2_LINConfig$111 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
	bres	0x5249, #7
00110$:
	Sstm8s_uart2$UART2_LINConfig$112 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 376: }
	Sstm8s_uart2$UART2_LINConfig$113 ==.
	XG$UART2_LINConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_LINConfig$114 ==.
	Sstm8s_uart2$UART2_LINCmd$115 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_LINCmd
;	-----------------------------------------
_UART2_LINCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_LINCmd$116 ==.
	Sstm8s_uart2$UART2_LINCmd$117 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_LINCmd$118 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
	ldw	x, #0x5246
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_LINCmd$119 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_LINCmd$120 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 398: }
	Sstm8s_uart2$UART2_LINCmd$121 ==.
	XG$UART2_LINCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_LINCmd$122 ==.
	Sstm8s_uart2$UART2_SmartCardCmd$123 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardCmd
;	-----------------------------------------
_UART2_SmartCardCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SmartCardCmd$124 ==.
	Sstm8s_uart2$UART2_SmartCardCmd$125 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_SmartCardCmd$126 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_SmartCardCmd$127 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_SmartCardCmd$128 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 421: }
	Sstm8s_uart2$UART2_SmartCardCmd$129 ==.
	XG$UART2_SmartCardCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SmartCardCmd$130 ==.
	Sstm8s_uart2$UART2_SmartCardNACKCmd$131 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardNACKCmd
;	-----------------------------------------
_UART2_SmartCardNACKCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SmartCardNACKCmd$132 ==.
	Sstm8s_uart2$UART2_SmartCardNACKCmd$133 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_SmartCardNACKCmd$134 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_SmartCardNACKCmd$135 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_SmartCardNACKCmd$136 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 444: }
	Sstm8s_uart2$UART2_SmartCardNACKCmd$137 ==.
	XG$UART2_SmartCardNACKCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SmartCardNACKCmd$138 ==.
	Sstm8s_uart2$UART2_WakeUpConfig$139 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
;	-----------------------------------------
;	 function UART2_WakeUpConfig
;	-----------------------------------------
_UART2_WakeUpConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_WakeUpConfig$140 ==.
	Sstm8s_uart2$UART2_WakeUpConfig$141 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	Sstm8s_uart2$UART2_WakeUpConfig$142 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5244
	ld	(x), a
	Sstm8s_uart2$UART2_WakeUpConfig$143 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 458: }
	Sstm8s_uart2$UART2_WakeUpConfig$144 ==.
	XG$UART2_WakeUpConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_WakeUpConfig$145 ==.
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$146 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ReceiverWakeUpCmd
;	-----------------------------------------
_UART2_ReceiverWakeUpCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$147 ==.
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$148 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$149 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$150 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$151 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 480: }
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$152 ==.
	XG$UART2_ReceiverWakeUpCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$153 ==.
	Sstm8s_uart2$UART2_ReceiveData8$154 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
;	-----------------------------------------
;	 function UART2_ReceiveData8
;	-----------------------------------------
_UART2_ReceiveData8:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_ReceiveData8$155 ==.
	Sstm8s_uart2$UART2_ReceiveData8$156 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
	ldw	x, #0x5241
	ld	a, (x)
	Sstm8s_uart2$UART2_ReceiveData8$157 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 490: }
	Sstm8s_uart2$UART2_ReceiveData8$158 ==.
	XG$UART2_ReceiveData8$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_ReceiveData8$159 ==.
	Sstm8s_uart2$UART2_ReceiveData9$160 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
;	-----------------------------------------
;	 function UART2_ReceiveData9
;	-----------------------------------------
_UART2_ReceiveData9:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_ReceiveData9$161 ==.
	sub	sp, #4
	Sstm8s_uart2$UART2_ReceiveData9$162 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
	ldw	x, #0x5244
	ld	a, (x)
	clr	(0x03, sp)
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	sllw	x
	ldw	(0x01, sp), x
	Sstm8s_uart2$UART2_ReceiveData9$163 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
	ldw	x, #0x5241
	ld	a, (x)
	rlwa	x
	clr	a
	rrwa	x
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	and	a, #0x01
	ld	xh, a
	Sstm8s_uart2$UART2_ReceiveData9$164 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 504: }
	addw	sp, #4
	Sstm8s_uart2$UART2_ReceiveData9$165 ==.
	XG$UART2_ReceiveData9$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_ReceiveData9$166 ==.
	Sstm8s_uart2$UART2_SendData8$167 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
;	-----------------------------------------
;	 function UART2_SendData8
;	-----------------------------------------
_UART2_SendData8:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SendData8$168 ==.
	Sstm8s_uart2$UART2_SendData8$169 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 514: UART2->DR = Data;
	ldw	x, #0x5241
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_uart2$UART2_SendData8$170 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 515: }
	Sstm8s_uart2$UART2_SendData8$171 ==.
	XG$UART2_SendData8$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SendData8$172 ==.
	Sstm8s_uart2$UART2_SendData9$173 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
;	-----------------------------------------
;	 function UART2_SendData9
;	-----------------------------------------
_UART2_SendData9:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SendData9$174 ==.
	push	a
	Sstm8s_uart2$UART2_SendData9$175 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
	Sstm8s_uart2$UART2_SendData9$176 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
	ldw	x, #0x5244
	ld	a, (x)
	ld	(0x01, sp), a
	ldw	x, (0x06, sp)
	srlw	x
	srlw	x
	ld	a, xl
	and	a, #0x40
	or	a, (0x01, sp)
	ldw	x, #0x5244
	ld	(x), a
	Sstm8s_uart2$UART2_SendData9$177 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
	ld	a, (0x07, sp)
	ldw	x, #0x5241
	ld	(x), a
	Sstm8s_uart2$UART2_SendData9$178 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 532: }
	pop	a
	Sstm8s_uart2$UART2_SendData9$179 ==.
	XG$UART2_SendData9$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SendData9$180 ==.
	Sstm8s_uart2$UART2_SendBreak$181 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
;	-----------------------------------------
;	 function UART2_SendBreak
;	-----------------------------------------
_UART2_SendBreak:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SendBreak$182 ==.
	Sstm8s_uart2$UART2_SendBreak$183 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
	bset	0x5245, #0
	Sstm8s_uart2$UART2_SendBreak$184 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 542: }
	Sstm8s_uart2$UART2_SendBreak$185 ==.
	XG$UART2_SendBreak$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SendBreak$186 ==.
	Sstm8s_uart2$UART2_SetAddress$187 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
;	-----------------------------------------
;	 function UART2_SetAddress
;	-----------------------------------------
_UART2_SetAddress:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SetAddress$188 ==.
	Sstm8s_uart2$UART2_SetAddress$189 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
	Sstm8s_uart2$UART2_SetAddress$190 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
	ldw	x, #0x5247
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5247
	ld	(x), a
	Sstm8s_uart2$UART2_SetAddress$191 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 558: }
	Sstm8s_uart2$UART2_SetAddress$192 ==.
	XG$UART2_SetAddress$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SetAddress$193 ==.
	Sstm8s_uart2$UART2_SetGuardTime$194 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
;	-----------------------------------------
;	 function UART2_SetGuardTime
;	-----------------------------------------
_UART2_SetGuardTime:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SetGuardTime$195 ==.
	Sstm8s_uart2$UART2_SetGuardTime$196 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
	ldw	x, #0x524a
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_uart2$UART2_SetGuardTime$197 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 570: }
	Sstm8s_uart2$UART2_SetGuardTime$198 ==.
	XG$UART2_SetGuardTime$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SetGuardTime$199 ==.
	Sstm8s_uart2$UART2_SetPrescaler$200 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
;	-----------------------------------------
;	 function UART2_SetPrescaler
;	-----------------------------------------
_UART2_SetPrescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_SetPrescaler$201 ==.
	Sstm8s_uart2$UART2_SetPrescaler$202 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
	ldw	x, #0x524b
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_uart2$UART2_SetPrescaler$203 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 598: }
	Sstm8s_uart2$UART2_SetPrescaler$204 ==.
	XG$UART2_SetPrescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_SetPrescaler$205 ==.
	Sstm8s_uart2$UART2_GetFlagStatus$206 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_GetFlagStatus
;	-----------------------------------------
_UART2_GetFlagStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_GetFlagStatus$207 ==.
	sub	sp, #4
	Sstm8s_uart2$UART2_GetFlagStatus$208 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
	ldw	x, (0x09, sp)
	cpw	x, #0x0210
	jrne	00121$
	Sstm8s_uart2$UART2_GetFlagStatus$209 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5247
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x0a, sp)
	and	a, (0x02, sp)
	tnz	a
	jreq	00102$
	Sstm8s_uart2$UART2_GetFlagStatus$210 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 619: status = SET;
	ld	a, #0x01
	jp	00122$
00102$:
	Sstm8s_uart2$UART2_GetFlagStatus$211 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 624: status = RESET;
	clr	a
	jp	00122$
00121$:
	Sstm8s_uart2$UART2_GetFlagStatus$212 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
	ldw	x, (0x09, sp)
	cpw	x, #0x0101
	jrne	00118$
	Sstm8s_uart2$UART2_GetFlagStatus$213 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5245
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x0a, sp)
	and	a, (0x04, sp)
	tnz	a
	jreq	00105$
	Sstm8s_uart2$UART2_GetFlagStatus$214 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 632: status = SET;
	ld	a, #0x01
	jra	00122$
00105$:
	Sstm8s_uart2$UART2_GetFlagStatus$215 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 637: status = RESET;
	clr	a
	jra	00122$
00118$:
	Sstm8s_uart2$UART2_GetFlagStatus$216 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
	ldw	x, (0x09, sp)
	cpw	x, #0x0302
	jreq	00113$
	ldw	x, (0x09, sp)
	cpw	x, #0x0301
	jrne	00114$
00113$:
	Sstm8s_uart2$UART2_GetFlagStatus$217 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5249
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x0a, sp)
	and	a, (0x03, sp)
	tnz	a
	jreq	00108$
	Sstm8s_uart2$UART2_GetFlagStatus$218 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 645: status = SET;
	ld	a, #0x01
	jra	00122$
00108$:
	Sstm8s_uart2$UART2_GetFlagStatus$219 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 650: status = RESET;
	clr	a
	jra	00122$
00114$:
	Sstm8s_uart2$UART2_GetFlagStatus$220 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5240
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x0a, sp)
	and	a, (0x01, sp)
	tnz	a
	jreq	00111$
	Sstm8s_uart2$UART2_GetFlagStatus$221 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 658: status = SET;
	ld	a, #0x01
	jra	00122$
00111$:
	Sstm8s_uart2$UART2_GetFlagStatus$222 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 663: status = RESET;
	clr	a
00122$:
	Sstm8s_uart2$UART2_GetFlagStatus$223 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 668: return  status;
	Sstm8s_uart2$UART2_GetFlagStatus$224 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 669: }
	addw	sp, #4
	Sstm8s_uart2$UART2_GetFlagStatus$225 ==.
	XG$UART2_GetFlagStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_GetFlagStatus$226 ==.
	Sstm8s_uart2$UART2_ClearFlag$227 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_ClearFlag
;	-----------------------------------------
_UART2_ClearFlag:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_ClearFlag$228 ==.
	Sstm8s_uart2$UART2_ClearFlag$229 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
	ldw	x, (0x05, sp)
	cpw	x, #0x0020
	jrne	00108$
	Sstm8s_uart2$UART2_ClearFlag$230 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	mov	0x5240+0, #0xdf
	jra	00110$
00108$:
	Sstm8s_uart2$UART2_ClearFlag$231 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
	ldw	x, (0x05, sp)
	cpw	x, #0x0210
	jrne	00105$
	Sstm8s_uart2$UART2_ClearFlag$232 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	jra	00110$
00105$:
	Sstm8s_uart2$UART2_ClearFlag$233 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
	ldw	x, (0x05, sp)
	cpw	x, #0x0302
	jrne	00102$
	Sstm8s_uart2$UART2_ClearFlag$234 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
	jra	00110$
00102$:
	Sstm8s_uart2$UART2_ClearFlag$235 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
	bres	0x5249, #0
00110$:
	Sstm8s_uart2$UART2_ClearFlag$236 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 723: }
	Sstm8s_uart2$UART2_ClearFlag$237 ==.
	XG$UART2_ClearFlag$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_ClearFlag$238 ==.
	Sstm8s_uart2$UART2_GetITStatus$239 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_GetITStatus
;	-----------------------------------------
_UART2_GetITStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_GetITStatus$240 ==.
	sub	sp, #3
	Sstm8s_uart2$UART2_GetITStatus$241 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ld	a, (0x09, sp)
	ld	xl, a
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00162$
00161$:
	sll	(1, sp)
	dec	a
	jrne	00161$
00162$:
	pop	a
	ld	(0x01, sp), a
	Sstm8s_uart2$UART2_GetITStatus$242 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
	ld	a, xl
	swap	a
	and	a, #0x0f
	ld	xl, a
	Sstm8s_uart2$UART2_GetITStatus$243 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00164$
00163$:
	sll	(1, sp)
	dec	a
	jrne	00163$
00164$:
	pop	a
	ld	(0x03, sp), a
	Sstm8s_uart2$UART2_GetITStatus$244 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
	ldw	x, (0x08, sp)
	cpw	x, #0x0100
	jrne	00124$
	Sstm8s_uart2$UART2_GetITStatus$245 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, (0x03, sp)
	ld	(0x02, sp), a
	Sstm8s_uart2$UART2_GetITStatus$246 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5240
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00102$
	tnz	(0x02, sp)
	jreq	00102$
	Sstm8s_uart2$UART2_GetITStatus$247 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
	ld	a, #0x01
	jp	00125$
00102$:
	Sstm8s_uart2$UART2_GetITStatus$248 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
	clr	a
	jp	00125$
00124$:
	Sstm8s_uart2$UART2_GetITStatus$249 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
	ldw	x, (0x08, sp)
	cpw	x, #0x0346
	jrne	00121$
	Sstm8s_uart2$UART2_GetITStatus$250 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, (0x03, sp)
	ld	(0x02, sp), a
	Sstm8s_uart2$UART2_GetITStatus$251 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5247
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00106$
	tnz	(0x02, sp)
	jreq	00106$
	Sstm8s_uart2$UART2_GetITStatus$252 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00106$:
	Sstm8s_uart2$UART2_GetITStatus$253 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00121$:
	Sstm8s_uart2$UART2_GetITStatus$254 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
	ldw	x, (0x08, sp)
	cpw	x, #0x0412
	jrne	00118$
	Sstm8s_uart2$UART2_GetITStatus$255 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, (0x03, sp)
	ld	(0x02, sp), a
	Sstm8s_uart2$UART2_GetITStatus$256 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5249
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00110$
	tnz	(0x02, sp)
	jreq	00110$
	Sstm8s_uart2$UART2_GetITStatus$257 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00110$:
	Sstm8s_uart2$UART2_GetITStatus$258 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00118$:
	Sstm8s_uart2$UART2_GetITStatus$259 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, (0x03, sp)
	ld	(0x02, sp), a
	Sstm8s_uart2$UART2_GetITStatus$260 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5240
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00114$
	tnz	(0x02, sp)
	jreq	00114$
	Sstm8s_uart2$UART2_GetITStatus$261 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00114$:
	Sstm8s_uart2$UART2_GetITStatus$262 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
	clr	a
00125$:
	Sstm8s_uart2$UART2_GetITStatus$263 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 823: return  pendingbitstatus;
	Sstm8s_uart2$UART2_GetITStatus$264 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 824: }
	addw	sp, #3
	Sstm8s_uart2$UART2_GetITStatus$265 ==.
	XG$UART2_GetITStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_GetITStatus$266 ==.
	Sstm8s_uart2$UART2_ClearITPendingBit$267 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_ClearITPendingBit
;	-----------------------------------------
_UART2_ClearITPendingBit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_uart2$UART2_ClearITPendingBit$268 ==.
	Sstm8s_uart2$UART2_ClearITPendingBit$269 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
	ldw	x, (0x05, sp)
	cpw	x, #0x0255
	jrne	00105$
	Sstm8s_uart2$UART2_ClearITPendingBit$270 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	mov	0x5240+0, #0xdf
	jra	00107$
00105$:
	Sstm8s_uart2$UART2_ClearITPendingBit$271 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
	ldw	x, (0x05, sp)
	cpw	x, #0x0346
	jrne	00102$
	Sstm8s_uart2$UART2_ClearITPendingBit$272 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	jra	00107$
00102$:
	Sstm8s_uart2$UART2_ClearITPendingBit$273 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00107$:
	Sstm8s_uart2$UART2_ClearITPendingBit$274 ==.
;	StdPeriphLib/src/stm8s_uart2.c: 871: }
	Sstm8s_uart2$UART2_ClearITPendingBit$275 ==.
	XG$UART2_ClearITPendingBit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_uart2$UART2_ClearITPendingBit$276 ==.
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
	.ascii "StdPeriphLib/src/stm8s_uart2.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_DeInit$0)
	.db	3
	.sleb128	52
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$2-Sstm8s_uart2$UART2_DeInit$0
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$3-Sstm8s_uart2$UART2_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$4-Sstm8s_uart2$UART2_DeInit$3
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$5-Sstm8s_uart2$UART2_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$6-Sstm8s_uart2$UART2_DeInit$5
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$7-Sstm8s_uart2$UART2_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$8-Sstm8s_uart2$UART2_DeInit$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$9-Sstm8s_uart2$UART2_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$10-Sstm8s_uart2$UART2_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$11-Sstm8s_uart2$UART2_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_DeInit$12-Sstm8s_uart2$UART2_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_DeInit$13-Sstm8s_uart2$UART2_DeInit$12
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_Init$15)
	.db	3
	.sleb128	84
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$17-Sstm8s_uart2$UART2_Init$15
	.db	3
	.sleb128	14
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$18-Sstm8s_uart2$UART2_Init$17
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$19-Sstm8s_uart2$UART2_Init$18
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$20-Sstm8s_uart2$UART2_Init$19
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$21-Sstm8s_uart2$UART2_Init$20
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$22-Sstm8s_uart2$UART2_Init$21
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$23-Sstm8s_uart2$UART2_Init$22
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$24-Sstm8s_uart2$UART2_Init$23
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$25-Sstm8s_uart2$UART2_Init$24
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$26-Sstm8s_uart2$UART2_Init$25
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$27-Sstm8s_uart2$UART2_Init$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$28-Sstm8s_uart2$UART2_Init$27
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$29-Sstm8s_uart2$UART2_Init$28
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$30-Sstm8s_uart2$UART2_Init$29
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$31-Sstm8s_uart2$UART2_Init$30
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$32-Sstm8s_uart2$UART2_Init$31
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$33-Sstm8s_uart2$UART2_Init$32
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$34-Sstm8s_uart2$UART2_Init$33
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$35-Sstm8s_uart2$UART2_Init$34
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$36-Sstm8s_uart2$UART2_Init$35
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$37-Sstm8s_uart2$UART2_Init$36
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$38-Sstm8s_uart2$UART2_Init$37
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$39-Sstm8s_uart2$UART2_Init$38
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$40-Sstm8s_uart2$UART2_Init$39
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$41-Sstm8s_uart2$UART2_Init$40
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$42-Sstm8s_uart2$UART2_Init$41
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$43-Sstm8s_uart2$UART2_Init$42
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Init$44-Sstm8s_uart2$UART2_Init$43
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_Init$45-Sstm8s_uart2$UART2_Init$44
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_Cmd$47)
	.db	3
	.sleb128	180
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Cmd$49-Sstm8s_uart2$UART2_Cmd$47
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Cmd$50-Sstm8s_uart2$UART2_Cmd$49
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Cmd$51-Sstm8s_uart2$UART2_Cmd$50
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_Cmd$52-Sstm8s_uart2$UART2_Cmd$51
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_Cmd$53-Sstm8s_uart2$UART2_Cmd$52
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_ITConfig$55)
	.db	3
	.sleb128	209
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$57-Sstm8s_uart2$UART2_ITConfig$55
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$58-Sstm8s_uart2$UART2_ITConfig$57
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$59-Sstm8s_uart2$UART2_ITConfig$58
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$60-Sstm8s_uart2$UART2_ITConfig$59
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$61-Sstm8s_uart2$UART2_ITConfig$60
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$62-Sstm8s_uart2$UART2_ITConfig$61
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$63-Sstm8s_uart2$UART2_ITConfig$62
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$64-Sstm8s_uart2$UART2_ITConfig$63
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$65-Sstm8s_uart2$UART2_ITConfig$64
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$66-Sstm8s_uart2$UART2_ITConfig$65
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$67-Sstm8s_uart2$UART2_ITConfig$66
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$68-Sstm8s_uart2$UART2_ITConfig$67
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$69-Sstm8s_uart2$UART2_ITConfig$68
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$70-Sstm8s_uart2$UART2_ITConfig$69
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$71-Sstm8s_uart2$UART2_ITConfig$70
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$72-Sstm8s_uart2$UART2_ITConfig$71
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$73-Sstm8s_uart2$UART2_ITConfig$72
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ITConfig$74-Sstm8s_uart2$UART2_ITConfig$73
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_ITConfig$75-Sstm8s_uart2$UART2_ITConfig$74
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_IrDAConfig$77)
	.db	3
	.sleb128	271
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDAConfig$79-Sstm8s_uart2$UART2_IrDAConfig$77
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDAConfig$80-Sstm8s_uart2$UART2_IrDAConfig$79
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDAConfig$81-Sstm8s_uart2$UART2_IrDAConfig$80
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDAConfig$82-Sstm8s_uart2$UART2_IrDAConfig$81
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_IrDAConfig$83-Sstm8s_uart2$UART2_IrDAConfig$82
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_IrDACmd$85)
	.db	3
	.sleb128	291
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDACmd$87-Sstm8s_uart2$UART2_IrDACmd$85
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDACmd$88-Sstm8s_uart2$UART2_IrDACmd$87
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDACmd$89-Sstm8s_uart2$UART2_IrDACmd$88
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_IrDACmd$90-Sstm8s_uart2$UART2_IrDACmd$89
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_IrDACmd$91-Sstm8s_uart2$UART2_IrDACmd$90
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_LINBreakDetectionConfig$93)
	.db	3
	.sleb128	315
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$95-Sstm8s_uart2$UART2_LINBreakDetectionConfig$93
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$96-Sstm8s_uart2$UART2_LINBreakDetectionConfig$95
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$97-Sstm8s_uart2$UART2_LINBreakDetectionConfig$96
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$98-Sstm8s_uart2$UART2_LINBreakDetectionConfig$97
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_LINBreakDetectionConfig$99-Sstm8s_uart2$UART2_LINBreakDetectionConfig$98
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_LINConfig$101)
	.db	3
	.sleb128	340
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$103-Sstm8s_uart2$UART2_LINConfig$101
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$104-Sstm8s_uart2$UART2_LINConfig$103
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$105-Sstm8s_uart2$UART2_LINConfig$104
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$106-Sstm8s_uart2$UART2_LINConfig$105
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$107-Sstm8s_uart2$UART2_LINConfig$106
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$108-Sstm8s_uart2$UART2_LINConfig$107
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$109-Sstm8s_uart2$UART2_LINConfig$108
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$110-Sstm8s_uart2$UART2_LINConfig$109
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$111-Sstm8s_uart2$UART2_LINConfig$110
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINConfig$112-Sstm8s_uart2$UART2_LINConfig$111
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_LINConfig$113-Sstm8s_uart2$UART2_LINConfig$112
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_LINCmd$115)
	.db	3
	.sleb128	383
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINCmd$117-Sstm8s_uart2$UART2_LINCmd$115
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINCmd$118-Sstm8s_uart2$UART2_LINCmd$117
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINCmd$119-Sstm8s_uart2$UART2_LINCmd$118
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_LINCmd$120-Sstm8s_uart2$UART2_LINCmd$119
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_LINCmd$121-Sstm8s_uart2$UART2_LINCmd$120
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SmartCardCmd$123)
	.db	3
	.sleb128	405
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardCmd$125-Sstm8s_uart2$UART2_SmartCardCmd$123
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardCmd$126-Sstm8s_uart2$UART2_SmartCardCmd$125
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardCmd$127-Sstm8s_uart2$UART2_SmartCardCmd$126
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardCmd$128-Sstm8s_uart2$UART2_SmartCardCmd$127
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SmartCardCmd$129-Sstm8s_uart2$UART2_SmartCardCmd$128
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SmartCardNACKCmd$131)
	.db	3
	.sleb128	428
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$133-Sstm8s_uart2$UART2_SmartCardNACKCmd$131
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$134-Sstm8s_uart2$UART2_SmartCardNACKCmd$133
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$135-Sstm8s_uart2$UART2_SmartCardNACKCmd$134
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$136-Sstm8s_uart2$UART2_SmartCardNACKCmd$135
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SmartCardNACKCmd$137-Sstm8s_uart2$UART2_SmartCardNACKCmd$136
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_WakeUpConfig$139)
	.db	3
	.sleb128	451
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_WakeUpConfig$141-Sstm8s_uart2$UART2_WakeUpConfig$139
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_WakeUpConfig$142-Sstm8s_uart2$UART2_WakeUpConfig$141
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_WakeUpConfig$143-Sstm8s_uart2$UART2_WakeUpConfig$142
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_WakeUpConfig$144-Sstm8s_uart2$UART2_WakeUpConfig$143
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_ReceiverWakeUpCmd$146)
	.db	3
	.sleb128	465
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$148-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$146
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$149-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$148
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$150-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$149
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$151-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$150
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_ReceiverWakeUpCmd$152-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$151
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_ReceiveData8$154)
	.db	3
	.sleb128	486
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiveData8$156-Sstm8s_uart2$UART2_ReceiveData8$154
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiveData8$157-Sstm8s_uart2$UART2_ReceiveData8$156
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_ReceiveData8$158-Sstm8s_uart2$UART2_ReceiveData8$157
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_ReceiveData9$160)
	.db	3
	.sleb128	496
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiveData9$162-Sstm8s_uart2$UART2_ReceiveData9$160
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiveData9$163-Sstm8s_uart2$UART2_ReceiveData9$162
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ReceiveData9$164-Sstm8s_uart2$UART2_ReceiveData9$163
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_ReceiveData9$165-Sstm8s_uart2$UART2_ReceiveData9$164
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SendData8$167)
	.db	3
	.sleb128	510
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendData8$169-Sstm8s_uart2$UART2_SendData8$167
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendData8$170-Sstm8s_uart2$UART2_SendData8$169
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SendData8$171-Sstm8s_uart2$UART2_SendData8$170
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SendData9$173)
	.db	3
	.sleb128	521
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendData9$175-Sstm8s_uart2$UART2_SendData9$173
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendData9$176-Sstm8s_uart2$UART2_SendData9$175
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendData9$177-Sstm8s_uart2$UART2_SendData9$176
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendData9$178-Sstm8s_uart2$UART2_SendData9$177
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SendData9$179-Sstm8s_uart2$UART2_SendData9$178
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SendBreak$181)
	.db	3
	.sleb128	538
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendBreak$183-Sstm8s_uart2$UART2_SendBreak$181
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SendBreak$184-Sstm8s_uart2$UART2_SendBreak$183
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SendBreak$185-Sstm8s_uart2$UART2_SendBreak$184
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SetAddress$187)
	.db	3
	.sleb128	548
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SetAddress$189-Sstm8s_uart2$UART2_SetAddress$187
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SetAddress$190-Sstm8s_uart2$UART2_SetAddress$189
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SetAddress$191-Sstm8s_uart2$UART2_SetAddress$190
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SetAddress$192-Sstm8s_uart2$UART2_SetAddress$191
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SetGuardTime$194)
	.db	3
	.sleb128	565
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SetGuardTime$196-Sstm8s_uart2$UART2_SetGuardTime$194
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SetGuardTime$197-Sstm8s_uart2$UART2_SetGuardTime$196
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SetGuardTime$198-Sstm8s_uart2$UART2_SetGuardTime$197
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_SetPrescaler$200)
	.db	3
	.sleb128	593
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SetPrescaler$202-Sstm8s_uart2$UART2_SetPrescaler$200
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_SetPrescaler$203-Sstm8s_uart2$UART2_SetPrescaler$202
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_SetPrescaler$204-Sstm8s_uart2$UART2_SetPrescaler$203
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_GetFlagStatus$206)
	.db	3
	.sleb128	605
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$208-Sstm8s_uart2$UART2_GetFlagStatus$206
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$209-Sstm8s_uart2$UART2_GetFlagStatus$208
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$210-Sstm8s_uart2$UART2_GetFlagStatus$209
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$211-Sstm8s_uart2$UART2_GetFlagStatus$210
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$212-Sstm8s_uart2$UART2_GetFlagStatus$211
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$213-Sstm8s_uart2$UART2_GetFlagStatus$212
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$214-Sstm8s_uart2$UART2_GetFlagStatus$213
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$215-Sstm8s_uart2$UART2_GetFlagStatus$214
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$216-Sstm8s_uart2$UART2_GetFlagStatus$215
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$217-Sstm8s_uart2$UART2_GetFlagStatus$216
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$218-Sstm8s_uart2$UART2_GetFlagStatus$217
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$219-Sstm8s_uart2$UART2_GetFlagStatus$218
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$220-Sstm8s_uart2$UART2_GetFlagStatus$219
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$221-Sstm8s_uart2$UART2_GetFlagStatus$220
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$222-Sstm8s_uart2$UART2_GetFlagStatus$221
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$223-Sstm8s_uart2$UART2_GetFlagStatus$222
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetFlagStatus$224-Sstm8s_uart2$UART2_GetFlagStatus$223
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_GetFlagStatus$225-Sstm8s_uart2$UART2_GetFlagStatus$224
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_ClearFlag$227)
	.db	3
	.sleb128	698
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$229-Sstm8s_uart2$UART2_ClearFlag$227
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$230-Sstm8s_uart2$UART2_ClearFlag$229
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$231-Sstm8s_uart2$UART2_ClearFlag$230
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$232-Sstm8s_uart2$UART2_ClearFlag$231
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$233-Sstm8s_uart2$UART2_ClearFlag$232
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$234-Sstm8s_uart2$UART2_ClearFlag$233
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$235-Sstm8s_uart2$UART2_ClearFlag$234
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearFlag$236-Sstm8s_uart2$UART2_ClearFlag$235
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_ClearFlag$237-Sstm8s_uart2$UART2_ClearFlag$236
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_GetITStatus$239)
	.db	3
	.sleb128	737
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$241-Sstm8s_uart2$UART2_GetITStatus$239
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$242-Sstm8s_uart2$UART2_GetITStatus$241
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$243-Sstm8s_uart2$UART2_GetITStatus$242
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$244-Sstm8s_uart2$UART2_GetITStatus$243
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$245-Sstm8s_uart2$UART2_GetITStatus$244
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$246-Sstm8s_uart2$UART2_GetITStatus$245
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$247-Sstm8s_uart2$UART2_GetITStatus$246
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$248-Sstm8s_uart2$UART2_GetITStatus$247
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$249-Sstm8s_uart2$UART2_GetITStatus$248
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$250-Sstm8s_uart2$UART2_GetITStatus$249
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$251-Sstm8s_uart2$UART2_GetITStatus$250
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$252-Sstm8s_uart2$UART2_GetITStatus$251
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$253-Sstm8s_uart2$UART2_GetITStatus$252
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$254-Sstm8s_uart2$UART2_GetITStatus$253
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$255-Sstm8s_uart2$UART2_GetITStatus$254
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$256-Sstm8s_uart2$UART2_GetITStatus$255
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$257-Sstm8s_uart2$UART2_GetITStatus$256
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$258-Sstm8s_uart2$UART2_GetITStatus$257
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$259-Sstm8s_uart2$UART2_GetITStatus$258
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$260-Sstm8s_uart2$UART2_GetITStatus$259
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$261-Sstm8s_uart2$UART2_GetITStatus$260
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$262-Sstm8s_uart2$UART2_GetITStatus$261
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$263-Sstm8s_uart2$UART2_GetITStatus$262
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_GetITStatus$264-Sstm8s_uart2$UART2_GetITStatus$263
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_GetITStatus$265-Sstm8s_uart2$UART2_GetITStatus$264
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart2$UART2_ClearITPendingBit$267)
	.db	3
	.sleb128	851
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$269-Sstm8s_uart2$UART2_ClearITPendingBit$267
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$270-Sstm8s_uart2$UART2_ClearITPendingBit$269
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$271-Sstm8s_uart2$UART2_ClearITPendingBit$270
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$272-Sstm8s_uart2$UART2_ClearITPendingBit$271
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$273-Sstm8s_uart2$UART2_ClearITPendingBit$272
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$274-Sstm8s_uart2$UART2_ClearITPendingBit$273
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_uart2$UART2_ClearITPendingBit$275-Sstm8s_uart2$UART2_ClearITPendingBit$274
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_uart2$UART2_ClearITPendingBit$268)
	.dw	0,(Sstm8s_uart2$UART2_ClearITPendingBit$276)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_GetITStatus$240)
	.dw	0,(Sstm8s_uart2$UART2_GetITStatus$266)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_ClearFlag$228)
	.dw	0,(Sstm8s_uart2$UART2_ClearFlag$238)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_GetFlagStatus$207)
	.dw	0,(Sstm8s_uart2$UART2_GetFlagStatus$226)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SetPrescaler$201)
	.dw	0,(Sstm8s_uart2$UART2_SetPrescaler$205)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SetGuardTime$195)
	.dw	0,(Sstm8s_uart2$UART2_SetGuardTime$199)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SetAddress$188)
	.dw	0,(Sstm8s_uart2$UART2_SetAddress$193)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SendBreak$182)
	.dw	0,(Sstm8s_uart2$UART2_SendBreak$186)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SendData9$174)
	.dw	0,(Sstm8s_uart2$UART2_SendData9$180)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SendData8$168)
	.dw	0,(Sstm8s_uart2$UART2_SendData8$172)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_ReceiveData9$161)
	.dw	0,(Sstm8s_uart2$UART2_ReceiveData9$166)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_ReceiveData8$155)
	.dw	0,(Sstm8s_uart2$UART2_ReceiveData8$159)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_ReceiverWakeUpCmd$147)
	.dw	0,(Sstm8s_uart2$UART2_ReceiverWakeUpCmd$153)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_WakeUpConfig$140)
	.dw	0,(Sstm8s_uart2$UART2_WakeUpConfig$145)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SmartCardNACKCmd$132)
	.dw	0,(Sstm8s_uart2$UART2_SmartCardNACKCmd$138)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_SmartCardCmd$124)
	.dw	0,(Sstm8s_uart2$UART2_SmartCardCmd$130)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_LINCmd$116)
	.dw	0,(Sstm8s_uart2$UART2_LINCmd$122)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_LINConfig$102)
	.dw	0,(Sstm8s_uart2$UART2_LINConfig$114)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_LINBreakDetectionConfig$94)
	.dw	0,(Sstm8s_uart2$UART2_LINBreakDetectionConfig$100)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_IrDACmd$86)
	.dw	0,(Sstm8s_uart2$UART2_IrDACmd$92)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_IrDAConfig$78)
	.dw	0,(Sstm8s_uart2$UART2_IrDAConfig$84)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_ITConfig$56)
	.dw	0,(Sstm8s_uart2$UART2_ITConfig$76)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_Cmd$48)
	.dw	0,(Sstm8s_uart2$UART2_Cmd$54)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_Init$16)
	.dw	0,(Sstm8s_uart2$UART2_Init$46)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart2$UART2_DeInit$1)
	.dw	0,(Sstm8s_uart2$UART2_DeInit$14)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	6
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
	.uleb128	11
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
	.uleb128	7
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
	.ascii "StdPeriphLib/src/stm8s_uart2.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.ascii "UART2_DeInit"
	.db	0
	.dw	0,(_UART2_DeInit)
	.dw	0,(XG$UART2_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+480)
	.uleb128	3
	.dw	0,318
	.ascii "UART2_Init"
	.db	0
	.dw	0,(_UART2_Init)
	.dw	0,(XG$UART2_Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+460)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "BaudRate"
	.db	0
	.dw	0,318
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "WordLength"
	.db	0
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "StopBits"
	.db	0
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	10
	.ascii "Parity"
	.db	0
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	11
	.ascii "SyncMode"
	.db	0
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	12
	.ascii "Mode"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-27
	.ascii "BRR2_1"
	.db	0
	.dw	0,335
	.uleb128	6
	.db	1
	.db	81
	.ascii "BRR2_2"
	.db	0
	.dw	0,335
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-31
	.ascii "BaudRate_Mantissa"
	.db	0
	.dw	0,318
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-35
	.ascii "BaudRate_Mantissa100"
	.db	0
	.dw	0,318
	.uleb128	0
	.uleb128	7
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,400
	.ascii "UART2_Cmd"
	.db	0
	.dw	0,(_UART2_Cmd)
	.dw	0,(XG$UART2_Cmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+440)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,515
	.ascii "UART2_ITConfig"
	.db	0
	.dw	0,(_UART2_ITConfig)
	.dw	0,(XG$UART2_ITConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+420)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_IT"
	.db	0
	.dw	0,515
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "NewState"
	.db	0
	.dw	0,335
	.uleb128	8
	.dw	0,477
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.dw	0,487
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	9
	.ascii "uartreg"
	.db	0
	.dw	0,335
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-5
	.ascii "itpos"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	3
	.dw	0,592
	.ascii "UART2_IrDAConfig"
	.db	0
	.dw	0,(_UART2_IrDAConfig)
	.dw	0,(XG$UART2_IrDAConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+400)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_IrDAMode"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,644
	.ascii "UART2_IrDACmd"
	.db	0
	.dw	0,(_UART2_IrDACmd)
	.dw	0,(XG$UART2_IrDACmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,733
	.ascii "UART2_LINBreakDetectionConfig"
	.db	0
	.dw	0,(_UART2_LINBreakDetectionConfig)
	.dw	0,(XG$UART2_LINBreakDetectionConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_LINBreakDetectionLength"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,836
	.ascii "UART2_LINConfig"
	.db	0
	.dw	0,(_UART2_LINConfig)
	.dw	0,(XG$UART2_LINConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_Mode"
	.db	0
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "UART2_Autosync"
	.db	0
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "UART2_DivUp"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,887
	.ascii "UART2_LINCmd"
	.db	0
	.dw	0,(_UART2_LINCmd)
	.dw	0,(XG$UART2_LINCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,944
	.ascii "UART2_SmartCardCmd"
	.db	0
	.dw	0,(_UART2_SmartCardCmd)
	.dw	0,(XG$UART2_SmartCardCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,1005
	.ascii "UART2_SmartCardNACKCmd"
	.db	0
	.dw	0,(_UART2_SmartCardNACKCmd)
	.dw	0,(XG$UART2_SmartCardNACKCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	3
	.dw	0,1064
	.ascii "UART2_WakeUpConfig"
	.db	0
	.dw	0,(_UART2_WakeUpConfig)
	.dw	0,(XG$UART2_WakeUpConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_WakeUp"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	3
	.dw	0,1126
	.ascii "UART2_ReceiverWakeUpCmd"
	.db	0
	.dw	0,(_UART2_ReceiverWakeUpCmd)
	.dw	0,(XG$UART2_ReceiverWakeUpCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,335
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	10
	.ascii "UART2_ReceiveData8"
	.db	0
	.dw	0,(_UART2_ReceiveData8)
	.dw	0,(XG$UART2_ReceiveData8$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.dw	0,335
	.uleb128	11
	.dw	0,1218
	.ascii "UART2_ReceiveData9"
	.db	0
	.dw	0,(_UART2_ReceiveData9)
	.dw	0,(XG$UART2_ReceiveData9$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.dw	0,515
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-4
	.ascii "temp"
	.db	0
	.dw	0,515
	.uleb128	0
	.uleb128	3
	.dw	0,1266
	.ascii "UART2_SendData8"
	.db	0
	.dw	0,(_UART2_SendData8)
	.dw	0,(XG$UART2_SendData8$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Data"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	3
	.dw	0,1314
	.ascii "UART2_SendData9"
	.db	0
	.dw	0,(_UART2_SendData9)
	.dw	0,(XG$UART2_SendData9$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Data"
	.db	0
	.dw	0,515
	.uleb128	0
	.uleb128	2
	.ascii "UART2_SendBreak"
	.db	0
	.dw	0,(_UART2_SendBreak)
	.dw	0,(XG$UART2_SendBreak$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	3
	.dw	0,1402
	.ascii "UART2_SetAddress"
	.db	0
	.dw	0,(_UART2_SetAddress)
	.dw	0,(XG$UART2_SetAddress$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_Address"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	3
	.dw	0,1464
	.ascii "UART2_SetGuardTime"
	.db	0
	.dw	0,(_UART2_SetGuardTime)
	.dw	0,(XG$UART2_SetGuardTime$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_GuardTime"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	3
	.dw	0,1526
	.ascii "UART2_SetPrescaler"
	.db	0
	.dw	0,(_UART2_SetPrescaler)
	.dw	0,(XG$UART2_SetPrescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_Prescaler"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	11
	.dw	0,1634
	.ascii "UART2_GetFlagStatus"
	.db	0
	.dw	0,(_UART2_GetFlagStatus)
	.dw	0,(XG$UART2_GetFlagStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_FLAG"
	.db	0
	.dw	0,515
	.uleb128	8
	.dw	0,1595
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.dw	0,1603
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.dw	0,1611
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.dw	0,1619
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	6
	.db	1
	.db	81
	.ascii "status"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	3
	.dw	0,1692
	.ascii "UART2_ClearFlag"
	.db	0
	.dw	0,(_UART2_ClearFlag)
	.dw	0,(XG$UART2_ClearFlag$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_FLAG"
	.db	0
	.dw	0,515
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	11
	.dw	0,1870
	.ascii "UART2_GetITStatus"
	.db	0
	.dw	0,(_UART2_GetITStatus)
	.dw	0,(XG$UART2_GetITStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,335
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_IT"
	.db	0
	.dw	0,515
	.uleb128	8
	.dw	0,1757
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.dw	0,1765
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.dw	0,1773
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	8
	.dw	0,1781
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	6
	.db	1
	.db	81
	.ascii "pendingbitstatus"
	.db	0
	.dw	0,335
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-3
	.ascii "itpos"
	.db	0
	.dw	0,335
	.uleb128	9
	.ascii "itmask1"
	.db	0
	.dw	0,335
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-1
	.ascii "itmask2"
	.db	0
	.dw	0,335
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-2
	.ascii "enablestatus"
	.db	0
	.dw	0,335
	.uleb128	0
	.uleb128	12
	.ascii "UART2_ClearITPendingBit"
	.db	0
	.dw	0,(_UART2_ClearITPendingBit)
	.dw	0,(XG$UART2_ClearITPendingBit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "UART2_IT"
	.db	0
	.dw	0,515
	.uleb128	5
	.uleb128	5
	.uleb128	5
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
	.dw	0,73
	.ascii "UART2_DeInit"
	.db	0
	.dw	0,100
	.ascii "UART2_Init"
	.db	0
	.dw	0,352
	.ascii "UART2_Cmd"
	.db	0
	.dw	0,400
	.ascii "UART2_ITConfig"
	.db	0
	.dw	0,531
	.ascii "UART2_IrDAConfig"
	.db	0
	.dw	0,592
	.ascii "UART2_IrDACmd"
	.db	0
	.dw	0,644
	.ascii "UART2_LINBreakDetectionConfig"
	.db	0
	.dw	0,733
	.ascii "UART2_LINConfig"
	.db	0
	.dw	0,836
	.ascii "UART2_LINCmd"
	.db	0
	.dw	0,887
	.ascii "UART2_SmartCardCmd"
	.db	0
	.dw	0,944
	.ascii "UART2_SmartCardNACKCmd"
	.db	0
	.dw	0,1005
	.ascii "UART2_WakeUpConfig"
	.db	0
	.dw	0,1064
	.ascii "UART2_ReceiverWakeUpCmd"
	.db	0
	.dw	0,1126
	.ascii "UART2_ReceiveData8"
	.db	0
	.dw	0,1163
	.ascii "UART2_ReceiveData9"
	.db	0
	.dw	0,1218
	.ascii "UART2_SendData8"
	.db	0
	.dw	0,1266
	.ascii "UART2_SendData9"
	.db	0
	.dw	0,1314
	.ascii "UART2_SendBreak"
	.db	0
	.dw	0,1344
	.ascii "UART2_SetAddress"
	.db	0
	.dw	0,1402
	.ascii "UART2_SetGuardTime"
	.db	0
	.dw	0,1464
	.ascii "UART2_SetPrescaler"
	.db	0
	.dw	0,1526
	.ascii "UART2_GetFlagStatus"
	.db	0
	.dw	0,1634
	.ascii "UART2_ClearFlag"
	.db	0
	.dw	0,1692
	.ascii "UART2_GetITStatus"
	.db	0
	.dw	0,1870
	.ascii "UART2_ClearITPendingBit"
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
