;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_flash
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_Unlock
	.globl _FLASH_Lock
	.globl _FLASH_DeInit
	.globl _FLASH_ITConfig
	.globl _FLASH_EraseByte
	.globl _FLASH_ProgramByte
	.globl _FLASH_ReadByte
	.globl _FLASH_ProgramWord
	.globl _FLASH_ProgramOptionByte
	.globl _FLASH_EraseOptionByte
	.globl _FLASH_ReadOptionByte
	.globl _FLASH_SetLowPowerMode
	.globl _FLASH_SetProgrammingTime
	.globl _FLASH_GetLowPowerMode
	.globl _FLASH_GetProgrammingTime
	.globl _FLASH_GetBootSize
	.globl _FLASH_GetFlagStatus
	.globl _FLASH_WaitForLastOperation
	.globl _FLASH_EraseBlock
	.globl _FLASH_ProgramBlock
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
	Sstm8s_flash$FLASH_Unlock$0 ==.
;	StdPeriphLib/src/stm8s_flash.c: 87: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
;	-----------------------------------------
;	 function FLASH_Unlock
;	-----------------------------------------
_FLASH_Unlock:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_Unlock$1 ==.
	Sstm8s_flash$FLASH_Unlock$2 ==.
;	StdPeriphLib/src/stm8s_flash.c: 93: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	ld	a, (0x05, sp)
	cp	a, #0xfd
	jrne	00102$
	Sstm8s_flash$FLASH_Unlock$3 ==.
;	StdPeriphLib/src/stm8s_flash.c: 95: FLASH->PUKR = FLASH_RASS_KEY1;
	mov	0x5062+0, #0x56
	Sstm8s_flash$FLASH_Unlock$4 ==.
;	StdPeriphLib/src/stm8s_flash.c: 96: FLASH->PUKR = FLASH_RASS_KEY2;
	mov	0x5062+0, #0xae
	jra	00104$
00102$:
	Sstm8s_flash$FLASH_Unlock$5 ==.
;	StdPeriphLib/src/stm8s_flash.c: 101: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
	mov	0x5064+0, #0xae
	Sstm8s_flash$FLASH_Unlock$6 ==.
;	StdPeriphLib/src/stm8s_flash.c: 102: FLASH->DUKR = FLASH_RASS_KEY1;
	mov	0x5064+0, #0x56
00104$:
	Sstm8s_flash$FLASH_Unlock$7 ==.
;	StdPeriphLib/src/stm8s_flash.c: 104: }
	Sstm8s_flash$FLASH_Unlock$8 ==.
	XG$FLASH_Unlock$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_Unlock$9 ==.
	Sstm8s_flash$FLASH_Lock$10 ==.
;	StdPeriphLib/src/stm8s_flash.c: 112: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
;	-----------------------------------------
;	 function FLASH_Lock
;	-----------------------------------------
_FLASH_Lock:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_Lock$11 ==.
	Sstm8s_flash$FLASH_Lock$12 ==.
;	StdPeriphLib/src/stm8s_flash.c: 118: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
	ldw	x, #0x505f
	ld	a, (x)
	and	a, (0x05, sp)
	ldw	x, #0x505f
	ld	(x), a
	Sstm8s_flash$FLASH_Lock$13 ==.
;	StdPeriphLib/src/stm8s_flash.c: 119: }
	Sstm8s_flash$FLASH_Lock$14 ==.
	XG$FLASH_Lock$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_Lock$15 ==.
	Sstm8s_flash$FLASH_DeInit$16 ==.
;	StdPeriphLib/src/stm8s_flash.c: 126: void FLASH_DeInit(void)
;	-----------------------------------------
;	 function FLASH_DeInit
;	-----------------------------------------
_FLASH_DeInit:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_DeInit$17 ==.
	Sstm8s_flash$FLASH_DeInit$18 ==.
;	StdPeriphLib/src/stm8s_flash.c: 128: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
	mov	0x505a+0, #0x00
	Sstm8s_flash$FLASH_DeInit$19 ==.
;	StdPeriphLib/src/stm8s_flash.c: 129: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
	mov	0x505b+0, #0x00
	Sstm8s_flash$FLASH_DeInit$20 ==.
;	StdPeriphLib/src/stm8s_flash.c: 130: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
	mov	0x505c+0, #0xff
	Sstm8s_flash$FLASH_DeInit$21 ==.
;	StdPeriphLib/src/stm8s_flash.c: 131: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
	ldw	x, #0x505f
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	Sstm8s_flash$FLASH_DeInit$22 ==.
;	StdPeriphLib/src/stm8s_flash.c: 132: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
	ldw	x, #0x505f
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
	Sstm8s_flash$FLASH_DeInit$23 ==.
;	StdPeriphLib/src/stm8s_flash.c: 133: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
	ldw	x, #0x505f
	ld	a, (x)
	Sstm8s_flash$FLASH_DeInit$24 ==.
;	StdPeriphLib/src/stm8s_flash.c: 134: }
	Sstm8s_flash$FLASH_DeInit$25 ==.
	XG$FLASH_DeInit$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_DeInit$26 ==.
	Sstm8s_flash$FLASH_ITConfig$27 ==.
;	StdPeriphLib/src/stm8s_flash.c: 142: void FLASH_ITConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function FLASH_ITConfig
;	-----------------------------------------
_FLASH_ITConfig:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_ITConfig$28 ==.
	Sstm8s_flash$FLASH_ITConfig$29 ==.
;	StdPeriphLib/src/stm8s_flash.c: 147: if(NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_flash$FLASH_ITConfig$30 ==.
;	StdPeriphLib/src/stm8s_flash.c: 149: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
	ldw	x, #0x505a
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
	Sstm8s_flash$FLASH_ITConfig$31 ==.
;	StdPeriphLib/src/stm8s_flash.c: 153: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	Sstm8s_flash$FLASH_ITConfig$32 ==.
;	StdPeriphLib/src/stm8s_flash.c: 155: }
	Sstm8s_flash$FLASH_ITConfig$33 ==.
	XG$FLASH_ITConfig$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_ITConfig$34 ==.
	Sstm8s_flash$FLASH_EraseByte$35 ==.
;	StdPeriphLib/src/stm8s_flash.c: 164: void FLASH_EraseByte(uint32_t Address)
;	-----------------------------------------
;	 function FLASH_EraseByte
;	-----------------------------------------
_FLASH_EraseByte:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_EraseByte$36 ==.
	Sstm8s_flash$FLASH_EraseByte$37 ==.
;	StdPeriphLib/src/stm8s_flash.c: 170: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
	ldw	x, (0x07, sp)
	clr	(x)
	Sstm8s_flash$FLASH_EraseByte$38 ==.
;	StdPeriphLib/src/stm8s_flash.c: 171: }
	Sstm8s_flash$FLASH_EraseByte$39 ==.
	XG$FLASH_EraseByte$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_EraseByte$40 ==.
	Sstm8s_flash$FLASH_ProgramByte$41 ==.
;	StdPeriphLib/src/stm8s_flash.c: 181: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramByte
;	-----------------------------------------
_FLASH_ProgramByte:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_ProgramByte$42 ==.
	Sstm8s_flash$FLASH_ProgramByte$43 ==.
;	StdPeriphLib/src/stm8s_flash.c: 185: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
	ldw	x, (0x07, sp)
	ld	a, (0x09, sp)
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramByte$44 ==.
;	StdPeriphLib/src/stm8s_flash.c: 186: }
	Sstm8s_flash$FLASH_ProgramByte$45 ==.
	XG$FLASH_ProgramByte$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_ProgramByte$46 ==.
	Sstm8s_flash$FLASH_ReadByte$47 ==.
;	StdPeriphLib/src/stm8s_flash.c: 195: uint8_t FLASH_ReadByte(uint32_t Address)
;	-----------------------------------------
;	 function FLASH_ReadByte
;	-----------------------------------------
_FLASH_ReadByte:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_ReadByte$48 ==.
	Sstm8s_flash$FLASH_ReadByte$49 ==.
;	StdPeriphLib/src/stm8s_flash.c: 201: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address);
	ldw	x, (0x07, sp)
	ld	a, (x)
	Sstm8s_flash$FLASH_ReadByte$50 ==.
;	StdPeriphLib/src/stm8s_flash.c: 202: }
	Sstm8s_flash$FLASH_ReadByte$51 ==.
	XG$FLASH_ReadByte$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_ReadByte$52 ==.
	Sstm8s_flash$FLASH_ProgramWord$53 ==.
;	StdPeriphLib/src/stm8s_flash.c: 212: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramWord
;	-----------------------------------------
_FLASH_ProgramWord:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_ProgramWord$54 ==.
	sub	sp, #4
	Sstm8s_flash$FLASH_ProgramWord$55 ==.
;	StdPeriphLib/src/stm8s_flash.c: 218: FLASH->CR2 |= FLASH_CR2_WPRG;
	ldw	x, #0x505b
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramWord$56 ==.
;	StdPeriphLib/src/stm8s_flash.c: 219: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramWord$57 ==.
;	StdPeriphLib/src/stm8s_flash.c: 222: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
	ldw	x, (0x0b, sp)
	ldw	(0x03, sp), x
	ldw	x, sp
	addw	x, #13
	ldw	(0x01, sp), x
	ldw	x, (0x01, sp)
	ld	a, (x)
	ldw	x, (0x03, sp)
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramWord$58 ==.
;	StdPeriphLib/src/stm8s_flash.c: 224: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1);
	ldw	x, (0x03, sp)
	incw	x
	ldw	y, (0x01, sp)
	ld	a, (0x1, y)
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramWord$59 ==.
;	StdPeriphLib/src/stm8s_flash.c: 226: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2);
	ldw	x, (0x03, sp)
	incw	x
	incw	x
	ldw	y, (0x01, sp)
	ld	a, (0x2, y)
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramWord$60 ==.
;	StdPeriphLib/src/stm8s_flash.c: 228: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3);
	ldw	x, (0x03, sp)
	addw	x, #0x0003
	ldw	y, (0x01, sp)
	ld	a, (0x3, y)
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramWord$61 ==.
;	StdPeriphLib/src/stm8s_flash.c: 229: }
	addw	sp, #4
	Sstm8s_flash$FLASH_ProgramWord$62 ==.
	XG$FLASH_ProgramWord$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_ProgramWord$63 ==.
	Sstm8s_flash$FLASH_ProgramOptionByte$64 ==.
;	StdPeriphLib/src/stm8s_flash.c: 237: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramOptionByte
;	-----------------------------------------
_FLASH_ProgramOptionByte:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_ProgramOptionByte$65 ==.
	Sstm8s_flash$FLASH_ProgramOptionByte$66 ==.
;	StdPeriphLib/src/stm8s_flash.c: 243: FLASH->CR2 |= FLASH_CR2_OPT;
	bset	0x505b, #7
	Sstm8s_flash$FLASH_ProgramOptionByte$67 ==.
;	StdPeriphLib/src/stm8s_flash.c: 244: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0x7f
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramOptionByte$68 ==.
;	StdPeriphLib/src/stm8s_flash.c: 247: if(Address == 0x4800)
	ldw	x, (0x05, sp)
	cpw	x, #0x4800
	jrne	00102$
	Sstm8s_flash$FLASH_ProgramOptionByte$69 ==.
;	StdPeriphLib/src/stm8s_flash.c: 250: *((NEAR uint8_t*)Address) = Data;
	ldw	x, (0x05, sp)
	ld	a, (0x07, sp)
	ld	(x), a
	jra	00103$
00102$:
	Sstm8s_flash$FLASH_ProgramOptionByte$70 ==.
;	StdPeriphLib/src/stm8s_flash.c: 255: *((NEAR uint8_t*)Address) = Data;
	ldw	x, (0x05, sp)
	ld	a, (0x07, sp)
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramOptionByte$71 ==.
;	StdPeriphLib/src/stm8s_flash.c: 256: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
	ldw	x, (0x05, sp)
	incw	x
	ld	a, (0x07, sp)
	cpl	a
	ld	(x), a
00103$:
	Sstm8s_flash$FLASH_ProgramOptionByte$72 ==.
;	StdPeriphLib/src/stm8s_flash.c: 258: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
	push	#0xfd
	call	_FLASH_WaitForLastOperation
	pop	a
	Sstm8s_flash$FLASH_ProgramOptionByte$73 ==.
;	StdPeriphLib/src/stm8s_flash.c: 261: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
	bres	0x505b, #7
	Sstm8s_flash$FLASH_ProgramOptionByte$74 ==.
;	StdPeriphLib/src/stm8s_flash.c: 262: FLASH->NCR2 |= FLASH_NCR2_NOPT;
	bset	0x505c, #7
	Sstm8s_flash$FLASH_ProgramOptionByte$75 ==.
;	StdPeriphLib/src/stm8s_flash.c: 263: }
	Sstm8s_flash$FLASH_ProgramOptionByte$76 ==.
	XG$FLASH_ProgramOptionByte$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_ProgramOptionByte$77 ==.
	Sstm8s_flash$FLASH_EraseOptionByte$78 ==.
;	StdPeriphLib/src/stm8s_flash.c: 270: void FLASH_EraseOptionByte(uint16_t Address)
;	-----------------------------------------
;	 function FLASH_EraseOptionByte
;	-----------------------------------------
_FLASH_EraseOptionByte:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_EraseOptionByte$79 ==.
	Sstm8s_flash$FLASH_EraseOptionByte$80 ==.
;	StdPeriphLib/src/stm8s_flash.c: 276: FLASH->CR2 |= FLASH_CR2_OPT;
	bset	0x505b, #7
	Sstm8s_flash$FLASH_EraseOptionByte$81 ==.
;	StdPeriphLib/src/stm8s_flash.c: 277: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0x7f
	ld	(x), a
	Sstm8s_flash$FLASH_EraseOptionByte$82 ==.
;	StdPeriphLib/src/stm8s_flash.c: 280: if(Address == 0x4800)
	ldw	x, (0x05, sp)
	cpw	x, #0x4800
	jrne	00102$
	Sstm8s_flash$FLASH_EraseOptionByte$83 ==.
;	StdPeriphLib/src/stm8s_flash.c: 283: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
	ldw	x, (0x05, sp)
	clr	(x)
	jra	00103$
00102$:
	Sstm8s_flash$FLASH_EraseOptionByte$84 ==.
;	StdPeriphLib/src/stm8s_flash.c: 288: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
	ldw	x, (0x05, sp)
	clr	(x)
	Sstm8s_flash$FLASH_EraseOptionByte$85 ==.
;	StdPeriphLib/src/stm8s_flash.c: 289: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
	ldw	x, (0x05, sp)
	incw	x
	ld	a, #0xff
	ld	(x), a
00103$:
	Sstm8s_flash$FLASH_EraseOptionByte$86 ==.
;	StdPeriphLib/src/stm8s_flash.c: 291: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
	push	#0xfd
	call	_FLASH_WaitForLastOperation
	pop	a
	Sstm8s_flash$FLASH_EraseOptionByte$87 ==.
;	StdPeriphLib/src/stm8s_flash.c: 294: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
	bres	0x505b, #7
	Sstm8s_flash$FLASH_EraseOptionByte$88 ==.
;	StdPeriphLib/src/stm8s_flash.c: 295: FLASH->NCR2 |= FLASH_NCR2_NOPT;
	bset	0x505c, #7
	Sstm8s_flash$FLASH_EraseOptionByte$89 ==.
;	StdPeriphLib/src/stm8s_flash.c: 296: }
	Sstm8s_flash$FLASH_EraseOptionByte$90 ==.
	XG$FLASH_EraseOptionByte$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_EraseOptionByte$91 ==.
	Sstm8s_flash$FLASH_ReadOptionByte$92 ==.
;	StdPeriphLib/src/stm8s_flash.c: 303: uint16_t FLASH_ReadOptionByte(uint16_t Address)
;	-----------------------------------------
;	 function FLASH_ReadOptionByte
;	-----------------------------------------
_FLASH_ReadOptionByte:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_ReadOptionByte$93 ==.
	sub	sp, #3
	Sstm8s_flash$FLASH_ReadOptionByte$94 ==.
;	StdPeriphLib/src/stm8s_flash.c: 311: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
	ldw	x, (0x08, sp)
	ld	a, (x)
	Sstm8s_flash$FLASH_ReadOptionByte$95 ==.
;	StdPeriphLib/src/stm8s_flash.c: 312: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
	push	a
	ld	a, (0x1, x)
	ld	yl, a
	pop	a
	Sstm8s_flash$FLASH_ReadOptionByte$96 ==.
;	StdPeriphLib/src/stm8s_flash.c: 315: if(Address == 0x4800)
	ldw	x, (0x08, sp)
	cpw	x, #0x4800
	jrne	00105$
	Sstm8s_flash$FLASH_ReadOptionByte$97 ==.
;	StdPeriphLib/src/stm8s_flash.c: 317: res_value =	 value_optbyte;
	clrw	x
	ld	xl, a
	jra	00106$
00105$:
	Sstm8s_flash$FLASH_ReadOptionByte$98 ==.
;	StdPeriphLib/src/stm8s_flash.c: 321: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
	push	a
	ld	a, yl
	cpl	a
	ld	(0x02, sp), a
	pop	a
	cp	a, (0x01, sp)
	jrne	00102$
	Sstm8s_flash$FLASH_ReadOptionByte$99 ==.
;	StdPeriphLib/src/stm8s_flash.c: 323: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
	ld	xl, a
	clr	a
	clr	a
	rlwa	x
	Sstm8s_flash$FLASH_ReadOptionByte$100 ==.
;	StdPeriphLib/src/stm8s_flash.c: 324: res_value = res_value | (uint16_t)value_optbyte_complement;
	ld	a, yl
	clr	(0x02, sp)
	pushw	x
	or	a, (2, sp)
	popw	x
	rlwa	x
	or	a, (0x02, sp)
	ld	xh, a
	jra	00106$
00102$:
	Sstm8s_flash$FLASH_ReadOptionByte$101 ==.
;	StdPeriphLib/src/stm8s_flash.c: 328: res_value = FLASH_OPTIONBYTE_ERROR;
	ldw	x, #0x5555
00106$:
	Sstm8s_flash$FLASH_ReadOptionByte$102 ==.
;	StdPeriphLib/src/stm8s_flash.c: 331: return(res_value);
	Sstm8s_flash$FLASH_ReadOptionByte$103 ==.
;	StdPeriphLib/src/stm8s_flash.c: 332: }
	addw	sp, #3
	Sstm8s_flash$FLASH_ReadOptionByte$104 ==.
	XG$FLASH_ReadOptionByte$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_ReadOptionByte$105 ==.
	Sstm8s_flash$FLASH_SetLowPowerMode$106 ==.
;	StdPeriphLib/src/stm8s_flash.c: 340: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
;	-----------------------------------------
;	 function FLASH_SetLowPowerMode
;	-----------------------------------------
_FLASH_SetLowPowerMode:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_SetLowPowerMode$107 ==.
	Sstm8s_flash$FLASH_SetLowPowerMode$108 ==.
;	StdPeriphLib/src/stm8s_flash.c: 346: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT));
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
	Sstm8s_flash$FLASH_SetLowPowerMode$109 ==.
;	StdPeriphLib/src/stm8s_flash.c: 349: FLASH->CR1 |= (uint8_t)FLASH_LPMode;
	ldw	x, #0x505a
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x505a
	ld	(x), a
	Sstm8s_flash$FLASH_SetLowPowerMode$110 ==.
;	StdPeriphLib/src/stm8s_flash.c: 350: }
	Sstm8s_flash$FLASH_SetLowPowerMode$111 ==.
	XG$FLASH_SetLowPowerMode$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_SetLowPowerMode$112 ==.
	Sstm8s_flash$FLASH_SetProgrammingTime$113 ==.
;	StdPeriphLib/src/stm8s_flash.c: 358: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
;	-----------------------------------------
;	 function FLASH_SetProgrammingTime
;	-----------------------------------------
_FLASH_SetProgrammingTime:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_SetProgrammingTime$114 ==.
	Sstm8s_flash$FLASH_SetProgrammingTime$115 ==.
;	StdPeriphLib/src/stm8s_flash.c: 363: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
	bres	0x505a, #0
	Sstm8s_flash$FLASH_SetProgrammingTime$116 ==.
;	StdPeriphLib/src/stm8s_flash.c: 364: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
	ldw	x, #0x505a
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x505a
	ld	(x), a
	Sstm8s_flash$FLASH_SetProgrammingTime$117 ==.
;	StdPeriphLib/src/stm8s_flash.c: 365: }
	Sstm8s_flash$FLASH_SetProgrammingTime$118 ==.
	XG$FLASH_SetProgrammingTime$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_SetProgrammingTime$119 ==.
	Sstm8s_flash$FLASH_GetLowPowerMode$120 ==.
;	StdPeriphLib/src/stm8s_flash.c: 372: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
;	-----------------------------------------
;	 function FLASH_GetLowPowerMode
;	-----------------------------------------
_FLASH_GetLowPowerMode:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_GetLowPowerMode$121 ==.
	Sstm8s_flash$FLASH_GetLowPowerMode$122 ==.
;	StdPeriphLib/src/stm8s_flash.c: 374: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0x0c
	Sstm8s_flash$FLASH_GetLowPowerMode$123 ==.
;	StdPeriphLib/src/stm8s_flash.c: 375: }
	Sstm8s_flash$FLASH_GetLowPowerMode$124 ==.
	XG$FLASH_GetLowPowerMode$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_GetLowPowerMode$125 ==.
	Sstm8s_flash$FLASH_GetProgrammingTime$126 ==.
;	StdPeriphLib/src/stm8s_flash.c: 382: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
;	-----------------------------------------
;	 function FLASH_GetProgrammingTime
;	-----------------------------------------
_FLASH_GetProgrammingTime:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_GetProgrammingTime$127 ==.
	Sstm8s_flash$FLASH_GetProgrammingTime$128 ==.
;	StdPeriphLib/src/stm8s_flash.c: 384: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0x01
	Sstm8s_flash$FLASH_GetProgrammingTime$129 ==.
;	StdPeriphLib/src/stm8s_flash.c: 385: }
	Sstm8s_flash$FLASH_GetProgrammingTime$130 ==.
	XG$FLASH_GetProgrammingTime$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_GetProgrammingTime$131 ==.
	Sstm8s_flash$FLASH_GetBootSize$132 ==.
;	StdPeriphLib/src/stm8s_flash.c: 392: uint32_t FLASH_GetBootSize(void)
;	-----------------------------------------
;	 function FLASH_GetBootSize
;	-----------------------------------------
_FLASH_GetBootSize:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_GetBootSize$133 ==.
	sub	sp, #4
	Sstm8s_flash$FLASH_GetBootSize$134 ==.
;	StdPeriphLib/src/stm8s_flash.c: 397: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
	ldw	x, #0x505d
	ld	a, (x)
	clrw	x
	ld	xl, a
	clrw	y
	ld	a, #0x09
00108$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00108$
	ldw	(0x01, sp), y
	Sstm8s_flash$FLASH_GetBootSize$135 ==.
;	StdPeriphLib/src/stm8s_flash.c: 400: if(FLASH->FPR == 0xFF)
	ldw	y, #0x505d
	ld	a, (y)
	cp	a, #0xff
	jrne	00102$
	Sstm8s_flash$FLASH_GetBootSize$136 ==.
;	StdPeriphLib/src/stm8s_flash.c: 402: temp += 512;
	addw	x, #0x0200
	ld	a, (0x02, sp)
	adc	a, #0x00
	ld	yl, a
	ld	a, (0x01, sp)
	adc	a, #0x00
	ld	yh, a
	ldw	(0x01, sp), y
00102$:
	Sstm8s_flash$FLASH_GetBootSize$137 ==.
;	StdPeriphLib/src/stm8s_flash.c: 406: return(temp);
	ldw	y, (0x01, sp)
	Sstm8s_flash$FLASH_GetBootSize$138 ==.
;	StdPeriphLib/src/stm8s_flash.c: 407: }
	addw	sp, #4
	Sstm8s_flash$FLASH_GetBootSize$139 ==.
	XG$FLASH_GetBootSize$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_GetBootSize$140 ==.
	Sstm8s_flash$FLASH_GetFlagStatus$141 ==.
;	StdPeriphLib/src/stm8s_flash.c: 417: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
;	-----------------------------------------
;	 function FLASH_GetFlagStatus
;	-----------------------------------------
_FLASH_GetFlagStatus:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_GetFlagStatus$142 ==.
	Sstm8s_flash$FLASH_GetFlagStatus$143 ==.
;	StdPeriphLib/src/stm8s_flash.c: 424: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
	ldw	x, #0x505f
	ld	a, (x)
	and	a, (0x05, sp)
	tnz	a
	jreq	00102$
	Sstm8s_flash$FLASH_GetFlagStatus$144 ==.
;	StdPeriphLib/src/stm8s_flash.c: 426: status = SET; /* FLASH_FLAG is set */
	ld	a, #0x01
	jra	00103$
00102$:
	Sstm8s_flash$FLASH_GetFlagStatus$145 ==.
;	StdPeriphLib/src/stm8s_flash.c: 430: status = RESET; /* FLASH_FLAG is reset*/
	clr	a
00103$:
	Sstm8s_flash$FLASH_GetFlagStatus$146 ==.
;	StdPeriphLib/src/stm8s_flash.c: 434: return status;
	Sstm8s_flash$FLASH_GetFlagStatus$147 ==.
;	StdPeriphLib/src/stm8s_flash.c: 435: }
	Sstm8s_flash$FLASH_GetFlagStatus$148 ==.
	XG$FLASH_GetFlagStatus$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_GetFlagStatus$149 ==.
	Sstm8s_flash$FLASH_WaitForLastOperation$150 ==.
;	StdPeriphLib/src/stm8s_flash.c: 549: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType))
;	-----------------------------------------
;	 function FLASH_WaitForLastOperation
;	-----------------------------------------
_FLASH_WaitForLastOperation:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_WaitForLastOperation$151 ==.
	Sstm8s_flash$FLASH_WaitForLastOperation$152 ==.
;	StdPeriphLib/src/stm8s_flash.c: 551: uint8_t flagstatus = 0x00;
	clr	a
	Sstm8s_flash$FLASH_WaitForLastOperation$153 ==.
;	StdPeriphLib/src/stm8s_flash.c: 557: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	push	a
	ld	a, (0x06, sp)
	cp	a, #0xfd
	pop	a
	jrne	00121$
	Sstm8s_flash$FLASH_WaitForLastOperation$154 ==.
;	StdPeriphLib/src/stm8s_flash.c: 559: while((flagstatus == 0x00) && (timeout != 0x00))
	ldw	x, #0xffff
00102$:
	tnz	a
	jrne	00123$
	tnzw	x
	jreq	00123$
	Sstm8s_flash$FLASH_WaitForLastOperation$155 ==.
;	StdPeriphLib/src/stm8s_flash.c: 561: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
	ldw	y, #0x505f
	ld	a, (y)
	and	a, #0x05
	Sstm8s_flash$FLASH_WaitForLastOperation$156 ==.
;	StdPeriphLib/src/stm8s_flash.c: 563: timeout--;
	decw	x
	jra	00102$
	Sstm8s_flash$FLASH_WaitForLastOperation$157 ==.
;	StdPeriphLib/src/stm8s_flash.c: 568: while((flagstatus == 0x00) && (timeout != 0x00))
00121$:
	ldw	x, #0xffff
00106$:
	tnz	a
	jrne	00124$
	tnzw	x
	jreq	00124$
	Sstm8s_flash$FLASH_WaitForLastOperation$158 ==.
;	StdPeriphLib/src/stm8s_flash.c: 570: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
	ldw	y, #0x505f
	ld	a, (y)
	and	a, #0x41
	Sstm8s_flash$FLASH_WaitForLastOperation$159 ==.
;	StdPeriphLib/src/stm8s_flash.c: 572: timeout--;
	decw	x
	jra	00106$
00123$:
	Sstm8s_flash$FLASH_WaitForLastOperation$160 ==.
;	StdPeriphLib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
	jra	00111$
	Sstm8s_flash$FLASH_WaitForLastOperation$161 ==.
;	StdPeriphLib/src/stm8s_flash.c: 572: timeout--;
00124$:
00111$:
	Sstm8s_flash$FLASH_WaitForLastOperation$162 ==.
;	StdPeriphLib/src/stm8s_flash.c: 584: if(timeout == 0x00 )
	tnzw	x
	jrne	00113$
	Sstm8s_flash$FLASH_WaitForLastOperation$163 ==.
;	StdPeriphLib/src/stm8s_flash.c: 586: flagstatus = FLASH_STATUS_TIMEOUT;
	ld	a, #0x02
00113$:
	Sstm8s_flash$FLASH_WaitForLastOperation$164 ==.
;	StdPeriphLib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
	Sstm8s_flash$FLASH_WaitForLastOperation$165 ==.
;	StdPeriphLib/src/stm8s_flash.c: 590: }
	Sstm8s_flash$FLASH_WaitForLastOperation$166 ==.
	XG$FLASH_WaitForLastOperation$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_WaitForLastOperation$167 ==.
	Sstm8s_flash$FLASH_EraseBlock$168 ==.
;	StdPeriphLib/src/stm8s_flash.c: 599: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
;	-----------------------------------------
;	 function FLASH_EraseBlock
;	-----------------------------------------
_FLASH_EraseBlock:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_EraseBlock$169 ==.
	sub	sp, #6
	Sstm8s_flash$FLASH_EraseBlock$170 ==.
;	StdPeriphLib/src/stm8s_flash.c: 612: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	ld	a, (0x0d, sp)
	cp	a, #0xfd
	jrne	00102$
	Sstm8s_flash$FLASH_EraseBlock$171 ==.
;	StdPeriphLib/src/stm8s_flash.c: 615: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
	ldw	x, #0x8000
	ldw	(0x05, sp), x
	clrw	x
	ldw	(0x03, sp), x
	jra	00103$
00102$:
	Sstm8s_flash$FLASH_EraseBlock$172 ==.
;	StdPeriphLib/src/stm8s_flash.c: 620: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
	ldw	x, #0x4000
	ldw	(0x05, sp), x
	clrw	x
	ldw	(0x03, sp), x
00103$:
	Sstm8s_flash$FLASH_EraseBlock$173 ==.
;	StdPeriphLib/src/stm8s_flash.c: 628: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
	ldw	y, (0x0b, sp)
	clrw	x
	ld	a, #0x07
00112$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00112$
	addw	y, (0x05, sp)
	ld	a, xl
	adc	a, (0x04, sp)
	rlwa	x
	adc	a, (0x03, sp)
	ldw	(0x01, sp), y
	Sstm8s_flash$FLASH_EraseBlock$174 ==.
;	StdPeriphLib/src/stm8s_flash.c: 632: FLASH->CR2 |= FLASH_CR2_ERASE;
	ldw	x, #0x505b
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	Sstm8s_flash$FLASH_EraseBlock$175 ==.
;	StdPeriphLib/src/stm8s_flash.c: 633: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
	Sstm8s_flash$FLASH_EraseBlock$176 ==.
;	StdPeriphLib/src/stm8s_flash.c: 637: *pwFlash = (uint32_t)0;
	ldw	x, (0x01, sp)
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
	Sstm8s_flash$FLASH_EraseBlock$177 ==.
;	StdPeriphLib/src/stm8s_flash.c: 645: }
	addw	sp, #6
	Sstm8s_flash$FLASH_EraseBlock$178 ==.
	XG$FLASH_EraseBlock$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_EraseBlock$179 ==.
	Sstm8s_flash$FLASH_ProgramBlock$180 ==.
;	StdPeriphLib/src/stm8s_flash.c: 656: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType,
;	-----------------------------------------
;	 function FLASH_ProgramBlock
;	-----------------------------------------
_FLASH_ProgramBlock:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_flash$FLASH_ProgramBlock$181 ==.
	sub	sp, #18
	Sstm8s_flash$FLASH_ProgramBlock$182 ==.
;	StdPeriphLib/src/stm8s_flash.c: 665: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	ld	a, (0x19, sp)
	cp	a, #0xfd
	jrne	00102$
	Sstm8s_flash$FLASH_ProgramBlock$183 ==.
;	StdPeriphLib/src/stm8s_flash.c: 668: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
	ldw	x, #0x8000
	ldw	(0x03, sp), x
	clrw	x
	ldw	(0x01, sp), x
	jra	00103$
00102$:
	Sstm8s_flash$FLASH_ProgramBlock$184 ==.
;	StdPeriphLib/src/stm8s_flash.c: 673: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
	ldw	x, #0x4000
	ldw	(0x03, sp), x
	clrw	x
	ldw	(0x01, sp), x
00103$:
	Sstm8s_flash$FLASH_ProgramBlock$185 ==.
;	StdPeriphLib/src/stm8s_flash.c: 677: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
	ldw	y, (0x17, sp)
	ldw	(0x0d, sp), y
	clr	(0x0c, sp)
	clr	(0x0b, sp)
	ldw	y, (0x0b, sp)
	ldw	(0x07, sp), y
	ldw	x, (0x0d, sp)
	ld	a, #0x07
00125$:
	sllw	x
	rlc	(0x08, sp)
	rlc	(0x07, sp)
	dec	a
	jrne	00125$
	ldw	(0x09, sp), x
	ldw	x, (0x03, sp)
	addw	x, (0x09, sp)
	ldw	(0x11, sp), x
	ld	a, (0x02, sp)
	adc	a, (0x08, sp)
	ld	(0x10, sp), a
	ld	a, (0x01, sp)
	adc	a, (0x07, sp)
	ld	(0x0f, sp), a
	ldw	y, (0x11, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0f, sp)
	ldw	(0x01, sp), y
	Sstm8s_flash$FLASH_ProgramBlock$186 ==.
;	StdPeriphLib/src/stm8s_flash.c: 680: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
	tnz	(0x1a, sp)
	jrne	00105$
	Sstm8s_flash$FLASH_ProgramBlock$187 ==.
;	StdPeriphLib/src/stm8s_flash.c: 683: FLASH->CR2 |= FLASH_CR2_PRG;
	bset	0x505b, #0
	Sstm8s_flash$FLASH_ProgramBlock$188 ==.
;	StdPeriphLib/src/stm8s_flash.c: 684: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
	jra	00114$
00105$:
	Sstm8s_flash$FLASH_ProgramBlock$189 ==.
;	StdPeriphLib/src/stm8s_flash.c: 689: FLASH->CR2 |= FLASH_CR2_FPRG;
	ldw	x, #0x505b
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramBlock$190 ==.
;	StdPeriphLib/src/stm8s_flash.c: 690: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramBlock$191 ==.
;	StdPeriphLib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
00114$:
	clrw	x
	ldw	(0x05, sp), x
00108$:
	Sstm8s_flash$FLASH_ProgramBlock$192 ==.
;	StdPeriphLib/src/stm8s_flash.c: 696: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
	ldw	x, (0x03, sp)
	addw	x, (0x05, sp)
	ldw	y, (0x1b, sp)
	addw	y, (0x05, sp)
	ld	a, (y)
	ld	(x), a
	Sstm8s_flash$FLASH_ProgramBlock$193 ==.
;	StdPeriphLib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x05, sp), x
	ldw	x, (0x05, sp)
	cpw	x, #0x0080
	jrc	00108$
	Sstm8s_flash$FLASH_ProgramBlock$194 ==.
;	StdPeriphLib/src/stm8s_flash.c: 698: }
	addw	sp, #18
	Sstm8s_flash$FLASH_ProgramBlock$195 ==.
	XG$FLASH_ProgramBlock$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_flash$FLASH_ProgramBlock$196 ==.
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
	.ascii "StdPeriphLib/src/stm8s_flash.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_Unlock$0)
	.db	3
	.sleb128	86
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Unlock$2-Sstm8s_flash$FLASH_Unlock$0
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Unlock$3-Sstm8s_flash$FLASH_Unlock$2
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Unlock$4-Sstm8s_flash$FLASH_Unlock$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Unlock$5-Sstm8s_flash$FLASH_Unlock$4
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Unlock$6-Sstm8s_flash$FLASH_Unlock$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Unlock$7-Sstm8s_flash$FLASH_Unlock$6
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_Unlock$8-Sstm8s_flash$FLASH_Unlock$7
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_Lock$10)
	.db	3
	.sleb128	111
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Lock$12-Sstm8s_flash$FLASH_Lock$10
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_Lock$13-Sstm8s_flash$FLASH_Lock$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_Lock$14-Sstm8s_flash$FLASH_Lock$13
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_DeInit$16)
	.db	3
	.sleb128	125
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_DeInit$18-Sstm8s_flash$FLASH_DeInit$16
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_DeInit$19-Sstm8s_flash$FLASH_DeInit$18
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_DeInit$20-Sstm8s_flash$FLASH_DeInit$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_DeInit$21-Sstm8s_flash$FLASH_DeInit$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_DeInit$22-Sstm8s_flash$FLASH_DeInit$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_DeInit$23-Sstm8s_flash$FLASH_DeInit$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_DeInit$24-Sstm8s_flash$FLASH_DeInit$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_DeInit$25-Sstm8s_flash$FLASH_DeInit$24
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_ITConfig$27)
	.db	3
	.sleb128	141
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ITConfig$29-Sstm8s_flash$FLASH_ITConfig$27
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ITConfig$30-Sstm8s_flash$FLASH_ITConfig$29
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ITConfig$31-Sstm8s_flash$FLASH_ITConfig$30
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ITConfig$32-Sstm8s_flash$FLASH_ITConfig$31
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_ITConfig$33-Sstm8s_flash$FLASH_ITConfig$32
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_EraseByte$35)
	.db	3
	.sleb128	163
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseByte$37-Sstm8s_flash$FLASH_EraseByte$35
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseByte$38-Sstm8s_flash$FLASH_EraseByte$37
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_EraseByte$39-Sstm8s_flash$FLASH_EraseByte$38
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_ProgramByte$41)
	.db	3
	.sleb128	180
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramByte$43-Sstm8s_flash$FLASH_ProgramByte$41
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramByte$44-Sstm8s_flash$FLASH_ProgramByte$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_ProgramByte$45-Sstm8s_flash$FLASH_ProgramByte$44
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_ReadByte$47)
	.db	3
	.sleb128	194
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadByte$49-Sstm8s_flash$FLASH_ReadByte$47
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadByte$50-Sstm8s_flash$FLASH_ReadByte$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_ReadByte$51-Sstm8s_flash$FLASH_ReadByte$50
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_ProgramWord$53)
	.db	3
	.sleb128	211
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramWord$55-Sstm8s_flash$FLASH_ProgramWord$53
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramWord$56-Sstm8s_flash$FLASH_ProgramWord$55
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramWord$57-Sstm8s_flash$FLASH_ProgramWord$56
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramWord$58-Sstm8s_flash$FLASH_ProgramWord$57
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramWord$59-Sstm8s_flash$FLASH_ProgramWord$58
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramWord$60-Sstm8s_flash$FLASH_ProgramWord$59
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramWord$61-Sstm8s_flash$FLASH_ProgramWord$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_ProgramWord$62-Sstm8s_flash$FLASH_ProgramWord$61
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_ProgramOptionByte$64)
	.db	3
	.sleb128	236
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$66-Sstm8s_flash$FLASH_ProgramOptionByte$64
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$67-Sstm8s_flash$FLASH_ProgramOptionByte$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$68-Sstm8s_flash$FLASH_ProgramOptionByte$67
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$69-Sstm8s_flash$FLASH_ProgramOptionByte$68
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$70-Sstm8s_flash$FLASH_ProgramOptionByte$69
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$71-Sstm8s_flash$FLASH_ProgramOptionByte$70
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$72-Sstm8s_flash$FLASH_ProgramOptionByte$71
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$73-Sstm8s_flash$FLASH_ProgramOptionByte$72
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$74-Sstm8s_flash$FLASH_ProgramOptionByte$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$75-Sstm8s_flash$FLASH_ProgramOptionByte$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_ProgramOptionByte$76-Sstm8s_flash$FLASH_ProgramOptionByte$75
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_EraseOptionByte$78)
	.db	3
	.sleb128	269
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$80-Sstm8s_flash$FLASH_EraseOptionByte$78
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$81-Sstm8s_flash$FLASH_EraseOptionByte$80
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$82-Sstm8s_flash$FLASH_EraseOptionByte$81
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$83-Sstm8s_flash$FLASH_EraseOptionByte$82
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$84-Sstm8s_flash$FLASH_EraseOptionByte$83
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$85-Sstm8s_flash$FLASH_EraseOptionByte$84
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$86-Sstm8s_flash$FLASH_EraseOptionByte$85
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$87-Sstm8s_flash$FLASH_EraseOptionByte$86
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$88-Sstm8s_flash$FLASH_EraseOptionByte$87
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseOptionByte$89-Sstm8s_flash$FLASH_EraseOptionByte$88
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_EraseOptionByte$90-Sstm8s_flash$FLASH_EraseOptionByte$89
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_ReadOptionByte$92)
	.db	3
	.sleb128	302
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$94-Sstm8s_flash$FLASH_ReadOptionByte$92
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$95-Sstm8s_flash$FLASH_ReadOptionByte$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$96-Sstm8s_flash$FLASH_ReadOptionByte$95
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$97-Sstm8s_flash$FLASH_ReadOptionByte$96
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$98-Sstm8s_flash$FLASH_ReadOptionByte$97
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$99-Sstm8s_flash$FLASH_ReadOptionByte$98
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$100-Sstm8s_flash$FLASH_ReadOptionByte$99
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$101-Sstm8s_flash$FLASH_ReadOptionByte$100
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$102-Sstm8s_flash$FLASH_ReadOptionByte$101
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ReadOptionByte$103-Sstm8s_flash$FLASH_ReadOptionByte$102
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_ReadOptionByte$104-Sstm8s_flash$FLASH_ReadOptionByte$103
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_SetLowPowerMode$106)
	.db	3
	.sleb128	339
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_SetLowPowerMode$108-Sstm8s_flash$FLASH_SetLowPowerMode$106
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_SetLowPowerMode$109-Sstm8s_flash$FLASH_SetLowPowerMode$108
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_SetLowPowerMode$110-Sstm8s_flash$FLASH_SetLowPowerMode$109
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_SetLowPowerMode$111-Sstm8s_flash$FLASH_SetLowPowerMode$110
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_SetProgrammingTime$113)
	.db	3
	.sleb128	357
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_SetProgrammingTime$115-Sstm8s_flash$FLASH_SetProgrammingTime$113
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_SetProgrammingTime$116-Sstm8s_flash$FLASH_SetProgrammingTime$115
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_SetProgrammingTime$117-Sstm8s_flash$FLASH_SetProgrammingTime$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_SetProgrammingTime$118-Sstm8s_flash$FLASH_SetProgrammingTime$117
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_GetLowPowerMode$120)
	.db	3
	.sleb128	371
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetLowPowerMode$122-Sstm8s_flash$FLASH_GetLowPowerMode$120
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetLowPowerMode$123-Sstm8s_flash$FLASH_GetLowPowerMode$122
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_GetLowPowerMode$124-Sstm8s_flash$FLASH_GetLowPowerMode$123
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_GetProgrammingTime$126)
	.db	3
	.sleb128	381
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetProgrammingTime$128-Sstm8s_flash$FLASH_GetProgrammingTime$126
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetProgrammingTime$129-Sstm8s_flash$FLASH_GetProgrammingTime$128
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_GetProgrammingTime$130-Sstm8s_flash$FLASH_GetProgrammingTime$129
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_GetBootSize$132)
	.db	3
	.sleb128	391
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetBootSize$134-Sstm8s_flash$FLASH_GetBootSize$132
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetBootSize$135-Sstm8s_flash$FLASH_GetBootSize$134
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetBootSize$136-Sstm8s_flash$FLASH_GetBootSize$135
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetBootSize$137-Sstm8s_flash$FLASH_GetBootSize$136
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetBootSize$138-Sstm8s_flash$FLASH_GetBootSize$137
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_GetBootSize$139-Sstm8s_flash$FLASH_GetBootSize$138
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_GetFlagStatus$141)
	.db	3
	.sleb128	416
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetFlagStatus$143-Sstm8s_flash$FLASH_GetFlagStatus$141
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetFlagStatus$144-Sstm8s_flash$FLASH_GetFlagStatus$143
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetFlagStatus$145-Sstm8s_flash$FLASH_GetFlagStatus$144
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetFlagStatus$146-Sstm8s_flash$FLASH_GetFlagStatus$145
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_GetFlagStatus$147-Sstm8s_flash$FLASH_GetFlagStatus$146
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_GetFlagStatus$148-Sstm8s_flash$FLASH_GetFlagStatus$147
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_WaitForLastOperation$150)
	.db	3
	.sleb128	548
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$152-Sstm8s_flash$FLASH_WaitForLastOperation$150
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$153-Sstm8s_flash$FLASH_WaitForLastOperation$152
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$154-Sstm8s_flash$FLASH_WaitForLastOperation$153
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$155-Sstm8s_flash$FLASH_WaitForLastOperation$154
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$156-Sstm8s_flash$FLASH_WaitForLastOperation$155
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$157-Sstm8s_flash$FLASH_WaitForLastOperation$156
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$158-Sstm8s_flash$FLASH_WaitForLastOperation$157
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$159-Sstm8s_flash$FLASH_WaitForLastOperation$158
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$160-Sstm8s_flash$FLASH_WaitForLastOperation$159
	.db	3
	.sleb128	17
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$161-Sstm8s_flash$FLASH_WaitForLastOperation$160
	.db	3
	.sleb128	-17
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$162-Sstm8s_flash$FLASH_WaitForLastOperation$161
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$163-Sstm8s_flash$FLASH_WaitForLastOperation$162
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$164-Sstm8s_flash$FLASH_WaitForLastOperation$163
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$165-Sstm8s_flash$FLASH_WaitForLastOperation$164
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_WaitForLastOperation$166-Sstm8s_flash$FLASH_WaitForLastOperation$165
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_EraseBlock$168)
	.db	3
	.sleb128	598
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$170-Sstm8s_flash$FLASH_EraseBlock$168
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$171-Sstm8s_flash$FLASH_EraseBlock$170
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$172-Sstm8s_flash$FLASH_EraseBlock$171
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$173-Sstm8s_flash$FLASH_EraseBlock$172
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$174-Sstm8s_flash$FLASH_EraseBlock$173
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$175-Sstm8s_flash$FLASH_EraseBlock$174
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$176-Sstm8s_flash$FLASH_EraseBlock$175
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_EraseBlock$177-Sstm8s_flash$FLASH_EraseBlock$176
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_EraseBlock$178-Sstm8s_flash$FLASH_EraseBlock$177
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_flash$FLASH_ProgramBlock$180)
	.db	3
	.sleb128	655
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$182-Sstm8s_flash$FLASH_ProgramBlock$180
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$183-Sstm8s_flash$FLASH_ProgramBlock$182
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$184-Sstm8s_flash$FLASH_ProgramBlock$183
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$185-Sstm8s_flash$FLASH_ProgramBlock$184
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$186-Sstm8s_flash$FLASH_ProgramBlock$185
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$187-Sstm8s_flash$FLASH_ProgramBlock$186
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$188-Sstm8s_flash$FLASH_ProgramBlock$187
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$189-Sstm8s_flash$FLASH_ProgramBlock$188
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$190-Sstm8s_flash$FLASH_ProgramBlock$189
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$191-Sstm8s_flash$FLASH_ProgramBlock$190
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$192-Sstm8s_flash$FLASH_ProgramBlock$191
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$193-Sstm8s_flash$FLASH_ProgramBlock$192
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_flash$FLASH_ProgramBlock$194-Sstm8s_flash$FLASH_ProgramBlock$193
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	7+Sstm8s_flash$FLASH_ProgramBlock$195-Sstm8s_flash$FLASH_ProgramBlock$194
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_flash$FLASH_ProgramBlock$181)
	.dw	0,(Sstm8s_flash$FLASH_ProgramBlock$196)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_EraseBlock$169)
	.dw	0,(Sstm8s_flash$FLASH_EraseBlock$179)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_WaitForLastOperation$151)
	.dw	0,(Sstm8s_flash$FLASH_WaitForLastOperation$167)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_GetFlagStatus$142)
	.dw	0,(Sstm8s_flash$FLASH_GetFlagStatus$149)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_GetBootSize$133)
	.dw	0,(Sstm8s_flash$FLASH_GetBootSize$140)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_GetProgrammingTime$127)
	.dw	0,(Sstm8s_flash$FLASH_GetProgrammingTime$131)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_GetLowPowerMode$121)
	.dw	0,(Sstm8s_flash$FLASH_GetLowPowerMode$125)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_SetProgrammingTime$114)
	.dw	0,(Sstm8s_flash$FLASH_SetProgrammingTime$119)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_SetLowPowerMode$107)
	.dw	0,(Sstm8s_flash$FLASH_SetLowPowerMode$112)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_ReadOptionByte$93)
	.dw	0,(Sstm8s_flash$FLASH_ReadOptionByte$105)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_EraseOptionByte$79)
	.dw	0,(Sstm8s_flash$FLASH_EraseOptionByte$91)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_ProgramOptionByte$65)
	.dw	0,(Sstm8s_flash$FLASH_ProgramOptionByte$77)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_ProgramWord$54)
	.dw	0,(Sstm8s_flash$FLASH_ProgramWord$63)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_ReadByte$48)
	.dw	0,(Sstm8s_flash$FLASH_ReadByte$52)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_ProgramByte$42)
	.dw	0,(Sstm8s_flash$FLASH_ProgramByte$46)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_EraseByte$36)
	.dw	0,(Sstm8s_flash$FLASH_EraseByte$40)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_ITConfig$28)
	.dw	0,(Sstm8s_flash$FLASH_ITConfig$34)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_DeInit$17)
	.dw	0,(Sstm8s_flash$FLASH_DeInit$26)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_Lock$11)
	.dw	0,(Sstm8s_flash$FLASH_Lock$15)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_flash$FLASH_Unlock$1)
	.dw	0,(Sstm8s_flash$FLASH_Unlock$9)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	12
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	52
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	11
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
	.uleb128	3
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
	.uleb128	9
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
	.uleb128	6
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
	.ascii "StdPeriphLib/src/stm8s_flash.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.dw	0,129
	.ascii "FLASH_Unlock"
	.db	0
	.dw	0,(_FLASH_Unlock)
	.dw	0,(XG$FLASH_Unlock$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "FLASH_MemType"
	.db	0
	.dw	0,129
	.uleb128	4
	.uleb128	4
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,198
	.ascii "FLASH_Lock"
	.db	0
	.dw	0,(_FLASH_Lock)
	.dw	0,(XG$FLASH_Lock$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "FLASH_MemType"
	.db	0
	.dw	0,129
	.uleb128	0
	.uleb128	6
	.ascii "FLASH_DeInit"
	.db	0
	.dw	0,(_FLASH_DeInit)
	.dw	0,(XG$FLASH_DeInit$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	2
	.dw	0,278
	.ascii "FLASH_ITConfig"
	.db	0
	.dw	0,(_FLASH_ITConfig)
	.dw	0,(XG$FLASH_ITConfig$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,129
	.uleb128	4
	.uleb128	4
	.uleb128	0
	.uleb128	2
	.dw	0,329
	.ascii "FLASH_EraseByte"
	.db	0
	.dw	0,(_FLASH_EraseByte)
	.dw	0,(XG$FLASH_EraseByte$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "Address"
	.db	0
	.dw	0,329
	.uleb128	0
	.uleb128	5
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	2
	.dw	0,412
	.ascii "FLASH_ProgramByte"
	.db	0
	.dw	0,(_FLASH_ProgramByte)
	.dw	0,(XG$FLASH_ProgramByte$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "Address"
	.db	0
	.dw	0,329
	.uleb128	3
	.db	2
	.db	145
	.sleb128	8
	.ascii "Data"
	.db	0
	.dw	0,129
	.uleb128	0
	.uleb128	7
	.dw	0,466
	.ascii "FLASH_ReadByte"
	.db	0
	.dw	0,(_FLASH_ReadByte)
	.dw	0,(XG$FLASH_ReadByte$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.dw	0,129
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "Address"
	.db	0
	.dw	0,329
	.uleb128	0
	.uleb128	2
	.dw	0,532
	.ascii "FLASH_ProgramWord"
	.db	0
	.dw	0,(_FLASH_ProgramWord)
	.dw	0,(XG$FLASH_ProgramWord$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "Address"
	.db	0
	.dw	0,329
	.uleb128	3
	.db	2
	.db	145
	.sleb128	8
	.ascii "Data"
	.db	0
	.dw	0,329
	.uleb128	0
	.uleb128	2
	.dw	0,606
	.ascii "FLASH_ProgramOptionByte"
	.db	0
	.dw	0,(_FLASH_ProgramOptionByte)
	.dw	0,(XG$FLASH_ProgramOptionByte$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "Address"
	.db	0
	.dw	0,606
	.uleb128	3
	.db	2
	.db	145
	.sleb128	6
	.ascii "Data"
	.db	0
	.dw	0,129
	.uleb128	4
	.uleb128	4
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	2
	.dw	0,681
	.ascii "FLASH_EraseOptionByte"
	.db	0
	.dw	0,(_FLASH_EraseOptionByte)
	.dw	0,(XG$FLASH_EraseOptionByte$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "Address"
	.db	0
	.dw	0,606
	.uleb128	4
	.uleb128	4
	.uleb128	0
	.uleb128	7
	.dw	0,816
	.ascii "FLASH_ReadOptionByte"
	.db	0
	.dw	0,(_FLASH_ReadOptionByte)
	.dw	0,(XG$FLASH_ReadOptionByte$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.dw	0,606
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "Address"
	.db	0
	.dw	0,606
	.uleb128	4
	.uleb128	8
	.dw	0,749
	.uleb128	4
	.uleb128	4
	.uleb128	0
	.uleb128	9
	.db	1
	.db	81
	.ascii "value_optbyte"
	.db	0
	.dw	0,129
	.uleb128	10
	.ascii "value_optbyte_complement"
	.db	0
	.dw	0,129
	.uleb128	10
	.ascii "res_value"
	.db	0
	.dw	0,606
	.uleb128	0
	.uleb128	2
	.dw	0,878
	.ascii "FLASH_SetLowPowerMode"
	.db	0
	.dw	0,(_FLASH_SetLowPowerMode)
	.dw	0,(XG$FLASH_SetLowPowerMode$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "FLASH_LPMode"
	.db	0
	.dw	0,129
	.uleb128	0
	.uleb128	2
	.dw	0,945
	.ascii "FLASH_SetProgrammingTime"
	.db	0
	.dw	0,(_FLASH_SetProgrammingTime)
	.dw	0,(XG$FLASH_SetProgrammingTime$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "FLASH_ProgTime"
	.db	0
	.dw	0,129
	.uleb128	0
	.uleb128	11
	.ascii "FLASH_GetLowPowerMode"
	.db	0
	.dw	0,(_FLASH_GetLowPowerMode)
	.dw	0,(XG$FLASH_GetLowPowerMode$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.dw	0,129
	.uleb128	11
	.ascii "FLASH_GetProgrammingTime"
	.db	0
	.dw	0,(_FLASH_GetProgrammingTime)
	.dw	0,(XG$FLASH_GetProgrammingTime$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.dw	0,129
	.uleb128	7
	.dw	0,1083
	.ascii "FLASH_GetBootSize"
	.db	0
	.dw	0,(_FLASH_GetBootSize)
	.dw	0,(XG$FLASH_GetBootSize$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,329
	.uleb128	4
	.uleb128	9
	.db	2
	.db	145
	.sleb128	-4
	.ascii "temp"
	.db	0
	.dw	0,329
	.uleb128	0
	.uleb128	7
	.dw	0,1161
	.ascii "FLASH_GetFlagStatus"
	.db	0
	.dw	0,(_FLASH_GetFlagStatus)
	.dw	0,(XG$FLASH_GetFlagStatus$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.dw	0,129
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "FLASH_FLAG"
	.db	0
	.dw	0,129
	.uleb128	4
	.uleb128	4
	.uleb128	9
	.db	1
	.db	81
	.ascii "status"
	.db	0
	.dw	0,129
	.uleb128	0
	.uleb128	7
	.dw	0,1279
	.ascii "FLASH_WaitForLastOperation"
	.db	0
	.dw	0,(_FLASH_WaitForLastOperation)
	.dw	0,(XG$FLASH_WaitForLastOperation$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.dw	0,129
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "FLASH_MemType"
	.db	0
	.dw	0,129
	.uleb128	8
	.dw	0,1239
	.uleb128	4
	.uleb128	0
	.uleb128	8
	.dw	0,1246
	.uleb128	4
	.uleb128	0
	.uleb128	4
	.uleb128	9
	.db	1
	.db	81
	.ascii "flagstatus"
	.db	0
	.dw	0,129
	.uleb128	10
	.ascii "timeout"
	.db	0
	.dw	0,606
	.uleb128	0
	.uleb128	2
	.dw	0,1399
	.ascii "FLASH_EraseBlock"
	.db	0
	.dw	0,(_FLASH_EraseBlock)
	.dw	0,(XG$FLASH_EraseBlock$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "BlockNum"
	.db	0
	.dw	0,606
	.uleb128	3
	.db	2
	.db	145
	.sleb128	6
	.ascii "FLASH_MemType"
	.db	0
	.dw	0,129
	.uleb128	4
	.uleb128	4
	.uleb128	9
	.db	2
	.db	145
	.sleb128	-4
	.ascii "startaddress"
	.db	0
	.dw	0,329
	.uleb128	12
	.db	2
	.dw	0,329
	.uleb128	9
	.db	2
	.db	145
	.sleb128	-6
	.ascii "pwFlash"
	.db	0
	.dw	0,1376
	.uleb128	0
	.uleb128	13
	.ascii "FLASH_ProgramBlock"
	.db	0
	.dw	0,(_FLASH_ProgramBlock)
	.dw	0,(XG$FLASH_ProgramBlock$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "BlockNum"
	.db	0
	.dw	0,606
	.uleb128	3
	.db	2
	.db	145
	.sleb128	6
	.ascii "FLASH_MemType"
	.db	0
	.dw	0,129
	.uleb128	3
	.db	2
	.db	145
	.sleb128	7
	.ascii "FLASH_ProgMode"
	.db	0
	.dw	0,129
	.uleb128	12
	.db	2
	.dw	0,129
	.uleb128	3
	.db	2
	.db	145
	.sleb128	8
	.ascii "Buffer"
	.db	0
	.dw	0,1494
	.uleb128	4
	.uleb128	4
	.uleb128	4
	.uleb128	4
	.uleb128	4
	.uleb128	9
	.db	2
	.db	145
	.sleb128	-14
	.ascii "Count"
	.db	0
	.dw	0,606
	.uleb128	9
	.db	2
	.db	145
	.sleb128	-18
	.ascii "startaddress"
	.db	0
	.dw	0,329
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
	.ascii "FLASH_Unlock"
	.db	0
	.dw	0,146
	.ascii "FLASH_Lock"
	.db	0
	.dw	0,198
	.ascii "FLASH_DeInit"
	.db	0
	.dw	0,225
	.ascii "FLASH_ITConfig"
	.db	0
	.dw	0,278
	.ascii "FLASH_EraseByte"
	.db	0
	.dw	0,346
	.ascii "FLASH_ProgramByte"
	.db	0
	.dw	0,412
	.ascii "FLASH_ReadByte"
	.db	0
	.dw	0,466
	.ascii "FLASH_ProgramWord"
	.db	0
	.dw	0,532
	.ascii "FLASH_ProgramOptionByte"
	.db	0
	.dw	0,622
	.ascii "FLASH_EraseOptionByte"
	.db	0
	.dw	0,681
	.ascii "FLASH_ReadOptionByte"
	.db	0
	.dw	0,816
	.ascii "FLASH_SetLowPowerMode"
	.db	0
	.dw	0,878
	.ascii "FLASH_SetProgrammingTime"
	.db	0
	.dw	0,945
	.ascii "FLASH_GetLowPowerMode"
	.db	0
	.dw	0,985
	.ascii "FLASH_GetProgrammingTime"
	.db	0
	.dw	0,1028
	.ascii "FLASH_GetBootSize"
	.db	0
	.dw	0,1083
	.ascii "FLASH_GetFlagStatus"
	.db	0
	.dw	0,1161
	.ascii "FLASH_WaitForLastOperation"
	.db	0
	.dw	0,1279
	.ascii "FLASH_EraseBlock"
	.db	0
	.dw	0,1399
	.ascii "FLASH_ProgramBlock"
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
