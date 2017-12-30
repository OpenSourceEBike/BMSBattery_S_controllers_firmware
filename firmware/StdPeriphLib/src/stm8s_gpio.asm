;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
	.globl _GPIO_Init
	.globl _GPIO_Write
	.globl _GPIO_WriteHigh
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteReverse
	.globl _GPIO_ReadOutputData
	.globl _GPIO_ReadInputData
	.globl _GPIO_ReadInputPin
	.globl _GPIO_ExternalPullUpConfig
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
	Sstm8s_gpio$GPIO_DeInit$0 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
_GPIO_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_DeInit$1 ==.
	sub	sp, #2
	Sstm8s_gpio$GPIO_DeInit$2 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
	ldw	y, (0x07, sp)
	ldw	(0x01, sp), y
	ldw	x, (0x01, sp)
	clr	(x)
	Sstm8s_gpio$GPIO_DeInit$3 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
	ldw	x, (0x01, sp)
	incw	x
	incw	x
	clr	(x)
	Sstm8s_gpio$GPIO_DeInit$4 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
	ldw	x, (0x01, sp)
	addw	x, #0x0003
	clr	(x)
	Sstm8s_gpio$GPIO_DeInit$5 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
	ldw	x, (0x01, sp)
	addw	x, #0x0004
	clr	(x)
	Sstm8s_gpio$GPIO_DeInit$6 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 59: }
	addw	sp, #2
	Sstm8s_gpio$GPIO_DeInit$7 ==.
	XG$GPIO_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_DeInit$8 ==.
	Sstm8s_gpio$GPIO_Init$9 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
_GPIO_Init:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_Init$10 ==.
	sub	sp, #5
	Sstm8s_gpio$GPIO_Init$11 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 74: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	y, (0x0a, sp)
	ldw	(0x03, sp), y
	ldw	x, (0x03, sp)
	addw	x, #0x0004
	ldw	(0x01, sp), x
	ldw	x, (0x01, sp)
	ld	a, (x)
	push	a
	ld	a, (0x0d, sp)
	cpl	a
	ld	(0x06, sp), a
	pop	a
	and	a, (0x05, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$12 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 80: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
	tnz	(0x0d, sp)
	jrpl	00105$
	Sstm8s_gpio$GPIO_Init$13 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 82: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
	ld	a, (0x0d, sp)
	bcp	a, #0x10
	jreq	00102$
	Sstm8s_gpio$GPIO_Init$14 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 84: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	ldw	x, (0x03, sp)
	ld	a, (x)
	or	a, (0x0c, sp)
	ldw	x, (0x03, sp)
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_gpio$GPIO_Init$15 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 88: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x03, sp)
	ld	a, (x)
	and	a, (0x05, sp)
	ldw	x, (0x03, sp)
	ld	(x), a
00103$:
	Sstm8s_gpio$GPIO_Init$16 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 91: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ldw	x, (0x03, sp)
	incw	x
	incw	x
	ld	a, (x)
	or	a, (0x0c, sp)
	ld	(x), a
	jra	00106$
00105$:
	Sstm8s_gpio$GPIO_Init$17 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 96: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x03, sp)
	incw	x
	incw	x
	ld	a, (x)
	and	a, (0x05, sp)
	ld	(x), a
00106$:
	Sstm8s_gpio$GPIO_Init$18 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 103: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
	ld	a, (0x0d, sp)
	bcp	a, #0x40
	jreq	00108$
	Sstm8s_gpio$GPIO_Init$19 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 105: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x03, sp)
	addw	x, #0x0003
	ld	a, (x)
	or	a, (0x0c, sp)
	ld	(x), a
	jra	00109$
00108$:
	Sstm8s_gpio$GPIO_Init$20 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 109: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x03, sp)
	addw	x, #0x0003
	ld	a, (x)
	and	a, (0x05, sp)
	ld	(x), a
00109$:
	Sstm8s_gpio$GPIO_Init$21 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 116: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
	ld	a, (0x0d, sp)
	bcp	a, #0x20
	jreq	00111$
	Sstm8s_gpio$GPIO_Init$22 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 118: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x01, sp)
	ld	a, (x)
	or	a, (0x0c, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
	jra	00113$
00111$:
	Sstm8s_gpio$GPIO_Init$23 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 122: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x01, sp)
	ld	a, (x)
	and	a, (0x05, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
00113$:
	Sstm8s_gpio$GPIO_Init$24 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 124: }
	addw	sp, #5
	Sstm8s_gpio$GPIO_Init$25 ==.
	XG$GPIO_Init$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_Init$26 ==.
	Sstm8s_gpio$GPIO_Write$27 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 134: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
_GPIO_Write:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_Write$28 ==.
	Sstm8s_gpio$GPIO_Write$29 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 136: GPIOx->ODR = PortVal;
	ldw	x, (0x05, sp)
	ld	a, (0x07, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Write$30 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 137: }
	Sstm8s_gpio$GPIO_Write$31 ==.
	XG$GPIO_Write$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_Write$32 ==.
	Sstm8s_gpio$GPIO_WriteHigh$33 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 147: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteHigh
;	-----------------------------------------
_GPIO_WriteHigh:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_WriteHigh$34 ==.
	Sstm8s_gpio$GPIO_WriteHigh$35 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 149: GPIOx->ODR |= (uint8_t)PortPins;
	ldw	x, (0x05, sp)
	ld	a, (x)
	or	a, (0x07, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_WriteHigh$36 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 150: }
	Sstm8s_gpio$GPIO_WriteHigh$37 ==.
	XG$GPIO_WriteHigh$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_WriteHigh$38 ==.
	Sstm8s_gpio$GPIO_WriteLow$39 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 160: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteLow
;	-----------------------------------------
_GPIO_WriteLow:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_WriteLow$40 ==.
	push	a
	Sstm8s_gpio$GPIO_WriteLow$41 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 162: GPIOx->ODR &= (uint8_t)(~PortPins);
	ldw	x, (0x06, sp)
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x08, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_WriteLow$42 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 163: }
	pop	a
	Sstm8s_gpio$GPIO_WriteLow$43 ==.
	XG$GPIO_WriteLow$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_WriteLow$44 ==.
	Sstm8s_gpio$GPIO_WriteReverse$45 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 173: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteReverse
;	-----------------------------------------
_GPIO_WriteReverse:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_WriteReverse$46 ==.
	Sstm8s_gpio$GPIO_WriteReverse$47 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 175: GPIOx->ODR ^= (uint8_t)PortPins;
	ldw	x, (0x05, sp)
	ld	a, (x)
	xor	a, (0x07, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_WriteReverse$48 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 176: }
	Sstm8s_gpio$GPIO_WriteReverse$49 ==.
	XG$GPIO_WriteReverse$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_WriteReverse$50 ==.
	Sstm8s_gpio$GPIO_ReadOutputData$51 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 184: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
_GPIO_ReadOutputData:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_ReadOutputData$52 ==.
	Sstm8s_gpio$GPIO_ReadOutputData$53 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 186: return ((uint8_t)GPIOx->ODR);
	ldw	x, (0x05, sp)
	ld	a, (x)
	Sstm8s_gpio$GPIO_ReadOutputData$54 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 187: }
	Sstm8s_gpio$GPIO_ReadOutputData$55 ==.
	XG$GPIO_ReadOutputData$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_ReadOutputData$56 ==.
	Sstm8s_gpio$GPIO_ReadInputData$57 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 195: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
_GPIO_ReadInputData:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_ReadInputData$58 ==.
	Sstm8s_gpio$GPIO_ReadInputData$59 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 197: return ((uint8_t)GPIOx->IDR);
	ldw	x, (0x05, sp)
	ld	a, (0x1, x)
	Sstm8s_gpio$GPIO_ReadInputData$60 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 198: }
	Sstm8s_gpio$GPIO_ReadInputData$61 ==.
	XG$GPIO_ReadInputData$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_ReadInputData$62 ==.
	Sstm8s_gpio$GPIO_ReadInputPin$63 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 206: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
_GPIO_ReadInputPin:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_ReadInputPin$64 ==.
	Sstm8s_gpio$GPIO_ReadInputPin$65 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 208: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
	ldw	x, (0x05, sp)
	ld	a, (0x1, x)
	and	a, (0x07, sp)
	Sstm8s_gpio$GPIO_ReadInputPin$66 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 209: }
	Sstm8s_gpio$GPIO_ReadInputPin$67 ==.
	XG$GPIO_ReadInputPin$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_ReadInputPin$68 ==.
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$69 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 218: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
_GPIO_ExternalPullUpConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$70 ==.
	push	a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$71 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 224: if (NewState != DISABLE) /* External Pull-Up Set*/
	tnz	(0x09, sp)
	jreq	00102$
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$72 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 226: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x06, sp)
	addw	x, #0x0003
	ld	a, (x)
	or	a, (0x08, sp)
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$73 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 229: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x06, sp)
	addw	x, #0x0003
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x08, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$74 ==.
;	StdPeriphLib/src/stm8s_gpio.c: 231: }
	pop	a
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$75 ==.
	XG$GPIO_ExternalPullUpConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_gpio$GPIO_ExternalPullUpConfig$76 ==.
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
	.ascii "StdPeriphLib/src/stm8s_gpio.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
	.db	3
	.sleb128	52
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
	.db	3
	.sleb128	70
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$11-Sstm8s_gpio$GPIO_Init$9
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$11
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$13-Sstm8s_gpio$GPIO_Init$12
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$14-Sstm8s_gpio$GPIO_Init$13
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$15-Sstm8s_gpio$GPIO_Init$14
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$16-Sstm8s_gpio$GPIO_Init$15
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$16
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$18-Sstm8s_gpio$GPIO_Init$17
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$18
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$20-Sstm8s_gpio$GPIO_Init$19
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$21-Sstm8s_gpio$GPIO_Init$20
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$22-Sstm8s_gpio$GPIO_Init$21
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$23-Sstm8s_gpio$GPIO_Init$22
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$24-Sstm8s_gpio$GPIO_Init$23
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_Init$25-Sstm8s_gpio$GPIO_Init$24
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_Write$27)
	.db	3
	.sleb128	133
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Write$29-Sstm8s_gpio$GPIO_Write$27
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Write$30-Sstm8s_gpio$GPIO_Write$29
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_Write$31-Sstm8s_gpio$GPIO_Write$30
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$33)
	.db	3
	.sleb128	146
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteHigh$35-Sstm8s_gpio$GPIO_WriteHigh$33
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteHigh$36-Sstm8s_gpio$GPIO_WriteHigh$35
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_WriteHigh$37-Sstm8s_gpio$GPIO_WriteHigh$36
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$39)
	.db	3
	.sleb128	159
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteLow$41-Sstm8s_gpio$GPIO_WriteLow$39
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteLow$42-Sstm8s_gpio$GPIO_WriteLow$41
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_WriteLow$43-Sstm8s_gpio$GPIO_WriteLow$42
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$45)
	.db	3
	.sleb128	172
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteReverse$47-Sstm8s_gpio$GPIO_WriteReverse$45
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteReverse$48-Sstm8s_gpio$GPIO_WriteReverse$47
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_WriteReverse$49-Sstm8s_gpio$GPIO_WriteReverse$48
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$51)
	.db	3
	.sleb128	183
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadOutputData$53-Sstm8s_gpio$GPIO_ReadOutputData$51
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadOutputData$54-Sstm8s_gpio$GPIO_ReadOutputData$53
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_ReadOutputData$55-Sstm8s_gpio$GPIO_ReadOutputData$54
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$57)
	.db	3
	.sleb128	194
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputData$59-Sstm8s_gpio$GPIO_ReadInputData$57
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputData$60-Sstm8s_gpio$GPIO_ReadInputData$59
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_ReadInputData$61-Sstm8s_gpio$GPIO_ReadInputData$60
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
	.db	3
	.sleb128	205
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputPin$65-Sstm8s_gpio$GPIO_ReadInputPin$63
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputPin$66-Sstm8s_gpio$GPIO_ReadInputPin$65
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_ReadInputPin$67-Sstm8s_gpio$GPIO_ReadInputPin$66
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$69)
	.db	3
	.sleb128	217
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$71-Sstm8s_gpio$GPIO_ExternalPullUpConfig$69
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$72-Sstm8s_gpio$GPIO_ExternalPullUpConfig$71
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$73-Sstm8s_gpio$GPIO_ExternalPullUpConfig$72
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$74-Sstm8s_gpio$GPIO_ExternalPullUpConfig$73
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_gpio$GPIO_ExternalPullUpConfig$75-Sstm8s_gpio$GPIO_ExternalPullUpConfig$74
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$70)
	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$76)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$64)
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$68)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$58)
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$62)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$52)
	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$56)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$46)
	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$50)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$40)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$44)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$34)
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$38)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_Write$28)
	.dw	0,(Sstm8s_gpio$GPIO_Write$32)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	6
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	53
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	7
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
	.uleb128	2
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
	.uleb128	9
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
	.uleb128	5
	.uleb128	13
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
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
	.uleb128	3
	.uleb128	19
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	8
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
	.ascii "StdPeriphLib/src/stm8s_gpio.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.dw	0,207
	.ascii "GPIO_DeInit"
	.db	0
	.dw	0,(_GPIO_DeInit)
	.dw	0,(XG$GPIO_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.uleb128	3
	.dw	0,186
	.ascii "GPIO_struct"
	.db	0
	.db	5
	.uleb128	4
	.dw	0,207
	.uleb128	5
	.ascii "ODR"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,120
	.uleb128	5
	.ascii "IDR"
	.db	0
	.db	2
	.db	35
	.uleb128	1
	.dw	0,120
	.uleb128	5
	.ascii "DDR"
	.db	0
	.db	2
	.db	35
	.uleb128	2
	.dw	0,120
	.uleb128	5
	.ascii "CR1"
	.db	0
	.db	2
	.db	35
	.uleb128	3
	.dw	0,120
	.uleb128	5
	.ascii "CR2"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,120
	.uleb128	0
	.uleb128	6
	.db	2
	.dw	0,102
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	0
	.uleb128	8
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,315
	.ascii "GPIO_Init"
	.db	0
	.dw	0,(_GPIO_Init)
	.dw	0,(XG$GPIO_Init$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	7
	.db	2
	.db	145
	.sleb128	6
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,315
	.uleb128	7
	.db	2
	.db	145
	.sleb128	7
	.ascii "GPIO_Mode"
	.db	0
	.dw	0,315
	.uleb128	9
	.dw	0,309
	.uleb128	10
	.uleb128	10
	.uleb128	0
	.uleb128	10
	.uleb128	10
	.uleb128	10
	.uleb128	10
	.uleb128	10
	.uleb128	0
	.uleb128	8
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,392
	.ascii "GPIO_Write"
	.db	0
	.dw	0,(_GPIO_Write)
	.dw	0,(XG$GPIO_Write$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	7
	.db	2
	.db	145
	.sleb128	6
	.ascii "PortVal"
	.db	0
	.dw	0,315
	.uleb128	0
	.uleb128	2
	.dw	0,457
	.ascii "GPIO_WriteHigh"
	.db	0
	.dw	0,(_GPIO_WriteHigh)
	.dw	0,(XG$GPIO_WriteHigh$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	7
	.db	2
	.db	145
	.sleb128	6
	.ascii "PortPins"
	.db	0
	.dw	0,315
	.uleb128	0
	.uleb128	2
	.dw	0,521
	.ascii "GPIO_WriteLow"
	.db	0
	.dw	0,(_GPIO_WriteLow)
	.dw	0,(XG$GPIO_WriteLow$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	7
	.db	2
	.db	145
	.sleb128	6
	.ascii "PortPins"
	.db	0
	.dw	0,315
	.uleb128	0
	.uleb128	2
	.dw	0,589
	.ascii "GPIO_WriteReverse"
	.db	0
	.dw	0,(_GPIO_WriteReverse)
	.dw	0,(XG$GPIO_WriteReverse$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	7
	.db	2
	.db	145
	.sleb128	6
	.ascii "PortPins"
	.db	0
	.dw	0,315
	.uleb128	0
	.uleb128	11
	.dw	0,646
	.ascii "GPIO_ReadOutputData"
	.db	0
	.dw	0,(_GPIO_ReadOutputData)
	.dw	0,(XG$GPIO_ReadOutputData$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.dw	0,315
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	0
	.uleb128	11
	.dw	0,702
	.ascii "GPIO_ReadInputData"
	.db	0
	.dw	0,(_GPIO_ReadInputData)
	.dw	0,(XG$GPIO_ReadInputData$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.dw	0,315
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	0
	.uleb128	11
	.dw	0,774
	.ascii "GPIO_ReadInputPin"
	.db	0
	.dw	0,(_GPIO_ReadInputPin)
	.dw	0,(XG$GPIO_ReadInputPin$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,315
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	7
	.db	2
	.db	145
	.sleb128	6
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,315
	.uleb128	0
	.uleb128	12
	.ascii "GPIO_ExternalPullUpConfig"
	.db	0
	.dw	0,(_GPIO_ExternalPullUpConfig)
	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIOx"
	.db	0
	.dw	0,186
	.uleb128	7
	.db	2
	.db	145
	.sleb128	6
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,315
	.uleb128	7
	.db	2
	.db	145
	.sleb128	7
	.ascii "NewState"
	.db	0
	.dw	0,315
	.uleb128	10
	.uleb128	10
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
	.ascii "GPIO_DeInit"
	.db	0
	.dw	0,224
	.ascii "GPIO_Init"
	.db	0
	.dw	0,332
	.ascii "GPIO_Write"
	.db	0
	.dw	0,392
	.ascii "GPIO_WriteHigh"
	.db	0
	.dw	0,457
	.ascii "GPIO_WriteLow"
	.db	0
	.dw	0,521
	.ascii "GPIO_WriteReverse"
	.db	0
	.dw	0,589
	.ascii "GPIO_ReadOutputData"
	.db	0
	.dw	0,646
	.ascii "GPIO_ReadInputData"
	.db	0
	.dw	0,702
	.ascii "GPIO_ReadInputPin"
	.db	0
	.dw	0,774
	.ascii "GPIO_ExternalPullUpConfig"
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
