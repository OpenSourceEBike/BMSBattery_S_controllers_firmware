                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_flash
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _FLASH_Unlock
                                     12 	.globl _FLASH_Lock
                                     13 	.globl _FLASH_DeInit
                                     14 	.globl _FLASH_ITConfig
                                     15 	.globl _FLASH_EraseByte
                                     16 	.globl _FLASH_ProgramByte
                                     17 	.globl _FLASH_ReadByte
                                     18 	.globl _FLASH_ProgramWord
                                     19 	.globl _FLASH_ProgramOptionByte
                                     20 	.globl _FLASH_EraseOptionByte
                                     21 	.globl _FLASH_ReadOptionByte
                                     22 	.globl _FLASH_SetLowPowerMode
                                     23 	.globl _FLASH_SetProgrammingTime
                                     24 	.globl _FLASH_GetLowPowerMode
                                     25 	.globl _FLASH_GetProgrammingTime
                                     26 	.globl _FLASH_GetBootSize
                                     27 	.globl _FLASH_GetFlagStatus
                                     28 	.globl _FLASH_WaitForLastOperation
                                     29 	.globl _FLASH_EraseBlock
                                     30 	.globl _FLASH_ProgramBlock
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                           000000    59 	Sstm8s_flash$FLASH_Unlock$0 ==.
                                     60 ;	StdPeriphLib/src/stm8s_flash.c: 87: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
                                     61 ;	-----------------------------------------
                                     62 ;	 function FLASH_Unlock
                                     63 ;	-----------------------------------------
      00B2C1                         64 _FLASH_Unlock:
      00B2C1 3B 01 A5         [ 1]   65 	push	_fp_+1
      00B2C4 3B 01 A4         [ 1]   66 	push	_fp_
      00B2C7 90 96            [ 1]   67 	ldw	y, sp
      00B2C9 90 CF 01 A4      [ 2]   68 	ldw	_fp_, y
                           00000C    69 	Sstm8s_flash$FLASH_Unlock$1 ==.
                           00000C    70 	Sstm8s_flash$FLASH_Unlock$2 ==.
                                     71 ;	StdPeriphLib/src/stm8s_flash.c: 93: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00B2CD 7B 05            [ 1]   72 	ld	a, (0x05, sp)
      00B2CF A1 FD            [ 1]   73 	cp	a, #0xfd
      00B2D1 26 0A            [ 1]   74 	jrne	00102$
                           000012    75 	Sstm8s_flash$FLASH_Unlock$3 ==.
                                     76 ;	StdPeriphLib/src/stm8s_flash.c: 95: FLASH->PUKR = FLASH_RASS_KEY1;
      00B2D3 35 56 50 62      [ 1]   77 	mov	0x5062+0, #0x56
                           000016    78 	Sstm8s_flash$FLASH_Unlock$4 ==.
                                     79 ;	StdPeriphLib/src/stm8s_flash.c: 96: FLASH->PUKR = FLASH_RASS_KEY2;
      00B2D7 35 AE 50 62      [ 1]   80 	mov	0x5062+0, #0xae
      00B2DB 20 08            [ 2]   81 	jra	00104$
      00B2DD                         82 00102$:
                           00001C    83 	Sstm8s_flash$FLASH_Unlock$5 ==.
                                     84 ;	StdPeriphLib/src/stm8s_flash.c: 101: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
      00B2DD 35 AE 50 64      [ 1]   85 	mov	0x5064+0, #0xae
                           000020    86 	Sstm8s_flash$FLASH_Unlock$6 ==.
                                     87 ;	StdPeriphLib/src/stm8s_flash.c: 102: FLASH->DUKR = FLASH_RASS_KEY1;
      00B2E1 35 56 50 64      [ 1]   88 	mov	0x5064+0, #0x56
      00B2E5                         89 00104$:
                           000024    90 	Sstm8s_flash$FLASH_Unlock$7 ==.
                                     91 ;	StdPeriphLib/src/stm8s_flash.c: 104: }
                           000024    92 	Sstm8s_flash$FLASH_Unlock$8 ==.
                           000024    93 	XG$FLASH_Unlock$0$0 ==.
      00B2E5 32 01 A4         [ 1]   94 	pop	_fp_
      00B2E8 32 01 A5         [ 1]   95 	pop	_fp_+1
      00B2EB 81               [ 4]   96 	ret
                           00002B    97 	Sstm8s_flash$FLASH_Unlock$9 ==.
                           00002B    98 	Sstm8s_flash$FLASH_Lock$10 ==.
                                     99 ;	StdPeriphLib/src/stm8s_flash.c: 112: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
                                    100 ;	-----------------------------------------
                                    101 ;	 function FLASH_Lock
                                    102 ;	-----------------------------------------
      00B2EC                        103 _FLASH_Lock:
      00B2EC 3B 01 A5         [ 1]  104 	push	_fp_+1
      00B2EF 3B 01 A4         [ 1]  105 	push	_fp_
      00B2F2 90 96            [ 1]  106 	ldw	y, sp
      00B2F4 90 CF 01 A4      [ 2]  107 	ldw	_fp_, y
                           000037   108 	Sstm8s_flash$FLASH_Lock$11 ==.
                           000037   109 	Sstm8s_flash$FLASH_Lock$12 ==.
                                    110 ;	StdPeriphLib/src/stm8s_flash.c: 118: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
      00B2F8 AE 50 5F         [ 2]  111 	ldw	x, #0x505f
      00B2FB F6               [ 1]  112 	ld	a, (x)
      00B2FC 14 05            [ 1]  113 	and	a, (0x05, sp)
      00B2FE AE 50 5F         [ 2]  114 	ldw	x, #0x505f
      00B301 F7               [ 1]  115 	ld	(x), a
                           000041   116 	Sstm8s_flash$FLASH_Lock$13 ==.
                                    117 ;	StdPeriphLib/src/stm8s_flash.c: 119: }
                           000041   118 	Sstm8s_flash$FLASH_Lock$14 ==.
                           000041   119 	XG$FLASH_Lock$0$0 ==.
      00B302 32 01 A4         [ 1]  120 	pop	_fp_
      00B305 32 01 A5         [ 1]  121 	pop	_fp_+1
      00B308 81               [ 4]  122 	ret
                           000048   123 	Sstm8s_flash$FLASH_Lock$15 ==.
                           000048   124 	Sstm8s_flash$FLASH_DeInit$16 ==.
                                    125 ;	StdPeriphLib/src/stm8s_flash.c: 126: void FLASH_DeInit(void)
                                    126 ;	-----------------------------------------
                                    127 ;	 function FLASH_DeInit
                                    128 ;	-----------------------------------------
      00B309                        129 _FLASH_DeInit:
      00B309 3B 01 A5         [ 1]  130 	push	_fp_+1
      00B30C 3B 01 A4         [ 1]  131 	push	_fp_
      00B30F 90 96            [ 1]  132 	ldw	y, sp
      00B311 90 CF 01 A4      [ 2]  133 	ldw	_fp_, y
                           000054   134 	Sstm8s_flash$FLASH_DeInit$17 ==.
                           000054   135 	Sstm8s_flash$FLASH_DeInit$18 ==.
                                    136 ;	StdPeriphLib/src/stm8s_flash.c: 128: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
      00B315 35 00 50 5A      [ 1]  137 	mov	0x505a+0, #0x00
                           000058   138 	Sstm8s_flash$FLASH_DeInit$19 ==.
                                    139 ;	StdPeriphLib/src/stm8s_flash.c: 129: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
      00B319 35 00 50 5B      [ 1]  140 	mov	0x505b+0, #0x00
                           00005C   141 	Sstm8s_flash$FLASH_DeInit$20 ==.
                                    142 ;	StdPeriphLib/src/stm8s_flash.c: 130: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
      00B31D 35 FF 50 5C      [ 1]  143 	mov	0x505c+0, #0xff
                           000060   144 	Sstm8s_flash$FLASH_DeInit$21 ==.
                                    145 ;	StdPeriphLib/src/stm8s_flash.c: 131: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
      00B321 AE 50 5F         [ 2]  146 	ldw	x, #0x505f
      00B324 F6               [ 1]  147 	ld	a, (x)
      00B325 A4 F7            [ 1]  148 	and	a, #0xf7
      00B327 F7               [ 1]  149 	ld	(x), a
                           000067   150 	Sstm8s_flash$FLASH_DeInit$22 ==.
                                    151 ;	StdPeriphLib/src/stm8s_flash.c: 132: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
      00B328 AE 50 5F         [ 2]  152 	ldw	x, #0x505f
      00B32B F6               [ 1]  153 	ld	a, (x)
      00B32C A4 FD            [ 1]  154 	and	a, #0xfd
      00B32E F7               [ 1]  155 	ld	(x), a
                           00006E   156 	Sstm8s_flash$FLASH_DeInit$23 ==.
                                    157 ;	StdPeriphLib/src/stm8s_flash.c: 133: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
      00B32F AE 50 5F         [ 2]  158 	ldw	x, #0x505f
      00B332 F6               [ 1]  159 	ld	a, (x)
                           000072   160 	Sstm8s_flash$FLASH_DeInit$24 ==.
                                    161 ;	StdPeriphLib/src/stm8s_flash.c: 134: }
                           000072   162 	Sstm8s_flash$FLASH_DeInit$25 ==.
                           000072   163 	XG$FLASH_DeInit$0$0 ==.
      00B333 32 01 A4         [ 1]  164 	pop	_fp_
      00B336 32 01 A5         [ 1]  165 	pop	_fp_+1
      00B339 81               [ 4]  166 	ret
                           000079   167 	Sstm8s_flash$FLASH_DeInit$26 ==.
                           000079   168 	Sstm8s_flash$FLASH_ITConfig$27 ==.
                                    169 ;	StdPeriphLib/src/stm8s_flash.c: 142: void FLASH_ITConfig(FunctionalState NewState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function FLASH_ITConfig
                                    172 ;	-----------------------------------------
      00B33A                        173 _FLASH_ITConfig:
      00B33A 3B 01 A5         [ 1]  174 	push	_fp_+1
      00B33D 3B 01 A4         [ 1]  175 	push	_fp_
      00B340 90 96            [ 1]  176 	ldw	y, sp
      00B342 90 CF 01 A4      [ 2]  177 	ldw	_fp_, y
                           000085   178 	Sstm8s_flash$FLASH_ITConfig$28 ==.
                           000085   179 	Sstm8s_flash$FLASH_ITConfig$29 ==.
                                    180 ;	StdPeriphLib/src/stm8s_flash.c: 147: if(NewState != DISABLE)
      00B346 0D 05            [ 1]  181 	tnz	(0x05, sp)
      00B348 27 09            [ 1]  182 	jreq	00102$
                           000089   183 	Sstm8s_flash$FLASH_ITConfig$30 ==.
                                    184 ;	StdPeriphLib/src/stm8s_flash.c: 149: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      00B34A AE 50 5A         [ 2]  185 	ldw	x, #0x505a
      00B34D F6               [ 1]  186 	ld	a, (x)
      00B34E AA 02            [ 1]  187 	or	a, #0x02
      00B350 F7               [ 1]  188 	ld	(x), a
      00B351 20 07            [ 2]  189 	jra	00104$
      00B353                        190 00102$:
                           000092   191 	Sstm8s_flash$FLASH_ITConfig$31 ==.
                                    192 ;	StdPeriphLib/src/stm8s_flash.c: 153: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
      00B353 AE 50 5A         [ 2]  193 	ldw	x, #0x505a
      00B356 F6               [ 1]  194 	ld	a, (x)
      00B357 A4 FD            [ 1]  195 	and	a, #0xfd
      00B359 F7               [ 1]  196 	ld	(x), a
      00B35A                        197 00104$:
                           000099   198 	Sstm8s_flash$FLASH_ITConfig$32 ==.
                                    199 ;	StdPeriphLib/src/stm8s_flash.c: 155: }
                           000099   200 	Sstm8s_flash$FLASH_ITConfig$33 ==.
                           000099   201 	XG$FLASH_ITConfig$0$0 ==.
      00B35A 32 01 A4         [ 1]  202 	pop	_fp_
      00B35D 32 01 A5         [ 1]  203 	pop	_fp_+1
      00B360 81               [ 4]  204 	ret
                           0000A0   205 	Sstm8s_flash$FLASH_ITConfig$34 ==.
                           0000A0   206 	Sstm8s_flash$FLASH_EraseByte$35 ==.
                                    207 ;	StdPeriphLib/src/stm8s_flash.c: 164: void FLASH_EraseByte(uint32_t Address)
                                    208 ;	-----------------------------------------
                                    209 ;	 function FLASH_EraseByte
                                    210 ;	-----------------------------------------
      00B361                        211 _FLASH_EraseByte:
      00B361 3B 01 A5         [ 1]  212 	push	_fp_+1
      00B364 3B 01 A4         [ 1]  213 	push	_fp_
      00B367 90 96            [ 1]  214 	ldw	y, sp
      00B369 90 CF 01 A4      [ 2]  215 	ldw	_fp_, y
                           0000AC   216 	Sstm8s_flash$FLASH_EraseByte$36 ==.
                           0000AC   217 	Sstm8s_flash$FLASH_EraseByte$37 ==.
                                    218 ;	StdPeriphLib/src/stm8s_flash.c: 170: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
      00B36D 1E 07            [ 2]  219 	ldw	x, (0x07, sp)
      00B36F 7F               [ 1]  220 	clr	(x)
                           0000AF   221 	Sstm8s_flash$FLASH_EraseByte$38 ==.
                                    222 ;	StdPeriphLib/src/stm8s_flash.c: 171: }
                           0000AF   223 	Sstm8s_flash$FLASH_EraseByte$39 ==.
                           0000AF   224 	XG$FLASH_EraseByte$0$0 ==.
      00B370 32 01 A4         [ 1]  225 	pop	_fp_
      00B373 32 01 A5         [ 1]  226 	pop	_fp_+1
      00B376 81               [ 4]  227 	ret
                           0000B6   228 	Sstm8s_flash$FLASH_EraseByte$40 ==.
                           0000B6   229 	Sstm8s_flash$FLASH_ProgramByte$41 ==.
                                    230 ;	StdPeriphLib/src/stm8s_flash.c: 181: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
                                    231 ;	-----------------------------------------
                                    232 ;	 function FLASH_ProgramByte
                                    233 ;	-----------------------------------------
      00B377                        234 _FLASH_ProgramByte:
      00B377 3B 01 A5         [ 1]  235 	push	_fp_+1
      00B37A 3B 01 A4         [ 1]  236 	push	_fp_
      00B37D 90 96            [ 1]  237 	ldw	y, sp
      00B37F 90 CF 01 A4      [ 2]  238 	ldw	_fp_, y
                           0000C2   239 	Sstm8s_flash$FLASH_ProgramByte$42 ==.
                           0000C2   240 	Sstm8s_flash$FLASH_ProgramByte$43 ==.
                                    241 ;	StdPeriphLib/src/stm8s_flash.c: 185: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
      00B383 1E 07            [ 2]  242 	ldw	x, (0x07, sp)
      00B385 7B 09            [ 1]  243 	ld	a, (0x09, sp)
      00B387 F7               [ 1]  244 	ld	(x), a
                           0000C7   245 	Sstm8s_flash$FLASH_ProgramByte$44 ==.
                                    246 ;	StdPeriphLib/src/stm8s_flash.c: 186: }
                           0000C7   247 	Sstm8s_flash$FLASH_ProgramByte$45 ==.
                           0000C7   248 	XG$FLASH_ProgramByte$0$0 ==.
      00B388 32 01 A4         [ 1]  249 	pop	_fp_
      00B38B 32 01 A5         [ 1]  250 	pop	_fp_+1
      00B38E 81               [ 4]  251 	ret
                           0000CE   252 	Sstm8s_flash$FLASH_ProgramByte$46 ==.
                           0000CE   253 	Sstm8s_flash$FLASH_ReadByte$47 ==.
                                    254 ;	StdPeriphLib/src/stm8s_flash.c: 195: uint8_t FLASH_ReadByte(uint32_t Address)
                                    255 ;	-----------------------------------------
                                    256 ;	 function FLASH_ReadByte
                                    257 ;	-----------------------------------------
      00B38F                        258 _FLASH_ReadByte:
      00B38F 3B 01 A5         [ 1]  259 	push	_fp_+1
      00B392 3B 01 A4         [ 1]  260 	push	_fp_
      00B395 90 96            [ 1]  261 	ldw	y, sp
      00B397 90 CF 01 A4      [ 2]  262 	ldw	_fp_, y
                           0000DA   263 	Sstm8s_flash$FLASH_ReadByte$48 ==.
                           0000DA   264 	Sstm8s_flash$FLASH_ReadByte$49 ==.
                                    265 ;	StdPeriphLib/src/stm8s_flash.c: 201: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address);
      00B39B 1E 07            [ 2]  266 	ldw	x, (0x07, sp)
      00B39D F6               [ 1]  267 	ld	a, (x)
                           0000DD   268 	Sstm8s_flash$FLASH_ReadByte$50 ==.
                                    269 ;	StdPeriphLib/src/stm8s_flash.c: 202: }
                           0000DD   270 	Sstm8s_flash$FLASH_ReadByte$51 ==.
                           0000DD   271 	XG$FLASH_ReadByte$0$0 ==.
      00B39E 32 01 A4         [ 1]  272 	pop	_fp_
      00B3A1 32 01 A5         [ 1]  273 	pop	_fp_+1
      00B3A4 81               [ 4]  274 	ret
                           0000E4   275 	Sstm8s_flash$FLASH_ReadByte$52 ==.
                           0000E4   276 	Sstm8s_flash$FLASH_ProgramWord$53 ==.
                                    277 ;	StdPeriphLib/src/stm8s_flash.c: 212: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
                                    278 ;	-----------------------------------------
                                    279 ;	 function FLASH_ProgramWord
                                    280 ;	-----------------------------------------
      00B3A5                        281 _FLASH_ProgramWord:
      00B3A5 3B 01 A5         [ 1]  282 	push	_fp_+1
      00B3A8 3B 01 A4         [ 1]  283 	push	_fp_
      00B3AB 90 96            [ 1]  284 	ldw	y, sp
      00B3AD 90 CF 01 A4      [ 2]  285 	ldw	_fp_, y
                           0000F0   286 	Sstm8s_flash$FLASH_ProgramWord$54 ==.
      00B3B1 52 04            [ 2]  287 	sub	sp, #4
                           0000F2   288 	Sstm8s_flash$FLASH_ProgramWord$55 ==.
                                    289 ;	StdPeriphLib/src/stm8s_flash.c: 218: FLASH->CR2 |= FLASH_CR2_WPRG;
      00B3B3 AE 50 5B         [ 2]  290 	ldw	x, #0x505b
      00B3B6 F6               [ 1]  291 	ld	a, (x)
      00B3B7 AA 40            [ 1]  292 	or	a, #0x40
      00B3B9 F7               [ 1]  293 	ld	(x), a
                           0000F9   294 	Sstm8s_flash$FLASH_ProgramWord$56 ==.
                                    295 ;	StdPeriphLib/src/stm8s_flash.c: 219: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
      00B3BA AE 50 5C         [ 2]  296 	ldw	x, #0x505c
      00B3BD F6               [ 1]  297 	ld	a, (x)
      00B3BE A4 BF            [ 1]  298 	and	a, #0xbf
      00B3C0 F7               [ 1]  299 	ld	(x), a
                           000100   300 	Sstm8s_flash$FLASH_ProgramWord$57 ==.
                                    301 ;	StdPeriphLib/src/stm8s_flash.c: 222: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
      00B3C1 1E 0B            [ 2]  302 	ldw	x, (0x0b, sp)
      00B3C3 1F 03            [ 2]  303 	ldw	(0x03, sp), x
      00B3C5 96               [ 1]  304 	ldw	x, sp
      00B3C6 1C 00 0D         [ 2]  305 	addw	x, #13
      00B3C9 1F 01            [ 2]  306 	ldw	(0x01, sp), x
      00B3CB 1E 01            [ 2]  307 	ldw	x, (0x01, sp)
      00B3CD F6               [ 1]  308 	ld	a, (x)
      00B3CE 1E 03            [ 2]  309 	ldw	x, (0x03, sp)
      00B3D0 F7               [ 1]  310 	ld	(x), a
                           000110   311 	Sstm8s_flash$FLASH_ProgramWord$58 ==.
                                    312 ;	StdPeriphLib/src/stm8s_flash.c: 224: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1);
      00B3D1 1E 03            [ 2]  313 	ldw	x, (0x03, sp)
      00B3D3 5C               [ 2]  314 	incw	x
      00B3D4 16 01            [ 2]  315 	ldw	y, (0x01, sp)
      00B3D6 90 E6 01         [ 1]  316 	ld	a, (0x1, y)
      00B3D9 F7               [ 1]  317 	ld	(x), a
                           000119   318 	Sstm8s_flash$FLASH_ProgramWord$59 ==.
                                    319 ;	StdPeriphLib/src/stm8s_flash.c: 226: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2);
      00B3DA 1E 03            [ 2]  320 	ldw	x, (0x03, sp)
      00B3DC 5C               [ 2]  321 	incw	x
      00B3DD 5C               [ 2]  322 	incw	x
      00B3DE 16 01            [ 2]  323 	ldw	y, (0x01, sp)
      00B3E0 90 E6 02         [ 1]  324 	ld	a, (0x2, y)
      00B3E3 F7               [ 1]  325 	ld	(x), a
                           000123   326 	Sstm8s_flash$FLASH_ProgramWord$60 ==.
                                    327 ;	StdPeriphLib/src/stm8s_flash.c: 228: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3);
      00B3E4 1E 03            [ 2]  328 	ldw	x, (0x03, sp)
      00B3E6 1C 00 03         [ 2]  329 	addw	x, #0x0003
      00B3E9 16 01            [ 2]  330 	ldw	y, (0x01, sp)
      00B3EB 90 E6 03         [ 1]  331 	ld	a, (0x3, y)
      00B3EE F7               [ 1]  332 	ld	(x), a
                           00012E   333 	Sstm8s_flash$FLASH_ProgramWord$61 ==.
                                    334 ;	StdPeriphLib/src/stm8s_flash.c: 229: }
      00B3EF 5B 04            [ 2]  335 	addw	sp, #4
                           000130   336 	Sstm8s_flash$FLASH_ProgramWord$62 ==.
                           000130   337 	XG$FLASH_ProgramWord$0$0 ==.
      00B3F1 32 01 A4         [ 1]  338 	pop	_fp_
      00B3F4 32 01 A5         [ 1]  339 	pop	_fp_+1
      00B3F7 81               [ 4]  340 	ret
                           000137   341 	Sstm8s_flash$FLASH_ProgramWord$63 ==.
                           000137   342 	Sstm8s_flash$FLASH_ProgramOptionByte$64 ==.
                                    343 ;	StdPeriphLib/src/stm8s_flash.c: 237: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
                                    344 ;	-----------------------------------------
                                    345 ;	 function FLASH_ProgramOptionByte
                                    346 ;	-----------------------------------------
      00B3F8                        347 _FLASH_ProgramOptionByte:
      00B3F8 3B 01 A5         [ 1]  348 	push	_fp_+1
      00B3FB 3B 01 A4         [ 1]  349 	push	_fp_
      00B3FE 90 96            [ 1]  350 	ldw	y, sp
      00B400 90 CF 01 A4      [ 2]  351 	ldw	_fp_, y
                           000143   352 	Sstm8s_flash$FLASH_ProgramOptionByte$65 ==.
                           000143   353 	Sstm8s_flash$FLASH_ProgramOptionByte$66 ==.
                                    354 ;	StdPeriphLib/src/stm8s_flash.c: 243: FLASH->CR2 |= FLASH_CR2_OPT;
      00B404 72 1E 50 5B      [ 1]  355 	bset	0x505b, #7
                           000147   356 	Sstm8s_flash$FLASH_ProgramOptionByte$67 ==.
                                    357 ;	StdPeriphLib/src/stm8s_flash.c: 244: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00B408 AE 50 5C         [ 2]  358 	ldw	x, #0x505c
      00B40B F6               [ 1]  359 	ld	a, (x)
      00B40C A4 7F            [ 1]  360 	and	a, #0x7f
      00B40E F7               [ 1]  361 	ld	(x), a
                           00014E   362 	Sstm8s_flash$FLASH_ProgramOptionByte$68 ==.
                                    363 ;	StdPeriphLib/src/stm8s_flash.c: 247: if(Address == 0x4800)
      00B40F 1E 05            [ 2]  364 	ldw	x, (0x05, sp)
      00B411 A3 48 00         [ 2]  365 	cpw	x, #0x4800
      00B414 26 07            [ 1]  366 	jrne	00102$
                           000155   367 	Sstm8s_flash$FLASH_ProgramOptionByte$69 ==.
                                    368 ;	StdPeriphLib/src/stm8s_flash.c: 250: *((NEAR uint8_t*)Address) = Data;
      00B416 1E 05            [ 2]  369 	ldw	x, (0x05, sp)
      00B418 7B 07            [ 1]  370 	ld	a, (0x07, sp)
      00B41A F7               [ 1]  371 	ld	(x), a
      00B41B 20 0C            [ 2]  372 	jra	00103$
      00B41D                        373 00102$:
                           00015C   374 	Sstm8s_flash$FLASH_ProgramOptionByte$70 ==.
                                    375 ;	StdPeriphLib/src/stm8s_flash.c: 255: *((NEAR uint8_t*)Address) = Data;
      00B41D 1E 05            [ 2]  376 	ldw	x, (0x05, sp)
      00B41F 7B 07            [ 1]  377 	ld	a, (0x07, sp)
      00B421 F7               [ 1]  378 	ld	(x), a
                           000161   379 	Sstm8s_flash$FLASH_ProgramOptionByte$71 ==.
                                    380 ;	StdPeriphLib/src/stm8s_flash.c: 256: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
      00B422 1E 05            [ 2]  381 	ldw	x, (0x05, sp)
      00B424 5C               [ 2]  382 	incw	x
      00B425 7B 07            [ 1]  383 	ld	a, (0x07, sp)
      00B427 43               [ 1]  384 	cpl	a
      00B428 F7               [ 1]  385 	ld	(x), a
      00B429                        386 00103$:
                           000168   387 	Sstm8s_flash$FLASH_ProgramOptionByte$72 ==.
                                    388 ;	StdPeriphLib/src/stm8s_flash.c: 258: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00B429 4B FD            [ 1]  389 	push	#0xfd
      00B42B CD B5 A8         [ 4]  390 	call	_FLASH_WaitForLastOperation
      00B42E 84               [ 1]  391 	pop	a
                           00016E   392 	Sstm8s_flash$FLASH_ProgramOptionByte$73 ==.
                                    393 ;	StdPeriphLib/src/stm8s_flash.c: 261: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00B42F 72 1F 50 5B      [ 1]  394 	bres	0x505b, #7
                           000172   395 	Sstm8s_flash$FLASH_ProgramOptionByte$74 ==.
                                    396 ;	StdPeriphLib/src/stm8s_flash.c: 262: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00B433 72 1E 50 5C      [ 1]  397 	bset	0x505c, #7
                           000176   398 	Sstm8s_flash$FLASH_ProgramOptionByte$75 ==.
                                    399 ;	StdPeriphLib/src/stm8s_flash.c: 263: }
                           000176   400 	Sstm8s_flash$FLASH_ProgramOptionByte$76 ==.
                           000176   401 	XG$FLASH_ProgramOptionByte$0$0 ==.
      00B437 32 01 A4         [ 1]  402 	pop	_fp_
      00B43A 32 01 A5         [ 1]  403 	pop	_fp_+1
      00B43D 81               [ 4]  404 	ret
                           00017D   405 	Sstm8s_flash$FLASH_ProgramOptionByte$77 ==.
                           00017D   406 	Sstm8s_flash$FLASH_EraseOptionByte$78 ==.
                                    407 ;	StdPeriphLib/src/stm8s_flash.c: 270: void FLASH_EraseOptionByte(uint16_t Address)
                                    408 ;	-----------------------------------------
                                    409 ;	 function FLASH_EraseOptionByte
                                    410 ;	-----------------------------------------
      00B43E                        411 _FLASH_EraseOptionByte:
      00B43E 3B 01 A5         [ 1]  412 	push	_fp_+1
      00B441 3B 01 A4         [ 1]  413 	push	_fp_
      00B444 90 96            [ 1]  414 	ldw	y, sp
      00B446 90 CF 01 A4      [ 2]  415 	ldw	_fp_, y
                           000189   416 	Sstm8s_flash$FLASH_EraseOptionByte$79 ==.
                           000189   417 	Sstm8s_flash$FLASH_EraseOptionByte$80 ==.
                                    418 ;	StdPeriphLib/src/stm8s_flash.c: 276: FLASH->CR2 |= FLASH_CR2_OPT;
      00B44A 72 1E 50 5B      [ 1]  419 	bset	0x505b, #7
                           00018D   420 	Sstm8s_flash$FLASH_EraseOptionByte$81 ==.
                                    421 ;	StdPeriphLib/src/stm8s_flash.c: 277: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00B44E AE 50 5C         [ 2]  422 	ldw	x, #0x505c
      00B451 F6               [ 1]  423 	ld	a, (x)
      00B452 A4 7F            [ 1]  424 	and	a, #0x7f
      00B454 F7               [ 1]  425 	ld	(x), a
                           000194   426 	Sstm8s_flash$FLASH_EraseOptionByte$82 ==.
                                    427 ;	StdPeriphLib/src/stm8s_flash.c: 280: if(Address == 0x4800)
      00B455 1E 05            [ 2]  428 	ldw	x, (0x05, sp)
      00B457 A3 48 00         [ 2]  429 	cpw	x, #0x4800
      00B45A 26 05            [ 1]  430 	jrne	00102$
                           00019B   431 	Sstm8s_flash$FLASH_EraseOptionByte$83 ==.
                                    432 ;	StdPeriphLib/src/stm8s_flash.c: 283: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00B45C 1E 05            [ 2]  433 	ldw	x, (0x05, sp)
      00B45E 7F               [ 1]  434 	clr	(x)
      00B45F 20 09            [ 2]  435 	jra	00103$
      00B461                        436 00102$:
                           0001A0   437 	Sstm8s_flash$FLASH_EraseOptionByte$84 ==.
                                    438 ;	StdPeriphLib/src/stm8s_flash.c: 288: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00B461 1E 05            [ 2]  439 	ldw	x, (0x05, sp)
      00B463 7F               [ 1]  440 	clr	(x)
                           0001A3   441 	Sstm8s_flash$FLASH_EraseOptionByte$85 ==.
                                    442 ;	StdPeriphLib/src/stm8s_flash.c: 289: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
      00B464 1E 05            [ 2]  443 	ldw	x, (0x05, sp)
      00B466 5C               [ 2]  444 	incw	x
      00B467 A6 FF            [ 1]  445 	ld	a, #0xff
      00B469 F7               [ 1]  446 	ld	(x), a
      00B46A                        447 00103$:
                           0001A9   448 	Sstm8s_flash$FLASH_EraseOptionByte$86 ==.
                                    449 ;	StdPeriphLib/src/stm8s_flash.c: 291: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00B46A 4B FD            [ 1]  450 	push	#0xfd
      00B46C CD B5 A8         [ 4]  451 	call	_FLASH_WaitForLastOperation
      00B46F 84               [ 1]  452 	pop	a
                           0001AF   453 	Sstm8s_flash$FLASH_EraseOptionByte$87 ==.
                                    454 ;	StdPeriphLib/src/stm8s_flash.c: 294: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00B470 72 1F 50 5B      [ 1]  455 	bres	0x505b, #7
                           0001B3   456 	Sstm8s_flash$FLASH_EraseOptionByte$88 ==.
                                    457 ;	StdPeriphLib/src/stm8s_flash.c: 295: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00B474 72 1E 50 5C      [ 1]  458 	bset	0x505c, #7
                           0001B7   459 	Sstm8s_flash$FLASH_EraseOptionByte$89 ==.
                                    460 ;	StdPeriphLib/src/stm8s_flash.c: 296: }
                           0001B7   461 	Sstm8s_flash$FLASH_EraseOptionByte$90 ==.
                           0001B7   462 	XG$FLASH_EraseOptionByte$0$0 ==.
      00B478 32 01 A4         [ 1]  463 	pop	_fp_
      00B47B 32 01 A5         [ 1]  464 	pop	_fp_+1
      00B47E 81               [ 4]  465 	ret
                           0001BE   466 	Sstm8s_flash$FLASH_EraseOptionByte$91 ==.
                           0001BE   467 	Sstm8s_flash$FLASH_ReadOptionByte$92 ==.
                                    468 ;	StdPeriphLib/src/stm8s_flash.c: 303: uint16_t FLASH_ReadOptionByte(uint16_t Address)
                                    469 ;	-----------------------------------------
                                    470 ;	 function FLASH_ReadOptionByte
                                    471 ;	-----------------------------------------
      00B47F                        472 _FLASH_ReadOptionByte:
      00B47F 3B 01 A5         [ 1]  473 	push	_fp_+1
      00B482 3B 01 A4         [ 1]  474 	push	_fp_
      00B485 90 96            [ 1]  475 	ldw	y, sp
      00B487 90 CF 01 A4      [ 2]  476 	ldw	_fp_, y
                           0001CA   477 	Sstm8s_flash$FLASH_ReadOptionByte$93 ==.
      00B48B 52 03            [ 2]  478 	sub	sp, #3
                           0001CC   479 	Sstm8s_flash$FLASH_ReadOptionByte$94 ==.
                                    480 ;	StdPeriphLib/src/stm8s_flash.c: 311: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
      00B48D 1E 08            [ 2]  481 	ldw	x, (0x08, sp)
      00B48F F6               [ 1]  482 	ld	a, (x)
                           0001CF   483 	Sstm8s_flash$FLASH_ReadOptionByte$95 ==.
                                    484 ;	StdPeriphLib/src/stm8s_flash.c: 312: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
      00B490 88               [ 1]  485 	push	a
      00B491 E6 01            [ 1]  486 	ld	a, (0x1, x)
      00B493 90 97            [ 1]  487 	ld	yl, a
      00B495 84               [ 1]  488 	pop	a
                           0001D5   489 	Sstm8s_flash$FLASH_ReadOptionByte$96 ==.
                                    490 ;	StdPeriphLib/src/stm8s_flash.c: 315: if(Address == 0x4800)
      00B496 1E 08            [ 2]  491 	ldw	x, (0x08, sp)
      00B498 A3 48 00         [ 2]  492 	cpw	x, #0x4800
      00B49B 26 04            [ 1]  493 	jrne	00105$
                           0001DC   494 	Sstm8s_flash$FLASH_ReadOptionByte$97 ==.
                                    495 ;	StdPeriphLib/src/stm8s_flash.c: 317: res_value =	 value_optbyte;
      00B49D 5F               [ 1]  496 	clrw	x
      00B49E 97               [ 1]  497 	ld	xl, a
      00B49F 20 20            [ 2]  498 	jra	00106$
      00B4A1                        499 00105$:
                           0001E0   500 	Sstm8s_flash$FLASH_ReadOptionByte$98 ==.
                                    501 ;	StdPeriphLib/src/stm8s_flash.c: 321: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
      00B4A1 88               [ 1]  502 	push	a
      00B4A2 90 9F            [ 1]  503 	ld	a, yl
      00B4A4 43               [ 1]  504 	cpl	a
      00B4A5 6B 02            [ 1]  505 	ld	(0x02, sp), a
      00B4A7 84               [ 1]  506 	pop	a
      00B4A8 11 01            [ 1]  507 	cp	a, (0x01, sp)
      00B4AA 26 12            [ 1]  508 	jrne	00102$
                           0001EB   509 	Sstm8s_flash$FLASH_ReadOptionByte$99 ==.
                                    510 ;	StdPeriphLib/src/stm8s_flash.c: 323: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
      00B4AC 97               [ 1]  511 	ld	xl, a
      00B4AD 4F               [ 1]  512 	clr	a
      00B4AE 4F               [ 1]  513 	clr	a
      00B4AF 02               [ 1]  514 	rlwa	x
                           0001EF   515 	Sstm8s_flash$FLASH_ReadOptionByte$100 ==.
                                    516 ;	StdPeriphLib/src/stm8s_flash.c: 324: res_value = res_value | (uint16_t)value_optbyte_complement;
      00B4B0 90 9F            [ 1]  517 	ld	a, yl
      00B4B2 0F 02            [ 1]  518 	clr	(0x02, sp)
      00B4B4 89               [ 2]  519 	pushw	x
      00B4B5 1A 02            [ 1]  520 	or	a, (2, sp)
      00B4B7 85               [ 2]  521 	popw	x
      00B4B8 02               [ 1]  522 	rlwa	x
      00B4B9 1A 02            [ 1]  523 	or	a, (0x02, sp)
      00B4BB 95               [ 1]  524 	ld	xh, a
      00B4BC 20 03            [ 2]  525 	jra	00106$
      00B4BE                        526 00102$:
                           0001FD   527 	Sstm8s_flash$FLASH_ReadOptionByte$101 ==.
                                    528 ;	StdPeriphLib/src/stm8s_flash.c: 328: res_value = FLASH_OPTIONBYTE_ERROR;
      00B4BE AE 55 55         [ 2]  529 	ldw	x, #0x5555
      00B4C1                        530 00106$:
                           000200   531 	Sstm8s_flash$FLASH_ReadOptionByte$102 ==.
                                    532 ;	StdPeriphLib/src/stm8s_flash.c: 331: return(res_value);
                           000200   533 	Sstm8s_flash$FLASH_ReadOptionByte$103 ==.
                                    534 ;	StdPeriphLib/src/stm8s_flash.c: 332: }
      00B4C1 5B 03            [ 2]  535 	addw	sp, #3
                           000202   536 	Sstm8s_flash$FLASH_ReadOptionByte$104 ==.
                           000202   537 	XG$FLASH_ReadOptionByte$0$0 ==.
      00B4C3 32 01 A4         [ 1]  538 	pop	_fp_
      00B4C6 32 01 A5         [ 1]  539 	pop	_fp_+1
      00B4C9 81               [ 4]  540 	ret
                           000209   541 	Sstm8s_flash$FLASH_ReadOptionByte$105 ==.
                           000209   542 	Sstm8s_flash$FLASH_SetLowPowerMode$106 ==.
                                    543 ;	StdPeriphLib/src/stm8s_flash.c: 340: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
                                    544 ;	-----------------------------------------
                                    545 ;	 function FLASH_SetLowPowerMode
                                    546 ;	-----------------------------------------
      00B4CA                        547 _FLASH_SetLowPowerMode:
      00B4CA 3B 01 A5         [ 1]  548 	push	_fp_+1
      00B4CD 3B 01 A4         [ 1]  549 	push	_fp_
      00B4D0 90 96            [ 1]  550 	ldw	y, sp
      00B4D2 90 CF 01 A4      [ 2]  551 	ldw	_fp_, y
                           000215   552 	Sstm8s_flash$FLASH_SetLowPowerMode$107 ==.
                           000215   553 	Sstm8s_flash$FLASH_SetLowPowerMode$108 ==.
                                    554 ;	StdPeriphLib/src/stm8s_flash.c: 346: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT));
      00B4D6 AE 50 5A         [ 2]  555 	ldw	x, #0x505a
      00B4D9 F6               [ 1]  556 	ld	a, (x)
      00B4DA A4 F3            [ 1]  557 	and	a, #0xf3
      00B4DC F7               [ 1]  558 	ld	(x), a
                           00021C   559 	Sstm8s_flash$FLASH_SetLowPowerMode$109 ==.
                                    560 ;	StdPeriphLib/src/stm8s_flash.c: 349: FLASH->CR1 |= (uint8_t)FLASH_LPMode;
      00B4DD AE 50 5A         [ 2]  561 	ldw	x, #0x505a
      00B4E0 F6               [ 1]  562 	ld	a, (x)
      00B4E1 1A 05            [ 1]  563 	or	a, (0x05, sp)
      00B4E3 AE 50 5A         [ 2]  564 	ldw	x, #0x505a
      00B4E6 F7               [ 1]  565 	ld	(x), a
                           000226   566 	Sstm8s_flash$FLASH_SetLowPowerMode$110 ==.
                                    567 ;	StdPeriphLib/src/stm8s_flash.c: 350: }
                           000226   568 	Sstm8s_flash$FLASH_SetLowPowerMode$111 ==.
                           000226   569 	XG$FLASH_SetLowPowerMode$0$0 ==.
      00B4E7 32 01 A4         [ 1]  570 	pop	_fp_
      00B4EA 32 01 A5         [ 1]  571 	pop	_fp_+1
      00B4ED 81               [ 4]  572 	ret
                           00022D   573 	Sstm8s_flash$FLASH_SetLowPowerMode$112 ==.
                           00022D   574 	Sstm8s_flash$FLASH_SetProgrammingTime$113 ==.
                                    575 ;	StdPeriphLib/src/stm8s_flash.c: 358: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
                                    576 ;	-----------------------------------------
                                    577 ;	 function FLASH_SetProgrammingTime
                                    578 ;	-----------------------------------------
      00B4EE                        579 _FLASH_SetProgrammingTime:
      00B4EE 3B 01 A5         [ 1]  580 	push	_fp_+1
      00B4F1 3B 01 A4         [ 1]  581 	push	_fp_
      00B4F4 90 96            [ 1]  582 	ldw	y, sp
      00B4F6 90 CF 01 A4      [ 2]  583 	ldw	_fp_, y
                           000239   584 	Sstm8s_flash$FLASH_SetProgrammingTime$114 ==.
                           000239   585 	Sstm8s_flash$FLASH_SetProgrammingTime$115 ==.
                                    586 ;	StdPeriphLib/src/stm8s_flash.c: 363: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
      00B4FA 72 11 50 5A      [ 1]  587 	bres	0x505a, #0
                           00023D   588 	Sstm8s_flash$FLASH_SetProgrammingTime$116 ==.
                                    589 ;	StdPeriphLib/src/stm8s_flash.c: 364: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
      00B4FE AE 50 5A         [ 2]  590 	ldw	x, #0x505a
      00B501 F6               [ 1]  591 	ld	a, (x)
      00B502 1A 05            [ 1]  592 	or	a, (0x05, sp)
      00B504 AE 50 5A         [ 2]  593 	ldw	x, #0x505a
      00B507 F7               [ 1]  594 	ld	(x), a
                           000247   595 	Sstm8s_flash$FLASH_SetProgrammingTime$117 ==.
                                    596 ;	StdPeriphLib/src/stm8s_flash.c: 365: }
                           000247   597 	Sstm8s_flash$FLASH_SetProgrammingTime$118 ==.
                           000247   598 	XG$FLASH_SetProgrammingTime$0$0 ==.
      00B508 32 01 A4         [ 1]  599 	pop	_fp_
      00B50B 32 01 A5         [ 1]  600 	pop	_fp_+1
      00B50E 81               [ 4]  601 	ret
                           00024E   602 	Sstm8s_flash$FLASH_SetProgrammingTime$119 ==.
                           00024E   603 	Sstm8s_flash$FLASH_GetLowPowerMode$120 ==.
                                    604 ;	StdPeriphLib/src/stm8s_flash.c: 372: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
                                    605 ;	-----------------------------------------
                                    606 ;	 function FLASH_GetLowPowerMode
                                    607 ;	-----------------------------------------
      00B50F                        608 _FLASH_GetLowPowerMode:
      00B50F 3B 01 A5         [ 1]  609 	push	_fp_+1
      00B512 3B 01 A4         [ 1]  610 	push	_fp_
      00B515 90 96            [ 1]  611 	ldw	y, sp
      00B517 90 CF 01 A4      [ 2]  612 	ldw	_fp_, y
                           00025A   613 	Sstm8s_flash$FLASH_GetLowPowerMode$121 ==.
                           00025A   614 	Sstm8s_flash$FLASH_GetLowPowerMode$122 ==.
                                    615 ;	StdPeriphLib/src/stm8s_flash.c: 374: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
      00B51B AE 50 5A         [ 2]  616 	ldw	x, #0x505a
      00B51E F6               [ 1]  617 	ld	a, (x)
      00B51F A4 0C            [ 1]  618 	and	a, #0x0c
                           000260   619 	Sstm8s_flash$FLASH_GetLowPowerMode$123 ==.
                                    620 ;	StdPeriphLib/src/stm8s_flash.c: 375: }
                           000260   621 	Sstm8s_flash$FLASH_GetLowPowerMode$124 ==.
                           000260   622 	XG$FLASH_GetLowPowerMode$0$0 ==.
      00B521 32 01 A4         [ 1]  623 	pop	_fp_
      00B524 32 01 A5         [ 1]  624 	pop	_fp_+1
      00B527 81               [ 4]  625 	ret
                           000267   626 	Sstm8s_flash$FLASH_GetLowPowerMode$125 ==.
                           000267   627 	Sstm8s_flash$FLASH_GetProgrammingTime$126 ==.
                                    628 ;	StdPeriphLib/src/stm8s_flash.c: 382: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
                                    629 ;	-----------------------------------------
                                    630 ;	 function FLASH_GetProgrammingTime
                                    631 ;	-----------------------------------------
      00B528                        632 _FLASH_GetProgrammingTime:
      00B528 3B 01 A5         [ 1]  633 	push	_fp_+1
      00B52B 3B 01 A4         [ 1]  634 	push	_fp_
      00B52E 90 96            [ 1]  635 	ldw	y, sp
      00B530 90 CF 01 A4      [ 2]  636 	ldw	_fp_, y
                           000273   637 	Sstm8s_flash$FLASH_GetProgrammingTime$127 ==.
                           000273   638 	Sstm8s_flash$FLASH_GetProgrammingTime$128 ==.
                                    639 ;	StdPeriphLib/src/stm8s_flash.c: 384: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
      00B534 AE 50 5A         [ 2]  640 	ldw	x, #0x505a
      00B537 F6               [ 1]  641 	ld	a, (x)
      00B538 A4 01            [ 1]  642 	and	a, #0x01
                           000279   643 	Sstm8s_flash$FLASH_GetProgrammingTime$129 ==.
                                    644 ;	StdPeriphLib/src/stm8s_flash.c: 385: }
                           000279   645 	Sstm8s_flash$FLASH_GetProgrammingTime$130 ==.
                           000279   646 	XG$FLASH_GetProgrammingTime$0$0 ==.
      00B53A 32 01 A4         [ 1]  647 	pop	_fp_
      00B53D 32 01 A5         [ 1]  648 	pop	_fp_+1
      00B540 81               [ 4]  649 	ret
                           000280   650 	Sstm8s_flash$FLASH_GetProgrammingTime$131 ==.
                           000280   651 	Sstm8s_flash$FLASH_GetBootSize$132 ==.
                                    652 ;	StdPeriphLib/src/stm8s_flash.c: 392: uint32_t FLASH_GetBootSize(void)
                                    653 ;	-----------------------------------------
                                    654 ;	 function FLASH_GetBootSize
                                    655 ;	-----------------------------------------
      00B541                        656 _FLASH_GetBootSize:
      00B541 3B 01 A5         [ 1]  657 	push	_fp_+1
      00B544 3B 01 A4         [ 1]  658 	push	_fp_
      00B547 90 96            [ 1]  659 	ldw	y, sp
      00B549 90 CF 01 A4      [ 2]  660 	ldw	_fp_, y
                           00028C   661 	Sstm8s_flash$FLASH_GetBootSize$133 ==.
      00B54D 52 04            [ 2]  662 	sub	sp, #4
                           00028E   663 	Sstm8s_flash$FLASH_GetBootSize$134 ==.
                                    664 ;	StdPeriphLib/src/stm8s_flash.c: 397: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
      00B54F AE 50 5D         [ 2]  665 	ldw	x, #0x505d
      00B552 F6               [ 1]  666 	ld	a, (x)
      00B553 5F               [ 1]  667 	clrw	x
      00B554 97               [ 1]  668 	ld	xl, a
      00B555 90 5F            [ 1]  669 	clrw	y
      00B557 A6 09            [ 1]  670 	ld	a, #0x09
      00B559                        671 00108$:
      00B559 58               [ 2]  672 	sllw	x
      00B55A 90 59            [ 2]  673 	rlcw	y
      00B55C 4A               [ 1]  674 	dec	a
      00B55D 26 FA            [ 1]  675 	jrne	00108$
      00B55F 17 01            [ 2]  676 	ldw	(0x01, sp), y
                           0002A0   677 	Sstm8s_flash$FLASH_GetBootSize$135 ==.
                                    678 ;	StdPeriphLib/src/stm8s_flash.c: 400: if(FLASH->FPR == 0xFF)
      00B561 90 AE 50 5D      [ 2]  679 	ldw	y, #0x505d
      00B565 90 F6            [ 1]  680 	ld	a, (y)
      00B567 A1 FF            [ 1]  681 	cp	a, #0xff
      00B569 26 11            [ 1]  682 	jrne	00102$
                           0002AA   683 	Sstm8s_flash$FLASH_GetBootSize$136 ==.
                                    684 ;	StdPeriphLib/src/stm8s_flash.c: 402: temp += 512;
      00B56B 1C 02 00         [ 2]  685 	addw	x, #0x0200
      00B56E 7B 02            [ 1]  686 	ld	a, (0x02, sp)
      00B570 A9 00            [ 1]  687 	adc	a, #0x00
      00B572 90 97            [ 1]  688 	ld	yl, a
      00B574 7B 01            [ 1]  689 	ld	a, (0x01, sp)
      00B576 A9 00            [ 1]  690 	adc	a, #0x00
      00B578 90 95            [ 1]  691 	ld	yh, a
      00B57A 17 01            [ 2]  692 	ldw	(0x01, sp), y
      00B57C                        693 00102$:
                           0002BB   694 	Sstm8s_flash$FLASH_GetBootSize$137 ==.
                                    695 ;	StdPeriphLib/src/stm8s_flash.c: 406: return(temp);
      00B57C 16 01            [ 2]  696 	ldw	y, (0x01, sp)
                           0002BD   697 	Sstm8s_flash$FLASH_GetBootSize$138 ==.
                                    698 ;	StdPeriphLib/src/stm8s_flash.c: 407: }
      00B57E 5B 04            [ 2]  699 	addw	sp, #4
                           0002BF   700 	Sstm8s_flash$FLASH_GetBootSize$139 ==.
                           0002BF   701 	XG$FLASH_GetBootSize$0$0 ==.
      00B580 32 01 A4         [ 1]  702 	pop	_fp_
      00B583 32 01 A5         [ 1]  703 	pop	_fp_+1
      00B586 81               [ 4]  704 	ret
                           0002C6   705 	Sstm8s_flash$FLASH_GetBootSize$140 ==.
                           0002C6   706 	Sstm8s_flash$FLASH_GetFlagStatus$141 ==.
                                    707 ;	StdPeriphLib/src/stm8s_flash.c: 417: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
                                    708 ;	-----------------------------------------
                                    709 ;	 function FLASH_GetFlagStatus
                                    710 ;	-----------------------------------------
      00B587                        711 _FLASH_GetFlagStatus:
      00B587 3B 01 A5         [ 1]  712 	push	_fp_+1
      00B58A 3B 01 A4         [ 1]  713 	push	_fp_
      00B58D 90 96            [ 1]  714 	ldw	y, sp
      00B58F 90 CF 01 A4      [ 2]  715 	ldw	_fp_, y
                           0002D2   716 	Sstm8s_flash$FLASH_GetFlagStatus$142 ==.
                           0002D2   717 	Sstm8s_flash$FLASH_GetFlagStatus$143 ==.
                                    718 ;	StdPeriphLib/src/stm8s_flash.c: 424: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
      00B593 AE 50 5F         [ 2]  719 	ldw	x, #0x505f
      00B596 F6               [ 1]  720 	ld	a, (x)
      00B597 14 05            [ 1]  721 	and	a, (0x05, sp)
      00B599 4D               [ 1]  722 	tnz	a
      00B59A 27 04            [ 1]  723 	jreq	00102$
                           0002DB   724 	Sstm8s_flash$FLASH_GetFlagStatus$144 ==.
                                    725 ;	StdPeriphLib/src/stm8s_flash.c: 426: status = SET; /* FLASH_FLAG is set */
      00B59C A6 01            [ 1]  726 	ld	a, #0x01
      00B59E 20 01            [ 2]  727 	jra	00103$
      00B5A0                        728 00102$:
                           0002DF   729 	Sstm8s_flash$FLASH_GetFlagStatus$145 ==.
                                    730 ;	StdPeriphLib/src/stm8s_flash.c: 430: status = RESET; /* FLASH_FLAG is reset*/
      00B5A0 4F               [ 1]  731 	clr	a
      00B5A1                        732 00103$:
                           0002E0   733 	Sstm8s_flash$FLASH_GetFlagStatus$146 ==.
                                    734 ;	StdPeriphLib/src/stm8s_flash.c: 434: return status;
                           0002E0   735 	Sstm8s_flash$FLASH_GetFlagStatus$147 ==.
                                    736 ;	StdPeriphLib/src/stm8s_flash.c: 435: }
                           0002E0   737 	Sstm8s_flash$FLASH_GetFlagStatus$148 ==.
                           0002E0   738 	XG$FLASH_GetFlagStatus$0$0 ==.
      00B5A1 32 01 A4         [ 1]  739 	pop	_fp_
      00B5A4 32 01 A5         [ 1]  740 	pop	_fp_+1
      00B5A7 81               [ 4]  741 	ret
                           0002E7   742 	Sstm8s_flash$FLASH_GetFlagStatus$149 ==.
                           0002E7   743 	Sstm8s_flash$FLASH_WaitForLastOperation$150 ==.
                                    744 ;	StdPeriphLib/src/stm8s_flash.c: 549: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType))
                                    745 ;	-----------------------------------------
                                    746 ;	 function FLASH_WaitForLastOperation
                                    747 ;	-----------------------------------------
      00B5A8                        748 _FLASH_WaitForLastOperation:
      00B5A8 3B 01 A5         [ 1]  749 	push	_fp_+1
      00B5AB 3B 01 A4         [ 1]  750 	push	_fp_
      00B5AE 90 96            [ 1]  751 	ldw	y, sp
      00B5B0 90 CF 01 A4      [ 2]  752 	ldw	_fp_, y
                           0002F3   753 	Sstm8s_flash$FLASH_WaitForLastOperation$151 ==.
                           0002F3   754 	Sstm8s_flash$FLASH_WaitForLastOperation$152 ==.
                                    755 ;	StdPeriphLib/src/stm8s_flash.c: 551: uint8_t flagstatus = 0x00;
      00B5B4 4F               [ 1]  756 	clr	a
                           0002F4   757 	Sstm8s_flash$FLASH_WaitForLastOperation$153 ==.
                                    758 ;	StdPeriphLib/src/stm8s_flash.c: 557: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00B5B5 88               [ 1]  759 	push	a
      00B5B6 7B 06            [ 1]  760 	ld	a, (0x06, sp)
      00B5B8 A1 FD            [ 1]  761 	cp	a, #0xfd
      00B5BA 84               [ 1]  762 	pop	a
      00B5BB 26 14            [ 1]  763 	jrne	00121$
                           0002FC   764 	Sstm8s_flash$FLASH_WaitForLastOperation$154 ==.
                                    765 ;	StdPeriphLib/src/stm8s_flash.c: 559: while((flagstatus == 0x00) && (timeout != 0x00))
      00B5BD AE FF FF         [ 2]  766 	ldw	x, #0xffff
      00B5C0                        767 00102$:
      00B5C0 4D               [ 1]  768 	tnz	a
      00B5C1 26 22            [ 1]  769 	jrne	00123$
      00B5C3 5D               [ 2]  770 	tnzw	x
      00B5C4 27 1F            [ 1]  771 	jreq	00123$
                           000305   772 	Sstm8s_flash$FLASH_WaitForLastOperation$155 ==.
                                    773 ;	StdPeriphLib/src/stm8s_flash.c: 561: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
      00B5C6 90 AE 50 5F      [ 2]  774 	ldw	y, #0x505f
      00B5CA 90 F6            [ 1]  775 	ld	a, (y)
      00B5CC A4 05            [ 1]  776 	and	a, #0x05
                           00030D   777 	Sstm8s_flash$FLASH_WaitForLastOperation$156 ==.
                                    778 ;	StdPeriphLib/src/stm8s_flash.c: 563: timeout--;
      00B5CE 5A               [ 2]  779 	decw	x
      00B5CF 20 EF            [ 2]  780 	jra	00102$
                           000310   781 	Sstm8s_flash$FLASH_WaitForLastOperation$157 ==.
                                    782 ;	StdPeriphLib/src/stm8s_flash.c: 568: while((flagstatus == 0x00) && (timeout != 0x00))
      00B5D1                        783 00121$:
      00B5D1 AE FF FF         [ 2]  784 	ldw	x, #0xffff
      00B5D4                        785 00106$:
      00B5D4 4D               [ 1]  786 	tnz	a
      00B5D5 26 10            [ 1]  787 	jrne	00124$
      00B5D7 5D               [ 2]  788 	tnzw	x
      00B5D8 27 0D            [ 1]  789 	jreq	00124$
                           000319   790 	Sstm8s_flash$FLASH_WaitForLastOperation$158 ==.
                                    791 ;	StdPeriphLib/src/stm8s_flash.c: 570: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
      00B5DA 90 AE 50 5F      [ 2]  792 	ldw	y, #0x505f
      00B5DE 90 F6            [ 1]  793 	ld	a, (y)
      00B5E0 A4 41            [ 1]  794 	and	a, #0x41
                           000321   795 	Sstm8s_flash$FLASH_WaitForLastOperation$159 ==.
                                    796 ;	StdPeriphLib/src/stm8s_flash.c: 572: timeout--;
      00B5E2 5A               [ 2]  797 	decw	x
      00B5E3 20 EF            [ 2]  798 	jra	00106$
      00B5E5                        799 00123$:
                           000324   800 	Sstm8s_flash$FLASH_WaitForLastOperation$160 ==.
                                    801 ;	StdPeriphLib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
      00B5E5 20 00            [ 2]  802 	jra	00111$
                           000326   803 	Sstm8s_flash$FLASH_WaitForLastOperation$161 ==.
                                    804 ;	StdPeriphLib/src/stm8s_flash.c: 572: timeout--;
      00B5E7                        805 00124$:
      00B5E7                        806 00111$:
                           000326   807 	Sstm8s_flash$FLASH_WaitForLastOperation$162 ==.
                                    808 ;	StdPeriphLib/src/stm8s_flash.c: 584: if(timeout == 0x00 )
      00B5E7 5D               [ 2]  809 	tnzw	x
      00B5E8 26 02            [ 1]  810 	jrne	00113$
                           000329   811 	Sstm8s_flash$FLASH_WaitForLastOperation$163 ==.
                                    812 ;	StdPeriphLib/src/stm8s_flash.c: 586: flagstatus = FLASH_STATUS_TIMEOUT;
      00B5EA A6 02            [ 1]  813 	ld	a, #0x02
      00B5EC                        814 00113$:
                           00032B   815 	Sstm8s_flash$FLASH_WaitForLastOperation$164 ==.
                                    816 ;	StdPeriphLib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
                           00032B   817 	Sstm8s_flash$FLASH_WaitForLastOperation$165 ==.
                                    818 ;	StdPeriphLib/src/stm8s_flash.c: 590: }
                           00032B   819 	Sstm8s_flash$FLASH_WaitForLastOperation$166 ==.
                           00032B   820 	XG$FLASH_WaitForLastOperation$0$0 ==.
      00B5EC 32 01 A4         [ 1]  821 	pop	_fp_
      00B5EF 32 01 A5         [ 1]  822 	pop	_fp_+1
      00B5F2 81               [ 4]  823 	ret
                           000332   824 	Sstm8s_flash$FLASH_WaitForLastOperation$167 ==.
                           000332   825 	Sstm8s_flash$FLASH_EraseBlock$168 ==.
                                    826 ;	StdPeriphLib/src/stm8s_flash.c: 599: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
                                    827 ;	-----------------------------------------
                                    828 ;	 function FLASH_EraseBlock
                                    829 ;	-----------------------------------------
      00B5F3                        830 _FLASH_EraseBlock:
      00B5F3 3B 01 A5         [ 1]  831 	push	_fp_+1
      00B5F6 3B 01 A4         [ 1]  832 	push	_fp_
      00B5F9 90 96            [ 1]  833 	ldw	y, sp
      00B5FB 90 CF 01 A4      [ 2]  834 	ldw	_fp_, y
                           00033E   835 	Sstm8s_flash$FLASH_EraseBlock$169 ==.
      00B5FF 52 06            [ 2]  836 	sub	sp, #6
                           000340   837 	Sstm8s_flash$FLASH_EraseBlock$170 ==.
                                    838 ;	StdPeriphLib/src/stm8s_flash.c: 612: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00B601 7B 0D            [ 1]  839 	ld	a, (0x0d, sp)
      00B603 A1 FD            [ 1]  840 	cp	a, #0xfd
      00B605 26 0A            [ 1]  841 	jrne	00102$
                           000346   842 	Sstm8s_flash$FLASH_EraseBlock$171 ==.
                                    843 ;	StdPeriphLib/src/stm8s_flash.c: 615: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00B607 AE 80 00         [ 2]  844 	ldw	x, #0x8000
      00B60A 1F 05            [ 2]  845 	ldw	(0x05, sp), x
      00B60C 5F               [ 1]  846 	clrw	x
      00B60D 1F 03            [ 2]  847 	ldw	(0x03, sp), x
      00B60F 20 08            [ 2]  848 	jra	00103$
      00B611                        849 00102$:
                           000350   850 	Sstm8s_flash$FLASH_EraseBlock$172 ==.
                                    851 ;	StdPeriphLib/src/stm8s_flash.c: 620: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00B611 AE 40 00         [ 2]  852 	ldw	x, #0x4000
      00B614 1F 05            [ 2]  853 	ldw	(0x05, sp), x
      00B616 5F               [ 1]  854 	clrw	x
      00B617 1F 03            [ 2]  855 	ldw	(0x03, sp), x
      00B619                        856 00103$:
                           000358   857 	Sstm8s_flash$FLASH_EraseBlock$173 ==.
                                    858 ;	StdPeriphLib/src/stm8s_flash.c: 628: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
      00B619 16 0B            [ 2]  859 	ldw	y, (0x0b, sp)
      00B61B 5F               [ 1]  860 	clrw	x
      00B61C A6 07            [ 1]  861 	ld	a, #0x07
      00B61E                        862 00112$:
      00B61E 90 58            [ 2]  863 	sllw	y
      00B620 59               [ 2]  864 	rlcw	x
      00B621 4A               [ 1]  865 	dec	a
      00B622 26 FA            [ 1]  866 	jrne	00112$
      00B624 72 F9 05         [ 2]  867 	addw	y, (0x05, sp)
      00B627 9F               [ 1]  868 	ld	a, xl
      00B628 19 04            [ 1]  869 	adc	a, (0x04, sp)
      00B62A 02               [ 1]  870 	rlwa	x
      00B62B 19 03            [ 1]  871 	adc	a, (0x03, sp)
      00B62D 17 01            [ 2]  872 	ldw	(0x01, sp), y
                           00036E   873 	Sstm8s_flash$FLASH_EraseBlock$174 ==.
                                    874 ;	StdPeriphLib/src/stm8s_flash.c: 632: FLASH->CR2 |= FLASH_CR2_ERASE;
      00B62F AE 50 5B         [ 2]  875 	ldw	x, #0x505b
      00B632 F6               [ 1]  876 	ld	a, (x)
      00B633 AA 20            [ 1]  877 	or	a, #0x20
      00B635 F7               [ 1]  878 	ld	(x), a
                           000375   879 	Sstm8s_flash$FLASH_EraseBlock$175 ==.
                                    880 ;	StdPeriphLib/src/stm8s_flash.c: 633: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
      00B636 AE 50 5C         [ 2]  881 	ldw	x, #0x505c
      00B639 F6               [ 1]  882 	ld	a, (x)
      00B63A A4 DF            [ 1]  883 	and	a, #0xdf
      00B63C F7               [ 1]  884 	ld	(x), a
                           00037C   885 	Sstm8s_flash$FLASH_EraseBlock$176 ==.
                                    886 ;	StdPeriphLib/src/stm8s_flash.c: 637: *pwFlash = (uint32_t)0;
      00B63D 1E 01            [ 2]  887 	ldw	x, (0x01, sp)
      00B63F 6F 03            [ 1]  888 	clr	(0x3, x)
      00B641 6F 02            [ 1]  889 	clr	(0x2, x)
      00B643 6F 01            [ 1]  890 	clr	(0x1, x)
      00B645 7F               [ 1]  891 	clr	(x)
                           000385   892 	Sstm8s_flash$FLASH_EraseBlock$177 ==.
                                    893 ;	StdPeriphLib/src/stm8s_flash.c: 645: }
      00B646 5B 06            [ 2]  894 	addw	sp, #6
                           000387   895 	Sstm8s_flash$FLASH_EraseBlock$178 ==.
                           000387   896 	XG$FLASH_EraseBlock$0$0 ==.
      00B648 32 01 A4         [ 1]  897 	pop	_fp_
      00B64B 32 01 A5         [ 1]  898 	pop	_fp_+1
      00B64E 81               [ 4]  899 	ret
                           00038E   900 	Sstm8s_flash$FLASH_EraseBlock$179 ==.
                           00038E   901 	Sstm8s_flash$FLASH_ProgramBlock$180 ==.
                                    902 ;	StdPeriphLib/src/stm8s_flash.c: 656: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType,
                                    903 ;	-----------------------------------------
                                    904 ;	 function FLASH_ProgramBlock
                                    905 ;	-----------------------------------------
      00B64F                        906 _FLASH_ProgramBlock:
      00B64F 3B 01 A5         [ 1]  907 	push	_fp_+1
      00B652 3B 01 A4         [ 1]  908 	push	_fp_
      00B655 90 96            [ 1]  909 	ldw	y, sp
      00B657 90 CF 01 A4      [ 2]  910 	ldw	_fp_, y
                           00039A   911 	Sstm8s_flash$FLASH_ProgramBlock$181 ==.
      00B65B 52 12            [ 2]  912 	sub	sp, #18
                           00039C   913 	Sstm8s_flash$FLASH_ProgramBlock$182 ==.
                                    914 ;	StdPeriphLib/src/stm8s_flash.c: 665: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00B65D 7B 19            [ 1]  915 	ld	a, (0x19, sp)
      00B65F A1 FD            [ 1]  916 	cp	a, #0xfd
      00B661 26 0A            [ 1]  917 	jrne	00102$
                           0003A2   918 	Sstm8s_flash$FLASH_ProgramBlock$183 ==.
                                    919 ;	StdPeriphLib/src/stm8s_flash.c: 668: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00B663 AE 80 00         [ 2]  920 	ldw	x, #0x8000
      00B666 1F 03            [ 2]  921 	ldw	(0x03, sp), x
      00B668 5F               [ 1]  922 	clrw	x
      00B669 1F 01            [ 2]  923 	ldw	(0x01, sp), x
      00B66B 20 08            [ 2]  924 	jra	00103$
      00B66D                        925 00102$:
                           0003AC   926 	Sstm8s_flash$FLASH_ProgramBlock$184 ==.
                                    927 ;	StdPeriphLib/src/stm8s_flash.c: 673: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00B66D AE 40 00         [ 2]  928 	ldw	x, #0x4000
      00B670 1F 03            [ 2]  929 	ldw	(0x03, sp), x
      00B672 5F               [ 1]  930 	clrw	x
      00B673 1F 01            [ 2]  931 	ldw	(0x01, sp), x
      00B675                        932 00103$:
                           0003B4   933 	Sstm8s_flash$FLASH_ProgramBlock$185 ==.
                                    934 ;	StdPeriphLib/src/stm8s_flash.c: 677: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
      00B675 16 17            [ 2]  935 	ldw	y, (0x17, sp)
      00B677 17 0D            [ 2]  936 	ldw	(0x0d, sp), y
      00B679 0F 0C            [ 1]  937 	clr	(0x0c, sp)
      00B67B 0F 0B            [ 1]  938 	clr	(0x0b, sp)
      00B67D 16 0B            [ 2]  939 	ldw	y, (0x0b, sp)
      00B67F 17 07            [ 2]  940 	ldw	(0x07, sp), y
      00B681 1E 0D            [ 2]  941 	ldw	x, (0x0d, sp)
      00B683 A6 07            [ 1]  942 	ld	a, #0x07
      00B685                        943 00125$:
      00B685 58               [ 2]  944 	sllw	x
      00B686 09 08            [ 1]  945 	rlc	(0x08, sp)
      00B688 09 07            [ 1]  946 	rlc	(0x07, sp)
      00B68A 4A               [ 1]  947 	dec	a
      00B68B 26 F8            [ 1]  948 	jrne	00125$
      00B68D 1F 09            [ 2]  949 	ldw	(0x09, sp), x
      00B68F 1E 03            [ 2]  950 	ldw	x, (0x03, sp)
      00B691 72 FB 09         [ 2]  951 	addw	x, (0x09, sp)
      00B694 1F 11            [ 2]  952 	ldw	(0x11, sp), x
      00B696 7B 02            [ 1]  953 	ld	a, (0x02, sp)
      00B698 19 08            [ 1]  954 	adc	a, (0x08, sp)
      00B69A 6B 10            [ 1]  955 	ld	(0x10, sp), a
      00B69C 7B 01            [ 1]  956 	ld	a, (0x01, sp)
      00B69E 19 07            [ 1]  957 	adc	a, (0x07, sp)
      00B6A0 6B 0F            [ 1]  958 	ld	(0x0f, sp), a
      00B6A2 16 11            [ 2]  959 	ldw	y, (0x11, sp)
      00B6A4 17 03            [ 2]  960 	ldw	(0x03, sp), y
      00B6A6 16 0F            [ 2]  961 	ldw	y, (0x0f, sp)
      00B6A8 17 01            [ 2]  962 	ldw	(0x01, sp), y
                           0003E9   963 	Sstm8s_flash$FLASH_ProgramBlock$186 ==.
                                    964 ;	StdPeriphLib/src/stm8s_flash.c: 680: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
      00B6AA 0D 1A            [ 1]  965 	tnz	(0x1a, sp)
      00B6AC 26 0D            [ 1]  966 	jrne	00105$
                           0003ED   967 	Sstm8s_flash$FLASH_ProgramBlock$187 ==.
                                    968 ;	StdPeriphLib/src/stm8s_flash.c: 683: FLASH->CR2 |= FLASH_CR2_PRG;
      00B6AE 72 10 50 5B      [ 1]  969 	bset	0x505b, #0
                           0003F1   970 	Sstm8s_flash$FLASH_ProgramBlock$188 ==.
                                    971 ;	StdPeriphLib/src/stm8s_flash.c: 684: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
      00B6B2 AE 50 5C         [ 2]  972 	ldw	x, #0x505c
      00B6B5 F6               [ 1]  973 	ld	a, (x)
      00B6B6 A4 FE            [ 1]  974 	and	a, #0xfe
      00B6B8 F7               [ 1]  975 	ld	(x), a
      00B6B9 20 0E            [ 2]  976 	jra	00114$
      00B6BB                        977 00105$:
                           0003FA   978 	Sstm8s_flash$FLASH_ProgramBlock$189 ==.
                                    979 ;	StdPeriphLib/src/stm8s_flash.c: 689: FLASH->CR2 |= FLASH_CR2_FPRG;
      00B6BB AE 50 5B         [ 2]  980 	ldw	x, #0x505b
      00B6BE F6               [ 1]  981 	ld	a, (x)
      00B6BF AA 10            [ 1]  982 	or	a, #0x10
      00B6C1 F7               [ 1]  983 	ld	(x), a
                           000401   984 	Sstm8s_flash$FLASH_ProgramBlock$190 ==.
                                    985 ;	StdPeriphLib/src/stm8s_flash.c: 690: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
      00B6C2 AE 50 5C         [ 2]  986 	ldw	x, #0x505c
      00B6C5 F6               [ 1]  987 	ld	a, (x)
      00B6C6 A4 EF            [ 1]  988 	and	a, #0xef
      00B6C8 F7               [ 1]  989 	ld	(x), a
                           000408   990 	Sstm8s_flash$FLASH_ProgramBlock$191 ==.
                                    991 ;	StdPeriphLib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00B6C9                        992 00114$:
      00B6C9 5F               [ 1]  993 	clrw	x
      00B6CA 1F 05            [ 2]  994 	ldw	(0x05, sp), x
      00B6CC                        995 00108$:
                           00040B   996 	Sstm8s_flash$FLASH_ProgramBlock$192 ==.
                                    997 ;	StdPeriphLib/src/stm8s_flash.c: 696: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
      00B6CC 1E 03            [ 2]  998 	ldw	x, (0x03, sp)
      00B6CE 72 FB 05         [ 2]  999 	addw	x, (0x05, sp)
      00B6D1 16 1B            [ 2] 1000 	ldw	y, (0x1b, sp)
      00B6D3 72 F9 05         [ 2] 1001 	addw	y, (0x05, sp)
      00B6D6 90 F6            [ 1] 1002 	ld	a, (y)
      00B6D8 F7               [ 1] 1003 	ld	(x), a
                           000418  1004 	Sstm8s_flash$FLASH_ProgramBlock$193 ==.
                                   1005 ;	StdPeriphLib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00B6D9 1E 05            [ 2] 1006 	ldw	x, (0x05, sp)
      00B6DB 5C               [ 2] 1007 	incw	x
      00B6DC 1F 05            [ 2] 1008 	ldw	(0x05, sp), x
      00B6DE 1E 05            [ 2] 1009 	ldw	x, (0x05, sp)
      00B6E0 A3 00 80         [ 2] 1010 	cpw	x, #0x0080
      00B6E3 25 E7            [ 1] 1011 	jrc	00108$
                           000424  1012 	Sstm8s_flash$FLASH_ProgramBlock$194 ==.
                                   1013 ;	StdPeriphLib/src/stm8s_flash.c: 698: }
      00B6E5 5B 12            [ 2] 1014 	addw	sp, #18
                           000426  1015 	Sstm8s_flash$FLASH_ProgramBlock$195 ==.
                           000426  1016 	XG$FLASH_ProgramBlock$0$0 ==.
      00B6E7 32 01 A4         [ 1] 1017 	pop	_fp_
      00B6EA 32 01 A5         [ 1] 1018 	pop	_fp_+1
      00B6ED 81               [ 4] 1019 	ret
                           00042D  1020 	Sstm8s_flash$FLASH_ProgramBlock$196 ==.
                                   1021 	.area CODE
                                   1022 	.area INITIALIZER
                                   1023 	.area CABS (ABS)
                                   1024 
                                   1025 	.area .debug_line (NOLOAD)
      003AAA 00 00 05 32           1026 	.dw	0,Ldebug_line_end-Ldebug_line_start
      003AAE                       1027 Ldebug_line_start:
      003AAE 00 02                 1028 	.dw	2
      003AB0 00 00 01 1A           1029 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      003AB4 01                    1030 	.db	1
      003AB5 01                    1031 	.db	1
      003AB6 FB                    1032 	.db	-5
      003AB7 0F                    1033 	.db	15
      003AB8 0A                    1034 	.db	10
      003AB9 00                    1035 	.db	0
      003ABA 01                    1036 	.db	1
      003ABB 01                    1037 	.db	1
      003ABC 01                    1038 	.db	1
      003ABD 01                    1039 	.db	1
      003ABE 00                    1040 	.db	0
      003ABF 00                    1041 	.db	0
      003AC0 00                    1042 	.db	0
      003AC1 01                    1043 	.db	1
      003AC2 2F 68 6F 6D 65 2F 63  1044 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      003B01 00                    1045 	.db	0
      003B02 2F 68 6F 6D 65 2F 63  1046 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      003B3A 00                    1047 	.db	0
      003B3B 2F 68 6F 6D 65 2F 63  1048 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      003B75 00                    1049 	.db	0
      003B76 2F 68 6F 6D 65 2F 63  1050 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      003BA9 00                    1051 	.db	0
      003BAA 00                    1052 	.db	0
      003BAB 53 74 64 50 65 72 69  1053 	.ascii "StdPeriphLib/src/stm8s_flash.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 66 6C 61 73 68
             2E 63
      003BC9 00                    1054 	.db	0
      003BCA 00                    1055 	.uleb128	0
      003BCB 00                    1056 	.uleb128	0
      003BCC 00                    1057 	.uleb128	0
      003BCD 00                    1058 	.db	0
      003BCE                       1059 Ldebug_line_stmt:
      003BCE 00                    1060 	.db	0
      003BCF 05                    1061 	.uleb128	5
      003BD0 02                    1062 	.db	2
      003BD1 00 00 B2 C1           1063 	.dw	0,(Sstm8s_flash$FLASH_Unlock$0)
      003BD5 03                    1064 	.db	3
      003BD6 D6 00                 1065 	.sleb128	86
      003BD8 01                    1066 	.db	1
      003BD9 09                    1067 	.db	9
      003BDA 00 0C                 1068 	.dw	Sstm8s_flash$FLASH_Unlock$2-Sstm8s_flash$FLASH_Unlock$0
      003BDC 03                    1069 	.db	3
      003BDD 06                    1070 	.sleb128	6
      003BDE 01                    1071 	.db	1
      003BDF 09                    1072 	.db	9
      003BE0 00 06                 1073 	.dw	Sstm8s_flash$FLASH_Unlock$3-Sstm8s_flash$FLASH_Unlock$2
      003BE2 03                    1074 	.db	3
      003BE3 02                    1075 	.sleb128	2
      003BE4 01                    1076 	.db	1
      003BE5 09                    1077 	.db	9
      003BE6 00 04                 1078 	.dw	Sstm8s_flash$FLASH_Unlock$4-Sstm8s_flash$FLASH_Unlock$3
      003BE8 03                    1079 	.db	3
      003BE9 01                    1080 	.sleb128	1
      003BEA 01                    1081 	.db	1
      003BEB 09                    1082 	.db	9
      003BEC 00 06                 1083 	.dw	Sstm8s_flash$FLASH_Unlock$5-Sstm8s_flash$FLASH_Unlock$4
      003BEE 03                    1084 	.db	3
      003BEF 05                    1085 	.sleb128	5
      003BF0 01                    1086 	.db	1
      003BF1 09                    1087 	.db	9
      003BF2 00 04                 1088 	.dw	Sstm8s_flash$FLASH_Unlock$6-Sstm8s_flash$FLASH_Unlock$5
      003BF4 03                    1089 	.db	3
      003BF5 01                    1090 	.sleb128	1
      003BF6 01                    1091 	.db	1
      003BF7 09                    1092 	.db	9
      003BF8 00 04                 1093 	.dw	Sstm8s_flash$FLASH_Unlock$7-Sstm8s_flash$FLASH_Unlock$6
      003BFA 03                    1094 	.db	3
      003BFB 02                    1095 	.sleb128	2
      003BFC 01                    1096 	.db	1
      003BFD 09                    1097 	.db	9
      003BFE 00 07                 1098 	.dw	7+Sstm8s_flash$FLASH_Unlock$8-Sstm8s_flash$FLASH_Unlock$7
      003C00 00                    1099 	.db	0
      003C01 01                    1100 	.uleb128	1
      003C02 01                    1101 	.db	1
      003C03 00                    1102 	.db	0
      003C04 05                    1103 	.uleb128	5
      003C05 02                    1104 	.db	2
      003C06 00 00 B2 EC           1105 	.dw	0,(Sstm8s_flash$FLASH_Lock$10)
      003C0A 03                    1106 	.db	3
      003C0B EF 00                 1107 	.sleb128	111
      003C0D 01                    1108 	.db	1
      003C0E 09                    1109 	.db	9
      003C0F 00 0C                 1110 	.dw	Sstm8s_flash$FLASH_Lock$12-Sstm8s_flash$FLASH_Lock$10
      003C11 03                    1111 	.db	3
      003C12 06                    1112 	.sleb128	6
      003C13 01                    1113 	.db	1
      003C14 09                    1114 	.db	9
      003C15 00 0A                 1115 	.dw	Sstm8s_flash$FLASH_Lock$13-Sstm8s_flash$FLASH_Lock$12
      003C17 03                    1116 	.db	3
      003C18 01                    1117 	.sleb128	1
      003C19 01                    1118 	.db	1
      003C1A 09                    1119 	.db	9
      003C1B 00 07                 1120 	.dw	7+Sstm8s_flash$FLASH_Lock$14-Sstm8s_flash$FLASH_Lock$13
      003C1D 00                    1121 	.db	0
      003C1E 01                    1122 	.uleb128	1
      003C1F 01                    1123 	.db	1
      003C20 00                    1124 	.db	0
      003C21 05                    1125 	.uleb128	5
      003C22 02                    1126 	.db	2
      003C23 00 00 B3 09           1127 	.dw	0,(Sstm8s_flash$FLASH_DeInit$16)
      003C27 03                    1128 	.db	3
      003C28 FD 00                 1129 	.sleb128	125
      003C2A 01                    1130 	.db	1
      003C2B 09                    1131 	.db	9
      003C2C 00 0C                 1132 	.dw	Sstm8s_flash$FLASH_DeInit$18-Sstm8s_flash$FLASH_DeInit$16
      003C2E 03                    1133 	.db	3
      003C2F 02                    1134 	.sleb128	2
      003C30 01                    1135 	.db	1
      003C31 09                    1136 	.db	9
      003C32 00 04                 1137 	.dw	Sstm8s_flash$FLASH_DeInit$19-Sstm8s_flash$FLASH_DeInit$18
      003C34 03                    1138 	.db	3
      003C35 01                    1139 	.sleb128	1
      003C36 01                    1140 	.db	1
      003C37 09                    1141 	.db	9
      003C38 00 04                 1142 	.dw	Sstm8s_flash$FLASH_DeInit$20-Sstm8s_flash$FLASH_DeInit$19
      003C3A 03                    1143 	.db	3
      003C3B 01                    1144 	.sleb128	1
      003C3C 01                    1145 	.db	1
      003C3D 09                    1146 	.db	9
      003C3E 00 04                 1147 	.dw	Sstm8s_flash$FLASH_DeInit$21-Sstm8s_flash$FLASH_DeInit$20
      003C40 03                    1148 	.db	3
      003C41 01                    1149 	.sleb128	1
      003C42 01                    1150 	.db	1
      003C43 09                    1151 	.db	9
      003C44 00 07                 1152 	.dw	Sstm8s_flash$FLASH_DeInit$22-Sstm8s_flash$FLASH_DeInit$21
      003C46 03                    1153 	.db	3
      003C47 01                    1154 	.sleb128	1
      003C48 01                    1155 	.db	1
      003C49 09                    1156 	.db	9
      003C4A 00 07                 1157 	.dw	Sstm8s_flash$FLASH_DeInit$23-Sstm8s_flash$FLASH_DeInit$22
      003C4C 03                    1158 	.db	3
      003C4D 01                    1159 	.sleb128	1
      003C4E 01                    1160 	.db	1
      003C4F 09                    1161 	.db	9
      003C50 00 04                 1162 	.dw	Sstm8s_flash$FLASH_DeInit$24-Sstm8s_flash$FLASH_DeInit$23
      003C52 03                    1163 	.db	3
      003C53 01                    1164 	.sleb128	1
      003C54 01                    1165 	.db	1
      003C55 09                    1166 	.db	9
      003C56 00 07                 1167 	.dw	7+Sstm8s_flash$FLASH_DeInit$25-Sstm8s_flash$FLASH_DeInit$24
      003C58 00                    1168 	.db	0
      003C59 01                    1169 	.uleb128	1
      003C5A 01                    1170 	.db	1
      003C5B 00                    1171 	.db	0
      003C5C 05                    1172 	.uleb128	5
      003C5D 02                    1173 	.db	2
      003C5E 00 00 B3 3A           1174 	.dw	0,(Sstm8s_flash$FLASH_ITConfig$27)
      003C62 03                    1175 	.db	3
      003C63 8D 01                 1176 	.sleb128	141
      003C65 01                    1177 	.db	1
      003C66 09                    1178 	.db	9
      003C67 00 0C                 1179 	.dw	Sstm8s_flash$FLASH_ITConfig$29-Sstm8s_flash$FLASH_ITConfig$27
      003C69 03                    1180 	.db	3
      003C6A 05                    1181 	.sleb128	5
      003C6B 01                    1182 	.db	1
      003C6C 09                    1183 	.db	9
      003C6D 00 04                 1184 	.dw	Sstm8s_flash$FLASH_ITConfig$30-Sstm8s_flash$FLASH_ITConfig$29
      003C6F 03                    1185 	.db	3
      003C70 02                    1186 	.sleb128	2
      003C71 01                    1187 	.db	1
      003C72 09                    1188 	.db	9
      003C73 00 09                 1189 	.dw	Sstm8s_flash$FLASH_ITConfig$31-Sstm8s_flash$FLASH_ITConfig$30
      003C75 03                    1190 	.db	3
      003C76 04                    1191 	.sleb128	4
      003C77 01                    1192 	.db	1
      003C78 09                    1193 	.db	9
      003C79 00 07                 1194 	.dw	Sstm8s_flash$FLASH_ITConfig$32-Sstm8s_flash$FLASH_ITConfig$31
      003C7B 03                    1195 	.db	3
      003C7C 02                    1196 	.sleb128	2
      003C7D 01                    1197 	.db	1
      003C7E 09                    1198 	.db	9
      003C7F 00 07                 1199 	.dw	7+Sstm8s_flash$FLASH_ITConfig$33-Sstm8s_flash$FLASH_ITConfig$32
      003C81 00                    1200 	.db	0
      003C82 01                    1201 	.uleb128	1
      003C83 01                    1202 	.db	1
      003C84 00                    1203 	.db	0
      003C85 05                    1204 	.uleb128	5
      003C86 02                    1205 	.db	2
      003C87 00 00 B3 61           1206 	.dw	0,(Sstm8s_flash$FLASH_EraseByte$35)
      003C8B 03                    1207 	.db	3
      003C8C A3 01                 1208 	.sleb128	163
      003C8E 01                    1209 	.db	1
      003C8F 09                    1210 	.db	9
      003C90 00 0C                 1211 	.dw	Sstm8s_flash$FLASH_EraseByte$37-Sstm8s_flash$FLASH_EraseByte$35
      003C92 03                    1212 	.db	3
      003C93 06                    1213 	.sleb128	6
      003C94 01                    1214 	.db	1
      003C95 09                    1215 	.db	9
      003C96 00 03                 1216 	.dw	Sstm8s_flash$FLASH_EraseByte$38-Sstm8s_flash$FLASH_EraseByte$37
      003C98 03                    1217 	.db	3
      003C99 01                    1218 	.sleb128	1
      003C9A 01                    1219 	.db	1
      003C9B 09                    1220 	.db	9
      003C9C 00 07                 1221 	.dw	7+Sstm8s_flash$FLASH_EraseByte$39-Sstm8s_flash$FLASH_EraseByte$38
      003C9E 00                    1222 	.db	0
      003C9F 01                    1223 	.uleb128	1
      003CA0 01                    1224 	.db	1
      003CA1 00                    1225 	.db	0
      003CA2 05                    1226 	.uleb128	5
      003CA3 02                    1227 	.db	2
      003CA4 00 00 B3 77           1228 	.dw	0,(Sstm8s_flash$FLASH_ProgramByte$41)
      003CA8 03                    1229 	.db	3
      003CA9 B4 01                 1230 	.sleb128	180
      003CAB 01                    1231 	.db	1
      003CAC 09                    1232 	.db	9
      003CAD 00 0C                 1233 	.dw	Sstm8s_flash$FLASH_ProgramByte$43-Sstm8s_flash$FLASH_ProgramByte$41
      003CAF 03                    1234 	.db	3
      003CB0 04                    1235 	.sleb128	4
      003CB1 01                    1236 	.db	1
      003CB2 09                    1237 	.db	9
      003CB3 00 05                 1238 	.dw	Sstm8s_flash$FLASH_ProgramByte$44-Sstm8s_flash$FLASH_ProgramByte$43
      003CB5 03                    1239 	.db	3
      003CB6 01                    1240 	.sleb128	1
      003CB7 01                    1241 	.db	1
      003CB8 09                    1242 	.db	9
      003CB9 00 07                 1243 	.dw	7+Sstm8s_flash$FLASH_ProgramByte$45-Sstm8s_flash$FLASH_ProgramByte$44
      003CBB 00                    1244 	.db	0
      003CBC 01                    1245 	.uleb128	1
      003CBD 01                    1246 	.db	1
      003CBE 00                    1247 	.db	0
      003CBF 05                    1248 	.uleb128	5
      003CC0 02                    1249 	.db	2
      003CC1 00 00 B3 8F           1250 	.dw	0,(Sstm8s_flash$FLASH_ReadByte$47)
      003CC5 03                    1251 	.db	3
      003CC6 C2 01                 1252 	.sleb128	194
      003CC8 01                    1253 	.db	1
      003CC9 09                    1254 	.db	9
      003CCA 00 0C                 1255 	.dw	Sstm8s_flash$FLASH_ReadByte$49-Sstm8s_flash$FLASH_ReadByte$47
      003CCC 03                    1256 	.db	3
      003CCD 06                    1257 	.sleb128	6
      003CCE 01                    1258 	.db	1
      003CCF 09                    1259 	.db	9
      003CD0 00 03                 1260 	.dw	Sstm8s_flash$FLASH_ReadByte$50-Sstm8s_flash$FLASH_ReadByte$49
      003CD2 03                    1261 	.db	3
      003CD3 01                    1262 	.sleb128	1
      003CD4 01                    1263 	.db	1
      003CD5 09                    1264 	.db	9
      003CD6 00 07                 1265 	.dw	7+Sstm8s_flash$FLASH_ReadByte$51-Sstm8s_flash$FLASH_ReadByte$50
      003CD8 00                    1266 	.db	0
      003CD9 01                    1267 	.uleb128	1
      003CDA 01                    1268 	.db	1
      003CDB 00                    1269 	.db	0
      003CDC 05                    1270 	.uleb128	5
      003CDD 02                    1271 	.db	2
      003CDE 00 00 B3 A5           1272 	.dw	0,(Sstm8s_flash$FLASH_ProgramWord$53)
      003CE2 03                    1273 	.db	3
      003CE3 D3 01                 1274 	.sleb128	211
      003CE5 01                    1275 	.db	1
      003CE6 09                    1276 	.db	9
      003CE7 00 0E                 1277 	.dw	Sstm8s_flash$FLASH_ProgramWord$55-Sstm8s_flash$FLASH_ProgramWord$53
      003CE9 03                    1278 	.db	3
      003CEA 06                    1279 	.sleb128	6
      003CEB 01                    1280 	.db	1
      003CEC 09                    1281 	.db	9
      003CED 00 07                 1282 	.dw	Sstm8s_flash$FLASH_ProgramWord$56-Sstm8s_flash$FLASH_ProgramWord$55
      003CEF 03                    1283 	.db	3
      003CF0 01                    1284 	.sleb128	1
      003CF1 01                    1285 	.db	1
      003CF2 09                    1286 	.db	9
      003CF3 00 07                 1287 	.dw	Sstm8s_flash$FLASH_ProgramWord$57-Sstm8s_flash$FLASH_ProgramWord$56
      003CF5 03                    1288 	.db	3
      003CF6 03                    1289 	.sleb128	3
      003CF7 01                    1290 	.db	1
      003CF8 09                    1291 	.db	9
      003CF9 00 10                 1292 	.dw	Sstm8s_flash$FLASH_ProgramWord$58-Sstm8s_flash$FLASH_ProgramWord$57
      003CFB 03                    1293 	.db	3
      003CFC 02                    1294 	.sleb128	2
      003CFD 01                    1295 	.db	1
      003CFE 09                    1296 	.db	9
      003CFF 00 09                 1297 	.dw	Sstm8s_flash$FLASH_ProgramWord$59-Sstm8s_flash$FLASH_ProgramWord$58
      003D01 03                    1298 	.db	3
      003D02 02                    1299 	.sleb128	2
      003D03 01                    1300 	.db	1
      003D04 09                    1301 	.db	9
      003D05 00 0A                 1302 	.dw	Sstm8s_flash$FLASH_ProgramWord$60-Sstm8s_flash$FLASH_ProgramWord$59
      003D07 03                    1303 	.db	3
      003D08 02                    1304 	.sleb128	2
      003D09 01                    1305 	.db	1
      003D0A 09                    1306 	.db	9
      003D0B 00 0B                 1307 	.dw	Sstm8s_flash$FLASH_ProgramWord$61-Sstm8s_flash$FLASH_ProgramWord$60
      003D0D 03                    1308 	.db	3
      003D0E 01                    1309 	.sleb128	1
      003D0F 01                    1310 	.db	1
      003D10 09                    1311 	.db	9
      003D11 00 09                 1312 	.dw	7+Sstm8s_flash$FLASH_ProgramWord$62-Sstm8s_flash$FLASH_ProgramWord$61
      003D13 00                    1313 	.db	0
      003D14 01                    1314 	.uleb128	1
      003D15 01                    1315 	.db	1
      003D16 00                    1316 	.db	0
      003D17 05                    1317 	.uleb128	5
      003D18 02                    1318 	.db	2
      003D19 00 00 B3 F8           1319 	.dw	0,(Sstm8s_flash$FLASH_ProgramOptionByte$64)
      003D1D 03                    1320 	.db	3
      003D1E EC 01                 1321 	.sleb128	236
      003D20 01                    1322 	.db	1
      003D21 09                    1323 	.db	9
      003D22 00 0C                 1324 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$66-Sstm8s_flash$FLASH_ProgramOptionByte$64
      003D24 03                    1325 	.db	3
      003D25 06                    1326 	.sleb128	6
      003D26 01                    1327 	.db	1
      003D27 09                    1328 	.db	9
      003D28 00 04                 1329 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$67-Sstm8s_flash$FLASH_ProgramOptionByte$66
      003D2A 03                    1330 	.db	3
      003D2B 01                    1331 	.sleb128	1
      003D2C 01                    1332 	.db	1
      003D2D 09                    1333 	.db	9
      003D2E 00 07                 1334 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$68-Sstm8s_flash$FLASH_ProgramOptionByte$67
      003D30 03                    1335 	.db	3
      003D31 03                    1336 	.sleb128	3
      003D32 01                    1337 	.db	1
      003D33 09                    1338 	.db	9
      003D34 00 07                 1339 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$69-Sstm8s_flash$FLASH_ProgramOptionByte$68
      003D36 03                    1340 	.db	3
      003D37 03                    1341 	.sleb128	3
      003D38 01                    1342 	.db	1
      003D39 09                    1343 	.db	9
      003D3A 00 07                 1344 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$70-Sstm8s_flash$FLASH_ProgramOptionByte$69
      003D3C 03                    1345 	.db	3
      003D3D 05                    1346 	.sleb128	5
      003D3E 01                    1347 	.db	1
      003D3F 09                    1348 	.db	9
      003D40 00 05                 1349 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$71-Sstm8s_flash$FLASH_ProgramOptionByte$70
      003D42 03                    1350 	.db	3
      003D43 01                    1351 	.sleb128	1
      003D44 01                    1352 	.db	1
      003D45 09                    1353 	.db	9
      003D46 00 07                 1354 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$72-Sstm8s_flash$FLASH_ProgramOptionByte$71
      003D48 03                    1355 	.db	3
      003D49 02                    1356 	.sleb128	2
      003D4A 01                    1357 	.db	1
      003D4B 09                    1358 	.db	9
      003D4C 00 06                 1359 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$73-Sstm8s_flash$FLASH_ProgramOptionByte$72
      003D4E 03                    1360 	.db	3
      003D4F 03                    1361 	.sleb128	3
      003D50 01                    1362 	.db	1
      003D51 09                    1363 	.db	9
      003D52 00 04                 1364 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$74-Sstm8s_flash$FLASH_ProgramOptionByte$73
      003D54 03                    1365 	.db	3
      003D55 01                    1366 	.sleb128	1
      003D56 01                    1367 	.db	1
      003D57 09                    1368 	.db	9
      003D58 00 04                 1369 	.dw	Sstm8s_flash$FLASH_ProgramOptionByte$75-Sstm8s_flash$FLASH_ProgramOptionByte$74
      003D5A 03                    1370 	.db	3
      003D5B 01                    1371 	.sleb128	1
      003D5C 01                    1372 	.db	1
      003D5D 09                    1373 	.db	9
      003D5E 00 07                 1374 	.dw	7+Sstm8s_flash$FLASH_ProgramOptionByte$76-Sstm8s_flash$FLASH_ProgramOptionByte$75
      003D60 00                    1375 	.db	0
      003D61 01                    1376 	.uleb128	1
      003D62 01                    1377 	.db	1
      003D63 00                    1378 	.db	0
      003D64 05                    1379 	.uleb128	5
      003D65 02                    1380 	.db	2
      003D66 00 00 B4 3E           1381 	.dw	0,(Sstm8s_flash$FLASH_EraseOptionByte$78)
      003D6A 03                    1382 	.db	3
      003D6B 8D 02                 1383 	.sleb128	269
      003D6D 01                    1384 	.db	1
      003D6E 09                    1385 	.db	9
      003D6F 00 0C                 1386 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$80-Sstm8s_flash$FLASH_EraseOptionByte$78
      003D71 03                    1387 	.db	3
      003D72 06                    1388 	.sleb128	6
      003D73 01                    1389 	.db	1
      003D74 09                    1390 	.db	9
      003D75 00 04                 1391 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$81-Sstm8s_flash$FLASH_EraseOptionByte$80
      003D77 03                    1392 	.db	3
      003D78 01                    1393 	.sleb128	1
      003D79 01                    1394 	.db	1
      003D7A 09                    1395 	.db	9
      003D7B 00 07                 1396 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$82-Sstm8s_flash$FLASH_EraseOptionByte$81
      003D7D 03                    1397 	.db	3
      003D7E 03                    1398 	.sleb128	3
      003D7F 01                    1399 	.db	1
      003D80 09                    1400 	.db	9
      003D81 00 07                 1401 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$83-Sstm8s_flash$FLASH_EraseOptionByte$82
      003D83 03                    1402 	.db	3
      003D84 03                    1403 	.sleb128	3
      003D85 01                    1404 	.db	1
      003D86 09                    1405 	.db	9
      003D87 00 05                 1406 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$84-Sstm8s_flash$FLASH_EraseOptionByte$83
      003D89 03                    1407 	.db	3
      003D8A 05                    1408 	.sleb128	5
      003D8B 01                    1409 	.db	1
      003D8C 09                    1410 	.db	9
      003D8D 00 03                 1411 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$85-Sstm8s_flash$FLASH_EraseOptionByte$84
      003D8F 03                    1412 	.db	3
      003D90 01                    1413 	.sleb128	1
      003D91 01                    1414 	.db	1
      003D92 09                    1415 	.db	9
      003D93 00 06                 1416 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$86-Sstm8s_flash$FLASH_EraseOptionByte$85
      003D95 03                    1417 	.db	3
      003D96 02                    1418 	.sleb128	2
      003D97 01                    1419 	.db	1
      003D98 09                    1420 	.db	9
      003D99 00 06                 1421 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$87-Sstm8s_flash$FLASH_EraseOptionByte$86
      003D9B 03                    1422 	.db	3
      003D9C 03                    1423 	.sleb128	3
      003D9D 01                    1424 	.db	1
      003D9E 09                    1425 	.db	9
      003D9F 00 04                 1426 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$88-Sstm8s_flash$FLASH_EraseOptionByte$87
      003DA1 03                    1427 	.db	3
      003DA2 01                    1428 	.sleb128	1
      003DA3 01                    1429 	.db	1
      003DA4 09                    1430 	.db	9
      003DA5 00 04                 1431 	.dw	Sstm8s_flash$FLASH_EraseOptionByte$89-Sstm8s_flash$FLASH_EraseOptionByte$88
      003DA7 03                    1432 	.db	3
      003DA8 01                    1433 	.sleb128	1
      003DA9 01                    1434 	.db	1
      003DAA 09                    1435 	.db	9
      003DAB 00 07                 1436 	.dw	7+Sstm8s_flash$FLASH_EraseOptionByte$90-Sstm8s_flash$FLASH_EraseOptionByte$89
      003DAD 00                    1437 	.db	0
      003DAE 01                    1438 	.uleb128	1
      003DAF 01                    1439 	.db	1
      003DB0 00                    1440 	.db	0
      003DB1 05                    1441 	.uleb128	5
      003DB2 02                    1442 	.db	2
      003DB3 00 00 B4 7F           1443 	.dw	0,(Sstm8s_flash$FLASH_ReadOptionByte$92)
      003DB7 03                    1444 	.db	3
      003DB8 AE 02                 1445 	.sleb128	302
      003DBA 01                    1446 	.db	1
      003DBB 09                    1447 	.db	9
      003DBC 00 0E                 1448 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$94-Sstm8s_flash$FLASH_ReadOptionByte$92
      003DBE 03                    1449 	.db	3
      003DBF 08                    1450 	.sleb128	8
      003DC0 01                    1451 	.db	1
      003DC1 09                    1452 	.db	9
      003DC2 00 03                 1453 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$95-Sstm8s_flash$FLASH_ReadOptionByte$94
      003DC4 03                    1454 	.db	3
      003DC5 01                    1455 	.sleb128	1
      003DC6 01                    1456 	.db	1
      003DC7 09                    1457 	.db	9
      003DC8 00 06                 1458 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$96-Sstm8s_flash$FLASH_ReadOptionByte$95
      003DCA 03                    1459 	.db	3
      003DCB 03                    1460 	.sleb128	3
      003DCC 01                    1461 	.db	1
      003DCD 09                    1462 	.db	9
      003DCE 00 07                 1463 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$97-Sstm8s_flash$FLASH_ReadOptionByte$96
      003DD0 03                    1464 	.db	3
      003DD1 02                    1465 	.sleb128	2
      003DD2 01                    1466 	.db	1
      003DD3 09                    1467 	.db	9
      003DD4 00 04                 1468 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$98-Sstm8s_flash$FLASH_ReadOptionByte$97
      003DD6 03                    1469 	.db	3
      003DD7 04                    1470 	.sleb128	4
      003DD8 01                    1471 	.db	1
      003DD9 09                    1472 	.db	9
      003DDA 00 0B                 1473 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$99-Sstm8s_flash$FLASH_ReadOptionByte$98
      003DDC 03                    1474 	.db	3
      003DDD 02                    1475 	.sleb128	2
      003DDE 01                    1476 	.db	1
      003DDF 09                    1477 	.db	9
      003DE0 00 04                 1478 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$100-Sstm8s_flash$FLASH_ReadOptionByte$99
      003DE2 03                    1479 	.db	3
      003DE3 01                    1480 	.sleb128	1
      003DE4 01                    1481 	.db	1
      003DE5 09                    1482 	.db	9
      003DE6 00 0E                 1483 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$101-Sstm8s_flash$FLASH_ReadOptionByte$100
      003DE8 03                    1484 	.db	3
      003DE9 04                    1485 	.sleb128	4
      003DEA 01                    1486 	.db	1
      003DEB 09                    1487 	.db	9
      003DEC 00 03                 1488 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$102-Sstm8s_flash$FLASH_ReadOptionByte$101
      003DEE 03                    1489 	.db	3
      003DEF 03                    1490 	.sleb128	3
      003DF0 01                    1491 	.db	1
      003DF1 09                    1492 	.db	9
      003DF2 00 00                 1493 	.dw	Sstm8s_flash$FLASH_ReadOptionByte$103-Sstm8s_flash$FLASH_ReadOptionByte$102
      003DF4 03                    1494 	.db	3
      003DF5 01                    1495 	.sleb128	1
      003DF6 01                    1496 	.db	1
      003DF7 09                    1497 	.db	9
      003DF8 00 09                 1498 	.dw	7+Sstm8s_flash$FLASH_ReadOptionByte$104-Sstm8s_flash$FLASH_ReadOptionByte$103
      003DFA 00                    1499 	.db	0
      003DFB 01                    1500 	.uleb128	1
      003DFC 01                    1501 	.db	1
      003DFD 00                    1502 	.db	0
      003DFE 05                    1503 	.uleb128	5
      003DFF 02                    1504 	.db	2
      003E00 00 00 B4 CA           1505 	.dw	0,(Sstm8s_flash$FLASH_SetLowPowerMode$106)
      003E04 03                    1506 	.db	3
      003E05 D3 02                 1507 	.sleb128	339
      003E07 01                    1508 	.db	1
      003E08 09                    1509 	.db	9
      003E09 00 0C                 1510 	.dw	Sstm8s_flash$FLASH_SetLowPowerMode$108-Sstm8s_flash$FLASH_SetLowPowerMode$106
      003E0B 03                    1511 	.db	3
      003E0C 06                    1512 	.sleb128	6
      003E0D 01                    1513 	.db	1
      003E0E 09                    1514 	.db	9
      003E0F 00 07                 1515 	.dw	Sstm8s_flash$FLASH_SetLowPowerMode$109-Sstm8s_flash$FLASH_SetLowPowerMode$108
      003E11 03                    1516 	.db	3
      003E12 03                    1517 	.sleb128	3
      003E13 01                    1518 	.db	1
      003E14 09                    1519 	.db	9
      003E15 00 0A                 1520 	.dw	Sstm8s_flash$FLASH_SetLowPowerMode$110-Sstm8s_flash$FLASH_SetLowPowerMode$109
      003E17 03                    1521 	.db	3
      003E18 01                    1522 	.sleb128	1
      003E19 01                    1523 	.db	1
      003E1A 09                    1524 	.db	9
      003E1B 00 07                 1525 	.dw	7+Sstm8s_flash$FLASH_SetLowPowerMode$111-Sstm8s_flash$FLASH_SetLowPowerMode$110
      003E1D 00                    1526 	.db	0
      003E1E 01                    1527 	.uleb128	1
      003E1F 01                    1528 	.db	1
      003E20 00                    1529 	.db	0
      003E21 05                    1530 	.uleb128	5
      003E22 02                    1531 	.db	2
      003E23 00 00 B4 EE           1532 	.dw	0,(Sstm8s_flash$FLASH_SetProgrammingTime$113)
      003E27 03                    1533 	.db	3
      003E28 E5 02                 1534 	.sleb128	357
      003E2A 01                    1535 	.db	1
      003E2B 09                    1536 	.db	9
      003E2C 00 0C                 1537 	.dw	Sstm8s_flash$FLASH_SetProgrammingTime$115-Sstm8s_flash$FLASH_SetProgrammingTime$113
      003E2E 03                    1538 	.db	3
      003E2F 05                    1539 	.sleb128	5
      003E30 01                    1540 	.db	1
      003E31 09                    1541 	.db	9
      003E32 00 04                 1542 	.dw	Sstm8s_flash$FLASH_SetProgrammingTime$116-Sstm8s_flash$FLASH_SetProgrammingTime$115
      003E34 03                    1543 	.db	3
      003E35 01                    1544 	.sleb128	1
      003E36 01                    1545 	.db	1
      003E37 09                    1546 	.db	9
      003E38 00 0A                 1547 	.dw	Sstm8s_flash$FLASH_SetProgrammingTime$117-Sstm8s_flash$FLASH_SetProgrammingTime$116
      003E3A 03                    1548 	.db	3
      003E3B 01                    1549 	.sleb128	1
      003E3C 01                    1550 	.db	1
      003E3D 09                    1551 	.db	9
      003E3E 00 07                 1552 	.dw	7+Sstm8s_flash$FLASH_SetProgrammingTime$118-Sstm8s_flash$FLASH_SetProgrammingTime$117
      003E40 00                    1553 	.db	0
      003E41 01                    1554 	.uleb128	1
      003E42 01                    1555 	.db	1
      003E43 00                    1556 	.db	0
      003E44 05                    1557 	.uleb128	5
      003E45 02                    1558 	.db	2
      003E46 00 00 B5 0F           1559 	.dw	0,(Sstm8s_flash$FLASH_GetLowPowerMode$120)
      003E4A 03                    1560 	.db	3
      003E4B F3 02                 1561 	.sleb128	371
      003E4D 01                    1562 	.db	1
      003E4E 09                    1563 	.db	9
      003E4F 00 0C                 1564 	.dw	Sstm8s_flash$FLASH_GetLowPowerMode$122-Sstm8s_flash$FLASH_GetLowPowerMode$120
      003E51 03                    1565 	.db	3
      003E52 02                    1566 	.sleb128	2
      003E53 01                    1567 	.db	1
      003E54 09                    1568 	.db	9
      003E55 00 06                 1569 	.dw	Sstm8s_flash$FLASH_GetLowPowerMode$123-Sstm8s_flash$FLASH_GetLowPowerMode$122
      003E57 03                    1570 	.db	3
      003E58 01                    1571 	.sleb128	1
      003E59 01                    1572 	.db	1
      003E5A 09                    1573 	.db	9
      003E5B 00 07                 1574 	.dw	7+Sstm8s_flash$FLASH_GetLowPowerMode$124-Sstm8s_flash$FLASH_GetLowPowerMode$123
      003E5D 00                    1575 	.db	0
      003E5E 01                    1576 	.uleb128	1
      003E5F 01                    1577 	.db	1
      003E60 00                    1578 	.db	0
      003E61 05                    1579 	.uleb128	5
      003E62 02                    1580 	.db	2
      003E63 00 00 B5 28           1581 	.dw	0,(Sstm8s_flash$FLASH_GetProgrammingTime$126)
      003E67 03                    1582 	.db	3
      003E68 FD 02                 1583 	.sleb128	381
      003E6A 01                    1584 	.db	1
      003E6B 09                    1585 	.db	9
      003E6C 00 0C                 1586 	.dw	Sstm8s_flash$FLASH_GetProgrammingTime$128-Sstm8s_flash$FLASH_GetProgrammingTime$126
      003E6E 03                    1587 	.db	3
      003E6F 02                    1588 	.sleb128	2
      003E70 01                    1589 	.db	1
      003E71 09                    1590 	.db	9
      003E72 00 06                 1591 	.dw	Sstm8s_flash$FLASH_GetProgrammingTime$129-Sstm8s_flash$FLASH_GetProgrammingTime$128
      003E74 03                    1592 	.db	3
      003E75 01                    1593 	.sleb128	1
      003E76 01                    1594 	.db	1
      003E77 09                    1595 	.db	9
      003E78 00 07                 1596 	.dw	7+Sstm8s_flash$FLASH_GetProgrammingTime$130-Sstm8s_flash$FLASH_GetProgrammingTime$129
      003E7A 00                    1597 	.db	0
      003E7B 01                    1598 	.uleb128	1
      003E7C 01                    1599 	.db	1
      003E7D 00                    1600 	.db	0
      003E7E 05                    1601 	.uleb128	5
      003E7F 02                    1602 	.db	2
      003E80 00 00 B5 41           1603 	.dw	0,(Sstm8s_flash$FLASH_GetBootSize$132)
      003E84 03                    1604 	.db	3
      003E85 87 03                 1605 	.sleb128	391
      003E87 01                    1606 	.db	1
      003E88 09                    1607 	.db	9
      003E89 00 0E                 1608 	.dw	Sstm8s_flash$FLASH_GetBootSize$134-Sstm8s_flash$FLASH_GetBootSize$132
      003E8B 03                    1609 	.db	3
      003E8C 05                    1610 	.sleb128	5
      003E8D 01                    1611 	.db	1
      003E8E 09                    1612 	.db	9
      003E8F 00 12                 1613 	.dw	Sstm8s_flash$FLASH_GetBootSize$135-Sstm8s_flash$FLASH_GetBootSize$134
      003E91 03                    1614 	.db	3
      003E92 03                    1615 	.sleb128	3
      003E93 01                    1616 	.db	1
      003E94 09                    1617 	.db	9
      003E95 00 0A                 1618 	.dw	Sstm8s_flash$FLASH_GetBootSize$136-Sstm8s_flash$FLASH_GetBootSize$135
      003E97 03                    1619 	.db	3
      003E98 02                    1620 	.sleb128	2
      003E99 01                    1621 	.db	1
      003E9A 09                    1622 	.db	9
      003E9B 00 11                 1623 	.dw	Sstm8s_flash$FLASH_GetBootSize$137-Sstm8s_flash$FLASH_GetBootSize$136
      003E9D 03                    1624 	.db	3
      003E9E 04                    1625 	.sleb128	4
      003E9F 01                    1626 	.db	1
      003EA0 09                    1627 	.db	9
      003EA1 00 02                 1628 	.dw	Sstm8s_flash$FLASH_GetBootSize$138-Sstm8s_flash$FLASH_GetBootSize$137
      003EA3 03                    1629 	.db	3
      003EA4 01                    1630 	.sleb128	1
      003EA5 01                    1631 	.db	1
      003EA6 09                    1632 	.db	9
      003EA7 00 09                 1633 	.dw	7+Sstm8s_flash$FLASH_GetBootSize$139-Sstm8s_flash$FLASH_GetBootSize$138
      003EA9 00                    1634 	.db	0
      003EAA 01                    1635 	.uleb128	1
      003EAB 01                    1636 	.db	1
      003EAC 00                    1637 	.db	0
      003EAD 05                    1638 	.uleb128	5
      003EAE 02                    1639 	.db	2
      003EAF 00 00 B5 87           1640 	.dw	0,(Sstm8s_flash$FLASH_GetFlagStatus$141)
      003EB3 03                    1641 	.db	3
      003EB4 A0 03                 1642 	.sleb128	416
      003EB6 01                    1643 	.db	1
      003EB7 09                    1644 	.db	9
      003EB8 00 0C                 1645 	.dw	Sstm8s_flash$FLASH_GetFlagStatus$143-Sstm8s_flash$FLASH_GetFlagStatus$141
      003EBA 03                    1646 	.db	3
      003EBB 07                    1647 	.sleb128	7
      003EBC 01                    1648 	.db	1
      003EBD 09                    1649 	.db	9
      003EBE 00 09                 1650 	.dw	Sstm8s_flash$FLASH_GetFlagStatus$144-Sstm8s_flash$FLASH_GetFlagStatus$143
      003EC0 03                    1651 	.db	3
      003EC1 02                    1652 	.sleb128	2
      003EC2 01                    1653 	.db	1
      003EC3 09                    1654 	.db	9
      003EC4 00 04                 1655 	.dw	Sstm8s_flash$FLASH_GetFlagStatus$145-Sstm8s_flash$FLASH_GetFlagStatus$144
      003EC6 03                    1656 	.db	3
      003EC7 04                    1657 	.sleb128	4
      003EC8 01                    1658 	.db	1
      003EC9 09                    1659 	.db	9
      003ECA 00 01                 1660 	.dw	Sstm8s_flash$FLASH_GetFlagStatus$146-Sstm8s_flash$FLASH_GetFlagStatus$145
      003ECC 03                    1661 	.db	3
      003ECD 04                    1662 	.sleb128	4
      003ECE 01                    1663 	.db	1
      003ECF 09                    1664 	.db	9
      003ED0 00 00                 1665 	.dw	Sstm8s_flash$FLASH_GetFlagStatus$147-Sstm8s_flash$FLASH_GetFlagStatus$146
      003ED2 03                    1666 	.db	3
      003ED3 01                    1667 	.sleb128	1
      003ED4 01                    1668 	.db	1
      003ED5 09                    1669 	.db	9
      003ED6 00 07                 1670 	.dw	7+Sstm8s_flash$FLASH_GetFlagStatus$148-Sstm8s_flash$FLASH_GetFlagStatus$147
      003ED8 00                    1671 	.db	0
      003ED9 01                    1672 	.uleb128	1
      003EDA 01                    1673 	.db	1
      003EDB 00                    1674 	.db	0
      003EDC 05                    1675 	.uleb128	5
      003EDD 02                    1676 	.db	2
      003EDE 00 00 B5 A8           1677 	.dw	0,(Sstm8s_flash$FLASH_WaitForLastOperation$150)
      003EE2 03                    1678 	.db	3
      003EE3 A4 04                 1679 	.sleb128	548
      003EE5 01                    1680 	.db	1
      003EE6 09                    1681 	.db	9
      003EE7 00 0C                 1682 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$152-Sstm8s_flash$FLASH_WaitForLastOperation$150
      003EE9 03                    1683 	.db	3
      003EEA 02                    1684 	.sleb128	2
      003EEB 01                    1685 	.db	1
      003EEC 09                    1686 	.db	9
      003EED 00 01                 1687 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$153-Sstm8s_flash$FLASH_WaitForLastOperation$152
      003EEF 03                    1688 	.db	3
      003EF0 06                    1689 	.sleb128	6
      003EF1 01                    1690 	.db	1
      003EF2 09                    1691 	.db	9
      003EF3 00 08                 1692 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$154-Sstm8s_flash$FLASH_WaitForLastOperation$153
      003EF5 03                    1693 	.db	3
      003EF6 02                    1694 	.sleb128	2
      003EF7 01                    1695 	.db	1
      003EF8 09                    1696 	.db	9
      003EF9 00 09                 1697 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$155-Sstm8s_flash$FLASH_WaitForLastOperation$154
      003EFB 03                    1698 	.db	3
      003EFC 02                    1699 	.sleb128	2
      003EFD 01                    1700 	.db	1
      003EFE 09                    1701 	.db	9
      003EFF 00 08                 1702 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$156-Sstm8s_flash$FLASH_WaitForLastOperation$155
      003F01 03                    1703 	.db	3
      003F02 02                    1704 	.sleb128	2
      003F03 01                    1705 	.db	1
      003F04 09                    1706 	.db	9
      003F05 00 03                 1707 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$157-Sstm8s_flash$FLASH_WaitForLastOperation$156
      003F07 03                    1708 	.db	3
      003F08 05                    1709 	.sleb128	5
      003F09 01                    1710 	.db	1
      003F0A 09                    1711 	.db	9
      003F0B 00 09                 1712 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$158-Sstm8s_flash$FLASH_WaitForLastOperation$157
      003F0D 03                    1713 	.db	3
      003F0E 02                    1714 	.sleb128	2
      003F0F 01                    1715 	.db	1
      003F10 09                    1716 	.db	9
      003F11 00 08                 1717 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$159-Sstm8s_flash$FLASH_WaitForLastOperation$158
      003F13 03                    1718 	.db	3
      003F14 02                    1719 	.sleb128	2
      003F15 01                    1720 	.db	1
      003F16 09                    1721 	.db	9
      003F17 00 03                 1722 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$160-Sstm8s_flash$FLASH_WaitForLastOperation$159
      003F19 03                    1723 	.db	3
      003F1A 11                    1724 	.sleb128	17
      003F1B 01                    1725 	.db	1
      003F1C 09                    1726 	.db	9
      003F1D 00 02                 1727 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$161-Sstm8s_flash$FLASH_WaitForLastOperation$160
      003F1F 03                    1728 	.db	3
      003F20 6F                    1729 	.sleb128	-17
      003F21 01                    1730 	.db	1
      003F22 09                    1731 	.db	9
      003F23 00 00                 1732 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$162-Sstm8s_flash$FLASH_WaitForLastOperation$161
      003F25 03                    1733 	.db	3
      003F26 0C                    1734 	.sleb128	12
      003F27 01                    1735 	.db	1
      003F28 09                    1736 	.db	9
      003F29 00 03                 1737 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$163-Sstm8s_flash$FLASH_WaitForLastOperation$162
      003F2B 03                    1738 	.db	3
      003F2C 02                    1739 	.sleb128	2
      003F2D 01                    1740 	.db	1
      003F2E 09                    1741 	.db	9
      003F2F 00 02                 1742 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$164-Sstm8s_flash$FLASH_WaitForLastOperation$163
      003F31 03                    1743 	.db	3
      003F32 03                    1744 	.sleb128	3
      003F33 01                    1745 	.db	1
      003F34 09                    1746 	.db	9
      003F35 00 00                 1747 	.dw	Sstm8s_flash$FLASH_WaitForLastOperation$165-Sstm8s_flash$FLASH_WaitForLastOperation$164
      003F37 03                    1748 	.db	3
      003F38 01                    1749 	.sleb128	1
      003F39 01                    1750 	.db	1
      003F3A 09                    1751 	.db	9
      003F3B 00 07                 1752 	.dw	7+Sstm8s_flash$FLASH_WaitForLastOperation$166-Sstm8s_flash$FLASH_WaitForLastOperation$165
      003F3D 00                    1753 	.db	0
      003F3E 01                    1754 	.uleb128	1
      003F3F 01                    1755 	.db	1
      003F40 00                    1756 	.db	0
      003F41 05                    1757 	.uleb128	5
      003F42 02                    1758 	.db	2
      003F43 00 00 B5 F3           1759 	.dw	0,(Sstm8s_flash$FLASH_EraseBlock$168)
      003F47 03                    1760 	.db	3
      003F48 D6 04                 1761 	.sleb128	598
      003F4A 01                    1762 	.db	1
      003F4B 09                    1763 	.db	9
      003F4C 00 0E                 1764 	.dw	Sstm8s_flash$FLASH_EraseBlock$170-Sstm8s_flash$FLASH_EraseBlock$168
      003F4E 03                    1765 	.db	3
      003F4F 0D                    1766 	.sleb128	13
      003F50 01                    1767 	.db	1
      003F51 09                    1768 	.db	9
      003F52 00 06                 1769 	.dw	Sstm8s_flash$FLASH_EraseBlock$171-Sstm8s_flash$FLASH_EraseBlock$170
      003F54 03                    1770 	.db	3
      003F55 03                    1771 	.sleb128	3
      003F56 01                    1772 	.db	1
      003F57 09                    1773 	.db	9
      003F58 00 0A                 1774 	.dw	Sstm8s_flash$FLASH_EraseBlock$172-Sstm8s_flash$FLASH_EraseBlock$171
      003F5A 03                    1775 	.db	3
      003F5B 05                    1776 	.sleb128	5
      003F5C 01                    1777 	.db	1
      003F5D 09                    1778 	.db	9
      003F5E 00 08                 1779 	.dw	Sstm8s_flash$FLASH_EraseBlock$173-Sstm8s_flash$FLASH_EraseBlock$172
      003F60 03                    1780 	.db	3
      003F61 08                    1781 	.sleb128	8
      003F62 01                    1782 	.db	1
      003F63 09                    1783 	.db	9
      003F64 00 16                 1784 	.dw	Sstm8s_flash$FLASH_EraseBlock$174-Sstm8s_flash$FLASH_EraseBlock$173
      003F66 03                    1785 	.db	3
      003F67 04                    1786 	.sleb128	4
      003F68 01                    1787 	.db	1
      003F69 09                    1788 	.db	9
      003F6A 00 07                 1789 	.dw	Sstm8s_flash$FLASH_EraseBlock$175-Sstm8s_flash$FLASH_EraseBlock$174
      003F6C 03                    1790 	.db	3
      003F6D 01                    1791 	.sleb128	1
      003F6E 01                    1792 	.db	1
      003F6F 09                    1793 	.db	9
      003F70 00 07                 1794 	.dw	Sstm8s_flash$FLASH_EraseBlock$176-Sstm8s_flash$FLASH_EraseBlock$175
      003F72 03                    1795 	.db	3
      003F73 04                    1796 	.sleb128	4
      003F74 01                    1797 	.db	1
      003F75 09                    1798 	.db	9
      003F76 00 09                 1799 	.dw	Sstm8s_flash$FLASH_EraseBlock$177-Sstm8s_flash$FLASH_EraseBlock$176
      003F78 03                    1800 	.db	3
      003F79 08                    1801 	.sleb128	8
      003F7A 01                    1802 	.db	1
      003F7B 09                    1803 	.db	9
      003F7C 00 09                 1804 	.dw	7+Sstm8s_flash$FLASH_EraseBlock$178-Sstm8s_flash$FLASH_EraseBlock$177
      003F7E 00                    1805 	.db	0
      003F7F 01                    1806 	.uleb128	1
      003F80 01                    1807 	.db	1
      003F81 00                    1808 	.db	0
      003F82 05                    1809 	.uleb128	5
      003F83 02                    1810 	.db	2
      003F84 00 00 B6 4F           1811 	.dw	0,(Sstm8s_flash$FLASH_ProgramBlock$180)
      003F88 03                    1812 	.db	3
      003F89 8F 05                 1813 	.sleb128	655
      003F8B 01                    1814 	.db	1
      003F8C 09                    1815 	.db	9
      003F8D 00 0E                 1816 	.dw	Sstm8s_flash$FLASH_ProgramBlock$182-Sstm8s_flash$FLASH_ProgramBlock$180
      003F8F 03                    1817 	.db	3
      003F90 09                    1818 	.sleb128	9
      003F91 01                    1819 	.db	1
      003F92 09                    1820 	.db	9
      003F93 00 06                 1821 	.dw	Sstm8s_flash$FLASH_ProgramBlock$183-Sstm8s_flash$FLASH_ProgramBlock$182
      003F95 03                    1822 	.db	3
      003F96 03                    1823 	.sleb128	3
      003F97 01                    1824 	.db	1
      003F98 09                    1825 	.db	9
      003F99 00 0A                 1826 	.dw	Sstm8s_flash$FLASH_ProgramBlock$184-Sstm8s_flash$FLASH_ProgramBlock$183
      003F9B 03                    1827 	.db	3
      003F9C 05                    1828 	.sleb128	5
      003F9D 01                    1829 	.db	1
      003F9E 09                    1830 	.db	9
      003F9F 00 08                 1831 	.dw	Sstm8s_flash$FLASH_ProgramBlock$185-Sstm8s_flash$FLASH_ProgramBlock$184
      003FA1 03                    1832 	.db	3
      003FA2 04                    1833 	.sleb128	4
      003FA3 01                    1834 	.db	1
      003FA4 09                    1835 	.db	9
      003FA5 00 35                 1836 	.dw	Sstm8s_flash$FLASH_ProgramBlock$186-Sstm8s_flash$FLASH_ProgramBlock$185
      003FA7 03                    1837 	.db	3
      003FA8 03                    1838 	.sleb128	3
      003FA9 01                    1839 	.db	1
      003FAA 09                    1840 	.db	9
      003FAB 00 04                 1841 	.dw	Sstm8s_flash$FLASH_ProgramBlock$187-Sstm8s_flash$FLASH_ProgramBlock$186
      003FAD 03                    1842 	.db	3
      003FAE 03                    1843 	.sleb128	3
      003FAF 01                    1844 	.db	1
      003FB0 09                    1845 	.db	9
      003FB1 00 04                 1846 	.dw	Sstm8s_flash$FLASH_ProgramBlock$188-Sstm8s_flash$FLASH_ProgramBlock$187
      003FB3 03                    1847 	.db	3
      003FB4 01                    1848 	.sleb128	1
      003FB5 01                    1849 	.db	1
      003FB6 09                    1850 	.db	9
      003FB7 00 09                 1851 	.dw	Sstm8s_flash$FLASH_ProgramBlock$189-Sstm8s_flash$FLASH_ProgramBlock$188
      003FB9 03                    1852 	.db	3
      003FBA 05                    1853 	.sleb128	5
      003FBB 01                    1854 	.db	1
      003FBC 09                    1855 	.db	9
      003FBD 00 07                 1856 	.dw	Sstm8s_flash$FLASH_ProgramBlock$190-Sstm8s_flash$FLASH_ProgramBlock$189
      003FBF 03                    1857 	.db	3
      003FC0 01                    1858 	.sleb128	1
      003FC1 01                    1859 	.db	1
      003FC2 09                    1860 	.db	9
      003FC3 00 07                 1861 	.dw	Sstm8s_flash$FLASH_ProgramBlock$191-Sstm8s_flash$FLASH_ProgramBlock$190
      003FC5 03                    1862 	.db	3
      003FC6 04                    1863 	.sleb128	4
      003FC7 01                    1864 	.db	1
      003FC8 09                    1865 	.db	9
      003FC9 00 03                 1866 	.dw	Sstm8s_flash$FLASH_ProgramBlock$192-Sstm8s_flash$FLASH_ProgramBlock$191
      003FCB 03                    1867 	.db	3
      003FCC 02                    1868 	.sleb128	2
      003FCD 01                    1869 	.db	1
      003FCE 09                    1870 	.db	9
      003FCF 00 0D                 1871 	.dw	Sstm8s_flash$FLASH_ProgramBlock$193-Sstm8s_flash$FLASH_ProgramBlock$192
      003FD1 03                    1872 	.db	3
      003FD2 7E                    1873 	.sleb128	-2
      003FD3 01                    1874 	.db	1
      003FD4 09                    1875 	.db	9
      003FD5 00 0C                 1876 	.dw	Sstm8s_flash$FLASH_ProgramBlock$194-Sstm8s_flash$FLASH_ProgramBlock$193
      003FD7 03                    1877 	.db	3
      003FD8 04                    1878 	.sleb128	4
      003FD9 01                    1879 	.db	1
      003FDA 09                    1880 	.db	9
      003FDB 00 09                 1881 	.dw	7+Sstm8s_flash$FLASH_ProgramBlock$195-Sstm8s_flash$FLASH_ProgramBlock$194
      003FDD 00                    1882 	.db	0
      003FDE 01                    1883 	.uleb128	1
      003FDF 01                    1884 	.db	1
      003FE0                       1885 Ldebug_line_end:
                                   1886 
                                   1887 	.area .debug_loc (NOLOAD)
      00111C                       1888 Ldebug_loc_start:
      00111C 00 00 B6 5B           1889 	.dw	0,(Sstm8s_flash$FLASH_ProgramBlock$181)
      001120 00 00 B6 EE           1890 	.dw	0,(Sstm8s_flash$FLASH_ProgramBlock$196)
      001124 00 02                 1891 	.dw	2
      001126 8F                    1892 	.db	143
      001127 01                    1893 	.sleb128	1
      001128 00 00 00 00           1894 	.dw	0,0
      00112C 00 00 00 00           1895 	.dw	0,0
      001130 00 00 B5 FF           1896 	.dw	0,(Sstm8s_flash$FLASH_EraseBlock$169)
      001134 00 00 B6 4F           1897 	.dw	0,(Sstm8s_flash$FLASH_EraseBlock$179)
      001138 00 02                 1898 	.dw	2
      00113A 8F                    1899 	.db	143
      00113B 01                    1900 	.sleb128	1
      00113C 00 00 00 00           1901 	.dw	0,0
      001140 00 00 00 00           1902 	.dw	0,0
      001144 00 00 B5 B4           1903 	.dw	0,(Sstm8s_flash$FLASH_WaitForLastOperation$151)
      001148 00 00 B5 F3           1904 	.dw	0,(Sstm8s_flash$FLASH_WaitForLastOperation$167)
      00114C 00 02                 1905 	.dw	2
      00114E 8F                    1906 	.db	143
      00114F 01                    1907 	.sleb128	1
      001150 00 00 00 00           1908 	.dw	0,0
      001154 00 00 00 00           1909 	.dw	0,0
      001158 00 00 B5 93           1910 	.dw	0,(Sstm8s_flash$FLASH_GetFlagStatus$142)
      00115C 00 00 B5 A8           1911 	.dw	0,(Sstm8s_flash$FLASH_GetFlagStatus$149)
      001160 00 02                 1912 	.dw	2
      001162 8F                    1913 	.db	143
      001163 01                    1914 	.sleb128	1
      001164 00 00 00 00           1915 	.dw	0,0
      001168 00 00 00 00           1916 	.dw	0,0
      00116C 00 00 B5 4D           1917 	.dw	0,(Sstm8s_flash$FLASH_GetBootSize$133)
      001170 00 00 B5 87           1918 	.dw	0,(Sstm8s_flash$FLASH_GetBootSize$140)
      001174 00 02                 1919 	.dw	2
      001176 8F                    1920 	.db	143
      001177 01                    1921 	.sleb128	1
      001178 00 00 00 00           1922 	.dw	0,0
      00117C 00 00 00 00           1923 	.dw	0,0
      001180 00 00 B5 34           1924 	.dw	0,(Sstm8s_flash$FLASH_GetProgrammingTime$127)
      001184 00 00 B5 41           1925 	.dw	0,(Sstm8s_flash$FLASH_GetProgrammingTime$131)
      001188 00 02                 1926 	.dw	2
      00118A 8F                    1927 	.db	143
      00118B 01                    1928 	.sleb128	1
      00118C 00 00 00 00           1929 	.dw	0,0
      001190 00 00 00 00           1930 	.dw	0,0
      001194 00 00 B5 1B           1931 	.dw	0,(Sstm8s_flash$FLASH_GetLowPowerMode$121)
      001198 00 00 B5 28           1932 	.dw	0,(Sstm8s_flash$FLASH_GetLowPowerMode$125)
      00119C 00 02                 1933 	.dw	2
      00119E 8F                    1934 	.db	143
      00119F 01                    1935 	.sleb128	1
      0011A0 00 00 00 00           1936 	.dw	0,0
      0011A4 00 00 00 00           1937 	.dw	0,0
      0011A8 00 00 B4 FA           1938 	.dw	0,(Sstm8s_flash$FLASH_SetProgrammingTime$114)
      0011AC 00 00 B5 0F           1939 	.dw	0,(Sstm8s_flash$FLASH_SetProgrammingTime$119)
      0011B0 00 02                 1940 	.dw	2
      0011B2 8F                    1941 	.db	143
      0011B3 01                    1942 	.sleb128	1
      0011B4 00 00 00 00           1943 	.dw	0,0
      0011B8 00 00 00 00           1944 	.dw	0,0
      0011BC 00 00 B4 D6           1945 	.dw	0,(Sstm8s_flash$FLASH_SetLowPowerMode$107)
      0011C0 00 00 B4 EE           1946 	.dw	0,(Sstm8s_flash$FLASH_SetLowPowerMode$112)
      0011C4 00 02                 1947 	.dw	2
      0011C6 8F                    1948 	.db	143
      0011C7 01                    1949 	.sleb128	1
      0011C8 00 00 00 00           1950 	.dw	0,0
      0011CC 00 00 00 00           1951 	.dw	0,0
      0011D0 00 00 B4 8B           1952 	.dw	0,(Sstm8s_flash$FLASH_ReadOptionByte$93)
      0011D4 00 00 B4 CA           1953 	.dw	0,(Sstm8s_flash$FLASH_ReadOptionByte$105)
      0011D8 00 02                 1954 	.dw	2
      0011DA 8F                    1955 	.db	143
      0011DB 01                    1956 	.sleb128	1
      0011DC 00 00 00 00           1957 	.dw	0,0
      0011E0 00 00 00 00           1958 	.dw	0,0
      0011E4 00 00 B4 4A           1959 	.dw	0,(Sstm8s_flash$FLASH_EraseOptionByte$79)
      0011E8 00 00 B4 7F           1960 	.dw	0,(Sstm8s_flash$FLASH_EraseOptionByte$91)
      0011EC 00 02                 1961 	.dw	2
      0011EE 8F                    1962 	.db	143
      0011EF 01                    1963 	.sleb128	1
      0011F0 00 00 00 00           1964 	.dw	0,0
      0011F4 00 00 00 00           1965 	.dw	0,0
      0011F8 00 00 B4 04           1966 	.dw	0,(Sstm8s_flash$FLASH_ProgramOptionByte$65)
      0011FC 00 00 B4 3E           1967 	.dw	0,(Sstm8s_flash$FLASH_ProgramOptionByte$77)
      001200 00 02                 1968 	.dw	2
      001202 8F                    1969 	.db	143
      001203 01                    1970 	.sleb128	1
      001204 00 00 00 00           1971 	.dw	0,0
      001208 00 00 00 00           1972 	.dw	0,0
      00120C 00 00 B3 B1           1973 	.dw	0,(Sstm8s_flash$FLASH_ProgramWord$54)
      001210 00 00 B3 F8           1974 	.dw	0,(Sstm8s_flash$FLASH_ProgramWord$63)
      001214 00 02                 1975 	.dw	2
      001216 8F                    1976 	.db	143
      001217 01                    1977 	.sleb128	1
      001218 00 00 00 00           1978 	.dw	0,0
      00121C 00 00 00 00           1979 	.dw	0,0
      001220 00 00 B3 9B           1980 	.dw	0,(Sstm8s_flash$FLASH_ReadByte$48)
      001224 00 00 B3 A5           1981 	.dw	0,(Sstm8s_flash$FLASH_ReadByte$52)
      001228 00 02                 1982 	.dw	2
      00122A 8F                    1983 	.db	143
      00122B 01                    1984 	.sleb128	1
      00122C 00 00 00 00           1985 	.dw	0,0
      001230 00 00 00 00           1986 	.dw	0,0
      001234 00 00 B3 83           1987 	.dw	0,(Sstm8s_flash$FLASH_ProgramByte$42)
      001238 00 00 B3 8F           1988 	.dw	0,(Sstm8s_flash$FLASH_ProgramByte$46)
      00123C 00 02                 1989 	.dw	2
      00123E 8F                    1990 	.db	143
      00123F 01                    1991 	.sleb128	1
      001240 00 00 00 00           1992 	.dw	0,0
      001244 00 00 00 00           1993 	.dw	0,0
      001248 00 00 B3 6D           1994 	.dw	0,(Sstm8s_flash$FLASH_EraseByte$36)
      00124C 00 00 B3 77           1995 	.dw	0,(Sstm8s_flash$FLASH_EraseByte$40)
      001250 00 02                 1996 	.dw	2
      001252 8F                    1997 	.db	143
      001253 01                    1998 	.sleb128	1
      001254 00 00 00 00           1999 	.dw	0,0
      001258 00 00 00 00           2000 	.dw	0,0
      00125C 00 00 B3 46           2001 	.dw	0,(Sstm8s_flash$FLASH_ITConfig$28)
      001260 00 00 B3 61           2002 	.dw	0,(Sstm8s_flash$FLASH_ITConfig$34)
      001264 00 02                 2003 	.dw	2
      001266 8F                    2004 	.db	143
      001267 01                    2005 	.sleb128	1
      001268 00 00 00 00           2006 	.dw	0,0
      00126C 00 00 00 00           2007 	.dw	0,0
      001270 00 00 B3 15           2008 	.dw	0,(Sstm8s_flash$FLASH_DeInit$17)
      001274 00 00 B3 3A           2009 	.dw	0,(Sstm8s_flash$FLASH_DeInit$26)
      001278 00 02                 2010 	.dw	2
      00127A 8F                    2011 	.db	143
      00127B 01                    2012 	.sleb128	1
      00127C 00 00 00 00           2013 	.dw	0,0
      001280 00 00 00 00           2014 	.dw	0,0
      001284 00 00 B2 F8           2015 	.dw	0,(Sstm8s_flash$FLASH_Lock$11)
      001288 00 00 B3 09           2016 	.dw	0,(Sstm8s_flash$FLASH_Lock$15)
      00128C 00 02                 2017 	.dw	2
      00128E 8F                    2018 	.db	143
      00128F 01                    2019 	.sleb128	1
      001290 00 00 00 00           2020 	.dw	0,0
      001294 00 00 00 00           2021 	.dw	0,0
      001298 00 00 B2 CD           2022 	.dw	0,(Sstm8s_flash$FLASH_Unlock$1)
      00129C 00 00 B2 EC           2023 	.dw	0,(Sstm8s_flash$FLASH_Unlock$9)
      0012A0 00 02                 2024 	.dw	2
      0012A2 8F                    2025 	.db	143
      0012A3 01                    2026 	.sleb128	1
      0012A4 00 00 00 00           2027 	.dw	0,0
      0012A8 00 00 00 00           2028 	.dw	0,0
                                   2029 
                                   2030 	.area .debug_abbrev (NOLOAD)
      0004FA                       2031 Ldebug_abbrev:
      0004FA 0C                    2032 	.uleb128	12
      0004FB 0F                    2033 	.uleb128	15
      0004FC 00                    2034 	.db	0
      0004FD 0B                    2035 	.uleb128	11
      0004FE 0B                    2036 	.uleb128	11
      0004FF 49                    2037 	.uleb128	73
      000500 13                    2038 	.uleb128	19
      000501 00                    2039 	.uleb128	0
      000502 00                    2040 	.uleb128	0
      000503 0A                    2041 	.uleb128	10
      000504 34                    2042 	.uleb128	52
      000505 00                    2043 	.db	0
      000506 03                    2044 	.uleb128	3
      000507 08                    2045 	.uleb128	8
      000508 49                    2046 	.uleb128	73
      000509 13                    2047 	.uleb128	19
      00050A 00                    2048 	.uleb128	0
      00050B 00                    2049 	.uleb128	0
      00050C 04                    2050 	.uleb128	4
      00050D 0B                    2051 	.uleb128	11
      00050E 00                    2052 	.db	0
      00050F 00                    2053 	.uleb128	0
      000510 00                    2054 	.uleb128	0
      000511 0B                    2055 	.uleb128	11
      000512 2E                    2056 	.uleb128	46
      000513 00                    2057 	.db	0
      000514 03                    2058 	.uleb128	3
      000515 08                    2059 	.uleb128	8
      000516 11                    2060 	.uleb128	17
      000517 01                    2061 	.uleb128	1
      000518 12                    2062 	.uleb128	18
      000519 01                    2063 	.uleb128	1
      00051A 3F                    2064 	.uleb128	63
      00051B 0C                    2065 	.uleb128	12
      00051C 40                    2066 	.uleb128	64
      00051D 06                    2067 	.uleb128	6
      00051E 49                    2068 	.uleb128	73
      00051F 13                    2069 	.uleb128	19
      000520 00                    2070 	.uleb128	0
      000521 00                    2071 	.uleb128	0
      000522 03                    2072 	.uleb128	3
      000523 05                    2073 	.uleb128	5
      000524 00                    2074 	.db	0
      000525 02                    2075 	.uleb128	2
      000526 0A                    2076 	.uleb128	10
      000527 03                    2077 	.uleb128	3
      000528 08                    2078 	.uleb128	8
      000529 49                    2079 	.uleb128	73
      00052A 13                    2080 	.uleb128	19
      00052B 00                    2081 	.uleb128	0
      00052C 00                    2082 	.uleb128	0
      00052D 02                    2083 	.uleb128	2
      00052E 2E                    2084 	.uleb128	46
      00052F 01                    2085 	.db	1
      000530 01                    2086 	.uleb128	1
      000531 13                    2087 	.uleb128	19
      000532 03                    2088 	.uleb128	3
      000533 08                    2089 	.uleb128	8
      000534 11                    2090 	.uleb128	17
      000535 01                    2091 	.uleb128	1
      000536 12                    2092 	.uleb128	18
      000537 01                    2093 	.uleb128	1
      000538 3F                    2094 	.uleb128	63
      000539 0C                    2095 	.uleb128	12
      00053A 40                    2096 	.uleb128	64
      00053B 06                    2097 	.uleb128	6
      00053C 00                    2098 	.uleb128	0
      00053D 00                    2099 	.uleb128	0
      00053E 09                    2100 	.uleb128	9
      00053F 34                    2101 	.uleb128	52
      000540 00                    2102 	.db	0
      000541 02                    2103 	.uleb128	2
      000542 0A                    2104 	.uleb128	10
      000543 03                    2105 	.uleb128	3
      000544 08                    2106 	.uleb128	8
      000545 49                    2107 	.uleb128	73
      000546 13                    2108 	.uleb128	19
      000547 00                    2109 	.uleb128	0
      000548 00                    2110 	.uleb128	0
      000549 07                    2111 	.uleb128	7
      00054A 2E                    2112 	.uleb128	46
      00054B 01                    2113 	.db	1
      00054C 01                    2114 	.uleb128	1
      00054D 13                    2115 	.uleb128	19
      00054E 03                    2116 	.uleb128	3
      00054F 08                    2117 	.uleb128	8
      000550 11                    2118 	.uleb128	17
      000551 01                    2119 	.uleb128	1
      000552 12                    2120 	.uleb128	18
      000553 01                    2121 	.uleb128	1
      000554 3F                    2122 	.uleb128	63
      000555 0C                    2123 	.uleb128	12
      000556 40                    2124 	.uleb128	64
      000557 06                    2125 	.uleb128	6
      000558 49                    2126 	.uleb128	73
      000559 13                    2127 	.uleb128	19
      00055A 00                    2128 	.uleb128	0
      00055B 00                    2129 	.uleb128	0
      00055C 08                    2130 	.uleb128	8
      00055D 0B                    2131 	.uleb128	11
      00055E 01                    2132 	.db	1
      00055F 01                    2133 	.uleb128	1
      000560 13                    2134 	.uleb128	19
      000561 00                    2135 	.uleb128	0
      000562 00                    2136 	.uleb128	0
      000563 01                    2137 	.uleb128	1
      000564 11                    2138 	.uleb128	17
      000565 01                    2139 	.db	1
      000566 03                    2140 	.uleb128	3
      000567 08                    2141 	.uleb128	8
      000568 10                    2142 	.uleb128	16
      000569 06                    2143 	.uleb128	6
      00056A 13                    2144 	.uleb128	19
      00056B 0B                    2145 	.uleb128	11
      00056C 25                    2146 	.uleb128	37
      00056D 08                    2147 	.uleb128	8
      00056E 00                    2148 	.uleb128	0
      00056F 00                    2149 	.uleb128	0
      000570 06                    2150 	.uleb128	6
      000571 2E                    2151 	.uleb128	46
      000572 00                    2152 	.db	0
      000573 03                    2153 	.uleb128	3
      000574 08                    2154 	.uleb128	8
      000575 11                    2155 	.uleb128	17
      000576 01                    2156 	.uleb128	1
      000577 12                    2157 	.uleb128	18
      000578 01                    2158 	.uleb128	1
      000579 3F                    2159 	.uleb128	63
      00057A 0C                    2160 	.uleb128	12
      00057B 40                    2161 	.uleb128	64
      00057C 06                    2162 	.uleb128	6
      00057D 00                    2163 	.uleb128	0
      00057E 00                    2164 	.uleb128	0
      00057F 0D                    2165 	.uleb128	13
      000580 2E                    2166 	.uleb128	46
      000581 01                    2167 	.db	1
      000582 03                    2168 	.uleb128	3
      000583 08                    2169 	.uleb128	8
      000584 11                    2170 	.uleb128	17
      000585 01                    2171 	.uleb128	1
      000586 12                    2172 	.uleb128	18
      000587 01                    2173 	.uleb128	1
      000588 3F                    2174 	.uleb128	63
      000589 0C                    2175 	.uleb128	12
      00058A 40                    2176 	.uleb128	64
      00058B 06                    2177 	.uleb128	6
      00058C 00                    2178 	.uleb128	0
      00058D 00                    2179 	.uleb128	0
      00058E 05                    2180 	.uleb128	5
      00058F 24                    2181 	.uleb128	36
      000590 00                    2182 	.db	0
      000591 03                    2183 	.uleb128	3
      000592 08                    2184 	.uleb128	8
      000593 0B                    2185 	.uleb128	11
      000594 0B                    2186 	.uleb128	11
      000595 3E                    2187 	.uleb128	62
      000596 0B                    2188 	.uleb128	11
      000597 00                    2189 	.uleb128	0
      000598 00                    2190 	.uleb128	0
      000599 00                    2191 	.uleb128	0
                                   2192 
                                   2193 	.area .debug_info (NOLOAD)
      00468B 00 00 06 13           2194 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00468F                       2195 Ldebug_info_start:
      00468F 00 02                 2196 	.dw	2
      004691 00 00 04 FA           2197 	.dw	0,(Ldebug_abbrev)
      004695 04                    2198 	.db	4
      004696 01                    2199 	.uleb128	1
      004697 53 74 64 50 65 72 69  2200 	.ascii "StdPeriphLib/src/stm8s_flash.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 66 6C 61 73 68
             2E 63
      0046B5 00                    2201 	.db	0
      0046B6 00 00 3A AA           2202 	.dw	0,(Ldebug_line_start+-4)
      0046BA 01                    2203 	.db	1
      0046BB 53 44 43 43 20 76 65  2204 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      0046D3 00                    2205 	.db	0
      0046D4 02                    2206 	.uleb128	2
      0046D5 00 00 00 81           2207 	.dw	0,129
      0046D9 46 4C 41 53 48 5F 55  2208 	.ascii "FLASH_Unlock"
             6E 6C 6F 63 6B
      0046E5 00                    2209 	.db	0
      0046E6 00 00 B2 C1           2210 	.dw	0,(_FLASH_Unlock)
      0046EA 00 00 B2 EC           2211 	.dw	0,(XG$FLASH_Unlock$0$0+7)
      0046EE 01                    2212 	.db	1
      0046EF 00 00 12 98           2213 	.dw	0,(Ldebug_loc_start+380)
      0046F3 03                    2214 	.uleb128	3
      0046F4 02                    2215 	.db	2
      0046F5 91                    2216 	.db	145
      0046F6 04                    2217 	.sleb128	4
      0046F7 46 4C 41 53 48 5F 4D  2218 	.ascii "FLASH_MemType"
             65 6D 54 79 70 65
      004704 00                    2219 	.db	0
      004705 00 00 00 81           2220 	.dw	0,129
      004709 04                    2221 	.uleb128	4
      00470A 04                    2222 	.uleb128	4
      00470B 00                    2223 	.uleb128	0
      00470C 05                    2224 	.uleb128	5
      00470D 75 6E 73 69 67 6E 65  2225 	.ascii "unsigned char"
             64 20 63 68 61 72
      00471A 00                    2226 	.db	0
      00471B 01                    2227 	.db	1
      00471C 08                    2228 	.db	8
      00471D 02                    2229 	.uleb128	2
      00471E 00 00 00 C6           2230 	.dw	0,198
      004722 46 4C 41 53 48 5F 4C  2231 	.ascii "FLASH_Lock"
             6F 63 6B
      00472C 00                    2232 	.db	0
      00472D 00 00 B2 EC           2233 	.dw	0,(_FLASH_Lock)
      004731 00 00 B3 09           2234 	.dw	0,(XG$FLASH_Lock$0$0+7)
      004735 01                    2235 	.db	1
      004736 00 00 12 84           2236 	.dw	0,(Ldebug_loc_start+360)
      00473A 03                    2237 	.uleb128	3
      00473B 02                    2238 	.db	2
      00473C 91                    2239 	.db	145
      00473D 04                    2240 	.sleb128	4
      00473E 46 4C 41 53 48 5F 4D  2241 	.ascii "FLASH_MemType"
             65 6D 54 79 70 65
      00474B 00                    2242 	.db	0
      00474C 00 00 00 81           2243 	.dw	0,129
      004750 00                    2244 	.uleb128	0
      004751 06                    2245 	.uleb128	6
      004752 46 4C 41 53 48 5F 44  2246 	.ascii "FLASH_DeInit"
             65 49 6E 69 74
      00475E 00                    2247 	.db	0
      00475F 00 00 B3 09           2248 	.dw	0,(_FLASH_DeInit)
      004763 00 00 B3 3A           2249 	.dw	0,(XG$FLASH_DeInit$0$0+7)
      004767 01                    2250 	.db	1
      004768 00 00 12 70           2251 	.dw	0,(Ldebug_loc_start+340)
      00476C 02                    2252 	.uleb128	2
      00476D 00 00 01 16           2253 	.dw	0,278
      004771 46 4C 41 53 48 5F 49  2254 	.ascii "FLASH_ITConfig"
             54 43 6F 6E 66 69 67
      00477F 00                    2255 	.db	0
      004780 00 00 B3 3A           2256 	.dw	0,(_FLASH_ITConfig)
      004784 00 00 B3 61           2257 	.dw	0,(XG$FLASH_ITConfig$0$0+7)
      004788 01                    2258 	.db	1
      004789 00 00 12 5C           2259 	.dw	0,(Ldebug_loc_start+320)
      00478D 03                    2260 	.uleb128	3
      00478E 02                    2261 	.db	2
      00478F 91                    2262 	.db	145
      004790 04                    2263 	.sleb128	4
      004791 4E 65 77 53 74 61 74  2264 	.ascii "NewState"
             65
      004799 00                    2265 	.db	0
      00479A 00 00 00 81           2266 	.dw	0,129
      00479E 04                    2267 	.uleb128	4
      00479F 04                    2268 	.uleb128	4
      0047A0 00                    2269 	.uleb128	0
      0047A1 02                    2270 	.uleb128	2
      0047A2 00 00 01 49           2271 	.dw	0,329
      0047A6 46 4C 41 53 48 5F 45  2272 	.ascii "FLASH_EraseByte"
             72 61 73 65 42 79 74
             65
      0047B5 00                    2273 	.db	0
      0047B6 00 00 B3 61           2274 	.dw	0,(_FLASH_EraseByte)
      0047BA 00 00 B3 77           2275 	.dw	0,(XG$FLASH_EraseByte$0$0+7)
      0047BE 01                    2276 	.db	1
      0047BF 00 00 12 48           2277 	.dw	0,(Ldebug_loc_start+300)
      0047C3 03                    2278 	.uleb128	3
      0047C4 02                    2279 	.db	2
      0047C5 91                    2280 	.db	145
      0047C6 04                    2281 	.sleb128	4
      0047C7 41 64 64 72 65 73 73  2282 	.ascii "Address"
      0047CE 00                    2283 	.db	0
      0047CF 00 00 01 49           2284 	.dw	0,329
      0047D3 00                    2285 	.uleb128	0
      0047D4 05                    2286 	.uleb128	5
      0047D5 75 6E 73 69 67 6E 65  2287 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      0047E2 00                    2288 	.db	0
      0047E3 04                    2289 	.db	4
      0047E4 07                    2290 	.db	7
      0047E5 02                    2291 	.uleb128	2
      0047E6 00 00 01 9C           2292 	.dw	0,412
      0047EA 46 4C 41 53 48 5F 50  2293 	.ascii "FLASH_ProgramByte"
             72 6F 67 72 61 6D 42
             79 74 65
      0047FB 00                    2294 	.db	0
      0047FC 00 00 B3 77           2295 	.dw	0,(_FLASH_ProgramByte)
      004800 00 00 B3 8F           2296 	.dw	0,(XG$FLASH_ProgramByte$0$0+7)
      004804 01                    2297 	.db	1
      004805 00 00 12 34           2298 	.dw	0,(Ldebug_loc_start+280)
      004809 03                    2299 	.uleb128	3
      00480A 02                    2300 	.db	2
      00480B 91                    2301 	.db	145
      00480C 04                    2302 	.sleb128	4
      00480D 41 64 64 72 65 73 73  2303 	.ascii "Address"
      004814 00                    2304 	.db	0
      004815 00 00 01 49           2305 	.dw	0,329
      004819 03                    2306 	.uleb128	3
      00481A 02                    2307 	.db	2
      00481B 91                    2308 	.db	145
      00481C 08                    2309 	.sleb128	8
      00481D 44 61 74 61           2310 	.ascii "Data"
      004821 00                    2311 	.db	0
      004822 00 00 00 81           2312 	.dw	0,129
      004826 00                    2313 	.uleb128	0
      004827 07                    2314 	.uleb128	7
      004828 00 00 01 D2           2315 	.dw	0,466
      00482C 46 4C 41 53 48 5F 52  2316 	.ascii "FLASH_ReadByte"
             65 61 64 42 79 74 65
      00483A 00                    2317 	.db	0
      00483B 00 00 B3 8F           2318 	.dw	0,(_FLASH_ReadByte)
      00483F 00 00 B3 A5           2319 	.dw	0,(XG$FLASH_ReadByte$0$0+7)
      004843 01                    2320 	.db	1
      004844 00 00 12 20           2321 	.dw	0,(Ldebug_loc_start+260)
      004848 00 00 00 81           2322 	.dw	0,129
      00484C 03                    2323 	.uleb128	3
      00484D 02                    2324 	.db	2
      00484E 91                    2325 	.db	145
      00484F 04                    2326 	.sleb128	4
      004850 41 64 64 72 65 73 73  2327 	.ascii "Address"
      004857 00                    2328 	.db	0
      004858 00 00 01 49           2329 	.dw	0,329
      00485C 00                    2330 	.uleb128	0
      00485D 02                    2331 	.uleb128	2
      00485E 00 00 02 14           2332 	.dw	0,532
      004862 46 4C 41 53 48 5F 50  2333 	.ascii "FLASH_ProgramWord"
             72 6F 67 72 61 6D 57
             6F 72 64
      004873 00                    2334 	.db	0
      004874 00 00 B3 A5           2335 	.dw	0,(_FLASH_ProgramWord)
      004878 00 00 B3 F8           2336 	.dw	0,(XG$FLASH_ProgramWord$0$0+7)
      00487C 01                    2337 	.db	1
      00487D 00 00 12 0C           2338 	.dw	0,(Ldebug_loc_start+240)
      004881 03                    2339 	.uleb128	3
      004882 02                    2340 	.db	2
      004883 91                    2341 	.db	145
      004884 04                    2342 	.sleb128	4
      004885 41 64 64 72 65 73 73  2343 	.ascii "Address"
      00488C 00                    2344 	.db	0
      00488D 00 00 01 49           2345 	.dw	0,329
      004891 03                    2346 	.uleb128	3
      004892 02                    2347 	.db	2
      004893 91                    2348 	.db	145
      004894 08                    2349 	.sleb128	8
      004895 44 61 74 61           2350 	.ascii "Data"
      004899 00                    2351 	.db	0
      00489A 00 00 01 49           2352 	.dw	0,329
      00489E 00                    2353 	.uleb128	0
      00489F 02                    2354 	.uleb128	2
      0048A0 00 00 02 5E           2355 	.dw	0,606
      0048A4 46 4C 41 53 48 5F 50  2356 	.ascii "FLASH_ProgramOptionByte"
             72 6F 67 72 61 6D 4F
             70 74 69 6F 6E 42 79
             74 65
      0048BB 00                    2357 	.db	0
      0048BC 00 00 B3 F8           2358 	.dw	0,(_FLASH_ProgramOptionByte)
      0048C0 00 00 B4 3E           2359 	.dw	0,(XG$FLASH_ProgramOptionByte$0$0+7)
      0048C4 01                    2360 	.db	1
      0048C5 00 00 11 F8           2361 	.dw	0,(Ldebug_loc_start+220)
      0048C9 03                    2362 	.uleb128	3
      0048CA 02                    2363 	.db	2
      0048CB 91                    2364 	.db	145
      0048CC 04                    2365 	.sleb128	4
      0048CD 41 64 64 72 65 73 73  2366 	.ascii "Address"
      0048D4 00                    2367 	.db	0
      0048D5 00 00 02 5E           2368 	.dw	0,606
      0048D9 03                    2369 	.uleb128	3
      0048DA 02                    2370 	.db	2
      0048DB 91                    2371 	.db	145
      0048DC 06                    2372 	.sleb128	6
      0048DD 44 61 74 61           2373 	.ascii "Data"
      0048E1 00                    2374 	.db	0
      0048E2 00 00 00 81           2375 	.dw	0,129
      0048E6 04                    2376 	.uleb128	4
      0048E7 04                    2377 	.uleb128	4
      0048E8 00                    2378 	.uleb128	0
      0048E9 05                    2379 	.uleb128	5
      0048EA 75 6E 73 69 67 6E 65  2380 	.ascii "unsigned int"
             64 20 69 6E 74
      0048F6 00                    2381 	.db	0
      0048F7 02                    2382 	.db	2
      0048F8 07                    2383 	.db	7
      0048F9 02                    2384 	.uleb128	2
      0048FA 00 00 02 A9           2385 	.dw	0,681
      0048FE 46 4C 41 53 48 5F 45  2386 	.ascii "FLASH_EraseOptionByte"
             72 61 73 65 4F 70 74
             69 6F 6E 42 79 74 65
      004913 00                    2387 	.db	0
      004914 00 00 B4 3E           2388 	.dw	0,(_FLASH_EraseOptionByte)
      004918 00 00 B4 7F           2389 	.dw	0,(XG$FLASH_EraseOptionByte$0$0+7)
      00491C 01                    2390 	.db	1
      00491D 00 00 11 E4           2391 	.dw	0,(Ldebug_loc_start+200)
      004921 03                    2392 	.uleb128	3
      004922 02                    2393 	.db	2
      004923 91                    2394 	.db	145
      004924 04                    2395 	.sleb128	4
      004925 41 64 64 72 65 73 73  2396 	.ascii "Address"
      00492C 00                    2397 	.db	0
      00492D 00 00 02 5E           2398 	.dw	0,606
      004931 04                    2399 	.uleb128	4
      004932 04                    2400 	.uleb128	4
      004933 00                    2401 	.uleb128	0
      004934 07                    2402 	.uleb128	7
      004935 00 00 03 30           2403 	.dw	0,816
      004939 46 4C 41 53 48 5F 52  2404 	.ascii "FLASH_ReadOptionByte"
             65 61 64 4F 70 74 69
             6F 6E 42 79 74 65
      00494D 00                    2405 	.db	0
      00494E 00 00 B4 7F           2406 	.dw	0,(_FLASH_ReadOptionByte)
      004952 00 00 B4 CA           2407 	.dw	0,(XG$FLASH_ReadOptionByte$0$0+7)
      004956 01                    2408 	.db	1
      004957 00 00 11 D0           2409 	.dw	0,(Ldebug_loc_start+180)
      00495B 00 00 02 5E           2410 	.dw	0,606
      00495F 03                    2411 	.uleb128	3
      004960 02                    2412 	.db	2
      004961 91                    2413 	.db	145
      004962 04                    2414 	.sleb128	4
      004963 41 64 64 72 65 73 73  2415 	.ascii "Address"
      00496A 00                    2416 	.db	0
      00496B 00 00 02 5E           2417 	.dw	0,606
      00496F 04                    2418 	.uleb128	4
      004970 08                    2419 	.uleb128	8
      004971 00 00 02 ED           2420 	.dw	0,749
      004975 04                    2421 	.uleb128	4
      004976 04                    2422 	.uleb128	4
      004977 00                    2423 	.uleb128	0
      004978 09                    2424 	.uleb128	9
      004979 01                    2425 	.db	1
      00497A 51                    2426 	.db	81
      00497B 76 61 6C 75 65 5F 6F  2427 	.ascii "value_optbyte"
             70 74 62 79 74 65
      004988 00                    2428 	.db	0
      004989 00 00 00 81           2429 	.dw	0,129
      00498D 0A                    2430 	.uleb128	10
      00498E 76 61 6C 75 65 5F 6F  2431 	.ascii "value_optbyte_complement"
             70 74 62 79 74 65 5F
             63 6F 6D 70 6C 65 6D
             65 6E 74
      0049A6 00                    2432 	.db	0
      0049A7 00 00 00 81           2433 	.dw	0,129
      0049AB 0A                    2434 	.uleb128	10
      0049AC 72 65 73 5F 76 61 6C  2435 	.ascii "res_value"
             75 65
      0049B5 00                    2436 	.db	0
      0049B6 00 00 02 5E           2437 	.dw	0,606
      0049BA 00                    2438 	.uleb128	0
      0049BB 02                    2439 	.uleb128	2
      0049BC 00 00 03 6E           2440 	.dw	0,878
      0049C0 46 4C 41 53 48 5F 53  2441 	.ascii "FLASH_SetLowPowerMode"
             65 74 4C 6F 77 50 6F
             77 65 72 4D 6F 64 65
      0049D5 00                    2442 	.db	0
      0049D6 00 00 B4 CA           2443 	.dw	0,(_FLASH_SetLowPowerMode)
      0049DA 00 00 B4 EE           2444 	.dw	0,(XG$FLASH_SetLowPowerMode$0$0+7)
      0049DE 01                    2445 	.db	1
      0049DF 00 00 11 BC           2446 	.dw	0,(Ldebug_loc_start+160)
      0049E3 03                    2447 	.uleb128	3
      0049E4 02                    2448 	.db	2
      0049E5 91                    2449 	.db	145
      0049E6 04                    2450 	.sleb128	4
      0049E7 46 4C 41 53 48 5F 4C  2451 	.ascii "FLASH_LPMode"
             50 4D 6F 64 65
      0049F3 00                    2452 	.db	0
      0049F4 00 00 00 81           2453 	.dw	0,129
      0049F8 00                    2454 	.uleb128	0
      0049F9 02                    2455 	.uleb128	2
      0049FA 00 00 03 B1           2456 	.dw	0,945
      0049FE 46 4C 41 53 48 5F 53  2457 	.ascii "FLASH_SetProgrammingTime"
             65 74 50 72 6F 67 72
             61 6D 6D 69 6E 67 54
             69 6D 65
      004A16 00                    2458 	.db	0
      004A17 00 00 B4 EE           2459 	.dw	0,(_FLASH_SetProgrammingTime)
      004A1B 00 00 B5 0F           2460 	.dw	0,(XG$FLASH_SetProgrammingTime$0$0+7)
      004A1F 01                    2461 	.db	1
      004A20 00 00 11 A8           2462 	.dw	0,(Ldebug_loc_start+140)
      004A24 03                    2463 	.uleb128	3
      004A25 02                    2464 	.db	2
      004A26 91                    2465 	.db	145
      004A27 04                    2466 	.sleb128	4
      004A28 46 4C 41 53 48 5F 50  2467 	.ascii "FLASH_ProgTime"
             72 6F 67 54 69 6D 65
      004A36 00                    2468 	.db	0
      004A37 00 00 00 81           2469 	.dw	0,129
      004A3B 00                    2470 	.uleb128	0
      004A3C 0B                    2471 	.uleb128	11
      004A3D 46 4C 41 53 48 5F 47  2472 	.ascii "FLASH_GetLowPowerMode"
             65 74 4C 6F 77 50 6F
             77 65 72 4D 6F 64 65
      004A52 00                    2473 	.db	0
      004A53 00 00 B5 0F           2474 	.dw	0,(_FLASH_GetLowPowerMode)
      004A57 00 00 B5 28           2475 	.dw	0,(XG$FLASH_GetLowPowerMode$0$0+7)
      004A5B 01                    2476 	.db	1
      004A5C 00 00 11 94           2477 	.dw	0,(Ldebug_loc_start+120)
      004A60 00 00 00 81           2478 	.dw	0,129
      004A64 0B                    2479 	.uleb128	11
      004A65 46 4C 41 53 48 5F 47  2480 	.ascii "FLASH_GetProgrammingTime"
             65 74 50 72 6F 67 72
             61 6D 6D 69 6E 67 54
             69 6D 65
      004A7D 00                    2481 	.db	0
      004A7E 00 00 B5 28           2482 	.dw	0,(_FLASH_GetProgrammingTime)
      004A82 00 00 B5 41           2483 	.dw	0,(XG$FLASH_GetProgrammingTime$0$0+7)
      004A86 01                    2484 	.db	1
      004A87 00 00 11 80           2485 	.dw	0,(Ldebug_loc_start+100)
      004A8B 00 00 00 81           2486 	.dw	0,129
      004A8F 07                    2487 	.uleb128	7
      004A90 00 00 04 3B           2488 	.dw	0,1083
      004A94 46 4C 41 53 48 5F 47  2489 	.ascii "FLASH_GetBootSize"
             65 74 42 6F 6F 74 53
             69 7A 65
      004AA5 00                    2490 	.db	0
      004AA6 00 00 B5 41           2491 	.dw	0,(_FLASH_GetBootSize)
      004AAA 00 00 B5 87           2492 	.dw	0,(XG$FLASH_GetBootSize$0$0+7)
      004AAE 01                    2493 	.db	1
      004AAF 00 00 11 6C           2494 	.dw	0,(Ldebug_loc_start+80)
      004AB3 00 00 01 49           2495 	.dw	0,329
      004AB7 04                    2496 	.uleb128	4
      004AB8 09                    2497 	.uleb128	9
      004AB9 02                    2498 	.db	2
      004ABA 91                    2499 	.db	145
      004ABB 7C                    2500 	.sleb128	-4
      004ABC 74 65 6D 70           2501 	.ascii "temp"
      004AC0 00                    2502 	.db	0
      004AC1 00 00 01 49           2503 	.dw	0,329
      004AC5 00                    2504 	.uleb128	0
      004AC6 07                    2505 	.uleb128	7
      004AC7 00 00 04 89           2506 	.dw	0,1161
      004ACB 46 4C 41 53 48 5F 47  2507 	.ascii "FLASH_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      004ADE 00                    2508 	.db	0
      004ADF 00 00 B5 87           2509 	.dw	0,(_FLASH_GetFlagStatus)
      004AE3 00 00 B5 A8           2510 	.dw	0,(XG$FLASH_GetFlagStatus$0$0+7)
      004AE7 01                    2511 	.db	1
      004AE8 00 00 11 58           2512 	.dw	0,(Ldebug_loc_start+60)
      004AEC 00 00 00 81           2513 	.dw	0,129
      004AF0 03                    2514 	.uleb128	3
      004AF1 02                    2515 	.db	2
      004AF2 91                    2516 	.db	145
      004AF3 04                    2517 	.sleb128	4
      004AF4 46 4C 41 53 48 5F 46  2518 	.ascii "FLASH_FLAG"
             4C 41 47
      004AFE 00                    2519 	.db	0
      004AFF 00 00 00 81           2520 	.dw	0,129
      004B03 04                    2521 	.uleb128	4
      004B04 04                    2522 	.uleb128	4
      004B05 09                    2523 	.uleb128	9
      004B06 01                    2524 	.db	1
      004B07 51                    2525 	.db	81
      004B08 73 74 61 74 75 73     2526 	.ascii "status"
      004B0E 00                    2527 	.db	0
      004B0F 00 00 00 81           2528 	.dw	0,129
      004B13 00                    2529 	.uleb128	0
      004B14 07                    2530 	.uleb128	7
      004B15 00 00 04 FF           2531 	.dw	0,1279
      004B19 46 4C 41 53 48 5F 57  2532 	.ascii "FLASH_WaitForLastOperation"
             61 69 74 46 6F 72 4C
             61 73 74 4F 70 65 72
             61 74 69 6F 6E
      004B33 00                    2533 	.db	0
      004B34 00 00 B5 A8           2534 	.dw	0,(_FLASH_WaitForLastOperation)
      004B38 00 00 B5 F3           2535 	.dw	0,(XG$FLASH_WaitForLastOperation$0$0+7)
      004B3C 01                    2536 	.db	1
      004B3D 00 00 11 44           2537 	.dw	0,(Ldebug_loc_start+40)
      004B41 00 00 00 81           2538 	.dw	0,129
      004B45 03                    2539 	.uleb128	3
      004B46 02                    2540 	.db	2
      004B47 91                    2541 	.db	145
      004B48 04                    2542 	.sleb128	4
      004B49 46 4C 41 53 48 5F 4D  2543 	.ascii "FLASH_MemType"
             65 6D 54 79 70 65
      004B56 00                    2544 	.db	0
      004B57 00 00 00 81           2545 	.dw	0,129
      004B5B 08                    2546 	.uleb128	8
      004B5C 00 00 04 D7           2547 	.dw	0,1239
      004B60 04                    2548 	.uleb128	4
      004B61 00                    2549 	.uleb128	0
      004B62 08                    2550 	.uleb128	8
      004B63 00 00 04 DE           2551 	.dw	0,1246
      004B67 04                    2552 	.uleb128	4
      004B68 00                    2553 	.uleb128	0
      004B69 04                    2554 	.uleb128	4
      004B6A 09                    2555 	.uleb128	9
      004B6B 01                    2556 	.db	1
      004B6C 51                    2557 	.db	81
      004B6D 66 6C 61 67 73 74 61  2558 	.ascii "flagstatus"
             74 75 73
      004B77 00                    2559 	.db	0
      004B78 00 00 00 81           2560 	.dw	0,129
      004B7C 0A                    2561 	.uleb128	10
      004B7D 74 69 6D 65 6F 75 74  2562 	.ascii "timeout"
      004B84 00                    2563 	.db	0
      004B85 00 00 02 5E           2564 	.dw	0,606
      004B89 00                    2565 	.uleb128	0
      004B8A 02                    2566 	.uleb128	2
      004B8B 00 00 05 77           2567 	.dw	0,1399
      004B8F 46 4C 41 53 48 5F 45  2568 	.ascii "FLASH_EraseBlock"
             72 61 73 65 42 6C 6F
             63 6B
      004B9F 00                    2569 	.db	0
      004BA0 00 00 B5 F3           2570 	.dw	0,(_FLASH_EraseBlock)
      004BA4 00 00 B6 4F           2571 	.dw	0,(XG$FLASH_EraseBlock$0$0+7)
      004BA8 01                    2572 	.db	1
      004BA9 00 00 11 30           2573 	.dw	0,(Ldebug_loc_start+20)
      004BAD 03                    2574 	.uleb128	3
      004BAE 02                    2575 	.db	2
      004BAF 91                    2576 	.db	145
      004BB0 04                    2577 	.sleb128	4
      004BB1 42 6C 6F 63 6B 4E 75  2578 	.ascii "BlockNum"
             6D
      004BB9 00                    2579 	.db	0
      004BBA 00 00 02 5E           2580 	.dw	0,606
      004BBE 03                    2581 	.uleb128	3
      004BBF 02                    2582 	.db	2
      004BC0 91                    2583 	.db	145
      004BC1 06                    2584 	.sleb128	6
      004BC2 46 4C 41 53 48 5F 4D  2585 	.ascii "FLASH_MemType"
             65 6D 54 79 70 65
      004BCF 00                    2586 	.db	0
      004BD0 00 00 00 81           2587 	.dw	0,129
      004BD4 04                    2588 	.uleb128	4
      004BD5 04                    2589 	.uleb128	4
      004BD6 09                    2590 	.uleb128	9
      004BD7 02                    2591 	.db	2
      004BD8 91                    2592 	.db	145
      004BD9 7C                    2593 	.sleb128	-4
      004BDA 73 74 61 72 74 61 64  2594 	.ascii "startaddress"
             64 72 65 73 73
      004BE6 00                    2595 	.db	0
      004BE7 00 00 01 49           2596 	.dw	0,329
      004BEB 0C                    2597 	.uleb128	12
      004BEC 02                    2598 	.db	2
      004BED 00 00 01 49           2599 	.dw	0,329
      004BF1 09                    2600 	.uleb128	9
      004BF2 02                    2601 	.db	2
      004BF3 91                    2602 	.db	145
      004BF4 7A                    2603 	.sleb128	-6
      004BF5 70 77 46 6C 61 73 68  2604 	.ascii "pwFlash"
      004BFC 00                    2605 	.db	0
      004BFD 00 00 05 60           2606 	.dw	0,1376
      004C01 00                    2607 	.uleb128	0
      004C02 0D                    2608 	.uleb128	13
      004C03 46 4C 41 53 48 5F 50  2609 	.ascii "FLASH_ProgramBlock"
             72 6F 67 72 61 6D 42
             6C 6F 63 6B
      004C15 00                    2610 	.db	0
      004C16 00 00 B6 4F           2611 	.dw	0,(_FLASH_ProgramBlock)
      004C1A 00 00 B6 EE           2612 	.dw	0,(XG$FLASH_ProgramBlock$0$0+7)
      004C1E 01                    2613 	.db	1
      004C1F 00 00 11 1C           2614 	.dw	0,(Ldebug_loc_start)
      004C23 03                    2615 	.uleb128	3
      004C24 02                    2616 	.db	2
      004C25 91                    2617 	.db	145
      004C26 04                    2618 	.sleb128	4
      004C27 42 6C 6F 63 6B 4E 75  2619 	.ascii "BlockNum"
             6D
      004C2F 00                    2620 	.db	0
      004C30 00 00 02 5E           2621 	.dw	0,606
      004C34 03                    2622 	.uleb128	3
      004C35 02                    2623 	.db	2
      004C36 91                    2624 	.db	145
      004C37 06                    2625 	.sleb128	6
      004C38 46 4C 41 53 48 5F 4D  2626 	.ascii "FLASH_MemType"
             65 6D 54 79 70 65
      004C45 00                    2627 	.db	0
      004C46 00 00 00 81           2628 	.dw	0,129
      004C4A 03                    2629 	.uleb128	3
      004C4B 02                    2630 	.db	2
      004C4C 91                    2631 	.db	145
      004C4D 07                    2632 	.sleb128	7
      004C4E 46 4C 41 53 48 5F 50  2633 	.ascii "FLASH_ProgMode"
             72 6F 67 4D 6F 64 65
      004C5C 00                    2634 	.db	0
      004C5D 00 00 00 81           2635 	.dw	0,129
      004C61 0C                    2636 	.uleb128	12
      004C62 02                    2637 	.db	2
      004C63 00 00 00 81           2638 	.dw	0,129
      004C67 03                    2639 	.uleb128	3
      004C68 02                    2640 	.db	2
      004C69 91                    2641 	.db	145
      004C6A 08                    2642 	.sleb128	8
      004C6B 42 75 66 66 65 72     2643 	.ascii "Buffer"
      004C71 00                    2644 	.db	0
      004C72 00 00 05 D6           2645 	.dw	0,1494
      004C76 04                    2646 	.uleb128	4
      004C77 04                    2647 	.uleb128	4
      004C78 04                    2648 	.uleb128	4
      004C79 04                    2649 	.uleb128	4
      004C7A 04                    2650 	.uleb128	4
      004C7B 09                    2651 	.uleb128	9
      004C7C 02                    2652 	.db	2
      004C7D 91                    2653 	.db	145
      004C7E 72                    2654 	.sleb128	-14
      004C7F 43 6F 75 6E 74        2655 	.ascii "Count"
      004C84 00                    2656 	.db	0
      004C85 00 00 02 5E           2657 	.dw	0,606
      004C89 09                    2658 	.uleb128	9
      004C8A 02                    2659 	.db	2
      004C8B 91                    2660 	.db	145
      004C8C 6E                    2661 	.sleb128	-18
      004C8D 73 74 61 72 74 61 64  2662 	.ascii "startaddress"
             64 72 65 73 73
      004C99 00                    2663 	.db	0
      004C9A 00 00 01 49           2664 	.dw	0,329
      004C9E 00                    2665 	.uleb128	0
      004C9F 00                    2666 	.uleb128	0
      004CA0 00                    2667 	.uleb128	0
      004CA1 00                    2668 	.uleb128	0
      004CA2                       2669 Ldebug_info_end:
                                   2670 
                                   2671 	.area .debug_pubnames (NOLOAD)
      001434 00 00 01 DB           2672 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      001438                       2673 Ldebug_pubnames_start:
      001438 00 02                 2674 	.dw	2
      00143A 00 00 46 8B           2675 	.dw	0,(Ldebug_info_start-4)
      00143E 00 00 06 17           2676 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      001442 00 00 00 49           2677 	.dw	0,73
      001446 46 4C 41 53 48 5F 55  2678 	.ascii "FLASH_Unlock"
             6E 6C 6F 63 6B
      001452 00                    2679 	.db	0
      001453 00 00 00 92           2680 	.dw	0,146
      001457 46 4C 41 53 48 5F 4C  2681 	.ascii "FLASH_Lock"
             6F 63 6B
      001461 00                    2682 	.db	0
      001462 00 00 00 C6           2683 	.dw	0,198
      001466 46 4C 41 53 48 5F 44  2684 	.ascii "FLASH_DeInit"
             65 49 6E 69 74
      001472 00                    2685 	.db	0
      001473 00 00 00 E1           2686 	.dw	0,225
      001477 46 4C 41 53 48 5F 49  2687 	.ascii "FLASH_ITConfig"
             54 43 6F 6E 66 69 67
      001485 00                    2688 	.db	0
      001486 00 00 01 16           2689 	.dw	0,278
      00148A 46 4C 41 53 48 5F 45  2690 	.ascii "FLASH_EraseByte"
             72 61 73 65 42 79 74
             65
      001499 00                    2691 	.db	0
      00149A 00 00 01 5A           2692 	.dw	0,346
      00149E 46 4C 41 53 48 5F 50  2693 	.ascii "FLASH_ProgramByte"
             72 6F 67 72 61 6D 42
             79 74 65
      0014AF 00                    2694 	.db	0
      0014B0 00 00 01 9C           2695 	.dw	0,412
      0014B4 46 4C 41 53 48 5F 52  2696 	.ascii "FLASH_ReadByte"
             65 61 64 42 79 74 65
      0014C2 00                    2697 	.db	0
      0014C3 00 00 01 D2           2698 	.dw	0,466
      0014C7 46 4C 41 53 48 5F 50  2699 	.ascii "FLASH_ProgramWord"
             72 6F 67 72 61 6D 57
             6F 72 64
      0014D8 00                    2700 	.db	0
      0014D9 00 00 02 14           2701 	.dw	0,532
      0014DD 46 4C 41 53 48 5F 50  2702 	.ascii "FLASH_ProgramOptionByte"
             72 6F 67 72 61 6D 4F
             70 74 69 6F 6E 42 79
             74 65
      0014F4 00                    2703 	.db	0
      0014F5 00 00 02 6E           2704 	.dw	0,622
      0014F9 46 4C 41 53 48 5F 45  2705 	.ascii "FLASH_EraseOptionByte"
             72 61 73 65 4F 70 74
             69 6F 6E 42 79 74 65
      00150E 00                    2706 	.db	0
      00150F 00 00 02 A9           2707 	.dw	0,681
      001513 46 4C 41 53 48 5F 52  2708 	.ascii "FLASH_ReadOptionByte"
             65 61 64 4F 70 74 69
             6F 6E 42 79 74 65
      001527 00                    2709 	.db	0
      001528 00 00 03 30           2710 	.dw	0,816
      00152C 46 4C 41 53 48 5F 53  2711 	.ascii "FLASH_SetLowPowerMode"
             65 74 4C 6F 77 50 6F
             77 65 72 4D 6F 64 65
      001541 00                    2712 	.db	0
      001542 00 00 03 6E           2713 	.dw	0,878
      001546 46 4C 41 53 48 5F 53  2714 	.ascii "FLASH_SetProgrammingTime"
             65 74 50 72 6F 67 72
             61 6D 6D 69 6E 67 54
             69 6D 65
      00155E 00                    2715 	.db	0
      00155F 00 00 03 B1           2716 	.dw	0,945
      001563 46 4C 41 53 48 5F 47  2717 	.ascii "FLASH_GetLowPowerMode"
             65 74 4C 6F 77 50 6F
             77 65 72 4D 6F 64 65
      001578 00                    2718 	.db	0
      001579 00 00 03 D9           2719 	.dw	0,985
      00157D 46 4C 41 53 48 5F 47  2720 	.ascii "FLASH_GetProgrammingTime"
             65 74 50 72 6F 67 72
             61 6D 6D 69 6E 67 54
             69 6D 65
      001595 00                    2721 	.db	0
      001596 00 00 04 04           2722 	.dw	0,1028
      00159A 46 4C 41 53 48 5F 47  2723 	.ascii "FLASH_GetBootSize"
             65 74 42 6F 6F 74 53
             69 7A 65
      0015AB 00                    2724 	.db	0
      0015AC 00 00 04 3B           2725 	.dw	0,1083
      0015B0 46 4C 41 53 48 5F 47  2726 	.ascii "FLASH_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      0015C3 00                    2727 	.db	0
      0015C4 00 00 04 89           2728 	.dw	0,1161
      0015C8 46 4C 41 53 48 5F 57  2729 	.ascii "FLASH_WaitForLastOperation"
             61 69 74 46 6F 72 4C
             61 73 74 4F 70 65 72
             61 74 69 6F 6E
      0015E2 00                    2730 	.db	0
      0015E3 00 00 04 FF           2731 	.dw	0,1279
      0015E7 46 4C 41 53 48 5F 45  2732 	.ascii "FLASH_EraseBlock"
             72 61 73 65 42 6C 6F
             63 6B
      0015F7 00                    2733 	.db	0
      0015F8 00 00 05 77           2734 	.dw	0,1399
      0015FC 46 4C 41 53 48 5F 50  2735 	.ascii "FLASH_ProgramBlock"
             72 6F 67 72 61 6D 42
             6C 6F 63 6B
      00160E 00                    2736 	.db	0
      00160F 00 00 00 00           2737 	.dw	0,0
      001613                       2738 Ldebug_pubnames_end:
                                   2739 
                                   2740 	.area .debug_frame (NOLOAD)
      0000B4 00 00                 2741 	.dw	0
      0000B6 00 0E                 2742 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      0000B8                       2743 Ldebug_CIE_start:
      0000B8 FF FF                 2744 	.dw	0xffff
      0000BA FF FF                 2745 	.dw	0xffff
      0000BC 01                    2746 	.db	1
      0000BD 00                    2747 	.db	0
      0000BE 01                    2748 	.uleb128	1
      0000BF 01                    2749 	.sleb128	1
      0000C0 00                    2750 	.db	0
      0000C1 0C                    2751 	.db	12
      0000C2 00                    2752 	.uleb128	0
      0000C3 00                    2753 	.uleb128	0
      0000C4 80                    2754 	.db	128
      0000C5 00                    2755 	.uleb128	0
      0000C6                       2756 Ldebug_CIE_end:
