                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_Write
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_ReadOutputData
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_ReadInputPin
                                     20 	.globl _GPIO_ExternalPullUpConfig
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 ;--------------------------------------------------------
                                     34 ; global & static initialisations
                                     35 ;--------------------------------------------------------
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area GSINIT
                                     40 ;--------------------------------------------------------
                                     41 ; Home
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area HOME
                                     45 ;--------------------------------------------------------
                                     46 ; code
                                     47 ;--------------------------------------------------------
                                     48 	.area CODE
                           000000    49 	Sstm8s_gpio$GPIO_DeInit$0 ==.
                                     50 ;	StdPeriphLib/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     51 ;	-----------------------------------------
                                     52 ;	 function GPIO_DeInit
                                     53 ;	-----------------------------------------
      008956                         54 _GPIO_DeInit:
      008956 3B 01 A5         [ 1]   55 	push	_fp_+1
      008959 3B 01 A4         [ 1]   56 	push	_fp_
      00895C 90 96            [ 1]   57 	ldw	y, sp
      00895E 90 CF 01 A4      [ 2]   58 	ldw	_fp_, y
                           00000C    59 	Sstm8s_gpio$GPIO_DeInit$1 ==.
      008962 52 02            [ 2]   60 	sub	sp, #2
                           00000E    61 	Sstm8s_gpio$GPIO_DeInit$2 ==.
                                     62 ;	StdPeriphLib/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008964 16 07            [ 2]   63 	ldw	y, (0x07, sp)
      008966 17 01            [ 2]   64 	ldw	(0x01, sp), y
      008968 1E 01            [ 2]   65 	ldw	x, (0x01, sp)
      00896A 7F               [ 1]   66 	clr	(x)
                           000015    67 	Sstm8s_gpio$GPIO_DeInit$3 ==.
                                     68 ;	StdPeriphLib/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00896B 1E 01            [ 2]   69 	ldw	x, (0x01, sp)
      00896D 5C               [ 2]   70 	incw	x
      00896E 5C               [ 2]   71 	incw	x
      00896F 7F               [ 1]   72 	clr	(x)
                           00001A    73 	Sstm8s_gpio$GPIO_DeInit$4 ==.
                                     74 ;	StdPeriphLib/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008970 1E 01            [ 2]   75 	ldw	x, (0x01, sp)
      008972 1C 00 03         [ 2]   76 	addw	x, #0x0003
      008975 7F               [ 1]   77 	clr	(x)
                           000020    78 	Sstm8s_gpio$GPIO_DeInit$5 ==.
                                     79 ;	StdPeriphLib/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008976 1E 01            [ 2]   80 	ldw	x, (0x01, sp)
      008978 1C 00 04         [ 2]   81 	addw	x, #0x0004
      00897B 7F               [ 1]   82 	clr	(x)
                           000026    83 	Sstm8s_gpio$GPIO_DeInit$6 ==.
                                     84 ;	StdPeriphLib/src/stm8s_gpio.c: 59: }
      00897C 5B 02            [ 2]   85 	addw	sp, #2
                           000028    86 	Sstm8s_gpio$GPIO_DeInit$7 ==.
                           000028    87 	XG$GPIO_DeInit$0$0 ==.
      00897E 32 01 A4         [ 1]   88 	pop	_fp_
      008981 32 01 A5         [ 1]   89 	pop	_fp_+1
      008984 81               [ 4]   90 	ret
                           00002F    91 	Sstm8s_gpio$GPIO_DeInit$8 ==.
                           00002F    92 	Sstm8s_gpio$GPIO_Init$9 ==.
                                     93 ;	StdPeriphLib/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     94 ;	-----------------------------------------
                                     95 ;	 function GPIO_Init
                                     96 ;	-----------------------------------------
      008985                         97 _GPIO_Init:
      008985 3B 01 A5         [ 1]   98 	push	_fp_+1
      008988 3B 01 A4         [ 1]   99 	push	_fp_
      00898B 90 96            [ 1]  100 	ldw	y, sp
      00898D 90 CF 01 A4      [ 2]  101 	ldw	_fp_, y
                           00003B   102 	Sstm8s_gpio$GPIO_Init$10 ==.
      008991 52 05            [ 2]  103 	sub	sp, #5
                           00003D   104 	Sstm8s_gpio$GPIO_Init$11 ==.
                                    105 ;	StdPeriphLib/src/stm8s_gpio.c: 74: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008993 16 0A            [ 2]  106 	ldw	y, (0x0a, sp)
      008995 17 03            [ 2]  107 	ldw	(0x03, sp), y
      008997 1E 03            [ 2]  108 	ldw	x, (0x03, sp)
      008999 1C 00 04         [ 2]  109 	addw	x, #0x0004
      00899C 1F 01            [ 2]  110 	ldw	(0x01, sp), x
      00899E 1E 01            [ 2]  111 	ldw	x, (0x01, sp)
      0089A0 F6               [ 1]  112 	ld	a, (x)
      0089A1 88               [ 1]  113 	push	a
      0089A2 7B 0D            [ 1]  114 	ld	a, (0x0d, sp)
      0089A4 43               [ 1]  115 	cpl	a
      0089A5 6B 06            [ 1]  116 	ld	(0x06, sp), a
      0089A7 84               [ 1]  117 	pop	a
      0089A8 14 05            [ 1]  118 	and	a, (0x05, sp)
      0089AA 1E 01            [ 2]  119 	ldw	x, (0x01, sp)
      0089AC F7               [ 1]  120 	ld	(x), a
                           000057   121 	Sstm8s_gpio$GPIO_Init$12 ==.
                                    122 ;	StdPeriphLib/src/stm8s_gpio.c: 80: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      0089AD 0D 0D            [ 1]  123 	tnz	(0x0d, sp)
      0089AF 2A 22            [ 1]  124 	jrpl	00105$
                           00005B   125 	Sstm8s_gpio$GPIO_Init$13 ==.
                                    126 ;	StdPeriphLib/src/stm8s_gpio.c: 82: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      0089B1 7B 0D            [ 1]  127 	ld	a, (0x0d, sp)
      0089B3 A5 10            [ 1]  128 	bcp	a, #0x10
      0089B5 27 0A            [ 1]  129 	jreq	00102$
                           000061   130 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    131 ;	StdPeriphLib/src/stm8s_gpio.c: 84: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0089B7 1E 03            [ 2]  132 	ldw	x, (0x03, sp)
      0089B9 F6               [ 1]  133 	ld	a, (x)
      0089BA 1A 0C            [ 1]  134 	or	a, (0x0c, sp)
      0089BC 1E 03            [ 2]  135 	ldw	x, (0x03, sp)
      0089BE F7               [ 1]  136 	ld	(x), a
      0089BF 20 08            [ 2]  137 	jra	00103$
      0089C1                        138 00102$:
                           00006B   139 	Sstm8s_gpio$GPIO_Init$15 ==.
                                    140 ;	StdPeriphLib/src/stm8s_gpio.c: 88: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0089C1 1E 03            [ 2]  141 	ldw	x, (0x03, sp)
      0089C3 F6               [ 1]  142 	ld	a, (x)
      0089C4 14 05            [ 1]  143 	and	a, (0x05, sp)
      0089C6 1E 03            [ 2]  144 	ldw	x, (0x03, sp)
      0089C8 F7               [ 1]  145 	ld	(x), a
      0089C9                        146 00103$:
                           000073   147 	Sstm8s_gpio$GPIO_Init$16 ==.
                                    148 ;	StdPeriphLib/src/stm8s_gpio.c: 91: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0089C9 1E 03            [ 2]  149 	ldw	x, (0x03, sp)
      0089CB 5C               [ 2]  150 	incw	x
      0089CC 5C               [ 2]  151 	incw	x
      0089CD F6               [ 1]  152 	ld	a, (x)
      0089CE 1A 0C            [ 1]  153 	or	a, (0x0c, sp)
      0089D0 F7               [ 1]  154 	ld	(x), a
      0089D1 20 08            [ 2]  155 	jra	00106$
      0089D3                        156 00105$:
                           00007D   157 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    158 ;	StdPeriphLib/src/stm8s_gpio.c: 96: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      0089D3 1E 03            [ 2]  159 	ldw	x, (0x03, sp)
      0089D5 5C               [ 2]  160 	incw	x
      0089D6 5C               [ 2]  161 	incw	x
      0089D7 F6               [ 1]  162 	ld	a, (x)
      0089D8 14 05            [ 1]  163 	and	a, (0x05, sp)
      0089DA F7               [ 1]  164 	ld	(x), a
      0089DB                        165 00106$:
                           000085   166 	Sstm8s_gpio$GPIO_Init$18 ==.
                                    167 ;	StdPeriphLib/src/stm8s_gpio.c: 103: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      0089DB 7B 0D            [ 1]  168 	ld	a, (0x0d, sp)
      0089DD A5 40            [ 1]  169 	bcp	a, #0x40
      0089DF 27 0B            [ 1]  170 	jreq	00108$
                           00008B   171 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    172 ;	StdPeriphLib/src/stm8s_gpio.c: 105: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0089E1 1E 03            [ 2]  173 	ldw	x, (0x03, sp)
      0089E3 1C 00 03         [ 2]  174 	addw	x, #0x0003
      0089E6 F6               [ 1]  175 	ld	a, (x)
      0089E7 1A 0C            [ 1]  176 	or	a, (0x0c, sp)
      0089E9 F7               [ 1]  177 	ld	(x), a
      0089EA 20 09            [ 2]  178 	jra	00109$
      0089EC                        179 00108$:
                           000096   180 	Sstm8s_gpio$GPIO_Init$20 ==.
                                    181 ;	StdPeriphLib/src/stm8s_gpio.c: 109: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0089EC 1E 03            [ 2]  182 	ldw	x, (0x03, sp)
      0089EE 1C 00 03         [ 2]  183 	addw	x, #0x0003
      0089F1 F6               [ 1]  184 	ld	a, (x)
      0089F2 14 05            [ 1]  185 	and	a, (0x05, sp)
      0089F4 F7               [ 1]  186 	ld	(x), a
      0089F5                        187 00109$:
                           00009F   188 	Sstm8s_gpio$GPIO_Init$21 ==.
                                    189 ;	StdPeriphLib/src/stm8s_gpio.c: 116: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      0089F5 7B 0D            [ 1]  190 	ld	a, (0x0d, sp)
      0089F7 A5 20            [ 1]  191 	bcp	a, #0x20
      0089F9 27 0A            [ 1]  192 	jreq	00111$
                           0000A5   193 	Sstm8s_gpio$GPIO_Init$22 ==.
                                    194 ;	StdPeriphLib/src/stm8s_gpio.c: 118: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      0089FB 1E 01            [ 2]  195 	ldw	x, (0x01, sp)
      0089FD F6               [ 1]  196 	ld	a, (x)
      0089FE 1A 0C            [ 1]  197 	or	a, (0x0c, sp)
      008A00 1E 01            [ 2]  198 	ldw	x, (0x01, sp)
      008A02 F7               [ 1]  199 	ld	(x), a
      008A03 20 08            [ 2]  200 	jra	00113$
      008A05                        201 00111$:
                           0000AF   202 	Sstm8s_gpio$GPIO_Init$23 ==.
                                    203 ;	StdPeriphLib/src/stm8s_gpio.c: 122: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008A05 1E 01            [ 2]  204 	ldw	x, (0x01, sp)
      008A07 F6               [ 1]  205 	ld	a, (x)
      008A08 14 05            [ 1]  206 	and	a, (0x05, sp)
      008A0A 1E 01            [ 2]  207 	ldw	x, (0x01, sp)
      008A0C F7               [ 1]  208 	ld	(x), a
      008A0D                        209 00113$:
                           0000B7   210 	Sstm8s_gpio$GPIO_Init$24 ==.
                                    211 ;	StdPeriphLib/src/stm8s_gpio.c: 124: }
      008A0D 5B 05            [ 2]  212 	addw	sp, #5
                           0000B9   213 	Sstm8s_gpio$GPIO_Init$25 ==.
                           0000B9   214 	XG$GPIO_Init$0$0 ==.
      008A0F 32 01 A4         [ 1]  215 	pop	_fp_
      008A12 32 01 A5         [ 1]  216 	pop	_fp_+1
      008A15 81               [ 4]  217 	ret
                           0000C0   218 	Sstm8s_gpio$GPIO_Init$26 ==.
                           0000C0   219 	Sstm8s_gpio$GPIO_Write$27 ==.
                                    220 ;	StdPeriphLib/src/stm8s_gpio.c: 134: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    221 ;	-----------------------------------------
                                    222 ;	 function GPIO_Write
                                    223 ;	-----------------------------------------
      008A16                        224 _GPIO_Write:
      008A16 3B 01 A5         [ 1]  225 	push	_fp_+1
      008A19 3B 01 A4         [ 1]  226 	push	_fp_
      008A1C 90 96            [ 1]  227 	ldw	y, sp
      008A1E 90 CF 01 A4      [ 2]  228 	ldw	_fp_, y
                           0000CC   229 	Sstm8s_gpio$GPIO_Write$28 ==.
                           0000CC   230 	Sstm8s_gpio$GPIO_Write$29 ==.
                                    231 ;	StdPeriphLib/src/stm8s_gpio.c: 136: GPIOx->ODR = PortVal;
      008A22 1E 05            [ 2]  232 	ldw	x, (0x05, sp)
      008A24 7B 07            [ 1]  233 	ld	a, (0x07, sp)
      008A26 F7               [ 1]  234 	ld	(x), a
                           0000D1   235 	Sstm8s_gpio$GPIO_Write$30 ==.
                                    236 ;	StdPeriphLib/src/stm8s_gpio.c: 137: }
                           0000D1   237 	Sstm8s_gpio$GPIO_Write$31 ==.
                           0000D1   238 	XG$GPIO_Write$0$0 ==.
      008A27 32 01 A4         [ 1]  239 	pop	_fp_
      008A2A 32 01 A5         [ 1]  240 	pop	_fp_+1
      008A2D 81               [ 4]  241 	ret
                           0000D8   242 	Sstm8s_gpio$GPIO_Write$32 ==.
                           0000D8   243 	Sstm8s_gpio$GPIO_WriteHigh$33 ==.
                                    244 ;	StdPeriphLib/src/stm8s_gpio.c: 147: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    245 ;	-----------------------------------------
                                    246 ;	 function GPIO_WriteHigh
                                    247 ;	-----------------------------------------
      008A2E                        248 _GPIO_WriteHigh:
      008A2E 3B 01 A5         [ 1]  249 	push	_fp_+1
      008A31 3B 01 A4         [ 1]  250 	push	_fp_
      008A34 90 96            [ 1]  251 	ldw	y, sp
      008A36 90 CF 01 A4      [ 2]  252 	ldw	_fp_, y
                           0000E4   253 	Sstm8s_gpio$GPIO_WriteHigh$34 ==.
                           0000E4   254 	Sstm8s_gpio$GPIO_WriteHigh$35 ==.
                                    255 ;	StdPeriphLib/src/stm8s_gpio.c: 149: GPIOx->ODR |= (uint8_t)PortPins;
      008A3A 1E 05            [ 2]  256 	ldw	x, (0x05, sp)
      008A3C F6               [ 1]  257 	ld	a, (x)
      008A3D 1A 07            [ 1]  258 	or	a, (0x07, sp)
      008A3F F7               [ 1]  259 	ld	(x), a
                           0000EA   260 	Sstm8s_gpio$GPIO_WriteHigh$36 ==.
                                    261 ;	StdPeriphLib/src/stm8s_gpio.c: 150: }
                           0000EA   262 	Sstm8s_gpio$GPIO_WriteHigh$37 ==.
                           0000EA   263 	XG$GPIO_WriteHigh$0$0 ==.
      008A40 32 01 A4         [ 1]  264 	pop	_fp_
      008A43 32 01 A5         [ 1]  265 	pop	_fp_+1
      008A46 81               [ 4]  266 	ret
                           0000F1   267 	Sstm8s_gpio$GPIO_WriteHigh$38 ==.
                           0000F1   268 	Sstm8s_gpio$GPIO_WriteLow$39 ==.
                                    269 ;	StdPeriphLib/src/stm8s_gpio.c: 160: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    270 ;	-----------------------------------------
                                    271 ;	 function GPIO_WriteLow
                                    272 ;	-----------------------------------------
      008A47                        273 _GPIO_WriteLow:
      008A47 3B 01 A5         [ 1]  274 	push	_fp_+1
      008A4A 3B 01 A4         [ 1]  275 	push	_fp_
      008A4D 90 96            [ 1]  276 	ldw	y, sp
      008A4F 90 CF 01 A4      [ 2]  277 	ldw	_fp_, y
                           0000FD   278 	Sstm8s_gpio$GPIO_WriteLow$40 ==.
      008A53 88               [ 1]  279 	push	a
                           0000FE   280 	Sstm8s_gpio$GPIO_WriteLow$41 ==.
                                    281 ;	StdPeriphLib/src/stm8s_gpio.c: 162: GPIOx->ODR &= (uint8_t)(~PortPins);
      008A54 1E 06            [ 2]  282 	ldw	x, (0x06, sp)
      008A56 F6               [ 1]  283 	ld	a, (x)
      008A57 6B 01            [ 1]  284 	ld	(0x01, sp), a
      008A59 7B 08            [ 1]  285 	ld	a, (0x08, sp)
      008A5B 43               [ 1]  286 	cpl	a
      008A5C 14 01            [ 1]  287 	and	a, (0x01, sp)
      008A5E F7               [ 1]  288 	ld	(x), a
                           000109   289 	Sstm8s_gpio$GPIO_WriteLow$42 ==.
                                    290 ;	StdPeriphLib/src/stm8s_gpio.c: 163: }
      008A5F 84               [ 1]  291 	pop	a
                           00010A   292 	Sstm8s_gpio$GPIO_WriteLow$43 ==.
                           00010A   293 	XG$GPIO_WriteLow$0$0 ==.
      008A60 32 01 A4         [ 1]  294 	pop	_fp_
      008A63 32 01 A5         [ 1]  295 	pop	_fp_+1
      008A66 81               [ 4]  296 	ret
                           000111   297 	Sstm8s_gpio$GPIO_WriteLow$44 ==.
                           000111   298 	Sstm8s_gpio$GPIO_WriteReverse$45 ==.
                                    299 ;	StdPeriphLib/src/stm8s_gpio.c: 173: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    300 ;	-----------------------------------------
                                    301 ;	 function GPIO_WriteReverse
                                    302 ;	-----------------------------------------
      008A67                        303 _GPIO_WriteReverse:
      008A67 3B 01 A5         [ 1]  304 	push	_fp_+1
      008A6A 3B 01 A4         [ 1]  305 	push	_fp_
      008A6D 90 96            [ 1]  306 	ldw	y, sp
      008A6F 90 CF 01 A4      [ 2]  307 	ldw	_fp_, y
                           00011D   308 	Sstm8s_gpio$GPIO_WriteReverse$46 ==.
                           00011D   309 	Sstm8s_gpio$GPIO_WriteReverse$47 ==.
                                    310 ;	StdPeriphLib/src/stm8s_gpio.c: 175: GPIOx->ODR ^= (uint8_t)PortPins;
      008A73 1E 05            [ 2]  311 	ldw	x, (0x05, sp)
      008A75 F6               [ 1]  312 	ld	a, (x)
      008A76 18 07            [ 1]  313 	xor	a, (0x07, sp)
      008A78 F7               [ 1]  314 	ld	(x), a
                           000123   315 	Sstm8s_gpio$GPIO_WriteReverse$48 ==.
                                    316 ;	StdPeriphLib/src/stm8s_gpio.c: 176: }
                           000123   317 	Sstm8s_gpio$GPIO_WriteReverse$49 ==.
                           000123   318 	XG$GPIO_WriteReverse$0$0 ==.
      008A79 32 01 A4         [ 1]  319 	pop	_fp_
      008A7C 32 01 A5         [ 1]  320 	pop	_fp_+1
      008A7F 81               [ 4]  321 	ret
                           00012A   322 	Sstm8s_gpio$GPIO_WriteReverse$50 ==.
                           00012A   323 	Sstm8s_gpio$GPIO_ReadOutputData$51 ==.
                                    324 ;	StdPeriphLib/src/stm8s_gpio.c: 184: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    325 ;	-----------------------------------------
                                    326 ;	 function GPIO_ReadOutputData
                                    327 ;	-----------------------------------------
      008A80                        328 _GPIO_ReadOutputData:
      008A80 3B 01 A5         [ 1]  329 	push	_fp_+1
      008A83 3B 01 A4         [ 1]  330 	push	_fp_
      008A86 90 96            [ 1]  331 	ldw	y, sp
      008A88 90 CF 01 A4      [ 2]  332 	ldw	_fp_, y
                           000136   333 	Sstm8s_gpio$GPIO_ReadOutputData$52 ==.
                           000136   334 	Sstm8s_gpio$GPIO_ReadOutputData$53 ==.
                                    335 ;	StdPeriphLib/src/stm8s_gpio.c: 186: return ((uint8_t)GPIOx->ODR);
      008A8C 1E 05            [ 2]  336 	ldw	x, (0x05, sp)
      008A8E F6               [ 1]  337 	ld	a, (x)
                           000139   338 	Sstm8s_gpio$GPIO_ReadOutputData$54 ==.
                                    339 ;	StdPeriphLib/src/stm8s_gpio.c: 187: }
                           000139   340 	Sstm8s_gpio$GPIO_ReadOutputData$55 ==.
                           000139   341 	XG$GPIO_ReadOutputData$0$0 ==.
      008A8F 32 01 A4         [ 1]  342 	pop	_fp_
      008A92 32 01 A5         [ 1]  343 	pop	_fp_+1
      008A95 81               [ 4]  344 	ret
                           000140   345 	Sstm8s_gpio$GPIO_ReadOutputData$56 ==.
                           000140   346 	Sstm8s_gpio$GPIO_ReadInputData$57 ==.
                                    347 ;	StdPeriphLib/src/stm8s_gpio.c: 195: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    348 ;	-----------------------------------------
                                    349 ;	 function GPIO_ReadInputData
                                    350 ;	-----------------------------------------
      008A96                        351 _GPIO_ReadInputData:
      008A96 3B 01 A5         [ 1]  352 	push	_fp_+1
      008A99 3B 01 A4         [ 1]  353 	push	_fp_
      008A9C 90 96            [ 1]  354 	ldw	y, sp
      008A9E 90 CF 01 A4      [ 2]  355 	ldw	_fp_, y
                           00014C   356 	Sstm8s_gpio$GPIO_ReadInputData$58 ==.
                           00014C   357 	Sstm8s_gpio$GPIO_ReadInputData$59 ==.
                                    358 ;	StdPeriphLib/src/stm8s_gpio.c: 197: return ((uint8_t)GPIOx->IDR);
      008AA2 1E 05            [ 2]  359 	ldw	x, (0x05, sp)
      008AA4 E6 01            [ 1]  360 	ld	a, (0x1, x)
                           000150   361 	Sstm8s_gpio$GPIO_ReadInputData$60 ==.
                                    362 ;	StdPeriphLib/src/stm8s_gpio.c: 198: }
                           000150   363 	Sstm8s_gpio$GPIO_ReadInputData$61 ==.
                           000150   364 	XG$GPIO_ReadInputData$0$0 ==.
      008AA6 32 01 A4         [ 1]  365 	pop	_fp_
      008AA9 32 01 A5         [ 1]  366 	pop	_fp_+1
      008AAC 81               [ 4]  367 	ret
                           000157   368 	Sstm8s_gpio$GPIO_ReadInputData$62 ==.
                           000157   369 	Sstm8s_gpio$GPIO_ReadInputPin$63 ==.
                                    370 ;	StdPeriphLib/src/stm8s_gpio.c: 206: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    371 ;	-----------------------------------------
                                    372 ;	 function GPIO_ReadInputPin
                                    373 ;	-----------------------------------------
      008AAD                        374 _GPIO_ReadInputPin:
      008AAD 3B 01 A5         [ 1]  375 	push	_fp_+1
      008AB0 3B 01 A4         [ 1]  376 	push	_fp_
      008AB3 90 96            [ 1]  377 	ldw	y, sp
      008AB5 90 CF 01 A4      [ 2]  378 	ldw	_fp_, y
                           000163   379 	Sstm8s_gpio$GPIO_ReadInputPin$64 ==.
                           000163   380 	Sstm8s_gpio$GPIO_ReadInputPin$65 ==.
                                    381 ;	StdPeriphLib/src/stm8s_gpio.c: 208: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008AB9 1E 05            [ 2]  382 	ldw	x, (0x05, sp)
      008ABB E6 01            [ 1]  383 	ld	a, (0x1, x)
      008ABD 14 07            [ 1]  384 	and	a, (0x07, sp)
                           000169   385 	Sstm8s_gpio$GPIO_ReadInputPin$66 ==.
                                    386 ;	StdPeriphLib/src/stm8s_gpio.c: 209: }
                           000169   387 	Sstm8s_gpio$GPIO_ReadInputPin$67 ==.
                           000169   388 	XG$GPIO_ReadInputPin$0$0 ==.
      008ABF 32 01 A4         [ 1]  389 	pop	_fp_
      008AC2 32 01 A5         [ 1]  390 	pop	_fp_+1
      008AC5 81               [ 4]  391 	ret
                           000170   392 	Sstm8s_gpio$GPIO_ReadInputPin$68 ==.
                           000170   393 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$69 ==.
                                    394 ;	StdPeriphLib/src/stm8s_gpio.c: 218: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    395 ;	-----------------------------------------
                                    396 ;	 function GPIO_ExternalPullUpConfig
                                    397 ;	-----------------------------------------
      008AC6                        398 _GPIO_ExternalPullUpConfig:
      008AC6 3B 01 A5         [ 1]  399 	push	_fp_+1
      008AC9 3B 01 A4         [ 1]  400 	push	_fp_
      008ACC 90 96            [ 1]  401 	ldw	y, sp
      008ACE 90 CF 01 A4      [ 2]  402 	ldw	_fp_, y
                           00017C   403 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$70 ==.
      008AD2 88               [ 1]  404 	push	a
                           00017D   405 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$71 ==.
                                    406 ;	StdPeriphLib/src/stm8s_gpio.c: 224: if (NewState != DISABLE) /* External Pull-Up Set*/
      008AD3 0D 09            [ 1]  407 	tnz	(0x09, sp)
      008AD5 27 0B            [ 1]  408 	jreq	00102$
                           000181   409 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$72 ==.
                                    410 ;	StdPeriphLib/src/stm8s_gpio.c: 226: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008AD7 1E 06            [ 2]  411 	ldw	x, (0x06, sp)
      008AD9 1C 00 03         [ 2]  412 	addw	x, #0x0003
      008ADC F6               [ 1]  413 	ld	a, (x)
      008ADD 1A 08            [ 1]  414 	or	a, (0x08, sp)
      008ADF F7               [ 1]  415 	ld	(x), a
      008AE0 20 0E            [ 2]  416 	jra	00104$
      008AE2                        417 00102$:
                           00018C   418 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$73 ==.
                                    419 ;	StdPeriphLib/src/stm8s_gpio.c: 229: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008AE2 1E 06            [ 2]  420 	ldw	x, (0x06, sp)
      008AE4 1C 00 03         [ 2]  421 	addw	x, #0x0003
      008AE7 F6               [ 1]  422 	ld	a, (x)
      008AE8 6B 01            [ 1]  423 	ld	(0x01, sp), a
      008AEA 7B 08            [ 1]  424 	ld	a, (0x08, sp)
      008AEC 43               [ 1]  425 	cpl	a
      008AED 14 01            [ 1]  426 	and	a, (0x01, sp)
      008AEF F7               [ 1]  427 	ld	(x), a
      008AF0                        428 00104$:
                           00019A   429 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$74 ==.
                                    430 ;	StdPeriphLib/src/stm8s_gpio.c: 231: }
      008AF0 84               [ 1]  431 	pop	a
                           00019B   432 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$75 ==.
                           00019B   433 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      008AF1 32 01 A4         [ 1]  434 	pop	_fp_
      008AF4 32 01 A5         [ 1]  435 	pop	_fp_+1
      008AF7 81               [ 4]  436 	ret
                           0001A2   437 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$76 ==.
                                    438 	.area CODE
                                    439 	.area INITIALIZER
                                    440 	.area CABS (ABS)
                                    441 
                                    442 	.area .debug_line (NOLOAD)
      000DCC 00 00 02 A6            443 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000DD0                        444 Ldebug_line_start:
      000DD0 00 02                  445 	.dw	2
      000DD2 00 00 01 19            446 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000DD6 01                     447 	.db	1
      000DD7 01                     448 	.db	1
      000DD8 FB                     449 	.db	-5
      000DD9 0F                     450 	.db	15
      000DDA 0A                     451 	.db	10
      000DDB 00                     452 	.db	0
      000DDC 01                     453 	.db	1
      000DDD 01                     454 	.db	1
      000DDE 01                     455 	.db	1
      000DDF 01                     456 	.db	1
      000DE0 00                     457 	.db	0
      000DE1 00                     458 	.db	0
      000DE2 00                     459 	.db	0
      000DE3 01                     460 	.db	1
      000DE4 2F 68 6F 6D 65 2F 63   461 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000E23 00                     462 	.db	0
      000E24 2F 68 6F 6D 65 2F 63   463 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000E5C 00                     464 	.db	0
      000E5D 2F 68 6F 6D 65 2F 63   465 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      000E97 00                     466 	.db	0
      000E98 2F 68 6F 6D 65 2F 63   467 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      000ECB 00                     468 	.db	0
      000ECC 00                     469 	.db	0
      000ECD 53 74 64 50 65 72 69   470 	.ascii "StdPeriphLib/src/stm8s_gpio.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 67 70 69 6F 2E
             63
      000EEA 00                     471 	.db	0
      000EEB 00                     472 	.uleb128	0
      000EEC 00                     473 	.uleb128	0
      000EED 00                     474 	.uleb128	0
      000EEE 00                     475 	.db	0
      000EEF                        476 Ldebug_line_stmt:
      000EEF 00                     477 	.db	0
      000EF0 05                     478 	.uleb128	5
      000EF1 02                     479 	.db	2
      000EF2 00 00 89 56            480 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
      000EF6 03                     481 	.db	3
      000EF7 34                     482 	.sleb128	52
      000EF8 01                     483 	.db	1
      000EF9 09                     484 	.db	9
      000EFA 00 0E                  485 	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
      000EFC 03                     486 	.db	3
      000EFD 02                     487 	.sleb128	2
      000EFE 01                     488 	.db	1
      000EFF 09                     489 	.db	9
      000F00 00 07                  490 	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
      000F02 03                     491 	.db	3
      000F03 01                     492 	.sleb128	1
      000F04 01                     493 	.db	1
      000F05 09                     494 	.db	9
      000F06 00 05                  495 	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
      000F08 03                     496 	.db	3
      000F09 01                     497 	.sleb128	1
      000F0A 01                     498 	.db	1
      000F0B 09                     499 	.db	9
      000F0C 00 06                  500 	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
      000F0E 03                     501 	.db	3
      000F0F 01                     502 	.sleb128	1
      000F10 01                     503 	.db	1
      000F11 09                     504 	.db	9
      000F12 00 06                  505 	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
      000F14 03                     506 	.db	3
      000F15 01                     507 	.sleb128	1
      000F16 01                     508 	.db	1
      000F17 09                     509 	.db	9
      000F18 00 09                  510 	.dw	7+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
      000F1A 00                     511 	.db	0
      000F1B 01                     512 	.uleb128	1
      000F1C 01                     513 	.db	1
      000F1D 00                     514 	.db	0
      000F1E 05                     515 	.uleb128	5
      000F1F 02                     516 	.db	2
      000F20 00 00 89 85            517 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      000F24 03                     518 	.db	3
      000F25 C6 00                  519 	.sleb128	70
      000F27 01                     520 	.db	1
      000F28 09                     521 	.db	9
      000F29 00 0E                  522 	.dw	Sstm8s_gpio$GPIO_Init$11-Sstm8s_gpio$GPIO_Init$9
      000F2B 03                     523 	.db	3
      000F2C 03                     524 	.sleb128	3
      000F2D 01                     525 	.db	1
      000F2E 09                     526 	.db	9
      000F2F 00 1A                  527 	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$11
      000F31 03                     528 	.db	3
      000F32 06                     529 	.sleb128	6
      000F33 01                     530 	.db	1
      000F34 09                     531 	.db	9
      000F35 00 04                  532 	.dw	Sstm8s_gpio$GPIO_Init$13-Sstm8s_gpio$GPIO_Init$12
      000F37 03                     533 	.db	3
      000F38 02                     534 	.sleb128	2
      000F39 01                     535 	.db	1
      000F3A 09                     536 	.db	9
      000F3B 00 06                  537 	.dw	Sstm8s_gpio$GPIO_Init$14-Sstm8s_gpio$GPIO_Init$13
      000F3D 03                     538 	.db	3
      000F3E 02                     539 	.sleb128	2
      000F3F 01                     540 	.db	1
      000F40 09                     541 	.db	9
      000F41 00 0A                  542 	.dw	Sstm8s_gpio$GPIO_Init$15-Sstm8s_gpio$GPIO_Init$14
      000F43 03                     543 	.db	3
      000F44 04                     544 	.sleb128	4
      000F45 01                     545 	.db	1
      000F46 09                     546 	.db	9
      000F47 00 08                  547 	.dw	Sstm8s_gpio$GPIO_Init$16-Sstm8s_gpio$GPIO_Init$15
      000F49 03                     548 	.db	3
      000F4A 03                     549 	.sleb128	3
      000F4B 01                     550 	.db	1
      000F4C 09                     551 	.db	9
      000F4D 00 0A                  552 	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$16
      000F4F 03                     553 	.db	3
      000F50 05                     554 	.sleb128	5
      000F51 01                     555 	.db	1
      000F52 09                     556 	.db	9
      000F53 00 08                  557 	.dw	Sstm8s_gpio$GPIO_Init$18-Sstm8s_gpio$GPIO_Init$17
      000F55 03                     558 	.db	3
      000F56 07                     559 	.sleb128	7
      000F57 01                     560 	.db	1
      000F58 09                     561 	.db	9
      000F59 00 06                  562 	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$18
      000F5B 03                     563 	.db	3
      000F5C 02                     564 	.sleb128	2
      000F5D 01                     565 	.db	1
      000F5E 09                     566 	.db	9
      000F5F 00 0B                  567 	.dw	Sstm8s_gpio$GPIO_Init$20-Sstm8s_gpio$GPIO_Init$19
      000F61 03                     568 	.db	3
      000F62 04                     569 	.sleb128	4
      000F63 01                     570 	.db	1
      000F64 09                     571 	.db	9
      000F65 00 09                  572 	.dw	Sstm8s_gpio$GPIO_Init$21-Sstm8s_gpio$GPIO_Init$20
      000F67 03                     573 	.db	3
      000F68 07                     574 	.sleb128	7
      000F69 01                     575 	.db	1
      000F6A 09                     576 	.db	9
      000F6B 00 06                  577 	.dw	Sstm8s_gpio$GPIO_Init$22-Sstm8s_gpio$GPIO_Init$21
      000F6D 03                     578 	.db	3
      000F6E 02                     579 	.sleb128	2
      000F6F 01                     580 	.db	1
      000F70 09                     581 	.db	9
      000F71 00 0A                  582 	.dw	Sstm8s_gpio$GPIO_Init$23-Sstm8s_gpio$GPIO_Init$22
      000F73 03                     583 	.db	3
      000F74 04                     584 	.sleb128	4
      000F75 01                     585 	.db	1
      000F76 09                     586 	.db	9
      000F77 00 08                  587 	.dw	Sstm8s_gpio$GPIO_Init$24-Sstm8s_gpio$GPIO_Init$23
      000F79 03                     588 	.db	3
      000F7A 02                     589 	.sleb128	2
      000F7B 01                     590 	.db	1
      000F7C 09                     591 	.db	9
      000F7D 00 09                  592 	.dw	7+Sstm8s_gpio$GPIO_Init$25-Sstm8s_gpio$GPIO_Init$24
      000F7F 00                     593 	.db	0
      000F80 01                     594 	.uleb128	1
      000F81 01                     595 	.db	1
      000F82 00                     596 	.db	0
      000F83 05                     597 	.uleb128	5
      000F84 02                     598 	.db	2
      000F85 00 00 8A 16            599 	.dw	0,(Sstm8s_gpio$GPIO_Write$27)
      000F89 03                     600 	.db	3
      000F8A 85 01                  601 	.sleb128	133
      000F8C 01                     602 	.db	1
      000F8D 09                     603 	.db	9
      000F8E 00 0C                  604 	.dw	Sstm8s_gpio$GPIO_Write$29-Sstm8s_gpio$GPIO_Write$27
      000F90 03                     605 	.db	3
      000F91 02                     606 	.sleb128	2
      000F92 01                     607 	.db	1
      000F93 09                     608 	.db	9
      000F94 00 05                  609 	.dw	Sstm8s_gpio$GPIO_Write$30-Sstm8s_gpio$GPIO_Write$29
      000F96 03                     610 	.db	3
      000F97 01                     611 	.sleb128	1
      000F98 01                     612 	.db	1
      000F99 09                     613 	.db	9
      000F9A 00 07                  614 	.dw	7+Sstm8s_gpio$GPIO_Write$31-Sstm8s_gpio$GPIO_Write$30
      000F9C 00                     615 	.db	0
      000F9D 01                     616 	.uleb128	1
      000F9E 01                     617 	.db	1
      000F9F 00                     618 	.db	0
      000FA0 05                     619 	.uleb128	5
      000FA1 02                     620 	.db	2
      000FA2 00 00 8A 2E            621 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$33)
      000FA6 03                     622 	.db	3
      000FA7 92 01                  623 	.sleb128	146
      000FA9 01                     624 	.db	1
      000FAA 09                     625 	.db	9
      000FAB 00 0C                  626 	.dw	Sstm8s_gpio$GPIO_WriteHigh$35-Sstm8s_gpio$GPIO_WriteHigh$33
      000FAD 03                     627 	.db	3
      000FAE 02                     628 	.sleb128	2
      000FAF 01                     629 	.db	1
      000FB0 09                     630 	.db	9
      000FB1 00 06                  631 	.dw	Sstm8s_gpio$GPIO_WriteHigh$36-Sstm8s_gpio$GPIO_WriteHigh$35
      000FB3 03                     632 	.db	3
      000FB4 01                     633 	.sleb128	1
      000FB5 01                     634 	.db	1
      000FB6 09                     635 	.db	9
      000FB7 00 07                  636 	.dw	7+Sstm8s_gpio$GPIO_WriteHigh$37-Sstm8s_gpio$GPIO_WriteHigh$36
      000FB9 00                     637 	.db	0
      000FBA 01                     638 	.uleb128	1
      000FBB 01                     639 	.db	1
      000FBC 00                     640 	.db	0
      000FBD 05                     641 	.uleb128	5
      000FBE 02                     642 	.db	2
      000FBF 00 00 8A 47            643 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$39)
      000FC3 03                     644 	.db	3
      000FC4 9F 01                  645 	.sleb128	159
      000FC6 01                     646 	.db	1
      000FC7 09                     647 	.db	9
      000FC8 00 0D                  648 	.dw	Sstm8s_gpio$GPIO_WriteLow$41-Sstm8s_gpio$GPIO_WriteLow$39
      000FCA 03                     649 	.db	3
      000FCB 02                     650 	.sleb128	2
      000FCC 01                     651 	.db	1
      000FCD 09                     652 	.db	9
      000FCE 00 0B                  653 	.dw	Sstm8s_gpio$GPIO_WriteLow$42-Sstm8s_gpio$GPIO_WriteLow$41
      000FD0 03                     654 	.db	3
      000FD1 01                     655 	.sleb128	1
      000FD2 01                     656 	.db	1
      000FD3 09                     657 	.db	9
      000FD4 00 08                  658 	.dw	7+Sstm8s_gpio$GPIO_WriteLow$43-Sstm8s_gpio$GPIO_WriteLow$42
      000FD6 00                     659 	.db	0
      000FD7 01                     660 	.uleb128	1
      000FD8 01                     661 	.db	1
      000FD9 00                     662 	.db	0
      000FDA 05                     663 	.uleb128	5
      000FDB 02                     664 	.db	2
      000FDC 00 00 8A 67            665 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$45)
      000FE0 03                     666 	.db	3
      000FE1 AC 01                  667 	.sleb128	172
      000FE3 01                     668 	.db	1
      000FE4 09                     669 	.db	9
      000FE5 00 0C                  670 	.dw	Sstm8s_gpio$GPIO_WriteReverse$47-Sstm8s_gpio$GPIO_WriteReverse$45
      000FE7 03                     671 	.db	3
      000FE8 02                     672 	.sleb128	2
      000FE9 01                     673 	.db	1
      000FEA 09                     674 	.db	9
      000FEB 00 06                  675 	.dw	Sstm8s_gpio$GPIO_WriteReverse$48-Sstm8s_gpio$GPIO_WriteReverse$47
      000FED 03                     676 	.db	3
      000FEE 01                     677 	.sleb128	1
      000FEF 01                     678 	.db	1
      000FF0 09                     679 	.db	9
      000FF1 00 07                  680 	.dw	7+Sstm8s_gpio$GPIO_WriteReverse$49-Sstm8s_gpio$GPIO_WriteReverse$48
      000FF3 00                     681 	.db	0
      000FF4 01                     682 	.uleb128	1
      000FF5 01                     683 	.db	1
      000FF6 00                     684 	.db	0
      000FF7 05                     685 	.uleb128	5
      000FF8 02                     686 	.db	2
      000FF9 00 00 8A 80            687 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$51)
      000FFD 03                     688 	.db	3
      000FFE B7 01                  689 	.sleb128	183
      001000 01                     690 	.db	1
      001001 09                     691 	.db	9
      001002 00 0C                  692 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$53-Sstm8s_gpio$GPIO_ReadOutputData$51
      001004 03                     693 	.db	3
      001005 02                     694 	.sleb128	2
      001006 01                     695 	.db	1
      001007 09                     696 	.db	9
      001008 00 03                  697 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$54-Sstm8s_gpio$GPIO_ReadOutputData$53
      00100A 03                     698 	.db	3
      00100B 01                     699 	.sleb128	1
      00100C 01                     700 	.db	1
      00100D 09                     701 	.db	9
      00100E 00 07                  702 	.dw	7+Sstm8s_gpio$GPIO_ReadOutputData$55-Sstm8s_gpio$GPIO_ReadOutputData$54
      001010 00                     703 	.db	0
      001011 01                     704 	.uleb128	1
      001012 01                     705 	.db	1
      001013 00                     706 	.db	0
      001014 05                     707 	.uleb128	5
      001015 02                     708 	.db	2
      001016 00 00 8A 96            709 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$57)
      00101A 03                     710 	.db	3
      00101B C2 01                  711 	.sleb128	194
      00101D 01                     712 	.db	1
      00101E 09                     713 	.db	9
      00101F 00 0C                  714 	.dw	Sstm8s_gpio$GPIO_ReadInputData$59-Sstm8s_gpio$GPIO_ReadInputData$57
      001021 03                     715 	.db	3
      001022 02                     716 	.sleb128	2
      001023 01                     717 	.db	1
      001024 09                     718 	.db	9
      001025 00 04                  719 	.dw	Sstm8s_gpio$GPIO_ReadInputData$60-Sstm8s_gpio$GPIO_ReadInputData$59
      001027 03                     720 	.db	3
      001028 01                     721 	.sleb128	1
      001029 01                     722 	.db	1
      00102A 09                     723 	.db	9
      00102B 00 07                  724 	.dw	7+Sstm8s_gpio$GPIO_ReadInputData$61-Sstm8s_gpio$GPIO_ReadInputData$60
      00102D 00                     725 	.db	0
      00102E 01                     726 	.uleb128	1
      00102F 01                     727 	.db	1
      001030 00                     728 	.db	0
      001031 05                     729 	.uleb128	5
      001032 02                     730 	.db	2
      001033 00 00 8A AD            731 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
      001037 03                     732 	.db	3
      001038 CD 01                  733 	.sleb128	205
      00103A 01                     734 	.db	1
      00103B 09                     735 	.db	9
      00103C 00 0C                  736 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$65-Sstm8s_gpio$GPIO_ReadInputPin$63
      00103E 03                     737 	.db	3
      00103F 02                     738 	.sleb128	2
      001040 01                     739 	.db	1
      001041 09                     740 	.db	9
      001042 00 06                  741 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$66-Sstm8s_gpio$GPIO_ReadInputPin$65
      001044 03                     742 	.db	3
      001045 01                     743 	.sleb128	1
      001046 01                     744 	.db	1
      001047 09                     745 	.db	9
      001048 00 07                  746 	.dw	7+Sstm8s_gpio$GPIO_ReadInputPin$67-Sstm8s_gpio$GPIO_ReadInputPin$66
      00104A 00                     747 	.db	0
      00104B 01                     748 	.uleb128	1
      00104C 01                     749 	.db	1
      00104D 00                     750 	.db	0
      00104E 05                     751 	.uleb128	5
      00104F 02                     752 	.db	2
      001050 00 00 8A C6            753 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$69)
      001054 03                     754 	.db	3
      001055 D9 01                  755 	.sleb128	217
      001057 01                     756 	.db	1
      001058 09                     757 	.db	9
      001059 00 0D                  758 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$71-Sstm8s_gpio$GPIO_ExternalPullUpConfig$69
      00105B 03                     759 	.db	3
      00105C 06                     760 	.sleb128	6
      00105D 01                     761 	.db	1
      00105E 09                     762 	.db	9
      00105F 00 04                  763 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$72-Sstm8s_gpio$GPIO_ExternalPullUpConfig$71
      001061 03                     764 	.db	3
      001062 02                     765 	.sleb128	2
      001063 01                     766 	.db	1
      001064 09                     767 	.db	9
      001065 00 0B                  768 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$73-Sstm8s_gpio$GPIO_ExternalPullUpConfig$72
      001067 03                     769 	.db	3
      001068 03                     770 	.sleb128	3
      001069 01                     771 	.db	1
      00106A 09                     772 	.db	9
      00106B 00 0E                  773 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$74-Sstm8s_gpio$GPIO_ExternalPullUpConfig$73
      00106D 03                     774 	.db	3
      00106E 02                     775 	.sleb128	2
      00106F 01                     776 	.db	1
      001070 09                     777 	.db	9
      001071 00 08                  778 	.dw	7+Sstm8s_gpio$GPIO_ExternalPullUpConfig$75-Sstm8s_gpio$GPIO_ExternalPullUpConfig$74
      001073 00                     779 	.db	0
      001074 01                     780 	.uleb128	1
      001075 01                     781 	.db	1
      001076                        782 Ldebug_line_end:
                                    783 
                                    784 	.area .debug_loc (NOLOAD)
      0002A8                        785 Ldebug_loc_start:
      0002A8 00 00 8A D2            786 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$70)
      0002AC 00 00 8A F8            787 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$76)
      0002B0 00 02                  788 	.dw	2
      0002B2 8F                     789 	.db	143
      0002B3 01                     790 	.sleb128	1
      0002B4 00 00 00 00            791 	.dw	0,0
      0002B8 00 00 00 00            792 	.dw	0,0
      0002BC 00 00 8A B9            793 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$64)
      0002C0 00 00 8A C6            794 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$68)
      0002C4 00 02                  795 	.dw	2
      0002C6 8F                     796 	.db	143
      0002C7 01                     797 	.sleb128	1
      0002C8 00 00 00 00            798 	.dw	0,0
      0002CC 00 00 00 00            799 	.dw	0,0
      0002D0 00 00 8A A2            800 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$58)
      0002D4 00 00 8A AD            801 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$62)
      0002D8 00 02                  802 	.dw	2
      0002DA 8F                     803 	.db	143
      0002DB 01                     804 	.sleb128	1
      0002DC 00 00 00 00            805 	.dw	0,0
      0002E0 00 00 00 00            806 	.dw	0,0
      0002E4 00 00 8A 8C            807 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$52)
      0002E8 00 00 8A 96            808 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$56)
      0002EC 00 02                  809 	.dw	2
      0002EE 8F                     810 	.db	143
      0002EF 01                     811 	.sleb128	1
      0002F0 00 00 00 00            812 	.dw	0,0
      0002F4 00 00 00 00            813 	.dw	0,0
      0002F8 00 00 8A 73            814 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$46)
      0002FC 00 00 8A 80            815 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$50)
      000300 00 02                  816 	.dw	2
      000302 8F                     817 	.db	143
      000303 01                     818 	.sleb128	1
      000304 00 00 00 00            819 	.dw	0,0
      000308 00 00 00 00            820 	.dw	0,0
      00030C 00 00 8A 53            821 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$40)
      000310 00 00 8A 67            822 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$44)
      000314 00 02                  823 	.dw	2
      000316 8F                     824 	.db	143
      000317 01                     825 	.sleb128	1
      000318 00 00 00 00            826 	.dw	0,0
      00031C 00 00 00 00            827 	.dw	0,0
      000320 00 00 8A 3A            828 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$34)
      000324 00 00 8A 47            829 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$38)
      000328 00 02                  830 	.dw	2
      00032A 8F                     831 	.db	143
      00032B 01                     832 	.sleb128	1
      00032C 00 00 00 00            833 	.dw	0,0
      000330 00 00 00 00            834 	.dw	0,0
      000334 00 00 8A 22            835 	.dw	0,(Sstm8s_gpio$GPIO_Write$28)
      000338 00 00 8A 2E            836 	.dw	0,(Sstm8s_gpio$GPIO_Write$32)
      00033C 00 02                  837 	.dw	2
      00033E 8F                     838 	.db	143
      00033F 01                     839 	.sleb128	1
      000340 00 00 00 00            840 	.dw	0,0
      000344 00 00 00 00            841 	.dw	0,0
      000348 00 00 89 91            842 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      00034C 00 00 8A 16            843 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      000350 00 02                  844 	.dw	2
      000352 8F                     845 	.db	143
      000353 01                     846 	.sleb128	1
      000354 00 00 00 00            847 	.dw	0,0
      000358 00 00 00 00            848 	.dw	0,0
      00035C 00 00 89 62            849 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      000360 00 00 89 85            850 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
      000364 00 02                  851 	.dw	2
      000366 8F                     852 	.db	143
      000367 01                     853 	.sleb128	1
      000368 00 00 00 00            854 	.dw	0,0
      00036C 00 00 00 00            855 	.dw	0,0
                                    856 
                                    857 	.area .debug_abbrev (NOLOAD)
      0001B0                        858 Ldebug_abbrev:
      0001B0 06                     859 	.uleb128	6
      0001B1 0F                     860 	.uleb128	15
      0001B2 00                     861 	.db	0
      0001B3 0B                     862 	.uleb128	11
      0001B4 0B                     863 	.uleb128	11
      0001B5 49                     864 	.uleb128	73
      0001B6 13                     865 	.uleb128	19
      0001B7 00                     866 	.uleb128	0
      0001B8 00                     867 	.uleb128	0
      0001B9 04                     868 	.uleb128	4
      0001BA 35                     869 	.uleb128	53
      0001BB 00                     870 	.db	0
      0001BC 49                     871 	.uleb128	73
      0001BD 13                     872 	.uleb128	19
      0001BE 00                     873 	.uleb128	0
      0001BF 00                     874 	.uleb128	0
      0001C0 0A                     875 	.uleb128	10
      0001C1 0B                     876 	.uleb128	11
      0001C2 00                     877 	.db	0
      0001C3 00                     878 	.uleb128	0
      0001C4 00                     879 	.uleb128	0
      0001C5 07                     880 	.uleb128	7
      0001C6 05                     881 	.uleb128	5
      0001C7 00                     882 	.db	0
      0001C8 02                     883 	.uleb128	2
      0001C9 0A                     884 	.uleb128	10
      0001CA 03                     885 	.uleb128	3
      0001CB 08                     886 	.uleb128	8
      0001CC 49                     887 	.uleb128	73
      0001CD 13                     888 	.uleb128	19
      0001CE 00                     889 	.uleb128	0
      0001CF 00                     890 	.uleb128	0
      0001D0 02                     891 	.uleb128	2
      0001D1 2E                     892 	.uleb128	46
      0001D2 01                     893 	.db	1
      0001D3 01                     894 	.uleb128	1
      0001D4 13                     895 	.uleb128	19
      0001D5 03                     896 	.uleb128	3
      0001D6 08                     897 	.uleb128	8
      0001D7 11                     898 	.uleb128	17
      0001D8 01                     899 	.uleb128	1
      0001D9 12                     900 	.uleb128	18
      0001DA 01                     901 	.uleb128	1
      0001DB 3F                     902 	.uleb128	63
      0001DC 0C                     903 	.uleb128	12
      0001DD 40                     904 	.uleb128	64
      0001DE 06                     905 	.uleb128	6
      0001DF 00                     906 	.uleb128	0
      0001E0 00                     907 	.uleb128	0
      0001E1 0B                     908 	.uleb128	11
      0001E2 2E                     909 	.uleb128	46
      0001E3 01                     910 	.db	1
      0001E4 01                     911 	.uleb128	1
      0001E5 13                     912 	.uleb128	19
      0001E6 03                     913 	.uleb128	3
      0001E7 08                     914 	.uleb128	8
      0001E8 11                     915 	.uleb128	17
      0001E9 01                     916 	.uleb128	1
      0001EA 12                     917 	.uleb128	18
      0001EB 01                     918 	.uleb128	1
      0001EC 3F                     919 	.uleb128	63
      0001ED 0C                     920 	.uleb128	12
      0001EE 40                     921 	.uleb128	64
      0001EF 06                     922 	.uleb128	6
      0001F0 49                     923 	.uleb128	73
      0001F1 13                     924 	.uleb128	19
      0001F2 00                     925 	.uleb128	0
      0001F3 00                     926 	.uleb128	0
      0001F4 09                     927 	.uleb128	9
      0001F5 0B                     928 	.uleb128	11
      0001F6 01                     929 	.db	1
      0001F7 01                     930 	.uleb128	1
      0001F8 13                     931 	.uleb128	19
      0001F9 00                     932 	.uleb128	0
      0001FA 00                     933 	.uleb128	0
      0001FB 01                     934 	.uleb128	1
      0001FC 11                     935 	.uleb128	17
      0001FD 01                     936 	.db	1
      0001FE 03                     937 	.uleb128	3
      0001FF 08                     938 	.uleb128	8
      000200 10                     939 	.uleb128	16
      000201 06                     940 	.uleb128	6
      000202 13                     941 	.uleb128	19
      000203 0B                     942 	.uleb128	11
      000204 25                     943 	.uleb128	37
      000205 08                     944 	.uleb128	8
      000206 00                     945 	.uleb128	0
      000207 00                     946 	.uleb128	0
      000208 05                     947 	.uleb128	5
      000209 0D                     948 	.uleb128	13
      00020A 00                     949 	.db	0
      00020B 03                     950 	.uleb128	3
      00020C 08                     951 	.uleb128	8
      00020D 38                     952 	.uleb128	56
      00020E 0A                     953 	.uleb128	10
      00020F 49                     954 	.uleb128	73
      000210 13                     955 	.uleb128	19
      000211 00                     956 	.uleb128	0
      000212 00                     957 	.uleb128	0
      000213 0C                     958 	.uleb128	12
      000214 2E                     959 	.uleb128	46
      000215 01                     960 	.db	1
      000216 03                     961 	.uleb128	3
      000217 08                     962 	.uleb128	8
      000218 11                     963 	.uleb128	17
      000219 01                     964 	.uleb128	1
      00021A 12                     965 	.uleb128	18
      00021B 01                     966 	.uleb128	1
      00021C 3F                     967 	.uleb128	63
      00021D 0C                     968 	.uleb128	12
      00021E 40                     969 	.uleb128	64
      00021F 06                     970 	.uleb128	6
      000220 00                     971 	.uleb128	0
      000221 00                     972 	.uleb128	0
      000222 03                     973 	.uleb128	3
      000223 13                     974 	.uleb128	19
      000224 01                     975 	.db	1
      000225 01                     976 	.uleb128	1
      000226 13                     977 	.uleb128	19
      000227 03                     978 	.uleb128	3
      000228 08                     979 	.uleb128	8
      000229 0B                     980 	.uleb128	11
      00022A 0B                     981 	.uleb128	11
      00022B 00                     982 	.uleb128	0
      00022C 00                     983 	.uleb128	0
      00022D 08                     984 	.uleb128	8
      00022E 24                     985 	.uleb128	36
      00022F 00                     986 	.db	0
      000230 03                     987 	.uleb128	3
      000231 08                     988 	.uleb128	8
      000232 0B                     989 	.uleb128	11
      000233 0B                     990 	.uleb128	11
      000234 3E                     991 	.uleb128	62
      000235 0B                     992 	.uleb128	11
      000236 00                     993 	.uleb128	0
      000237 00                     994 	.uleb128	0
      000238 00                     995 	.uleb128	0
                                    996 
                                    997 	.area .debug_info (NOLOAD)
      000AE5 00 00 03 60            998 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000AE9                        999 Ldebug_info_start:
      000AE9 00 02                 1000 	.dw	2
      000AEB 00 00 01 B0           1001 	.dw	0,(Ldebug_abbrev)
      000AEF 04                    1002 	.db	4
      000AF0 01                    1003 	.uleb128	1
      000AF1 53 74 64 50 65 72 69  1004 	.ascii "StdPeriphLib/src/stm8s_gpio.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 67 70 69 6F 2E
             63
      000B0E 00                    1005 	.db	0
      000B0F 00 00 0D CC           1006 	.dw	0,(Ldebug_line_start+-4)
      000B13 01                    1007 	.db	1
      000B14 53 44 43 43 20 76 65  1008 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      000B2C 00                    1009 	.db	0
      000B2D 02                    1010 	.uleb128	2
      000B2E 00 00 00 CF           1011 	.dw	0,207
      000B32 47 50 49 4F 5F 44 65  1012 	.ascii "GPIO_DeInit"
             49 6E 69 74
      000B3D 00                    1013 	.db	0
      000B3E 00 00 89 56           1014 	.dw	0,(_GPIO_DeInit)
      000B42 00 00 89 85           1015 	.dw	0,(XG$GPIO_DeInit$0$0+7)
      000B46 01                    1016 	.db	1
      000B47 00 00 03 5C           1017 	.dw	0,(Ldebug_loc_start+180)
      000B4B 03                    1018 	.uleb128	3
      000B4C 00 00 00 BA           1019 	.dw	0,186
      000B50 47 50 49 4F 5F 73 74  1020 	.ascii "GPIO_struct"
             72 75 63 74
      000B5B 00                    1021 	.db	0
      000B5C 05                    1022 	.db	5
      000B5D 04                    1023 	.uleb128	4
      000B5E 00 00 00 CF           1024 	.dw	0,207
      000B62 05                    1025 	.uleb128	5
      000B63 4F 44 52              1026 	.ascii "ODR"
      000B66 00                    1027 	.db	0
      000B67 02                    1028 	.db	2
      000B68 23                    1029 	.db	35
      000B69 00                    1030 	.uleb128	0
      000B6A 00 00 00 78           1031 	.dw	0,120
      000B6E 05                    1032 	.uleb128	5
      000B6F 49 44 52              1033 	.ascii "IDR"
      000B72 00                    1034 	.db	0
      000B73 02                    1035 	.db	2
      000B74 23                    1036 	.db	35
      000B75 01                    1037 	.uleb128	1
      000B76 00 00 00 78           1038 	.dw	0,120
      000B7A 05                    1039 	.uleb128	5
      000B7B 44 44 52              1040 	.ascii "DDR"
      000B7E 00                    1041 	.db	0
      000B7F 02                    1042 	.db	2
      000B80 23                    1043 	.db	35
      000B81 02                    1044 	.uleb128	2
      000B82 00 00 00 78           1045 	.dw	0,120
      000B86 05                    1046 	.uleb128	5
      000B87 43 52 31              1047 	.ascii "CR1"
      000B8A 00                    1048 	.db	0
      000B8B 02                    1049 	.db	2
      000B8C 23                    1050 	.db	35
      000B8D 03                    1051 	.uleb128	3
      000B8E 00 00 00 78           1052 	.dw	0,120
      000B92 05                    1053 	.uleb128	5
      000B93 43 52 32              1054 	.ascii "CR2"
      000B96 00                    1055 	.db	0
      000B97 02                    1056 	.db	2
      000B98 23                    1057 	.db	35
      000B99 04                    1058 	.uleb128	4
      000B9A 00 00 00 78           1059 	.dw	0,120
      000B9E 00                    1060 	.uleb128	0
      000B9F 06                    1061 	.uleb128	6
      000BA0 02                    1062 	.db	2
      000BA1 00 00 00 66           1063 	.dw	0,102
      000BA5 07                    1064 	.uleb128	7
      000BA6 02                    1065 	.db	2
      000BA7 91                    1066 	.db	145
      000BA8 04                    1067 	.sleb128	4
      000BA9 47 50 49 4F 78        1068 	.ascii "GPIOx"
      000BAE 00                    1069 	.db	0
      000BAF 00 00 00 BA           1070 	.dw	0,186
      000BB3 00                    1071 	.uleb128	0
      000BB4 08                    1072 	.uleb128	8
      000BB5 75 6E 73 69 67 6E 65  1073 	.ascii "unsigned char"
             64 20 63 68 61 72
      000BC2 00                    1074 	.db	0
      000BC3 01                    1075 	.db	1
      000BC4 08                    1076 	.db	8
      000BC5 02                    1077 	.uleb128	2
      000BC6 00 00 01 3B           1078 	.dw	0,315
      000BCA 47 50 49 4F 5F 49 6E  1079 	.ascii "GPIO_Init"
             69 74
      000BD3 00                    1080 	.db	0
      000BD4 00 00 89 85           1081 	.dw	0,(_GPIO_Init)
      000BD8 00 00 8A 16           1082 	.dw	0,(XG$GPIO_Init$0$0+7)
      000BDC 01                    1083 	.db	1
      000BDD 00 00 03 48           1084 	.dw	0,(Ldebug_loc_start+160)
      000BE1 07                    1085 	.uleb128	7
      000BE2 02                    1086 	.db	2
      000BE3 91                    1087 	.db	145
      000BE4 04                    1088 	.sleb128	4
      000BE5 47 50 49 4F 78        1089 	.ascii "GPIOx"
      000BEA 00                    1090 	.db	0
      000BEB 00 00 00 BA           1091 	.dw	0,186
      000BEF 07                    1092 	.uleb128	7
      000BF0 02                    1093 	.db	2
      000BF1 91                    1094 	.db	145
      000BF2 06                    1095 	.sleb128	6
      000BF3 47 50 49 4F 5F 50 69  1096 	.ascii "GPIO_Pin"
             6E
      000BFB 00                    1097 	.db	0
      000BFC 00 00 01 3B           1098 	.dw	0,315
      000C00 07                    1099 	.uleb128	7
      000C01 02                    1100 	.db	2
      000C02 91                    1101 	.db	145
      000C03 07                    1102 	.sleb128	7
      000C04 47 50 49 4F 5F 4D 6F  1103 	.ascii "GPIO_Mode"
             64 65
      000C0D 00                    1104 	.db	0
      000C0E 00 00 01 3B           1105 	.dw	0,315
      000C12 09                    1106 	.uleb128	9
      000C13 00 00 01 35           1107 	.dw	0,309
      000C17 0A                    1108 	.uleb128	10
      000C18 0A                    1109 	.uleb128	10
      000C19 00                    1110 	.uleb128	0
      000C1A 0A                    1111 	.uleb128	10
      000C1B 0A                    1112 	.uleb128	10
      000C1C 0A                    1113 	.uleb128	10
      000C1D 0A                    1114 	.uleb128	10
      000C1E 0A                    1115 	.uleb128	10
      000C1F 00                    1116 	.uleb128	0
      000C20 08                    1117 	.uleb128	8
      000C21 75 6E 73 69 67 6E 65  1118 	.ascii "unsigned char"
             64 20 63 68 61 72
      000C2E 00                    1119 	.db	0
      000C2F 01                    1120 	.db	1
      000C30 08                    1121 	.db	8
      000C31 02                    1122 	.uleb128	2
      000C32 00 00 01 88           1123 	.dw	0,392
      000C36 47 50 49 4F 5F 57 72  1124 	.ascii "GPIO_Write"
             69 74 65
      000C40 00                    1125 	.db	0
      000C41 00 00 8A 16           1126 	.dw	0,(_GPIO_Write)
      000C45 00 00 8A 2E           1127 	.dw	0,(XG$GPIO_Write$0$0+7)
      000C49 01                    1128 	.db	1
      000C4A 00 00 03 34           1129 	.dw	0,(Ldebug_loc_start+140)
      000C4E 07                    1130 	.uleb128	7
      000C4F 02                    1131 	.db	2
      000C50 91                    1132 	.db	145
      000C51 04                    1133 	.sleb128	4
      000C52 47 50 49 4F 78        1134 	.ascii "GPIOx"
      000C57 00                    1135 	.db	0
      000C58 00 00 00 BA           1136 	.dw	0,186
      000C5C 07                    1137 	.uleb128	7
      000C5D 02                    1138 	.db	2
      000C5E 91                    1139 	.db	145
      000C5F 06                    1140 	.sleb128	6
      000C60 50 6F 72 74 56 61 6C  1141 	.ascii "PortVal"
      000C67 00                    1142 	.db	0
      000C68 00 00 01 3B           1143 	.dw	0,315
      000C6C 00                    1144 	.uleb128	0
      000C6D 02                    1145 	.uleb128	2
      000C6E 00 00 01 C9           1146 	.dw	0,457
      000C72 47 50 49 4F 5F 57 72  1147 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000C80 00                    1148 	.db	0
      000C81 00 00 8A 2E           1149 	.dw	0,(_GPIO_WriteHigh)
      000C85 00 00 8A 47           1150 	.dw	0,(XG$GPIO_WriteHigh$0$0+7)
      000C89 01                    1151 	.db	1
      000C8A 00 00 03 20           1152 	.dw	0,(Ldebug_loc_start+120)
      000C8E 07                    1153 	.uleb128	7
      000C8F 02                    1154 	.db	2
      000C90 91                    1155 	.db	145
      000C91 04                    1156 	.sleb128	4
      000C92 47 50 49 4F 78        1157 	.ascii "GPIOx"
      000C97 00                    1158 	.db	0
      000C98 00 00 00 BA           1159 	.dw	0,186
      000C9C 07                    1160 	.uleb128	7
      000C9D 02                    1161 	.db	2
      000C9E 91                    1162 	.db	145
      000C9F 06                    1163 	.sleb128	6
      000CA0 50 6F 72 74 50 69 6E  1164 	.ascii "PortPins"
             73
      000CA8 00                    1165 	.db	0
      000CA9 00 00 01 3B           1166 	.dw	0,315
      000CAD 00                    1167 	.uleb128	0
      000CAE 02                    1168 	.uleb128	2
      000CAF 00 00 02 09           1169 	.dw	0,521
      000CB3 47 50 49 4F 5F 57 72  1170 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000CC0 00                    1171 	.db	0
      000CC1 00 00 8A 47           1172 	.dw	0,(_GPIO_WriteLow)
      000CC5 00 00 8A 67           1173 	.dw	0,(XG$GPIO_WriteLow$0$0+7)
      000CC9 01                    1174 	.db	1
      000CCA 00 00 03 0C           1175 	.dw	0,(Ldebug_loc_start+100)
      000CCE 07                    1176 	.uleb128	7
      000CCF 02                    1177 	.db	2
      000CD0 91                    1178 	.db	145
      000CD1 04                    1179 	.sleb128	4
      000CD2 47 50 49 4F 78        1180 	.ascii "GPIOx"
      000CD7 00                    1181 	.db	0
      000CD8 00 00 00 BA           1182 	.dw	0,186
      000CDC 07                    1183 	.uleb128	7
      000CDD 02                    1184 	.db	2
      000CDE 91                    1185 	.db	145
      000CDF 06                    1186 	.sleb128	6
      000CE0 50 6F 72 74 50 69 6E  1187 	.ascii "PortPins"
             73
      000CE8 00                    1188 	.db	0
      000CE9 00 00 01 3B           1189 	.dw	0,315
      000CED 00                    1190 	.uleb128	0
      000CEE 02                    1191 	.uleb128	2
      000CEF 00 00 02 4D           1192 	.dw	0,589
      000CF3 47 50 49 4F 5F 57 72  1193 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      000D04 00                    1194 	.db	0
      000D05 00 00 8A 67           1195 	.dw	0,(_GPIO_WriteReverse)
      000D09 00 00 8A 80           1196 	.dw	0,(XG$GPIO_WriteReverse$0$0+7)
      000D0D 01                    1197 	.db	1
      000D0E 00 00 02 F8           1198 	.dw	0,(Ldebug_loc_start+80)
      000D12 07                    1199 	.uleb128	7
      000D13 02                    1200 	.db	2
      000D14 91                    1201 	.db	145
      000D15 04                    1202 	.sleb128	4
      000D16 47 50 49 4F 78        1203 	.ascii "GPIOx"
      000D1B 00                    1204 	.db	0
      000D1C 00 00 00 BA           1205 	.dw	0,186
      000D20 07                    1206 	.uleb128	7
      000D21 02                    1207 	.db	2
      000D22 91                    1208 	.db	145
      000D23 06                    1209 	.sleb128	6
      000D24 50 6F 72 74 50 69 6E  1210 	.ascii "PortPins"
             73
      000D2C 00                    1211 	.db	0
      000D2D 00 00 01 3B           1212 	.dw	0,315
      000D31 00                    1213 	.uleb128	0
      000D32 0B                    1214 	.uleb128	11
      000D33 00 00 02 86           1215 	.dw	0,646
      000D37 47 50 49 4F 5F 52 65  1216 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      000D4A 00                    1217 	.db	0
      000D4B 00 00 8A 80           1218 	.dw	0,(_GPIO_ReadOutputData)
      000D4F 00 00 8A 96           1219 	.dw	0,(XG$GPIO_ReadOutputData$0$0+7)
      000D53 01                    1220 	.db	1
      000D54 00 00 02 E4           1221 	.dw	0,(Ldebug_loc_start+60)
      000D58 00 00 01 3B           1222 	.dw	0,315
      000D5C 07                    1223 	.uleb128	7
      000D5D 02                    1224 	.db	2
      000D5E 91                    1225 	.db	145
      000D5F 04                    1226 	.sleb128	4
      000D60 47 50 49 4F 78        1227 	.ascii "GPIOx"
      000D65 00                    1228 	.db	0
      000D66 00 00 00 BA           1229 	.dw	0,186
      000D6A 00                    1230 	.uleb128	0
      000D6B 0B                    1231 	.uleb128	11
      000D6C 00 00 02 BE           1232 	.dw	0,702
      000D70 47 50 49 4F 5F 52 65  1233 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      000D82 00                    1234 	.db	0
      000D83 00 00 8A 96           1235 	.dw	0,(_GPIO_ReadInputData)
      000D87 00 00 8A AD           1236 	.dw	0,(XG$GPIO_ReadInputData$0$0+7)
      000D8B 01                    1237 	.db	1
      000D8C 00 00 02 D0           1238 	.dw	0,(Ldebug_loc_start+40)
      000D90 00 00 01 3B           1239 	.dw	0,315
      000D94 07                    1240 	.uleb128	7
      000D95 02                    1241 	.db	2
      000D96 91                    1242 	.db	145
      000D97 04                    1243 	.sleb128	4
      000D98 47 50 49 4F 78        1244 	.ascii "GPIOx"
      000D9D 00                    1245 	.db	0
      000D9E 00 00 00 BA           1246 	.dw	0,186
      000DA2 00                    1247 	.uleb128	0
      000DA3 0B                    1248 	.uleb128	11
      000DA4 00 00 03 06           1249 	.dw	0,774
      000DA8 47 50 49 4F 5F 52 65  1250 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      000DB9 00                    1251 	.db	0
      000DBA 00 00 8A AD           1252 	.dw	0,(_GPIO_ReadInputPin)
      000DBE 00 00 8A C6           1253 	.dw	0,(XG$GPIO_ReadInputPin$0$0+7)
      000DC2 01                    1254 	.db	1
      000DC3 00 00 02 BC           1255 	.dw	0,(Ldebug_loc_start+20)
      000DC7 00 00 01 3B           1256 	.dw	0,315
      000DCB 07                    1257 	.uleb128	7
      000DCC 02                    1258 	.db	2
      000DCD 91                    1259 	.db	145
      000DCE 04                    1260 	.sleb128	4
      000DCF 47 50 49 4F 78        1261 	.ascii "GPIOx"
      000DD4 00                    1262 	.db	0
      000DD5 00 00 00 BA           1263 	.dw	0,186
      000DD9 07                    1264 	.uleb128	7
      000DDA 02                    1265 	.db	2
      000DDB 91                    1266 	.db	145
      000DDC 06                    1267 	.sleb128	6
      000DDD 47 50 49 4F 5F 50 69  1268 	.ascii "GPIO_Pin"
             6E
      000DE5 00                    1269 	.db	0
      000DE6 00 00 01 3B           1270 	.dw	0,315
      000DEA 00                    1271 	.uleb128	0
      000DEB 0C                    1272 	.uleb128	12
      000DEC 47 50 49 4F 5F 45 78  1273 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      000E05 00                    1274 	.db	0
      000E06 00 00 8A C6           1275 	.dw	0,(_GPIO_ExternalPullUpConfig)
      000E0A 00 00 8A F8           1276 	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+7)
      000E0E 01                    1277 	.db	1
      000E0F 00 00 02 A8           1278 	.dw	0,(Ldebug_loc_start)
      000E13 07                    1279 	.uleb128	7
      000E14 02                    1280 	.db	2
      000E15 91                    1281 	.db	145
      000E16 04                    1282 	.sleb128	4
      000E17 47 50 49 4F 78        1283 	.ascii "GPIOx"
      000E1C 00                    1284 	.db	0
      000E1D 00 00 00 BA           1285 	.dw	0,186
      000E21 07                    1286 	.uleb128	7
      000E22 02                    1287 	.db	2
      000E23 91                    1288 	.db	145
      000E24 06                    1289 	.sleb128	6
      000E25 47 50 49 4F 5F 50 69  1290 	.ascii "GPIO_Pin"
             6E
      000E2D 00                    1291 	.db	0
      000E2E 00 00 01 3B           1292 	.dw	0,315
      000E32 07                    1293 	.uleb128	7
      000E33 02                    1294 	.db	2
      000E34 91                    1295 	.db	145
      000E35 07                    1296 	.sleb128	7
      000E36 4E 65 77 53 74 61 74  1297 	.ascii "NewState"
             65
      000E3E 00                    1298 	.db	0
      000E3F 00 00 01 3B           1299 	.dw	0,315
      000E43 0A                    1300 	.uleb128	10
      000E44 0A                    1301 	.uleb128	10
      000E45 00                    1302 	.uleb128	0
      000E46 00                    1303 	.uleb128	0
      000E47 00                    1304 	.uleb128	0
      000E48 00                    1305 	.uleb128	0
      000E49                       1306 Ldebug_info_end:
                                   1307 
                                   1308 	.area .debug_pubnames (NOLOAD)
      0003E2 00 00 00 D9           1309 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0003E6                       1310 Ldebug_pubnames_start:
      0003E6 00 02                 1311 	.dw	2
      0003E8 00 00 0A E5           1312 	.dw	0,(Ldebug_info_start-4)
      0003EC 00 00 03 64           1313 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0003F0 00 00 00 48           1314 	.dw	0,72
      0003F4 47 50 49 4F 5F 44 65  1315 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0003FF 00                    1316 	.db	0
      000400 00 00 00 E0           1317 	.dw	0,224
      000404 47 50 49 4F 5F 49 6E  1318 	.ascii "GPIO_Init"
             69 74
      00040D 00                    1319 	.db	0
      00040E 00 00 01 4C           1320 	.dw	0,332
      000412 47 50 49 4F 5F 57 72  1321 	.ascii "GPIO_Write"
             69 74 65
      00041C 00                    1322 	.db	0
      00041D 00 00 01 88           1323 	.dw	0,392
      000421 47 50 49 4F 5F 57 72  1324 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      00042F 00                    1325 	.db	0
      000430 00 00 01 C9           1326 	.dw	0,457
      000434 47 50 49 4F 5F 57 72  1327 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000441 00                    1328 	.db	0
      000442 00 00 02 09           1329 	.dw	0,521
      000446 47 50 49 4F 5F 57 72  1330 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      000457 00                    1331 	.db	0
      000458 00 00 02 4D           1332 	.dw	0,589
      00045C 47 50 49 4F 5F 52 65  1333 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      00046F 00                    1334 	.db	0
      000470 00 00 02 86           1335 	.dw	0,646
      000474 47 50 49 4F 5F 52 65  1336 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      000486 00                    1337 	.db	0
      000487 00 00 02 BE           1338 	.dw	0,702
      00048B 47 50 49 4F 5F 52 65  1339 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      00049C 00                    1340 	.db	0
      00049D 00 00 03 06           1341 	.dw	0,774
      0004A1 47 50 49 4F 5F 45 78  1342 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      0004BA 00                    1343 	.db	0
      0004BB 00 00 00 00           1344 	.dw	0,0
      0004BF                       1345 Ldebug_pubnames_end:
                                   1346 
                                   1347 	.area .debug_frame (NOLOAD)
      000048 00 00                 1348 	.dw	0
      00004A 00 0E                 1349 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      00004C                       1350 Ldebug_CIE_start:
      00004C FF FF                 1351 	.dw	0xffff
      00004E FF FF                 1352 	.dw	0xffff
      000050 01                    1353 	.db	1
      000051 00                    1354 	.db	0
      000052 01                    1355 	.uleb128	1
      000053 01                    1356 	.sleb128	1
      000054 00                    1357 	.db	0
      000055 0C                    1358 	.db	12
      000056 00                    1359 	.uleb128	0
      000057 00                    1360 	.uleb128	0
      000058 80                    1361 	.db	128
      000059 00                    1362 	.uleb128	0
      00005A                       1363 Ldebug_CIE_end:
