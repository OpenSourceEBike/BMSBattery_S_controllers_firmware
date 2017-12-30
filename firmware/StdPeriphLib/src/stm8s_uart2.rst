                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_GetClockFreq
                                     12 	.globl _UART2_DeInit
                                     13 	.globl _UART2_Init
                                     14 	.globl _UART2_Cmd
                                     15 	.globl _UART2_ITConfig
                                     16 	.globl _UART2_IrDAConfig
                                     17 	.globl _UART2_IrDACmd
                                     18 	.globl _UART2_LINBreakDetectionConfig
                                     19 	.globl _UART2_LINConfig
                                     20 	.globl _UART2_LINCmd
                                     21 	.globl _UART2_SmartCardCmd
                                     22 	.globl _UART2_SmartCardNACKCmd
                                     23 	.globl _UART2_WakeUpConfig
                                     24 	.globl _UART2_ReceiverWakeUpCmd
                                     25 	.globl _UART2_ReceiveData8
                                     26 	.globl _UART2_ReceiveData9
                                     27 	.globl _UART2_SendData8
                                     28 	.globl _UART2_SendData9
                                     29 	.globl _UART2_SendBreak
                                     30 	.globl _UART2_SetAddress
                                     31 	.globl _UART2_SetGuardTime
                                     32 	.globl _UART2_SetPrescaler
                                     33 	.globl _UART2_GetFlagStatus
                                     34 	.globl _UART2_ClearFlag
                                     35 	.globl _UART2_GetITStatus
                                     36 	.globl _UART2_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area GSINIT
                                     56 ;--------------------------------------------------------
                                     57 ; Home
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area HOME
                                     61 ;--------------------------------------------------------
                                     62 ; code
                                     63 ;--------------------------------------------------------
                                     64 	.area CODE
                           000000    65 	Sstm8s_uart2$UART2_DeInit$0 ==.
                                     66 ;	StdPeriphLib/src/stm8s_uart2.c: 53: void UART2_DeInit(void)
                                     67 ;	-----------------------------------------
                                     68 ;	 function UART2_DeInit
                                     69 ;	-----------------------------------------
      008C5A                         70 _UART2_DeInit:
      008C5A 3B 01 A5         [ 1]   71 	push	_fp_+1
      008C5D 3B 01 A4         [ 1]   72 	push	_fp_
      008C60 90 96            [ 1]   73 	ldw	y, sp
      008C62 90 CF 01 A4      [ 2]   74 	ldw	_fp_, y
                           00000C    75 	Sstm8s_uart2$UART2_DeInit$1 ==.
                           00000C    76 	Sstm8s_uart2$UART2_DeInit$2 ==.
                                     77 ;	StdPeriphLib/src/stm8s_uart2.c: 57: (void) UART2->SR;
      008C66 AE 52 40         [ 2]   78 	ldw	x, #0x5240
      008C69 F6               [ 1]   79 	ld	a, (x)
                           000010    80 	Sstm8s_uart2$UART2_DeInit$3 ==.
                                     81 ;	StdPeriphLib/src/stm8s_uart2.c: 58: (void)UART2->DR;
      008C6A AE 52 41         [ 2]   82 	ldw	x, #0x5241
      008C6D F6               [ 1]   83 	ld	a, (x)
                           000014    84 	Sstm8s_uart2$UART2_DeInit$4 ==.
                                     85 ;	StdPeriphLib/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      008C6E 35 00 52 43      [ 1]   86 	mov	0x5243+0, #0x00
                           000018    87 	Sstm8s_uart2$UART2_DeInit$5 ==.
                                     88 ;	StdPeriphLib/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      008C72 35 00 52 42      [ 1]   89 	mov	0x5242+0, #0x00
                           00001C    90 	Sstm8s_uart2$UART2_DeInit$6 ==.
                                     91 ;	StdPeriphLib/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      008C76 35 00 52 44      [ 1]   92 	mov	0x5244+0, #0x00
                           000020    93 	Sstm8s_uart2$UART2_DeInit$7 ==.
                                     94 ;	StdPeriphLib/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      008C7A 35 00 52 45      [ 1]   95 	mov	0x5245+0, #0x00
                           000024    96 	Sstm8s_uart2$UART2_DeInit$8 ==.
                                     97 ;	StdPeriphLib/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      008C7E 35 00 52 46      [ 1]   98 	mov	0x5246+0, #0x00
                           000028    99 	Sstm8s_uart2$UART2_DeInit$9 ==.
                                    100 ;	StdPeriphLib/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      008C82 35 00 52 47      [ 1]  101 	mov	0x5247+0, #0x00
                           00002C   102 	Sstm8s_uart2$UART2_DeInit$10 ==.
                                    103 ;	StdPeriphLib/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      008C86 35 00 52 48      [ 1]  104 	mov	0x5248+0, #0x00
                           000030   105 	Sstm8s_uart2$UART2_DeInit$11 ==.
                                    106 ;	StdPeriphLib/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      008C8A 35 00 52 49      [ 1]  107 	mov	0x5249+0, #0x00
                           000034   108 	Sstm8s_uart2$UART2_DeInit$12 ==.
                                    109 ;	StdPeriphLib/src/stm8s_uart2.c: 69: }
                           000034   110 	Sstm8s_uart2$UART2_DeInit$13 ==.
                           000034   111 	XG$UART2_DeInit$0$0 ==.
      008C8E 32 01 A4         [ 1]  112 	pop	_fp_
      008C91 32 01 A5         [ 1]  113 	pop	_fp_+1
      008C94 81               [ 4]  114 	ret
                           00003B   115 	Sstm8s_uart2$UART2_DeInit$14 ==.
                           00003B   116 	Sstm8s_uart2$UART2_Init$15 ==.
                                    117 ;	StdPeriphLib/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    118 ;	-----------------------------------------
                                    119 ;	 function UART2_Init
                                    120 ;	-----------------------------------------
      008C95                        121 _UART2_Init:
      008C95 3B 01 A5         [ 1]  122 	push	_fp_+1
      008C98 3B 01 A4         [ 1]  123 	push	_fp_
      008C9B 90 96            [ 1]  124 	ldw	y, sp
      008C9D 90 CF 01 A4      [ 2]  125 	ldw	_fp_, y
                           000047   126 	Sstm8s_uart2$UART2_Init$16 ==.
      008CA1 52 23            [ 2]  127 	sub	sp, #35
                           000049   128 	Sstm8s_uart2$UART2_Init$17 ==.
                                    129 ;	StdPeriphLib/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      008CA3 AE 52 44         [ 2]  130 	ldw	x, #0x5244
      008CA6 F6               [ 1]  131 	ld	a, (x)
      008CA7 A4 EF            [ 1]  132 	and	a, #0xef
      008CA9 F7               [ 1]  133 	ld	(x), a
                           000050   134 	Sstm8s_uart2$UART2_Init$18 ==.
                                    135 ;	StdPeriphLib/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      008CAA AE 52 44         [ 2]  136 	ldw	x, #0x5244
      008CAD F6               [ 1]  137 	ld	a, (x)
      008CAE 1A 2C            [ 1]  138 	or	a, (0x2c, sp)
      008CB0 AE 52 44         [ 2]  139 	ldw	x, #0x5244
      008CB3 F7               [ 1]  140 	ld	(x), a
                           00005A   141 	Sstm8s_uart2$UART2_Init$19 ==.
                                    142 ;	StdPeriphLib/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      008CB4 AE 52 46         [ 2]  143 	ldw	x, #0x5246
      008CB7 F6               [ 1]  144 	ld	a, (x)
      008CB8 A4 CF            [ 1]  145 	and	a, #0xcf
      008CBA F7               [ 1]  146 	ld	(x), a
                           000061   147 	Sstm8s_uart2$UART2_Init$20 ==.
                                    148 ;	StdPeriphLib/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      008CBB AE 52 46         [ 2]  149 	ldw	x, #0x5246
      008CBE F6               [ 1]  150 	ld	a, (x)
      008CBF 1A 2D            [ 1]  151 	or	a, (0x2d, sp)
      008CC1 AE 52 46         [ 2]  152 	ldw	x, #0x5246
      008CC4 F7               [ 1]  153 	ld	(x), a
                           00006B   154 	Sstm8s_uart2$UART2_Init$21 ==.
                                    155 ;	StdPeriphLib/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      008CC5 AE 52 44         [ 2]  156 	ldw	x, #0x5244
      008CC8 F6               [ 1]  157 	ld	a, (x)
      008CC9 A4 F9            [ 1]  158 	and	a, #0xf9
      008CCB F7               [ 1]  159 	ld	(x), a
                           000072   160 	Sstm8s_uart2$UART2_Init$22 ==.
                                    161 ;	StdPeriphLib/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      008CCC AE 52 44         [ 2]  162 	ldw	x, #0x5244
      008CCF F6               [ 1]  163 	ld	a, (x)
      008CD0 1A 2E            [ 1]  164 	or	a, (0x2e, sp)
      008CD2 AE 52 44         [ 2]  165 	ldw	x, #0x5244
      008CD5 F7               [ 1]  166 	ld	(x), a
                           00007C   167 	Sstm8s_uart2$UART2_Init$23 ==.
                                    168 ;	StdPeriphLib/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      008CD6 AE 52 42         [ 2]  169 	ldw	x, #0x5242
      008CD9 F6               [ 1]  170 	ld	a, (x)
      008CDA 35 00 52 42      [ 1]  171 	mov	0x5242+0, #0x00
                           000084   172 	Sstm8s_uart2$UART2_Init$24 ==.
                                    173 ;	StdPeriphLib/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      008CDE AE 52 43         [ 2]  174 	ldw	x, #0x5243
      008CE1 F6               [ 1]  175 	ld	a, (x)
      008CE2 A4 0F            [ 1]  176 	and	a, #0x0f
      008CE4 F7               [ 1]  177 	ld	(x), a
                           00008B   178 	Sstm8s_uart2$UART2_Init$25 ==.
                                    179 ;	StdPeriphLib/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      008CE5 AE 52 43         [ 2]  180 	ldw	x, #0x5243
      008CE8 F6               [ 1]  181 	ld	a, (x)
      008CE9 A4 F0            [ 1]  182 	and	a, #0xf0
      008CEB F7               [ 1]  183 	ld	(x), a
                           000092   184 	Sstm8s_uart2$UART2_Init$26 ==.
                                    185 ;	StdPeriphLib/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      008CEC CD 87 73         [ 4]  186 	call	_CLK_GetClockFreq
      008CEF 1F 0C            [ 2]  187 	ldw	(0x0c, sp), x
      008CF1 1E 28            [ 2]  188 	ldw	x, (0x28, sp)
      008CF3 1F 0E            [ 2]  189 	ldw	(0x0e, sp), x
      008CF5 1E 2A            [ 2]  190 	ldw	x, (0x2a, sp)
      008CF7 A6 04            [ 1]  191 	ld	a, #0x04
      008CF9                        192 00121$:
      008CF9 58               [ 2]  193 	sllw	x
      008CFA 09 0F            [ 1]  194 	rlc	(0x0f, sp)
      008CFC 09 0E            [ 1]  195 	rlc	(0x0e, sp)
      008CFE 4A               [ 1]  196 	dec	a
      008CFF 26 F8            [ 1]  197 	jrne	00121$
      008D01 1F 10            [ 2]  198 	ldw	(0x10, sp), x
      008D03 1E 10            [ 2]  199 	ldw	x, (0x10, sp)
      008D05 89               [ 2]  200 	pushw	x
      008D06 1E 10            [ 2]  201 	ldw	x, (0x10, sp)
      008D08 89               [ 2]  202 	pushw	x
      008D09 1E 10            [ 2]  203 	ldw	x, (0x10, sp)
      008D0B 89               [ 2]  204 	pushw	x
      008D0C 90 89            [ 2]  205 	pushw	y
      008D0E CD DA 75         [ 4]  206 	call	__divulong
      008D11 5B 08            [ 2]  207 	addw	sp, #8
      008D13 1F 07            [ 2]  208 	ldw	(0x07, sp), x
      008D15 17 05            [ 2]  209 	ldw	(0x05, sp), y
                           0000BD   210 	Sstm8s_uart2$UART2_Init$27 ==.
                                    211 ;	StdPeriphLib/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      008D17 CD 87 73         [ 4]  212 	call	_CLK_GetClockFreq
      008D1A 9F               [ 1]  213 	ld	a, xl
      008D1B 88               [ 1]  214 	push	a
      008D1C 9E               [ 1]  215 	ld	a, xh
      008D1D 88               [ 1]  216 	push	a
      008D1E 90 89            [ 2]  217 	pushw	y
      008D20 4B 64            [ 1]  218 	push	#0x64
      008D22 5F               [ 1]  219 	clrw	x
      008D23 89               [ 2]  220 	pushw	x
      008D24 4B 00            [ 1]  221 	push	#0x00
      008D26 CD DD BA         [ 4]  222 	call	__mullong
      008D29 5B 08            [ 2]  223 	addw	sp, #8
      008D2B 1F 22            [ 2]  224 	ldw	(0x22, sp), x
      008D2D 1E 10            [ 2]  225 	ldw	x, (0x10, sp)
      008D2F 89               [ 2]  226 	pushw	x
      008D30 1E 10            [ 2]  227 	ldw	x, (0x10, sp)
      008D32 89               [ 2]  228 	pushw	x
      008D33 1E 26            [ 2]  229 	ldw	x, (0x26, sp)
      008D35 89               [ 2]  230 	pushw	x
      008D36 90 89            [ 2]  231 	pushw	y
      008D38 CD DA 75         [ 4]  232 	call	__divulong
      008D3B 5B 08            [ 2]  233 	addw	sp, #8
      008D3D 1F 03            [ 2]  234 	ldw	(0x03, sp), x
      008D3F 17 01            [ 2]  235 	ldw	(0x01, sp), y
                           0000E7   236 	Sstm8s_uart2$UART2_Init$28 ==.
                                    237 ;	StdPeriphLib/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      008D41 1E 07            [ 2]  238 	ldw	x, (0x07, sp)
      008D43 89               [ 2]  239 	pushw	x
      008D44 1E 07            [ 2]  240 	ldw	x, (0x07, sp)
      008D46 89               [ 2]  241 	pushw	x
      008D47 4B 64            [ 1]  242 	push	#0x64
      008D49 5F               [ 1]  243 	clrw	x
      008D4A 89               [ 2]  244 	pushw	x
      008D4B 4B 00            [ 1]  245 	push	#0x00
      008D4D CD DD BA         [ 4]  246 	call	__mullong
      008D50 5B 08            [ 2]  247 	addw	sp, #8
      008D52 1F 1E            [ 2]  248 	ldw	(0x1e, sp), x
      008D54 17 1C            [ 2]  249 	ldw	(0x1c, sp), y
      008D56 1E 03            [ 2]  250 	ldw	x, (0x03, sp)
      008D58 72 F0 1E         [ 2]  251 	subw	x, (0x1e, sp)
      008D5B 1F 1A            [ 2]  252 	ldw	(0x1a, sp), x
      008D5D 7B 02            [ 1]  253 	ld	a, (0x02, sp)
      008D5F 12 1D            [ 1]  254 	sbc	a, (0x1d, sp)
      008D61 6B 19            [ 1]  255 	ld	(0x19, sp), a
      008D63 7B 01            [ 1]  256 	ld	a, (0x01, sp)
      008D65 12 1C            [ 1]  257 	sbc	a, (0x1c, sp)
      008D67 6B 18            [ 1]  258 	ld	(0x18, sp), a
      008D69 1E 1A            [ 2]  259 	ldw	x, (0x1a, sp)
      008D6B 16 18            [ 2]  260 	ldw	y, (0x18, sp)
      008D6D A6 04            [ 1]  261 	ld	a, #0x04
      008D6F                        262 00123$:
      008D6F 58               [ 2]  263 	sllw	x
      008D70 90 59            [ 2]  264 	rlcw	y
      008D72 4A               [ 1]  265 	dec	a
      008D73 26 FA            [ 1]  266 	jrne	00123$
      008D75 4B 64            [ 1]  267 	push	#0x64
      008D77 4B 00            [ 1]  268 	push	#0x00
      008D79 4B 00            [ 1]  269 	push	#0x00
      008D7B 4B 00            [ 1]  270 	push	#0x00
      008D7D 89               [ 2]  271 	pushw	x
      008D7E 90 89            [ 2]  272 	pushw	y
      008D80 CD DA 75         [ 4]  273 	call	__divulong
      008D83 5B 08            [ 2]  274 	addw	sp, #8
      008D85 9F               [ 1]  275 	ld	a, xl
      008D86 A4 0F            [ 1]  276 	and	a, #0x0f
      008D88 6B 09            [ 1]  277 	ld	(0x09, sp), a
                           000130   278 	Sstm8s_uart2$UART2_Init$29 ==.
                                    279 ;	StdPeriphLib/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      008D8A 1E 07            [ 2]  280 	ldw	x, (0x07, sp)
      008D8C 16 05            [ 2]  281 	ldw	y, (0x05, sp)
      008D8E 90 54            [ 2]  282 	srlw	y
      008D90 56               [ 2]  283 	rrcw	x
      008D91 90 54            [ 2]  284 	srlw	y
      008D93 56               [ 2]  285 	rrcw	x
      008D94 90 54            [ 2]  286 	srlw	y
      008D96 56               [ 2]  287 	rrcw	x
      008D97 90 54            [ 2]  288 	srlw	y
      008D99 56               [ 2]  289 	rrcw	x
      008D9A 9F               [ 1]  290 	ld	a, xl
      008D9B A4 F0            [ 1]  291 	and	a, #0xf0
      008D9D 88               [ 1]  292 	push	a
      008D9E 5F               [ 1]  293 	clrw	x
      008D9F 0F 15            [ 1]  294 	clr	(0x15, sp)
      008DA1 84               [ 1]  295 	pop	a
                           000148   296 	Sstm8s_uart2$UART2_Init$30 ==.
                                    297 ;	StdPeriphLib/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      008DA2 1A 09            [ 1]  298 	or	a, (0x09, sp)
      008DA4 AE 52 43         [ 2]  299 	ldw	x, #0x5243
      008DA7 F7               [ 1]  300 	ld	(x), a
                           00014E   301 	Sstm8s_uart2$UART2_Init$31 ==.
                                    302 ;	StdPeriphLib/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      008DA8 7B 08            [ 1]  303 	ld	a, (0x08, sp)
      008DAA AE 52 42         [ 2]  304 	ldw	x, #0x5242
      008DAD F7               [ 1]  305 	ld	(x), a
                           000154   306 	Sstm8s_uart2$UART2_Init$32 ==.
                                    307 ;	StdPeriphLib/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008DAE AE 52 45         [ 2]  308 	ldw	x, #0x5245
      008DB1 F6               [ 1]  309 	ld	a, (x)
      008DB2 A4 F3            [ 1]  310 	and	a, #0xf3
      008DB4 F7               [ 1]  311 	ld	(x), a
                           00015B   312 	Sstm8s_uart2$UART2_Init$33 ==.
                                    313 ;	StdPeriphLib/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      008DB5 AE 52 46         [ 2]  314 	ldw	x, #0x5246
      008DB8 F6               [ 1]  315 	ld	a, (x)
      008DB9 A4 F8            [ 1]  316 	and	a, #0xf8
      008DBB F7               [ 1]  317 	ld	(x), a
                           000162   318 	Sstm8s_uart2$UART2_Init$34 ==.
                                    319 ;	StdPeriphLib/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      008DBC AE 52 46         [ 2]  320 	ldw	x, #0x5246
      008DBF F6               [ 1]  321 	ld	a, (x)
      008DC0 6B 13            [ 1]  322 	ld	(0x13, sp), a
      008DC2 7B 2F            [ 1]  323 	ld	a, (0x2f, sp)
      008DC4 A4 07            [ 1]  324 	and	a, #0x07
      008DC6 1A 13            [ 1]  325 	or	a, (0x13, sp)
      008DC8 AE 52 46         [ 2]  326 	ldw	x, #0x5246
      008DCB F7               [ 1]  327 	ld	(x), a
                           000172   328 	Sstm8s_uart2$UART2_Init$35 ==.
                                    329 ;	StdPeriphLib/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      008DCC 7B 30            [ 1]  330 	ld	a, (0x30, sp)
      008DCE A5 04            [ 1]  331 	bcp	a, #0x04
      008DD0 27 09            [ 1]  332 	jreq	00102$
                           000178   333 	Sstm8s_uart2$UART2_Init$36 ==.
                                    334 ;	StdPeriphLib/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      008DD2 AE 52 45         [ 2]  335 	ldw	x, #0x5245
      008DD5 F6               [ 1]  336 	ld	a, (x)
      008DD6 AA 08            [ 1]  337 	or	a, #0x08
      008DD8 F7               [ 1]  338 	ld	(x), a
      008DD9 20 07            [ 2]  339 	jra	00103$
      008DDB                        340 00102$:
                           000181   341 	Sstm8s_uart2$UART2_Init$37 ==.
                                    342 ;	StdPeriphLib/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      008DDB AE 52 45         [ 2]  343 	ldw	x, #0x5245
      008DDE F6               [ 1]  344 	ld	a, (x)
      008DDF A4 F7            [ 1]  345 	and	a, #0xf7
      008DE1 F7               [ 1]  346 	ld	(x), a
      008DE2                        347 00103$:
                           000188   348 	Sstm8s_uart2$UART2_Init$38 ==.
                                    349 ;	StdPeriphLib/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      008DE2 7B 30            [ 1]  350 	ld	a, (0x30, sp)
      008DE4 A5 08            [ 1]  351 	bcp	a, #0x08
      008DE6 27 09            [ 1]  352 	jreq	00105$
                           00018E   353 	Sstm8s_uart2$UART2_Init$39 ==.
                                    354 ;	StdPeriphLib/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      008DE8 AE 52 45         [ 2]  355 	ldw	x, #0x5245
      008DEB F6               [ 1]  356 	ld	a, (x)
      008DEC AA 04            [ 1]  357 	or	a, #0x04
      008DEE F7               [ 1]  358 	ld	(x), a
      008DEF 20 07            [ 2]  359 	jra	00106$
      008DF1                        360 00105$:
                           000197   361 	Sstm8s_uart2$UART2_Init$40 ==.
                                    362 ;	StdPeriphLib/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      008DF1 AE 52 45         [ 2]  363 	ldw	x, #0x5245
      008DF4 F6               [ 1]  364 	ld	a, (x)
      008DF5 A4 FB            [ 1]  365 	and	a, #0xfb
      008DF7 F7               [ 1]  366 	ld	(x), a
      008DF8                        367 00106$:
                           00019E   368 	Sstm8s_uart2$UART2_Init$41 ==.
                                    369 ;	StdPeriphLib/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      008DF8 0D 2F            [ 1]  370 	tnz	(0x2f, sp)
      008DFA 2A 09            [ 1]  371 	jrpl	00108$
                           0001A2   372 	Sstm8s_uart2$UART2_Init$42 ==.
                                    373 ;	StdPeriphLib/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      008DFC AE 52 46         [ 2]  374 	ldw	x, #0x5246
      008DFF F6               [ 1]  375 	ld	a, (x)
      008E00 A4 F7            [ 1]  376 	and	a, #0xf7
      008E02 F7               [ 1]  377 	ld	(x), a
      008E03 20 10            [ 2]  378 	jra	00110$
      008E05                        379 00108$:
                           0001AB   380 	Sstm8s_uart2$UART2_Init$43 ==.
                                    381 ;	StdPeriphLib/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      008E05 AE 52 46         [ 2]  382 	ldw	x, #0x5246
      008E08 F6               [ 1]  383 	ld	a, (x)
      008E09 6B 12            [ 1]  384 	ld	(0x12, sp), a
      008E0B 7B 2F            [ 1]  385 	ld	a, (0x2f, sp)
      008E0D A4 08            [ 1]  386 	and	a, #0x08
      008E0F 1A 12            [ 1]  387 	or	a, (0x12, sp)
      008E11 AE 52 46         [ 2]  388 	ldw	x, #0x5246
      008E14 F7               [ 1]  389 	ld	(x), a
      008E15                        390 00110$:
                           0001BB   391 	Sstm8s_uart2$UART2_Init$44 ==.
                                    392 ;	StdPeriphLib/src/stm8s_uart2.c: 173: }
      008E15 5B 23            [ 2]  393 	addw	sp, #35
                           0001BD   394 	Sstm8s_uart2$UART2_Init$45 ==.
                           0001BD   395 	XG$UART2_Init$0$0 ==.
      008E17 32 01 A4         [ 1]  396 	pop	_fp_
      008E1A 32 01 A5         [ 1]  397 	pop	_fp_+1
      008E1D 81               [ 4]  398 	ret
                           0001C4   399 	Sstm8s_uart2$UART2_Init$46 ==.
                           0001C4   400 	Sstm8s_uart2$UART2_Cmd$47 ==.
                                    401 ;	StdPeriphLib/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    402 ;	-----------------------------------------
                                    403 ;	 function UART2_Cmd
                                    404 ;	-----------------------------------------
      008E1E                        405 _UART2_Cmd:
      008E1E 3B 01 A5         [ 1]  406 	push	_fp_+1
      008E21 3B 01 A4         [ 1]  407 	push	_fp_
      008E24 90 96            [ 1]  408 	ldw	y, sp
      008E26 90 CF 01 A4      [ 2]  409 	ldw	_fp_, y
                           0001D0   410 	Sstm8s_uart2$UART2_Cmd$48 ==.
                           0001D0   411 	Sstm8s_uart2$UART2_Cmd$49 ==.
                                    412 ;	StdPeriphLib/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      008E2A 0D 05            [ 1]  413 	tnz	(0x05, sp)
      008E2C 27 09            [ 1]  414 	jreq	00102$
                           0001D4   415 	Sstm8s_uart2$UART2_Cmd$50 ==.
                                    416 ;	StdPeriphLib/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008E2E AE 52 44         [ 2]  417 	ldw	x, #0x5244
      008E31 F6               [ 1]  418 	ld	a, (x)
      008E32 A4 DF            [ 1]  419 	and	a, #0xdf
      008E34 F7               [ 1]  420 	ld	(x), a
      008E35 20 07            [ 2]  421 	jra	00104$
      008E37                        422 00102$:
                           0001DD   423 	Sstm8s_uart2$UART2_Cmd$51 ==.
                                    424 ;	StdPeriphLib/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      008E37 AE 52 44         [ 2]  425 	ldw	x, #0x5244
      008E3A F6               [ 1]  426 	ld	a, (x)
      008E3B AA 20            [ 1]  427 	or	a, #0x20
      008E3D F7               [ 1]  428 	ld	(x), a
      008E3E                        429 00104$:
                           0001E4   430 	Sstm8s_uart2$UART2_Cmd$52 ==.
                                    431 ;	StdPeriphLib/src/stm8s_uart2.c: 193: }
                           0001E4   432 	Sstm8s_uart2$UART2_Cmd$53 ==.
                           0001E4   433 	XG$UART2_Cmd$0$0 ==.
      008E3E 32 01 A4         [ 1]  434 	pop	_fp_
      008E41 32 01 A5         [ 1]  435 	pop	_fp_+1
      008E44 81               [ 4]  436 	ret
                           0001EB   437 	Sstm8s_uart2$UART2_Cmd$54 ==.
                           0001EB   438 	Sstm8s_uart2$UART2_ITConfig$55 ==.
                                    439 ;	StdPeriphLib/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    440 ;	-----------------------------------------
                                    441 ;	 function UART2_ITConfig
                                    442 ;	-----------------------------------------
      008E45                        443 _UART2_ITConfig:
      008E45 3B 01 A5         [ 1]  444 	push	_fp_+1
      008E48 3B 01 A4         [ 1]  445 	push	_fp_
      008E4B 90 96            [ 1]  446 	ldw	y, sp
      008E4D 90 CF 01 A4      [ 2]  447 	ldw	_fp_, y
                           0001F7   448 	Sstm8s_uart2$UART2_ITConfig$56 ==.
      008E51 52 05            [ 2]  449 	sub	sp, #5
                           0001F9   450 	Sstm8s_uart2$UART2_ITConfig$57 ==.
                                    451 ;	StdPeriphLib/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
      008E53 7B 0A            [ 1]  452 	ld	a, (0x0a, sp)
      008E55 97               [ 1]  453 	ld	xl, a
      008E56 4F               [ 1]  454 	clr	a
                           0001FD   455 	Sstm8s_uart2$UART2_ITConfig$58 ==.
                                    456 ;	StdPeriphLib/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008E57 7B 0B            [ 1]  457 	ld	a, (0x0b, sp)
      008E59 A4 0F            [ 1]  458 	and	a, #0x0f
      008E5B 95               [ 1]  459 	ld	xh, a
      008E5C A6 01            [ 1]  460 	ld	a, #0x01
      008E5E 88               [ 1]  461 	push	a
      008E5F 9E               [ 1]  462 	ld	a, xh
      008E60 4D               [ 1]  463 	tnz	a
      008E61 27 05            [ 1]  464 	jreq	00146$
      008E63                        465 00145$:
      008E63 08 01            [ 1]  466 	sll	(1, sp)
      008E65 4A               [ 1]  467 	dec	a
      008E66 26 FB            [ 1]  468 	jrne	00145$
      008E68                        469 00146$:
      008E68 84               [ 1]  470 	pop	a
      008E69 6B 01            [ 1]  471 	ld	(0x01, sp), a
                           000211   472 	Sstm8s_uart2$UART2_ITConfig$59 ==.
                                    473 ;	StdPeriphLib/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      008E6B 0D 0C            [ 1]  474 	tnz	(0x0c, sp)
      008E6D 27 42            [ 1]  475 	jreq	00120$
                           000215   476 	Sstm8s_uart2$UART2_ITConfig$60 ==.
                                    477 ;	StdPeriphLib/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      008E6F 9F               [ 1]  478 	ld	a, xl
      008E70 A1 01            [ 1]  479 	cp	a, #0x01
      008E72 26 0D            [ 1]  480 	jrne	00108$
                           00021A   481 	Sstm8s_uart2$UART2_ITConfig$61 ==.
                                    482 ;	StdPeriphLib/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      008E74 AE 52 44         [ 2]  483 	ldw	x, #0x5244
      008E77 F6               [ 1]  484 	ld	a, (x)
      008E78 1A 01            [ 1]  485 	or	a, (0x01, sp)
      008E7A AE 52 44         [ 2]  486 	ldw	x, #0x5244
      008E7D F7               [ 1]  487 	ld	(x), a
      008E7E CC 8F 02         [ 2]  488 	jp	00122$
      008E81                        489 00108$:
                           000227   490 	Sstm8s_uart2$UART2_ITConfig$62 ==.
                                    491 ;	StdPeriphLib/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008E81 9F               [ 1]  492 	ld	a, xl
      008E82 A1 02            [ 1]  493 	cp	a, #0x02
      008E84 26 0D            [ 1]  494 	jrne	00105$
                           00022C   495 	Sstm8s_uart2$UART2_ITConfig$63 ==.
                                    496 ;	StdPeriphLib/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      008E86 AE 52 45         [ 2]  497 	ldw	x, #0x5245
      008E89 F6               [ 1]  498 	ld	a, (x)
      008E8A 1A 01            [ 1]  499 	or	a, (0x01, sp)
      008E8C AE 52 45         [ 2]  500 	ldw	x, #0x5245
      008E8F F7               [ 1]  501 	ld	(x), a
      008E90 CC 8F 02         [ 2]  502 	jp	00122$
      008E93                        503 00105$:
                           000239   504 	Sstm8s_uart2$UART2_ITConfig$64 ==.
                                    505 ;	StdPeriphLib/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008E93 9F               [ 1]  506 	ld	a, xl
      008E94 A1 03            [ 1]  507 	cp	a, #0x03
      008E96 26 0D            [ 1]  508 	jrne	00102$
                           00023E   509 	Sstm8s_uart2$UART2_ITConfig$65 ==.
                                    510 ;	StdPeriphLib/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      008E98 AE 52 47         [ 2]  511 	ldw	x, #0x5247
      008E9B F6               [ 1]  512 	ld	a, (x)
      008E9C 1A 01            [ 1]  513 	or	a, (0x01, sp)
      008E9E AE 52 47         [ 2]  514 	ldw	x, #0x5247
      008EA1 F7               [ 1]  515 	ld	(x), a
      008EA2 CC 8F 02         [ 2]  516 	jp	00122$
      008EA5                        517 00102$:
                           00024B   518 	Sstm8s_uart2$UART2_ITConfig$66 ==.
                                    519 ;	StdPeriphLib/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      008EA5 AE 52 49         [ 2]  520 	ldw	x, #0x5249
      008EA8 F6               [ 1]  521 	ld	a, (x)
      008EA9 1A 01            [ 1]  522 	or	a, (0x01, sp)
      008EAB AE 52 49         [ 2]  523 	ldw	x, #0x5249
      008EAE F7               [ 1]  524 	ld	(x), a
      008EAF 20 51            [ 2]  525 	jra	00122$
      008EB1                        526 00120$:
                           000257   527 	Sstm8s_uart2$UART2_ITConfig$67 ==.
                                    528 ;	StdPeriphLib/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      008EB1 9F               [ 1]  529 	ld	a, xl
      008EB2 A1 01            [ 1]  530 	cp	a, #0x01
      008EB4 26 11            [ 1]  531 	jrne	00117$
                           00025C   532 	Sstm8s_uart2$UART2_ITConfig$68 ==.
                                    533 ;	StdPeriphLib/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      008EB6 AE 52 44         [ 2]  534 	ldw	x, #0x5244
      008EB9 F6               [ 1]  535 	ld	a, (x)
      008EBA 6B 02            [ 1]  536 	ld	(0x02, sp), a
      008EBC 7B 01            [ 1]  537 	ld	a, (0x01, sp)
      008EBE 43               [ 1]  538 	cpl	a
      008EBF 14 02            [ 1]  539 	and	a, (0x02, sp)
      008EC1 AE 52 44         [ 2]  540 	ldw	x, #0x5244
      008EC4 F7               [ 1]  541 	ld	(x), a
      008EC5 20 3B            [ 2]  542 	jra	00122$
      008EC7                        543 00117$:
                           00026D   544 	Sstm8s_uart2$UART2_ITConfig$69 ==.
                                    545 ;	StdPeriphLib/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      008EC7 9F               [ 1]  546 	ld	a, xl
      008EC8 A1 02            [ 1]  547 	cp	a, #0x02
      008ECA 26 11            [ 1]  548 	jrne	00114$
                           000272   549 	Sstm8s_uart2$UART2_ITConfig$70 ==.
                                    550 ;	StdPeriphLib/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      008ECC AE 52 45         [ 2]  551 	ldw	x, #0x5245
      008ECF F6               [ 1]  552 	ld	a, (x)
      008ED0 6B 04            [ 1]  553 	ld	(0x04, sp), a
      008ED2 7B 01            [ 1]  554 	ld	a, (0x01, sp)
      008ED4 43               [ 1]  555 	cpl	a
      008ED5 14 04            [ 1]  556 	and	a, (0x04, sp)
      008ED7 AE 52 45         [ 2]  557 	ldw	x, #0x5245
      008EDA F7               [ 1]  558 	ld	(x), a
      008EDB 20 25            [ 2]  559 	jra	00122$
      008EDD                        560 00114$:
                           000283   561 	Sstm8s_uart2$UART2_ITConfig$71 ==.
                                    562 ;	StdPeriphLib/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      008EDD 9F               [ 1]  563 	ld	a, xl
      008EDE A1 03            [ 1]  564 	cp	a, #0x03
      008EE0 26 11            [ 1]  565 	jrne	00111$
                           000288   566 	Sstm8s_uart2$UART2_ITConfig$72 ==.
                                    567 ;	StdPeriphLib/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      008EE2 AE 52 47         [ 2]  568 	ldw	x, #0x5247
      008EE5 F6               [ 1]  569 	ld	a, (x)
      008EE6 6B 05            [ 1]  570 	ld	(0x05, sp), a
      008EE8 7B 01            [ 1]  571 	ld	a, (0x01, sp)
      008EEA 43               [ 1]  572 	cpl	a
      008EEB 14 05            [ 1]  573 	and	a, (0x05, sp)
      008EED AE 52 47         [ 2]  574 	ldw	x, #0x5247
      008EF0 F7               [ 1]  575 	ld	(x), a
      008EF1 20 0F            [ 2]  576 	jra	00122$
      008EF3                        577 00111$:
                           000299   578 	Sstm8s_uart2$UART2_ITConfig$73 ==.
                                    579 ;	StdPeriphLib/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      008EF3 AE 52 49         [ 2]  580 	ldw	x, #0x5249
      008EF6 F6               [ 1]  581 	ld	a, (x)
      008EF7 6B 03            [ 1]  582 	ld	(0x03, sp), a
      008EF9 7B 01            [ 1]  583 	ld	a, (0x01, sp)
      008EFB 43               [ 1]  584 	cpl	a
      008EFC 14 03            [ 1]  585 	and	a, (0x03, sp)
      008EFE AE 52 49         [ 2]  586 	ldw	x, #0x5249
      008F01 F7               [ 1]  587 	ld	(x), a
      008F02                        588 00122$:
                           0002A8   589 	Sstm8s_uart2$UART2_ITConfig$74 ==.
                                    590 ;	StdPeriphLib/src/stm8s_uart2.c: 264: }
      008F02 5B 05            [ 2]  591 	addw	sp, #5
                           0002AA   592 	Sstm8s_uart2$UART2_ITConfig$75 ==.
                           0002AA   593 	XG$UART2_ITConfig$0$0 ==.
      008F04 32 01 A4         [ 1]  594 	pop	_fp_
      008F07 32 01 A5         [ 1]  595 	pop	_fp_+1
      008F0A 81               [ 4]  596 	ret
                           0002B1   597 	Sstm8s_uart2$UART2_ITConfig$76 ==.
                           0002B1   598 	Sstm8s_uart2$UART2_IrDAConfig$77 ==.
                                    599 ;	StdPeriphLib/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    600 ;	-----------------------------------------
                                    601 ;	 function UART2_IrDAConfig
                                    602 ;	-----------------------------------------
      008F0B                        603 _UART2_IrDAConfig:
      008F0B 3B 01 A5         [ 1]  604 	push	_fp_+1
      008F0E 3B 01 A4         [ 1]  605 	push	_fp_
      008F11 90 96            [ 1]  606 	ldw	y, sp
      008F13 90 CF 01 A4      [ 2]  607 	ldw	_fp_, y
                           0002BD   608 	Sstm8s_uart2$UART2_IrDAConfig$78 ==.
                           0002BD   609 	Sstm8s_uart2$UART2_IrDAConfig$79 ==.
                                    610 ;	StdPeriphLib/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      008F17 0D 05            [ 1]  611 	tnz	(0x05, sp)
      008F19 27 09            [ 1]  612 	jreq	00102$
                           0002C1   613 	Sstm8s_uart2$UART2_IrDAConfig$80 ==.
                                    614 ;	StdPeriphLib/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      008F1B AE 52 48         [ 2]  615 	ldw	x, #0x5248
      008F1E F6               [ 1]  616 	ld	a, (x)
      008F1F AA 04            [ 1]  617 	or	a, #0x04
      008F21 F7               [ 1]  618 	ld	(x), a
      008F22 20 07            [ 2]  619 	jra	00104$
      008F24                        620 00102$:
                           0002CA   621 	Sstm8s_uart2$UART2_IrDAConfig$81 ==.
                                    622 ;	StdPeriphLib/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      008F24 AE 52 48         [ 2]  623 	ldw	x, #0x5248
      008F27 F6               [ 1]  624 	ld	a, (x)
      008F28 A4 FB            [ 1]  625 	and	a, #0xfb
      008F2A F7               [ 1]  626 	ld	(x), a
      008F2B                        627 00104$:
                           0002D1   628 	Sstm8s_uart2$UART2_IrDAConfig$82 ==.
                                    629 ;	StdPeriphLib/src/stm8s_uart2.c: 284: }
                           0002D1   630 	Sstm8s_uart2$UART2_IrDAConfig$83 ==.
                           0002D1   631 	XG$UART2_IrDAConfig$0$0 ==.
      008F2B 32 01 A4         [ 1]  632 	pop	_fp_
      008F2E 32 01 A5         [ 1]  633 	pop	_fp_+1
      008F31 81               [ 4]  634 	ret
                           0002D8   635 	Sstm8s_uart2$UART2_IrDAConfig$84 ==.
                           0002D8   636 	Sstm8s_uart2$UART2_IrDACmd$85 ==.
                                    637 ;	StdPeriphLib/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    638 ;	-----------------------------------------
                                    639 ;	 function UART2_IrDACmd
                                    640 ;	-----------------------------------------
      008F32                        641 _UART2_IrDACmd:
      008F32 3B 01 A5         [ 1]  642 	push	_fp_+1
      008F35 3B 01 A4         [ 1]  643 	push	_fp_
      008F38 90 96            [ 1]  644 	ldw	y, sp
      008F3A 90 CF 01 A4      [ 2]  645 	ldw	_fp_, y
                           0002E4   646 	Sstm8s_uart2$UART2_IrDACmd$86 ==.
                           0002E4   647 	Sstm8s_uart2$UART2_IrDACmd$87 ==.
                                    648 ;	StdPeriphLib/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      008F3E 0D 05            [ 1]  649 	tnz	(0x05, sp)
      008F40 27 09            [ 1]  650 	jreq	00102$
                           0002E8   651 	Sstm8s_uart2$UART2_IrDACmd$88 ==.
                                    652 ;	StdPeriphLib/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      008F42 AE 52 48         [ 2]  653 	ldw	x, #0x5248
      008F45 F6               [ 1]  654 	ld	a, (x)
      008F46 AA 02            [ 1]  655 	or	a, #0x02
      008F48 F7               [ 1]  656 	ld	(x), a
      008F49 20 07            [ 2]  657 	jra	00104$
      008F4B                        658 00102$:
                           0002F1   659 	Sstm8s_uart2$UART2_IrDACmd$89 ==.
                                    660 ;	StdPeriphLib/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      008F4B AE 52 48         [ 2]  661 	ldw	x, #0x5248
      008F4E F6               [ 1]  662 	ld	a, (x)
      008F4F A4 FD            [ 1]  663 	and	a, #0xfd
      008F51 F7               [ 1]  664 	ld	(x), a
      008F52                        665 00104$:
                           0002F8   666 	Sstm8s_uart2$UART2_IrDACmd$90 ==.
                                    667 ;	StdPeriphLib/src/stm8s_uart2.c: 307: }
                           0002F8   668 	Sstm8s_uart2$UART2_IrDACmd$91 ==.
                           0002F8   669 	XG$UART2_IrDACmd$0$0 ==.
      008F52 32 01 A4         [ 1]  670 	pop	_fp_
      008F55 32 01 A5         [ 1]  671 	pop	_fp_+1
      008F58 81               [ 4]  672 	ret
                           0002FF   673 	Sstm8s_uart2$UART2_IrDACmd$92 ==.
                           0002FF   674 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$93 ==.
                                    675 ;	StdPeriphLib/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    676 ;	-----------------------------------------
                                    677 ;	 function UART2_LINBreakDetectionConfig
                                    678 ;	-----------------------------------------
      008F59                        679 _UART2_LINBreakDetectionConfig:
      008F59 3B 01 A5         [ 1]  680 	push	_fp_+1
      008F5C 3B 01 A4         [ 1]  681 	push	_fp_
      008F5F 90 96            [ 1]  682 	ldw	y, sp
      008F61 90 CF 01 A4      [ 2]  683 	ldw	_fp_, y
                           00030B   684 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$94 ==.
                           00030B   685 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$95 ==.
                                    686 ;	StdPeriphLib/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      008F65 0D 05            [ 1]  687 	tnz	(0x05, sp)
      008F67 27 09            [ 1]  688 	jreq	00102$
                           00030F   689 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$96 ==.
                                    690 ;	StdPeriphLib/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      008F69 AE 52 47         [ 2]  691 	ldw	x, #0x5247
      008F6C F6               [ 1]  692 	ld	a, (x)
      008F6D AA 20            [ 1]  693 	or	a, #0x20
      008F6F F7               [ 1]  694 	ld	(x), a
      008F70 20 07            [ 2]  695 	jra	00104$
      008F72                        696 00102$:
                           000318   697 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$97 ==.
                                    698 ;	StdPeriphLib/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      008F72 AE 52 47         [ 2]  699 	ldw	x, #0x5247
      008F75 F6               [ 1]  700 	ld	a, (x)
      008F76 A4 DF            [ 1]  701 	and	a, #0xdf
      008F78 F7               [ 1]  702 	ld	(x), a
      008F79                        703 00104$:
                           00031F   704 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$98 ==.
                                    705 ;	StdPeriphLib/src/stm8s_uart2.c: 329: }
                           00031F   706 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$99 ==.
                           00031F   707 	XG$UART2_LINBreakDetectionConfig$0$0 ==.
      008F79 32 01 A4         [ 1]  708 	pop	_fp_
      008F7C 32 01 A5         [ 1]  709 	pop	_fp_+1
      008F7F 81               [ 4]  710 	ret
                           000326   711 	Sstm8s_uart2$UART2_LINBreakDetectionConfig$100 ==.
                           000326   712 	Sstm8s_uart2$UART2_LINConfig$101 ==.
                                    713 ;	StdPeriphLib/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    714 ;	-----------------------------------------
                                    715 ;	 function UART2_LINConfig
                                    716 ;	-----------------------------------------
      008F80                        717 _UART2_LINConfig:
      008F80 3B 01 A5         [ 1]  718 	push	_fp_+1
      008F83 3B 01 A4         [ 1]  719 	push	_fp_
      008F86 90 96            [ 1]  720 	ldw	y, sp
      008F88 90 CF 01 A4      [ 2]  721 	ldw	_fp_, y
                           000332   722 	Sstm8s_uart2$UART2_LINConfig$102 ==.
                           000332   723 	Sstm8s_uart2$UART2_LINConfig$103 ==.
                                    724 ;	StdPeriphLib/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      008F8C 0D 05            [ 1]  725 	tnz	(0x05, sp)
      008F8E 27 09            [ 1]  726 	jreq	00102$
                           000336   727 	Sstm8s_uart2$UART2_LINConfig$104 ==.
                                    728 ;	StdPeriphLib/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008F90 AE 52 49         [ 2]  729 	ldw	x, #0x5249
      008F93 F6               [ 1]  730 	ld	a, (x)
      008F94 AA 20            [ 1]  731 	or	a, #0x20
      008F96 F7               [ 1]  732 	ld	(x), a
      008F97 20 07            [ 2]  733 	jra	00103$
      008F99                        734 00102$:
                           00033F   735 	Sstm8s_uart2$UART2_LINConfig$105 ==.
                                    736 ;	StdPeriphLib/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      008F99 AE 52 49         [ 2]  737 	ldw	x, #0x5249
      008F9C F6               [ 1]  738 	ld	a, (x)
      008F9D A4 DF            [ 1]  739 	and	a, #0xdf
      008F9F F7               [ 1]  740 	ld	(x), a
      008FA0                        741 00103$:
                           000346   742 	Sstm8s_uart2$UART2_LINConfig$106 ==.
                                    743 ;	StdPeriphLib/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      008FA0 0D 06            [ 1]  744 	tnz	(0x06, sp)
      008FA2 27 09            [ 1]  745 	jreq	00105$
                           00034A   746 	Sstm8s_uart2$UART2_LINConfig$107 ==.
                                    747 ;	StdPeriphLib/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      008FA4 AE 52 49         [ 2]  748 	ldw	x, #0x5249
      008FA7 F6               [ 1]  749 	ld	a, (x)
      008FA8 AA 10            [ 1]  750 	or	a, #0x10
      008FAA F7               [ 1]  751 	ld	(x), a
      008FAB 20 07            [ 2]  752 	jra	00106$
      008FAD                        753 00105$:
                           000353   754 	Sstm8s_uart2$UART2_LINConfig$108 ==.
                                    755 ;	StdPeriphLib/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      008FAD AE 52 49         [ 2]  756 	ldw	x, #0x5249
      008FB0 F6               [ 1]  757 	ld	a, (x)
      008FB1 A4 EF            [ 1]  758 	and	a, #0xef
      008FB3 F7               [ 1]  759 	ld	(x), a
      008FB4                        760 00106$:
                           00035A   761 	Sstm8s_uart2$UART2_LINConfig$109 ==.
                                    762 ;	StdPeriphLib/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      008FB4 0D 07            [ 1]  763 	tnz	(0x07, sp)
      008FB6 27 06            [ 1]  764 	jreq	00108$
                           00035E   765 	Sstm8s_uart2$UART2_LINConfig$110 ==.
                                    766 ;	StdPeriphLib/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      008FB8 72 1E 52 49      [ 1]  767 	bset	0x5249, #7
      008FBC 20 04            [ 2]  768 	jra	00110$
      008FBE                        769 00108$:
                           000364   770 	Sstm8s_uart2$UART2_LINConfig$111 ==.
                                    771 ;	StdPeriphLib/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      008FBE 72 1F 52 49      [ 1]  772 	bres	0x5249, #7
      008FC2                        773 00110$:
                           000368   774 	Sstm8s_uart2$UART2_LINConfig$112 ==.
                                    775 ;	StdPeriphLib/src/stm8s_uart2.c: 376: }
                           000368   776 	Sstm8s_uart2$UART2_LINConfig$113 ==.
                           000368   777 	XG$UART2_LINConfig$0$0 ==.
      008FC2 32 01 A4         [ 1]  778 	pop	_fp_
      008FC5 32 01 A5         [ 1]  779 	pop	_fp_+1
      008FC8 81               [ 4]  780 	ret
                           00036F   781 	Sstm8s_uart2$UART2_LINConfig$114 ==.
                           00036F   782 	Sstm8s_uart2$UART2_LINCmd$115 ==.
                                    783 ;	StdPeriphLib/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    784 ;	-----------------------------------------
                                    785 ;	 function UART2_LINCmd
                                    786 ;	-----------------------------------------
      008FC9                        787 _UART2_LINCmd:
      008FC9 3B 01 A5         [ 1]  788 	push	_fp_+1
      008FCC 3B 01 A4         [ 1]  789 	push	_fp_
      008FCF 90 96            [ 1]  790 	ldw	y, sp
      008FD1 90 CF 01 A4      [ 2]  791 	ldw	_fp_, y
                           00037B   792 	Sstm8s_uart2$UART2_LINCmd$116 ==.
                           00037B   793 	Sstm8s_uart2$UART2_LINCmd$117 ==.
                                    794 ;	StdPeriphLib/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      008FD5 0D 05            [ 1]  795 	tnz	(0x05, sp)
      008FD7 27 09            [ 1]  796 	jreq	00102$
                           00037F   797 	Sstm8s_uart2$UART2_LINCmd$118 ==.
                                    798 ;	StdPeriphLib/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      008FD9 AE 52 46         [ 2]  799 	ldw	x, #0x5246
      008FDC F6               [ 1]  800 	ld	a, (x)
      008FDD AA 40            [ 1]  801 	or	a, #0x40
      008FDF F7               [ 1]  802 	ld	(x), a
      008FE0 20 07            [ 2]  803 	jra	00104$
      008FE2                        804 00102$:
                           000388   805 	Sstm8s_uart2$UART2_LINCmd$119 ==.
                                    806 ;	StdPeriphLib/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      008FE2 AE 52 46         [ 2]  807 	ldw	x, #0x5246
      008FE5 F6               [ 1]  808 	ld	a, (x)
      008FE6 A4 BF            [ 1]  809 	and	a, #0xbf
      008FE8 F7               [ 1]  810 	ld	(x), a
      008FE9                        811 00104$:
                           00038F   812 	Sstm8s_uart2$UART2_LINCmd$120 ==.
                                    813 ;	StdPeriphLib/src/stm8s_uart2.c: 398: }
                           00038F   814 	Sstm8s_uart2$UART2_LINCmd$121 ==.
                           00038F   815 	XG$UART2_LINCmd$0$0 ==.
      008FE9 32 01 A4         [ 1]  816 	pop	_fp_
      008FEC 32 01 A5         [ 1]  817 	pop	_fp_+1
      008FEF 81               [ 4]  818 	ret
                           000396   819 	Sstm8s_uart2$UART2_LINCmd$122 ==.
                           000396   820 	Sstm8s_uart2$UART2_SmartCardCmd$123 ==.
                                    821 ;	StdPeriphLib/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    822 ;	-----------------------------------------
                                    823 ;	 function UART2_SmartCardCmd
                                    824 ;	-----------------------------------------
      008FF0                        825 _UART2_SmartCardCmd:
      008FF0 3B 01 A5         [ 1]  826 	push	_fp_+1
      008FF3 3B 01 A4         [ 1]  827 	push	_fp_
      008FF6 90 96            [ 1]  828 	ldw	y, sp
      008FF8 90 CF 01 A4      [ 2]  829 	ldw	_fp_, y
                           0003A2   830 	Sstm8s_uart2$UART2_SmartCardCmd$124 ==.
                           0003A2   831 	Sstm8s_uart2$UART2_SmartCardCmd$125 ==.
                                    832 ;	StdPeriphLib/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      008FFC 0D 05            [ 1]  833 	tnz	(0x05, sp)
      008FFE 27 09            [ 1]  834 	jreq	00102$
                           0003A6   835 	Sstm8s_uart2$UART2_SmartCardCmd$126 ==.
                                    836 ;	StdPeriphLib/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      009000 AE 52 48         [ 2]  837 	ldw	x, #0x5248
      009003 F6               [ 1]  838 	ld	a, (x)
      009004 AA 20            [ 1]  839 	or	a, #0x20
      009006 F7               [ 1]  840 	ld	(x), a
      009007 20 07            [ 2]  841 	jra	00104$
      009009                        842 00102$:
                           0003AF   843 	Sstm8s_uart2$UART2_SmartCardCmd$127 ==.
                                    844 ;	StdPeriphLib/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      009009 AE 52 48         [ 2]  845 	ldw	x, #0x5248
      00900C F6               [ 1]  846 	ld	a, (x)
      00900D A4 DF            [ 1]  847 	and	a, #0xdf
      00900F F7               [ 1]  848 	ld	(x), a
      009010                        849 00104$:
                           0003B6   850 	Sstm8s_uart2$UART2_SmartCardCmd$128 ==.
                                    851 ;	StdPeriphLib/src/stm8s_uart2.c: 421: }
                           0003B6   852 	Sstm8s_uart2$UART2_SmartCardCmd$129 ==.
                           0003B6   853 	XG$UART2_SmartCardCmd$0$0 ==.
      009010 32 01 A4         [ 1]  854 	pop	_fp_
      009013 32 01 A5         [ 1]  855 	pop	_fp_+1
      009016 81               [ 4]  856 	ret
                           0003BD   857 	Sstm8s_uart2$UART2_SmartCardCmd$130 ==.
                           0003BD   858 	Sstm8s_uart2$UART2_SmartCardNACKCmd$131 ==.
                                    859 ;	StdPeriphLib/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    860 ;	-----------------------------------------
                                    861 ;	 function UART2_SmartCardNACKCmd
                                    862 ;	-----------------------------------------
      009017                        863 _UART2_SmartCardNACKCmd:
      009017 3B 01 A5         [ 1]  864 	push	_fp_+1
      00901A 3B 01 A4         [ 1]  865 	push	_fp_
      00901D 90 96            [ 1]  866 	ldw	y, sp
      00901F 90 CF 01 A4      [ 2]  867 	ldw	_fp_, y
                           0003C9   868 	Sstm8s_uart2$UART2_SmartCardNACKCmd$132 ==.
                           0003C9   869 	Sstm8s_uart2$UART2_SmartCardNACKCmd$133 ==.
                                    870 ;	StdPeriphLib/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      009023 0D 05            [ 1]  871 	tnz	(0x05, sp)
      009025 27 09            [ 1]  872 	jreq	00102$
                           0003CD   873 	Sstm8s_uart2$UART2_SmartCardNACKCmd$134 ==.
                                    874 ;	StdPeriphLib/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      009027 AE 52 48         [ 2]  875 	ldw	x, #0x5248
      00902A F6               [ 1]  876 	ld	a, (x)
      00902B AA 10            [ 1]  877 	or	a, #0x10
      00902D F7               [ 1]  878 	ld	(x), a
      00902E 20 07            [ 2]  879 	jra	00104$
      009030                        880 00102$:
                           0003D6   881 	Sstm8s_uart2$UART2_SmartCardNACKCmd$135 ==.
                                    882 ;	StdPeriphLib/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      009030 AE 52 48         [ 2]  883 	ldw	x, #0x5248
      009033 F6               [ 1]  884 	ld	a, (x)
      009034 A4 EF            [ 1]  885 	and	a, #0xef
      009036 F7               [ 1]  886 	ld	(x), a
      009037                        887 00104$:
                           0003DD   888 	Sstm8s_uart2$UART2_SmartCardNACKCmd$136 ==.
                                    889 ;	StdPeriphLib/src/stm8s_uart2.c: 444: }
                           0003DD   890 	Sstm8s_uart2$UART2_SmartCardNACKCmd$137 ==.
                           0003DD   891 	XG$UART2_SmartCardNACKCmd$0$0 ==.
      009037 32 01 A4         [ 1]  892 	pop	_fp_
      00903A 32 01 A5         [ 1]  893 	pop	_fp_+1
      00903D 81               [ 4]  894 	ret
                           0003E4   895 	Sstm8s_uart2$UART2_SmartCardNACKCmd$138 ==.
                           0003E4   896 	Sstm8s_uart2$UART2_WakeUpConfig$139 ==.
                                    897 ;	StdPeriphLib/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    898 ;	-----------------------------------------
                                    899 ;	 function UART2_WakeUpConfig
                                    900 ;	-----------------------------------------
      00903E                        901 _UART2_WakeUpConfig:
      00903E 3B 01 A5         [ 1]  902 	push	_fp_+1
      009041 3B 01 A4         [ 1]  903 	push	_fp_
      009044 90 96            [ 1]  904 	ldw	y, sp
      009046 90 CF 01 A4      [ 2]  905 	ldw	_fp_, y
                           0003F0   906 	Sstm8s_uart2$UART2_WakeUpConfig$140 ==.
                           0003F0   907 	Sstm8s_uart2$UART2_WakeUpConfig$141 ==.
                                    908 ;	StdPeriphLib/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      00904A AE 52 44         [ 2]  909 	ldw	x, #0x5244
      00904D F6               [ 1]  910 	ld	a, (x)
      00904E A4 F7            [ 1]  911 	and	a, #0xf7
      009050 F7               [ 1]  912 	ld	(x), a
                           0003F7   913 	Sstm8s_uart2$UART2_WakeUpConfig$142 ==.
                                    914 ;	StdPeriphLib/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      009051 AE 52 44         [ 2]  915 	ldw	x, #0x5244
      009054 F6               [ 1]  916 	ld	a, (x)
      009055 1A 05            [ 1]  917 	or	a, (0x05, sp)
      009057 AE 52 44         [ 2]  918 	ldw	x, #0x5244
      00905A F7               [ 1]  919 	ld	(x), a
                           000401   920 	Sstm8s_uart2$UART2_WakeUpConfig$143 ==.
                                    921 ;	StdPeriphLib/src/stm8s_uart2.c: 458: }
                           000401   922 	Sstm8s_uart2$UART2_WakeUpConfig$144 ==.
                           000401   923 	XG$UART2_WakeUpConfig$0$0 ==.
      00905B 32 01 A4         [ 1]  924 	pop	_fp_
      00905E 32 01 A5         [ 1]  925 	pop	_fp_+1
      009061 81               [ 4]  926 	ret
                           000408   927 	Sstm8s_uart2$UART2_WakeUpConfig$145 ==.
                           000408   928 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$146 ==.
                                    929 ;	StdPeriphLib/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    930 ;	-----------------------------------------
                                    931 ;	 function UART2_ReceiverWakeUpCmd
                                    932 ;	-----------------------------------------
      009062                        933 _UART2_ReceiverWakeUpCmd:
      009062 3B 01 A5         [ 1]  934 	push	_fp_+1
      009065 3B 01 A4         [ 1]  935 	push	_fp_
      009068 90 96            [ 1]  936 	ldw	y, sp
      00906A 90 CF 01 A4      [ 2]  937 	ldw	_fp_, y
                           000414   938 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$147 ==.
                           000414   939 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$148 ==.
                                    940 ;	StdPeriphLib/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      00906E 0D 05            [ 1]  941 	tnz	(0x05, sp)
      009070 27 09            [ 1]  942 	jreq	00102$
                           000418   943 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$149 ==.
                                    944 ;	StdPeriphLib/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      009072 AE 52 45         [ 2]  945 	ldw	x, #0x5245
      009075 F6               [ 1]  946 	ld	a, (x)
      009076 AA 02            [ 1]  947 	or	a, #0x02
      009078 F7               [ 1]  948 	ld	(x), a
      009079 20 07            [ 2]  949 	jra	00104$
      00907B                        950 00102$:
                           000421   951 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$150 ==.
                                    952 ;	StdPeriphLib/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      00907B AE 52 45         [ 2]  953 	ldw	x, #0x5245
      00907E F6               [ 1]  954 	ld	a, (x)
      00907F A4 FD            [ 1]  955 	and	a, #0xfd
      009081 F7               [ 1]  956 	ld	(x), a
      009082                        957 00104$:
                           000428   958 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$151 ==.
                                    959 ;	StdPeriphLib/src/stm8s_uart2.c: 480: }
                           000428   960 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$152 ==.
                           000428   961 	XG$UART2_ReceiverWakeUpCmd$0$0 ==.
      009082 32 01 A4         [ 1]  962 	pop	_fp_
      009085 32 01 A5         [ 1]  963 	pop	_fp_+1
      009088 81               [ 4]  964 	ret
                           00042F   965 	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$153 ==.
                           00042F   966 	Sstm8s_uart2$UART2_ReceiveData8$154 ==.
                                    967 ;	StdPeriphLib/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                    968 ;	-----------------------------------------
                                    969 ;	 function UART2_ReceiveData8
                                    970 ;	-----------------------------------------
      009089                        971 _UART2_ReceiveData8:
      009089 3B 01 A5         [ 1]  972 	push	_fp_+1
      00908C 3B 01 A4         [ 1]  973 	push	_fp_
      00908F 90 96            [ 1]  974 	ldw	y, sp
      009091 90 CF 01 A4      [ 2]  975 	ldw	_fp_, y
                           00043B   976 	Sstm8s_uart2$UART2_ReceiveData8$155 ==.
                           00043B   977 	Sstm8s_uart2$UART2_ReceiveData8$156 ==.
                                    978 ;	StdPeriphLib/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      009095 AE 52 41         [ 2]  979 	ldw	x, #0x5241
      009098 F6               [ 1]  980 	ld	a, (x)
                           00043F   981 	Sstm8s_uart2$UART2_ReceiveData8$157 ==.
                                    982 ;	StdPeriphLib/src/stm8s_uart2.c: 490: }
                           00043F   983 	Sstm8s_uart2$UART2_ReceiveData8$158 ==.
                           00043F   984 	XG$UART2_ReceiveData8$0$0 ==.
      009099 32 01 A4         [ 1]  985 	pop	_fp_
      00909C 32 01 A5         [ 1]  986 	pop	_fp_+1
      00909F 81               [ 4]  987 	ret
                           000446   988 	Sstm8s_uart2$UART2_ReceiveData8$159 ==.
                           000446   989 	Sstm8s_uart2$UART2_ReceiveData9$160 ==.
                                    990 ;	StdPeriphLib/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                    991 ;	-----------------------------------------
                                    992 ;	 function UART2_ReceiveData9
                                    993 ;	-----------------------------------------
      0090A0                        994 _UART2_ReceiveData9:
      0090A0 3B 01 A5         [ 1]  995 	push	_fp_+1
      0090A3 3B 01 A4         [ 1]  996 	push	_fp_
      0090A6 90 96            [ 1]  997 	ldw	y, sp
      0090A8 90 CF 01 A4      [ 2]  998 	ldw	_fp_, y
                           000452   999 	Sstm8s_uart2$UART2_ReceiveData9$161 ==.
      0090AC 52 04            [ 2] 1000 	sub	sp, #4
                           000454  1001 	Sstm8s_uart2$UART2_ReceiveData9$162 ==.
                                   1002 ;	StdPeriphLib/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      0090AE AE 52 44         [ 2] 1003 	ldw	x, #0x5244
      0090B1 F6               [ 1] 1004 	ld	a, (x)
      0090B2 0F 03            [ 1] 1005 	clr	(0x03, sp)
      0090B4 A4 80            [ 1] 1006 	and	a, #0x80
      0090B6 97               [ 1] 1007 	ld	xl, a
      0090B7 4F               [ 1] 1008 	clr	a
      0090B8 95               [ 1] 1009 	ld	xh, a
      0090B9 58               [ 2] 1010 	sllw	x
      0090BA 1F 01            [ 2] 1011 	ldw	(0x01, sp), x
                           000462  1012 	Sstm8s_uart2$UART2_ReceiveData9$163 ==.
                                   1013 ;	StdPeriphLib/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      0090BC AE 52 41         [ 2] 1014 	ldw	x, #0x5241
      0090BF F6               [ 1] 1015 	ld	a, (x)
      0090C0 02               [ 1] 1016 	rlwa	x
      0090C1 4F               [ 1] 1017 	clr	a
      0090C2 01               [ 1] 1018 	rrwa	x
      0090C3 1A 02            [ 1] 1019 	or	a, (0x02, sp)
      0090C5 02               [ 1] 1020 	rlwa	x
      0090C6 1A 01            [ 1] 1021 	or	a, (0x01, sp)
      0090C8 A4 01            [ 1] 1022 	and	a, #0x01
      0090CA 95               [ 1] 1023 	ld	xh, a
                           000471  1024 	Sstm8s_uart2$UART2_ReceiveData9$164 ==.
                                   1025 ;	StdPeriphLib/src/stm8s_uart2.c: 504: }
      0090CB 5B 04            [ 2] 1026 	addw	sp, #4
                           000473  1027 	Sstm8s_uart2$UART2_ReceiveData9$165 ==.
                           000473  1028 	XG$UART2_ReceiveData9$0$0 ==.
      0090CD 32 01 A4         [ 1] 1029 	pop	_fp_
      0090D0 32 01 A5         [ 1] 1030 	pop	_fp_+1
      0090D3 81               [ 4] 1031 	ret
                           00047A  1032 	Sstm8s_uart2$UART2_ReceiveData9$166 ==.
                           00047A  1033 	Sstm8s_uart2$UART2_SendData8$167 ==.
                                   1034 ;	StdPeriphLib/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function UART2_SendData8
                                   1037 ;	-----------------------------------------
      0090D4                       1038 _UART2_SendData8:
      0090D4 3B 01 A5         [ 1] 1039 	push	_fp_+1
      0090D7 3B 01 A4         [ 1] 1040 	push	_fp_
      0090DA 90 96            [ 1] 1041 	ldw	y, sp
      0090DC 90 CF 01 A4      [ 2] 1042 	ldw	_fp_, y
                           000486  1043 	Sstm8s_uart2$UART2_SendData8$168 ==.
                           000486  1044 	Sstm8s_uart2$UART2_SendData8$169 ==.
                                   1045 ;	StdPeriphLib/src/stm8s_uart2.c: 514: UART2->DR = Data;
      0090E0 AE 52 41         [ 2] 1046 	ldw	x, #0x5241
      0090E3 7B 05            [ 1] 1047 	ld	a, (0x05, sp)
      0090E5 F7               [ 1] 1048 	ld	(x), a
                           00048C  1049 	Sstm8s_uart2$UART2_SendData8$170 ==.
                                   1050 ;	StdPeriphLib/src/stm8s_uart2.c: 515: }
                           00048C  1051 	Sstm8s_uart2$UART2_SendData8$171 ==.
                           00048C  1052 	XG$UART2_SendData8$0$0 ==.
      0090E6 32 01 A4         [ 1] 1053 	pop	_fp_
      0090E9 32 01 A5         [ 1] 1054 	pop	_fp_+1
      0090EC 81               [ 4] 1055 	ret
                           000493  1056 	Sstm8s_uart2$UART2_SendData8$172 ==.
                           000493  1057 	Sstm8s_uart2$UART2_SendData9$173 ==.
                                   1058 ;	StdPeriphLib/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function UART2_SendData9
                                   1061 ;	-----------------------------------------
      0090ED                       1062 _UART2_SendData9:
      0090ED 3B 01 A5         [ 1] 1063 	push	_fp_+1
      0090F0 3B 01 A4         [ 1] 1064 	push	_fp_
      0090F3 90 96            [ 1] 1065 	ldw	y, sp
      0090F5 90 CF 01 A4      [ 2] 1066 	ldw	_fp_, y
                           00049F  1067 	Sstm8s_uart2$UART2_SendData9$174 ==.
      0090F9 88               [ 1] 1068 	push	a
                           0004A0  1069 	Sstm8s_uart2$UART2_SendData9$175 ==.
                                   1070 ;	StdPeriphLib/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      0090FA AE 52 44         [ 2] 1071 	ldw	x, #0x5244
      0090FD F6               [ 1] 1072 	ld	a, (x)
      0090FE A4 BF            [ 1] 1073 	and	a, #0xbf
      009100 F7               [ 1] 1074 	ld	(x), a
                           0004A7  1075 	Sstm8s_uart2$UART2_SendData9$176 ==.
                                   1076 ;	StdPeriphLib/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      009101 AE 52 44         [ 2] 1077 	ldw	x, #0x5244
      009104 F6               [ 1] 1078 	ld	a, (x)
      009105 6B 01            [ 1] 1079 	ld	(0x01, sp), a
      009107 1E 06            [ 2] 1080 	ldw	x, (0x06, sp)
      009109 54               [ 2] 1081 	srlw	x
      00910A 54               [ 2] 1082 	srlw	x
      00910B 9F               [ 1] 1083 	ld	a, xl
      00910C A4 40            [ 1] 1084 	and	a, #0x40
      00910E 1A 01            [ 1] 1085 	or	a, (0x01, sp)
      009110 AE 52 44         [ 2] 1086 	ldw	x, #0x5244
      009113 F7               [ 1] 1087 	ld	(x), a
                           0004BA  1088 	Sstm8s_uart2$UART2_SendData9$177 ==.
                                   1089 ;	StdPeriphLib/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      009114 7B 07            [ 1] 1090 	ld	a, (0x07, sp)
      009116 AE 52 41         [ 2] 1091 	ldw	x, #0x5241
      009119 F7               [ 1] 1092 	ld	(x), a
                           0004C0  1093 	Sstm8s_uart2$UART2_SendData9$178 ==.
                                   1094 ;	StdPeriphLib/src/stm8s_uart2.c: 532: }
      00911A 84               [ 1] 1095 	pop	a
                           0004C1  1096 	Sstm8s_uart2$UART2_SendData9$179 ==.
                           0004C1  1097 	XG$UART2_SendData9$0$0 ==.
      00911B 32 01 A4         [ 1] 1098 	pop	_fp_
      00911E 32 01 A5         [ 1] 1099 	pop	_fp_+1
      009121 81               [ 4] 1100 	ret
                           0004C8  1101 	Sstm8s_uart2$UART2_SendData9$180 ==.
                           0004C8  1102 	Sstm8s_uart2$UART2_SendBreak$181 ==.
                                   1103 ;	StdPeriphLib/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function UART2_SendBreak
                                   1106 ;	-----------------------------------------
      009122                       1107 _UART2_SendBreak:
      009122 3B 01 A5         [ 1] 1108 	push	_fp_+1
      009125 3B 01 A4         [ 1] 1109 	push	_fp_
      009128 90 96            [ 1] 1110 	ldw	y, sp
      00912A 90 CF 01 A4      [ 2] 1111 	ldw	_fp_, y
                           0004D4  1112 	Sstm8s_uart2$UART2_SendBreak$182 ==.
                           0004D4  1113 	Sstm8s_uart2$UART2_SendBreak$183 ==.
                                   1114 ;	StdPeriphLib/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      00912E 72 10 52 45      [ 1] 1115 	bset	0x5245, #0
                           0004D8  1116 	Sstm8s_uart2$UART2_SendBreak$184 ==.
                                   1117 ;	StdPeriphLib/src/stm8s_uart2.c: 542: }
                           0004D8  1118 	Sstm8s_uart2$UART2_SendBreak$185 ==.
                           0004D8  1119 	XG$UART2_SendBreak$0$0 ==.
      009132 32 01 A4         [ 1] 1120 	pop	_fp_
      009135 32 01 A5         [ 1] 1121 	pop	_fp_+1
      009138 81               [ 4] 1122 	ret
                           0004DF  1123 	Sstm8s_uart2$UART2_SendBreak$186 ==.
                           0004DF  1124 	Sstm8s_uart2$UART2_SetAddress$187 ==.
                                   1125 ;	StdPeriphLib/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1126 ;	-----------------------------------------
                                   1127 ;	 function UART2_SetAddress
                                   1128 ;	-----------------------------------------
      009139                       1129 _UART2_SetAddress:
      009139 3B 01 A5         [ 1] 1130 	push	_fp_+1
      00913C 3B 01 A4         [ 1] 1131 	push	_fp_
      00913F 90 96            [ 1] 1132 	ldw	y, sp
      009141 90 CF 01 A4      [ 2] 1133 	ldw	_fp_, y
                           0004EB  1134 	Sstm8s_uart2$UART2_SetAddress$188 ==.
                           0004EB  1135 	Sstm8s_uart2$UART2_SetAddress$189 ==.
                                   1136 ;	StdPeriphLib/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      009145 AE 52 47         [ 2] 1137 	ldw	x, #0x5247
      009148 F6               [ 1] 1138 	ld	a, (x)
      009149 A4 F0            [ 1] 1139 	and	a, #0xf0
      00914B F7               [ 1] 1140 	ld	(x), a
                           0004F2  1141 	Sstm8s_uart2$UART2_SetAddress$190 ==.
                                   1142 ;	StdPeriphLib/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      00914C AE 52 47         [ 2] 1143 	ldw	x, #0x5247
      00914F F6               [ 1] 1144 	ld	a, (x)
      009150 1A 05            [ 1] 1145 	or	a, (0x05, sp)
      009152 AE 52 47         [ 2] 1146 	ldw	x, #0x5247
      009155 F7               [ 1] 1147 	ld	(x), a
                           0004FC  1148 	Sstm8s_uart2$UART2_SetAddress$191 ==.
                                   1149 ;	StdPeriphLib/src/stm8s_uart2.c: 558: }
                           0004FC  1150 	Sstm8s_uart2$UART2_SetAddress$192 ==.
                           0004FC  1151 	XG$UART2_SetAddress$0$0 ==.
      009156 32 01 A4         [ 1] 1152 	pop	_fp_
      009159 32 01 A5         [ 1] 1153 	pop	_fp_+1
      00915C 81               [ 4] 1154 	ret
                           000503  1155 	Sstm8s_uart2$UART2_SetAddress$193 ==.
                           000503  1156 	Sstm8s_uart2$UART2_SetGuardTime$194 ==.
                                   1157 ;	StdPeriphLib/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1158 ;	-----------------------------------------
                                   1159 ;	 function UART2_SetGuardTime
                                   1160 ;	-----------------------------------------
      00915D                       1161 _UART2_SetGuardTime:
      00915D 3B 01 A5         [ 1] 1162 	push	_fp_+1
      009160 3B 01 A4         [ 1] 1163 	push	_fp_
      009163 90 96            [ 1] 1164 	ldw	y, sp
      009165 90 CF 01 A4      [ 2] 1165 	ldw	_fp_, y
                           00050F  1166 	Sstm8s_uart2$UART2_SetGuardTime$195 ==.
                           00050F  1167 	Sstm8s_uart2$UART2_SetGuardTime$196 ==.
                                   1168 ;	StdPeriphLib/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      009169 AE 52 4A         [ 2] 1169 	ldw	x, #0x524a
      00916C 7B 05            [ 1] 1170 	ld	a, (0x05, sp)
      00916E F7               [ 1] 1171 	ld	(x), a
                           000515  1172 	Sstm8s_uart2$UART2_SetGuardTime$197 ==.
                                   1173 ;	StdPeriphLib/src/stm8s_uart2.c: 570: }
                           000515  1174 	Sstm8s_uart2$UART2_SetGuardTime$198 ==.
                           000515  1175 	XG$UART2_SetGuardTime$0$0 ==.
      00916F 32 01 A4         [ 1] 1176 	pop	_fp_
      009172 32 01 A5         [ 1] 1177 	pop	_fp_+1
      009175 81               [ 4] 1178 	ret
                           00051C  1179 	Sstm8s_uart2$UART2_SetGuardTime$199 ==.
                           00051C  1180 	Sstm8s_uart2$UART2_SetPrescaler$200 ==.
                                   1181 ;	StdPeriphLib/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1182 ;	-----------------------------------------
                                   1183 ;	 function UART2_SetPrescaler
                                   1184 ;	-----------------------------------------
      009176                       1185 _UART2_SetPrescaler:
      009176 3B 01 A5         [ 1] 1186 	push	_fp_+1
      009179 3B 01 A4         [ 1] 1187 	push	_fp_
      00917C 90 96            [ 1] 1188 	ldw	y, sp
      00917E 90 CF 01 A4      [ 2] 1189 	ldw	_fp_, y
                           000528  1190 	Sstm8s_uart2$UART2_SetPrescaler$201 ==.
                           000528  1191 	Sstm8s_uart2$UART2_SetPrescaler$202 ==.
                                   1192 ;	StdPeriphLib/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      009182 AE 52 4B         [ 2] 1193 	ldw	x, #0x524b
      009185 7B 05            [ 1] 1194 	ld	a, (0x05, sp)
      009187 F7               [ 1] 1195 	ld	(x), a
                           00052E  1196 	Sstm8s_uart2$UART2_SetPrescaler$203 ==.
                                   1197 ;	StdPeriphLib/src/stm8s_uart2.c: 598: }
                           00052E  1198 	Sstm8s_uart2$UART2_SetPrescaler$204 ==.
                           00052E  1199 	XG$UART2_SetPrescaler$0$0 ==.
      009188 32 01 A4         [ 1] 1200 	pop	_fp_
      00918B 32 01 A5         [ 1] 1201 	pop	_fp_+1
      00918E 81               [ 4] 1202 	ret
                           000535  1203 	Sstm8s_uart2$UART2_SetPrescaler$205 ==.
                           000535  1204 	Sstm8s_uart2$UART2_GetFlagStatus$206 ==.
                                   1205 ;	StdPeriphLib/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function UART2_GetFlagStatus
                                   1208 ;	-----------------------------------------
      00918F                       1209 _UART2_GetFlagStatus:
      00918F 3B 01 A5         [ 1] 1210 	push	_fp_+1
      009192 3B 01 A4         [ 1] 1211 	push	_fp_
      009195 90 96            [ 1] 1212 	ldw	y, sp
      009197 90 CF 01 A4      [ 2] 1213 	ldw	_fp_, y
                           000541  1214 	Sstm8s_uart2$UART2_GetFlagStatus$207 ==.
      00919B 52 04            [ 2] 1215 	sub	sp, #4
                           000543  1216 	Sstm8s_uart2$UART2_GetFlagStatus$208 ==.
                                   1217 ;	StdPeriphLib/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      00919D 1E 09            [ 2] 1218 	ldw	x, (0x09, sp)
      00919F A3 02 10         [ 2] 1219 	cpw	x, #0x0210
      0091A2 26 16            [ 1] 1220 	jrne	00121$
                           00054A  1221 	Sstm8s_uart2$UART2_GetFlagStatus$209 ==.
                                   1222 ;	StdPeriphLib/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0091A4 AE 52 47         [ 2] 1223 	ldw	x, #0x5247
      0091A7 F6               [ 1] 1224 	ld	a, (x)
      0091A8 6B 02            [ 1] 1225 	ld	(0x02, sp), a
      0091AA 7B 0A            [ 1] 1226 	ld	a, (0x0a, sp)
      0091AC 14 02            [ 1] 1227 	and	a, (0x02, sp)
      0091AE 4D               [ 1] 1228 	tnz	a
      0091AF 27 05            [ 1] 1229 	jreq	00102$
                           000557  1230 	Sstm8s_uart2$UART2_GetFlagStatus$210 ==.
                                   1231 ;	StdPeriphLib/src/stm8s_uart2.c: 619: status = SET;
      0091B1 A6 01            [ 1] 1232 	ld	a, #0x01
      0091B3 CC 92 09         [ 2] 1233 	jp	00122$
      0091B6                       1234 00102$:
                           00055C  1235 	Sstm8s_uart2$UART2_GetFlagStatus$211 ==.
                                   1236 ;	StdPeriphLib/src/stm8s_uart2.c: 624: status = RESET;
      0091B6 4F               [ 1] 1237 	clr	a
      0091B7 CC 92 09         [ 2] 1238 	jp	00122$
      0091BA                       1239 00121$:
                           000560  1240 	Sstm8s_uart2$UART2_GetFlagStatus$212 ==.
                                   1241 ;	StdPeriphLib/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      0091BA 1E 09            [ 2] 1242 	ldw	x, (0x09, sp)
      0091BC A3 01 01         [ 2] 1243 	cpw	x, #0x0101
      0091BF 26 14            [ 1] 1244 	jrne	00118$
                           000567  1245 	Sstm8s_uart2$UART2_GetFlagStatus$213 ==.
                                   1246 ;	StdPeriphLib/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0091C1 AE 52 45         [ 2] 1247 	ldw	x, #0x5245
      0091C4 F6               [ 1] 1248 	ld	a, (x)
      0091C5 6B 04            [ 1] 1249 	ld	(0x04, sp), a
      0091C7 7B 0A            [ 1] 1250 	ld	a, (0x0a, sp)
      0091C9 14 04            [ 1] 1251 	and	a, (0x04, sp)
      0091CB 4D               [ 1] 1252 	tnz	a
      0091CC 27 04            [ 1] 1253 	jreq	00105$
                           000574  1254 	Sstm8s_uart2$UART2_GetFlagStatus$214 ==.
                                   1255 ;	StdPeriphLib/src/stm8s_uart2.c: 632: status = SET;
      0091CE A6 01            [ 1] 1256 	ld	a, #0x01
      0091D0 20 37            [ 2] 1257 	jra	00122$
      0091D2                       1258 00105$:
                           000578  1259 	Sstm8s_uart2$UART2_GetFlagStatus$215 ==.
                                   1260 ;	StdPeriphLib/src/stm8s_uart2.c: 637: status = RESET;
      0091D2 4F               [ 1] 1261 	clr	a
      0091D3 20 34            [ 2] 1262 	jra	00122$
      0091D5                       1263 00118$:
                           00057B  1264 	Sstm8s_uart2$UART2_GetFlagStatus$216 ==.
                                   1265 ;	StdPeriphLib/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      0091D5 1E 09            [ 2] 1266 	ldw	x, (0x09, sp)
      0091D7 A3 03 02         [ 2] 1267 	cpw	x, #0x0302
      0091DA 27 07            [ 1] 1268 	jreq	00113$
      0091DC 1E 09            [ 2] 1269 	ldw	x, (0x09, sp)
      0091DE A3 03 01         [ 2] 1270 	cpw	x, #0x0301
      0091E1 26 14            [ 1] 1271 	jrne	00114$
      0091E3                       1272 00113$:
                           000589  1273 	Sstm8s_uart2$UART2_GetFlagStatus$217 ==.
                                   1274 ;	StdPeriphLib/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0091E3 AE 52 49         [ 2] 1275 	ldw	x, #0x5249
      0091E6 F6               [ 1] 1276 	ld	a, (x)
      0091E7 6B 03            [ 1] 1277 	ld	(0x03, sp), a
      0091E9 7B 0A            [ 1] 1278 	ld	a, (0x0a, sp)
      0091EB 14 03            [ 1] 1279 	and	a, (0x03, sp)
      0091ED 4D               [ 1] 1280 	tnz	a
      0091EE 27 04            [ 1] 1281 	jreq	00108$
                           000596  1282 	Sstm8s_uart2$UART2_GetFlagStatus$218 ==.
                                   1283 ;	StdPeriphLib/src/stm8s_uart2.c: 645: status = SET;
      0091F0 A6 01            [ 1] 1284 	ld	a, #0x01
      0091F2 20 15            [ 2] 1285 	jra	00122$
      0091F4                       1286 00108$:
                           00059A  1287 	Sstm8s_uart2$UART2_GetFlagStatus$219 ==.
                                   1288 ;	StdPeriphLib/src/stm8s_uart2.c: 650: status = RESET;
      0091F4 4F               [ 1] 1289 	clr	a
      0091F5 20 12            [ 2] 1290 	jra	00122$
      0091F7                       1291 00114$:
                           00059D  1292 	Sstm8s_uart2$UART2_GetFlagStatus$220 ==.
                                   1293 ;	StdPeriphLib/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0091F7 AE 52 40         [ 2] 1294 	ldw	x, #0x5240
      0091FA F6               [ 1] 1295 	ld	a, (x)
      0091FB 6B 01            [ 1] 1296 	ld	(0x01, sp), a
      0091FD 7B 0A            [ 1] 1297 	ld	a, (0x0a, sp)
      0091FF 14 01            [ 1] 1298 	and	a, (0x01, sp)
      009201 4D               [ 1] 1299 	tnz	a
      009202 27 04            [ 1] 1300 	jreq	00111$
                           0005AA  1301 	Sstm8s_uart2$UART2_GetFlagStatus$221 ==.
                                   1302 ;	StdPeriphLib/src/stm8s_uart2.c: 658: status = SET;
      009204 A6 01            [ 1] 1303 	ld	a, #0x01
      009206 20 01            [ 2] 1304 	jra	00122$
      009208                       1305 00111$:
                           0005AE  1306 	Sstm8s_uart2$UART2_GetFlagStatus$222 ==.
                                   1307 ;	StdPeriphLib/src/stm8s_uart2.c: 663: status = RESET;
      009208 4F               [ 1] 1308 	clr	a
      009209                       1309 00122$:
                           0005AF  1310 	Sstm8s_uart2$UART2_GetFlagStatus$223 ==.
                                   1311 ;	StdPeriphLib/src/stm8s_uart2.c: 668: return  status;
                           0005AF  1312 	Sstm8s_uart2$UART2_GetFlagStatus$224 ==.
                                   1313 ;	StdPeriphLib/src/stm8s_uart2.c: 669: }
      009209 5B 04            [ 2] 1314 	addw	sp, #4
                           0005B1  1315 	Sstm8s_uart2$UART2_GetFlagStatus$225 ==.
                           0005B1  1316 	XG$UART2_GetFlagStatus$0$0 ==.
      00920B 32 01 A4         [ 1] 1317 	pop	_fp_
      00920E 32 01 A5         [ 1] 1318 	pop	_fp_+1
      009211 81               [ 4] 1319 	ret
                           0005B8  1320 	Sstm8s_uart2$UART2_GetFlagStatus$226 ==.
                           0005B8  1321 	Sstm8s_uart2$UART2_ClearFlag$227 ==.
                                   1322 ;	StdPeriphLib/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function UART2_ClearFlag
                                   1325 ;	-----------------------------------------
      009212                       1326 _UART2_ClearFlag:
      009212 3B 01 A5         [ 1] 1327 	push	_fp_+1
      009215 3B 01 A4         [ 1] 1328 	push	_fp_
      009218 90 96            [ 1] 1329 	ldw	y, sp
      00921A 90 CF 01 A4      [ 2] 1330 	ldw	_fp_, y
                           0005C4  1331 	Sstm8s_uart2$UART2_ClearFlag$228 ==.
                           0005C4  1332 	Sstm8s_uart2$UART2_ClearFlag$229 ==.
                                   1333 ;	StdPeriphLib/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      00921E 1E 05            [ 2] 1334 	ldw	x, (0x05, sp)
      009220 A3 00 20         [ 2] 1335 	cpw	x, #0x0020
      009223 26 06            [ 1] 1336 	jrne	00108$
                           0005CB  1337 	Sstm8s_uart2$UART2_ClearFlag$230 ==.
                                   1338 ;	StdPeriphLib/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      009225 35 DF 52 40      [ 1] 1339 	mov	0x5240+0, #0xdf
      009229 20 24            [ 2] 1340 	jra	00110$
      00922B                       1341 00108$:
                           0005D1  1342 	Sstm8s_uart2$UART2_ClearFlag$231 ==.
                                   1343 ;	StdPeriphLib/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      00922B 1E 05            [ 2] 1344 	ldw	x, (0x05, sp)
      00922D A3 02 10         [ 2] 1345 	cpw	x, #0x0210
      009230 26 09            [ 1] 1346 	jrne	00105$
                           0005D8  1347 	Sstm8s_uart2$UART2_ClearFlag$232 ==.
                                   1348 ;	StdPeriphLib/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      009232 AE 52 47         [ 2] 1349 	ldw	x, #0x5247
      009235 F6               [ 1] 1350 	ld	a, (x)
      009236 A4 EF            [ 1] 1351 	and	a, #0xef
      009238 F7               [ 1] 1352 	ld	(x), a
      009239 20 14            [ 2] 1353 	jra	00110$
      00923B                       1354 00105$:
                           0005E1  1355 	Sstm8s_uart2$UART2_ClearFlag$233 ==.
                                   1356 ;	StdPeriphLib/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      00923B 1E 05            [ 2] 1357 	ldw	x, (0x05, sp)
      00923D A3 03 02         [ 2] 1358 	cpw	x, #0x0302
      009240 26 09            [ 1] 1359 	jrne	00102$
                           0005E8  1360 	Sstm8s_uart2$UART2_ClearFlag$234 ==.
                                   1361 ;	StdPeriphLib/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      009242 AE 52 49         [ 2] 1362 	ldw	x, #0x5249
      009245 F6               [ 1] 1363 	ld	a, (x)
      009246 A4 FD            [ 1] 1364 	and	a, #0xfd
      009248 F7               [ 1] 1365 	ld	(x), a
      009249 20 04            [ 2] 1366 	jra	00110$
      00924B                       1367 00102$:
                           0005F1  1368 	Sstm8s_uart2$UART2_ClearFlag$235 ==.
                                   1369 ;	StdPeriphLib/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      00924B 72 11 52 49      [ 1] 1370 	bres	0x5249, #0
      00924F                       1371 00110$:
                           0005F5  1372 	Sstm8s_uart2$UART2_ClearFlag$236 ==.
                                   1373 ;	StdPeriphLib/src/stm8s_uart2.c: 723: }
                           0005F5  1374 	Sstm8s_uart2$UART2_ClearFlag$237 ==.
                           0005F5  1375 	XG$UART2_ClearFlag$0$0 ==.
      00924F 32 01 A4         [ 1] 1376 	pop	_fp_
      009252 32 01 A5         [ 1] 1377 	pop	_fp_+1
      009255 81               [ 4] 1378 	ret
                           0005FC  1379 	Sstm8s_uart2$UART2_ClearFlag$238 ==.
                           0005FC  1380 	Sstm8s_uart2$UART2_GetITStatus$239 ==.
                                   1381 ;	StdPeriphLib/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1382 ;	-----------------------------------------
                                   1383 ;	 function UART2_GetITStatus
                                   1384 ;	-----------------------------------------
      009256                       1385 _UART2_GetITStatus:
      009256 3B 01 A5         [ 1] 1386 	push	_fp_+1
      009259 3B 01 A4         [ 1] 1387 	push	_fp_
      00925C 90 96            [ 1] 1388 	ldw	y, sp
      00925E 90 CF 01 A4      [ 2] 1389 	ldw	_fp_, y
                           000608  1390 	Sstm8s_uart2$UART2_GetITStatus$240 ==.
      009262 52 03            [ 2] 1391 	sub	sp, #3
                           00060A  1392 	Sstm8s_uart2$UART2_GetITStatus$241 ==.
                                   1393 ;	StdPeriphLib/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      009264 7B 09            [ 1] 1394 	ld	a, (0x09, sp)
      009266 97               [ 1] 1395 	ld	xl, a
      009267 A4 0F            [ 1] 1396 	and	a, #0x0f
      009269 95               [ 1] 1397 	ld	xh, a
      00926A A6 01            [ 1] 1398 	ld	a, #0x01
      00926C 88               [ 1] 1399 	push	a
      00926D 9E               [ 1] 1400 	ld	a, xh
      00926E 4D               [ 1] 1401 	tnz	a
      00926F 27 05            [ 1] 1402 	jreq	00162$
      009271                       1403 00161$:
      009271 08 01            [ 1] 1404 	sll	(1, sp)
      009273 4A               [ 1] 1405 	dec	a
      009274 26 FB            [ 1] 1406 	jrne	00161$
      009276                       1407 00162$:
      009276 84               [ 1] 1408 	pop	a
      009277 6B 01            [ 1] 1409 	ld	(0x01, sp), a
                           00061F  1410 	Sstm8s_uart2$UART2_GetITStatus$242 ==.
                                   1411 ;	StdPeriphLib/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      009279 9F               [ 1] 1412 	ld	a, xl
      00927A 4E               [ 1] 1413 	swap	a
      00927B A4 0F            [ 1] 1414 	and	a, #0x0f
      00927D 97               [ 1] 1415 	ld	xl, a
                           000624  1416 	Sstm8s_uart2$UART2_GetITStatus$243 ==.
                                   1417 ;	StdPeriphLib/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      00927E A6 01            [ 1] 1418 	ld	a, #0x01
      009280 88               [ 1] 1419 	push	a
      009281 9F               [ 1] 1420 	ld	a, xl
      009282 4D               [ 1] 1421 	tnz	a
      009283 27 05            [ 1] 1422 	jreq	00164$
      009285                       1423 00163$:
      009285 08 01            [ 1] 1424 	sll	(1, sp)
      009287 4A               [ 1] 1425 	dec	a
      009288 26 FB            [ 1] 1426 	jrne	00163$
      00928A                       1427 00164$:
      00928A 84               [ 1] 1428 	pop	a
      00928B 6B 03            [ 1] 1429 	ld	(0x03, sp), a
                           000633  1430 	Sstm8s_uart2$UART2_GetITStatus$244 ==.
                                   1431 ;	StdPeriphLib/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      00928D 1E 08            [ 2] 1432 	ldw	x, (0x08, sp)
      00928F A3 01 00         [ 2] 1433 	cpw	x, #0x0100
      009292 26 1E            [ 1] 1434 	jrne	00124$
                           00063A  1435 	Sstm8s_uart2$UART2_GetITStatus$245 ==.
                                   1436 ;	StdPeriphLib/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      009294 AE 52 44         [ 2] 1437 	ldw	x, #0x5244
      009297 F6               [ 1] 1438 	ld	a, (x)
      009298 14 03            [ 1] 1439 	and	a, (0x03, sp)
      00929A 6B 02            [ 1] 1440 	ld	(0x02, sp), a
                           000642  1441 	Sstm8s_uart2$UART2_GetITStatus$246 ==.
                                   1442 ;	StdPeriphLib/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00929C AE 52 40         [ 2] 1443 	ldw	x, #0x5240
      00929F F6               [ 1] 1444 	ld	a, (x)
      0092A0 14 01            [ 1] 1445 	and	a, (0x01, sp)
      0092A2 4D               [ 1] 1446 	tnz	a
      0092A3 27 09            [ 1] 1447 	jreq	00102$
      0092A5 0D 02            [ 1] 1448 	tnz	(0x02, sp)
      0092A7 27 05            [ 1] 1449 	jreq	00102$
                           00064F  1450 	Sstm8s_uart2$UART2_GetITStatus$247 ==.
                                   1451 ;	StdPeriphLib/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      0092A9 A6 01            [ 1] 1452 	ld	a, #0x01
      0092AB CC 93 12         [ 2] 1453 	jp	00125$
      0092AE                       1454 00102$:
                           000654  1455 	Sstm8s_uart2$UART2_GetITStatus$248 ==.
                                   1456 ;	StdPeriphLib/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      0092AE 4F               [ 1] 1457 	clr	a
      0092AF CC 93 12         [ 2] 1458 	jp	00125$
      0092B2                       1459 00124$:
                           000658  1460 	Sstm8s_uart2$UART2_GetITStatus$249 ==.
                                   1461 ;	StdPeriphLib/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      0092B2 1E 08            [ 2] 1462 	ldw	x, (0x08, sp)
      0092B4 A3 03 46         [ 2] 1463 	cpw	x, #0x0346
      0092B7 26 1C            [ 1] 1464 	jrne	00121$
                           00065F  1465 	Sstm8s_uart2$UART2_GetITStatus$250 ==.
                                   1466 ;	StdPeriphLib/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      0092B9 AE 52 47         [ 2] 1467 	ldw	x, #0x5247
      0092BC F6               [ 1] 1468 	ld	a, (x)
      0092BD 14 03            [ 1] 1469 	and	a, (0x03, sp)
      0092BF 6B 02            [ 1] 1470 	ld	(0x02, sp), a
                           000667  1471 	Sstm8s_uart2$UART2_GetITStatus$251 ==.
                                   1472 ;	StdPeriphLib/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      0092C1 AE 52 47         [ 2] 1473 	ldw	x, #0x5247
      0092C4 F6               [ 1] 1474 	ld	a, (x)
      0092C5 14 01            [ 1] 1475 	and	a, (0x01, sp)
      0092C7 4D               [ 1] 1476 	tnz	a
      0092C8 27 08            [ 1] 1477 	jreq	00106$
      0092CA 0D 02            [ 1] 1478 	tnz	(0x02, sp)
      0092CC 27 04            [ 1] 1479 	jreq	00106$
                           000674  1480 	Sstm8s_uart2$UART2_GetITStatus$252 ==.
                                   1481 ;	StdPeriphLib/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      0092CE A6 01            [ 1] 1482 	ld	a, #0x01
      0092D0 20 40            [ 2] 1483 	jra	00125$
      0092D2                       1484 00106$:
                           000678  1485 	Sstm8s_uart2$UART2_GetITStatus$253 ==.
                                   1486 ;	StdPeriphLib/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      0092D2 4F               [ 1] 1487 	clr	a
      0092D3 20 3D            [ 2] 1488 	jra	00125$
      0092D5                       1489 00121$:
                           00067B  1490 	Sstm8s_uart2$UART2_GetITStatus$254 ==.
                                   1491 ;	StdPeriphLib/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      0092D5 1E 08            [ 2] 1492 	ldw	x, (0x08, sp)
      0092D7 A3 04 12         [ 2] 1493 	cpw	x, #0x0412
      0092DA 26 1C            [ 1] 1494 	jrne	00118$
                           000682  1495 	Sstm8s_uart2$UART2_GetITStatus$255 ==.
                                   1496 ;	StdPeriphLib/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      0092DC AE 52 49         [ 2] 1497 	ldw	x, #0x5249
      0092DF F6               [ 1] 1498 	ld	a, (x)
      0092E0 14 03            [ 1] 1499 	and	a, (0x03, sp)
      0092E2 6B 02            [ 1] 1500 	ld	(0x02, sp), a
                           00068A  1501 	Sstm8s_uart2$UART2_GetITStatus$256 ==.
                                   1502 ;	StdPeriphLib/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      0092E4 AE 52 49         [ 2] 1503 	ldw	x, #0x5249
      0092E7 F6               [ 1] 1504 	ld	a, (x)
      0092E8 14 01            [ 1] 1505 	and	a, (0x01, sp)
      0092EA 4D               [ 1] 1506 	tnz	a
      0092EB 27 08            [ 1] 1507 	jreq	00110$
      0092ED 0D 02            [ 1] 1508 	tnz	(0x02, sp)
      0092EF 27 04            [ 1] 1509 	jreq	00110$
                           000697  1510 	Sstm8s_uart2$UART2_GetITStatus$257 ==.
                                   1511 ;	StdPeriphLib/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      0092F1 A6 01            [ 1] 1512 	ld	a, #0x01
      0092F3 20 1D            [ 2] 1513 	jra	00125$
      0092F5                       1514 00110$:
                           00069B  1515 	Sstm8s_uart2$UART2_GetITStatus$258 ==.
                                   1516 ;	StdPeriphLib/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      0092F5 4F               [ 1] 1517 	clr	a
      0092F6 20 1A            [ 2] 1518 	jra	00125$
      0092F8                       1519 00118$:
                           00069E  1520 	Sstm8s_uart2$UART2_GetITStatus$259 ==.
                                   1521 ;	StdPeriphLib/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      0092F8 AE 52 45         [ 2] 1522 	ldw	x, #0x5245
      0092FB F6               [ 1] 1523 	ld	a, (x)
      0092FC 14 03            [ 1] 1524 	and	a, (0x03, sp)
      0092FE 6B 02            [ 1] 1525 	ld	(0x02, sp), a
                           0006A6  1526 	Sstm8s_uart2$UART2_GetITStatus$260 ==.
                                   1527 ;	StdPeriphLib/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      009300 AE 52 40         [ 2] 1528 	ldw	x, #0x5240
      009303 F6               [ 1] 1529 	ld	a, (x)
      009304 14 01            [ 1] 1530 	and	a, (0x01, sp)
      009306 4D               [ 1] 1531 	tnz	a
      009307 27 08            [ 1] 1532 	jreq	00114$
      009309 0D 02            [ 1] 1533 	tnz	(0x02, sp)
      00930B 27 04            [ 1] 1534 	jreq	00114$
                           0006B3  1535 	Sstm8s_uart2$UART2_GetITStatus$261 ==.
                                   1536 ;	StdPeriphLib/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      00930D A6 01            [ 1] 1537 	ld	a, #0x01
      00930F 20 01            [ 2] 1538 	jra	00125$
      009311                       1539 00114$:
                           0006B7  1540 	Sstm8s_uart2$UART2_GetITStatus$262 ==.
                                   1541 ;	StdPeriphLib/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      009311 4F               [ 1] 1542 	clr	a
      009312                       1543 00125$:
                           0006B8  1544 	Sstm8s_uart2$UART2_GetITStatus$263 ==.
                                   1545 ;	StdPeriphLib/src/stm8s_uart2.c: 823: return  pendingbitstatus;
                           0006B8  1546 	Sstm8s_uart2$UART2_GetITStatus$264 ==.
                                   1547 ;	StdPeriphLib/src/stm8s_uart2.c: 824: }
      009312 5B 03            [ 2] 1548 	addw	sp, #3
                           0006BA  1549 	Sstm8s_uart2$UART2_GetITStatus$265 ==.
                           0006BA  1550 	XG$UART2_GetITStatus$0$0 ==.
      009314 32 01 A4         [ 1] 1551 	pop	_fp_
      009317 32 01 A5         [ 1] 1552 	pop	_fp_+1
      00931A 81               [ 4] 1553 	ret
                           0006C1  1554 	Sstm8s_uart2$UART2_GetITStatus$266 ==.
                           0006C1  1555 	Sstm8s_uart2$UART2_ClearITPendingBit$267 ==.
                                   1556 ;	StdPeriphLib/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1557 ;	-----------------------------------------
                                   1558 ;	 function UART2_ClearITPendingBit
                                   1559 ;	-----------------------------------------
      00931B                       1560 _UART2_ClearITPendingBit:
      00931B 3B 01 A5         [ 1] 1561 	push	_fp_+1
      00931E 3B 01 A4         [ 1] 1562 	push	_fp_
      009321 90 96            [ 1] 1563 	ldw	y, sp
      009323 90 CF 01 A4      [ 2] 1564 	ldw	_fp_, y
                           0006CD  1565 	Sstm8s_uart2$UART2_ClearITPendingBit$268 ==.
                           0006CD  1566 	Sstm8s_uart2$UART2_ClearITPendingBit$269 ==.
                                   1567 ;	StdPeriphLib/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      009327 1E 05            [ 2] 1568 	ldw	x, (0x05, sp)
      009329 A3 02 55         [ 2] 1569 	cpw	x, #0x0255
      00932C 26 06            [ 1] 1570 	jrne	00105$
                           0006D4  1571 	Sstm8s_uart2$UART2_ClearITPendingBit$270 ==.
                                   1572 ;	StdPeriphLib/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      00932E 35 DF 52 40      [ 1] 1573 	mov	0x5240+0, #0xdf
      009332 20 17            [ 2] 1574 	jra	00107$
      009334                       1575 00105$:
                           0006DA  1576 	Sstm8s_uart2$UART2_ClearITPendingBit$271 ==.
                                   1577 ;	StdPeriphLib/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      009334 1E 05            [ 2] 1578 	ldw	x, (0x05, sp)
      009336 A3 03 46         [ 2] 1579 	cpw	x, #0x0346
      009339 26 09            [ 1] 1580 	jrne	00102$
                           0006E1  1581 	Sstm8s_uart2$UART2_ClearITPendingBit$272 ==.
                                   1582 ;	StdPeriphLib/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      00933B AE 52 47         [ 2] 1583 	ldw	x, #0x5247
      00933E F6               [ 1] 1584 	ld	a, (x)
      00933F A4 EF            [ 1] 1585 	and	a, #0xef
      009341 F7               [ 1] 1586 	ld	(x), a
      009342 20 07            [ 2] 1587 	jra	00107$
      009344                       1588 00102$:
                           0006EA  1589 	Sstm8s_uart2$UART2_ClearITPendingBit$273 ==.
                                   1590 ;	StdPeriphLib/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      009344 AE 52 49         [ 2] 1591 	ldw	x, #0x5249
      009347 F6               [ 1] 1592 	ld	a, (x)
      009348 A4 FD            [ 1] 1593 	and	a, #0xfd
      00934A F7               [ 1] 1594 	ld	(x), a
      00934B                       1595 00107$:
                           0006F1  1596 	Sstm8s_uart2$UART2_ClearITPendingBit$274 ==.
                                   1597 ;	StdPeriphLib/src/stm8s_uart2.c: 871: }
                           0006F1  1598 	Sstm8s_uart2$UART2_ClearITPendingBit$275 ==.
                           0006F1  1599 	XG$UART2_ClearITPendingBit$0$0 ==.
      00934B 32 01 A4         [ 1] 1600 	pop	_fp_
      00934E 32 01 A5         [ 1] 1601 	pop	_fp_+1
      009351 81               [ 4] 1602 	ret
                           0006F8  1603 	Sstm8s_uart2$UART2_ClearITPendingBit$276 ==.
                                   1604 	.area CODE
                                   1605 	.area INITIALIZER
                                   1606 	.area CABS (ABS)
                                   1607 
                                   1608 	.area .debug_line (NOLOAD)
      001319 00 00 06 EE           1609 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00131D                       1610 Ldebug_line_start:
      00131D 00 02                 1611 	.dw	2
      00131F 00 00 01 1A           1612 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001323 01                    1613 	.db	1
      001324 01                    1614 	.db	1
      001325 FB                    1615 	.db	-5
      001326 0F                    1616 	.db	15
      001327 0A                    1617 	.db	10
      001328 00                    1618 	.db	0
      001329 01                    1619 	.db	1
      00132A 01                    1620 	.db	1
      00132B 01                    1621 	.db	1
      00132C 01                    1622 	.db	1
      00132D 00                    1623 	.db	0
      00132E 00                    1624 	.db	0
      00132F 00                    1625 	.db	0
      001330 01                    1626 	.db	1
      001331 2F 68 6F 6D 65 2F 63  1627 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      001370 00                    1628 	.db	0
      001371 2F 68 6F 6D 65 2F 63  1629 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      0013A9 00                    1630 	.db	0
      0013AA 2F 68 6F 6D 65 2F 63  1631 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      0013E4 00                    1632 	.db	0
      0013E5 2F 68 6F 6D 65 2F 63  1633 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      001418 00                    1634 	.db	0
      001419 00                    1635 	.db	0
      00141A 53 74 64 50 65 72 69  1636 	.ascii "StdPeriphLib/src/stm8s_uart2.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 75 61 72 74 32
             2E 63
      001438 00                    1637 	.db	0
      001439 00                    1638 	.uleb128	0
      00143A 00                    1639 	.uleb128	0
      00143B 00                    1640 	.uleb128	0
      00143C 00                    1641 	.db	0
      00143D                       1642 Ldebug_line_stmt:
      00143D 00                    1643 	.db	0
      00143E 05                    1644 	.uleb128	5
      00143F 02                    1645 	.db	2
      001440 00 00 8C 5A           1646 	.dw	0,(Sstm8s_uart2$UART2_DeInit$0)
      001444 03                    1647 	.db	3
      001445 34                    1648 	.sleb128	52
      001446 01                    1649 	.db	1
      001447 09                    1650 	.db	9
      001448 00 0C                 1651 	.dw	Sstm8s_uart2$UART2_DeInit$2-Sstm8s_uart2$UART2_DeInit$0
      00144A 03                    1652 	.db	3
      00144B 04                    1653 	.sleb128	4
      00144C 01                    1654 	.db	1
      00144D 09                    1655 	.db	9
      00144E 00 04                 1656 	.dw	Sstm8s_uart2$UART2_DeInit$3-Sstm8s_uart2$UART2_DeInit$2
      001450 03                    1657 	.db	3
      001451 01                    1658 	.sleb128	1
      001452 01                    1659 	.db	1
      001453 09                    1660 	.db	9
      001454 00 04                 1661 	.dw	Sstm8s_uart2$UART2_DeInit$4-Sstm8s_uart2$UART2_DeInit$3
      001456 03                    1662 	.db	3
      001457 02                    1663 	.sleb128	2
      001458 01                    1664 	.db	1
      001459 09                    1665 	.db	9
      00145A 00 04                 1666 	.dw	Sstm8s_uart2$UART2_DeInit$5-Sstm8s_uart2$UART2_DeInit$4
      00145C 03                    1667 	.db	3
      00145D 01                    1668 	.sleb128	1
      00145E 01                    1669 	.db	1
      00145F 09                    1670 	.db	9
      001460 00 04                 1671 	.dw	Sstm8s_uart2$UART2_DeInit$6-Sstm8s_uart2$UART2_DeInit$5
      001462 03                    1672 	.db	3
      001463 02                    1673 	.sleb128	2
      001464 01                    1674 	.db	1
      001465 09                    1675 	.db	9
      001466 00 04                 1676 	.dw	Sstm8s_uart2$UART2_DeInit$7-Sstm8s_uart2$UART2_DeInit$6
      001468 03                    1677 	.db	3
      001469 01                    1678 	.sleb128	1
      00146A 01                    1679 	.db	1
      00146B 09                    1680 	.db	9
      00146C 00 04                 1681 	.dw	Sstm8s_uart2$UART2_DeInit$8-Sstm8s_uart2$UART2_DeInit$7
      00146E 03                    1682 	.db	3
      00146F 01                    1683 	.sleb128	1
      001470 01                    1684 	.db	1
      001471 09                    1685 	.db	9
      001472 00 04                 1686 	.dw	Sstm8s_uart2$UART2_DeInit$9-Sstm8s_uart2$UART2_DeInit$8
      001474 03                    1687 	.db	3
      001475 01                    1688 	.sleb128	1
      001476 01                    1689 	.db	1
      001477 09                    1690 	.db	9
      001478 00 04                 1691 	.dw	Sstm8s_uart2$UART2_DeInit$10-Sstm8s_uart2$UART2_DeInit$9
      00147A 03                    1692 	.db	3
      00147B 01                    1693 	.sleb128	1
      00147C 01                    1694 	.db	1
      00147D 09                    1695 	.db	9
      00147E 00 04                 1696 	.dw	Sstm8s_uart2$UART2_DeInit$11-Sstm8s_uart2$UART2_DeInit$10
      001480 03                    1697 	.db	3
      001481 01                    1698 	.sleb128	1
      001482 01                    1699 	.db	1
      001483 09                    1700 	.db	9
      001484 00 04                 1701 	.dw	Sstm8s_uart2$UART2_DeInit$12-Sstm8s_uart2$UART2_DeInit$11
      001486 03                    1702 	.db	3
      001487 01                    1703 	.sleb128	1
      001488 01                    1704 	.db	1
      001489 09                    1705 	.db	9
      00148A 00 07                 1706 	.dw	7+Sstm8s_uart2$UART2_DeInit$13-Sstm8s_uart2$UART2_DeInit$12
      00148C 00                    1707 	.db	0
      00148D 01                    1708 	.uleb128	1
      00148E 01                    1709 	.db	1
      00148F 00                    1710 	.db	0
      001490 05                    1711 	.uleb128	5
      001491 02                    1712 	.db	2
      001492 00 00 8C 95           1713 	.dw	0,(Sstm8s_uart2$UART2_Init$15)
      001496 03                    1714 	.db	3
      001497 D4 00                 1715 	.sleb128	84
      001499 01                    1716 	.db	1
      00149A 09                    1717 	.db	9
      00149B 00 0E                 1718 	.dw	Sstm8s_uart2$UART2_Init$17-Sstm8s_uart2$UART2_Init$15
      00149D 03                    1719 	.db	3
      00149E 0E                    1720 	.sleb128	14
      00149F 01                    1721 	.db	1
      0014A0 09                    1722 	.db	9
      0014A1 00 07                 1723 	.dw	Sstm8s_uart2$UART2_Init$18-Sstm8s_uart2$UART2_Init$17
      0014A3 03                    1724 	.db	3
      0014A4 02                    1725 	.sleb128	2
      0014A5 01                    1726 	.db	1
      0014A6 09                    1727 	.db	9
      0014A7 00 0A                 1728 	.dw	Sstm8s_uart2$UART2_Init$19-Sstm8s_uart2$UART2_Init$18
      0014A9 03                    1729 	.db	3
      0014AA 03                    1730 	.sleb128	3
      0014AB 01                    1731 	.db	1
      0014AC 09                    1732 	.db	9
      0014AD 00 07                 1733 	.dw	Sstm8s_uart2$UART2_Init$20-Sstm8s_uart2$UART2_Init$19
      0014AF 03                    1734 	.db	3
      0014B0 02                    1735 	.sleb128	2
      0014B1 01                    1736 	.db	1
      0014B2 09                    1737 	.db	9
      0014B3 00 0A                 1738 	.dw	Sstm8s_uart2$UART2_Init$21-Sstm8s_uart2$UART2_Init$20
      0014B5 03                    1739 	.db	3
      0014B6 03                    1740 	.sleb128	3
      0014B7 01                    1741 	.db	1
      0014B8 09                    1742 	.db	9
      0014B9 00 07                 1743 	.dw	Sstm8s_uart2$UART2_Init$22-Sstm8s_uart2$UART2_Init$21
      0014BB 03                    1744 	.db	3
      0014BC 02                    1745 	.sleb128	2
      0014BD 01                    1746 	.db	1
      0014BE 09                    1747 	.db	9
      0014BF 00 0A                 1748 	.dw	Sstm8s_uart2$UART2_Init$23-Sstm8s_uart2$UART2_Init$22
      0014C1 03                    1749 	.db	3
      0014C2 03                    1750 	.sleb128	3
      0014C3 01                    1751 	.db	1
      0014C4 09                    1752 	.db	9
      0014C5 00 08                 1753 	.dw	Sstm8s_uart2$UART2_Init$24-Sstm8s_uart2$UART2_Init$23
      0014C7 03                    1754 	.db	3
      0014C8 02                    1755 	.sleb128	2
      0014C9 01                    1756 	.db	1
      0014CA 09                    1757 	.db	9
      0014CB 00 07                 1758 	.dw	Sstm8s_uart2$UART2_Init$25-Sstm8s_uart2$UART2_Init$24
      0014CD 03                    1759 	.db	3
      0014CE 02                    1760 	.sleb128	2
      0014CF 01                    1761 	.db	1
      0014D0 09                    1762 	.db	9
      0014D1 00 07                 1763 	.dw	Sstm8s_uart2$UART2_Init$26-Sstm8s_uart2$UART2_Init$25
      0014D3 03                    1764 	.db	3
      0014D4 03                    1765 	.sleb128	3
      0014D5 01                    1766 	.db	1
      0014D6 09                    1767 	.db	9
      0014D7 00 2B                 1768 	.dw	Sstm8s_uart2$UART2_Init$27-Sstm8s_uart2$UART2_Init$26
      0014D9 03                    1769 	.db	3
      0014DA 01                    1770 	.sleb128	1
      0014DB 01                    1771 	.db	1
      0014DC 09                    1772 	.db	9
      0014DD 00 2A                 1773 	.dw	Sstm8s_uart2$UART2_Init$28-Sstm8s_uart2$UART2_Init$27
      0014DF 03                    1774 	.db	3
      0014E0 04                    1775 	.sleb128	4
      0014E1 01                    1776 	.db	1
      0014E2 09                    1777 	.db	9
      0014E3 00 49                 1778 	.dw	Sstm8s_uart2$UART2_Init$29-Sstm8s_uart2$UART2_Init$28
      0014E5 03                    1779 	.db	3
      0014E6 02                    1780 	.sleb128	2
      0014E7 01                    1781 	.db	1
      0014E8 09                    1782 	.db	9
      0014E9 00 18                 1783 	.dw	Sstm8s_uart2$UART2_Init$30-Sstm8s_uart2$UART2_Init$29
      0014EB 03                    1784 	.db	3
      0014EC 02                    1785 	.sleb128	2
      0014ED 01                    1786 	.db	1
      0014EE 09                    1787 	.db	9
      0014EF 00 06                 1788 	.dw	Sstm8s_uart2$UART2_Init$31-Sstm8s_uart2$UART2_Init$30
      0014F1 03                    1789 	.db	3
      0014F2 02                    1790 	.sleb128	2
      0014F3 01                    1791 	.db	1
      0014F4 09                    1792 	.db	9
      0014F5 00 06                 1793 	.dw	Sstm8s_uart2$UART2_Init$32-Sstm8s_uart2$UART2_Init$31
      0014F7 03                    1794 	.db	3
      0014F8 03                    1795 	.sleb128	3
      0014F9 01                    1796 	.db	1
      0014FA 09                    1797 	.db	9
      0014FB 00 07                 1798 	.dw	Sstm8s_uart2$UART2_Init$33-Sstm8s_uart2$UART2_Init$32
      0014FD 03                    1799 	.db	3
      0014FE 02                    1800 	.sleb128	2
      0014FF 01                    1801 	.db	1
      001500 09                    1802 	.db	9
      001501 00 07                 1803 	.dw	Sstm8s_uart2$UART2_Init$34-Sstm8s_uart2$UART2_Init$33
      001503 03                    1804 	.db	3
      001504 02                    1805 	.sleb128	2
      001505 01                    1806 	.db	1
      001506 09                    1807 	.db	9
      001507 00 10                 1808 	.dw	Sstm8s_uart2$UART2_Init$35-Sstm8s_uart2$UART2_Init$34
      001509 03                    1809 	.db	3
      00150A 03                    1810 	.sleb128	3
      00150B 01                    1811 	.db	1
      00150C 09                    1812 	.db	9
      00150D 00 06                 1813 	.dw	Sstm8s_uart2$UART2_Init$36-Sstm8s_uart2$UART2_Init$35
      00150F 03                    1814 	.db	3
      001510 03                    1815 	.sleb128	3
      001511 01                    1816 	.db	1
      001512 09                    1817 	.db	9
      001513 00 09                 1818 	.dw	Sstm8s_uart2$UART2_Init$37-Sstm8s_uart2$UART2_Init$36
      001515 03                    1819 	.db	3
      001516 05                    1820 	.sleb128	5
      001517 01                    1821 	.db	1
      001518 09                    1822 	.db	9
      001519 00 07                 1823 	.dw	Sstm8s_uart2$UART2_Init$38-Sstm8s_uart2$UART2_Init$37
      00151B 03                    1824 	.db	3
      00151C 02                    1825 	.sleb128	2
      00151D 01                    1826 	.db	1
      00151E 09                    1827 	.db	9
      00151F 00 06                 1828 	.dw	Sstm8s_uart2$UART2_Init$39-Sstm8s_uart2$UART2_Init$38
      001521 03                    1829 	.db	3
      001522 03                    1830 	.sleb128	3
      001523 01                    1831 	.db	1
      001524 09                    1832 	.db	9
      001525 00 09                 1833 	.dw	Sstm8s_uart2$UART2_Init$40-Sstm8s_uart2$UART2_Init$39
      001527 03                    1834 	.db	3
      001528 05                    1835 	.sleb128	5
      001529 01                    1836 	.db	1
      00152A 09                    1837 	.db	9
      00152B 00 07                 1838 	.dw	Sstm8s_uart2$UART2_Init$41-Sstm8s_uart2$UART2_Init$40
      00152D 03                    1839 	.db	3
      00152E 04                    1840 	.sleb128	4
      00152F 01                    1841 	.db	1
      001530 09                    1842 	.db	9
      001531 00 04                 1843 	.dw	Sstm8s_uart2$UART2_Init$42-Sstm8s_uart2$UART2_Init$41
      001533 03                    1844 	.db	3
      001534 03                    1845 	.sleb128	3
      001535 01                    1846 	.db	1
      001536 09                    1847 	.db	9
      001537 00 09                 1848 	.dw	Sstm8s_uart2$UART2_Init$43-Sstm8s_uart2$UART2_Init$42
      001539 03                    1849 	.db	3
      00153A 04                    1850 	.sleb128	4
      00153B 01                    1851 	.db	1
      00153C 09                    1852 	.db	9
      00153D 00 10                 1853 	.dw	Sstm8s_uart2$UART2_Init$44-Sstm8s_uart2$UART2_Init$43
      00153F 03                    1854 	.db	3
      001540 02                    1855 	.sleb128	2
      001541 01                    1856 	.db	1
      001542 09                    1857 	.db	9
      001543 00 09                 1858 	.dw	7+Sstm8s_uart2$UART2_Init$45-Sstm8s_uart2$UART2_Init$44
      001545 00                    1859 	.db	0
      001546 01                    1860 	.uleb128	1
      001547 01                    1861 	.db	1
      001548 00                    1862 	.db	0
      001549 05                    1863 	.uleb128	5
      00154A 02                    1864 	.db	2
      00154B 00 00 8E 1E           1865 	.dw	0,(Sstm8s_uart2$UART2_Cmd$47)
      00154F 03                    1866 	.db	3
      001550 B4 01                 1867 	.sleb128	180
      001552 01                    1868 	.db	1
      001553 09                    1869 	.db	9
      001554 00 0C                 1870 	.dw	Sstm8s_uart2$UART2_Cmd$49-Sstm8s_uart2$UART2_Cmd$47
      001556 03                    1871 	.db	3
      001557 02                    1872 	.sleb128	2
      001558 01                    1873 	.db	1
      001559 09                    1874 	.db	9
      00155A 00 04                 1875 	.dw	Sstm8s_uart2$UART2_Cmd$50-Sstm8s_uart2$UART2_Cmd$49
      00155C 03                    1876 	.db	3
      00155D 03                    1877 	.sleb128	3
      00155E 01                    1878 	.db	1
      00155F 09                    1879 	.db	9
      001560 00 09                 1880 	.dw	Sstm8s_uart2$UART2_Cmd$51-Sstm8s_uart2$UART2_Cmd$50
      001562 03                    1881 	.db	3
      001563 05                    1882 	.sleb128	5
      001564 01                    1883 	.db	1
      001565 09                    1884 	.db	9
      001566 00 07                 1885 	.dw	Sstm8s_uart2$UART2_Cmd$52-Sstm8s_uart2$UART2_Cmd$51
      001568 03                    1886 	.db	3
      001569 02                    1887 	.sleb128	2
      00156A 01                    1888 	.db	1
      00156B 09                    1889 	.db	9
      00156C 00 07                 1890 	.dw	7+Sstm8s_uart2$UART2_Cmd$53-Sstm8s_uart2$UART2_Cmd$52
      00156E 00                    1891 	.db	0
      00156F 01                    1892 	.uleb128	1
      001570 01                    1893 	.db	1
      001571 00                    1894 	.db	0
      001572 05                    1895 	.uleb128	5
      001573 02                    1896 	.db	2
      001574 00 00 8E 45           1897 	.dw	0,(Sstm8s_uart2$UART2_ITConfig$55)
      001578 03                    1898 	.db	3
      001579 D1 01                 1899 	.sleb128	209
      00157B 01                    1900 	.db	1
      00157C 09                    1901 	.db	9
      00157D 00 0E                 1902 	.dw	Sstm8s_uart2$UART2_ITConfig$57-Sstm8s_uart2$UART2_ITConfig$55
      00157F 03                    1903 	.db	3
      001580 09                    1904 	.sleb128	9
      001581 01                    1905 	.db	1
      001582 09                    1906 	.db	9
      001583 00 04                 1907 	.dw	Sstm8s_uart2$UART2_ITConfig$58-Sstm8s_uart2$UART2_ITConfig$57
      001585 03                    1908 	.db	3
      001586 03                    1909 	.sleb128	3
      001587 01                    1910 	.db	1
      001588 09                    1911 	.db	9
      001589 00 14                 1912 	.dw	Sstm8s_uart2$UART2_ITConfig$59-Sstm8s_uart2$UART2_ITConfig$58
      00158B 03                    1913 	.db	3
      00158C 02                    1914 	.sleb128	2
      00158D 01                    1915 	.db	1
      00158E 09                    1916 	.db	9
      00158F 00 04                 1917 	.dw	Sstm8s_uart2$UART2_ITConfig$60-Sstm8s_uart2$UART2_ITConfig$59
      001591 03                    1918 	.db	3
      001592 03                    1919 	.sleb128	3
      001593 01                    1920 	.db	1
      001594 09                    1921 	.db	9
      001595 00 05                 1922 	.dw	Sstm8s_uart2$UART2_ITConfig$61-Sstm8s_uart2$UART2_ITConfig$60
      001597 03                    1923 	.db	3
      001598 02                    1924 	.sleb128	2
      001599 01                    1925 	.db	1
      00159A 09                    1926 	.db	9
      00159B 00 0D                 1927 	.dw	Sstm8s_uart2$UART2_ITConfig$62-Sstm8s_uart2$UART2_ITConfig$61
      00159D 03                    1928 	.db	3
      00159E 02                    1929 	.sleb128	2
      00159F 01                    1930 	.db	1
      0015A0 09                    1931 	.db	9
      0015A1 00 05                 1932 	.dw	Sstm8s_uart2$UART2_ITConfig$63-Sstm8s_uart2$UART2_ITConfig$62
      0015A3 03                    1933 	.db	3
      0015A4 02                    1934 	.sleb128	2
      0015A5 01                    1935 	.db	1
      0015A6 09                    1936 	.db	9
      0015A7 00 0D                 1937 	.dw	Sstm8s_uart2$UART2_ITConfig$64-Sstm8s_uart2$UART2_ITConfig$63
      0015A9 03                    1938 	.db	3
      0015AA 02                    1939 	.sleb128	2
      0015AB 01                    1940 	.db	1
      0015AC 09                    1941 	.db	9
      0015AD 00 05                 1942 	.dw	Sstm8s_uart2$UART2_ITConfig$65-Sstm8s_uart2$UART2_ITConfig$64
      0015AF 03                    1943 	.db	3
      0015B0 02                    1944 	.sleb128	2
      0015B1 01                    1945 	.db	1
      0015B2 09                    1946 	.db	9
      0015B3 00 0D                 1947 	.dw	Sstm8s_uart2$UART2_ITConfig$66-Sstm8s_uart2$UART2_ITConfig$65
      0015B5 03                    1948 	.db	3
      0015B6 04                    1949 	.sleb128	4
      0015B7 01                    1950 	.db	1
      0015B8 09                    1951 	.db	9
      0015B9 00 0C                 1952 	.dw	Sstm8s_uart2$UART2_ITConfig$67-Sstm8s_uart2$UART2_ITConfig$66
      0015BB 03                    1953 	.db	3
      0015BC 06                    1954 	.sleb128	6
      0015BD 01                    1955 	.db	1
      0015BE 09                    1956 	.db	9
      0015BF 00 05                 1957 	.dw	Sstm8s_uart2$UART2_ITConfig$68-Sstm8s_uart2$UART2_ITConfig$67
      0015C1 03                    1958 	.db	3
      0015C2 02                    1959 	.sleb128	2
      0015C3 01                    1960 	.db	1
      0015C4 09                    1961 	.db	9
      0015C5 00 11                 1962 	.dw	Sstm8s_uart2$UART2_ITConfig$69-Sstm8s_uart2$UART2_ITConfig$68
      0015C7 03                    1963 	.db	3
      0015C8 02                    1964 	.sleb128	2
      0015C9 01                    1965 	.db	1
      0015CA 09                    1966 	.db	9
      0015CB 00 05                 1967 	.dw	Sstm8s_uart2$UART2_ITConfig$70-Sstm8s_uart2$UART2_ITConfig$69
      0015CD 03                    1968 	.db	3
      0015CE 02                    1969 	.sleb128	2
      0015CF 01                    1970 	.db	1
      0015D0 09                    1971 	.db	9
      0015D1 00 11                 1972 	.dw	Sstm8s_uart2$UART2_ITConfig$71-Sstm8s_uart2$UART2_ITConfig$70
      0015D3 03                    1973 	.db	3
      0015D4 02                    1974 	.sleb128	2
      0015D5 01                    1975 	.db	1
      0015D6 09                    1976 	.db	9
      0015D7 00 05                 1977 	.dw	Sstm8s_uart2$UART2_ITConfig$72-Sstm8s_uart2$UART2_ITConfig$71
      0015D9 03                    1978 	.db	3
      0015DA 02                    1979 	.sleb128	2
      0015DB 01                    1980 	.db	1
      0015DC 09                    1981 	.db	9
      0015DD 00 11                 1982 	.dw	Sstm8s_uart2$UART2_ITConfig$73-Sstm8s_uart2$UART2_ITConfig$72
      0015DF 03                    1983 	.db	3
      0015E0 04                    1984 	.sleb128	4
      0015E1 01                    1985 	.db	1
      0015E2 09                    1986 	.db	9
      0015E3 00 0F                 1987 	.dw	Sstm8s_uart2$UART2_ITConfig$74-Sstm8s_uart2$UART2_ITConfig$73
      0015E5 03                    1988 	.db	3
      0015E6 03                    1989 	.sleb128	3
      0015E7 01                    1990 	.db	1
      0015E8 09                    1991 	.db	9
      0015E9 00 09                 1992 	.dw	7+Sstm8s_uart2$UART2_ITConfig$75-Sstm8s_uart2$UART2_ITConfig$74
      0015EB 00                    1993 	.db	0
      0015EC 01                    1994 	.uleb128	1
      0015ED 01                    1995 	.db	1
      0015EE 00                    1996 	.db	0
      0015EF 05                    1997 	.uleb128	5
      0015F0 02                    1998 	.db	2
      0015F1 00 00 8F 0B           1999 	.dw	0,(Sstm8s_uart2$UART2_IrDAConfig$77)
      0015F5 03                    2000 	.db	3
      0015F6 8F 02                 2001 	.sleb128	271
      0015F8 01                    2002 	.db	1
      0015F9 09                    2003 	.db	9
      0015FA 00 0C                 2004 	.dw	Sstm8s_uart2$UART2_IrDAConfig$79-Sstm8s_uart2$UART2_IrDAConfig$77
      0015FC 03                    2005 	.db	3
      0015FD 04                    2006 	.sleb128	4
      0015FE 01                    2007 	.db	1
      0015FF 09                    2008 	.db	9
      001600 00 04                 2009 	.dw	Sstm8s_uart2$UART2_IrDAConfig$80-Sstm8s_uart2$UART2_IrDAConfig$79
      001602 03                    2010 	.db	3
      001603 02                    2011 	.sleb128	2
      001604 01                    2012 	.db	1
      001605 09                    2013 	.db	9
      001606 00 09                 2014 	.dw	Sstm8s_uart2$UART2_IrDAConfig$81-Sstm8s_uart2$UART2_IrDAConfig$80
      001608 03                    2015 	.db	3
      001609 04                    2016 	.sleb128	4
      00160A 01                    2017 	.db	1
      00160B 09                    2018 	.db	9
      00160C 00 07                 2019 	.dw	Sstm8s_uart2$UART2_IrDAConfig$82-Sstm8s_uart2$UART2_IrDAConfig$81
      00160E 03                    2020 	.db	3
      00160F 02                    2021 	.sleb128	2
      001610 01                    2022 	.db	1
      001611 09                    2023 	.db	9
      001612 00 07                 2024 	.dw	7+Sstm8s_uart2$UART2_IrDAConfig$83-Sstm8s_uart2$UART2_IrDAConfig$82
      001614 00                    2025 	.db	0
      001615 01                    2026 	.uleb128	1
      001616 01                    2027 	.db	1
      001617 00                    2028 	.db	0
      001618 05                    2029 	.uleb128	5
      001619 02                    2030 	.db	2
      00161A 00 00 8F 32           2031 	.dw	0,(Sstm8s_uart2$UART2_IrDACmd$85)
      00161E 03                    2032 	.db	3
      00161F A3 02                 2033 	.sleb128	291
      001621 01                    2034 	.db	1
      001622 09                    2035 	.db	9
      001623 00 0C                 2036 	.dw	Sstm8s_uart2$UART2_IrDACmd$87-Sstm8s_uart2$UART2_IrDACmd$85
      001625 03                    2037 	.db	3
      001626 05                    2038 	.sleb128	5
      001627 01                    2039 	.db	1
      001628 09                    2040 	.db	9
      001629 00 04                 2041 	.dw	Sstm8s_uart2$UART2_IrDACmd$88-Sstm8s_uart2$UART2_IrDACmd$87
      00162B 03                    2042 	.db	3
      00162C 03                    2043 	.sleb128	3
      00162D 01                    2044 	.db	1
      00162E 09                    2045 	.db	9
      00162F 00 09                 2046 	.dw	Sstm8s_uart2$UART2_IrDACmd$89-Sstm8s_uart2$UART2_IrDACmd$88
      001631 03                    2047 	.db	3
      001632 05                    2048 	.sleb128	5
      001633 01                    2049 	.db	1
      001634 09                    2050 	.db	9
      001635 00 07                 2051 	.dw	Sstm8s_uart2$UART2_IrDACmd$90-Sstm8s_uart2$UART2_IrDACmd$89
      001637 03                    2052 	.db	3
      001638 02                    2053 	.sleb128	2
      001639 01                    2054 	.db	1
      00163A 09                    2055 	.db	9
      00163B 00 07                 2056 	.dw	7+Sstm8s_uart2$UART2_IrDACmd$91-Sstm8s_uart2$UART2_IrDACmd$90
      00163D 00                    2057 	.db	0
      00163E 01                    2058 	.uleb128	1
      00163F 01                    2059 	.db	1
      001640 00                    2060 	.db	0
      001641 05                    2061 	.uleb128	5
      001642 02                    2062 	.db	2
      001643 00 00 8F 59           2063 	.dw	0,(Sstm8s_uart2$UART2_LINBreakDetectionConfig$93)
      001647 03                    2064 	.db	3
      001648 BB 02                 2065 	.sleb128	315
      00164A 01                    2066 	.db	1
      00164B 09                    2067 	.db	9
      00164C 00 0C                 2068 	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$95-Sstm8s_uart2$UART2_LINBreakDetectionConfig$93
      00164E 03                    2069 	.db	3
      00164F 05                    2070 	.sleb128	5
      001650 01                    2071 	.db	1
      001651 09                    2072 	.db	9
      001652 00 04                 2073 	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$96-Sstm8s_uart2$UART2_LINBreakDetectionConfig$95
      001654 03                    2074 	.db	3
      001655 02                    2075 	.sleb128	2
      001656 01                    2076 	.db	1
      001657 09                    2077 	.db	9
      001658 00 09                 2078 	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$97-Sstm8s_uart2$UART2_LINBreakDetectionConfig$96
      00165A 03                    2079 	.db	3
      00165B 04                    2080 	.sleb128	4
      00165C 01                    2081 	.db	1
      00165D 09                    2082 	.db	9
      00165E 00 07                 2083 	.dw	Sstm8s_uart2$UART2_LINBreakDetectionConfig$98-Sstm8s_uart2$UART2_LINBreakDetectionConfig$97
      001660 03                    2084 	.db	3
      001661 02                    2085 	.sleb128	2
      001662 01                    2086 	.db	1
      001663 09                    2087 	.db	9
      001664 00 07                 2088 	.dw	7+Sstm8s_uart2$UART2_LINBreakDetectionConfig$99-Sstm8s_uart2$UART2_LINBreakDetectionConfig$98
      001666 00                    2089 	.db	0
      001667 01                    2090 	.uleb128	1
      001668 01                    2091 	.db	1
      001669 00                    2092 	.db	0
      00166A 05                    2093 	.uleb128	5
      00166B 02                    2094 	.db	2
      00166C 00 00 8F 80           2095 	.dw	0,(Sstm8s_uart2$UART2_LINConfig$101)
      001670 03                    2096 	.db	3
      001671 D4 02                 2097 	.sleb128	340
      001673 01                    2098 	.db	1
      001674 09                    2099 	.db	9
      001675 00 0C                 2100 	.dw	Sstm8s_uart2$UART2_LINConfig$103-Sstm8s_uart2$UART2_LINConfig$101
      001677 03                    2101 	.db	3
      001678 09                    2102 	.sleb128	9
      001679 01                    2103 	.db	1
      00167A 09                    2104 	.db	9
      00167B 00 04                 2105 	.dw	Sstm8s_uart2$UART2_LINConfig$104-Sstm8s_uart2$UART2_LINConfig$103
      00167D 03                    2106 	.db	3
      00167E 02                    2107 	.sleb128	2
      00167F 01                    2108 	.db	1
      001680 09                    2109 	.db	9
      001681 00 09                 2110 	.dw	Sstm8s_uart2$UART2_LINConfig$105-Sstm8s_uart2$UART2_LINConfig$104
      001683 03                    2111 	.db	3
      001684 04                    2112 	.sleb128	4
      001685 01                    2113 	.db	1
      001686 09                    2114 	.db	9
      001687 00 07                 2115 	.dw	Sstm8s_uart2$UART2_LINConfig$106-Sstm8s_uart2$UART2_LINConfig$105
      001689 03                    2116 	.db	3
      00168A 03                    2117 	.sleb128	3
      00168B 01                    2118 	.db	1
      00168C 09                    2119 	.db	9
      00168D 00 04                 2120 	.dw	Sstm8s_uart2$UART2_LINConfig$107-Sstm8s_uart2$UART2_LINConfig$106
      00168F 03                    2121 	.db	3
      001690 02                    2122 	.sleb128	2
      001691 01                    2123 	.db	1
      001692 09                    2124 	.db	9
      001693 00 09                 2125 	.dw	Sstm8s_uart2$UART2_LINConfig$108-Sstm8s_uart2$UART2_LINConfig$107
      001695 03                    2126 	.db	3
      001696 04                    2127 	.sleb128	4
      001697 01                    2128 	.db	1
      001698 09                    2129 	.db	9
      001699 00 07                 2130 	.dw	Sstm8s_uart2$UART2_LINConfig$109-Sstm8s_uart2$UART2_LINConfig$108
      00169B 03                    2131 	.db	3
      00169C 03                    2132 	.sleb128	3
      00169D 01                    2133 	.db	1
      00169E 09                    2134 	.db	9
      00169F 00 04                 2135 	.dw	Sstm8s_uart2$UART2_LINConfig$110-Sstm8s_uart2$UART2_LINConfig$109
      0016A1 03                    2136 	.db	3
      0016A2 02                    2137 	.sleb128	2
      0016A3 01                    2138 	.db	1
      0016A4 09                    2139 	.db	9
      0016A5 00 06                 2140 	.dw	Sstm8s_uart2$UART2_LINConfig$111-Sstm8s_uart2$UART2_LINConfig$110
      0016A7 03                    2141 	.db	3
      0016A8 04                    2142 	.sleb128	4
      0016A9 01                    2143 	.db	1
      0016AA 09                    2144 	.db	9
      0016AB 00 04                 2145 	.dw	Sstm8s_uart2$UART2_LINConfig$112-Sstm8s_uart2$UART2_LINConfig$111
      0016AD 03                    2146 	.db	3
      0016AE 02                    2147 	.sleb128	2
      0016AF 01                    2148 	.db	1
      0016B0 09                    2149 	.db	9
      0016B1 00 07                 2150 	.dw	7+Sstm8s_uart2$UART2_LINConfig$113-Sstm8s_uart2$UART2_LINConfig$112
      0016B3 00                    2151 	.db	0
      0016B4 01                    2152 	.uleb128	1
      0016B5 01                    2153 	.db	1
      0016B6 00                    2154 	.db	0
      0016B7 05                    2155 	.uleb128	5
      0016B8 02                    2156 	.db	2
      0016B9 00 00 8F C9           2157 	.dw	0,(Sstm8s_uart2$UART2_LINCmd$115)
      0016BD 03                    2158 	.db	3
      0016BE FF 02                 2159 	.sleb128	383
      0016C0 01                    2160 	.db	1
      0016C1 09                    2161 	.db	9
      0016C2 00 0C                 2162 	.dw	Sstm8s_uart2$UART2_LINCmd$117-Sstm8s_uart2$UART2_LINCmd$115
      0016C4 03                    2163 	.db	3
      0016C5 04                    2164 	.sleb128	4
      0016C6 01                    2165 	.db	1
      0016C7 09                    2166 	.db	9
      0016C8 00 04                 2167 	.dw	Sstm8s_uart2$UART2_LINCmd$118-Sstm8s_uart2$UART2_LINCmd$117
      0016CA 03                    2168 	.db	3
      0016CB 03                    2169 	.sleb128	3
      0016CC 01                    2170 	.db	1
      0016CD 09                    2171 	.db	9
      0016CE 00 09                 2172 	.dw	Sstm8s_uart2$UART2_LINCmd$119-Sstm8s_uart2$UART2_LINCmd$118
      0016D0 03                    2173 	.db	3
      0016D1 05                    2174 	.sleb128	5
      0016D2 01                    2175 	.db	1
      0016D3 09                    2176 	.db	9
      0016D4 00 07                 2177 	.dw	Sstm8s_uart2$UART2_LINCmd$120-Sstm8s_uart2$UART2_LINCmd$119
      0016D6 03                    2178 	.db	3
      0016D7 02                    2179 	.sleb128	2
      0016D8 01                    2180 	.db	1
      0016D9 09                    2181 	.db	9
      0016DA 00 07                 2182 	.dw	7+Sstm8s_uart2$UART2_LINCmd$121-Sstm8s_uart2$UART2_LINCmd$120
      0016DC 00                    2183 	.db	0
      0016DD 01                    2184 	.uleb128	1
      0016DE 01                    2185 	.db	1
      0016DF 00                    2186 	.db	0
      0016E0 05                    2187 	.uleb128	5
      0016E1 02                    2188 	.db	2
      0016E2 00 00 8F F0           2189 	.dw	0,(Sstm8s_uart2$UART2_SmartCardCmd$123)
      0016E6 03                    2190 	.db	3
      0016E7 95 03                 2191 	.sleb128	405
      0016E9 01                    2192 	.db	1
      0016EA 09                    2193 	.db	9
      0016EB 00 0C                 2194 	.dw	Sstm8s_uart2$UART2_SmartCardCmd$125-Sstm8s_uart2$UART2_SmartCardCmd$123
      0016ED 03                    2195 	.db	3
      0016EE 05                    2196 	.sleb128	5
      0016EF 01                    2197 	.db	1
      0016F0 09                    2198 	.db	9
      0016F1 00 04                 2199 	.dw	Sstm8s_uart2$UART2_SmartCardCmd$126-Sstm8s_uart2$UART2_SmartCardCmd$125
      0016F3 03                    2200 	.db	3
      0016F4 03                    2201 	.sleb128	3
      0016F5 01                    2202 	.db	1
      0016F6 09                    2203 	.db	9
      0016F7 00 09                 2204 	.dw	Sstm8s_uart2$UART2_SmartCardCmd$127-Sstm8s_uart2$UART2_SmartCardCmd$126
      0016F9 03                    2205 	.db	3
      0016FA 05                    2206 	.sleb128	5
      0016FB 01                    2207 	.db	1
      0016FC 09                    2208 	.db	9
      0016FD 00 07                 2209 	.dw	Sstm8s_uart2$UART2_SmartCardCmd$128-Sstm8s_uart2$UART2_SmartCardCmd$127
      0016FF 03                    2210 	.db	3
      001700 02                    2211 	.sleb128	2
      001701 01                    2212 	.db	1
      001702 09                    2213 	.db	9
      001703 00 07                 2214 	.dw	7+Sstm8s_uart2$UART2_SmartCardCmd$129-Sstm8s_uart2$UART2_SmartCardCmd$128
      001705 00                    2215 	.db	0
      001706 01                    2216 	.uleb128	1
      001707 01                    2217 	.db	1
      001708 00                    2218 	.db	0
      001709 05                    2219 	.uleb128	5
      00170A 02                    2220 	.db	2
      00170B 00 00 90 17           2221 	.dw	0,(Sstm8s_uart2$UART2_SmartCardNACKCmd$131)
      00170F 03                    2222 	.db	3
      001710 AC 03                 2223 	.sleb128	428
      001712 01                    2224 	.db	1
      001713 09                    2225 	.db	9
      001714 00 0C                 2226 	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$133-Sstm8s_uart2$UART2_SmartCardNACKCmd$131
      001716 03                    2227 	.db	3
      001717 05                    2228 	.sleb128	5
      001718 01                    2229 	.db	1
      001719 09                    2230 	.db	9
      00171A 00 04                 2231 	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$134-Sstm8s_uart2$UART2_SmartCardNACKCmd$133
      00171C 03                    2232 	.db	3
      00171D 03                    2233 	.sleb128	3
      00171E 01                    2234 	.db	1
      00171F 09                    2235 	.db	9
      001720 00 09                 2236 	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$135-Sstm8s_uart2$UART2_SmartCardNACKCmd$134
      001722 03                    2237 	.db	3
      001723 05                    2238 	.sleb128	5
      001724 01                    2239 	.db	1
      001725 09                    2240 	.db	9
      001726 00 07                 2241 	.dw	Sstm8s_uart2$UART2_SmartCardNACKCmd$136-Sstm8s_uart2$UART2_SmartCardNACKCmd$135
      001728 03                    2242 	.db	3
      001729 02                    2243 	.sleb128	2
      00172A 01                    2244 	.db	1
      00172B 09                    2245 	.db	9
      00172C 00 07                 2246 	.dw	7+Sstm8s_uart2$UART2_SmartCardNACKCmd$137-Sstm8s_uart2$UART2_SmartCardNACKCmd$136
      00172E 00                    2247 	.db	0
      00172F 01                    2248 	.uleb128	1
      001730 01                    2249 	.db	1
      001731 00                    2250 	.db	0
      001732 05                    2251 	.uleb128	5
      001733 02                    2252 	.db	2
      001734 00 00 90 3E           2253 	.dw	0,(Sstm8s_uart2$UART2_WakeUpConfig$139)
      001738 03                    2254 	.db	3
      001739 C3 03                 2255 	.sleb128	451
      00173B 01                    2256 	.db	1
      00173C 09                    2257 	.db	9
      00173D 00 0C                 2258 	.dw	Sstm8s_uart2$UART2_WakeUpConfig$141-Sstm8s_uart2$UART2_WakeUpConfig$139
      00173F 03                    2259 	.db	3
      001740 04                    2260 	.sleb128	4
      001741 01                    2261 	.db	1
      001742 09                    2262 	.db	9
      001743 00 07                 2263 	.dw	Sstm8s_uart2$UART2_WakeUpConfig$142-Sstm8s_uart2$UART2_WakeUpConfig$141
      001745 03                    2264 	.db	3
      001746 01                    2265 	.sleb128	1
      001747 01                    2266 	.db	1
      001748 09                    2267 	.db	9
      001749 00 0A                 2268 	.dw	Sstm8s_uart2$UART2_WakeUpConfig$143-Sstm8s_uart2$UART2_WakeUpConfig$142
      00174B 03                    2269 	.db	3
      00174C 01                    2270 	.sleb128	1
      00174D 01                    2271 	.db	1
      00174E 09                    2272 	.db	9
      00174F 00 07                 2273 	.dw	7+Sstm8s_uart2$UART2_WakeUpConfig$144-Sstm8s_uart2$UART2_WakeUpConfig$143
      001751 00                    2274 	.db	0
      001752 01                    2275 	.uleb128	1
      001753 01                    2276 	.db	1
      001754 00                    2277 	.db	0
      001755 05                    2278 	.uleb128	5
      001756 02                    2279 	.db	2
      001757 00 00 90 62           2280 	.dw	0,(Sstm8s_uart2$UART2_ReceiverWakeUpCmd$146)
      00175B 03                    2281 	.db	3
      00175C D1 03                 2282 	.sleb128	465
      00175E 01                    2283 	.db	1
      00175F 09                    2284 	.db	9
      001760 00 0C                 2285 	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$148-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$146
      001762 03                    2286 	.db	3
      001763 04                    2287 	.sleb128	4
      001764 01                    2288 	.db	1
      001765 09                    2289 	.db	9
      001766 00 04                 2290 	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$149-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$148
      001768 03                    2291 	.db	3
      001769 03                    2292 	.sleb128	3
      00176A 01                    2293 	.db	1
      00176B 09                    2294 	.db	9
      00176C 00 09                 2295 	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$150-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$149
      00176E 03                    2296 	.db	3
      00176F 05                    2297 	.sleb128	5
      001770 01                    2298 	.db	1
      001771 09                    2299 	.db	9
      001772 00 07                 2300 	.dw	Sstm8s_uart2$UART2_ReceiverWakeUpCmd$151-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$150
      001774 03                    2301 	.db	3
      001775 02                    2302 	.sleb128	2
      001776 01                    2303 	.db	1
      001777 09                    2304 	.db	9
      001778 00 07                 2305 	.dw	7+Sstm8s_uart2$UART2_ReceiverWakeUpCmd$152-Sstm8s_uart2$UART2_ReceiverWakeUpCmd$151
      00177A 00                    2306 	.db	0
      00177B 01                    2307 	.uleb128	1
      00177C 01                    2308 	.db	1
      00177D 00                    2309 	.db	0
      00177E 05                    2310 	.uleb128	5
      00177F 02                    2311 	.db	2
      001780 00 00 90 89           2312 	.dw	0,(Sstm8s_uart2$UART2_ReceiveData8$154)
      001784 03                    2313 	.db	3
      001785 E6 03                 2314 	.sleb128	486
      001787 01                    2315 	.db	1
      001788 09                    2316 	.db	9
      001789 00 0C                 2317 	.dw	Sstm8s_uart2$UART2_ReceiveData8$156-Sstm8s_uart2$UART2_ReceiveData8$154
      00178B 03                    2318 	.db	3
      00178C 02                    2319 	.sleb128	2
      00178D 01                    2320 	.db	1
      00178E 09                    2321 	.db	9
      00178F 00 04                 2322 	.dw	Sstm8s_uart2$UART2_ReceiveData8$157-Sstm8s_uart2$UART2_ReceiveData8$156
      001791 03                    2323 	.db	3
      001792 01                    2324 	.sleb128	1
      001793 01                    2325 	.db	1
      001794 09                    2326 	.db	9
      001795 00 07                 2327 	.dw	7+Sstm8s_uart2$UART2_ReceiveData8$158-Sstm8s_uart2$UART2_ReceiveData8$157
      001797 00                    2328 	.db	0
      001798 01                    2329 	.uleb128	1
      001799 01                    2330 	.db	1
      00179A 00                    2331 	.db	0
      00179B 05                    2332 	.uleb128	5
      00179C 02                    2333 	.db	2
      00179D 00 00 90 A0           2334 	.dw	0,(Sstm8s_uart2$UART2_ReceiveData9$160)
      0017A1 03                    2335 	.db	3
      0017A2 F0 03                 2336 	.sleb128	496
      0017A4 01                    2337 	.db	1
      0017A5 09                    2338 	.db	9
      0017A6 00 0E                 2339 	.dw	Sstm8s_uart2$UART2_ReceiveData9$162-Sstm8s_uart2$UART2_ReceiveData9$160
      0017A8 03                    2340 	.db	3
      0017A9 04                    2341 	.sleb128	4
      0017AA 01                    2342 	.db	1
      0017AB 09                    2343 	.db	9
      0017AC 00 0E                 2344 	.dw	Sstm8s_uart2$UART2_ReceiveData9$163-Sstm8s_uart2$UART2_ReceiveData9$162
      0017AE 03                    2345 	.db	3
      0017AF 02                    2346 	.sleb128	2
      0017B0 01                    2347 	.db	1
      0017B1 09                    2348 	.db	9
      0017B2 00 0F                 2349 	.dw	Sstm8s_uart2$UART2_ReceiveData9$164-Sstm8s_uart2$UART2_ReceiveData9$163
      0017B4 03                    2350 	.db	3
      0017B5 01                    2351 	.sleb128	1
      0017B6 01                    2352 	.db	1
      0017B7 09                    2353 	.db	9
      0017B8 00 09                 2354 	.dw	7+Sstm8s_uart2$UART2_ReceiveData9$165-Sstm8s_uart2$UART2_ReceiveData9$164
      0017BA 00                    2355 	.db	0
      0017BB 01                    2356 	.uleb128	1
      0017BC 01                    2357 	.db	1
      0017BD 00                    2358 	.db	0
      0017BE 05                    2359 	.uleb128	5
      0017BF 02                    2360 	.db	2
      0017C0 00 00 90 D4           2361 	.dw	0,(Sstm8s_uart2$UART2_SendData8$167)
      0017C4 03                    2362 	.db	3
      0017C5 FE 03                 2363 	.sleb128	510
      0017C7 01                    2364 	.db	1
      0017C8 09                    2365 	.db	9
      0017C9 00 0C                 2366 	.dw	Sstm8s_uart2$UART2_SendData8$169-Sstm8s_uart2$UART2_SendData8$167
      0017CB 03                    2367 	.db	3
      0017CC 03                    2368 	.sleb128	3
      0017CD 01                    2369 	.db	1
      0017CE 09                    2370 	.db	9
      0017CF 00 06                 2371 	.dw	Sstm8s_uart2$UART2_SendData8$170-Sstm8s_uart2$UART2_SendData8$169
      0017D1 03                    2372 	.db	3
      0017D2 01                    2373 	.sleb128	1
      0017D3 01                    2374 	.db	1
      0017D4 09                    2375 	.db	9
      0017D5 00 07                 2376 	.dw	7+Sstm8s_uart2$UART2_SendData8$171-Sstm8s_uart2$UART2_SendData8$170
      0017D7 00                    2377 	.db	0
      0017D8 01                    2378 	.uleb128	1
      0017D9 01                    2379 	.db	1
      0017DA 00                    2380 	.db	0
      0017DB 05                    2381 	.uleb128	5
      0017DC 02                    2382 	.db	2
      0017DD 00 00 90 ED           2383 	.dw	0,(Sstm8s_uart2$UART2_SendData9$173)
      0017E1 03                    2384 	.db	3
      0017E2 89 04                 2385 	.sleb128	521
      0017E4 01                    2386 	.db	1
      0017E5 09                    2387 	.db	9
      0017E6 00 0D                 2388 	.dw	Sstm8s_uart2$UART2_SendData9$175-Sstm8s_uart2$UART2_SendData9$173
      0017E8 03                    2389 	.db	3
      0017E9 03                    2390 	.sleb128	3
      0017EA 01                    2391 	.db	1
      0017EB 09                    2392 	.db	9
      0017EC 00 07                 2393 	.dw	Sstm8s_uart2$UART2_SendData9$176-Sstm8s_uart2$UART2_SendData9$175
      0017EE 03                    2394 	.db	3
      0017EF 03                    2395 	.sleb128	3
      0017F0 01                    2396 	.db	1
      0017F1 09                    2397 	.db	9
      0017F2 00 13                 2398 	.dw	Sstm8s_uart2$UART2_SendData9$177-Sstm8s_uart2$UART2_SendData9$176
      0017F4 03                    2399 	.db	3
      0017F5 03                    2400 	.sleb128	3
      0017F6 01                    2401 	.db	1
      0017F7 09                    2402 	.db	9
      0017F8 00 06                 2403 	.dw	Sstm8s_uart2$UART2_SendData9$178-Sstm8s_uart2$UART2_SendData9$177
      0017FA 03                    2404 	.db	3
      0017FB 01                    2405 	.sleb128	1
      0017FC 01                    2406 	.db	1
      0017FD 09                    2407 	.db	9
      0017FE 00 08                 2408 	.dw	7+Sstm8s_uart2$UART2_SendData9$179-Sstm8s_uart2$UART2_SendData9$178
      001800 00                    2409 	.db	0
      001801 01                    2410 	.uleb128	1
      001802 01                    2411 	.db	1
      001803 00                    2412 	.db	0
      001804 05                    2413 	.uleb128	5
      001805 02                    2414 	.db	2
      001806 00 00 91 22           2415 	.dw	0,(Sstm8s_uart2$UART2_SendBreak$181)
      00180A 03                    2416 	.db	3
      00180B 9A 04                 2417 	.sleb128	538
      00180D 01                    2418 	.db	1
      00180E 09                    2419 	.db	9
      00180F 00 0C                 2420 	.dw	Sstm8s_uart2$UART2_SendBreak$183-Sstm8s_uart2$UART2_SendBreak$181
      001811 03                    2421 	.db	3
      001812 02                    2422 	.sleb128	2
      001813 01                    2423 	.db	1
      001814 09                    2424 	.db	9
      001815 00 04                 2425 	.dw	Sstm8s_uart2$UART2_SendBreak$184-Sstm8s_uart2$UART2_SendBreak$183
      001817 03                    2426 	.db	3
      001818 01                    2427 	.sleb128	1
      001819 01                    2428 	.db	1
      00181A 09                    2429 	.db	9
      00181B 00 07                 2430 	.dw	7+Sstm8s_uart2$UART2_SendBreak$185-Sstm8s_uart2$UART2_SendBreak$184
      00181D 00                    2431 	.db	0
      00181E 01                    2432 	.uleb128	1
      00181F 01                    2433 	.db	1
      001820 00                    2434 	.db	0
      001821 05                    2435 	.uleb128	5
      001822 02                    2436 	.db	2
      001823 00 00 91 39           2437 	.dw	0,(Sstm8s_uart2$UART2_SetAddress$187)
      001827 03                    2438 	.db	3
      001828 A4 04                 2439 	.sleb128	548
      00182A 01                    2440 	.db	1
      00182B 09                    2441 	.db	9
      00182C 00 0C                 2442 	.dw	Sstm8s_uart2$UART2_SetAddress$189-Sstm8s_uart2$UART2_SetAddress$187
      00182E 03                    2443 	.db	3
      00182F 06                    2444 	.sleb128	6
      001830 01                    2445 	.db	1
      001831 09                    2446 	.db	9
      001832 00 07                 2447 	.dw	Sstm8s_uart2$UART2_SetAddress$190-Sstm8s_uart2$UART2_SetAddress$189
      001834 03                    2448 	.db	3
      001835 02                    2449 	.sleb128	2
      001836 01                    2450 	.db	1
      001837 09                    2451 	.db	9
      001838 00 0A                 2452 	.dw	Sstm8s_uart2$UART2_SetAddress$191-Sstm8s_uart2$UART2_SetAddress$190
      00183A 03                    2453 	.db	3
      00183B 01                    2454 	.sleb128	1
      00183C 01                    2455 	.db	1
      00183D 09                    2456 	.db	9
      00183E 00 07                 2457 	.dw	7+Sstm8s_uart2$UART2_SetAddress$192-Sstm8s_uart2$UART2_SetAddress$191
      001840 00                    2458 	.db	0
      001841 01                    2459 	.uleb128	1
      001842 01                    2460 	.db	1
      001843 00                    2461 	.db	0
      001844 05                    2462 	.uleb128	5
      001845 02                    2463 	.db	2
      001846 00 00 91 5D           2464 	.dw	0,(Sstm8s_uart2$UART2_SetGuardTime$194)
      00184A 03                    2465 	.db	3
      00184B B5 04                 2466 	.sleb128	565
      00184D 01                    2467 	.db	1
      00184E 09                    2468 	.db	9
      00184F 00 0C                 2469 	.dw	Sstm8s_uart2$UART2_SetGuardTime$196-Sstm8s_uart2$UART2_SetGuardTime$194
      001851 03                    2470 	.db	3
      001852 03                    2471 	.sleb128	3
      001853 01                    2472 	.db	1
      001854 09                    2473 	.db	9
      001855 00 06                 2474 	.dw	Sstm8s_uart2$UART2_SetGuardTime$197-Sstm8s_uart2$UART2_SetGuardTime$196
      001857 03                    2475 	.db	3
      001858 01                    2476 	.sleb128	1
      001859 01                    2477 	.db	1
      00185A 09                    2478 	.db	9
      00185B 00 07                 2479 	.dw	7+Sstm8s_uart2$UART2_SetGuardTime$198-Sstm8s_uart2$UART2_SetGuardTime$197
      00185D 00                    2480 	.db	0
      00185E 01                    2481 	.uleb128	1
      00185F 01                    2482 	.db	1
      001860 00                    2483 	.db	0
      001861 05                    2484 	.uleb128	5
      001862 02                    2485 	.db	2
      001863 00 00 91 76           2486 	.dw	0,(Sstm8s_uart2$UART2_SetPrescaler$200)
      001867 03                    2487 	.db	3
      001868 D1 04                 2488 	.sleb128	593
      00186A 01                    2489 	.db	1
      00186B 09                    2490 	.db	9
      00186C 00 0C                 2491 	.dw	Sstm8s_uart2$UART2_SetPrescaler$202-Sstm8s_uart2$UART2_SetPrescaler$200
      00186E 03                    2492 	.db	3
      00186F 03                    2493 	.sleb128	3
      001870 01                    2494 	.db	1
      001871 09                    2495 	.db	9
      001872 00 06                 2496 	.dw	Sstm8s_uart2$UART2_SetPrescaler$203-Sstm8s_uart2$UART2_SetPrescaler$202
      001874 03                    2497 	.db	3
      001875 01                    2498 	.sleb128	1
      001876 01                    2499 	.db	1
      001877 09                    2500 	.db	9
      001878 00 07                 2501 	.dw	7+Sstm8s_uart2$UART2_SetPrescaler$204-Sstm8s_uart2$UART2_SetPrescaler$203
      00187A 00                    2502 	.db	0
      00187B 01                    2503 	.uleb128	1
      00187C 01                    2504 	.db	1
      00187D 00                    2505 	.db	0
      00187E 05                    2506 	.uleb128	5
      00187F 02                    2507 	.db	2
      001880 00 00 91 8F           2508 	.dw	0,(Sstm8s_uart2$UART2_GetFlagStatus$206)
      001884 03                    2509 	.db	3
      001885 DD 04                 2510 	.sleb128	605
      001887 01                    2511 	.db	1
      001888 09                    2512 	.db	9
      001889 00 0E                 2513 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$208-Sstm8s_uart2$UART2_GetFlagStatus$206
      00188B 03                    2514 	.db	3
      00188C 08                    2515 	.sleb128	8
      00188D 01                    2516 	.db	1
      00188E 09                    2517 	.db	9
      00188F 00 07                 2518 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$209-Sstm8s_uart2$UART2_GetFlagStatus$208
      001891 03                    2519 	.db	3
      001892 02                    2520 	.sleb128	2
      001893 01                    2521 	.db	1
      001894 09                    2522 	.db	9
      001895 00 0D                 2523 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$210-Sstm8s_uart2$UART2_GetFlagStatus$209
      001897 03                    2524 	.db	3
      001898 03                    2525 	.sleb128	3
      001899 01                    2526 	.db	1
      00189A 09                    2527 	.db	9
      00189B 00 05                 2528 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$211-Sstm8s_uart2$UART2_GetFlagStatus$210
      00189D 03                    2529 	.db	3
      00189E 05                    2530 	.sleb128	5
      00189F 01                    2531 	.db	1
      0018A0 09                    2532 	.db	9
      0018A1 00 04                 2533 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$212-Sstm8s_uart2$UART2_GetFlagStatus$211
      0018A3 03                    2534 	.db	3
      0018A4 03                    2535 	.sleb128	3
      0018A5 01                    2536 	.db	1
      0018A6 09                    2537 	.db	9
      0018A7 00 07                 2538 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$213-Sstm8s_uart2$UART2_GetFlagStatus$212
      0018A9 03                    2539 	.db	3
      0018AA 02                    2540 	.sleb128	2
      0018AB 01                    2541 	.db	1
      0018AC 09                    2542 	.db	9
      0018AD 00 0D                 2543 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$214-Sstm8s_uart2$UART2_GetFlagStatus$213
      0018AF 03                    2544 	.db	3
      0018B0 03                    2545 	.sleb128	3
      0018B1 01                    2546 	.db	1
      0018B2 09                    2547 	.db	9
      0018B3 00 04                 2548 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$215-Sstm8s_uart2$UART2_GetFlagStatus$214
      0018B5 03                    2549 	.db	3
      0018B6 05                    2550 	.sleb128	5
      0018B7 01                    2551 	.db	1
      0018B8 09                    2552 	.db	9
      0018B9 00 03                 2553 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$216-Sstm8s_uart2$UART2_GetFlagStatus$215
      0018BB 03                    2554 	.db	3
      0018BC 03                    2555 	.sleb128	3
      0018BD 01                    2556 	.db	1
      0018BE 09                    2557 	.db	9
      0018BF 00 0E                 2558 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$217-Sstm8s_uart2$UART2_GetFlagStatus$216
      0018C1 03                    2559 	.db	3
      0018C2 02                    2560 	.sleb128	2
      0018C3 01                    2561 	.db	1
      0018C4 09                    2562 	.db	9
      0018C5 00 0D                 2563 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$218-Sstm8s_uart2$UART2_GetFlagStatus$217
      0018C7 03                    2564 	.db	3
      0018C8 03                    2565 	.sleb128	3
      0018C9 01                    2566 	.db	1
      0018CA 09                    2567 	.db	9
      0018CB 00 04                 2568 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$219-Sstm8s_uart2$UART2_GetFlagStatus$218
      0018CD 03                    2569 	.db	3
      0018CE 05                    2570 	.sleb128	5
      0018CF 01                    2571 	.db	1
      0018D0 09                    2572 	.db	9
      0018D1 00 03                 2573 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$220-Sstm8s_uart2$UART2_GetFlagStatus$219
      0018D3 03                    2574 	.db	3
      0018D4 05                    2575 	.sleb128	5
      0018D5 01                    2576 	.db	1
      0018D6 09                    2577 	.db	9
      0018D7 00 0D                 2578 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$221-Sstm8s_uart2$UART2_GetFlagStatus$220
      0018D9 03                    2579 	.db	3
      0018DA 03                    2580 	.sleb128	3
      0018DB 01                    2581 	.db	1
      0018DC 09                    2582 	.db	9
      0018DD 00 04                 2583 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$222-Sstm8s_uart2$UART2_GetFlagStatus$221
      0018DF 03                    2584 	.db	3
      0018E0 05                    2585 	.sleb128	5
      0018E1 01                    2586 	.db	1
      0018E2 09                    2587 	.db	9
      0018E3 00 01                 2588 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$223-Sstm8s_uart2$UART2_GetFlagStatus$222
      0018E5 03                    2589 	.db	3
      0018E6 05                    2590 	.sleb128	5
      0018E7 01                    2591 	.db	1
      0018E8 09                    2592 	.db	9
      0018E9 00 00                 2593 	.dw	Sstm8s_uart2$UART2_GetFlagStatus$224-Sstm8s_uart2$UART2_GetFlagStatus$223
      0018EB 03                    2594 	.db	3
      0018EC 01                    2595 	.sleb128	1
      0018ED 01                    2596 	.db	1
      0018EE 09                    2597 	.db	9
      0018EF 00 09                 2598 	.dw	7+Sstm8s_uart2$UART2_GetFlagStatus$225-Sstm8s_uart2$UART2_GetFlagStatus$224
      0018F1 00                    2599 	.db	0
      0018F2 01                    2600 	.uleb128	1
      0018F3 01                    2601 	.db	1
      0018F4 00                    2602 	.db	0
      0018F5 05                    2603 	.uleb128	5
      0018F6 02                    2604 	.db	2
      0018F7 00 00 92 12           2605 	.dw	0,(Sstm8s_uart2$UART2_ClearFlag$227)
      0018FB 03                    2606 	.db	3
      0018FC BA 05                 2607 	.sleb128	698
      0018FE 01                    2608 	.db	1
      0018FF 09                    2609 	.db	9
      001900 00 0C                 2610 	.dw	Sstm8s_uart2$UART2_ClearFlag$229-Sstm8s_uart2$UART2_ClearFlag$227
      001902 03                    2611 	.db	3
      001903 05                    2612 	.sleb128	5
      001904 01                    2613 	.db	1
      001905 09                    2614 	.db	9
      001906 00 07                 2615 	.dw	Sstm8s_uart2$UART2_ClearFlag$230-Sstm8s_uart2$UART2_ClearFlag$229
      001908 03                    2616 	.db	3
      001909 02                    2617 	.sleb128	2
      00190A 01                    2618 	.db	1
      00190B 09                    2619 	.db	9
      00190C 00 06                 2620 	.dw	Sstm8s_uart2$UART2_ClearFlag$231-Sstm8s_uart2$UART2_ClearFlag$230
      00190E 03                    2621 	.db	3
      00190F 03                    2622 	.sleb128	3
      001910 01                    2623 	.db	1
      001911 09                    2624 	.db	9
      001912 00 07                 2625 	.dw	Sstm8s_uart2$UART2_ClearFlag$232-Sstm8s_uart2$UART2_ClearFlag$231
      001914 03                    2626 	.db	3
      001915 02                    2627 	.sleb128	2
      001916 01                    2628 	.db	1
      001917 09                    2629 	.db	9
      001918 00 09                 2630 	.dw	Sstm8s_uart2$UART2_ClearFlag$233-Sstm8s_uart2$UART2_ClearFlag$232
      00191A 03                    2631 	.db	3
      00191B 03                    2632 	.sleb128	3
      00191C 01                    2633 	.db	1
      00191D 09                    2634 	.db	9
      00191E 00 07                 2635 	.dw	Sstm8s_uart2$UART2_ClearFlag$234-Sstm8s_uart2$UART2_ClearFlag$233
      001920 03                    2636 	.db	3
      001921 02                    2637 	.sleb128	2
      001922 01                    2638 	.db	1
      001923 09                    2639 	.db	9
      001924 00 09                 2640 	.dw	Sstm8s_uart2$UART2_ClearFlag$235-Sstm8s_uart2$UART2_ClearFlag$234
      001926 03                    2641 	.db	3
      001927 05                    2642 	.sleb128	5
      001928 01                    2643 	.db	1
      001929 09                    2644 	.db	9
      00192A 00 04                 2645 	.dw	Sstm8s_uart2$UART2_ClearFlag$236-Sstm8s_uart2$UART2_ClearFlag$235
      00192C 03                    2646 	.db	3
      00192D 02                    2647 	.sleb128	2
      00192E 01                    2648 	.db	1
      00192F 09                    2649 	.db	9
      001930 00 07                 2650 	.dw	7+Sstm8s_uart2$UART2_ClearFlag$237-Sstm8s_uart2$UART2_ClearFlag$236
      001932 00                    2651 	.db	0
      001933 01                    2652 	.uleb128	1
      001934 01                    2653 	.db	1
      001935 00                    2654 	.db	0
      001936 05                    2655 	.uleb128	5
      001937 02                    2656 	.db	2
      001938 00 00 92 56           2657 	.dw	0,(Sstm8s_uart2$UART2_GetITStatus$239)
      00193C 03                    2658 	.db	3
      00193D E1 05                 2659 	.sleb128	737
      00193F 01                    2660 	.db	1
      001940 09                    2661 	.db	9
      001941 00 0E                 2662 	.dw	Sstm8s_uart2$UART2_GetITStatus$241-Sstm8s_uart2$UART2_GetITStatus$239
      001943 03                    2663 	.db	3
      001944 0C                    2664 	.sleb128	12
      001945 01                    2665 	.db	1
      001946 09                    2666 	.db	9
      001947 00 15                 2667 	.dw	Sstm8s_uart2$UART2_GetITStatus$242-Sstm8s_uart2$UART2_GetITStatus$241
      001949 03                    2668 	.db	3
      00194A 02                    2669 	.sleb128	2
      00194B 01                    2670 	.db	1
      00194C 09                    2671 	.db	9
      00194D 00 05                 2672 	.dw	Sstm8s_uart2$UART2_GetITStatus$243-Sstm8s_uart2$UART2_GetITStatus$242
      00194F 03                    2673 	.db	3
      001950 02                    2674 	.sleb128	2
      001951 01                    2675 	.db	1
      001952 09                    2676 	.db	9
      001953 00 0F                 2677 	.dw	Sstm8s_uart2$UART2_GetITStatus$244-Sstm8s_uart2$UART2_GetITStatus$243
      001955 03                    2678 	.db	3
      001956 03                    2679 	.sleb128	3
      001957 01                    2680 	.db	1
      001958 09                    2681 	.db	9
      001959 00 07                 2682 	.dw	Sstm8s_uart2$UART2_GetITStatus$245-Sstm8s_uart2$UART2_GetITStatus$244
      00195B 03                    2683 	.db	3
      00195C 03                    2684 	.sleb128	3
      00195D 01                    2685 	.db	1
      00195E 09                    2686 	.db	9
      00195F 00 08                 2687 	.dw	Sstm8s_uart2$UART2_GetITStatus$246-Sstm8s_uart2$UART2_GetITStatus$245
      001961 03                    2688 	.db	3
      001962 03                    2689 	.sleb128	3
      001963 01                    2690 	.db	1
      001964 09                    2691 	.db	9
      001965 00 0D                 2692 	.dw	Sstm8s_uart2$UART2_GetITStatus$247-Sstm8s_uart2$UART2_GetITStatus$246
      001967 03                    2693 	.db	3
      001968 03                    2694 	.sleb128	3
      001969 01                    2695 	.db	1
      00196A 09                    2696 	.db	9
      00196B 00 05                 2697 	.dw	Sstm8s_uart2$UART2_GetITStatus$248-Sstm8s_uart2$UART2_GetITStatus$247
      00196D 03                    2698 	.db	3
      00196E 05                    2699 	.sleb128	5
      00196F 01                    2700 	.db	1
      001970 09                    2701 	.db	9
      001971 00 04                 2702 	.dw	Sstm8s_uart2$UART2_GetITStatus$249-Sstm8s_uart2$UART2_GetITStatus$248
      001973 03                    2703 	.db	3
      001974 03                    2704 	.sleb128	3
      001975 01                    2705 	.db	1
      001976 09                    2706 	.db	9
      001977 00 07                 2707 	.dw	Sstm8s_uart2$UART2_GetITStatus$250-Sstm8s_uart2$UART2_GetITStatus$249
      001979 03                    2708 	.db	3
      00197A 03                    2709 	.sleb128	3
      00197B 01                    2710 	.db	1
      00197C 09                    2711 	.db	9
      00197D 00 08                 2712 	.dw	Sstm8s_uart2$UART2_GetITStatus$251-Sstm8s_uart2$UART2_GetITStatus$250
      00197F 03                    2713 	.db	3
      001980 02                    2714 	.sleb128	2
      001981 01                    2715 	.db	1
      001982 09                    2716 	.db	9
      001983 00 0D                 2717 	.dw	Sstm8s_uart2$UART2_GetITStatus$252-Sstm8s_uart2$UART2_GetITStatus$251
      001985 03                    2718 	.db	3
      001986 03                    2719 	.sleb128	3
      001987 01                    2720 	.db	1
      001988 09                    2721 	.db	9
      001989 00 04                 2722 	.dw	Sstm8s_uart2$UART2_GetITStatus$253-Sstm8s_uart2$UART2_GetITStatus$252
      00198B 03                    2723 	.db	3
      00198C 05                    2724 	.sleb128	5
      00198D 01                    2725 	.db	1
      00198E 09                    2726 	.db	9
      00198F 00 03                 2727 	.dw	Sstm8s_uart2$UART2_GetITStatus$254-Sstm8s_uart2$UART2_GetITStatus$253
      001991 03                    2728 	.db	3
      001992 03                    2729 	.sleb128	3
      001993 01                    2730 	.db	1
      001994 09                    2731 	.db	9
      001995 00 07                 2732 	.dw	Sstm8s_uart2$UART2_GetITStatus$255-Sstm8s_uart2$UART2_GetITStatus$254
      001997 03                    2733 	.db	3
      001998 03                    2734 	.sleb128	3
      001999 01                    2735 	.db	1
      00199A 09                    2736 	.db	9
      00199B 00 08                 2737 	.dw	Sstm8s_uart2$UART2_GetITStatus$256-Sstm8s_uart2$UART2_GetITStatus$255
      00199D 03                    2738 	.db	3
      00199E 02                    2739 	.sleb128	2
      00199F 01                    2740 	.db	1
      0019A0 09                    2741 	.db	9
      0019A1 00 0D                 2742 	.dw	Sstm8s_uart2$UART2_GetITStatus$257-Sstm8s_uart2$UART2_GetITStatus$256
      0019A3 03                    2743 	.db	3
      0019A4 03                    2744 	.sleb128	3
      0019A5 01                    2745 	.db	1
      0019A6 09                    2746 	.db	9
      0019A7 00 04                 2747 	.dw	Sstm8s_uart2$UART2_GetITStatus$258-Sstm8s_uart2$UART2_GetITStatus$257
      0019A9 03                    2748 	.db	3
      0019AA 05                    2749 	.sleb128	5
      0019AB 01                    2750 	.db	1
      0019AC 09                    2751 	.db	9
      0019AD 00 03                 2752 	.dw	Sstm8s_uart2$UART2_GetITStatus$259-Sstm8s_uart2$UART2_GetITStatus$258
      0019AF 03                    2753 	.db	3
      0019B0 06                    2754 	.sleb128	6
      0019B1 01                    2755 	.db	1
      0019B2 09                    2756 	.db	9
      0019B3 00 08                 2757 	.dw	Sstm8s_uart2$UART2_GetITStatus$260-Sstm8s_uart2$UART2_GetITStatus$259
      0019B5 03                    2758 	.db	3
      0019B6 02                    2759 	.sleb128	2
      0019B7 01                    2760 	.db	1
      0019B8 09                    2761 	.db	9
      0019B9 00 0D                 2762 	.dw	Sstm8s_uart2$UART2_GetITStatus$261-Sstm8s_uart2$UART2_GetITStatus$260
      0019BB 03                    2763 	.db	3
      0019BC 03                    2764 	.sleb128	3
      0019BD 01                    2765 	.db	1
      0019BE 09                    2766 	.db	9
      0019BF 00 04                 2767 	.dw	Sstm8s_uart2$UART2_GetITStatus$262-Sstm8s_uart2$UART2_GetITStatus$261
      0019C1 03                    2768 	.db	3
      0019C2 05                    2769 	.sleb128	5
      0019C3 01                    2770 	.db	1
      0019C4 09                    2771 	.db	9
      0019C5 00 01                 2772 	.dw	Sstm8s_uart2$UART2_GetITStatus$263-Sstm8s_uart2$UART2_GetITStatus$262
      0019C7 03                    2773 	.db	3
      0019C8 04                    2774 	.sleb128	4
      0019C9 01                    2775 	.db	1
      0019CA 09                    2776 	.db	9
      0019CB 00 00                 2777 	.dw	Sstm8s_uart2$UART2_GetITStatus$264-Sstm8s_uart2$UART2_GetITStatus$263
      0019CD 03                    2778 	.db	3
      0019CE 01                    2779 	.sleb128	1
      0019CF 01                    2780 	.db	1
      0019D0 09                    2781 	.db	9
      0019D1 00 09                 2782 	.dw	7+Sstm8s_uart2$UART2_GetITStatus$265-Sstm8s_uart2$UART2_GetITStatus$264
      0019D3 00                    2783 	.db	0
      0019D4 01                    2784 	.uleb128	1
      0019D5 01                    2785 	.db	1
      0019D6 00                    2786 	.db	0
      0019D7 05                    2787 	.uleb128	5
      0019D8 02                    2788 	.db	2
      0019D9 00 00 93 1B           2789 	.dw	0,(Sstm8s_uart2$UART2_ClearITPendingBit$267)
      0019DD 03                    2790 	.db	3
      0019DE D3 06                 2791 	.sleb128	851
      0019E0 01                    2792 	.db	1
      0019E1 09                    2793 	.db	9
      0019E2 00 0C                 2794 	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$269-Sstm8s_uart2$UART2_ClearITPendingBit$267
      0019E4 03                    2795 	.db	3
      0019E5 05                    2796 	.sleb128	5
      0019E6 01                    2797 	.db	1
      0019E7 09                    2798 	.db	9
      0019E8 00 07                 2799 	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$270-Sstm8s_uart2$UART2_ClearITPendingBit$269
      0019EA 03                    2800 	.db	3
      0019EB 02                    2801 	.sleb128	2
      0019EC 01                    2802 	.db	1
      0019ED 09                    2803 	.db	9
      0019EE 00 06                 2804 	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$271-Sstm8s_uart2$UART2_ClearITPendingBit$270
      0019F0 03                    2805 	.db	3
      0019F1 03                    2806 	.sleb128	3
      0019F2 01                    2807 	.db	1
      0019F3 09                    2808 	.db	9
      0019F4 00 07                 2809 	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$272-Sstm8s_uart2$UART2_ClearITPendingBit$271
      0019F6 03                    2810 	.db	3
      0019F7 02                    2811 	.sleb128	2
      0019F8 01                    2812 	.db	1
      0019F9 09                    2813 	.db	9
      0019FA 00 09                 2814 	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$273-Sstm8s_uart2$UART2_ClearITPendingBit$272
      0019FC 03                    2815 	.db	3
      0019FD 05                    2816 	.sleb128	5
      0019FE 01                    2817 	.db	1
      0019FF 09                    2818 	.db	9
      001A00 00 07                 2819 	.dw	Sstm8s_uart2$UART2_ClearITPendingBit$274-Sstm8s_uart2$UART2_ClearITPendingBit$273
      001A02 03                    2820 	.db	3
      001A03 02                    2821 	.sleb128	2
      001A04 01                    2822 	.db	1
      001A05 09                    2823 	.db	9
      001A06 00 07                 2824 	.dw	7+Sstm8s_uart2$UART2_ClearITPendingBit$275-Sstm8s_uart2$UART2_ClearITPendingBit$274
      001A08 00                    2825 	.db	0
      001A09 01                    2826 	.uleb128	1
      001A0A 01                    2827 	.db	1
      001A0B                       2828 Ldebug_line_end:
                                   2829 
                                   2830 	.area .debug_loc (NOLOAD)
      0003D4                       2831 Ldebug_loc_start:
      0003D4 00 00 93 27           2832 	.dw	0,(Sstm8s_uart2$UART2_ClearITPendingBit$268)
      0003D8 00 00 93 52           2833 	.dw	0,(Sstm8s_uart2$UART2_ClearITPendingBit$276)
      0003DC 00 02                 2834 	.dw	2
      0003DE 8F                    2835 	.db	143
      0003DF 01                    2836 	.sleb128	1
      0003E0 00 00 00 00           2837 	.dw	0,0
      0003E4 00 00 00 00           2838 	.dw	0,0
      0003E8 00 00 92 62           2839 	.dw	0,(Sstm8s_uart2$UART2_GetITStatus$240)
      0003EC 00 00 93 1B           2840 	.dw	0,(Sstm8s_uart2$UART2_GetITStatus$266)
      0003F0 00 02                 2841 	.dw	2
      0003F2 8F                    2842 	.db	143
      0003F3 01                    2843 	.sleb128	1
      0003F4 00 00 00 00           2844 	.dw	0,0
      0003F8 00 00 00 00           2845 	.dw	0,0
      0003FC 00 00 92 1E           2846 	.dw	0,(Sstm8s_uart2$UART2_ClearFlag$228)
      000400 00 00 92 56           2847 	.dw	0,(Sstm8s_uart2$UART2_ClearFlag$238)
      000404 00 02                 2848 	.dw	2
      000406 8F                    2849 	.db	143
      000407 01                    2850 	.sleb128	1
      000408 00 00 00 00           2851 	.dw	0,0
      00040C 00 00 00 00           2852 	.dw	0,0
      000410 00 00 91 9B           2853 	.dw	0,(Sstm8s_uart2$UART2_GetFlagStatus$207)
      000414 00 00 92 12           2854 	.dw	0,(Sstm8s_uart2$UART2_GetFlagStatus$226)
      000418 00 02                 2855 	.dw	2
      00041A 8F                    2856 	.db	143
      00041B 01                    2857 	.sleb128	1
      00041C 00 00 00 00           2858 	.dw	0,0
      000420 00 00 00 00           2859 	.dw	0,0
      000424 00 00 91 82           2860 	.dw	0,(Sstm8s_uart2$UART2_SetPrescaler$201)
      000428 00 00 91 8F           2861 	.dw	0,(Sstm8s_uart2$UART2_SetPrescaler$205)
      00042C 00 02                 2862 	.dw	2
      00042E 8F                    2863 	.db	143
      00042F 01                    2864 	.sleb128	1
      000430 00 00 00 00           2865 	.dw	0,0
      000434 00 00 00 00           2866 	.dw	0,0
      000438 00 00 91 69           2867 	.dw	0,(Sstm8s_uart2$UART2_SetGuardTime$195)
      00043C 00 00 91 76           2868 	.dw	0,(Sstm8s_uart2$UART2_SetGuardTime$199)
      000440 00 02                 2869 	.dw	2
      000442 8F                    2870 	.db	143
      000443 01                    2871 	.sleb128	1
      000444 00 00 00 00           2872 	.dw	0,0
      000448 00 00 00 00           2873 	.dw	0,0
      00044C 00 00 91 45           2874 	.dw	0,(Sstm8s_uart2$UART2_SetAddress$188)
      000450 00 00 91 5D           2875 	.dw	0,(Sstm8s_uart2$UART2_SetAddress$193)
      000454 00 02                 2876 	.dw	2
      000456 8F                    2877 	.db	143
      000457 01                    2878 	.sleb128	1
      000458 00 00 00 00           2879 	.dw	0,0
      00045C 00 00 00 00           2880 	.dw	0,0
      000460 00 00 91 2E           2881 	.dw	0,(Sstm8s_uart2$UART2_SendBreak$182)
      000464 00 00 91 39           2882 	.dw	0,(Sstm8s_uart2$UART2_SendBreak$186)
      000468 00 02                 2883 	.dw	2
      00046A 8F                    2884 	.db	143
      00046B 01                    2885 	.sleb128	1
      00046C 00 00 00 00           2886 	.dw	0,0
      000470 00 00 00 00           2887 	.dw	0,0
      000474 00 00 90 F9           2888 	.dw	0,(Sstm8s_uart2$UART2_SendData9$174)
      000478 00 00 91 22           2889 	.dw	0,(Sstm8s_uart2$UART2_SendData9$180)
      00047C 00 02                 2890 	.dw	2
      00047E 8F                    2891 	.db	143
      00047F 01                    2892 	.sleb128	1
      000480 00 00 00 00           2893 	.dw	0,0
      000484 00 00 00 00           2894 	.dw	0,0
      000488 00 00 90 E0           2895 	.dw	0,(Sstm8s_uart2$UART2_SendData8$168)
      00048C 00 00 90 ED           2896 	.dw	0,(Sstm8s_uart2$UART2_SendData8$172)
      000490 00 02                 2897 	.dw	2
      000492 8F                    2898 	.db	143
      000493 01                    2899 	.sleb128	1
      000494 00 00 00 00           2900 	.dw	0,0
      000498 00 00 00 00           2901 	.dw	0,0
      00049C 00 00 90 AC           2902 	.dw	0,(Sstm8s_uart2$UART2_ReceiveData9$161)
      0004A0 00 00 90 D4           2903 	.dw	0,(Sstm8s_uart2$UART2_ReceiveData9$166)
      0004A4 00 02                 2904 	.dw	2
      0004A6 8F                    2905 	.db	143
      0004A7 01                    2906 	.sleb128	1
      0004A8 00 00 00 00           2907 	.dw	0,0
      0004AC 00 00 00 00           2908 	.dw	0,0
      0004B0 00 00 90 95           2909 	.dw	0,(Sstm8s_uart2$UART2_ReceiveData8$155)
      0004B4 00 00 90 A0           2910 	.dw	0,(Sstm8s_uart2$UART2_ReceiveData8$159)
      0004B8 00 02                 2911 	.dw	2
      0004BA 8F                    2912 	.db	143
      0004BB 01                    2913 	.sleb128	1
      0004BC 00 00 00 00           2914 	.dw	0,0
      0004C0 00 00 00 00           2915 	.dw	0,0
      0004C4 00 00 90 6E           2916 	.dw	0,(Sstm8s_uart2$UART2_ReceiverWakeUpCmd$147)
      0004C8 00 00 90 89           2917 	.dw	0,(Sstm8s_uart2$UART2_ReceiverWakeUpCmd$153)
      0004CC 00 02                 2918 	.dw	2
      0004CE 8F                    2919 	.db	143
      0004CF 01                    2920 	.sleb128	1
      0004D0 00 00 00 00           2921 	.dw	0,0
      0004D4 00 00 00 00           2922 	.dw	0,0
      0004D8 00 00 90 4A           2923 	.dw	0,(Sstm8s_uart2$UART2_WakeUpConfig$140)
      0004DC 00 00 90 62           2924 	.dw	0,(Sstm8s_uart2$UART2_WakeUpConfig$145)
      0004E0 00 02                 2925 	.dw	2
      0004E2 8F                    2926 	.db	143
      0004E3 01                    2927 	.sleb128	1
      0004E4 00 00 00 00           2928 	.dw	0,0
      0004E8 00 00 00 00           2929 	.dw	0,0
      0004EC 00 00 90 23           2930 	.dw	0,(Sstm8s_uart2$UART2_SmartCardNACKCmd$132)
      0004F0 00 00 90 3E           2931 	.dw	0,(Sstm8s_uart2$UART2_SmartCardNACKCmd$138)
      0004F4 00 02                 2932 	.dw	2
      0004F6 8F                    2933 	.db	143
      0004F7 01                    2934 	.sleb128	1
      0004F8 00 00 00 00           2935 	.dw	0,0
      0004FC 00 00 00 00           2936 	.dw	0,0
      000500 00 00 8F FC           2937 	.dw	0,(Sstm8s_uart2$UART2_SmartCardCmd$124)
      000504 00 00 90 17           2938 	.dw	0,(Sstm8s_uart2$UART2_SmartCardCmd$130)
      000508 00 02                 2939 	.dw	2
      00050A 8F                    2940 	.db	143
      00050B 01                    2941 	.sleb128	1
      00050C 00 00 00 00           2942 	.dw	0,0
      000510 00 00 00 00           2943 	.dw	0,0
      000514 00 00 8F D5           2944 	.dw	0,(Sstm8s_uart2$UART2_LINCmd$116)
      000518 00 00 8F F0           2945 	.dw	0,(Sstm8s_uart2$UART2_LINCmd$122)
      00051C 00 02                 2946 	.dw	2
      00051E 8F                    2947 	.db	143
      00051F 01                    2948 	.sleb128	1
      000520 00 00 00 00           2949 	.dw	0,0
      000524 00 00 00 00           2950 	.dw	0,0
      000528 00 00 8F 8C           2951 	.dw	0,(Sstm8s_uart2$UART2_LINConfig$102)
      00052C 00 00 8F C9           2952 	.dw	0,(Sstm8s_uart2$UART2_LINConfig$114)
      000530 00 02                 2953 	.dw	2
      000532 8F                    2954 	.db	143
      000533 01                    2955 	.sleb128	1
      000534 00 00 00 00           2956 	.dw	0,0
      000538 00 00 00 00           2957 	.dw	0,0
      00053C 00 00 8F 65           2958 	.dw	0,(Sstm8s_uart2$UART2_LINBreakDetectionConfig$94)
      000540 00 00 8F 80           2959 	.dw	0,(Sstm8s_uart2$UART2_LINBreakDetectionConfig$100)
      000544 00 02                 2960 	.dw	2
      000546 8F                    2961 	.db	143
      000547 01                    2962 	.sleb128	1
      000548 00 00 00 00           2963 	.dw	0,0
      00054C 00 00 00 00           2964 	.dw	0,0
      000550 00 00 8F 3E           2965 	.dw	0,(Sstm8s_uart2$UART2_IrDACmd$86)
      000554 00 00 8F 59           2966 	.dw	0,(Sstm8s_uart2$UART2_IrDACmd$92)
      000558 00 02                 2967 	.dw	2
      00055A 8F                    2968 	.db	143
      00055B 01                    2969 	.sleb128	1
      00055C 00 00 00 00           2970 	.dw	0,0
      000560 00 00 00 00           2971 	.dw	0,0
      000564 00 00 8F 17           2972 	.dw	0,(Sstm8s_uart2$UART2_IrDAConfig$78)
      000568 00 00 8F 32           2973 	.dw	0,(Sstm8s_uart2$UART2_IrDAConfig$84)
      00056C 00 02                 2974 	.dw	2
      00056E 8F                    2975 	.db	143
      00056F 01                    2976 	.sleb128	1
      000570 00 00 00 00           2977 	.dw	0,0
      000574 00 00 00 00           2978 	.dw	0,0
      000578 00 00 8E 51           2979 	.dw	0,(Sstm8s_uart2$UART2_ITConfig$56)
      00057C 00 00 8F 0B           2980 	.dw	0,(Sstm8s_uart2$UART2_ITConfig$76)
      000580 00 02                 2981 	.dw	2
      000582 8F                    2982 	.db	143
      000583 01                    2983 	.sleb128	1
      000584 00 00 00 00           2984 	.dw	0,0
      000588 00 00 00 00           2985 	.dw	0,0
      00058C 00 00 8E 2A           2986 	.dw	0,(Sstm8s_uart2$UART2_Cmd$48)
      000590 00 00 8E 45           2987 	.dw	0,(Sstm8s_uart2$UART2_Cmd$54)
      000594 00 02                 2988 	.dw	2
      000596 8F                    2989 	.db	143
      000597 01                    2990 	.sleb128	1
      000598 00 00 00 00           2991 	.dw	0,0
      00059C 00 00 00 00           2992 	.dw	0,0
      0005A0 00 00 8C A1           2993 	.dw	0,(Sstm8s_uart2$UART2_Init$16)
      0005A4 00 00 8E 1E           2994 	.dw	0,(Sstm8s_uart2$UART2_Init$46)
      0005A8 00 02                 2995 	.dw	2
      0005AA 8F                    2996 	.db	143
      0005AB 01                    2997 	.sleb128	1
      0005AC 00 00 00 00           2998 	.dw	0,0
      0005B0 00 00 00 00           2999 	.dw	0,0
      0005B4 00 00 8C 66           3000 	.dw	0,(Sstm8s_uart2$UART2_DeInit$1)
      0005B8 00 00 8C 95           3001 	.dw	0,(Sstm8s_uart2$UART2_DeInit$14)
      0005BC 00 02                 3002 	.dw	2
      0005BE 8F                    3003 	.db	143
      0005BF 01                    3004 	.sleb128	1
      0005C0 00 00 00 00           3005 	.dw	0,0
      0005C4 00 00 00 00           3006 	.dw	0,0
                                   3007 
                                   3008 	.area .debug_abbrev (NOLOAD)
      0002B1                       3009 Ldebug_abbrev:
      0002B1 09                    3010 	.uleb128	9
      0002B2 34                    3011 	.uleb128	52
      0002B3 00                    3012 	.db	0
      0002B4 03                    3013 	.uleb128	3
      0002B5 08                    3014 	.uleb128	8
      0002B6 49                    3015 	.uleb128	73
      0002B7 13                    3016 	.uleb128	19
      0002B8 00                    3017 	.uleb128	0
      0002B9 00                    3018 	.uleb128	0
      0002BA 05                    3019 	.uleb128	5
      0002BB 0B                    3020 	.uleb128	11
      0002BC 00                    3021 	.db	0
      0002BD 00                    3022 	.uleb128	0
      0002BE 00                    3023 	.uleb128	0
      0002BF 0A                    3024 	.uleb128	10
      0002C0 2E                    3025 	.uleb128	46
      0002C1 00                    3026 	.db	0
      0002C2 03                    3027 	.uleb128	3
      0002C3 08                    3028 	.uleb128	8
      0002C4 11                    3029 	.uleb128	17
      0002C5 01                    3030 	.uleb128	1
      0002C6 12                    3031 	.uleb128	18
      0002C7 01                    3032 	.uleb128	1
      0002C8 3F                    3033 	.uleb128	63
      0002C9 0C                    3034 	.uleb128	12
      0002CA 40                    3035 	.uleb128	64
      0002CB 06                    3036 	.uleb128	6
      0002CC 49                    3037 	.uleb128	73
      0002CD 13                    3038 	.uleb128	19
      0002CE 00                    3039 	.uleb128	0
      0002CF 00                    3040 	.uleb128	0
      0002D0 04                    3041 	.uleb128	4
      0002D1 05                    3042 	.uleb128	5
      0002D2 00                    3043 	.db	0
      0002D3 02                    3044 	.uleb128	2
      0002D4 0A                    3045 	.uleb128	10
      0002D5 03                    3046 	.uleb128	3
      0002D6 08                    3047 	.uleb128	8
      0002D7 49                    3048 	.uleb128	73
      0002D8 13                    3049 	.uleb128	19
      0002D9 00                    3050 	.uleb128	0
      0002DA 00                    3051 	.uleb128	0
      0002DB 03                    3052 	.uleb128	3
      0002DC 2E                    3053 	.uleb128	46
      0002DD 01                    3054 	.db	1
      0002DE 01                    3055 	.uleb128	1
      0002DF 13                    3056 	.uleb128	19
      0002E0 03                    3057 	.uleb128	3
      0002E1 08                    3058 	.uleb128	8
      0002E2 11                    3059 	.uleb128	17
      0002E3 01                    3060 	.uleb128	1
      0002E4 12                    3061 	.uleb128	18
      0002E5 01                    3062 	.uleb128	1
      0002E6 3F                    3063 	.uleb128	63
      0002E7 0C                    3064 	.uleb128	12
      0002E8 40                    3065 	.uleb128	64
      0002E9 06                    3066 	.uleb128	6
      0002EA 00                    3067 	.uleb128	0
      0002EB 00                    3068 	.uleb128	0
      0002EC 06                    3069 	.uleb128	6
      0002ED 34                    3070 	.uleb128	52
      0002EE 00                    3071 	.db	0
      0002EF 02                    3072 	.uleb128	2
      0002F0 0A                    3073 	.uleb128	10
      0002F1 03                    3074 	.uleb128	3
      0002F2 08                    3075 	.uleb128	8
      0002F3 49                    3076 	.uleb128	73
      0002F4 13                    3077 	.uleb128	19
      0002F5 00                    3078 	.uleb128	0
      0002F6 00                    3079 	.uleb128	0
      0002F7 0B                    3080 	.uleb128	11
      0002F8 2E                    3081 	.uleb128	46
      0002F9 01                    3082 	.db	1
      0002FA 01                    3083 	.uleb128	1
      0002FB 13                    3084 	.uleb128	19
      0002FC 03                    3085 	.uleb128	3
      0002FD 08                    3086 	.uleb128	8
      0002FE 11                    3087 	.uleb128	17
      0002FF 01                    3088 	.uleb128	1
      000300 12                    3089 	.uleb128	18
      000301 01                    3090 	.uleb128	1
      000302 3F                    3091 	.uleb128	63
      000303 0C                    3092 	.uleb128	12
      000304 40                    3093 	.uleb128	64
      000305 06                    3094 	.uleb128	6
      000306 49                    3095 	.uleb128	73
      000307 13                    3096 	.uleb128	19
      000308 00                    3097 	.uleb128	0
      000309 00                    3098 	.uleb128	0
      00030A 08                    3099 	.uleb128	8
      00030B 0B                    3100 	.uleb128	11
      00030C 01                    3101 	.db	1
      00030D 01                    3102 	.uleb128	1
      00030E 13                    3103 	.uleb128	19
      00030F 00                    3104 	.uleb128	0
      000310 00                    3105 	.uleb128	0
      000311 01                    3106 	.uleb128	1
      000312 11                    3107 	.uleb128	17
      000313 01                    3108 	.db	1
      000314 03                    3109 	.uleb128	3
      000315 08                    3110 	.uleb128	8
      000316 10                    3111 	.uleb128	16
      000317 06                    3112 	.uleb128	6
      000318 13                    3113 	.uleb128	19
      000319 0B                    3114 	.uleb128	11
      00031A 25                    3115 	.uleb128	37
      00031B 08                    3116 	.uleb128	8
      00031C 00                    3117 	.uleb128	0
      00031D 00                    3118 	.uleb128	0
      00031E 02                    3119 	.uleb128	2
      00031F 2E                    3120 	.uleb128	46
      000320 00                    3121 	.db	0
      000321 03                    3122 	.uleb128	3
      000322 08                    3123 	.uleb128	8
      000323 11                    3124 	.uleb128	17
      000324 01                    3125 	.uleb128	1
      000325 12                    3126 	.uleb128	18
      000326 01                    3127 	.uleb128	1
      000327 3F                    3128 	.uleb128	63
      000328 0C                    3129 	.uleb128	12
      000329 40                    3130 	.uleb128	64
      00032A 06                    3131 	.uleb128	6
      00032B 00                    3132 	.uleb128	0
      00032C 00                    3133 	.uleb128	0
      00032D 0C                    3134 	.uleb128	12
      00032E 2E                    3135 	.uleb128	46
      00032F 01                    3136 	.db	1
      000330 03                    3137 	.uleb128	3
      000331 08                    3138 	.uleb128	8
      000332 11                    3139 	.uleb128	17
      000333 01                    3140 	.uleb128	1
      000334 12                    3141 	.uleb128	18
      000335 01                    3142 	.uleb128	1
      000336 3F                    3143 	.uleb128	63
      000337 0C                    3144 	.uleb128	12
      000338 40                    3145 	.uleb128	64
      000339 06                    3146 	.uleb128	6
      00033A 00                    3147 	.uleb128	0
      00033B 00                    3148 	.uleb128	0
      00033C 07                    3149 	.uleb128	7
      00033D 24                    3150 	.uleb128	36
      00033E 00                    3151 	.db	0
      00033F 03                    3152 	.uleb128	3
      000340 08                    3153 	.uleb128	8
      000341 0B                    3154 	.uleb128	11
      000342 0B                    3155 	.uleb128	11
      000343 3E                    3156 	.uleb128	62
      000344 0B                    3157 	.uleb128	11
      000345 00                    3158 	.uleb128	0
      000346 00                    3159 	.uleb128	0
      000347 00                    3160 	.uleb128	0
                                   3161 
                                   3162 	.area .debug_info (NOLOAD)
      000FD9 00 00 07 88           3163 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000FDD                       3164 Ldebug_info_start:
      000FDD 00 02                 3165 	.dw	2
      000FDF 00 00 02 B1           3166 	.dw	0,(Ldebug_abbrev)
      000FE3 04                    3167 	.db	4
      000FE4 01                    3168 	.uleb128	1
      000FE5 53 74 64 50 65 72 69  3169 	.ascii "StdPeriphLib/src/stm8s_uart2.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 75 61 72 74 32
             2E 63
      001003 00                    3170 	.db	0
      001004 00 00 13 19           3171 	.dw	0,(Ldebug_line_start+-4)
      001008 01                    3172 	.db	1
      001009 53 44 43 43 20 76 65  3173 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      001021 00                    3174 	.db	0
      001022 02                    3175 	.uleb128	2
      001023 55 41 52 54 32 5F 44  3176 	.ascii "UART2_DeInit"
             65 49 6E 69 74
      00102F 00                    3177 	.db	0
      001030 00 00 8C 5A           3178 	.dw	0,(_UART2_DeInit)
      001034 00 00 8C 95           3179 	.dw	0,(XG$UART2_DeInit$0$0+7)
      001038 01                    3180 	.db	1
      001039 00 00 05 B4           3181 	.dw	0,(Ldebug_loc_start+480)
      00103D 03                    3182 	.uleb128	3
      00103E 00 00 01 3E           3183 	.dw	0,318
      001042 55 41 52 54 32 5F 49  3184 	.ascii "UART2_Init"
             6E 69 74
      00104C 00                    3185 	.db	0
      00104D 00 00 8C 95           3186 	.dw	0,(_UART2_Init)
      001051 00 00 8E 1E           3187 	.dw	0,(XG$UART2_Init$0$0+7)
      001055 01                    3188 	.db	1
      001056 00 00 05 A0           3189 	.dw	0,(Ldebug_loc_start+460)
      00105A 04                    3190 	.uleb128	4
      00105B 02                    3191 	.db	2
      00105C 91                    3192 	.db	145
      00105D 04                    3193 	.sleb128	4
      00105E 42 61 75 64 52 61 74  3194 	.ascii "BaudRate"
             65
      001066 00                    3195 	.db	0
      001067 00 00 01 3E           3196 	.dw	0,318
      00106B 04                    3197 	.uleb128	4
      00106C 02                    3198 	.db	2
      00106D 91                    3199 	.db	145
      00106E 08                    3200 	.sleb128	8
      00106F 57 6F 72 64 4C 65 6E  3201 	.ascii "WordLength"
             67 74 68
      001079 00                    3202 	.db	0
      00107A 00 00 01 4F           3203 	.dw	0,335
      00107E 04                    3204 	.uleb128	4
      00107F 02                    3205 	.db	2
      001080 91                    3206 	.db	145
      001081 09                    3207 	.sleb128	9
      001082 53 74 6F 70 42 69 74  3208 	.ascii "StopBits"
             73
      00108A 00                    3209 	.db	0
      00108B 00 00 01 4F           3210 	.dw	0,335
      00108F 04                    3211 	.uleb128	4
      001090 02                    3212 	.db	2
      001091 91                    3213 	.db	145
      001092 0A                    3214 	.sleb128	10
      001093 50 61 72 69 74 79     3215 	.ascii "Parity"
      001099 00                    3216 	.db	0
      00109A 00 00 01 4F           3217 	.dw	0,335
      00109E 04                    3218 	.uleb128	4
      00109F 02                    3219 	.db	2
      0010A0 91                    3220 	.db	145
      0010A1 0B                    3221 	.sleb128	11
      0010A2 53 79 6E 63 4D 6F 64  3222 	.ascii "SyncMode"
             65
      0010AA 00                    3223 	.db	0
      0010AB 00 00 01 4F           3224 	.dw	0,335
      0010AF 04                    3225 	.uleb128	4
      0010B0 02                    3226 	.db	2
      0010B1 91                    3227 	.db	145
      0010B2 0C                    3228 	.sleb128	12
      0010B3 4D 6F 64 65           3229 	.ascii "Mode"
      0010B7 00                    3230 	.db	0
      0010B8 00 00 01 4F           3231 	.dw	0,335
      0010BC 05                    3232 	.uleb128	5
      0010BD 05                    3233 	.uleb128	5
      0010BE 05                    3234 	.uleb128	5
      0010BF 05                    3235 	.uleb128	5
      0010C0 05                    3236 	.uleb128	5
      0010C1 05                    3237 	.uleb128	5
      0010C2 06                    3238 	.uleb128	6
      0010C3 02                    3239 	.db	2
      0010C4 91                    3240 	.db	145
      0010C5 65                    3241 	.sleb128	-27
      0010C6 42 52 52 32 5F 31     3242 	.ascii "BRR2_1"
      0010CC 00                    3243 	.db	0
      0010CD 00 00 01 4F           3244 	.dw	0,335
      0010D1 06                    3245 	.uleb128	6
      0010D2 01                    3246 	.db	1
      0010D3 51                    3247 	.db	81
      0010D4 42 52 52 32 5F 32     3248 	.ascii "BRR2_2"
      0010DA 00                    3249 	.db	0
      0010DB 00 00 01 4F           3250 	.dw	0,335
      0010DF 06                    3251 	.uleb128	6
      0010E0 02                    3252 	.db	2
      0010E1 91                    3253 	.db	145
      0010E2 61                    3254 	.sleb128	-31
      0010E3 42 61 75 64 52 61 74  3255 	.ascii "BaudRate_Mantissa"
             65 5F 4D 61 6E 74 69
             73 73 61
      0010F4 00                    3256 	.db	0
      0010F5 00 00 01 3E           3257 	.dw	0,318
      0010F9 06                    3258 	.uleb128	6
      0010FA 02                    3259 	.db	2
      0010FB 91                    3260 	.db	145
      0010FC 5D                    3261 	.sleb128	-35
      0010FD 42 61 75 64 52 61 74  3262 	.ascii "BaudRate_Mantissa100"
             65 5F 4D 61 6E 74 69
             73 73 61 31 30 30
      001111 00                    3263 	.db	0
      001112 00 00 01 3E           3264 	.dw	0,318
      001116 00                    3265 	.uleb128	0
      001117 07                    3266 	.uleb128	7
      001118 75 6E 73 69 67 6E 65  3267 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      001125 00                    3268 	.db	0
      001126 04                    3269 	.db	4
      001127 07                    3270 	.db	7
      001128 07                    3271 	.uleb128	7
      001129 75 6E 73 69 67 6E 65  3272 	.ascii "unsigned char"
             64 20 63 68 61 72
      001136 00                    3273 	.db	0
      001137 01                    3274 	.db	1
      001138 08                    3275 	.db	8
      001139 03                    3276 	.uleb128	3
      00113A 00 00 01 90           3277 	.dw	0,400
      00113E 55 41 52 54 32 5F 43  3278 	.ascii "UART2_Cmd"
             6D 64
      001147 00                    3279 	.db	0
      001148 00 00 8E 1E           3280 	.dw	0,(_UART2_Cmd)
      00114C 00 00 8E 45           3281 	.dw	0,(XG$UART2_Cmd$0$0+7)
      001150 01                    3282 	.db	1
      001151 00 00 05 8C           3283 	.dw	0,(Ldebug_loc_start+440)
      001155 04                    3284 	.uleb128	4
      001156 02                    3285 	.db	2
      001157 91                    3286 	.db	145
      001158 04                    3287 	.sleb128	4
      001159 4E 65 77 53 74 61 74  3288 	.ascii "NewState"
             65
      001161 00                    3289 	.db	0
      001162 00 00 01 4F           3290 	.dw	0,335
      001166 05                    3291 	.uleb128	5
      001167 05                    3292 	.uleb128	5
      001168 00                    3293 	.uleb128	0
      001169 03                    3294 	.uleb128	3
      00116A 00 00 02 03           3295 	.dw	0,515
      00116E 55 41 52 54 32 5F 49  3296 	.ascii "UART2_ITConfig"
             54 43 6F 6E 66 69 67
      00117C 00                    3297 	.db	0
      00117D 00 00 8E 45           3298 	.dw	0,(_UART2_ITConfig)
      001181 00 00 8F 0B           3299 	.dw	0,(XG$UART2_ITConfig$0$0+7)
      001185 01                    3300 	.db	1
      001186 00 00 05 78           3301 	.dw	0,(Ldebug_loc_start+420)
      00118A 04                    3302 	.uleb128	4
      00118B 02                    3303 	.db	2
      00118C 91                    3304 	.db	145
      00118D 04                    3305 	.sleb128	4
      00118E 55 41 52 54 32 5F 49  3306 	.ascii "UART2_IT"
             54
      001196 00                    3307 	.db	0
      001197 00 00 02 03           3308 	.dw	0,515
      00119B 04                    3309 	.uleb128	4
      00119C 02                    3310 	.db	2
      00119D 91                    3311 	.db	145
      00119E 06                    3312 	.sleb128	6
      00119F 4E 65 77 53 74 61 74  3313 	.ascii "NewState"
             65
      0011A7 00                    3314 	.db	0
      0011A8 00 00 01 4F           3315 	.dw	0,335
      0011AC 08                    3316 	.uleb128	8
      0011AD 00 00 01 DD           3317 	.dw	0,477
      0011B1 05                    3318 	.uleb128	5
      0011B2 05                    3319 	.uleb128	5
      0011B3 05                    3320 	.uleb128	5
      0011B4 05                    3321 	.uleb128	5
      0011B5 00                    3322 	.uleb128	0
      0011B6 08                    3323 	.uleb128	8
      0011B7 00 00 01 E7           3324 	.dw	0,487
      0011BB 05                    3325 	.uleb128	5
      0011BC 05                    3326 	.uleb128	5
      0011BD 05                    3327 	.uleb128	5
      0011BE 05                    3328 	.uleb128	5
      0011BF 00                    3329 	.uleb128	0
      0011C0 09                    3330 	.uleb128	9
      0011C1 75 61 72 74 72 65 67  3331 	.ascii "uartreg"
      0011C8 00                    3332 	.db	0
      0011C9 00 00 01 4F           3333 	.dw	0,335
      0011CD 06                    3334 	.uleb128	6
      0011CE 02                    3335 	.db	2
      0011CF 91                    3336 	.db	145
      0011D0 7B                    3337 	.sleb128	-5
      0011D1 69 74 70 6F 73        3338 	.ascii "itpos"
      0011D6 00                    3339 	.db	0
      0011D7 00 00 01 4F           3340 	.dw	0,335
      0011DB 00                    3341 	.uleb128	0
      0011DC 07                    3342 	.uleb128	7
      0011DD 75 6E 73 69 67 6E 65  3343 	.ascii "unsigned int"
             64 20 69 6E 74
      0011E9 00                    3344 	.db	0
      0011EA 02                    3345 	.db	2
      0011EB 07                    3346 	.db	7
      0011EC 03                    3347 	.uleb128	3
      0011ED 00 00 02 50           3348 	.dw	0,592
      0011F1 55 41 52 54 32 5F 49  3349 	.ascii "UART2_IrDAConfig"
             72 44 41 43 6F 6E 66
             69 67
      001201 00                    3350 	.db	0
      001202 00 00 8F 0B           3351 	.dw	0,(_UART2_IrDAConfig)
      001206 00 00 8F 32           3352 	.dw	0,(XG$UART2_IrDAConfig$0$0+7)
      00120A 01                    3353 	.db	1
      00120B 00 00 05 64           3354 	.dw	0,(Ldebug_loc_start+400)
      00120F 04                    3355 	.uleb128	4
      001210 02                    3356 	.db	2
      001211 91                    3357 	.db	145
      001212 04                    3358 	.sleb128	4
      001213 55 41 52 54 32 5F 49  3359 	.ascii "UART2_IrDAMode"
             72 44 41 4D 6F 64 65
      001221 00                    3360 	.db	0
      001222 00 00 01 4F           3361 	.dw	0,335
      001226 05                    3362 	.uleb128	5
      001227 05                    3363 	.uleb128	5
      001228 00                    3364 	.uleb128	0
      001229 03                    3365 	.uleb128	3
      00122A 00 00 02 84           3366 	.dw	0,644
      00122E 55 41 52 54 32 5F 49  3367 	.ascii "UART2_IrDACmd"
             72 44 41 43 6D 64
      00123B 00                    3368 	.db	0
      00123C 00 00 8F 32           3369 	.dw	0,(_UART2_IrDACmd)
      001240 00 00 8F 59           3370 	.dw	0,(XG$UART2_IrDACmd$0$0+7)
      001244 01                    3371 	.db	1
      001245 00 00 05 50           3372 	.dw	0,(Ldebug_loc_start+380)
      001249 04                    3373 	.uleb128	4
      00124A 02                    3374 	.db	2
      00124B 91                    3375 	.db	145
      00124C 04                    3376 	.sleb128	4
      00124D 4E 65 77 53 74 61 74  3377 	.ascii "NewState"
             65
      001255 00                    3378 	.db	0
      001256 00 00 01 4F           3379 	.dw	0,335
      00125A 05                    3380 	.uleb128	5
      00125B 05                    3381 	.uleb128	5
      00125C 00                    3382 	.uleb128	0
      00125D 03                    3383 	.uleb128	3
      00125E 00 00 02 DD           3384 	.dw	0,733
      001262 55 41 52 54 32 5F 4C  3385 	.ascii "UART2_LINBreakDetectionConfig"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 43 6F 6E 66 69
             67
      00127F 00                    3386 	.db	0
      001280 00 00 8F 59           3387 	.dw	0,(_UART2_LINBreakDetectionConfig)
      001284 00 00 8F 80           3388 	.dw	0,(XG$UART2_LINBreakDetectionConfig$0$0+7)
      001288 01                    3389 	.db	1
      001289 00 00 05 3C           3390 	.dw	0,(Ldebug_loc_start+360)
      00128D 04                    3391 	.uleb128	4
      00128E 02                    3392 	.db	2
      00128F 91                    3393 	.db	145
      001290 04                    3394 	.sleb128	4
      001291 55 41 52 54 32 5F 4C  3395 	.ascii "UART2_LINBreakDetectionLength"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 4C 65 6E 67 74
             68
      0012AE 00                    3396 	.db	0
      0012AF 00 00 01 4F           3397 	.dw	0,335
      0012B3 05                    3398 	.uleb128	5
      0012B4 05                    3399 	.uleb128	5
      0012B5 00                    3400 	.uleb128	0
      0012B6 03                    3401 	.uleb128	3
      0012B7 00 00 03 44           3402 	.dw	0,836
      0012BB 55 41 52 54 32 5F 4C  3403 	.ascii "UART2_LINConfig"
             49 4E 43 6F 6E 66 69
             67
      0012CA 00                    3404 	.db	0
      0012CB 00 00 8F 80           3405 	.dw	0,(_UART2_LINConfig)
      0012CF 00 00 8F C9           3406 	.dw	0,(XG$UART2_LINConfig$0$0+7)
      0012D3 01                    3407 	.db	1
      0012D4 00 00 05 28           3408 	.dw	0,(Ldebug_loc_start+340)
      0012D8 04                    3409 	.uleb128	4
      0012D9 02                    3410 	.db	2
      0012DA 91                    3411 	.db	145
      0012DB 04                    3412 	.sleb128	4
      0012DC 55 41 52 54 32 5F 4D  3413 	.ascii "UART2_Mode"
             6F 64 65
      0012E6 00                    3414 	.db	0
      0012E7 00 00 01 4F           3415 	.dw	0,335
      0012EB 04                    3416 	.uleb128	4
      0012EC 02                    3417 	.db	2
      0012ED 91                    3418 	.db	145
      0012EE 05                    3419 	.sleb128	5
      0012EF 55 41 52 54 32 5F 41  3420 	.ascii "UART2_Autosync"
             75 74 6F 73 79 6E 63
      0012FD 00                    3421 	.db	0
      0012FE 00 00 01 4F           3422 	.dw	0,335
      001302 04                    3423 	.uleb128	4
      001303 02                    3424 	.db	2
      001304 91                    3425 	.db	145
      001305 06                    3426 	.sleb128	6
      001306 55 41 52 54 32 5F 44  3427 	.ascii "UART2_DivUp"
             69 76 55 70
      001311 00                    3428 	.db	0
      001312 00 00 01 4F           3429 	.dw	0,335
      001316 05                    3430 	.uleb128	5
      001317 05                    3431 	.uleb128	5
      001318 05                    3432 	.uleb128	5
      001319 05                    3433 	.uleb128	5
      00131A 05                    3434 	.uleb128	5
      00131B 05                    3435 	.uleb128	5
      00131C 00                    3436 	.uleb128	0
      00131D 03                    3437 	.uleb128	3
      00131E 00 00 03 77           3438 	.dw	0,887
      001322 55 41 52 54 32 5F 4C  3439 	.ascii "UART2_LINCmd"
             49 4E 43 6D 64
      00132E 00                    3440 	.db	0
      00132F 00 00 8F C9           3441 	.dw	0,(_UART2_LINCmd)
      001333 00 00 8F F0           3442 	.dw	0,(XG$UART2_LINCmd$0$0+7)
      001337 01                    3443 	.db	1
      001338 00 00 05 14           3444 	.dw	0,(Ldebug_loc_start+320)
      00133C 04                    3445 	.uleb128	4
      00133D 02                    3446 	.db	2
      00133E 91                    3447 	.db	145
      00133F 04                    3448 	.sleb128	4
      001340 4E 65 77 53 74 61 74  3449 	.ascii "NewState"
             65
      001348 00                    3450 	.db	0
      001349 00 00 01 4F           3451 	.dw	0,335
      00134D 05                    3452 	.uleb128	5
      00134E 05                    3453 	.uleb128	5
      00134F 00                    3454 	.uleb128	0
      001350 03                    3455 	.uleb128	3
      001351 00 00 03 B0           3456 	.dw	0,944
      001355 55 41 52 54 32 5F 53  3457 	.ascii "UART2_SmartCardCmd"
             6D 61 72 74 43 61 72
             64 43 6D 64
      001367 00                    3458 	.db	0
      001368 00 00 8F F0           3459 	.dw	0,(_UART2_SmartCardCmd)
      00136C 00 00 90 17           3460 	.dw	0,(XG$UART2_SmartCardCmd$0$0+7)
      001370 01                    3461 	.db	1
      001371 00 00 05 00           3462 	.dw	0,(Ldebug_loc_start+300)
      001375 04                    3463 	.uleb128	4
      001376 02                    3464 	.db	2
      001377 91                    3465 	.db	145
      001378 04                    3466 	.sleb128	4
      001379 4E 65 77 53 74 61 74  3467 	.ascii "NewState"
             65
      001381 00                    3468 	.db	0
      001382 00 00 01 4F           3469 	.dw	0,335
      001386 05                    3470 	.uleb128	5
      001387 05                    3471 	.uleb128	5
      001388 00                    3472 	.uleb128	0
      001389 03                    3473 	.uleb128	3
      00138A 00 00 03 ED           3474 	.dw	0,1005
      00138E 55 41 52 54 32 5F 53  3475 	.ascii "UART2_SmartCardNACKCmd"
             6D 61 72 74 43 61 72
             64 4E 41 43 4B 43 6D
             64
      0013A4 00                    3476 	.db	0
      0013A5 00 00 90 17           3477 	.dw	0,(_UART2_SmartCardNACKCmd)
      0013A9 00 00 90 3E           3478 	.dw	0,(XG$UART2_SmartCardNACKCmd$0$0+7)
      0013AD 01                    3479 	.db	1
      0013AE 00 00 04 EC           3480 	.dw	0,(Ldebug_loc_start+280)
      0013B2 04                    3481 	.uleb128	4
      0013B3 02                    3482 	.db	2
      0013B4 91                    3483 	.db	145
      0013B5 04                    3484 	.sleb128	4
      0013B6 4E 65 77 53 74 61 74  3485 	.ascii "NewState"
             65
      0013BE 00                    3486 	.db	0
      0013BF 00 00 01 4F           3487 	.dw	0,335
      0013C3 05                    3488 	.uleb128	5
      0013C4 05                    3489 	.uleb128	5
      0013C5 00                    3490 	.uleb128	0
      0013C6 03                    3491 	.uleb128	3
      0013C7 00 00 04 28           3492 	.dw	0,1064
      0013CB 55 41 52 54 32 5F 57  3493 	.ascii "UART2_WakeUpConfig"
             61 6B 65 55 70 43 6F
             6E 66 69 67
      0013DD 00                    3494 	.db	0
      0013DE 00 00 90 3E           3495 	.dw	0,(_UART2_WakeUpConfig)
      0013E2 00 00 90 62           3496 	.dw	0,(XG$UART2_WakeUpConfig$0$0+7)
      0013E6 01                    3497 	.db	1
      0013E7 00 00 04 D8           3498 	.dw	0,(Ldebug_loc_start+260)
      0013EB 04                    3499 	.uleb128	4
      0013EC 02                    3500 	.db	2
      0013ED 91                    3501 	.db	145
      0013EE 04                    3502 	.sleb128	4
      0013EF 55 41 52 54 32 5F 57  3503 	.ascii "UART2_WakeUp"
             61 6B 65 55 70
      0013FB 00                    3504 	.db	0
      0013FC 00 00 01 4F           3505 	.dw	0,335
      001400 00                    3506 	.uleb128	0
      001401 03                    3507 	.uleb128	3
      001402 00 00 04 66           3508 	.dw	0,1126
      001406 55 41 52 54 32 5F 52  3509 	.ascii "UART2_ReceiverWakeUpCmd"
             65 63 65 69 76 65 72
             57 61 6B 65 55 70 43
             6D 64
      00141D 00                    3510 	.db	0
      00141E 00 00 90 62           3511 	.dw	0,(_UART2_ReceiverWakeUpCmd)
      001422 00 00 90 89           3512 	.dw	0,(XG$UART2_ReceiverWakeUpCmd$0$0+7)
      001426 01                    3513 	.db	1
      001427 00 00 04 C4           3514 	.dw	0,(Ldebug_loc_start+240)
      00142B 04                    3515 	.uleb128	4
      00142C 02                    3516 	.db	2
      00142D 91                    3517 	.db	145
      00142E 04                    3518 	.sleb128	4
      00142F 4E 65 77 53 74 61 74  3519 	.ascii "NewState"
             65
      001437 00                    3520 	.db	0
      001438 00 00 01 4F           3521 	.dw	0,335
      00143C 05                    3522 	.uleb128	5
      00143D 05                    3523 	.uleb128	5
      00143E 00                    3524 	.uleb128	0
      00143F 0A                    3525 	.uleb128	10
      001440 55 41 52 54 32 5F 52  3526 	.ascii "UART2_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      001452 00                    3527 	.db	0
      001453 00 00 90 89           3528 	.dw	0,(_UART2_ReceiveData8)
      001457 00 00 90 A0           3529 	.dw	0,(XG$UART2_ReceiveData8$0$0+7)
      00145B 01                    3530 	.db	1
      00145C 00 00 04 B0           3531 	.dw	0,(Ldebug_loc_start+220)
      001460 00 00 01 4F           3532 	.dw	0,335
      001464 0B                    3533 	.uleb128	11
      001465 00 00 04 C2           3534 	.dw	0,1218
      001469 55 41 52 54 32 5F 52  3535 	.ascii "UART2_ReceiveData9"
             65 63 65 69 76 65 44
             61 74 61 39
      00147B 00                    3536 	.db	0
      00147C 00 00 90 A0           3537 	.dw	0,(_UART2_ReceiveData9)
      001480 00 00 90 D4           3538 	.dw	0,(XG$UART2_ReceiveData9$0$0+7)
      001484 01                    3539 	.db	1
      001485 00 00 04 9C           3540 	.dw	0,(Ldebug_loc_start+200)
      001489 00 00 02 03           3541 	.dw	0,515
      00148D 06                    3542 	.uleb128	6
      00148E 02                    3543 	.db	2
      00148F 91                    3544 	.db	145
      001490 7C                    3545 	.sleb128	-4
      001491 74 65 6D 70           3546 	.ascii "temp"
      001495 00                    3547 	.db	0
      001496 00 00 02 03           3548 	.dw	0,515
      00149A 00                    3549 	.uleb128	0
      00149B 03                    3550 	.uleb128	3
      00149C 00 00 04 F2           3551 	.dw	0,1266
      0014A0 55 41 52 54 32 5F 53  3552 	.ascii "UART2_SendData8"
             65 6E 64 44 61 74 61
             38
      0014AF 00                    3553 	.db	0
      0014B0 00 00 90 D4           3554 	.dw	0,(_UART2_SendData8)
      0014B4 00 00 90 ED           3555 	.dw	0,(XG$UART2_SendData8$0$0+7)
      0014B8 01                    3556 	.db	1
      0014B9 00 00 04 88           3557 	.dw	0,(Ldebug_loc_start+180)
      0014BD 04                    3558 	.uleb128	4
      0014BE 02                    3559 	.db	2
      0014BF 91                    3560 	.db	145
      0014C0 04                    3561 	.sleb128	4
      0014C1 44 61 74 61           3562 	.ascii "Data"
      0014C5 00                    3563 	.db	0
      0014C6 00 00 01 4F           3564 	.dw	0,335
      0014CA 00                    3565 	.uleb128	0
      0014CB 03                    3566 	.uleb128	3
      0014CC 00 00 05 22           3567 	.dw	0,1314
      0014D0 55 41 52 54 32 5F 53  3568 	.ascii "UART2_SendData9"
             65 6E 64 44 61 74 61
             39
      0014DF 00                    3569 	.db	0
      0014E0 00 00 90 ED           3570 	.dw	0,(_UART2_SendData9)
      0014E4 00 00 91 22           3571 	.dw	0,(XG$UART2_SendData9$0$0+7)
      0014E8 01                    3572 	.db	1
      0014E9 00 00 04 74           3573 	.dw	0,(Ldebug_loc_start+160)
      0014ED 04                    3574 	.uleb128	4
      0014EE 02                    3575 	.db	2
      0014EF 91                    3576 	.db	145
      0014F0 04                    3577 	.sleb128	4
      0014F1 44 61 74 61           3578 	.ascii "Data"
      0014F5 00                    3579 	.db	0
      0014F6 00 00 02 03           3580 	.dw	0,515
      0014FA 00                    3581 	.uleb128	0
      0014FB 02                    3582 	.uleb128	2
      0014FC 55 41 52 54 32 5F 53  3583 	.ascii "UART2_SendBreak"
             65 6E 64 42 72 65 61
             6B
      00150B 00                    3584 	.db	0
      00150C 00 00 91 22           3585 	.dw	0,(_UART2_SendBreak)
      001510 00 00 91 39           3586 	.dw	0,(XG$UART2_SendBreak$0$0+7)
      001514 01                    3587 	.db	1
      001515 00 00 04 60           3588 	.dw	0,(Ldebug_loc_start+140)
      001519 03                    3589 	.uleb128	3
      00151A 00 00 05 7A           3590 	.dw	0,1402
      00151E 55 41 52 54 32 5F 53  3591 	.ascii "UART2_SetAddress"
             65 74 41 64 64 72 65
             73 73
      00152E 00                    3592 	.db	0
      00152F 00 00 91 39           3593 	.dw	0,(_UART2_SetAddress)
      001533 00 00 91 5D           3594 	.dw	0,(XG$UART2_SetAddress$0$0+7)
      001537 01                    3595 	.db	1
      001538 00 00 04 4C           3596 	.dw	0,(Ldebug_loc_start+120)
      00153C 04                    3597 	.uleb128	4
      00153D 02                    3598 	.db	2
      00153E 91                    3599 	.db	145
      00153F 04                    3600 	.sleb128	4
      001540 55 41 52 54 32 5F 41  3601 	.ascii "UART2_Address"
             64 64 72 65 73 73
      00154D 00                    3602 	.db	0
      00154E 00 00 01 4F           3603 	.dw	0,335
      001552 00                    3604 	.uleb128	0
      001553 03                    3605 	.uleb128	3
      001554 00 00 05 B8           3606 	.dw	0,1464
      001558 55 41 52 54 32 5F 53  3607 	.ascii "UART2_SetGuardTime"
             65 74 47 75 61 72 64
             54 69 6D 65
      00156A 00                    3608 	.db	0
      00156B 00 00 91 5D           3609 	.dw	0,(_UART2_SetGuardTime)
      00156F 00 00 91 76           3610 	.dw	0,(XG$UART2_SetGuardTime$0$0+7)
      001573 01                    3611 	.db	1
      001574 00 00 04 38           3612 	.dw	0,(Ldebug_loc_start+100)
      001578 04                    3613 	.uleb128	4
      001579 02                    3614 	.db	2
      00157A 91                    3615 	.db	145
      00157B 04                    3616 	.sleb128	4
      00157C 55 41 52 54 32 5F 47  3617 	.ascii "UART2_GuardTime"
             75 61 72 64 54 69 6D
             65
      00158B 00                    3618 	.db	0
      00158C 00 00 01 4F           3619 	.dw	0,335
      001590 00                    3620 	.uleb128	0
      001591 03                    3621 	.uleb128	3
      001592 00 00 05 F6           3622 	.dw	0,1526
      001596 55 41 52 54 32 5F 53  3623 	.ascii "UART2_SetPrescaler"
             65 74 50 72 65 73 63
             61 6C 65 72
      0015A8 00                    3624 	.db	0
      0015A9 00 00 91 76           3625 	.dw	0,(_UART2_SetPrescaler)
      0015AD 00 00 91 8F           3626 	.dw	0,(XG$UART2_SetPrescaler$0$0+7)
      0015B1 01                    3627 	.db	1
      0015B2 00 00 04 24           3628 	.dw	0,(Ldebug_loc_start+80)
      0015B6 04                    3629 	.uleb128	4
      0015B7 02                    3630 	.db	2
      0015B8 91                    3631 	.db	145
      0015B9 04                    3632 	.sleb128	4
      0015BA 55 41 52 54 32 5F 50  3633 	.ascii "UART2_Prescaler"
             72 65 73 63 61 6C 65
             72
      0015C9 00                    3634 	.db	0
      0015CA 00 00 01 4F           3635 	.dw	0,335
      0015CE 00                    3636 	.uleb128	0
      0015CF 0B                    3637 	.uleb128	11
      0015D0 00 00 06 62           3638 	.dw	0,1634
      0015D4 55 41 52 54 32 5F 47  3639 	.ascii "UART2_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      0015E7 00                    3640 	.db	0
      0015E8 00 00 91 8F           3641 	.dw	0,(_UART2_GetFlagStatus)
      0015EC 00 00 92 12           3642 	.dw	0,(XG$UART2_GetFlagStatus$0$0+7)
      0015F0 01                    3643 	.db	1
      0015F1 00 00 04 10           3644 	.dw	0,(Ldebug_loc_start+60)
      0015F5 00 00 01 4F           3645 	.dw	0,335
      0015F9 04                    3646 	.uleb128	4
      0015FA 02                    3647 	.db	2
      0015FB 91                    3648 	.db	145
      0015FC 04                    3649 	.sleb128	4
      0015FD 55 41 52 54 32 5F 46  3650 	.ascii "UART2_FLAG"
             4C 41 47
      001607 00                    3651 	.db	0
      001608 00 00 02 03           3652 	.dw	0,515
      00160C 08                    3653 	.uleb128	8
      00160D 00 00 06 3B           3654 	.dw	0,1595
      001611 05                    3655 	.uleb128	5
      001612 05                    3656 	.uleb128	5
      001613 00                    3657 	.uleb128	0
      001614 08                    3658 	.uleb128	8
      001615 00 00 06 43           3659 	.dw	0,1603
      001619 05                    3660 	.uleb128	5
      00161A 05                    3661 	.uleb128	5
      00161B 00                    3662 	.uleb128	0
      00161C 08                    3663 	.uleb128	8
      00161D 00 00 06 4B           3664 	.dw	0,1611
      001621 05                    3665 	.uleb128	5
      001622 05                    3666 	.uleb128	5
      001623 00                    3667 	.uleb128	0
      001624 08                    3668 	.uleb128	8
      001625 00 00 06 53           3669 	.dw	0,1619
      001629 05                    3670 	.uleb128	5
      00162A 05                    3671 	.uleb128	5
      00162B 00                    3672 	.uleb128	0
      00162C 06                    3673 	.uleb128	6
      00162D 01                    3674 	.db	1
      00162E 51                    3675 	.db	81
      00162F 73 74 61 74 75 73     3676 	.ascii "status"
      001635 00                    3677 	.db	0
      001636 00 00 01 4F           3678 	.dw	0,335
      00163A 00                    3679 	.uleb128	0
      00163B 03                    3680 	.uleb128	3
      00163C 00 00 06 9C           3681 	.dw	0,1692
      001640 55 41 52 54 32 5F 43  3682 	.ascii "UART2_ClearFlag"
             6C 65 61 72 46 6C 61
             67
      00164F 00                    3683 	.db	0
      001650 00 00 92 12           3684 	.dw	0,(_UART2_ClearFlag)
      001654 00 00 92 56           3685 	.dw	0,(XG$UART2_ClearFlag$0$0+7)
      001658 01                    3686 	.db	1
      001659 00 00 03 FC           3687 	.dw	0,(Ldebug_loc_start+40)
      00165D 04                    3688 	.uleb128	4
      00165E 02                    3689 	.db	2
      00165F 91                    3690 	.db	145
      001660 04                    3691 	.sleb128	4
      001661 55 41 52 54 32 5F 46  3692 	.ascii "UART2_FLAG"
             4C 41 47
      00166B 00                    3693 	.db	0
      00166C 00 00 02 03           3694 	.dw	0,515
      001670 05                    3695 	.uleb128	5
      001671 05                    3696 	.uleb128	5
      001672 05                    3697 	.uleb128	5
      001673 05                    3698 	.uleb128	5
      001674 00                    3699 	.uleb128	0
      001675 0B                    3700 	.uleb128	11
      001676 00 00 07 4E           3701 	.dw	0,1870
      00167A 55 41 52 54 32 5F 47  3702 	.ascii "UART2_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      00168B 00                    3703 	.db	0
      00168C 00 00 92 56           3704 	.dw	0,(_UART2_GetITStatus)
      001690 00 00 93 1B           3705 	.dw	0,(XG$UART2_GetITStatus$0$0+7)
      001694 01                    3706 	.db	1
      001695 00 00 03 E8           3707 	.dw	0,(Ldebug_loc_start+20)
      001699 00 00 01 4F           3708 	.dw	0,335
      00169D 04                    3709 	.uleb128	4
      00169E 02                    3710 	.db	2
      00169F 91                    3711 	.db	145
      0016A0 04                    3712 	.sleb128	4
      0016A1 55 41 52 54 32 5F 49  3713 	.ascii "UART2_IT"
             54
      0016A9 00                    3714 	.db	0
      0016AA 00 00 02 03           3715 	.dw	0,515
      0016AE 08                    3716 	.uleb128	8
      0016AF 00 00 06 DD           3717 	.dw	0,1757
      0016B3 05                    3718 	.uleb128	5
      0016B4 05                    3719 	.uleb128	5
      0016B5 00                    3720 	.uleb128	0
      0016B6 08                    3721 	.uleb128	8
      0016B7 00 00 06 E5           3722 	.dw	0,1765
      0016BB 05                    3723 	.uleb128	5
      0016BC 05                    3724 	.uleb128	5
      0016BD 00                    3725 	.uleb128	0
      0016BE 08                    3726 	.uleb128	8
      0016BF 00 00 06 ED           3727 	.dw	0,1773
      0016C3 05                    3728 	.uleb128	5
      0016C4 05                    3729 	.uleb128	5
      0016C5 00                    3730 	.uleb128	0
      0016C6 08                    3731 	.uleb128	8
      0016C7 00 00 06 F5           3732 	.dw	0,1781
      0016CB 05                    3733 	.uleb128	5
      0016CC 05                    3734 	.uleb128	5
      0016CD 00                    3735 	.uleb128	0
      0016CE 06                    3736 	.uleb128	6
      0016CF 01                    3737 	.db	1
      0016D0 51                    3738 	.db	81
      0016D1 70 65 6E 64 69 6E 67  3739 	.ascii "pendingbitstatus"
             62 69 74 73 74 61 74
             75 73
      0016E1 00                    3740 	.db	0
      0016E2 00 00 01 4F           3741 	.dw	0,335
      0016E6 06                    3742 	.uleb128	6
      0016E7 02                    3743 	.db	2
      0016E8 91                    3744 	.db	145
      0016E9 7D                    3745 	.sleb128	-3
      0016EA 69 74 70 6F 73        3746 	.ascii "itpos"
      0016EF 00                    3747 	.db	0
      0016F0 00 00 01 4F           3748 	.dw	0,335
      0016F4 09                    3749 	.uleb128	9
      0016F5 69 74 6D 61 73 6B 31  3750 	.ascii "itmask1"
      0016FC 00                    3751 	.db	0
      0016FD 00 00 01 4F           3752 	.dw	0,335
      001701 06                    3753 	.uleb128	6
      001702 02                    3754 	.db	2
      001703 91                    3755 	.db	145
      001704 7F                    3756 	.sleb128	-1
      001705 69 74 6D 61 73 6B 32  3757 	.ascii "itmask2"
      00170C 00                    3758 	.db	0
      00170D 00 00 01 4F           3759 	.dw	0,335
      001711 06                    3760 	.uleb128	6
      001712 02                    3761 	.db	2
      001713 91                    3762 	.db	145
      001714 7E                    3763 	.sleb128	-2
      001715 65 6E 61 62 6C 65 73  3764 	.ascii "enablestatus"
             74 61 74 75 73
      001721 00                    3765 	.db	0
      001722 00 00 01 4F           3766 	.dw	0,335
      001726 00                    3767 	.uleb128	0
      001727 0C                    3768 	.uleb128	12
      001728 55 41 52 54 32 5F 43  3769 	.ascii "UART2_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      00173F 00                    3770 	.db	0
      001740 00 00 93 1B           3771 	.dw	0,(_UART2_ClearITPendingBit)
      001744 00 00 93 52           3772 	.dw	0,(XG$UART2_ClearITPendingBit$0$0+7)
      001748 01                    3773 	.db	1
      001749 00 00 03 D4           3774 	.dw	0,(Ldebug_loc_start)
      00174D 04                    3775 	.uleb128	4
      00174E 02                    3776 	.db	2
      00174F 91                    3777 	.db	145
      001750 04                    3778 	.sleb128	4
      001751 55 41 52 54 32 5F 49  3779 	.ascii "UART2_IT"
             54
      001759 00                    3780 	.db	0
      00175A 00 00 02 03           3781 	.dw	0,515
      00175E 05                    3782 	.uleb128	5
      00175F 05                    3783 	.uleb128	5
      001760 05                    3784 	.uleb128	5
      001761 00                    3785 	.uleb128	0
      001762 00                    3786 	.uleb128	0
      001763 00                    3787 	.uleb128	0
      001764 00                    3788 	.uleb128	0
      001765                       3789 Ldebug_info_end:
                                   3790 
                                   3791 	.area .debug_pubnames (NOLOAD)
      000553 00 00 02 2D           3792 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000557                       3793 Ldebug_pubnames_start:
      000557 00 02                 3794 	.dw	2
      000559 00 00 0F D9           3795 	.dw	0,(Ldebug_info_start-4)
      00055D 00 00 07 8C           3796 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000561 00 00 00 49           3797 	.dw	0,73
      000565 55 41 52 54 32 5F 44  3798 	.ascii "UART2_DeInit"
             65 49 6E 69 74
      000571 00                    3799 	.db	0
      000572 00 00 00 64           3800 	.dw	0,100
      000576 55 41 52 54 32 5F 49  3801 	.ascii "UART2_Init"
             6E 69 74
      000580 00                    3802 	.db	0
      000581 00 00 01 60           3803 	.dw	0,352
      000585 55 41 52 54 32 5F 43  3804 	.ascii "UART2_Cmd"
             6D 64
      00058E 00                    3805 	.db	0
      00058F 00 00 01 90           3806 	.dw	0,400
      000593 55 41 52 54 32 5F 49  3807 	.ascii "UART2_ITConfig"
             54 43 6F 6E 66 69 67
      0005A1 00                    3808 	.db	0
      0005A2 00 00 02 13           3809 	.dw	0,531
      0005A6 55 41 52 54 32 5F 49  3810 	.ascii "UART2_IrDAConfig"
             72 44 41 43 6F 6E 66
             69 67
      0005B6 00                    3811 	.db	0
      0005B7 00 00 02 50           3812 	.dw	0,592
      0005BB 55 41 52 54 32 5F 49  3813 	.ascii "UART2_IrDACmd"
             72 44 41 43 6D 64
      0005C8 00                    3814 	.db	0
      0005C9 00 00 02 84           3815 	.dw	0,644
      0005CD 55 41 52 54 32 5F 4C  3816 	.ascii "UART2_LINBreakDetectionConfig"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 43 6F 6E 66 69
             67
      0005EA 00                    3817 	.db	0
      0005EB 00 00 02 DD           3818 	.dw	0,733
      0005EF 55 41 52 54 32 5F 4C  3819 	.ascii "UART2_LINConfig"
             49 4E 43 6F 6E 66 69
             67
      0005FE 00                    3820 	.db	0
      0005FF 00 00 03 44           3821 	.dw	0,836
      000603 55 41 52 54 32 5F 4C  3822 	.ascii "UART2_LINCmd"
             49 4E 43 6D 64
      00060F 00                    3823 	.db	0
      000610 00 00 03 77           3824 	.dw	0,887
      000614 55 41 52 54 32 5F 53  3825 	.ascii "UART2_SmartCardCmd"
             6D 61 72 74 43 61 72
             64 43 6D 64
      000626 00                    3826 	.db	0
      000627 00 00 03 B0           3827 	.dw	0,944
      00062B 55 41 52 54 32 5F 53  3828 	.ascii "UART2_SmartCardNACKCmd"
             6D 61 72 74 43 61 72
             64 4E 41 43 4B 43 6D
             64
      000641 00                    3829 	.db	0
      000642 00 00 03 ED           3830 	.dw	0,1005
      000646 55 41 52 54 32 5F 57  3831 	.ascii "UART2_WakeUpConfig"
             61 6B 65 55 70 43 6F
             6E 66 69 67
      000658 00                    3832 	.db	0
      000659 00 00 04 28           3833 	.dw	0,1064
      00065D 55 41 52 54 32 5F 52  3834 	.ascii "UART2_ReceiverWakeUpCmd"
             65 63 65 69 76 65 72
             57 61 6B 65 55 70 43
             6D 64
      000674 00                    3835 	.db	0
      000675 00 00 04 66           3836 	.dw	0,1126
      000679 55 41 52 54 32 5F 52  3837 	.ascii "UART2_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      00068B 00                    3838 	.db	0
      00068C 00 00 04 8B           3839 	.dw	0,1163
      000690 55 41 52 54 32 5F 52  3840 	.ascii "UART2_ReceiveData9"
             65 63 65 69 76 65 44
             61 74 61 39
      0006A2 00                    3841 	.db	0
      0006A3 00 00 04 C2           3842 	.dw	0,1218
      0006A7 55 41 52 54 32 5F 53  3843 	.ascii "UART2_SendData8"
             65 6E 64 44 61 74 61
             38
      0006B6 00                    3844 	.db	0
      0006B7 00 00 04 F2           3845 	.dw	0,1266
      0006BB 55 41 52 54 32 5F 53  3846 	.ascii "UART2_SendData9"
             65 6E 64 44 61 74 61
             39
      0006CA 00                    3847 	.db	0
      0006CB 00 00 05 22           3848 	.dw	0,1314
      0006CF 55 41 52 54 32 5F 53  3849 	.ascii "UART2_SendBreak"
             65 6E 64 42 72 65 61
             6B
      0006DE 00                    3850 	.db	0
      0006DF 00 00 05 40           3851 	.dw	0,1344
      0006E3 55 41 52 54 32 5F 53  3852 	.ascii "UART2_SetAddress"
             65 74 41 64 64 72 65
             73 73
      0006F3 00                    3853 	.db	0
      0006F4 00 00 05 7A           3854 	.dw	0,1402
      0006F8 55 41 52 54 32 5F 53  3855 	.ascii "UART2_SetGuardTime"
             65 74 47 75 61 72 64
             54 69 6D 65
      00070A 00                    3856 	.db	0
      00070B 00 00 05 B8           3857 	.dw	0,1464
      00070F 55 41 52 54 32 5F 53  3858 	.ascii "UART2_SetPrescaler"
             65 74 50 72 65 73 63
             61 6C 65 72
      000721 00                    3859 	.db	0
      000722 00 00 05 F6           3860 	.dw	0,1526
      000726 55 41 52 54 32 5F 47  3861 	.ascii "UART2_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      000739 00                    3862 	.db	0
      00073A 00 00 06 62           3863 	.dw	0,1634
      00073E 55 41 52 54 32 5F 43  3864 	.ascii "UART2_ClearFlag"
             6C 65 61 72 46 6C 61
             67
      00074D 00                    3865 	.db	0
      00074E 00 00 06 9C           3866 	.dw	0,1692
      000752 55 41 52 54 32 5F 47  3867 	.ascii "UART2_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      000763 00                    3868 	.db	0
      000764 00 00 07 4E           3869 	.dw	0,1870
      000768 55 41 52 54 32 5F 43  3870 	.ascii "UART2_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      00077F 00                    3871 	.db	0
      000780 00 00 00 00           3872 	.dw	0,0
      000784                       3873 Ldebug_pubnames_end:
                                   3874 
                                   3875 	.area .debug_frame (NOLOAD)
      00006C 00 00                 3876 	.dw	0
      00006E 00 0E                 3877 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      000070                       3878 Ldebug_CIE_start:
      000070 FF FF                 3879 	.dw	0xffff
      000072 FF FF                 3880 	.dw	0xffff
      000074 01                    3881 	.db	1
      000075 00                    3882 	.db	0
      000076 01                    3883 	.uleb128	1
      000077 01                    3884 	.sleb128	1
      000078 00                    3885 	.db	0
      000079 0C                    3886 	.db	12
      00007A 00                    3887 	.uleb128	0
      00007B 00                    3888 	.uleb128	0
      00007C 80                    3889 	.db	128
      00007D 00                    3890 	.uleb128	0
      00007E                       3891 Ldebug_CIE_end:
