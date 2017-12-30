                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM2_DeInit
                                     12 	.globl _TIM2_TimeBaseInit
                                     13 	.globl _TIM2_OC1Init
                                     14 	.globl _TIM2_OC2Init
                                     15 	.globl _TIM2_OC3Init
                                     16 	.globl _TIM2_ICInit
                                     17 	.globl _TIM2_PWMIConfig
                                     18 	.globl _TIM2_Cmd
                                     19 	.globl _TIM2_ITConfig
                                     20 	.globl _TIM2_UpdateDisableConfig
                                     21 	.globl _TIM2_UpdateRequestConfig
                                     22 	.globl _TIM2_SelectOnePulseMode
                                     23 	.globl _TIM2_PrescalerConfig
                                     24 	.globl _TIM2_ForcedOC1Config
                                     25 	.globl _TIM2_ForcedOC2Config
                                     26 	.globl _TIM2_ForcedOC3Config
                                     27 	.globl _TIM2_ARRPreloadConfig
                                     28 	.globl _TIM2_OC1PreloadConfig
                                     29 	.globl _TIM2_OC2PreloadConfig
                                     30 	.globl _TIM2_OC3PreloadConfig
                                     31 	.globl _TIM2_GenerateEvent
                                     32 	.globl _TIM2_OC1PolarityConfig
                                     33 	.globl _TIM2_OC2PolarityConfig
                                     34 	.globl _TIM2_OC3PolarityConfig
                                     35 	.globl _TIM2_CCxCmd
                                     36 	.globl _TIM2_SelectOCxM
                                     37 	.globl _TIM2_SetCounter
                                     38 	.globl _TIM2_SetAutoreload
                                     39 	.globl _TIM2_SetCompare1
                                     40 	.globl _TIM2_SetCompare2
                                     41 	.globl _TIM2_SetCompare3
                                     42 	.globl _TIM2_SetIC1Prescaler
                                     43 	.globl _TIM2_SetIC2Prescaler
                                     44 	.globl _TIM2_SetIC3Prescaler
                                     45 	.globl _TIM2_GetCapture1
                                     46 	.globl _TIM2_GetCapture2
                                     47 	.globl _TIM2_GetCapture3
                                     48 	.globl _TIM2_GetCounter
                                     49 	.globl _TIM2_GetPrescaler
                                     50 	.globl _TIM2_GetFlagStatus
                                     51 	.globl _TIM2_ClearFlag
                                     52 	.globl _TIM2_GetITStatus
                                     53 	.globl _TIM2_ClearITPendingBit
                                     54 ;--------------------------------------------------------
                                     55 ; ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area DATA
                                     58 ;--------------------------------------------------------
                                     59 ; ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area INITIALIZED
                                     62 ;--------------------------------------------------------
                                     63 ; absolute external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area DABS (ABS)
                                     66 ;--------------------------------------------------------
                                     67 ; global & static initialisations
                                     68 ;--------------------------------------------------------
                                     69 	.area HOME
                                     70 	.area GSINIT
                                     71 	.area GSFINAL
                                     72 	.area GSINIT
                                     73 ;--------------------------------------------------------
                                     74 ; Home
                                     75 ;--------------------------------------------------------
                                     76 	.area HOME
                                     77 	.area HOME
                                     78 ;--------------------------------------------------------
                                     79 ; code
                                     80 ;--------------------------------------------------------
                                     81 	.area CODE
                           000000    82 	Sstm8s_tim2$TIM2_DeInit$0 ==.
                                     83 ;	StdPeriphLib/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
                                     84 ;	-----------------------------------------
                                     85 ;	 function TIM2_DeInit
                                     86 ;	-----------------------------------------
      00A32B                         87 _TIM2_DeInit:
      00A32B 3B 01 A5         [ 1]   88 	push	_fp_+1
      00A32E 3B 01 A4         [ 1]   89 	push	_fp_
      00A331 90 96            [ 1]   90 	ldw	y, sp
      00A333 90 CF 01 A4      [ 2]   91 	ldw	_fp_, y
                           00000C    92 	Sstm8s_tim2$TIM2_DeInit$1 ==.
                           00000C    93 	Sstm8s_tim2$TIM2_DeInit$2 ==.
                                     94 ;	StdPeriphLib/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
      00A337 35 00 53 00      [ 1]   95 	mov	0x5300+0, #0x00
                           000010    96 	Sstm8s_tim2$TIM2_DeInit$3 ==.
                                     97 ;	StdPeriphLib/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
      00A33B 35 00 53 01      [ 1]   98 	mov	0x5301+0, #0x00
                           000014    99 	Sstm8s_tim2$TIM2_DeInit$4 ==.
                                    100 ;	StdPeriphLib/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
      00A33F 35 00 53 03      [ 1]  101 	mov	0x5303+0, #0x00
                           000018   102 	Sstm8s_tim2$TIM2_DeInit$5 ==.
                                    103 ;	StdPeriphLib/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      00A343 35 00 53 08      [ 1]  104 	mov	0x5308+0, #0x00
                           00001C   105 	Sstm8s_tim2$TIM2_DeInit$6 ==.
                                    106 ;	StdPeriphLib/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      00A347 35 00 53 09      [ 1]  107 	mov	0x5309+0, #0x00
                           000020   108 	Sstm8s_tim2$TIM2_DeInit$7 ==.
                                    109 ;	StdPeriphLib/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      00A34B 35 00 53 08      [ 1]  110 	mov	0x5308+0, #0x00
                           000024   111 	Sstm8s_tim2$TIM2_DeInit$8 ==.
                                    112 ;	StdPeriphLib/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      00A34F 35 00 53 09      [ 1]  113 	mov	0x5309+0, #0x00
                           000028   114 	Sstm8s_tim2$TIM2_DeInit$9 ==.
                                    115 ;	StdPeriphLib/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
      00A353 35 00 53 05      [ 1]  116 	mov	0x5305+0, #0x00
                           00002C   117 	Sstm8s_tim2$TIM2_DeInit$10 ==.
                                    118 ;	StdPeriphLib/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
      00A357 35 00 53 06      [ 1]  119 	mov	0x5306+0, #0x00
                           000030   120 	Sstm8s_tim2$TIM2_DeInit$11 ==.
                                    121 ;	StdPeriphLib/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
      00A35B 35 00 53 07      [ 1]  122 	mov	0x5307+0, #0x00
                           000034   123 	Sstm8s_tim2$TIM2_DeInit$12 ==.
                                    124 ;	StdPeriphLib/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
      00A35F 35 00 53 0A      [ 1]  125 	mov	0x530a+0, #0x00
                           000038   126 	Sstm8s_tim2$TIM2_DeInit$13 ==.
                                    127 ;	StdPeriphLib/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
      00A363 35 00 53 0B      [ 1]  128 	mov	0x530b+0, #0x00
                           00003C   129 	Sstm8s_tim2$TIM2_DeInit$14 ==.
                                    130 ;	StdPeriphLib/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
      00A367 35 00 53 0C      [ 1]  131 	mov	0x530c+0, #0x00
                           000040   132 	Sstm8s_tim2$TIM2_DeInit$15 ==.
                                    133 ;	StdPeriphLib/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
      00A36B 35 FF 53 0D      [ 1]  134 	mov	0x530d+0, #0xff
                           000044   135 	Sstm8s_tim2$TIM2_DeInit$16 ==.
                                    136 ;	StdPeriphLib/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
      00A36F 35 FF 53 0E      [ 1]  137 	mov	0x530e+0, #0xff
                           000048   138 	Sstm8s_tim2$TIM2_DeInit$17 ==.
                                    139 ;	StdPeriphLib/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
      00A373 35 00 53 0F      [ 1]  140 	mov	0x530f+0, #0x00
                           00004C   141 	Sstm8s_tim2$TIM2_DeInit$18 ==.
                                    142 ;	StdPeriphLib/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
      00A377 35 00 53 10      [ 1]  143 	mov	0x5310+0, #0x00
                           000050   144 	Sstm8s_tim2$TIM2_DeInit$19 ==.
                                    145 ;	StdPeriphLib/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
      00A37B 35 00 53 11      [ 1]  146 	mov	0x5311+0, #0x00
                           000054   147 	Sstm8s_tim2$TIM2_DeInit$20 ==.
                                    148 ;	StdPeriphLib/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
      00A37F 35 00 53 12      [ 1]  149 	mov	0x5312+0, #0x00
                           000058   150 	Sstm8s_tim2$TIM2_DeInit$21 ==.
                                    151 ;	StdPeriphLib/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
      00A383 35 00 53 13      [ 1]  152 	mov	0x5313+0, #0x00
                           00005C   153 	Sstm8s_tim2$TIM2_DeInit$22 ==.
                                    154 ;	StdPeriphLib/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
      00A387 35 00 53 14      [ 1]  155 	mov	0x5314+0, #0x00
                           000060   156 	Sstm8s_tim2$TIM2_DeInit$23 ==.
                                    157 ;	StdPeriphLib/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
      00A38B 35 00 53 02      [ 1]  158 	mov	0x5302+0, #0x00
                           000064   159 	Sstm8s_tim2$TIM2_DeInit$24 ==.
                                    160 ;	StdPeriphLib/src/stm8s_tim2.c: 81: }
                           000064   161 	Sstm8s_tim2$TIM2_DeInit$25 ==.
                           000064   162 	XG$TIM2_DeInit$0$0 ==.
      00A38F 32 01 A4         [ 1]  163 	pop	_fp_
      00A392 32 01 A5         [ 1]  164 	pop	_fp_+1
      00A395 81               [ 4]  165 	ret
                           00006B   166 	Sstm8s_tim2$TIM2_DeInit$26 ==.
                           00006B   167 	Sstm8s_tim2$TIM2_TimeBaseInit$27 ==.
                                    168 ;	StdPeriphLib/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                                    169 ;	-----------------------------------------
                                    170 ;	 function TIM2_TimeBaseInit
                                    171 ;	-----------------------------------------
      00A396                        172 _TIM2_TimeBaseInit:
      00A396 3B 01 A5         [ 1]  173 	push	_fp_+1
      00A399 3B 01 A4         [ 1]  174 	push	_fp_
      00A39C 90 96            [ 1]  175 	ldw	y, sp
      00A39E 90 CF 01 A4      [ 2]  176 	ldw	_fp_, y
                           000077   177 	Sstm8s_tim2$TIM2_TimeBaseInit$28 ==.
      00A3A2 52 02            [ 2]  178 	sub	sp, #2
                           000079   179 	Sstm8s_tim2$TIM2_TimeBaseInit$29 ==.
                                    180 ;	StdPeriphLib/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
      00A3A4 AE 53 0C         [ 2]  181 	ldw	x, #0x530c
      00A3A7 7B 07            [ 1]  182 	ld	a, (0x07, sp)
      00A3A9 F7               [ 1]  183 	ld	(x), a
                           00007F   184 	Sstm8s_tim2$TIM2_TimeBaseInit$30 ==.
                                    185 ;	StdPeriphLib/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
      00A3AA 7B 08            [ 1]  186 	ld	a, (0x08, sp)
      00A3AC 0F 01            [ 1]  187 	clr	(0x01, sp)
      00A3AE AE 53 0D         [ 2]  188 	ldw	x, #0x530d
      00A3B1 F7               [ 1]  189 	ld	(x), a
                           000087   190 	Sstm8s_tim2$TIM2_TimeBaseInit$31 ==.
                                    191 ;	StdPeriphLib/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
      00A3B2 7B 09            [ 1]  192 	ld	a, (0x09, sp)
      00A3B4 AE 53 0E         [ 2]  193 	ldw	x, #0x530e
      00A3B7 F7               [ 1]  194 	ld	(x), a
                           00008D   195 	Sstm8s_tim2$TIM2_TimeBaseInit$32 ==.
                                    196 ;	StdPeriphLib/src/stm8s_tim2.c: 97: }
      00A3B8 5B 02            [ 2]  197 	addw	sp, #2
                           00008F   198 	Sstm8s_tim2$TIM2_TimeBaseInit$33 ==.
                           00008F   199 	XG$TIM2_TimeBaseInit$0$0 ==.
      00A3BA 32 01 A4         [ 1]  200 	pop	_fp_
      00A3BD 32 01 A5         [ 1]  201 	pop	_fp_+1
      00A3C0 81               [ 4]  202 	ret
                           000096   203 	Sstm8s_tim2$TIM2_TimeBaseInit$34 ==.
                           000096   204 	Sstm8s_tim2$TIM2_OC1Init$35 ==.
                                    205 ;	StdPeriphLib/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    206 ;	-----------------------------------------
                                    207 ;	 function TIM2_OC1Init
                                    208 ;	-----------------------------------------
      00A3C1                        209 _TIM2_OC1Init:
      00A3C1 3B 01 A5         [ 1]  210 	push	_fp_+1
      00A3C4 3B 01 A4         [ 1]  211 	push	_fp_
      00A3C7 90 96            [ 1]  212 	ldw	y, sp
      00A3C9 90 CF 01 A4      [ 2]  213 	ldw	_fp_, y
                           0000A2   214 	Sstm8s_tim2$TIM2_OC1Init$36 ==.
      00A3CD 52 04            [ 2]  215 	sub	sp, #4
                           0000A4   216 	Sstm8s_tim2$TIM2_OC1Init$37 ==.
                                    217 ;	StdPeriphLib/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
      00A3CF AE 53 08         [ 2]  218 	ldw	x, #0x5308
      00A3D2 F6               [ 1]  219 	ld	a, (x)
      00A3D3 A4 FC            [ 1]  220 	and	a, #0xfc
      00A3D5 F7               [ 1]  221 	ld	(x), a
                           0000AB   222 	Sstm8s_tim2$TIM2_OC1Init$38 ==.
                                    223 ;	StdPeriphLib/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) |
      00A3D6 AE 53 08         [ 2]  224 	ldw	x, #0x5308
      00A3D9 F6               [ 1]  225 	ld	a, (x)
      00A3DA 6B 04            [ 1]  226 	ld	(0x04, sp), a
      00A3DC 7B 0A            [ 1]  227 	ld	a, (0x0a, sp)
      00A3DE A4 01            [ 1]  228 	and	a, #0x01
      00A3E0 6B 03            [ 1]  229 	ld	(0x03, sp), a
                           0000B7   230 	Sstm8s_tim2$TIM2_OC1Init$39 ==.
                                    231 ;	StdPeriphLib/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
      00A3E2 7B 0D            [ 1]  232 	ld	a, (0x0d, sp)
      00A3E4 A4 02            [ 1]  233 	and	a, #0x02
      00A3E6 1A 03            [ 1]  234 	or	a, (0x03, sp)
      00A3E8 1A 04            [ 1]  235 	or	a, (0x04, sp)
      00A3EA AE 53 08         [ 2]  236 	ldw	x, #0x5308
      00A3ED F7               [ 1]  237 	ld	(x), a
                           0000C3   238 	Sstm8s_tim2$TIM2_OC1Init$40 ==.
                                    239 ;	StdPeriphLib/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00A3EE AE 53 05         [ 2]  240 	ldw	x, #0x5305
      00A3F1 F6               [ 1]  241 	ld	a, (x)
      00A3F2 A4 8F            [ 1]  242 	and	a, #0x8f
                           0000C9   243 	Sstm8s_tim2$TIM2_OC1Init$41 ==.
                                    244 ;	StdPeriphLib/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
      00A3F4 1A 09            [ 1]  245 	or	a, (0x09, sp)
      00A3F6 AE 53 05         [ 2]  246 	ldw	x, #0x5305
      00A3F9 F7               [ 1]  247 	ld	(x), a
                           0000CF   248 	Sstm8s_tim2$TIM2_OC1Init$42 ==.
                                    249 ;	StdPeriphLib/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
      00A3FA 7B 0B            [ 1]  250 	ld	a, (0x0b, sp)
      00A3FC 0F 01            [ 1]  251 	clr	(0x01, sp)
      00A3FE AE 53 0F         [ 2]  252 	ldw	x, #0x530f
      00A401 F7               [ 1]  253 	ld	(x), a
                           0000D7   254 	Sstm8s_tim2$TIM2_OC1Init$43 ==.
                                    255 ;	StdPeriphLib/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
      00A402 7B 0C            [ 1]  256 	ld	a, (0x0c, sp)
      00A404 AE 53 10         [ 2]  257 	ldw	x, #0x5310
      00A407 F7               [ 1]  258 	ld	(x), a
                           0000DD   259 	Sstm8s_tim2$TIM2_OC1Init$44 ==.
                                    260 ;	StdPeriphLib/src/stm8s_tim2.c: 131: }
      00A408 5B 04            [ 2]  261 	addw	sp, #4
                           0000DF   262 	Sstm8s_tim2$TIM2_OC1Init$45 ==.
                           0000DF   263 	XG$TIM2_OC1Init$0$0 ==.
      00A40A 32 01 A4         [ 1]  264 	pop	_fp_
      00A40D 32 01 A5         [ 1]  265 	pop	_fp_+1
      00A410 81               [ 4]  266 	ret
                           0000E6   267 	Sstm8s_tim2$TIM2_OC1Init$46 ==.
                           0000E6   268 	Sstm8s_tim2$TIM2_OC2Init$47 ==.
                                    269 ;	StdPeriphLib/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    270 ;	-----------------------------------------
                                    271 ;	 function TIM2_OC2Init
                                    272 ;	-----------------------------------------
      00A411                        273 _TIM2_OC2Init:
      00A411 3B 01 A5         [ 1]  274 	push	_fp_+1
      00A414 3B 01 A4         [ 1]  275 	push	_fp_
      00A417 90 96            [ 1]  276 	ldw	y, sp
      00A419 90 CF 01 A4      [ 2]  277 	ldw	_fp_, y
                           0000F2   278 	Sstm8s_tim2$TIM2_OC2Init$48 ==.
      00A41D 52 04            [ 2]  279 	sub	sp, #4
                           0000F4   280 	Sstm8s_tim2$TIM2_OC2Init$49 ==.
                                    281 ;	StdPeriphLib/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
      00A41F AE 53 08         [ 2]  282 	ldw	x, #0x5308
      00A422 F6               [ 1]  283 	ld	a, (x)
      00A423 A4 CF            [ 1]  284 	and	a, #0xcf
      00A425 F7               [ 1]  285 	ld	(x), a
                           0000FB   286 	Sstm8s_tim2$TIM2_OC2Init$50 ==.
                                    287 ;	StdPeriphLib/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
      00A426 AE 53 08         [ 2]  288 	ldw	x, #0x5308
      00A429 F6               [ 1]  289 	ld	a, (x)
      00A42A 6B 04            [ 1]  290 	ld	(0x04, sp), a
      00A42C 7B 0A            [ 1]  291 	ld	a, (0x0a, sp)
      00A42E A4 10            [ 1]  292 	and	a, #0x10
      00A430 6B 01            [ 1]  293 	ld	(0x01, sp), a
                           000107   294 	Sstm8s_tim2$TIM2_OC2Init$51 ==.
                                    295 ;	StdPeriphLib/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
      00A432 7B 0D            [ 1]  296 	ld	a, (0x0d, sp)
      00A434 A4 20            [ 1]  297 	and	a, #0x20
      00A436 1A 01            [ 1]  298 	or	a, (0x01, sp)
      00A438 1A 04            [ 1]  299 	or	a, (0x04, sp)
      00A43A AE 53 08         [ 2]  300 	ldw	x, #0x5308
      00A43D F7               [ 1]  301 	ld	(x), a
                           000113   302 	Sstm8s_tim2$TIM2_OC2Init$52 ==.
                                    303 ;	StdPeriphLib/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00A43E AE 53 06         [ 2]  304 	ldw	x, #0x5306
      00A441 F6               [ 1]  305 	ld	a, (x)
      00A442 A4 8F            [ 1]  306 	and	a, #0x8f
                           000119   307 	Sstm8s_tim2$TIM2_OC2Init$53 ==.
                                    308 ;	StdPeriphLib/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
      00A444 1A 09            [ 1]  309 	or	a, (0x09, sp)
      00A446 AE 53 06         [ 2]  310 	ldw	x, #0x5306
      00A449 F7               [ 1]  311 	ld	(x), a
                           00011F   312 	Sstm8s_tim2$TIM2_OC2Init$54 ==.
                                    313 ;	StdPeriphLib/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
      00A44A 7B 0B            [ 1]  314 	ld	a, (0x0b, sp)
      00A44C 0F 02            [ 1]  315 	clr	(0x02, sp)
      00A44E AE 53 11         [ 2]  316 	ldw	x, #0x5311
      00A451 F7               [ 1]  317 	ld	(x), a
                           000127   318 	Sstm8s_tim2$TIM2_OC2Init$55 ==.
                                    319 ;	StdPeriphLib/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
      00A452 7B 0C            [ 1]  320 	ld	a, (0x0c, sp)
      00A454 AE 53 12         [ 2]  321 	ldw	x, #0x5312
      00A457 F7               [ 1]  322 	ld	(x), a
                           00012D   323 	Sstm8s_tim2$TIM2_OC2Init$56 ==.
                                    324 ;	StdPeriphLib/src/stm8s_tim2.c: 168: }
      00A458 5B 04            [ 2]  325 	addw	sp, #4
                           00012F   326 	Sstm8s_tim2$TIM2_OC2Init$57 ==.
                           00012F   327 	XG$TIM2_OC2Init$0$0 ==.
      00A45A 32 01 A4         [ 1]  328 	pop	_fp_
      00A45D 32 01 A5         [ 1]  329 	pop	_fp_+1
      00A460 81               [ 4]  330 	ret
                           000136   331 	Sstm8s_tim2$TIM2_OC2Init$58 ==.
                           000136   332 	Sstm8s_tim2$TIM2_OC3Init$59 ==.
                                    333 ;	StdPeriphLib/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    334 ;	-----------------------------------------
                                    335 ;	 function TIM2_OC3Init
                                    336 ;	-----------------------------------------
      00A461                        337 _TIM2_OC3Init:
      00A461 3B 01 A5         [ 1]  338 	push	_fp_+1
      00A464 3B 01 A4         [ 1]  339 	push	_fp_
      00A467 90 96            [ 1]  340 	ldw	y, sp
      00A469 90 CF 01 A4      [ 2]  341 	ldw	_fp_, y
                           000142   342 	Sstm8s_tim2$TIM2_OC3Init$60 ==.
      00A46D 52 04            [ 2]  343 	sub	sp, #4
                           000144   344 	Sstm8s_tim2$TIM2_OC3Init$61 ==.
                                    345 ;	StdPeriphLib/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
      00A46F AE 53 09         [ 2]  346 	ldw	x, #0x5309
      00A472 F6               [ 1]  347 	ld	a, (x)
      00A473 A4 FC            [ 1]  348 	and	a, #0xfc
      00A475 F7               [ 1]  349 	ld	(x), a
                           00014B   350 	Sstm8s_tim2$TIM2_OC3Init$62 ==.
                                    351 ;	StdPeriphLib/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |
      00A476 AE 53 09         [ 2]  352 	ldw	x, #0x5309
      00A479 F6               [ 1]  353 	ld	a, (x)
      00A47A 6B 03            [ 1]  354 	ld	(0x03, sp), a
      00A47C 7B 0A            [ 1]  355 	ld	a, (0x0a, sp)
      00A47E A4 01            [ 1]  356 	and	a, #0x01
      00A480 6B 04            [ 1]  357 	ld	(0x04, sp), a
                           000157   358 	Sstm8s_tim2$TIM2_OC3Init$63 ==.
                                    359 ;	StdPeriphLib/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
      00A482 7B 0D            [ 1]  360 	ld	a, (0x0d, sp)
      00A484 A4 02            [ 1]  361 	and	a, #0x02
      00A486 1A 04            [ 1]  362 	or	a, (0x04, sp)
      00A488 1A 03            [ 1]  363 	or	a, (0x03, sp)
      00A48A AE 53 09         [ 2]  364 	ldw	x, #0x5309
      00A48D F7               [ 1]  365 	ld	(x), a
                           000163   366 	Sstm8s_tim2$TIM2_OC3Init$64 ==.
                                    367 ;	StdPeriphLib/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00A48E AE 53 07         [ 2]  368 	ldw	x, #0x5307
      00A491 F6               [ 1]  369 	ld	a, (x)
      00A492 A4 8F            [ 1]  370 	and	a, #0x8f
                           000169   371 	Sstm8s_tim2$TIM2_OC3Init$65 ==.
                                    372 ;	StdPeriphLib/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
      00A494 1A 09            [ 1]  373 	or	a, (0x09, sp)
      00A496 AE 53 07         [ 2]  374 	ldw	x, #0x5307
      00A499 F7               [ 1]  375 	ld	(x), a
                           00016F   376 	Sstm8s_tim2$TIM2_OC3Init$66 ==.
                                    377 ;	StdPeriphLib/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
      00A49A 7B 0B            [ 1]  378 	ld	a, (0x0b, sp)
      00A49C 0F 01            [ 1]  379 	clr	(0x01, sp)
      00A49E AE 53 13         [ 2]  380 	ldw	x, #0x5313
      00A4A1 F7               [ 1]  381 	ld	(x), a
                           000177   382 	Sstm8s_tim2$TIM2_OC3Init$67 ==.
                                    383 ;	StdPeriphLib/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
      00A4A2 7B 0C            [ 1]  384 	ld	a, (0x0c, sp)
      00A4A4 AE 53 14         [ 2]  385 	ldw	x, #0x5314
      00A4A7 F7               [ 1]  386 	ld	(x), a
                           00017D   387 	Sstm8s_tim2$TIM2_OC3Init$68 ==.
                                    388 ;	StdPeriphLib/src/stm8s_tim2.c: 201: }
      00A4A8 5B 04            [ 2]  389 	addw	sp, #4
                           00017F   390 	Sstm8s_tim2$TIM2_OC3Init$69 ==.
                           00017F   391 	XG$TIM2_OC3Init$0$0 ==.
      00A4AA 32 01 A4         [ 1]  392 	pop	_fp_
      00A4AD 32 01 A5         [ 1]  393 	pop	_fp_+1
      00A4B0 81               [ 4]  394 	ret
                           000186   395 	Sstm8s_tim2$TIM2_OC3Init$70 ==.
                           000186   396 	Sstm8s_tim2$TIM2_ICInit$71 ==.
                                    397 ;	StdPeriphLib/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
                                    398 ;	-----------------------------------------
                                    399 ;	 function TIM2_ICInit
                                    400 ;	-----------------------------------------
      00A4B1                        401 _TIM2_ICInit:
      00A4B1 3B 01 A5         [ 1]  402 	push	_fp_+1
      00A4B4 3B 01 A4         [ 1]  403 	push	_fp_
      00A4B7 90 96            [ 1]  404 	ldw	y, sp
      00A4B9 90 CF 01 A4      [ 2]  405 	ldw	_fp_, y
                           000192   406 	Sstm8s_tim2$TIM2_ICInit$72 ==.
                           000192   407 	Sstm8s_tim2$TIM2_ICInit$73 ==.
                                    408 ;	StdPeriphLib/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
      00A4BD 0D 05            [ 1]  409 	tnz	(0x05, sp)
      00A4BF 26 17            [ 1]  410 	jrne	00105$
                           000196   411 	Sstm8s_tim2$TIM2_ICInit$74 ==.
                                    412 ;	StdPeriphLib/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
      00A4C1 7B 09            [ 1]  413 	ld	a, (0x09, sp)
      00A4C3 88               [ 1]  414 	push	a
      00A4C4 7B 08            [ 1]  415 	ld	a, (0x08, sp)
      00A4C6 88               [ 1]  416 	push	a
      00A4C7 7B 08            [ 1]  417 	ld	a, (0x08, sp)
      00A4C9 88               [ 1]  418 	push	a
      00A4CA CD AB 44         [ 4]  419 	call	_TI1_Config
      00A4CD 5B 03            [ 2]  420 	addw	sp, #3
                           0001A4   421 	Sstm8s_tim2$TIM2_ICInit$75 ==.
                                    422 ;	StdPeriphLib/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00A4CF 7B 08            [ 1]  423 	ld	a, (0x08, sp)
      00A4D1 88               [ 1]  424 	push	a
      00A4D2 CD A9 68         [ 4]  425 	call	_TIM2_SetIC1Prescaler
      00A4D5 84               [ 1]  426 	pop	a
      00A4D6 20 32            [ 2]  427 	jra	00107$
      00A4D8                        428 00105$:
                           0001AD   429 	Sstm8s_tim2$TIM2_ICInit$76 ==.
                                    430 ;	StdPeriphLib/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00A4D8 7B 05            [ 1]  431 	ld	a, (0x05, sp)
      00A4DA A1 01            [ 1]  432 	cp	a, #0x01
      00A4DC 26 17            [ 1]  433 	jrne	00102$
                           0001B3   434 	Sstm8s_tim2$TIM2_ICInit$77 ==.
                                    435 ;	StdPeriphLib/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
      00A4DE 7B 09            [ 1]  436 	ld	a, (0x09, sp)
      00A4E0 88               [ 1]  437 	push	a
      00A4E1 7B 08            [ 1]  438 	ld	a, (0x08, sp)
      00A4E3 88               [ 1]  439 	push	a
      00A4E4 7B 08            [ 1]  440 	ld	a, (0x08, sp)
      00A4E6 88               [ 1]  441 	push	a
      00A4E7 CD AB 8A         [ 4]  442 	call	_TI2_Config
      00A4EA 5B 03            [ 2]  443 	addw	sp, #3
                           0001C1   444 	Sstm8s_tim2$TIM2_ICInit$78 ==.
                                    445 ;	StdPeriphLib/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00A4EC 7B 08            [ 1]  446 	ld	a, (0x08, sp)
      00A4EE 88               [ 1]  447 	push	a
      00A4EF CD A9 87         [ 4]  448 	call	_TIM2_SetIC2Prescaler
      00A4F2 84               [ 1]  449 	pop	a
      00A4F3 20 15            [ 2]  450 	jra	00107$
      00A4F5                        451 00102$:
                           0001CA   452 	Sstm8s_tim2$TIM2_ICInit$79 ==.
                                    453 ;	StdPeriphLib/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
      00A4F5 7B 09            [ 1]  454 	ld	a, (0x09, sp)
      00A4F7 88               [ 1]  455 	push	a
      00A4F8 7B 08            [ 1]  456 	ld	a, (0x08, sp)
      00A4FA 88               [ 1]  457 	push	a
      00A4FB 7B 08            [ 1]  458 	ld	a, (0x08, sp)
      00A4FD 88               [ 1]  459 	push	a
      00A4FE CD AB D6         [ 4]  460 	call	_TI3_Config
      00A501 5B 03            [ 2]  461 	addw	sp, #3
                           0001D8   462 	Sstm8s_tim2$TIM2_ICInit$80 ==.
                                    463 ;	StdPeriphLib/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
      00A503 7B 08            [ 1]  464 	ld	a, (0x08, sp)
      00A505 88               [ 1]  465 	push	a
      00A506 CD A9 A6         [ 4]  466 	call	_TIM2_SetIC3Prescaler
      00A509 84               [ 1]  467 	pop	a
      00A50A                        468 00107$:
                           0001DF   469 	Sstm8s_tim2$TIM2_ICInit$81 ==.
                                    470 ;	StdPeriphLib/src/stm8s_tim2.c: 255: }
                           0001DF   471 	Sstm8s_tim2$TIM2_ICInit$82 ==.
                           0001DF   472 	XG$TIM2_ICInit$0$0 ==.
      00A50A 32 01 A4         [ 1]  473 	pop	_fp_
      00A50D 32 01 A5         [ 1]  474 	pop	_fp_+1
      00A510 81               [ 4]  475 	ret
                           0001E6   476 	Sstm8s_tim2$TIM2_ICInit$83 ==.
                           0001E6   477 	Sstm8s_tim2$TIM2_PWMIConfig$84 ==.
                                    478 ;	StdPeriphLib/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
                                    479 ;	-----------------------------------------
                                    480 ;	 function TIM2_PWMIConfig
                                    481 ;	-----------------------------------------
      00A511                        482 _TIM2_PWMIConfig:
      00A511 3B 01 A5         [ 1]  483 	push	_fp_+1
      00A514 3B 01 A4         [ 1]  484 	push	_fp_
      00A517 90 96            [ 1]  485 	ldw	y, sp
      00A519 90 CF 01 A4      [ 2]  486 	ldw	_fp_, y
                           0001F2   487 	Sstm8s_tim2$TIM2_PWMIConfig$85 ==.
      00A51D 52 02            [ 2]  488 	sub	sp, #2
                           0001F4   489 	Sstm8s_tim2$TIM2_PWMIConfig$86 ==.
                                    490 ;	StdPeriphLib/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
      00A51F 7B 08            [ 1]  491 	ld	a, (0x08, sp)
      00A521 A1 44            [ 1]  492 	cp	a, #0x44
      00A523 27 06            [ 1]  493 	jreq	00102$
                           0001FA   494 	Sstm8s_tim2$TIM2_PWMIConfig$87 ==.
                                    495 ;	StdPeriphLib/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
      00A525 A6 44            [ 1]  496 	ld	a, #0x44
      00A527 6B 02            [ 1]  497 	ld	(0x02, sp), a
      00A529 20 02            [ 2]  498 	jra	00103$
      00A52B                        499 00102$:
                           000200   500 	Sstm8s_tim2$TIM2_PWMIConfig$88 ==.
                                    501 ;	StdPeriphLib/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
      00A52B 0F 02            [ 1]  502 	clr	(0x02, sp)
      00A52D                        503 00103$:
                           000202   504 	Sstm8s_tim2$TIM2_PWMIConfig$89 ==.
                                    505 ;	StdPeriphLib/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
      00A52D 7B 09            [ 1]  506 	ld	a, (0x09, sp)
      00A52F A1 01            [ 1]  507 	cp	a, #0x01
      00A531 26 06            [ 1]  508 	jrne	00105$
                           000208   509 	Sstm8s_tim2$TIM2_PWMIConfig$90 ==.
                                    510 ;	StdPeriphLib/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
      00A533 A6 02            [ 1]  511 	ld	a, #0x02
      00A535 6B 01            [ 1]  512 	ld	(0x01, sp), a
      00A537 20 04            [ 2]  513 	jra	00106$
      00A539                        514 00105$:
                           00020E   515 	Sstm8s_tim2$TIM2_PWMIConfig$91 ==.
                                    516 ;	StdPeriphLib/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
      00A539 A6 01            [ 1]  517 	ld	a, #0x01
      00A53B 6B 01            [ 1]  518 	ld	(0x01, sp), a
      00A53D                        519 00106$:
                           000212   520 	Sstm8s_tim2$TIM2_PWMIConfig$92 ==.
                                    521 ;	StdPeriphLib/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
      00A53D 0D 07            [ 1]  522 	tnz	(0x07, sp)
      00A53F 26 2C            [ 1]  523 	jrne	00108$
                           000216   524 	Sstm8s_tim2$TIM2_PWMIConfig$93 ==.
                                    525 ;	StdPeriphLib/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00A541 7B 0B            [ 1]  526 	ld	a, (0x0b, sp)
      00A543 88               [ 1]  527 	push	a
      00A544 7B 0A            [ 1]  528 	ld	a, (0x0a, sp)
      00A546 88               [ 1]  529 	push	a
      00A547 7B 0A            [ 1]  530 	ld	a, (0x0a, sp)
      00A549 88               [ 1]  531 	push	a
      00A54A CD AB 44         [ 4]  532 	call	_TI1_Config
      00A54D 5B 03            [ 2]  533 	addw	sp, #3
                           000224   534 	Sstm8s_tim2$TIM2_PWMIConfig$94 ==.
                                    535 ;	StdPeriphLib/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00A54F 7B 0A            [ 1]  536 	ld	a, (0x0a, sp)
      00A551 88               [ 1]  537 	push	a
      00A552 CD A9 68         [ 4]  538 	call	_TIM2_SetIC1Prescaler
      00A555 84               [ 1]  539 	pop	a
                           00022B   540 	Sstm8s_tim2$TIM2_PWMIConfig$95 ==.
                                    541 ;	StdPeriphLib/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
      00A556 7B 0B            [ 1]  542 	ld	a, (0x0b, sp)
      00A558 88               [ 1]  543 	push	a
      00A559 7B 02            [ 1]  544 	ld	a, (0x02, sp)
      00A55B 88               [ 1]  545 	push	a
      00A55C 7B 04            [ 1]  546 	ld	a, (0x04, sp)
      00A55E 88               [ 1]  547 	push	a
      00A55F CD AB 8A         [ 4]  548 	call	_TI2_Config
      00A562 5B 03            [ 2]  549 	addw	sp, #3
                           000239   550 	Sstm8s_tim2$TIM2_PWMIConfig$96 ==.
                                    551 ;	StdPeriphLib/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00A564 7B 0A            [ 1]  552 	ld	a, (0x0a, sp)
      00A566 88               [ 1]  553 	push	a
      00A567 CD A9 87         [ 4]  554 	call	_TIM2_SetIC2Prescaler
      00A56A 84               [ 1]  555 	pop	a
      00A56B 20 2A            [ 2]  556 	jra	00110$
      00A56D                        557 00108$:
                           000242   558 	Sstm8s_tim2$TIM2_PWMIConfig$97 ==.
                                    559 ;	StdPeriphLib/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00A56D 7B 0B            [ 1]  560 	ld	a, (0x0b, sp)
      00A56F 88               [ 1]  561 	push	a
      00A570 7B 0A            [ 1]  562 	ld	a, (0x0a, sp)
      00A572 88               [ 1]  563 	push	a
      00A573 7B 0A            [ 1]  564 	ld	a, (0x0a, sp)
      00A575 88               [ 1]  565 	push	a
      00A576 CD AB 8A         [ 4]  566 	call	_TI2_Config
      00A579 5B 03            [ 2]  567 	addw	sp, #3
                           000250   568 	Sstm8s_tim2$TIM2_PWMIConfig$98 ==.
                                    569 ;	StdPeriphLib/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00A57B 7B 0A            [ 1]  570 	ld	a, (0x0a, sp)
      00A57D 88               [ 1]  571 	push	a
      00A57E CD A9 87         [ 4]  572 	call	_TIM2_SetIC2Prescaler
      00A581 84               [ 1]  573 	pop	a
                           000257   574 	Sstm8s_tim2$TIM2_PWMIConfig$99 ==.
                                    575 ;	StdPeriphLib/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
      00A582 7B 0B            [ 1]  576 	ld	a, (0x0b, sp)
      00A584 88               [ 1]  577 	push	a
      00A585 7B 02            [ 1]  578 	ld	a, (0x02, sp)
      00A587 88               [ 1]  579 	push	a
      00A588 7B 04            [ 1]  580 	ld	a, (0x04, sp)
      00A58A 88               [ 1]  581 	push	a
      00A58B CD AB 44         [ 4]  582 	call	_TI1_Config
      00A58E 5B 03            [ 2]  583 	addw	sp, #3
                           000265   584 	Sstm8s_tim2$TIM2_PWMIConfig$100 ==.
                                    585 ;	StdPeriphLib/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00A590 7B 0A            [ 1]  586 	ld	a, (0x0a, sp)
      00A592 88               [ 1]  587 	push	a
      00A593 CD A9 68         [ 4]  588 	call	_TIM2_SetIC1Prescaler
      00A596 84               [ 1]  589 	pop	a
      00A597                        590 00110$:
                           00026C   591 	Sstm8s_tim2$TIM2_PWMIConfig$101 ==.
                                    592 ;	StdPeriphLib/src/stm8s_tim2.c: 331: }
      00A597 5B 02            [ 2]  593 	addw	sp, #2
                           00026E   594 	Sstm8s_tim2$TIM2_PWMIConfig$102 ==.
                           00026E   595 	XG$TIM2_PWMIConfig$0$0 ==.
      00A599 32 01 A4         [ 1]  596 	pop	_fp_
      00A59C 32 01 A5         [ 1]  597 	pop	_fp_+1
      00A59F 81               [ 4]  598 	ret
                           000275   599 	Sstm8s_tim2$TIM2_PWMIConfig$103 ==.
                           000275   600 	Sstm8s_tim2$TIM2_Cmd$104 ==.
                                    601 ;	StdPeriphLib/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
                                    602 ;	-----------------------------------------
                                    603 ;	 function TIM2_Cmd
                                    604 ;	-----------------------------------------
      00A5A0                        605 _TIM2_Cmd:
      00A5A0 3B 01 A5         [ 1]  606 	push	_fp_+1
      00A5A3 3B 01 A4         [ 1]  607 	push	_fp_
      00A5A6 90 96            [ 1]  608 	ldw	y, sp
      00A5A8 90 CF 01 A4      [ 2]  609 	ldw	_fp_, y
                           000281   610 	Sstm8s_tim2$TIM2_Cmd$105 ==.
                           000281   611 	Sstm8s_tim2$TIM2_Cmd$106 ==.
                                    612 ;	StdPeriphLib/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
      00A5AC 0D 05            [ 1]  613 	tnz	(0x05, sp)
      00A5AE 27 06            [ 1]  614 	jreq	00102$
                           000285   615 	Sstm8s_tim2$TIM2_Cmd$107 ==.
                                    616 ;	StdPeriphLib/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      00A5B0 72 10 53 00      [ 1]  617 	bset	0x5300, #0
      00A5B4 20 04            [ 2]  618 	jra	00104$
      00A5B6                        619 00102$:
                           00028B   620 	Sstm8s_tim2$TIM2_Cmd$108 ==.
                                    621 ;	StdPeriphLib/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
      00A5B6 72 11 53 00      [ 1]  622 	bres	0x5300, #0
      00A5BA                        623 00104$:
                           00028F   624 	Sstm8s_tim2$TIM2_Cmd$109 ==.
                                    625 ;	StdPeriphLib/src/stm8s_tim2.c: 353: }
                           00028F   626 	Sstm8s_tim2$TIM2_Cmd$110 ==.
                           00028F   627 	XG$TIM2_Cmd$0$0 ==.
      00A5BA 32 01 A4         [ 1]  628 	pop	_fp_
      00A5BD 32 01 A5         [ 1]  629 	pop	_fp_+1
      00A5C0 81               [ 4]  630 	ret
                           000296   631 	Sstm8s_tim2$TIM2_Cmd$111 ==.
                           000296   632 	Sstm8s_tim2$TIM2_ITConfig$112 ==.
                                    633 ;	StdPeriphLib/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
                                    634 ;	-----------------------------------------
                                    635 ;	 function TIM2_ITConfig
                                    636 ;	-----------------------------------------
      00A5C1                        637 _TIM2_ITConfig:
      00A5C1 3B 01 A5         [ 1]  638 	push	_fp_+1
      00A5C4 3B 01 A4         [ 1]  639 	push	_fp_
      00A5C7 90 96            [ 1]  640 	ldw	y, sp
      00A5C9 90 CF 01 A4      [ 2]  641 	ldw	_fp_, y
                           0002A2   642 	Sstm8s_tim2$TIM2_ITConfig$113 ==.
      00A5CD 88               [ 1]  643 	push	a
                           0002A3   644 	Sstm8s_tim2$TIM2_ITConfig$114 ==.
                                    645 ;	StdPeriphLib/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
      00A5CE 0D 07            [ 1]  646 	tnz	(0x07, sp)
      00A5D0 27 0C            [ 1]  647 	jreq	00102$
                           0002A7   648 	Sstm8s_tim2$TIM2_ITConfig$115 ==.
                                    649 ;	StdPeriphLib/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      00A5D2 AE 53 01         [ 2]  650 	ldw	x, #0x5301
      00A5D5 F6               [ 1]  651 	ld	a, (x)
      00A5D6 1A 06            [ 1]  652 	or	a, (0x06, sp)
      00A5D8 AE 53 01         [ 2]  653 	ldw	x, #0x5301
      00A5DB F7               [ 1]  654 	ld	(x), a
      00A5DC 20 0F            [ 2]  655 	jra	00104$
      00A5DE                        656 00102$:
                           0002B3   657 	Sstm8s_tim2$TIM2_ITConfig$116 ==.
                                    658 ;	StdPeriphLib/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
      00A5DE AE 53 01         [ 2]  659 	ldw	x, #0x5301
      00A5E1 F6               [ 1]  660 	ld	a, (x)
      00A5E2 6B 01            [ 1]  661 	ld	(0x01, sp), a
      00A5E4 7B 06            [ 1]  662 	ld	a, (0x06, sp)
      00A5E6 43               [ 1]  663 	cpl	a
      00A5E7 14 01            [ 1]  664 	and	a, (0x01, sp)
      00A5E9 AE 53 01         [ 2]  665 	ldw	x, #0x5301
      00A5EC F7               [ 1]  666 	ld	(x), a
      00A5ED                        667 00104$:
                           0002C2   668 	Sstm8s_tim2$TIM2_ITConfig$117 ==.
                                    669 ;	StdPeriphLib/src/stm8s_tim2.c: 384: }
      00A5ED 84               [ 1]  670 	pop	a
                           0002C3   671 	Sstm8s_tim2$TIM2_ITConfig$118 ==.
                           0002C3   672 	XG$TIM2_ITConfig$0$0 ==.
      00A5EE 32 01 A4         [ 1]  673 	pop	_fp_
      00A5F1 32 01 A5         [ 1]  674 	pop	_fp_+1
      00A5F4 81               [ 4]  675 	ret
                           0002CA   676 	Sstm8s_tim2$TIM2_ITConfig$119 ==.
                           0002CA   677 	Sstm8s_tim2$TIM2_UpdateDisableConfig$120 ==.
                                    678 ;	StdPeriphLib/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
                                    679 ;	-----------------------------------------
                                    680 ;	 function TIM2_UpdateDisableConfig
                                    681 ;	-----------------------------------------
      00A5F5                        682 _TIM2_UpdateDisableConfig:
      00A5F5 3B 01 A5         [ 1]  683 	push	_fp_+1
      00A5F8 3B 01 A4         [ 1]  684 	push	_fp_
      00A5FB 90 96            [ 1]  685 	ldw	y, sp
      00A5FD 90 CF 01 A4      [ 2]  686 	ldw	_fp_, y
                           0002D6   687 	Sstm8s_tim2$TIM2_UpdateDisableConfig$121 ==.
                           0002D6   688 	Sstm8s_tim2$TIM2_UpdateDisableConfig$122 ==.
                                    689 ;	StdPeriphLib/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
      00A601 0D 05            [ 1]  690 	tnz	(0x05, sp)
      00A603 27 09            [ 1]  691 	jreq	00102$
                           0002DA   692 	Sstm8s_tim2$TIM2_UpdateDisableConfig$123 ==.
                                    693 ;	StdPeriphLib/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      00A605 AE 53 00         [ 2]  694 	ldw	x, #0x5300
      00A608 F6               [ 1]  695 	ld	a, (x)
      00A609 AA 02            [ 1]  696 	or	a, #0x02
      00A60B F7               [ 1]  697 	ld	(x), a
      00A60C 20 07            [ 2]  698 	jra	00104$
      00A60E                        699 00102$:
                           0002E3   700 	Sstm8s_tim2$TIM2_UpdateDisableConfig$124 ==.
                                    701 ;	StdPeriphLib/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
      00A60E AE 53 00         [ 2]  702 	ldw	x, #0x5300
      00A611 F6               [ 1]  703 	ld	a, (x)
      00A612 A4 FD            [ 1]  704 	and	a, #0xfd
      00A614 F7               [ 1]  705 	ld	(x), a
      00A615                        706 00104$:
                           0002EA   707 	Sstm8s_tim2$TIM2_UpdateDisableConfig$125 ==.
                                    708 ;	StdPeriphLib/src/stm8s_tim2.c: 406: }
                           0002EA   709 	Sstm8s_tim2$TIM2_UpdateDisableConfig$126 ==.
                           0002EA   710 	XG$TIM2_UpdateDisableConfig$0$0 ==.
      00A615 32 01 A4         [ 1]  711 	pop	_fp_
      00A618 32 01 A5         [ 1]  712 	pop	_fp_+1
      00A61B 81               [ 4]  713 	ret
                           0002F1   714 	Sstm8s_tim2$TIM2_UpdateDisableConfig$127 ==.
                           0002F1   715 	Sstm8s_tim2$TIM2_UpdateRequestConfig$128 ==.
                                    716 ;	StdPeriphLib/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
                                    717 ;	-----------------------------------------
                                    718 ;	 function TIM2_UpdateRequestConfig
                                    719 ;	-----------------------------------------
      00A61C                        720 _TIM2_UpdateRequestConfig:
      00A61C 3B 01 A5         [ 1]  721 	push	_fp_+1
      00A61F 3B 01 A4         [ 1]  722 	push	_fp_
      00A622 90 96            [ 1]  723 	ldw	y, sp
      00A624 90 CF 01 A4      [ 2]  724 	ldw	_fp_, y
                           0002FD   725 	Sstm8s_tim2$TIM2_UpdateRequestConfig$129 ==.
                           0002FD   726 	Sstm8s_tim2$TIM2_UpdateRequestConfig$130 ==.
                                    727 ;	StdPeriphLib/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
      00A628 0D 05            [ 1]  728 	tnz	(0x05, sp)
      00A62A 27 09            [ 1]  729 	jreq	00102$
                           000301   730 	Sstm8s_tim2$TIM2_UpdateRequestConfig$131 ==.
                                    731 ;	StdPeriphLib/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      00A62C AE 53 00         [ 2]  732 	ldw	x, #0x5300
      00A62F F6               [ 1]  733 	ld	a, (x)
      00A630 AA 04            [ 1]  734 	or	a, #0x04
      00A632 F7               [ 1]  735 	ld	(x), a
      00A633 20 07            [ 2]  736 	jra	00104$
      00A635                        737 00102$:
                           00030A   738 	Sstm8s_tim2$TIM2_UpdateRequestConfig$132 ==.
                                    739 ;	StdPeriphLib/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
      00A635 AE 53 00         [ 2]  740 	ldw	x, #0x5300
      00A638 F6               [ 1]  741 	ld	a, (x)
      00A639 A4 FB            [ 1]  742 	and	a, #0xfb
      00A63B F7               [ 1]  743 	ld	(x), a
      00A63C                        744 00104$:
                           000311   745 	Sstm8s_tim2$TIM2_UpdateRequestConfig$133 ==.
                                    746 ;	StdPeriphLib/src/stm8s_tim2.c: 430: }
                           000311   747 	Sstm8s_tim2$TIM2_UpdateRequestConfig$134 ==.
                           000311   748 	XG$TIM2_UpdateRequestConfig$0$0 ==.
      00A63C 32 01 A4         [ 1]  749 	pop	_fp_
      00A63F 32 01 A5         [ 1]  750 	pop	_fp_+1
      00A642 81               [ 4]  751 	ret
                           000318   752 	Sstm8s_tim2$TIM2_UpdateRequestConfig$135 ==.
                           000318   753 	Sstm8s_tim2$TIM2_SelectOnePulseMode$136 ==.
                                    754 ;	StdPeriphLib/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
                                    755 ;	-----------------------------------------
                                    756 ;	 function TIM2_SelectOnePulseMode
                                    757 ;	-----------------------------------------
      00A643                        758 _TIM2_SelectOnePulseMode:
      00A643 3B 01 A5         [ 1]  759 	push	_fp_+1
      00A646 3B 01 A4         [ 1]  760 	push	_fp_
      00A649 90 96            [ 1]  761 	ldw	y, sp
      00A64B 90 CF 01 A4      [ 2]  762 	ldw	_fp_, y
                           000324   763 	Sstm8s_tim2$TIM2_SelectOnePulseMode$137 ==.
                           000324   764 	Sstm8s_tim2$TIM2_SelectOnePulseMode$138 ==.
                                    765 ;	StdPeriphLib/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
      00A64F 0D 05            [ 1]  766 	tnz	(0x05, sp)
      00A651 27 09            [ 1]  767 	jreq	00102$
                           000328   768 	Sstm8s_tim2$TIM2_SelectOnePulseMode$139 ==.
                                    769 ;	StdPeriphLib/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      00A653 AE 53 00         [ 2]  770 	ldw	x, #0x5300
      00A656 F6               [ 1]  771 	ld	a, (x)
      00A657 AA 08            [ 1]  772 	or	a, #0x08
      00A659 F7               [ 1]  773 	ld	(x), a
      00A65A 20 07            [ 2]  774 	jra	00104$
      00A65C                        775 00102$:
                           000331   776 	Sstm8s_tim2$TIM2_SelectOnePulseMode$140 ==.
                                    777 ;	StdPeriphLib/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
      00A65C AE 53 00         [ 2]  778 	ldw	x, #0x5300
      00A65F F6               [ 1]  779 	ld	a, (x)
      00A660 A4 F7            [ 1]  780 	and	a, #0xf7
      00A662 F7               [ 1]  781 	ld	(x), a
      00A663                        782 00104$:
                           000338   783 	Sstm8s_tim2$TIM2_SelectOnePulseMode$141 ==.
                                    784 ;	StdPeriphLib/src/stm8s_tim2.c: 454: }
                           000338   785 	Sstm8s_tim2$TIM2_SelectOnePulseMode$142 ==.
                           000338   786 	XG$TIM2_SelectOnePulseMode$0$0 ==.
      00A663 32 01 A4         [ 1]  787 	pop	_fp_
      00A666 32 01 A5         [ 1]  788 	pop	_fp_+1
      00A669 81               [ 4]  789 	ret
                           00033F   790 	Sstm8s_tim2$TIM2_SelectOnePulseMode$143 ==.
                           00033F   791 	Sstm8s_tim2$TIM2_PrescalerConfig$144 ==.
                                    792 ;	StdPeriphLib/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
                                    793 ;	-----------------------------------------
                                    794 ;	 function TIM2_PrescalerConfig
                                    795 ;	-----------------------------------------
      00A66A                        796 _TIM2_PrescalerConfig:
      00A66A 3B 01 A5         [ 1]  797 	push	_fp_+1
      00A66D 3B 01 A4         [ 1]  798 	push	_fp_
      00A670 90 96            [ 1]  799 	ldw	y, sp
      00A672 90 CF 01 A4      [ 2]  800 	ldw	_fp_, y
                           00034B   801 	Sstm8s_tim2$TIM2_PrescalerConfig$145 ==.
                           00034B   802 	Sstm8s_tim2$TIM2_PrescalerConfig$146 ==.
                                    803 ;	StdPeriphLib/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
      00A676 AE 53 0C         [ 2]  804 	ldw	x, #0x530c
      00A679 7B 05            [ 1]  805 	ld	a, (0x05, sp)
      00A67B F7               [ 1]  806 	ld	(x), a
                           000351   807 	Sstm8s_tim2$TIM2_PrescalerConfig$147 ==.
                                    808 ;	StdPeriphLib/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
      00A67C AE 53 04         [ 2]  809 	ldw	x, #0x5304
      00A67F 7B 06            [ 1]  810 	ld	a, (0x06, sp)
      00A681 F7               [ 1]  811 	ld	(x), a
                           000357   812 	Sstm8s_tim2$TIM2_PrescalerConfig$148 ==.
                                    813 ;	StdPeriphLib/src/stm8s_tim2.c: 496: }
                           000357   814 	Sstm8s_tim2$TIM2_PrescalerConfig$149 ==.
                           000357   815 	XG$TIM2_PrescalerConfig$0$0 ==.
      00A682 32 01 A4         [ 1]  816 	pop	_fp_
      00A685 32 01 A5         [ 1]  817 	pop	_fp_+1
      00A688 81               [ 4]  818 	ret
                           00035E   819 	Sstm8s_tim2$TIM2_PrescalerConfig$150 ==.
                           00035E   820 	Sstm8s_tim2$TIM2_ForcedOC1Config$151 ==.
                                    821 ;	StdPeriphLib/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    822 ;	-----------------------------------------
                                    823 ;	 function TIM2_ForcedOC1Config
                                    824 ;	-----------------------------------------
      00A689                        825 _TIM2_ForcedOC1Config:
      00A689 3B 01 A5         [ 1]  826 	push	_fp_+1
      00A68C 3B 01 A4         [ 1]  827 	push	_fp_
      00A68F 90 96            [ 1]  828 	ldw	y, sp
      00A691 90 CF 01 A4      [ 2]  829 	ldw	_fp_, y
                           00036A   830 	Sstm8s_tim2$TIM2_ForcedOC1Config$152 ==.
                           00036A   831 	Sstm8s_tim2$TIM2_ForcedOC1Config$153 ==.
                                    832 ;	StdPeriphLib/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      00A695 AE 53 05         [ 2]  833 	ldw	x, #0x5305
      00A698 F6               [ 1]  834 	ld	a, (x)
      00A699 A4 8F            [ 1]  835 	and	a, #0x8f
                           000370   836 	Sstm8s_tim2$TIM2_ForcedOC1Config$154 ==.
                                    837 ;	StdPeriphLib/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
      00A69B 1A 05            [ 1]  838 	or	a, (0x05, sp)
      00A69D AE 53 05         [ 2]  839 	ldw	x, #0x5305
      00A6A0 F7               [ 1]  840 	ld	(x), a
                           000376   841 	Sstm8s_tim2$TIM2_ForcedOC1Config$155 ==.
                                    842 ;	StdPeriphLib/src/stm8s_tim2.c: 515: }
                           000376   843 	Sstm8s_tim2$TIM2_ForcedOC1Config$156 ==.
                           000376   844 	XG$TIM2_ForcedOC1Config$0$0 ==.
      00A6A1 32 01 A4         [ 1]  845 	pop	_fp_
      00A6A4 32 01 A5         [ 1]  846 	pop	_fp_+1
      00A6A7 81               [ 4]  847 	ret
                           00037D   848 	Sstm8s_tim2$TIM2_ForcedOC1Config$157 ==.
                           00037D   849 	Sstm8s_tim2$TIM2_ForcedOC2Config$158 ==.
                                    850 ;	StdPeriphLib/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    851 ;	-----------------------------------------
                                    852 ;	 function TIM2_ForcedOC2Config
                                    853 ;	-----------------------------------------
      00A6A8                        854 _TIM2_ForcedOC2Config:
      00A6A8 3B 01 A5         [ 1]  855 	push	_fp_+1
      00A6AB 3B 01 A4         [ 1]  856 	push	_fp_
      00A6AE 90 96            [ 1]  857 	ldw	y, sp
      00A6B0 90 CF 01 A4      [ 2]  858 	ldw	_fp_, y
                           000389   859 	Sstm8s_tim2$TIM2_ForcedOC2Config$159 ==.
                           000389   860 	Sstm8s_tim2$TIM2_ForcedOC2Config$160 ==.
                                    861 ;	StdPeriphLib/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      00A6B4 AE 53 06         [ 2]  862 	ldw	x, #0x5306
      00A6B7 F6               [ 1]  863 	ld	a, (x)
      00A6B8 A4 8F            [ 1]  864 	and	a, #0x8f
                           00038F   865 	Sstm8s_tim2$TIM2_ForcedOC2Config$161 ==.
                                    866 ;	StdPeriphLib/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
      00A6BA 1A 05            [ 1]  867 	or	a, (0x05, sp)
      00A6BC AE 53 06         [ 2]  868 	ldw	x, #0x5306
      00A6BF F7               [ 1]  869 	ld	(x), a
                           000395   870 	Sstm8s_tim2$TIM2_ForcedOC2Config$162 ==.
                                    871 ;	StdPeriphLib/src/stm8s_tim2.c: 534: }
                           000395   872 	Sstm8s_tim2$TIM2_ForcedOC2Config$163 ==.
                           000395   873 	XG$TIM2_ForcedOC2Config$0$0 ==.
      00A6C0 32 01 A4         [ 1]  874 	pop	_fp_
      00A6C3 32 01 A5         [ 1]  875 	pop	_fp_+1
      00A6C6 81               [ 4]  876 	ret
                           00039C   877 	Sstm8s_tim2$TIM2_ForcedOC2Config$164 ==.
                           00039C   878 	Sstm8s_tim2$TIM2_ForcedOC3Config$165 ==.
                                    879 ;	StdPeriphLib/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                    880 ;	-----------------------------------------
                                    881 ;	 function TIM2_ForcedOC3Config
                                    882 ;	-----------------------------------------
      00A6C7                        883 _TIM2_ForcedOC3Config:
      00A6C7 3B 01 A5         [ 1]  884 	push	_fp_+1
      00A6CA 3B 01 A4         [ 1]  885 	push	_fp_
      00A6CD 90 96            [ 1]  886 	ldw	y, sp
      00A6CF 90 CF 01 A4      [ 2]  887 	ldw	_fp_, y
                           0003A8   888 	Sstm8s_tim2$TIM2_ForcedOC3Config$166 ==.
                           0003A8   889 	Sstm8s_tim2$TIM2_ForcedOC3Config$167 ==.
                                    890 ;	StdPeriphLib/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00A6D3 AE 53 07         [ 2]  891 	ldw	x, #0x5307
      00A6D6 F6               [ 1]  892 	ld	a, (x)
      00A6D7 A4 8F            [ 1]  893 	and	a, #0x8f
                           0003AE   894 	Sstm8s_tim2$TIM2_ForcedOC3Config$168 ==.
                                    895 ;	StdPeriphLib/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
      00A6D9 1A 05            [ 1]  896 	or	a, (0x05, sp)
      00A6DB AE 53 07         [ 2]  897 	ldw	x, #0x5307
      00A6DE F7               [ 1]  898 	ld	(x), a
                           0003B4   899 	Sstm8s_tim2$TIM2_ForcedOC3Config$169 ==.
                                    900 ;	StdPeriphLib/src/stm8s_tim2.c: 553: }
                           0003B4   901 	Sstm8s_tim2$TIM2_ForcedOC3Config$170 ==.
                           0003B4   902 	XG$TIM2_ForcedOC3Config$0$0 ==.
      00A6DF 32 01 A4         [ 1]  903 	pop	_fp_
      00A6E2 32 01 A5         [ 1]  904 	pop	_fp_+1
      00A6E5 81               [ 4]  905 	ret
                           0003BB   906 	Sstm8s_tim2$TIM2_ForcedOC3Config$171 ==.
                           0003BB   907 	Sstm8s_tim2$TIM2_ARRPreloadConfig$172 ==.
                                    908 ;	StdPeriphLib/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
                                    909 ;	-----------------------------------------
                                    910 ;	 function TIM2_ARRPreloadConfig
                                    911 ;	-----------------------------------------
      00A6E6                        912 _TIM2_ARRPreloadConfig:
      00A6E6 3B 01 A5         [ 1]  913 	push	_fp_+1
      00A6E9 3B 01 A4         [ 1]  914 	push	_fp_
      00A6EC 90 96            [ 1]  915 	ldw	y, sp
      00A6EE 90 CF 01 A4      [ 2]  916 	ldw	_fp_, y
                           0003C7   917 	Sstm8s_tim2$TIM2_ARRPreloadConfig$173 ==.
                           0003C7   918 	Sstm8s_tim2$TIM2_ARRPreloadConfig$174 ==.
                                    919 ;	StdPeriphLib/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
      00A6F2 0D 05            [ 1]  920 	tnz	(0x05, sp)
      00A6F4 27 06            [ 1]  921 	jreq	00102$
                           0003CB   922 	Sstm8s_tim2$TIM2_ARRPreloadConfig$175 ==.
                                    923 ;	StdPeriphLib/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00A6F6 72 1E 53 00      [ 1]  924 	bset	0x5300, #7
      00A6FA 20 04            [ 2]  925 	jra	00104$
      00A6FC                        926 00102$:
                           0003D1   927 	Sstm8s_tim2$TIM2_ARRPreloadConfig$176 ==.
                                    928 ;	StdPeriphLib/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
      00A6FC 72 1F 53 00      [ 1]  929 	bres	0x5300, #7
      00A700                        930 00104$:
                           0003D5   931 	Sstm8s_tim2$TIM2_ARRPreloadConfig$177 ==.
                                    932 ;	StdPeriphLib/src/stm8s_tim2.c: 575: }
                           0003D5   933 	Sstm8s_tim2$TIM2_ARRPreloadConfig$178 ==.
                           0003D5   934 	XG$TIM2_ARRPreloadConfig$0$0 ==.
      00A700 32 01 A4         [ 1]  935 	pop	_fp_
      00A703 32 01 A5         [ 1]  936 	pop	_fp_+1
      00A706 81               [ 4]  937 	ret
                           0003DC   938 	Sstm8s_tim2$TIM2_ARRPreloadConfig$179 ==.
                           0003DC   939 	Sstm8s_tim2$TIM2_OC1PreloadConfig$180 ==.
                                    940 ;	StdPeriphLib/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
                                    941 ;	-----------------------------------------
                                    942 ;	 function TIM2_OC1PreloadConfig
                                    943 ;	-----------------------------------------
      00A707                        944 _TIM2_OC1PreloadConfig:
      00A707 3B 01 A5         [ 1]  945 	push	_fp_+1
      00A70A 3B 01 A4         [ 1]  946 	push	_fp_
      00A70D 90 96            [ 1]  947 	ldw	y, sp
      00A70F 90 CF 01 A4      [ 2]  948 	ldw	_fp_, y
                           0003E8   949 	Sstm8s_tim2$TIM2_OC1PreloadConfig$181 ==.
                           0003E8   950 	Sstm8s_tim2$TIM2_OC1PreloadConfig$182 ==.
                                    951 ;	StdPeriphLib/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
      00A713 0D 05            [ 1]  952 	tnz	(0x05, sp)
      00A715 27 09            [ 1]  953 	jreq	00102$
                           0003EC   954 	Sstm8s_tim2$TIM2_OC1PreloadConfig$183 ==.
                                    955 ;	StdPeriphLib/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A717 AE 53 05         [ 2]  956 	ldw	x, #0x5305
      00A71A F6               [ 1]  957 	ld	a, (x)
      00A71B AA 08            [ 1]  958 	or	a, #0x08
      00A71D F7               [ 1]  959 	ld	(x), a
      00A71E 20 07            [ 2]  960 	jra	00104$
      00A720                        961 00102$:
                           0003F5   962 	Sstm8s_tim2$TIM2_OC1PreloadConfig$184 ==.
                                    963 ;	StdPeriphLib/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00A720 AE 53 05         [ 2]  964 	ldw	x, #0x5305
      00A723 F6               [ 1]  965 	ld	a, (x)
      00A724 A4 F7            [ 1]  966 	and	a, #0xf7
      00A726 F7               [ 1]  967 	ld	(x), a
      00A727                        968 00104$:
                           0003FC   969 	Sstm8s_tim2$TIM2_OC1PreloadConfig$185 ==.
                                    970 ;	StdPeriphLib/src/stm8s_tim2.c: 597: }
                           0003FC   971 	Sstm8s_tim2$TIM2_OC1PreloadConfig$186 ==.
                           0003FC   972 	XG$TIM2_OC1PreloadConfig$0$0 ==.
      00A727 32 01 A4         [ 1]  973 	pop	_fp_
      00A72A 32 01 A5         [ 1]  974 	pop	_fp_+1
      00A72D 81               [ 4]  975 	ret
                           000403   976 	Sstm8s_tim2$TIM2_OC1PreloadConfig$187 ==.
                           000403   977 	Sstm8s_tim2$TIM2_OC2PreloadConfig$188 ==.
                                    978 ;	StdPeriphLib/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
                                    979 ;	-----------------------------------------
                                    980 ;	 function TIM2_OC2PreloadConfig
                                    981 ;	-----------------------------------------
      00A72E                        982 _TIM2_OC2PreloadConfig:
      00A72E 3B 01 A5         [ 1]  983 	push	_fp_+1
      00A731 3B 01 A4         [ 1]  984 	push	_fp_
      00A734 90 96            [ 1]  985 	ldw	y, sp
      00A736 90 CF 01 A4      [ 2]  986 	ldw	_fp_, y
                           00040F   987 	Sstm8s_tim2$TIM2_OC2PreloadConfig$189 ==.
                           00040F   988 	Sstm8s_tim2$TIM2_OC2PreloadConfig$190 ==.
                                    989 ;	StdPeriphLib/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
      00A73A 0D 05            [ 1]  990 	tnz	(0x05, sp)
      00A73C 27 09            [ 1]  991 	jreq	00102$
                           000413   992 	Sstm8s_tim2$TIM2_OC2PreloadConfig$191 ==.
                                    993 ;	StdPeriphLib/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A73E AE 53 06         [ 2]  994 	ldw	x, #0x5306
      00A741 F6               [ 1]  995 	ld	a, (x)
      00A742 AA 08            [ 1]  996 	or	a, #0x08
      00A744 F7               [ 1]  997 	ld	(x), a
      00A745 20 07            [ 2]  998 	jra	00104$
      00A747                        999 00102$:
                           00041C  1000 	Sstm8s_tim2$TIM2_OC2PreloadConfig$192 ==.
                                   1001 ;	StdPeriphLib/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00A747 AE 53 06         [ 2] 1002 	ldw	x, #0x5306
      00A74A F6               [ 1] 1003 	ld	a, (x)
      00A74B A4 F7            [ 1] 1004 	and	a, #0xf7
      00A74D F7               [ 1] 1005 	ld	(x), a
      00A74E                       1006 00104$:
                           000423  1007 	Sstm8s_tim2$TIM2_OC2PreloadConfig$193 ==.
                                   1008 ;	StdPeriphLib/src/stm8s_tim2.c: 619: }
                           000423  1009 	Sstm8s_tim2$TIM2_OC2PreloadConfig$194 ==.
                           000423  1010 	XG$TIM2_OC2PreloadConfig$0$0 ==.
      00A74E 32 01 A4         [ 1] 1011 	pop	_fp_
      00A751 32 01 A5         [ 1] 1012 	pop	_fp_+1
      00A754 81               [ 4] 1013 	ret
                           00042A  1014 	Sstm8s_tim2$TIM2_OC2PreloadConfig$195 ==.
                           00042A  1015 	Sstm8s_tim2$TIM2_OC3PreloadConfig$196 ==.
                                   1016 ;	StdPeriphLib/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function TIM2_OC3PreloadConfig
                                   1019 ;	-----------------------------------------
      00A755                       1020 _TIM2_OC3PreloadConfig:
      00A755 3B 01 A5         [ 1] 1021 	push	_fp_+1
      00A758 3B 01 A4         [ 1] 1022 	push	_fp_
      00A75B 90 96            [ 1] 1023 	ldw	y, sp
      00A75D 90 CF 01 A4      [ 2] 1024 	ldw	_fp_, y
                           000436  1025 	Sstm8s_tim2$TIM2_OC3PreloadConfig$197 ==.
                           000436  1026 	Sstm8s_tim2$TIM2_OC3PreloadConfig$198 ==.
                                   1027 ;	StdPeriphLib/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
      00A761 0D 05            [ 1] 1028 	tnz	(0x05, sp)
      00A763 27 09            [ 1] 1029 	jreq	00102$
                           00043A  1030 	Sstm8s_tim2$TIM2_OC3PreloadConfig$199 ==.
                                   1031 ;	StdPeriphLib/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A765 AE 53 07         [ 2] 1032 	ldw	x, #0x5307
      00A768 F6               [ 1] 1033 	ld	a, (x)
      00A769 AA 08            [ 1] 1034 	or	a, #0x08
      00A76B F7               [ 1] 1035 	ld	(x), a
      00A76C 20 07            [ 2] 1036 	jra	00104$
      00A76E                       1037 00102$:
                           000443  1038 	Sstm8s_tim2$TIM2_OC3PreloadConfig$200 ==.
                                   1039 ;	StdPeriphLib/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00A76E AE 53 07         [ 2] 1040 	ldw	x, #0x5307
      00A771 F6               [ 1] 1041 	ld	a, (x)
      00A772 A4 F7            [ 1] 1042 	and	a, #0xf7
      00A774 F7               [ 1] 1043 	ld	(x), a
      00A775                       1044 00104$:
                           00044A  1045 	Sstm8s_tim2$TIM2_OC3PreloadConfig$201 ==.
                                   1046 ;	StdPeriphLib/src/stm8s_tim2.c: 641: }
                           00044A  1047 	Sstm8s_tim2$TIM2_OC3PreloadConfig$202 ==.
                           00044A  1048 	XG$TIM2_OC3PreloadConfig$0$0 ==.
      00A775 32 01 A4         [ 1] 1049 	pop	_fp_
      00A778 32 01 A5         [ 1] 1050 	pop	_fp_+1
      00A77B 81               [ 4] 1051 	ret
                           000451  1052 	Sstm8s_tim2$TIM2_OC3PreloadConfig$203 ==.
                           000451  1053 	Sstm8s_tim2$TIM2_GenerateEvent$204 ==.
                                   1054 ;	StdPeriphLib/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function TIM2_GenerateEvent
                                   1057 ;	-----------------------------------------
      00A77C                       1058 _TIM2_GenerateEvent:
      00A77C 3B 01 A5         [ 1] 1059 	push	_fp_+1
      00A77F 3B 01 A4         [ 1] 1060 	push	_fp_
      00A782 90 96            [ 1] 1061 	ldw	y, sp
      00A784 90 CF 01 A4      [ 2] 1062 	ldw	_fp_, y
                           00045D  1063 	Sstm8s_tim2$TIM2_GenerateEvent$205 ==.
                           00045D  1064 	Sstm8s_tim2$TIM2_GenerateEvent$206 ==.
                                   1065 ;	StdPeriphLib/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
      00A788 AE 53 04         [ 2] 1066 	ldw	x, #0x5304
      00A78B 7B 05            [ 1] 1067 	ld	a, (0x05, sp)
      00A78D F7               [ 1] 1068 	ld	(x), a
                           000463  1069 	Sstm8s_tim2$TIM2_GenerateEvent$207 ==.
                                   1070 ;	StdPeriphLib/src/stm8s_tim2.c: 660: }
                           000463  1071 	Sstm8s_tim2$TIM2_GenerateEvent$208 ==.
                           000463  1072 	XG$TIM2_GenerateEvent$0$0 ==.
      00A78E 32 01 A4         [ 1] 1073 	pop	_fp_
      00A791 32 01 A5         [ 1] 1074 	pop	_fp_+1
      00A794 81               [ 4] 1075 	ret
                           00046A  1076 	Sstm8s_tim2$TIM2_GenerateEvent$209 ==.
                           00046A  1077 	Sstm8s_tim2$TIM2_OC1PolarityConfig$210 ==.
                                   1078 ;	StdPeriphLib/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function TIM2_OC1PolarityConfig
                                   1081 ;	-----------------------------------------
      00A795                       1082 _TIM2_OC1PolarityConfig:
      00A795 3B 01 A5         [ 1] 1083 	push	_fp_+1
      00A798 3B 01 A4         [ 1] 1084 	push	_fp_
      00A79B 90 96            [ 1] 1085 	ldw	y, sp
      00A79D 90 CF 01 A4      [ 2] 1086 	ldw	_fp_, y
                           000476  1087 	Sstm8s_tim2$TIM2_OC1PolarityConfig$211 ==.
                           000476  1088 	Sstm8s_tim2$TIM2_OC1PolarityConfig$212 ==.
                                   1089 ;	StdPeriphLib/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00A7A1 0D 05            [ 1] 1090 	tnz	(0x05, sp)
      00A7A3 27 09            [ 1] 1091 	jreq	00102$
                           00047A  1092 	Sstm8s_tim2$TIM2_OC1PolarityConfig$213 ==.
                                   1093 ;	StdPeriphLib/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      00A7A5 AE 53 08         [ 2] 1094 	ldw	x, #0x5308
      00A7A8 F6               [ 1] 1095 	ld	a, (x)
      00A7A9 AA 02            [ 1] 1096 	or	a, #0x02
      00A7AB F7               [ 1] 1097 	ld	(x), a
      00A7AC 20 07            [ 2] 1098 	jra	00104$
      00A7AE                       1099 00102$:
                           000483  1100 	Sstm8s_tim2$TIM2_OC1PolarityConfig$214 ==.
                                   1101 ;	StdPeriphLib/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00A7AE AE 53 08         [ 2] 1102 	ldw	x, #0x5308
      00A7B1 F6               [ 1] 1103 	ld	a, (x)
      00A7B2 A4 FD            [ 1] 1104 	and	a, #0xfd
      00A7B4 F7               [ 1] 1105 	ld	(x), a
      00A7B5                       1106 00104$:
                           00048A  1107 	Sstm8s_tim2$TIM2_OC1PolarityConfig$215 ==.
                                   1108 ;	StdPeriphLib/src/stm8s_tim2.c: 684: }
                           00048A  1109 	Sstm8s_tim2$TIM2_OC1PolarityConfig$216 ==.
                           00048A  1110 	XG$TIM2_OC1PolarityConfig$0$0 ==.
      00A7B5 32 01 A4         [ 1] 1111 	pop	_fp_
      00A7B8 32 01 A5         [ 1] 1112 	pop	_fp_+1
      00A7BB 81               [ 4] 1113 	ret
                           000491  1114 	Sstm8s_tim2$TIM2_OC1PolarityConfig$217 ==.
                           000491  1115 	Sstm8s_tim2$TIM2_OC2PolarityConfig$218 ==.
                                   1116 ;	StdPeriphLib/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1117 ;	-----------------------------------------
                                   1118 ;	 function TIM2_OC2PolarityConfig
                                   1119 ;	-----------------------------------------
      00A7BC                       1120 _TIM2_OC2PolarityConfig:
      00A7BC 3B 01 A5         [ 1] 1121 	push	_fp_+1
      00A7BF 3B 01 A4         [ 1] 1122 	push	_fp_
      00A7C2 90 96            [ 1] 1123 	ldw	y, sp
      00A7C4 90 CF 01 A4      [ 2] 1124 	ldw	_fp_, y
                           00049D  1125 	Sstm8s_tim2$TIM2_OC2PolarityConfig$219 ==.
                           00049D  1126 	Sstm8s_tim2$TIM2_OC2PolarityConfig$220 ==.
                                   1127 ;	StdPeriphLib/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00A7C8 0D 05            [ 1] 1128 	tnz	(0x05, sp)
      00A7CA 27 09            [ 1] 1129 	jreq	00102$
                           0004A1  1130 	Sstm8s_tim2$TIM2_OC2PolarityConfig$221 ==.
                                   1131 ;	StdPeriphLib/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00A7CC AE 53 08         [ 2] 1132 	ldw	x, #0x5308
      00A7CF F6               [ 1] 1133 	ld	a, (x)
      00A7D0 AA 20            [ 1] 1134 	or	a, #0x20
      00A7D2 F7               [ 1] 1135 	ld	(x), a
      00A7D3 20 07            [ 2] 1136 	jra	00104$
      00A7D5                       1137 00102$:
                           0004AA  1138 	Sstm8s_tim2$TIM2_OC2PolarityConfig$222 ==.
                                   1139 ;	StdPeriphLib/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00A7D5 AE 53 08         [ 2] 1140 	ldw	x, #0x5308
      00A7D8 F6               [ 1] 1141 	ld	a, (x)
      00A7D9 A4 DF            [ 1] 1142 	and	a, #0xdf
      00A7DB F7               [ 1] 1143 	ld	(x), a
      00A7DC                       1144 00104$:
                           0004B1  1145 	Sstm8s_tim2$TIM2_OC2PolarityConfig$223 ==.
                                   1146 ;	StdPeriphLib/src/stm8s_tim2.c: 708: }
                           0004B1  1147 	Sstm8s_tim2$TIM2_OC2PolarityConfig$224 ==.
                           0004B1  1148 	XG$TIM2_OC2PolarityConfig$0$0 ==.
      00A7DC 32 01 A4         [ 1] 1149 	pop	_fp_
      00A7DF 32 01 A5         [ 1] 1150 	pop	_fp_+1
      00A7E2 81               [ 4] 1151 	ret
                           0004B8  1152 	Sstm8s_tim2$TIM2_OC2PolarityConfig$225 ==.
                           0004B8  1153 	Sstm8s_tim2$TIM2_OC3PolarityConfig$226 ==.
                                   1154 ;	StdPeriphLib/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function TIM2_OC3PolarityConfig
                                   1157 ;	-----------------------------------------
      00A7E3                       1158 _TIM2_OC3PolarityConfig:
      00A7E3 3B 01 A5         [ 1] 1159 	push	_fp_+1
      00A7E6 3B 01 A4         [ 1] 1160 	push	_fp_
      00A7E9 90 96            [ 1] 1161 	ldw	y, sp
      00A7EB 90 CF 01 A4      [ 2] 1162 	ldw	_fp_, y
                           0004C4  1163 	Sstm8s_tim2$TIM2_OC3PolarityConfig$227 ==.
                           0004C4  1164 	Sstm8s_tim2$TIM2_OC3PolarityConfig$228 ==.
                                   1165 ;	StdPeriphLib/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00A7EF 0D 05            [ 1] 1166 	tnz	(0x05, sp)
      00A7F1 27 09            [ 1] 1167 	jreq	00102$
                           0004C8  1168 	Sstm8s_tim2$TIM2_OC3PolarityConfig$229 ==.
                                   1169 ;	StdPeriphLib/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00A7F3 AE 53 09         [ 2] 1170 	ldw	x, #0x5309
      00A7F6 F6               [ 1] 1171 	ld	a, (x)
      00A7F7 AA 02            [ 1] 1172 	or	a, #0x02
      00A7F9 F7               [ 1] 1173 	ld	(x), a
      00A7FA 20 07            [ 2] 1174 	jra	00104$
      00A7FC                       1175 00102$:
                           0004D1  1176 	Sstm8s_tim2$TIM2_OC3PolarityConfig$230 ==.
                                   1177 ;	StdPeriphLib/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00A7FC AE 53 09         [ 2] 1178 	ldw	x, #0x5309
      00A7FF F6               [ 1] 1179 	ld	a, (x)
      00A800 A4 FD            [ 1] 1180 	and	a, #0xfd
      00A802 F7               [ 1] 1181 	ld	(x), a
      00A803                       1182 00104$:
                           0004D8  1183 	Sstm8s_tim2$TIM2_OC3PolarityConfig$231 ==.
                                   1184 ;	StdPeriphLib/src/stm8s_tim2.c: 732: }
                           0004D8  1185 	Sstm8s_tim2$TIM2_OC3PolarityConfig$232 ==.
                           0004D8  1186 	XG$TIM2_OC3PolarityConfig$0$0 ==.
      00A803 32 01 A4         [ 1] 1187 	pop	_fp_
      00A806 32 01 A5         [ 1] 1188 	pop	_fp_+1
      00A809 81               [ 4] 1189 	ret
                           0004DF  1190 	Sstm8s_tim2$TIM2_OC3PolarityConfig$233 ==.
                           0004DF  1191 	Sstm8s_tim2$TIM2_CCxCmd$234 ==.
                                   1192 ;	StdPeriphLib/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
                                   1193 ;	-----------------------------------------
                                   1194 ;	 function TIM2_CCxCmd
                                   1195 ;	-----------------------------------------
      00A80A                       1196 _TIM2_CCxCmd:
      00A80A 3B 01 A5         [ 1] 1197 	push	_fp_+1
      00A80D 3B 01 A4         [ 1] 1198 	push	_fp_
      00A810 90 96            [ 1] 1199 	ldw	y, sp
      00A812 90 CF 01 A4      [ 2] 1200 	ldw	_fp_, y
                           0004EB  1201 	Sstm8s_tim2$TIM2_CCxCmd$235 ==.
                           0004EB  1202 	Sstm8s_tim2$TIM2_CCxCmd$236 ==.
                                   1203 ;	StdPeriphLib/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
      00A816 0D 05            [ 1] 1204 	tnz	(0x05, sp)
      00A818 26 10            [ 1] 1205 	jrne	00114$
                           0004EF  1206 	Sstm8s_tim2$TIM2_CCxCmd$237 ==.
                                   1207 ;	StdPeriphLib/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
      00A81A 0D 06            [ 1] 1208 	tnz	(0x06, sp)
      00A81C 27 06            [ 1] 1209 	jreq	00102$
                           0004F3  1210 	Sstm8s_tim2$TIM2_CCxCmd$238 ==.
                                   1211 ;	StdPeriphLib/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00A81E 72 10 53 08      [ 1] 1212 	bset	0x5308, #0
      00A822 20 30            [ 2] 1213 	jra	00116$
      00A824                       1214 00102$:
                           0004F9  1215 	Sstm8s_tim2$TIM2_CCxCmd$239 ==.
                                   1216 ;	StdPeriphLib/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00A824 72 11 53 08      [ 1] 1217 	bres	0x5308, #0
      00A828 20 2A            [ 2] 1218 	jra	00116$
      00A82A                       1219 00114$:
                           0004FF  1220 	Sstm8s_tim2$TIM2_CCxCmd$240 ==.
                                   1221 ;	StdPeriphLib/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00A82A 7B 05            [ 1] 1222 	ld	a, (0x05, sp)
      00A82C A1 01            [ 1] 1223 	cp	a, #0x01
      00A82E 26 16            [ 1] 1224 	jrne	00111$
                           000505  1225 	Sstm8s_tim2$TIM2_CCxCmd$241 ==.
                                   1226 ;	StdPeriphLib/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
      00A830 0D 06            [ 1] 1227 	tnz	(0x06, sp)
      00A832 27 09            [ 1] 1228 	jreq	00105$
                           000509  1229 	Sstm8s_tim2$TIM2_CCxCmd$242 ==.
                                   1230 ;	StdPeriphLib/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
      00A834 AE 53 08         [ 2] 1231 	ldw	x, #0x5308
      00A837 F6               [ 1] 1232 	ld	a, (x)
      00A838 AA 10            [ 1] 1233 	or	a, #0x10
      00A83A F7               [ 1] 1234 	ld	(x), a
      00A83B 20 17            [ 2] 1235 	jra	00116$
      00A83D                       1236 00105$:
                           000512  1237 	Sstm8s_tim2$TIM2_CCxCmd$243 ==.
                                   1238 ;	StdPeriphLib/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00A83D AE 53 08         [ 2] 1239 	ldw	x, #0x5308
      00A840 F6               [ 1] 1240 	ld	a, (x)
      00A841 A4 EF            [ 1] 1241 	and	a, #0xef
      00A843 F7               [ 1] 1242 	ld	(x), a
      00A844 20 0E            [ 2] 1243 	jra	00116$
      00A846                       1244 00111$:
                           00051B  1245 	Sstm8s_tim2$TIM2_CCxCmd$244 ==.
                                   1246 ;	StdPeriphLib/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
      00A846 0D 06            [ 1] 1247 	tnz	(0x06, sp)
      00A848 27 06            [ 1] 1248 	jreq	00108$
                           00051F  1249 	Sstm8s_tim2$TIM2_CCxCmd$245 ==.
                                   1250 ;	StdPeriphLib/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      00A84A 72 10 53 09      [ 1] 1251 	bset	0x5309, #0
      00A84E 20 04            [ 2] 1252 	jra	00116$
      00A850                       1253 00108$:
                           000525  1254 	Sstm8s_tim2$TIM2_CCxCmd$246 ==.
                                   1255 ;	StdPeriphLib/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00A850 72 11 53 09      [ 1] 1256 	bres	0x5309, #0
      00A854                       1257 00116$:
                           000529  1258 	Sstm8s_tim2$TIM2_CCxCmd$247 ==.
                                   1259 ;	StdPeriphLib/src/stm8s_tim2.c: 788: }
                           000529  1260 	Sstm8s_tim2$TIM2_CCxCmd$248 ==.
                           000529  1261 	XG$TIM2_CCxCmd$0$0 ==.
      00A854 32 01 A4         [ 1] 1262 	pop	_fp_
      00A857 32 01 A5         [ 1] 1263 	pop	_fp_+1
      00A85A 81               [ 4] 1264 	ret
                           000530  1265 	Sstm8s_tim2$TIM2_CCxCmd$249 ==.
                           000530  1266 	Sstm8s_tim2$TIM2_SelectOCxM$250 ==.
                                   1267 ;	StdPeriphLib/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
                                   1268 ;	-----------------------------------------
                                   1269 ;	 function TIM2_SelectOCxM
                                   1270 ;	-----------------------------------------
      00A85B                       1271 _TIM2_SelectOCxM:
      00A85B 3B 01 A5         [ 1] 1272 	push	_fp_+1
      00A85E 3B 01 A4         [ 1] 1273 	push	_fp_
      00A861 90 96            [ 1] 1274 	ldw	y, sp
      00A863 90 CF 01 A4      [ 2] 1275 	ldw	_fp_, y
                           00053C  1276 	Sstm8s_tim2$TIM2_SelectOCxM$251 ==.
                           00053C  1277 	Sstm8s_tim2$TIM2_SelectOCxM$252 ==.
                                   1278 ;	StdPeriphLib/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
      00A867 0D 05            [ 1] 1279 	tnz	(0x05, sp)
      00A869 26 12            [ 1] 1280 	jrne	00105$
                           000540  1281 	Sstm8s_tim2$TIM2_SelectOCxM$253 ==.
                                   1282 ;	StdPeriphLib/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00A86B 72 11 53 08      [ 1] 1283 	bres	0x5308, #0
                           000544  1284 	Sstm8s_tim2$TIM2_SelectOCxM$254 ==.
                                   1285 ;	StdPeriphLib/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      00A86F AE 53 05         [ 2] 1286 	ldw	x, #0x5305
      00A872 F6               [ 1] 1287 	ld	a, (x)
      00A873 A4 8F            [ 1] 1288 	and	a, #0x8f
                           00054A  1289 	Sstm8s_tim2$TIM2_SelectOCxM$255 ==.
                                   1290 ;	StdPeriphLib/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
      00A875 1A 06            [ 1] 1291 	or	a, (0x06, sp)
      00A877 AE 53 05         [ 2] 1292 	ldw	x, #0x5305
      00A87A F7               [ 1] 1293 	ld	(x), a
      00A87B 20 2B            [ 2] 1294 	jra	00107$
      00A87D                       1295 00105$:
                           000552  1296 	Sstm8s_tim2$TIM2_SelectOCxM$256 ==.
                                   1297 ;	StdPeriphLib/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00A87D 7B 05            [ 1] 1298 	ld	a, (0x05, sp)
      00A87F A1 01            [ 1] 1299 	cp	a, #0x01
      00A881 26 15            [ 1] 1300 	jrne	00102$
                           000558  1301 	Sstm8s_tim2$TIM2_SelectOCxM$257 ==.
                                   1302 ;	StdPeriphLib/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00A883 AE 53 08         [ 2] 1303 	ldw	x, #0x5308
      00A886 F6               [ 1] 1304 	ld	a, (x)
      00A887 A4 EF            [ 1] 1305 	and	a, #0xef
      00A889 F7               [ 1] 1306 	ld	(x), a
                           00055F  1307 	Sstm8s_tim2$TIM2_SelectOCxM$258 ==.
                                   1308 ;	StdPeriphLib/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      00A88A AE 53 06         [ 2] 1309 	ldw	x, #0x5306
      00A88D F6               [ 1] 1310 	ld	a, (x)
      00A88E A4 8F            [ 1] 1311 	and	a, #0x8f
                           000565  1312 	Sstm8s_tim2$TIM2_SelectOCxM$259 ==.
                                   1313 ;	StdPeriphLib/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
      00A890 1A 06            [ 1] 1314 	or	a, (0x06, sp)
      00A892 AE 53 06         [ 2] 1315 	ldw	x, #0x5306
      00A895 F7               [ 1] 1316 	ld	(x), a
      00A896 20 10            [ 2] 1317 	jra	00107$
      00A898                       1318 00102$:
                           00056D  1319 	Sstm8s_tim2$TIM2_SelectOCxM$260 ==.
                                   1320 ;	StdPeriphLib/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00A898 72 11 53 09      [ 1] 1321 	bres	0x5309, #0
                           000571  1322 	Sstm8s_tim2$TIM2_SelectOCxM$261 ==.
                                   1323 ;	StdPeriphLib/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00A89C AE 53 07         [ 2] 1324 	ldw	x, #0x5307
      00A89F F6               [ 1] 1325 	ld	a, (x)
      00A8A0 A4 8F            [ 1] 1326 	and	a, #0x8f
                           000577  1327 	Sstm8s_tim2$TIM2_SelectOCxM$262 ==.
                                   1328 ;	StdPeriphLib/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
      00A8A2 1A 06            [ 1] 1329 	or	a, (0x06, sp)
      00A8A4 AE 53 07         [ 2] 1330 	ldw	x, #0x5307
      00A8A7 F7               [ 1] 1331 	ld	(x), a
      00A8A8                       1332 00107$:
                           00057D  1333 	Sstm8s_tim2$TIM2_SelectOCxM$263 ==.
                                   1334 ;	StdPeriphLib/src/stm8s_tim2.c: 843: }
                           00057D  1335 	Sstm8s_tim2$TIM2_SelectOCxM$264 ==.
                           00057D  1336 	XG$TIM2_SelectOCxM$0$0 ==.
      00A8A8 32 01 A4         [ 1] 1337 	pop	_fp_
      00A8AB 32 01 A5         [ 1] 1338 	pop	_fp_+1
      00A8AE 81               [ 4] 1339 	ret
                           000584  1340 	Sstm8s_tim2$TIM2_SelectOCxM$265 ==.
                           000584  1341 	Sstm8s_tim2$TIM2_SetCounter$266 ==.
                                   1342 ;	StdPeriphLib/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
                                   1343 ;	-----------------------------------------
                                   1344 ;	 function TIM2_SetCounter
                                   1345 ;	-----------------------------------------
      00A8AF                       1346 _TIM2_SetCounter:
      00A8AF 3B 01 A5         [ 1] 1347 	push	_fp_+1
      00A8B2 3B 01 A4         [ 1] 1348 	push	_fp_
      00A8B5 90 96            [ 1] 1349 	ldw	y, sp
      00A8B7 90 CF 01 A4      [ 2] 1350 	ldw	_fp_, y
                           000590  1351 	Sstm8s_tim2$TIM2_SetCounter$267 ==.
      00A8BB 52 02            [ 2] 1352 	sub	sp, #2
                           000592  1353 	Sstm8s_tim2$TIM2_SetCounter$268 ==.
                                   1354 ;	StdPeriphLib/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
      00A8BD 7B 07            [ 1] 1355 	ld	a, (0x07, sp)
      00A8BF 0F 01            [ 1] 1356 	clr	(0x01, sp)
      00A8C1 AE 53 0A         [ 2] 1357 	ldw	x, #0x530a
      00A8C4 F7               [ 1] 1358 	ld	(x), a
                           00059A  1359 	Sstm8s_tim2$TIM2_SetCounter$269 ==.
                                   1360 ;	StdPeriphLib/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
      00A8C5 7B 08            [ 1] 1361 	ld	a, (0x08, sp)
      00A8C7 AE 53 0B         [ 2] 1362 	ldw	x, #0x530b
      00A8CA F7               [ 1] 1363 	ld	(x), a
                           0005A0  1364 	Sstm8s_tim2$TIM2_SetCounter$270 ==.
                                   1365 ;	StdPeriphLib/src/stm8s_tim2.c: 856: }
      00A8CB 5B 02            [ 2] 1366 	addw	sp, #2
                           0005A2  1367 	Sstm8s_tim2$TIM2_SetCounter$271 ==.
                           0005A2  1368 	XG$TIM2_SetCounter$0$0 ==.
      00A8CD 32 01 A4         [ 1] 1369 	pop	_fp_
      00A8D0 32 01 A5         [ 1] 1370 	pop	_fp_+1
      00A8D3 81               [ 4] 1371 	ret
                           0005A9  1372 	Sstm8s_tim2$TIM2_SetCounter$272 ==.
                           0005A9  1373 	Sstm8s_tim2$TIM2_SetAutoreload$273 ==.
                                   1374 ;	StdPeriphLib/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function TIM2_SetAutoreload
                                   1377 ;	-----------------------------------------
      00A8D4                       1378 _TIM2_SetAutoreload:
      00A8D4 3B 01 A5         [ 1] 1379 	push	_fp_+1
      00A8D7 3B 01 A4         [ 1] 1380 	push	_fp_
      00A8DA 90 96            [ 1] 1381 	ldw	y, sp
      00A8DC 90 CF 01 A4      [ 2] 1382 	ldw	_fp_, y
                           0005B5  1383 	Sstm8s_tim2$TIM2_SetAutoreload$274 ==.
      00A8E0 52 02            [ 2] 1384 	sub	sp, #2
                           0005B7  1385 	Sstm8s_tim2$TIM2_SetAutoreload$275 ==.
                                   1386 ;	StdPeriphLib/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
      00A8E2 7B 07            [ 1] 1387 	ld	a, (0x07, sp)
      00A8E4 0F 01            [ 1] 1388 	clr	(0x01, sp)
      00A8E6 AE 53 0D         [ 2] 1389 	ldw	x, #0x530d
      00A8E9 F7               [ 1] 1390 	ld	(x), a
                           0005BF  1391 	Sstm8s_tim2$TIM2_SetAutoreload$276 ==.
                                   1392 ;	StdPeriphLib/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
      00A8EA 7B 08            [ 1] 1393 	ld	a, (0x08, sp)
      00A8EC AE 53 0E         [ 2] 1394 	ldw	x, #0x530e
      00A8EF F7               [ 1] 1395 	ld	(x), a
                           0005C5  1396 	Sstm8s_tim2$TIM2_SetAutoreload$277 ==.
                                   1397 ;	StdPeriphLib/src/stm8s_tim2.c: 869: }
      00A8F0 5B 02            [ 2] 1398 	addw	sp, #2
                           0005C7  1399 	Sstm8s_tim2$TIM2_SetAutoreload$278 ==.
                           0005C7  1400 	XG$TIM2_SetAutoreload$0$0 ==.
      00A8F2 32 01 A4         [ 1] 1401 	pop	_fp_
      00A8F5 32 01 A5         [ 1] 1402 	pop	_fp_+1
      00A8F8 81               [ 4] 1403 	ret
                           0005CE  1404 	Sstm8s_tim2$TIM2_SetAutoreload$279 ==.
                           0005CE  1405 	Sstm8s_tim2$TIM2_SetCompare1$280 ==.
                                   1406 ;	StdPeriphLib/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
                                   1407 ;	-----------------------------------------
                                   1408 ;	 function TIM2_SetCompare1
                                   1409 ;	-----------------------------------------
      00A8F9                       1410 _TIM2_SetCompare1:
      00A8F9 3B 01 A5         [ 1] 1411 	push	_fp_+1
      00A8FC 3B 01 A4         [ 1] 1412 	push	_fp_
      00A8FF 90 96            [ 1] 1413 	ldw	y, sp
      00A901 90 CF 01 A4      [ 2] 1414 	ldw	_fp_, y
                           0005DA  1415 	Sstm8s_tim2$TIM2_SetCompare1$281 ==.
      00A905 52 02            [ 2] 1416 	sub	sp, #2
                           0005DC  1417 	Sstm8s_tim2$TIM2_SetCompare1$282 ==.
                                   1418 ;	StdPeriphLib/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
      00A907 7B 07            [ 1] 1419 	ld	a, (0x07, sp)
      00A909 0F 01            [ 1] 1420 	clr	(0x01, sp)
      00A90B AE 53 0F         [ 2] 1421 	ldw	x, #0x530f
      00A90E F7               [ 1] 1422 	ld	(x), a
                           0005E4  1423 	Sstm8s_tim2$TIM2_SetCompare1$283 ==.
                                   1424 ;	StdPeriphLib/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
      00A90F 7B 08            [ 1] 1425 	ld	a, (0x08, sp)
      00A911 AE 53 10         [ 2] 1426 	ldw	x, #0x5310
      00A914 F7               [ 1] 1427 	ld	(x), a
                           0005EA  1428 	Sstm8s_tim2$TIM2_SetCompare1$284 ==.
                                   1429 ;	StdPeriphLib/src/stm8s_tim2.c: 882: }
      00A915 5B 02            [ 2] 1430 	addw	sp, #2
                           0005EC  1431 	Sstm8s_tim2$TIM2_SetCompare1$285 ==.
                           0005EC  1432 	XG$TIM2_SetCompare1$0$0 ==.
      00A917 32 01 A4         [ 1] 1433 	pop	_fp_
      00A91A 32 01 A5         [ 1] 1434 	pop	_fp_+1
      00A91D 81               [ 4] 1435 	ret
                           0005F3  1436 	Sstm8s_tim2$TIM2_SetCompare1$286 ==.
                           0005F3  1437 	Sstm8s_tim2$TIM2_SetCompare2$287 ==.
                                   1438 ;	StdPeriphLib/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
                                   1439 ;	-----------------------------------------
                                   1440 ;	 function TIM2_SetCompare2
                                   1441 ;	-----------------------------------------
      00A91E                       1442 _TIM2_SetCompare2:
      00A91E 3B 01 A5         [ 1] 1443 	push	_fp_+1
      00A921 3B 01 A4         [ 1] 1444 	push	_fp_
      00A924 90 96            [ 1] 1445 	ldw	y, sp
      00A926 90 CF 01 A4      [ 2] 1446 	ldw	_fp_, y
                           0005FF  1447 	Sstm8s_tim2$TIM2_SetCompare2$288 ==.
      00A92A 52 02            [ 2] 1448 	sub	sp, #2
                           000601  1449 	Sstm8s_tim2$TIM2_SetCompare2$289 ==.
                                   1450 ;	StdPeriphLib/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
      00A92C 7B 07            [ 1] 1451 	ld	a, (0x07, sp)
      00A92E 0F 01            [ 1] 1452 	clr	(0x01, sp)
      00A930 AE 53 11         [ 2] 1453 	ldw	x, #0x5311
      00A933 F7               [ 1] 1454 	ld	(x), a
                           000609  1455 	Sstm8s_tim2$TIM2_SetCompare2$290 ==.
                                   1456 ;	StdPeriphLib/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
      00A934 7B 08            [ 1] 1457 	ld	a, (0x08, sp)
      00A936 AE 53 12         [ 2] 1458 	ldw	x, #0x5312
      00A939 F7               [ 1] 1459 	ld	(x), a
                           00060F  1460 	Sstm8s_tim2$TIM2_SetCompare2$291 ==.
                                   1461 ;	StdPeriphLib/src/stm8s_tim2.c: 895: }
      00A93A 5B 02            [ 2] 1462 	addw	sp, #2
                           000611  1463 	Sstm8s_tim2$TIM2_SetCompare2$292 ==.
                           000611  1464 	XG$TIM2_SetCompare2$0$0 ==.
      00A93C 32 01 A4         [ 1] 1465 	pop	_fp_
      00A93F 32 01 A5         [ 1] 1466 	pop	_fp_+1
      00A942 81               [ 4] 1467 	ret
                           000618  1468 	Sstm8s_tim2$TIM2_SetCompare2$293 ==.
                           000618  1469 	Sstm8s_tim2$TIM2_SetCompare3$294 ==.
                                   1470 ;	StdPeriphLib/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
                                   1471 ;	-----------------------------------------
                                   1472 ;	 function TIM2_SetCompare3
                                   1473 ;	-----------------------------------------
      00A943                       1474 _TIM2_SetCompare3:
      00A943 3B 01 A5         [ 1] 1475 	push	_fp_+1
      00A946 3B 01 A4         [ 1] 1476 	push	_fp_
      00A949 90 96            [ 1] 1477 	ldw	y, sp
      00A94B 90 CF 01 A4      [ 2] 1478 	ldw	_fp_, y
                           000624  1479 	Sstm8s_tim2$TIM2_SetCompare3$295 ==.
      00A94F 52 02            [ 2] 1480 	sub	sp, #2
                           000626  1481 	Sstm8s_tim2$TIM2_SetCompare3$296 ==.
                                   1482 ;	StdPeriphLib/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
      00A951 7B 07            [ 1] 1483 	ld	a, (0x07, sp)
      00A953 0F 01            [ 1] 1484 	clr	(0x01, sp)
      00A955 AE 53 13         [ 2] 1485 	ldw	x, #0x5313
      00A958 F7               [ 1] 1486 	ld	(x), a
                           00062E  1487 	Sstm8s_tim2$TIM2_SetCompare3$297 ==.
                                   1488 ;	StdPeriphLib/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
      00A959 7B 08            [ 1] 1489 	ld	a, (0x08, sp)
      00A95B AE 53 14         [ 2] 1490 	ldw	x, #0x5314
      00A95E F7               [ 1] 1491 	ld	(x), a
                           000634  1492 	Sstm8s_tim2$TIM2_SetCompare3$298 ==.
                                   1493 ;	StdPeriphLib/src/stm8s_tim2.c: 908: }
      00A95F 5B 02            [ 2] 1494 	addw	sp, #2
                           000636  1495 	Sstm8s_tim2$TIM2_SetCompare3$299 ==.
                           000636  1496 	XG$TIM2_SetCompare3$0$0 ==.
      00A961 32 01 A4         [ 1] 1497 	pop	_fp_
      00A964 32 01 A5         [ 1] 1498 	pop	_fp_+1
      00A967 81               [ 4] 1499 	ret
                           00063D  1500 	Sstm8s_tim2$TIM2_SetCompare3$300 ==.
                           00063D  1501 	Sstm8s_tim2$TIM2_SetIC1Prescaler$301 ==.
                                   1502 ;	StdPeriphLib/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
                                   1503 ;	-----------------------------------------
                                   1504 ;	 function TIM2_SetIC1Prescaler
                                   1505 ;	-----------------------------------------
      00A968                       1506 _TIM2_SetIC1Prescaler:
      00A968 3B 01 A5         [ 1] 1507 	push	_fp_+1
      00A96B 3B 01 A4         [ 1] 1508 	push	_fp_
      00A96E 90 96            [ 1] 1509 	ldw	y, sp
      00A970 90 CF 01 A4      [ 2] 1510 	ldw	_fp_, y
                           000649  1511 	Sstm8s_tim2$TIM2_SetIC1Prescaler$302 ==.
                           000649  1512 	Sstm8s_tim2$TIM2_SetIC1Prescaler$303 ==.
                                   1513 ;	StdPeriphLib/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00A974 AE 53 05         [ 2] 1514 	ldw	x, #0x5305
      00A977 F6               [ 1] 1515 	ld	a, (x)
      00A978 A4 F3            [ 1] 1516 	and	a, #0xf3
                           00064F  1517 	Sstm8s_tim2$TIM2_SetIC1Prescaler$304 ==.
                                   1518 ;	StdPeriphLib/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
      00A97A 1A 05            [ 1] 1519 	or	a, (0x05, sp)
      00A97C AE 53 05         [ 2] 1520 	ldw	x, #0x5305
      00A97F F7               [ 1] 1521 	ld	(x), a
                           000655  1522 	Sstm8s_tim2$TIM2_SetIC1Prescaler$305 ==.
                                   1523 ;	StdPeriphLib/src/stm8s_tim2.c: 928: }
                           000655  1524 	Sstm8s_tim2$TIM2_SetIC1Prescaler$306 ==.
                           000655  1525 	XG$TIM2_SetIC1Prescaler$0$0 ==.
      00A980 32 01 A4         [ 1] 1526 	pop	_fp_
      00A983 32 01 A5         [ 1] 1527 	pop	_fp_+1
      00A986 81               [ 4] 1528 	ret
                           00065C  1529 	Sstm8s_tim2$TIM2_SetIC1Prescaler$307 ==.
                           00065C  1530 	Sstm8s_tim2$TIM2_SetIC2Prescaler$308 ==.
                                   1531 ;	StdPeriphLib/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
                                   1532 ;	-----------------------------------------
                                   1533 ;	 function TIM2_SetIC2Prescaler
                                   1534 ;	-----------------------------------------
      00A987                       1535 _TIM2_SetIC2Prescaler:
      00A987 3B 01 A5         [ 1] 1536 	push	_fp_+1
      00A98A 3B 01 A4         [ 1] 1537 	push	_fp_
      00A98D 90 96            [ 1] 1538 	ldw	y, sp
      00A98F 90 CF 01 A4      [ 2] 1539 	ldw	_fp_, y
                           000668  1540 	Sstm8s_tim2$TIM2_SetIC2Prescaler$309 ==.
                           000668  1541 	Sstm8s_tim2$TIM2_SetIC2Prescaler$310 ==.
                                   1542 ;	StdPeriphLib/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00A993 AE 53 06         [ 2] 1543 	ldw	x, #0x5306
      00A996 F6               [ 1] 1544 	ld	a, (x)
      00A997 A4 F3            [ 1] 1545 	and	a, #0xf3
                           00066E  1546 	Sstm8s_tim2$TIM2_SetIC2Prescaler$311 ==.
                                   1547 ;	StdPeriphLib/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
      00A999 1A 05            [ 1] 1548 	or	a, (0x05, sp)
      00A99B AE 53 06         [ 2] 1549 	ldw	x, #0x5306
      00A99E F7               [ 1] 1550 	ld	(x), a
                           000674  1551 	Sstm8s_tim2$TIM2_SetIC2Prescaler$312 ==.
                                   1552 ;	StdPeriphLib/src/stm8s_tim2.c: 948: }
                           000674  1553 	Sstm8s_tim2$TIM2_SetIC2Prescaler$313 ==.
                           000674  1554 	XG$TIM2_SetIC2Prescaler$0$0 ==.
      00A99F 32 01 A4         [ 1] 1555 	pop	_fp_
      00A9A2 32 01 A5         [ 1] 1556 	pop	_fp_+1
      00A9A5 81               [ 4] 1557 	ret
                           00067B  1558 	Sstm8s_tim2$TIM2_SetIC2Prescaler$314 ==.
                           00067B  1559 	Sstm8s_tim2$TIM2_SetIC3Prescaler$315 ==.
                                   1560 ;	StdPeriphLib/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
                                   1561 ;	-----------------------------------------
                                   1562 ;	 function TIM2_SetIC3Prescaler
                                   1563 ;	-----------------------------------------
      00A9A6                       1564 _TIM2_SetIC3Prescaler:
      00A9A6 3B 01 A5         [ 1] 1565 	push	_fp_+1
      00A9A9 3B 01 A4         [ 1] 1566 	push	_fp_
      00A9AC 90 96            [ 1] 1567 	ldw	y, sp
      00A9AE 90 CF 01 A4      [ 2] 1568 	ldw	_fp_, y
                           000687  1569 	Sstm8s_tim2$TIM2_SetIC3Prescaler$316 ==.
                           000687  1570 	Sstm8s_tim2$TIM2_SetIC3Prescaler$317 ==.
                                   1571 ;	StdPeriphLib/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00A9B2 AE 53 07         [ 2] 1572 	ldw	x, #0x5307
      00A9B5 F6               [ 1] 1573 	ld	a, (x)
      00A9B6 A4 F3            [ 1] 1574 	and	a, #0xf3
                           00068D  1575 	Sstm8s_tim2$TIM2_SetIC3Prescaler$318 ==.
                                   1576 ;	StdPeriphLib/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
      00A9B8 1A 05            [ 1] 1577 	or	a, (0x05, sp)
      00A9BA AE 53 07         [ 2] 1578 	ldw	x, #0x5307
      00A9BD F7               [ 1] 1579 	ld	(x), a
                           000693  1580 	Sstm8s_tim2$TIM2_SetIC3Prescaler$319 ==.
                                   1581 ;	StdPeriphLib/src/stm8s_tim2.c: 968: }
                           000693  1582 	Sstm8s_tim2$TIM2_SetIC3Prescaler$320 ==.
                           000693  1583 	XG$TIM2_SetIC3Prescaler$0$0 ==.
      00A9BE 32 01 A4         [ 1] 1584 	pop	_fp_
      00A9C1 32 01 A5         [ 1] 1585 	pop	_fp_+1
      00A9C4 81               [ 4] 1586 	ret
                           00069A  1587 	Sstm8s_tim2$TIM2_SetIC3Prescaler$321 ==.
                           00069A  1588 	Sstm8s_tim2$TIM2_GetCapture1$322 ==.
                                   1589 ;	StdPeriphLib/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
                                   1590 ;	-----------------------------------------
                                   1591 ;	 function TIM2_GetCapture1
                                   1592 ;	-----------------------------------------
      00A9C5                       1593 _TIM2_GetCapture1:
      00A9C5 3B 01 A5         [ 1] 1594 	push	_fp_+1
      00A9C8 3B 01 A4         [ 1] 1595 	push	_fp_
      00A9CB 90 96            [ 1] 1596 	ldw	y, sp
      00A9CD 90 CF 01 A4      [ 2] 1597 	ldw	_fp_, y
                           0006A6  1598 	Sstm8s_tim2$TIM2_GetCapture1$323 ==.
      00A9D1 52 02            [ 2] 1599 	sub	sp, #2
                           0006A8  1600 	Sstm8s_tim2$TIM2_GetCapture1$324 ==.
                                   1601 ;	StdPeriphLib/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
      00A9D3 AE 53 0F         [ 2] 1602 	ldw	x, #0x530f
      00A9D6 F6               [ 1] 1603 	ld	a, (x)
      00A9D7 90 97            [ 1] 1604 	ld	yl, a
                           0006AE  1605 	Sstm8s_tim2$TIM2_GetCapture1$325 ==.
                                   1606 ;	StdPeriphLib/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
      00A9D9 AE 53 10         [ 2] 1607 	ldw	x, #0x5310
      00A9DC F6               [ 1] 1608 	ld	a, (x)
                           0006B2  1609 	Sstm8s_tim2$TIM2_GetCapture1$326 ==.
                                   1610 ;	StdPeriphLib/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
      00A9DD 5F               [ 1] 1611 	clrw	x
      00A9DE 97               [ 1] 1612 	ld	xl, a
                           0006B4  1613 	Sstm8s_tim2$TIM2_GetCapture1$327 ==.
                                   1614 ;	StdPeriphLib/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00A9DF 4F               [ 1] 1615 	clr	a
      00A9E0 90 9F            [ 1] 1616 	ld	a, yl
      00A9E2 0F 02            [ 1] 1617 	clr	(0x02, sp)
      00A9E4 89               [ 2] 1618 	pushw	x
      00A9E5 1A 01            [ 1] 1619 	or	a, (1, sp)
      00A9E7 85               [ 2] 1620 	popw	x
      00A9E8 01               [ 1] 1621 	rrwa	x
      00A9E9 1A 02            [ 1] 1622 	or	a, (0x02, sp)
      00A9EB 97               [ 1] 1623 	ld	xl, a
                           0006C1  1624 	Sstm8s_tim2$TIM2_GetCapture1$328 ==.
                                   1625 ;	StdPeriphLib/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
                           0006C1  1626 	Sstm8s_tim2$TIM2_GetCapture1$329 ==.
                                   1627 ;	StdPeriphLib/src/stm8s_tim2.c: 988: }
      00A9EC 5B 02            [ 2] 1628 	addw	sp, #2
                           0006C3  1629 	Sstm8s_tim2$TIM2_GetCapture1$330 ==.
                           0006C3  1630 	XG$TIM2_GetCapture1$0$0 ==.
      00A9EE 32 01 A4         [ 1] 1631 	pop	_fp_
      00A9F1 32 01 A5         [ 1] 1632 	pop	_fp_+1
      00A9F4 81               [ 4] 1633 	ret
                           0006CA  1634 	Sstm8s_tim2$TIM2_GetCapture1$331 ==.
                           0006CA  1635 	Sstm8s_tim2$TIM2_GetCapture2$332 ==.
                                   1636 ;	StdPeriphLib/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
                                   1637 ;	-----------------------------------------
                                   1638 ;	 function TIM2_GetCapture2
                                   1639 ;	-----------------------------------------
      00A9F5                       1640 _TIM2_GetCapture2:
      00A9F5 3B 01 A5         [ 1] 1641 	push	_fp_+1
      00A9F8 3B 01 A4         [ 1] 1642 	push	_fp_
      00A9FB 90 96            [ 1] 1643 	ldw	y, sp
      00A9FD 90 CF 01 A4      [ 2] 1644 	ldw	_fp_, y
                           0006D6  1645 	Sstm8s_tim2$TIM2_GetCapture2$333 ==.
      00AA01 52 02            [ 2] 1646 	sub	sp, #2
                           0006D8  1647 	Sstm8s_tim2$TIM2_GetCapture2$334 ==.
                                   1648 ;	StdPeriphLib/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
      00AA03 AE 53 11         [ 2] 1649 	ldw	x, #0x5311
      00AA06 F6               [ 1] 1650 	ld	a, (x)
      00AA07 90 97            [ 1] 1651 	ld	yl, a
                           0006DE  1652 	Sstm8s_tim2$TIM2_GetCapture2$335 ==.
                                   1653 ;	StdPeriphLib/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
      00AA09 AE 53 12         [ 2] 1654 	ldw	x, #0x5312
      00AA0C F6               [ 1] 1655 	ld	a, (x)
                           0006E2  1656 	Sstm8s_tim2$TIM2_GetCapture2$336 ==.
                                   1657 ;	StdPeriphLib/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
      00AA0D 5F               [ 1] 1658 	clrw	x
      00AA0E 97               [ 1] 1659 	ld	xl, a
                           0006E4  1660 	Sstm8s_tim2$TIM2_GetCapture2$337 ==.
                                   1661 ;	StdPeriphLib/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00AA0F 4F               [ 1] 1662 	clr	a
      00AA10 90 9F            [ 1] 1663 	ld	a, yl
      00AA12 0F 02            [ 1] 1664 	clr	(0x02, sp)
      00AA14 89               [ 2] 1665 	pushw	x
      00AA15 1A 01            [ 1] 1666 	or	a, (1, sp)
      00AA17 85               [ 2] 1667 	popw	x
      00AA18 01               [ 1] 1668 	rrwa	x
      00AA19 1A 02            [ 1] 1669 	or	a, (0x02, sp)
      00AA1B 97               [ 1] 1670 	ld	xl, a
                           0006F1  1671 	Sstm8s_tim2$TIM2_GetCapture2$338 ==.
                                   1672 ;	StdPeriphLib/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
                           0006F1  1673 	Sstm8s_tim2$TIM2_GetCapture2$339 ==.
                                   1674 ;	StdPeriphLib/src/stm8s_tim2.c: 1008: }
      00AA1C 5B 02            [ 2] 1675 	addw	sp, #2
                           0006F3  1676 	Sstm8s_tim2$TIM2_GetCapture2$340 ==.
                           0006F3  1677 	XG$TIM2_GetCapture2$0$0 ==.
      00AA1E 32 01 A4         [ 1] 1678 	pop	_fp_
      00AA21 32 01 A5         [ 1] 1679 	pop	_fp_+1
      00AA24 81               [ 4] 1680 	ret
                           0006FA  1681 	Sstm8s_tim2$TIM2_GetCapture2$341 ==.
                           0006FA  1682 	Sstm8s_tim2$TIM2_GetCapture3$342 ==.
                                   1683 ;	StdPeriphLib/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
                                   1684 ;	-----------------------------------------
                                   1685 ;	 function TIM2_GetCapture3
                                   1686 ;	-----------------------------------------
      00AA25                       1687 _TIM2_GetCapture3:
      00AA25 3B 01 A5         [ 1] 1688 	push	_fp_+1
      00AA28 3B 01 A4         [ 1] 1689 	push	_fp_
      00AA2B 90 96            [ 1] 1690 	ldw	y, sp
      00AA2D 90 CF 01 A4      [ 2] 1691 	ldw	_fp_, y
                           000706  1692 	Sstm8s_tim2$TIM2_GetCapture3$343 ==.
      00AA31 52 02            [ 2] 1693 	sub	sp, #2
                           000708  1694 	Sstm8s_tim2$TIM2_GetCapture3$344 ==.
                                   1695 ;	StdPeriphLib/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
      00AA33 AE 53 13         [ 2] 1696 	ldw	x, #0x5313
      00AA36 F6               [ 1] 1697 	ld	a, (x)
      00AA37 90 97            [ 1] 1698 	ld	yl, a
                           00070E  1699 	Sstm8s_tim2$TIM2_GetCapture3$345 ==.
                                   1700 ;	StdPeriphLib/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
      00AA39 AE 53 14         [ 2] 1701 	ldw	x, #0x5314
      00AA3C F6               [ 1] 1702 	ld	a, (x)
                           000712  1703 	Sstm8s_tim2$TIM2_GetCapture3$346 ==.
                                   1704 ;	StdPeriphLib/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
      00AA3D 5F               [ 1] 1705 	clrw	x
      00AA3E 97               [ 1] 1706 	ld	xl, a
                           000714  1707 	Sstm8s_tim2$TIM2_GetCapture3$347 ==.
                                   1708 ;	StdPeriphLib/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      00AA3F 4F               [ 1] 1709 	clr	a
      00AA40 90 9F            [ 1] 1710 	ld	a, yl
      00AA42 0F 02            [ 1] 1711 	clr	(0x02, sp)
      00AA44 89               [ 2] 1712 	pushw	x
      00AA45 1A 01            [ 1] 1713 	or	a, (1, sp)
      00AA47 85               [ 2] 1714 	popw	x
      00AA48 01               [ 1] 1715 	rrwa	x
      00AA49 1A 02            [ 1] 1716 	or	a, (0x02, sp)
      00AA4B 97               [ 1] 1717 	ld	xl, a
                           000721  1718 	Sstm8s_tim2$TIM2_GetCapture3$348 ==.
                                   1719 ;	StdPeriphLib/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
                           000721  1720 	Sstm8s_tim2$TIM2_GetCapture3$349 ==.
                                   1721 ;	StdPeriphLib/src/stm8s_tim2.c: 1028: }
      00AA4C 5B 02            [ 2] 1722 	addw	sp, #2
                           000723  1723 	Sstm8s_tim2$TIM2_GetCapture3$350 ==.
                           000723  1724 	XG$TIM2_GetCapture3$0$0 ==.
      00AA4E 32 01 A4         [ 1] 1725 	pop	_fp_
      00AA51 32 01 A5         [ 1] 1726 	pop	_fp_+1
      00AA54 81               [ 4] 1727 	ret
                           00072A  1728 	Sstm8s_tim2$TIM2_GetCapture3$351 ==.
                           00072A  1729 	Sstm8s_tim2$TIM2_GetCounter$352 ==.
                                   1730 ;	StdPeriphLib/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
                                   1731 ;	-----------------------------------------
                                   1732 ;	 function TIM2_GetCounter
                                   1733 ;	-----------------------------------------
      00AA55                       1734 _TIM2_GetCounter:
      00AA55 3B 01 A5         [ 1] 1735 	push	_fp_+1
      00AA58 3B 01 A4         [ 1] 1736 	push	_fp_
      00AA5B 90 96            [ 1] 1737 	ldw	y, sp
      00AA5D 90 CF 01 A4      [ 2] 1738 	ldw	_fp_, y
                           000736  1739 	Sstm8s_tim2$TIM2_GetCounter$353 ==.
      00AA61 52 04            [ 2] 1740 	sub	sp, #4
                           000738  1741 	Sstm8s_tim2$TIM2_GetCounter$354 ==.
                                   1742 ;	StdPeriphLib/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
      00AA63 AE 53 0A         [ 2] 1743 	ldw	x, #0x530a
      00AA66 F6               [ 1] 1744 	ld	a, (x)
      00AA67 95               [ 1] 1745 	ld	xh, a
      00AA68 4F               [ 1] 1746 	clr	a
      00AA69 4F               [ 1] 1747 	clr	a
      00AA6A 6B 02            [ 1] 1748 	ld	(0x02, sp), a
                           000741  1749 	Sstm8s_tim2$TIM2_GetCounter$355 ==.
                                   1750 ;	StdPeriphLib/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
      00AA6C 90 AE 53 0B      [ 2] 1751 	ldw	y, #0x530b
      00AA70 90 F6            [ 1] 1752 	ld	a, (y)
      00AA72 0F 03            [ 1] 1753 	clr	(0x03, sp)
      00AA74 1A 02            [ 1] 1754 	or	a, (0x02, sp)
      00AA76 02               [ 1] 1755 	rlwa	x
      00AA77 1A 03            [ 1] 1756 	or	a, (0x03, sp)
      00AA79 95               [ 1] 1757 	ld	xh, a
                           00074F  1758 	Sstm8s_tim2$TIM2_GetCounter$356 ==.
                                   1759 ;	StdPeriphLib/src/stm8s_tim2.c: 1042: }
      00AA7A 5B 04            [ 2] 1760 	addw	sp, #4
                           000751  1761 	Sstm8s_tim2$TIM2_GetCounter$357 ==.
                           000751  1762 	XG$TIM2_GetCounter$0$0 ==.
      00AA7C 32 01 A4         [ 1] 1763 	pop	_fp_
      00AA7F 32 01 A5         [ 1] 1764 	pop	_fp_+1
      00AA82 81               [ 4] 1765 	ret
                           000758  1766 	Sstm8s_tim2$TIM2_GetCounter$358 ==.
                           000758  1767 	Sstm8s_tim2$TIM2_GetPrescaler$359 ==.
                                   1768 ;	StdPeriphLib/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
                                   1769 ;	-----------------------------------------
                                   1770 ;	 function TIM2_GetPrescaler
                                   1771 ;	-----------------------------------------
      00AA83                       1772 _TIM2_GetPrescaler:
      00AA83 3B 01 A5         [ 1] 1773 	push	_fp_+1
      00AA86 3B 01 A4         [ 1] 1774 	push	_fp_
      00AA89 90 96            [ 1] 1775 	ldw	y, sp
      00AA8B 90 CF 01 A4      [ 2] 1776 	ldw	_fp_, y
                           000764  1777 	Sstm8s_tim2$TIM2_GetPrescaler$360 ==.
                           000764  1778 	Sstm8s_tim2$TIM2_GetPrescaler$361 ==.
                                   1779 ;	StdPeriphLib/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
      00AA8F AE 53 0C         [ 2] 1780 	ldw	x, #0x530c
      00AA92 F6               [ 1] 1781 	ld	a, (x)
                           000768  1782 	Sstm8s_tim2$TIM2_GetPrescaler$362 ==.
                                   1783 ;	StdPeriphLib/src/stm8s_tim2.c: 1053: }
                           000768  1784 	Sstm8s_tim2$TIM2_GetPrescaler$363 ==.
                           000768  1785 	XG$TIM2_GetPrescaler$0$0 ==.
      00AA93 32 01 A4         [ 1] 1786 	pop	_fp_
      00AA96 32 01 A5         [ 1] 1787 	pop	_fp_+1
      00AA99 81               [ 4] 1788 	ret
                           00076F  1789 	Sstm8s_tim2$TIM2_GetPrescaler$364 ==.
                           00076F  1790 	Sstm8s_tim2$TIM2_GetFlagStatus$365 ==.
                                   1791 ;	StdPeriphLib/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1792 ;	-----------------------------------------
                                   1793 ;	 function TIM2_GetFlagStatus
                                   1794 ;	-----------------------------------------
      00AA9A                       1795 _TIM2_GetFlagStatus:
      00AA9A 3B 01 A5         [ 1] 1796 	push	_fp_+1
      00AA9D 3B 01 A4         [ 1] 1797 	push	_fp_
      00AAA0 90 96            [ 1] 1798 	ldw	y, sp
      00AAA2 90 CF 01 A4      [ 2] 1799 	ldw	_fp_, y
                           00077B  1800 	Sstm8s_tim2$TIM2_GetFlagStatus$366 ==.
      00AAA6 52 05            [ 2] 1801 	sub	sp, #5
                           00077D  1802 	Sstm8s_tim2$TIM2_GetFlagStatus$367 ==.
                                   1803 ;	StdPeriphLib/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
      00AAA8 AE 53 02         [ 2] 1804 	ldw	x, #0x5302
      00AAAB F6               [ 1] 1805 	ld	a, (x)
      00AAAC 6B 03            [ 1] 1806 	ld	(0x03, sp), a
      00AAAE 7B 0B            [ 1] 1807 	ld	a, (0x0b, sp)
      00AAB0 14 03            [ 1] 1808 	and	a, (0x03, sp)
      00AAB2 6B 02            [ 1] 1809 	ld	(0x02, sp), a
                           000789  1810 	Sstm8s_tim2$TIM2_GetFlagStatus$368 ==.
                                   1811 ;	StdPeriphLib/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
      00AAB4 7B 0A            [ 1] 1812 	ld	a, (0x0a, sp)
      00AAB6 0F 04            [ 1] 1813 	clr	(0x04, sp)
      00AAB8 6B 01            [ 1] 1814 	ld	(0x01, sp), a
                           00078F  1815 	Sstm8s_tim2$TIM2_GetFlagStatus$369 ==.
                                   1816 ;	StdPeriphLib/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
      00AABA AE 53 03         [ 2] 1817 	ldw	x, #0x5303
      00AABD F6               [ 1] 1818 	ld	a, (x)
      00AABE 14 01            [ 1] 1819 	and	a, (0x01, sp)
      00AAC0 1A 02            [ 1] 1820 	or	a, (0x02, sp)
      00AAC2 4D               [ 1] 1821 	tnz	a
      00AAC3 27 04            [ 1] 1822 	jreq	00102$
                           00079A  1823 	Sstm8s_tim2$TIM2_GetFlagStatus$370 ==.
                                   1824 ;	StdPeriphLib/src/stm8s_tim2.c: 1081: bitstatus = SET;
      00AAC5 A6 01            [ 1] 1825 	ld	a, #0x01
      00AAC7 20 01            [ 2] 1826 	jra	00103$
      00AAC9                       1827 00102$:
                           00079E  1828 	Sstm8s_tim2$TIM2_GetFlagStatus$371 ==.
                                   1829 ;	StdPeriphLib/src/stm8s_tim2.c: 1085: bitstatus = RESET;
      00AAC9 4F               [ 1] 1830 	clr	a
      00AACA                       1831 00103$:
                           00079F  1832 	Sstm8s_tim2$TIM2_GetFlagStatus$372 ==.
                                   1833 ;	StdPeriphLib/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
                           00079F  1834 	Sstm8s_tim2$TIM2_GetFlagStatus$373 ==.
                                   1835 ;	StdPeriphLib/src/stm8s_tim2.c: 1088: }
      00AACA 5B 05            [ 2] 1836 	addw	sp, #5
                           0007A1  1837 	Sstm8s_tim2$TIM2_GetFlagStatus$374 ==.
                           0007A1  1838 	XG$TIM2_GetFlagStatus$0$0 ==.
      00AACC 32 01 A4         [ 1] 1839 	pop	_fp_
      00AACF 32 01 A5         [ 1] 1840 	pop	_fp_+1
      00AAD2 81               [ 4] 1841 	ret
                           0007A8  1842 	Sstm8s_tim2$TIM2_GetFlagStatus$375 ==.
                           0007A8  1843 	Sstm8s_tim2$TIM2_ClearFlag$376 ==.
                                   1844 ;	StdPeriphLib/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1845 ;	-----------------------------------------
                                   1846 ;	 function TIM2_ClearFlag
                                   1847 ;	-----------------------------------------
      00AAD3                       1848 _TIM2_ClearFlag:
      00AAD3 3B 01 A5         [ 1] 1849 	push	_fp_+1
      00AAD6 3B 01 A4         [ 1] 1850 	push	_fp_
      00AAD9 90 96            [ 1] 1851 	ldw	y, sp
      00AADB 90 CF 01 A4      [ 2] 1852 	ldw	_fp_, y
                           0007B4  1853 	Sstm8s_tim2$TIM2_ClearFlag$377 ==.
      00AADF 52 02            [ 2] 1854 	sub	sp, #2
                           0007B6  1855 	Sstm8s_tim2$TIM2_ClearFlag$378 ==.
                                   1856 ;	StdPeriphLib/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
      00AAE1 7B 08            [ 1] 1857 	ld	a, (0x08, sp)
      00AAE3 43               [ 1] 1858 	cpl	a
      00AAE4 AE 53 02         [ 2] 1859 	ldw	x, #0x5302
      00AAE7 F7               [ 1] 1860 	ld	(x), a
                           0007BD  1861 	Sstm8s_tim2$TIM2_ClearFlag$379 ==.
                                   1862 ;	StdPeriphLib/src/stm8s_tim2.c: 1111: TIM2->SR2 = (uint8_t)(~((uint8_t)(TIM2_FLAG >> 8))); // [Roshan, 2015-Nov-09]
      00AAE8 7B 07            [ 1] 1863 	ld	a, (0x07, sp)
      00AAEA 0F 01            [ 1] 1864 	clr	(0x01, sp)
      00AAEC 43               [ 1] 1865 	cpl	a
      00AAED AE 53 03         [ 2] 1866 	ldw	x, #0x5303
      00AAF0 F7               [ 1] 1867 	ld	(x), a
                           0007C6  1868 	Sstm8s_tim2$TIM2_ClearFlag$380 ==.
                                   1869 ;	StdPeriphLib/src/stm8s_tim2.c: 1112: }
      00AAF1 5B 02            [ 2] 1870 	addw	sp, #2
                           0007C8  1871 	Sstm8s_tim2$TIM2_ClearFlag$381 ==.
                           0007C8  1872 	XG$TIM2_ClearFlag$0$0 ==.
      00AAF3 32 01 A4         [ 1] 1873 	pop	_fp_
      00AAF6 32 01 A5         [ 1] 1874 	pop	_fp_+1
      00AAF9 81               [ 4] 1875 	ret
                           0007CF  1876 	Sstm8s_tim2$TIM2_ClearFlag$382 ==.
                           0007CF  1877 	Sstm8s_tim2$TIM2_GetITStatus$383 ==.
                                   1878 ;	StdPeriphLib/src/stm8s_tim2.c: 1124: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
                                   1879 ;	-----------------------------------------
                                   1880 ;	 function TIM2_GetITStatus
                                   1881 ;	-----------------------------------------
      00AAFA                       1882 _TIM2_GetITStatus:
      00AAFA 3B 01 A5         [ 1] 1883 	push	_fp_+1
      00AAFD 3B 01 A4         [ 1] 1884 	push	_fp_
      00AB00 90 96            [ 1] 1885 	ldw	y, sp
      00AB02 90 CF 01 A4      [ 2] 1886 	ldw	_fp_, y
                           0007DB  1887 	Sstm8s_tim2$TIM2_GetITStatus$384 ==.
      00AB06 88               [ 1] 1888 	push	a
                           0007DC  1889 	Sstm8s_tim2$TIM2_GetITStatus$385 ==.
                                   1890 ;	StdPeriphLib/src/stm8s_tim2.c: 1132: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
      00AB07 AE 53 02         [ 2] 1891 	ldw	x, #0x5302
      00AB0A F6               [ 1] 1892 	ld	a, (x)
      00AB0B 14 06            [ 1] 1893 	and	a, (0x06, sp)
      00AB0D 6B 01            [ 1] 1894 	ld	(0x01, sp), a
                           0007E4  1895 	Sstm8s_tim2$TIM2_GetITStatus$386 ==.
                                   1896 ;	StdPeriphLib/src/stm8s_tim2.c: 1134: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
      00AB0F AE 53 01         [ 2] 1897 	ldw	x, #0x5301
      00AB12 F6               [ 1] 1898 	ld	a, (x)
      00AB13 14 06            [ 1] 1899 	and	a, (0x06, sp)
                           0007EA  1900 	Sstm8s_tim2$TIM2_GetITStatus$387 ==.
                                   1901 ;	StdPeriphLib/src/stm8s_tim2.c: 1136: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
      00AB15 0D 01            [ 1] 1902 	tnz	(0x01, sp)
      00AB17 27 07            [ 1] 1903 	jreq	00102$
      00AB19 4D               [ 1] 1904 	tnz	a
      00AB1A 27 04            [ 1] 1905 	jreq	00102$
                           0007F1  1906 	Sstm8s_tim2$TIM2_GetITStatus$388 ==.
                                   1907 ;	StdPeriphLib/src/stm8s_tim2.c: 1138: bitstatus = SET;
      00AB1C A6 01            [ 1] 1908 	ld	a, #0x01
      00AB1E 20 01            [ 2] 1909 	jra	00103$
      00AB20                       1910 00102$:
                           0007F5  1911 	Sstm8s_tim2$TIM2_GetITStatus$389 ==.
                                   1912 ;	StdPeriphLib/src/stm8s_tim2.c: 1142: bitstatus = RESET;
      00AB20 4F               [ 1] 1913 	clr	a
      00AB21                       1914 00103$:
                           0007F6  1915 	Sstm8s_tim2$TIM2_GetITStatus$390 ==.
                                   1916 ;	StdPeriphLib/src/stm8s_tim2.c: 1144: return (ITStatus)(bitstatus);
                           0007F6  1917 	Sstm8s_tim2$TIM2_GetITStatus$391 ==.
                                   1918 ;	StdPeriphLib/src/stm8s_tim2.c: 1145: }
      00AB21 5B 01            [ 2] 1919 	addw	sp, #1
                           0007F8  1920 	Sstm8s_tim2$TIM2_GetITStatus$392 ==.
                           0007F8  1921 	XG$TIM2_GetITStatus$0$0 ==.
      00AB23 32 01 A4         [ 1] 1922 	pop	_fp_
      00AB26 32 01 A5         [ 1] 1923 	pop	_fp_+1
      00AB29 81               [ 4] 1924 	ret
                           0007FF  1925 	Sstm8s_tim2$TIM2_GetITStatus$393 ==.
                           0007FF  1926 	Sstm8s_tim2$TIM2_ClearITPendingBit$394 ==.
                                   1927 ;	StdPeriphLib/src/stm8s_tim2.c: 1157: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
                                   1928 ;	-----------------------------------------
                                   1929 ;	 function TIM2_ClearITPendingBit
                                   1930 ;	-----------------------------------------
      00AB2A                       1931 _TIM2_ClearITPendingBit:
      00AB2A 3B 01 A5         [ 1] 1932 	push	_fp_+1
      00AB2D 3B 01 A4         [ 1] 1933 	push	_fp_
      00AB30 90 96            [ 1] 1934 	ldw	y, sp
      00AB32 90 CF 01 A4      [ 2] 1935 	ldw	_fp_, y
                           00080B  1936 	Sstm8s_tim2$TIM2_ClearITPendingBit$395 ==.
                           00080B  1937 	Sstm8s_tim2$TIM2_ClearITPendingBit$396 ==.
                                   1938 ;	StdPeriphLib/src/stm8s_tim2.c: 1163: TIM2->SR1 = (uint8_t)(~TIM2_IT);
      00AB36 7B 05            [ 1] 1939 	ld	a, (0x05, sp)
      00AB38 43               [ 1] 1940 	cpl	a
      00AB39 AE 53 02         [ 2] 1941 	ldw	x, #0x5302
      00AB3C F7               [ 1] 1942 	ld	(x), a
                           000812  1943 	Sstm8s_tim2$TIM2_ClearITPendingBit$397 ==.
                                   1944 ;	StdPeriphLib/src/stm8s_tim2.c: 1164: }
                           000812  1945 	Sstm8s_tim2$TIM2_ClearITPendingBit$398 ==.
                           000812  1946 	XG$TIM2_ClearITPendingBit$0$0 ==.
      00AB3D 32 01 A4         [ 1] 1947 	pop	_fp_
      00AB40 32 01 A5         [ 1] 1948 	pop	_fp_+1
      00AB43 81               [ 4] 1949 	ret
                           000819  1950 	Sstm8s_tim2$TIM2_ClearITPendingBit$399 ==.
                           000819  1951 	Sstm8s_tim2$TI1_Config$400 ==.
                                   1952 ;	StdPeriphLib/src/stm8s_tim2.c: 1182: static void TI1_Config(uint8_t TIM2_ICPolarity,
                                   1953 ;	-----------------------------------------
                                   1954 ;	 function TI1_Config
                                   1955 ;	-----------------------------------------
      00AB44                       1956 _TI1_Config:
      00AB44 3B 01 A5         [ 1] 1957 	push	_fp_+1
      00AB47 3B 01 A4         [ 1] 1958 	push	_fp_
      00AB4A 90 96            [ 1] 1959 	ldw	y, sp
      00AB4C 90 CF 01 A4      [ 2] 1960 	ldw	_fp_, y
                           000825  1961 	Sstm8s_tim2$TI1_Config$401 ==.
      00AB50 88               [ 1] 1962 	push	a
                           000826  1963 	Sstm8s_tim2$TI1_Config$402 ==.
                                   1964 ;	StdPeriphLib/src/stm8s_tim2.c: 1187: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00AB51 72 11 53 08      [ 1] 1965 	bres	0x5308, #0
                           00082A  1966 	Sstm8s_tim2$TI1_Config$403 ==.
                                   1967 ;	StdPeriphLib/src/stm8s_tim2.c: 1190: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      00AB55 AE 53 05         [ 2] 1968 	ldw	x, #0x5305
      00AB58 F6               [ 1] 1969 	ld	a, (x)
      00AB59 A4 0C            [ 1] 1970 	and	a, #0x0c
      00AB5B 6B 01            [ 1] 1971 	ld	(0x01, sp), a
                           000832  1972 	Sstm8s_tim2$TI1_Config$404 ==.
                                   1973 ;	StdPeriphLib/src/stm8s_tim2.c: 1191: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00AB5D 7B 08            [ 1] 1974 	ld	a, (0x08, sp)
      00AB5F 4E               [ 1] 1975 	swap	a
      00AB60 A4 F0            [ 1] 1976 	and	a, #0xf0
      00AB62 1A 07            [ 1] 1977 	or	a, (0x07, sp)
      00AB64 1A 01            [ 1] 1978 	or	a, (0x01, sp)
      00AB66 AE 53 05         [ 2] 1979 	ldw	x, #0x5305
      00AB69 F7               [ 1] 1980 	ld	(x), a
                           00083F  1981 	Sstm8s_tim2$TI1_Config$405 ==.
                                   1982 ;	StdPeriphLib/src/stm8s_tim2.c: 1194: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00AB6A 0D 06            [ 1] 1983 	tnz	(0x06, sp)
      00AB6C 27 09            [ 1] 1984 	jreq	00102$
                           000843  1985 	Sstm8s_tim2$TI1_Config$406 ==.
                                   1986 ;	StdPeriphLib/src/stm8s_tim2.c: 1196: TIM2->CCER1 |= TIM2_CCER1_CC1P;
      00AB6E AE 53 08         [ 2] 1987 	ldw	x, #0x5308
      00AB71 F6               [ 1] 1988 	ld	a, (x)
      00AB72 AA 02            [ 1] 1989 	or	a, #0x02
      00AB74 F7               [ 1] 1990 	ld	(x), a
      00AB75 20 07            [ 2] 1991 	jra	00103$
      00AB77                       1992 00102$:
                           00084C  1993 	Sstm8s_tim2$TI1_Config$407 ==.
                                   1994 ;	StdPeriphLib/src/stm8s_tim2.c: 1200: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00AB77 AE 53 08         [ 2] 1995 	ldw	x, #0x5308
      00AB7A F6               [ 1] 1996 	ld	a, (x)
      00AB7B A4 FD            [ 1] 1997 	and	a, #0xfd
      00AB7D F7               [ 1] 1998 	ld	(x), a
      00AB7E                       1999 00103$:
                           000853  2000 	Sstm8s_tim2$TI1_Config$408 ==.
                                   2001 ;	StdPeriphLib/src/stm8s_tim2.c: 1203: TIM2->CCER1 |= TIM2_CCER1_CC1E;
      00AB7E 72 10 53 08      [ 1] 2002 	bset	0x5308, #0
                           000857  2003 	Sstm8s_tim2$TI1_Config$409 ==.
                                   2004 ;	StdPeriphLib/src/stm8s_tim2.c: 1204: }
      00AB82 84               [ 1] 2005 	pop	a
                           000858  2006 	Sstm8s_tim2$TI1_Config$410 ==.
                           000858  2007 	XFstm8s_tim2$TI1_Config$0$0 ==.
      00AB83 32 01 A4         [ 1] 2008 	pop	_fp_
      00AB86 32 01 A5         [ 1] 2009 	pop	_fp_+1
      00AB89 81               [ 4] 2010 	ret
                           00085F  2011 	Sstm8s_tim2$TI1_Config$411 ==.
                           00085F  2012 	Sstm8s_tim2$TI2_Config$412 ==.
                                   2013 ;	StdPeriphLib/src/stm8s_tim2.c: 1222: static void TI2_Config(uint8_t TIM2_ICPolarity,
                                   2014 ;	-----------------------------------------
                                   2015 ;	 function TI2_Config
                                   2016 ;	-----------------------------------------
      00AB8A                       2017 _TI2_Config:
      00AB8A 3B 01 A5         [ 1] 2018 	push	_fp_+1
      00AB8D 3B 01 A4         [ 1] 2019 	push	_fp_
      00AB90 90 96            [ 1] 2020 	ldw	y, sp
      00AB92 90 CF 01 A4      [ 2] 2021 	ldw	_fp_, y
                           00086B  2022 	Sstm8s_tim2$TI2_Config$413 ==.
      00AB96 88               [ 1] 2023 	push	a
                           00086C  2024 	Sstm8s_tim2$TI2_Config$414 ==.
                                   2025 ;	StdPeriphLib/src/stm8s_tim2.c: 1227: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00AB97 AE 53 08         [ 2] 2026 	ldw	x, #0x5308
      00AB9A F6               [ 1] 2027 	ld	a, (x)
      00AB9B A4 EF            [ 1] 2028 	and	a, #0xef
      00AB9D F7               [ 1] 2029 	ld	(x), a
                           000873  2030 	Sstm8s_tim2$TI2_Config$415 ==.
                                   2031 ;	StdPeriphLib/src/stm8s_tim2.c: 1230: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      00AB9E AE 53 06         [ 2] 2032 	ldw	x, #0x5306
      00ABA1 F6               [ 1] 2033 	ld	a, (x)
      00ABA2 A4 0C            [ 1] 2034 	and	a, #0x0c
      00ABA4 6B 01            [ 1] 2035 	ld	(0x01, sp), a
                           00087B  2036 	Sstm8s_tim2$TI2_Config$416 ==.
                                   2037 ;	StdPeriphLib/src/stm8s_tim2.c: 1231: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00ABA6 7B 08            [ 1] 2038 	ld	a, (0x08, sp)
      00ABA8 4E               [ 1] 2039 	swap	a
      00ABA9 A4 F0            [ 1] 2040 	and	a, #0xf0
      00ABAB 1A 07            [ 1] 2041 	or	a, (0x07, sp)
      00ABAD 1A 01            [ 1] 2042 	or	a, (0x01, sp)
      00ABAF AE 53 06         [ 2] 2043 	ldw	x, #0x5306
      00ABB2 F7               [ 1] 2044 	ld	(x), a
                           000888  2045 	Sstm8s_tim2$TI2_Config$417 ==.
                                   2046 ;	StdPeriphLib/src/stm8s_tim2.c: 1235: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00ABB3 0D 06            [ 1] 2047 	tnz	(0x06, sp)
      00ABB5 27 09            [ 1] 2048 	jreq	00102$
                           00088C  2049 	Sstm8s_tim2$TI2_Config$418 ==.
                                   2050 ;	StdPeriphLib/src/stm8s_tim2.c: 1237: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00ABB7 AE 53 08         [ 2] 2051 	ldw	x, #0x5308
      00ABBA F6               [ 1] 2052 	ld	a, (x)
      00ABBB AA 20            [ 1] 2053 	or	a, #0x20
      00ABBD F7               [ 1] 2054 	ld	(x), a
      00ABBE 20 07            [ 2] 2055 	jra	00103$
      00ABC0                       2056 00102$:
                           000895  2057 	Sstm8s_tim2$TI2_Config$419 ==.
                                   2058 ;	StdPeriphLib/src/stm8s_tim2.c: 1241: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00ABC0 AE 53 08         [ 2] 2059 	ldw	x, #0x5308
      00ABC3 F6               [ 1] 2060 	ld	a, (x)
      00ABC4 A4 DF            [ 1] 2061 	and	a, #0xdf
      00ABC6 F7               [ 1] 2062 	ld	(x), a
      00ABC7                       2063 00103$:
                           00089C  2064 	Sstm8s_tim2$TI2_Config$420 ==.
                                   2065 ;	StdPeriphLib/src/stm8s_tim2.c: 1245: TIM2->CCER1 |= TIM2_CCER1_CC2E;
      00ABC7 AE 53 08         [ 2] 2066 	ldw	x, #0x5308
      00ABCA F6               [ 1] 2067 	ld	a, (x)
      00ABCB AA 10            [ 1] 2068 	or	a, #0x10
      00ABCD F7               [ 1] 2069 	ld	(x), a
                           0008A3  2070 	Sstm8s_tim2$TI2_Config$421 ==.
                                   2071 ;	StdPeriphLib/src/stm8s_tim2.c: 1246: }
      00ABCE 84               [ 1] 2072 	pop	a
                           0008A4  2073 	Sstm8s_tim2$TI2_Config$422 ==.
                           0008A4  2074 	XFstm8s_tim2$TI2_Config$0$0 ==.
      00ABCF 32 01 A4         [ 1] 2075 	pop	_fp_
      00ABD2 32 01 A5         [ 1] 2076 	pop	_fp_+1
      00ABD5 81               [ 4] 2077 	ret
                           0008AB  2078 	Sstm8s_tim2$TI2_Config$423 ==.
                           0008AB  2079 	Sstm8s_tim2$TI3_Config$424 ==.
                                   2080 ;	StdPeriphLib/src/stm8s_tim2.c: 1262: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
                                   2081 ;	-----------------------------------------
                                   2082 ;	 function TI3_Config
                                   2083 ;	-----------------------------------------
      00ABD6                       2084 _TI3_Config:
      00ABD6 3B 01 A5         [ 1] 2085 	push	_fp_+1
      00ABD9 3B 01 A4         [ 1] 2086 	push	_fp_
      00ABDC 90 96            [ 1] 2087 	ldw	y, sp
      00ABDE 90 CF 01 A4      [ 2] 2088 	ldw	_fp_, y
                           0008B7  2089 	Sstm8s_tim2$TI3_Config$425 ==.
      00ABE2 88               [ 1] 2090 	push	a
                           0008B8  2091 	Sstm8s_tim2$TI3_Config$426 ==.
                                   2092 ;	StdPeriphLib/src/stm8s_tim2.c: 1266: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      00ABE3 72 11 53 09      [ 1] 2093 	bres	0x5309, #0
                           0008BC  2094 	Sstm8s_tim2$TI3_Config$427 ==.
                                   2095 ;	StdPeriphLib/src/stm8s_tim2.c: 1269: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF)))
      00ABE7 AE 53 07         [ 2] 2096 	ldw	x, #0x5307
      00ABEA F6               [ 1] 2097 	ld	a, (x)
      00ABEB A4 0C            [ 1] 2098 	and	a, #0x0c
      00ABED 6B 01            [ 1] 2099 	ld	(0x01, sp), a
                           0008C4  2100 	Sstm8s_tim2$TI3_Config$428 ==.
                                   2101 ;	StdPeriphLib/src/stm8s_tim2.c: 1270: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00ABEF 7B 08            [ 1] 2102 	ld	a, (0x08, sp)
      00ABF1 4E               [ 1] 2103 	swap	a
      00ABF2 A4 F0            [ 1] 2104 	and	a, #0xf0
      00ABF4 1A 07            [ 1] 2105 	or	a, (0x07, sp)
      00ABF6 1A 01            [ 1] 2106 	or	a, (0x01, sp)
      00ABF8 AE 53 07         [ 2] 2107 	ldw	x, #0x5307
      00ABFB F7               [ 1] 2108 	ld	(x), a
                           0008D1  2109 	Sstm8s_tim2$TI3_Config$429 ==.
                                   2110 ;	StdPeriphLib/src/stm8s_tim2.c: 1274: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00ABFC 0D 06            [ 1] 2111 	tnz	(0x06, sp)
      00ABFE 27 09            [ 1] 2112 	jreq	00102$
                           0008D5  2113 	Sstm8s_tim2$TI3_Config$430 ==.
                                   2114 ;	StdPeriphLib/src/stm8s_tim2.c: 1276: TIM2->CCER2 |= TIM2_CCER2_CC3P;
      00AC00 AE 53 09         [ 2] 2115 	ldw	x, #0x5309
      00AC03 F6               [ 1] 2116 	ld	a, (x)
      00AC04 AA 02            [ 1] 2117 	or	a, #0x02
      00AC06 F7               [ 1] 2118 	ld	(x), a
      00AC07 20 07            [ 2] 2119 	jra	00103$
      00AC09                       2120 00102$:
                           0008DE  2121 	Sstm8s_tim2$TI3_Config$431 ==.
                                   2122 ;	StdPeriphLib/src/stm8s_tim2.c: 1280: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00AC09 AE 53 09         [ 2] 2123 	ldw	x, #0x5309
      00AC0C F6               [ 1] 2124 	ld	a, (x)
      00AC0D A4 FD            [ 1] 2125 	and	a, #0xfd
      00AC0F F7               [ 1] 2126 	ld	(x), a
      00AC10                       2127 00103$:
                           0008E5  2128 	Sstm8s_tim2$TI3_Config$432 ==.
                                   2129 ;	StdPeriphLib/src/stm8s_tim2.c: 1283: TIM2->CCER2 |= TIM2_CCER2_CC3E;
      00AC10 72 10 53 09      [ 1] 2130 	bset	0x5309, #0
                           0008E9  2131 	Sstm8s_tim2$TI3_Config$433 ==.
                                   2132 ;	StdPeriphLib/src/stm8s_tim2.c: 1284: }
      00AC14 84               [ 1] 2133 	pop	a
                           0008EA  2134 	Sstm8s_tim2$TI3_Config$434 ==.
                           0008EA  2135 	XFstm8s_tim2$TI3_Config$0$0 ==.
      00AC15 32 01 A4         [ 1] 2136 	pop	_fp_
      00AC18 32 01 A5         [ 1] 2137 	pop	_fp_+1
      00AC1B 81               [ 4] 2138 	ret
                           0008F1  2139 	Sstm8s_tim2$TI3_Config$435 ==.
                                   2140 	.area CODE
                                   2141 	.area INITIALIZER
                                   2142 	.area CABS (ABS)
                                   2143 
                                   2144 	.area .debug_line (NOLOAD)
      002AC9 00 00 0A 14           2145 	.dw	0,Ldebug_line_end-Ldebug_line_start
      002ACD                       2146 Ldebug_line_start:
      002ACD 00 02                 2147 	.dw	2
      002ACF 00 00 01 19           2148 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      002AD3 01                    2149 	.db	1
      002AD4 01                    2150 	.db	1
      002AD5 FB                    2151 	.db	-5
      002AD6 0F                    2152 	.db	15
      002AD7 0A                    2153 	.db	10
      002AD8 00                    2154 	.db	0
      002AD9 01                    2155 	.db	1
      002ADA 01                    2156 	.db	1
      002ADB 01                    2157 	.db	1
      002ADC 01                    2158 	.db	1
      002ADD 00                    2159 	.db	0
      002ADE 00                    2160 	.db	0
      002ADF 00                    2161 	.db	0
      002AE0 01                    2162 	.db	1
      002AE1 2F 68 6F 6D 65 2F 63  2163 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      002B20 00                    2164 	.db	0
      002B21 2F 68 6F 6D 65 2F 63  2165 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      002B59 00                    2166 	.db	0
      002B5A 2F 68 6F 6D 65 2F 63  2167 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      002B94 00                    2168 	.db	0
      002B95 2F 68 6F 6D 65 2F 63  2169 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      002BC8 00                    2170 	.db	0
      002BC9 00                    2171 	.db	0
      002BCA 53 74 64 50 65 72 69  2172 	.ascii "StdPeriphLib/src/stm8s_tim2.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69 6D 32 2E
             63
      002BE7 00                    2173 	.db	0
      002BE8 00                    2174 	.uleb128	0
      002BE9 00                    2175 	.uleb128	0
      002BEA 00                    2176 	.uleb128	0
      002BEB 00                    2177 	.db	0
      002BEC                       2178 Ldebug_line_stmt:
      002BEC 00                    2179 	.db	0
      002BED 05                    2180 	.uleb128	5
      002BEE 02                    2181 	.db	2
      002BEF 00 00 A3 2B           2182 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$0)
      002BF3 03                    2183 	.db	3
      002BF4 33                    2184 	.sleb128	51
      002BF5 01                    2185 	.db	1
      002BF6 09                    2186 	.db	9
      002BF7 00 0C                 2187 	.dw	Sstm8s_tim2$TIM2_DeInit$2-Sstm8s_tim2$TIM2_DeInit$0
      002BF9 03                    2188 	.db	3
      002BFA 02                    2189 	.sleb128	2
      002BFB 01                    2190 	.db	1
      002BFC 09                    2191 	.db	9
      002BFD 00 04                 2192 	.dw	Sstm8s_tim2$TIM2_DeInit$3-Sstm8s_tim2$TIM2_DeInit$2
      002BFF 03                    2193 	.db	3
      002C00 01                    2194 	.sleb128	1
      002C01 01                    2195 	.db	1
      002C02 09                    2196 	.db	9
      002C03 00 04                 2197 	.dw	Sstm8s_tim2$TIM2_DeInit$4-Sstm8s_tim2$TIM2_DeInit$3
      002C05 03                    2198 	.db	3
      002C06 01                    2199 	.sleb128	1
      002C07 01                    2200 	.db	1
      002C08 09                    2201 	.db	9
      002C09 00 04                 2202 	.dw	Sstm8s_tim2$TIM2_DeInit$5-Sstm8s_tim2$TIM2_DeInit$4
      002C0B 03                    2203 	.db	3
      002C0C 03                    2204 	.sleb128	3
      002C0D 01                    2205 	.db	1
      002C0E 09                    2206 	.db	9
      002C0F 00 04                 2207 	.dw	Sstm8s_tim2$TIM2_DeInit$6-Sstm8s_tim2$TIM2_DeInit$5
      002C11 03                    2208 	.db	3
      002C12 01                    2209 	.sleb128	1
      002C13 01                    2210 	.db	1
      002C14 09                    2211 	.db	9
      002C15 00 04                 2212 	.dw	Sstm8s_tim2$TIM2_DeInit$7-Sstm8s_tim2$TIM2_DeInit$6
      002C17 03                    2213 	.db	3
      002C18 04                    2214 	.sleb128	4
      002C19 01                    2215 	.db	1
      002C1A 09                    2216 	.db	9
      002C1B 00 04                 2217 	.dw	Sstm8s_tim2$TIM2_DeInit$8-Sstm8s_tim2$TIM2_DeInit$7
      002C1D 03                    2218 	.db	3
      002C1E 01                    2219 	.sleb128	1
      002C1F 01                    2220 	.db	1
      002C20 09                    2221 	.db	9
      002C21 00 04                 2222 	.dw	Sstm8s_tim2$TIM2_DeInit$9-Sstm8s_tim2$TIM2_DeInit$8
      002C23 03                    2223 	.db	3
      002C24 01                    2224 	.sleb128	1
      002C25 01                    2225 	.db	1
      002C26 09                    2226 	.db	9
      002C27 00 04                 2227 	.dw	Sstm8s_tim2$TIM2_DeInit$10-Sstm8s_tim2$TIM2_DeInit$9
      002C29 03                    2228 	.db	3
      002C2A 01                    2229 	.sleb128	1
      002C2B 01                    2230 	.db	1
      002C2C 09                    2231 	.db	9
      002C2D 00 04                 2232 	.dw	Sstm8s_tim2$TIM2_DeInit$11-Sstm8s_tim2$TIM2_DeInit$10
      002C2F 03                    2233 	.db	3
      002C30 01                    2234 	.sleb128	1
      002C31 01                    2235 	.db	1
      002C32 09                    2236 	.db	9
      002C33 00 04                 2237 	.dw	Sstm8s_tim2$TIM2_DeInit$12-Sstm8s_tim2$TIM2_DeInit$11
      002C35 03                    2238 	.db	3
      002C36 01                    2239 	.sleb128	1
      002C37 01                    2240 	.db	1
      002C38 09                    2241 	.db	9
      002C39 00 04                 2242 	.dw	Sstm8s_tim2$TIM2_DeInit$13-Sstm8s_tim2$TIM2_DeInit$12
      002C3B 03                    2243 	.db	3
      002C3C 01                    2244 	.sleb128	1
      002C3D 01                    2245 	.db	1
      002C3E 09                    2246 	.db	9
      002C3F 00 04                 2247 	.dw	Sstm8s_tim2$TIM2_DeInit$14-Sstm8s_tim2$TIM2_DeInit$13
      002C41 03                    2248 	.db	3
      002C42 01                    2249 	.sleb128	1
      002C43 01                    2250 	.db	1
      002C44 09                    2251 	.db	9
      002C45 00 04                 2252 	.dw	Sstm8s_tim2$TIM2_DeInit$15-Sstm8s_tim2$TIM2_DeInit$14
      002C47 03                    2253 	.db	3
      002C48 01                    2254 	.sleb128	1
      002C49 01                    2255 	.db	1
      002C4A 09                    2256 	.db	9
      002C4B 00 04                 2257 	.dw	Sstm8s_tim2$TIM2_DeInit$16-Sstm8s_tim2$TIM2_DeInit$15
      002C4D 03                    2258 	.db	3
      002C4E 01                    2259 	.sleb128	1
      002C4F 01                    2260 	.db	1
      002C50 09                    2261 	.db	9
      002C51 00 04                 2262 	.dw	Sstm8s_tim2$TIM2_DeInit$17-Sstm8s_tim2$TIM2_DeInit$16
      002C53 03                    2263 	.db	3
      002C54 01                    2264 	.sleb128	1
      002C55 01                    2265 	.db	1
      002C56 09                    2266 	.db	9
      002C57 00 04                 2267 	.dw	Sstm8s_tim2$TIM2_DeInit$18-Sstm8s_tim2$TIM2_DeInit$17
      002C59 03                    2268 	.db	3
      002C5A 01                    2269 	.sleb128	1
      002C5B 01                    2270 	.db	1
      002C5C 09                    2271 	.db	9
      002C5D 00 04                 2272 	.dw	Sstm8s_tim2$TIM2_DeInit$19-Sstm8s_tim2$TIM2_DeInit$18
      002C5F 03                    2273 	.db	3
      002C60 01                    2274 	.sleb128	1
      002C61 01                    2275 	.db	1
      002C62 09                    2276 	.db	9
      002C63 00 04                 2277 	.dw	Sstm8s_tim2$TIM2_DeInit$20-Sstm8s_tim2$TIM2_DeInit$19
      002C65 03                    2278 	.db	3
      002C66 01                    2279 	.sleb128	1
      002C67 01                    2280 	.db	1
      002C68 09                    2281 	.db	9
      002C69 00 04                 2282 	.dw	Sstm8s_tim2$TIM2_DeInit$21-Sstm8s_tim2$TIM2_DeInit$20
      002C6B 03                    2283 	.db	3
      002C6C 01                    2284 	.sleb128	1
      002C6D 01                    2285 	.db	1
      002C6E 09                    2286 	.db	9
      002C6F 00 04                 2287 	.dw	Sstm8s_tim2$TIM2_DeInit$22-Sstm8s_tim2$TIM2_DeInit$21
      002C71 03                    2288 	.db	3
      002C72 01                    2289 	.sleb128	1
      002C73 01                    2290 	.db	1
      002C74 09                    2291 	.db	9
      002C75 00 04                 2292 	.dw	Sstm8s_tim2$TIM2_DeInit$23-Sstm8s_tim2$TIM2_DeInit$22
      002C77 03                    2293 	.db	3
      002C78 01                    2294 	.sleb128	1
      002C79 01                    2295 	.db	1
      002C7A 09                    2296 	.db	9
      002C7B 00 04                 2297 	.dw	Sstm8s_tim2$TIM2_DeInit$24-Sstm8s_tim2$TIM2_DeInit$23
      002C7D 03                    2298 	.db	3
      002C7E 01                    2299 	.sleb128	1
      002C7F 01                    2300 	.db	1
      002C80 09                    2301 	.db	9
      002C81 00 07                 2302 	.dw	7+Sstm8s_tim2$TIM2_DeInit$25-Sstm8s_tim2$TIM2_DeInit$24
      002C83 00                    2303 	.db	0
      002C84 01                    2304 	.uleb128	1
      002C85 01                    2305 	.db	1
      002C86 00                    2306 	.db	0
      002C87 05                    2307 	.uleb128	5
      002C88 02                    2308 	.db	2
      002C89 00 00 A3 96           2309 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$27)
      002C8D 03                    2310 	.db	3
      002C8E D8 00                 2311 	.sleb128	88
      002C90 01                    2312 	.db	1
      002C91 09                    2313 	.db	9
      002C92 00 0E                 2314 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$29-Sstm8s_tim2$TIM2_TimeBaseInit$27
      002C94 03                    2315 	.db	3
      002C95 04                    2316 	.sleb128	4
      002C96 01                    2317 	.db	1
      002C97 09                    2318 	.db	9
      002C98 00 06                 2319 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$30-Sstm8s_tim2$TIM2_TimeBaseInit$29
      002C9A 03                    2320 	.db	3
      002C9B 02                    2321 	.sleb128	2
      002C9C 01                    2322 	.db	1
      002C9D 09                    2323 	.db	9
      002C9E 00 08                 2324 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$31-Sstm8s_tim2$TIM2_TimeBaseInit$30
      002CA0 03                    2325 	.db	3
      002CA1 01                    2326 	.sleb128	1
      002CA2 01                    2327 	.db	1
      002CA3 09                    2328 	.db	9
      002CA4 00 06                 2329 	.dw	Sstm8s_tim2$TIM2_TimeBaseInit$32-Sstm8s_tim2$TIM2_TimeBaseInit$31
      002CA6 03                    2330 	.db	3
      002CA7 01                    2331 	.sleb128	1
      002CA8 01                    2332 	.db	1
      002CA9 09                    2333 	.db	9
      002CAA 00 09                 2334 	.dw	7+Sstm8s_tim2$TIM2_TimeBaseInit$33-Sstm8s_tim2$TIM2_TimeBaseInit$32
      002CAC 00                    2335 	.db	0
      002CAD 01                    2336 	.uleb128	1
      002CAE 01                    2337 	.db	1
      002CAF 00                    2338 	.db	0
      002CB0 05                    2339 	.uleb128	5
      002CB1 02                    2340 	.db	2
      002CB2 00 00 A3 C1           2341 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$35)
      002CB6 03                    2342 	.db	3
      002CB7 EB 00                 2343 	.sleb128	107
      002CB9 01                    2344 	.db	1
      002CBA 09                    2345 	.db	9
      002CBB 00 0E                 2346 	.dw	Sstm8s_tim2$TIM2_OC1Init$37-Sstm8s_tim2$TIM2_OC1Init$35
      002CBD 03                    2347 	.db	3
      002CBE 0B                    2348 	.sleb128	11
      002CBF 01                    2349 	.db	1
      002CC0 09                    2350 	.db	9
      002CC1 00 07                 2351 	.dw	Sstm8s_tim2$TIM2_OC1Init$38-Sstm8s_tim2$TIM2_OC1Init$37
      002CC3 03                    2352 	.db	3
      002CC4 02                    2353 	.sleb128	2
      002CC5 01                    2354 	.db	1
      002CC6 09                    2355 	.db	9
      002CC7 00 0C                 2356 	.dw	Sstm8s_tim2$TIM2_OC1Init$39-Sstm8s_tim2$TIM2_OC1Init$38
      002CC9 03                    2357 	.db	3
      002CCA 01                    2358 	.sleb128	1
      002CCB 01                    2359 	.db	1
      002CCC 09                    2360 	.db	9
      002CCD 00 0C                 2361 	.dw	Sstm8s_tim2$TIM2_OC1Init$40-Sstm8s_tim2$TIM2_OC1Init$39
      002CCF 03                    2362 	.db	3
      002CD0 03                    2363 	.sleb128	3
      002CD1 01                    2364 	.db	1
      002CD2 09                    2365 	.db	9
      002CD3 00 06                 2366 	.dw	Sstm8s_tim2$TIM2_OC1Init$41-Sstm8s_tim2$TIM2_OC1Init$40
      002CD5 03                    2367 	.db	3
      002CD6 01                    2368 	.sleb128	1
      002CD7 01                    2369 	.db	1
      002CD8 09                    2370 	.db	9
      002CD9 00 06                 2371 	.dw	Sstm8s_tim2$TIM2_OC1Init$42-Sstm8s_tim2$TIM2_OC1Init$41
      002CDB 03                    2372 	.db	3
      002CDC 03                    2373 	.sleb128	3
      002CDD 01                    2374 	.db	1
      002CDE 09                    2375 	.db	9
      002CDF 00 08                 2376 	.dw	Sstm8s_tim2$TIM2_OC1Init$43-Sstm8s_tim2$TIM2_OC1Init$42
      002CE1 03                    2377 	.db	3
      002CE2 01                    2378 	.sleb128	1
      002CE3 01                    2379 	.db	1
      002CE4 09                    2380 	.db	9
      002CE5 00 06                 2381 	.dw	Sstm8s_tim2$TIM2_OC1Init$44-Sstm8s_tim2$TIM2_OC1Init$43
      002CE7 03                    2382 	.db	3
      002CE8 01                    2383 	.sleb128	1
      002CE9 01                    2384 	.db	1
      002CEA 09                    2385 	.db	9
      002CEB 00 09                 2386 	.dw	7+Sstm8s_tim2$TIM2_OC1Init$45-Sstm8s_tim2$TIM2_OC1Init$44
      002CED 00                    2387 	.db	0
      002CEE 01                    2388 	.uleb128	1
      002CEF 01                    2389 	.db	1
      002CF0 00                    2390 	.db	0
      002CF1 05                    2391 	.uleb128	5
      002CF2 02                    2392 	.db	2
      002CF3 00 00 A4 11           2393 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$47)
      002CF7 03                    2394 	.db	3
      002CF8 8D 01                 2395 	.sleb128	141
      002CFA 01                    2396 	.db	1
      002CFB 09                    2397 	.db	9
      002CFC 00 0E                 2398 	.dw	Sstm8s_tim2$TIM2_OC2Init$49-Sstm8s_tim2$TIM2_OC2Init$47
      002CFE 03                    2399 	.db	3
      002CFF 0C                    2400 	.sleb128	12
      002D00 01                    2401 	.db	1
      002D01 09                    2402 	.db	9
      002D02 00 07                 2403 	.dw	Sstm8s_tim2$TIM2_OC2Init$50-Sstm8s_tim2$TIM2_OC2Init$49
      002D04 03                    2404 	.db	3
      002D05 02                    2405 	.sleb128	2
      002D06 01                    2406 	.db	1
      002D07 09                    2407 	.db	9
      002D08 00 0C                 2408 	.dw	Sstm8s_tim2$TIM2_OC2Init$51-Sstm8s_tim2$TIM2_OC2Init$50
      002D0A 03                    2409 	.db	3
      002D0B 01                    2410 	.sleb128	1
      002D0C 01                    2411 	.db	1
      002D0D 09                    2412 	.db	9
      002D0E 00 0C                 2413 	.dw	Sstm8s_tim2$TIM2_OC2Init$52-Sstm8s_tim2$TIM2_OC2Init$51
      002D10 03                    2414 	.db	3
      002D11 04                    2415 	.sleb128	4
      002D12 01                    2416 	.db	1
      002D13 09                    2417 	.db	9
      002D14 00 06                 2418 	.dw	Sstm8s_tim2$TIM2_OC2Init$53-Sstm8s_tim2$TIM2_OC2Init$52
      002D16 03                    2419 	.db	3
      002D17 01                    2420 	.sleb128	1
      002D18 01                    2421 	.db	1
      002D19 09                    2422 	.db	9
      002D1A 00 06                 2423 	.dw	Sstm8s_tim2$TIM2_OC2Init$54-Sstm8s_tim2$TIM2_OC2Init$53
      002D1C 03                    2424 	.db	3
      002D1D 04                    2425 	.sleb128	4
      002D1E 01                    2426 	.db	1
      002D1F 09                    2427 	.db	9
      002D20 00 08                 2428 	.dw	Sstm8s_tim2$TIM2_OC2Init$55-Sstm8s_tim2$TIM2_OC2Init$54
      002D22 03                    2429 	.db	3
      002D23 01                    2430 	.sleb128	1
      002D24 01                    2431 	.db	1
      002D25 09                    2432 	.db	9
      002D26 00 06                 2433 	.dw	Sstm8s_tim2$TIM2_OC2Init$56-Sstm8s_tim2$TIM2_OC2Init$55
      002D28 03                    2434 	.db	3
      002D29 01                    2435 	.sleb128	1
      002D2A 01                    2436 	.db	1
      002D2B 09                    2437 	.db	9
      002D2C 00 09                 2438 	.dw	7+Sstm8s_tim2$TIM2_OC2Init$57-Sstm8s_tim2$TIM2_OC2Init$56
      002D2E 00                    2439 	.db	0
      002D2F 01                    2440 	.uleb128	1
      002D30 01                    2441 	.db	1
      002D31 00                    2442 	.db	0
      002D32 05                    2443 	.uleb128	5
      002D33 02                    2444 	.db	2
      002D34 00 00 A4 61           2445 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$59)
      002D38 03                    2446 	.db	3
      002D39 B2 01                 2447 	.sleb128	178
      002D3B 01                    2448 	.db	1
      002D3C 09                    2449 	.db	9
      002D3D 00 0E                 2450 	.dw	Sstm8s_tim2$TIM2_OC3Init$61-Sstm8s_tim2$TIM2_OC3Init$59
      002D3F 03                    2451 	.db	3
      002D40 0A                    2452 	.sleb128	10
      002D41 01                    2453 	.db	1
      002D42 09                    2454 	.db	9
      002D43 00 07                 2455 	.dw	Sstm8s_tim2$TIM2_OC3Init$62-Sstm8s_tim2$TIM2_OC3Init$61
      002D45 03                    2456 	.db	3
      002D46 02                    2457 	.sleb128	2
      002D47 01                    2458 	.db	1
      002D48 09                    2459 	.db	9
      002D49 00 0C                 2460 	.dw	Sstm8s_tim2$TIM2_OC3Init$63-Sstm8s_tim2$TIM2_OC3Init$62
      002D4B 03                    2461 	.db	3
      002D4C 01                    2462 	.sleb128	1
      002D4D 01                    2463 	.db	1
      002D4E 09                    2464 	.db	9
      002D4F 00 0C                 2465 	.dw	Sstm8s_tim2$TIM2_OC3Init$64-Sstm8s_tim2$TIM2_OC3Init$63
      002D51 03                    2466 	.db	3
      002D52 03                    2467 	.sleb128	3
      002D53 01                    2468 	.db	1
      002D54 09                    2469 	.db	9
      002D55 00 06                 2470 	.dw	Sstm8s_tim2$TIM2_OC3Init$65-Sstm8s_tim2$TIM2_OC3Init$64
      002D57 03                    2471 	.db	3
      002D58 01                    2472 	.sleb128	1
      002D59 01                    2473 	.db	1
      002D5A 09                    2474 	.db	9
      002D5B 00 06                 2475 	.dw	Sstm8s_tim2$TIM2_OC3Init$66-Sstm8s_tim2$TIM2_OC3Init$65
      002D5D 03                    2476 	.db	3
      002D5E 03                    2477 	.sleb128	3
      002D5F 01                    2478 	.db	1
      002D60 09                    2479 	.db	9
      002D61 00 08                 2480 	.dw	Sstm8s_tim2$TIM2_OC3Init$67-Sstm8s_tim2$TIM2_OC3Init$66
      002D63 03                    2481 	.db	3
      002D64 01                    2482 	.sleb128	1
      002D65 01                    2483 	.db	1
      002D66 09                    2484 	.db	9
      002D67 00 06                 2485 	.dw	Sstm8s_tim2$TIM2_OC3Init$68-Sstm8s_tim2$TIM2_OC3Init$67
      002D69 03                    2486 	.db	3
      002D6A 01                    2487 	.sleb128	1
      002D6B 01                    2488 	.db	1
      002D6C 09                    2489 	.db	9
      002D6D 00 09                 2490 	.dw	7+Sstm8s_tim2$TIM2_OC3Init$69-Sstm8s_tim2$TIM2_OC3Init$68
      002D6F 00                    2491 	.db	0
      002D70 01                    2492 	.uleb128	1
      002D71 01                    2493 	.db	1
      002D72 00                    2494 	.db	0
      002D73 05                    2495 	.uleb128	5
      002D74 02                    2496 	.db	2
      002D75 00 00 A4 B1           2497 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$71)
      002D79 03                    2498 	.db	3
      002D7A D3 01                 2499 	.sleb128	211
      002D7C 01                    2500 	.db	1
      002D7D 09                    2501 	.db	9
      002D7E 00 0C                 2502 	.dw	Sstm8s_tim2$TIM2_ICInit$73-Sstm8s_tim2$TIM2_ICInit$71
      002D80 03                    2503 	.db	3
      002D81 0D                    2504 	.sleb128	13
      002D82 01                    2505 	.db	1
      002D83 09                    2506 	.db	9
      002D84 00 04                 2507 	.dw	Sstm8s_tim2$TIM2_ICInit$74-Sstm8s_tim2$TIM2_ICInit$73
      002D86 03                    2508 	.db	3
      002D87 03                    2509 	.sleb128	3
      002D88 01                    2510 	.db	1
      002D89 09                    2511 	.db	9
      002D8A 00 0E                 2512 	.dw	Sstm8s_tim2$TIM2_ICInit$75-Sstm8s_tim2$TIM2_ICInit$74
      002D8C 03                    2513 	.db	3
      002D8D 05                    2514 	.sleb128	5
      002D8E 01                    2515 	.db	1
      002D8F 09                    2516 	.db	9
      002D90 00 09                 2517 	.dw	Sstm8s_tim2$TIM2_ICInit$76-Sstm8s_tim2$TIM2_ICInit$75
      002D92 03                    2518 	.db	3
      002D93 02                    2519 	.sleb128	2
      002D94 01                    2520 	.db	1
      002D95 09                    2521 	.db	9
      002D96 00 06                 2522 	.dw	Sstm8s_tim2$TIM2_ICInit$77-Sstm8s_tim2$TIM2_ICInit$76
      002D98 03                    2523 	.db	3
      002D99 03                    2524 	.sleb128	3
      002D9A 01                    2525 	.db	1
      002D9B 09                    2526 	.db	9
      002D9C 00 0E                 2527 	.dw	Sstm8s_tim2$TIM2_ICInit$78-Sstm8s_tim2$TIM2_ICInit$77
      002D9E 03                    2528 	.db	3
      002D9F 05                    2529 	.sleb128	5
      002DA0 01                    2530 	.db	1
      002DA1 09                    2531 	.db	9
      002DA2 00 09                 2532 	.dw	Sstm8s_tim2$TIM2_ICInit$79-Sstm8s_tim2$TIM2_ICInit$78
      002DA4 03                    2533 	.db	3
      002DA5 05                    2534 	.sleb128	5
      002DA6 01                    2535 	.db	1
      002DA7 09                    2536 	.db	9
      002DA8 00 0E                 2537 	.dw	Sstm8s_tim2$TIM2_ICInit$80-Sstm8s_tim2$TIM2_ICInit$79
      002DAA 03                    2538 	.db	3
      002DAB 05                    2539 	.sleb128	5
      002DAC 01                    2540 	.db	1
      002DAD 09                    2541 	.db	9
      002DAE 00 07                 2542 	.dw	Sstm8s_tim2$TIM2_ICInit$81-Sstm8s_tim2$TIM2_ICInit$80
      002DB0 03                    2543 	.db	3
      002DB1 02                    2544 	.sleb128	2
      002DB2 01                    2545 	.db	1
      002DB3 09                    2546 	.db	9
      002DB4 00 07                 2547 	.dw	7+Sstm8s_tim2$TIM2_ICInit$82-Sstm8s_tim2$TIM2_ICInit$81
      002DB6 00                    2548 	.db	0
      002DB7 01                    2549 	.uleb128	1
      002DB8 01                    2550 	.db	1
      002DB9 00                    2551 	.db	0
      002DBA 05                    2552 	.uleb128	5
      002DBB 02                    2553 	.db	2
      002DBC 00 00 A5 11           2554 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$84)
      002DC0 03                    2555 	.db	3
      002DC1 89 02                 2556 	.sleb128	265
      002DC3 01                    2557 	.db	1
      002DC4 09                    2558 	.db	9
      002DC5 00 0E                 2559 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$86-Sstm8s_tim2$TIM2_PWMIConfig$84
      002DC7 03                    2560 	.db	3
      002DC8 10                    2561 	.sleb128	16
      002DC9 01                    2562 	.db	1
      002DCA 09                    2563 	.db	9
      002DCB 00 06                 2564 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$87-Sstm8s_tim2$TIM2_PWMIConfig$86
      002DCD 03                    2565 	.db	3
      002DCE 02                    2566 	.sleb128	2
      002DCF 01                    2567 	.db	1
      002DD0 09                    2568 	.db	9
      002DD1 00 06                 2569 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$88-Sstm8s_tim2$TIM2_PWMIConfig$87
      002DD3 03                    2570 	.db	3
      002DD4 04                    2571 	.sleb128	4
      002DD5 01                    2572 	.db	1
      002DD6 09                    2573 	.db	9
      002DD7 00 02                 2574 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$89-Sstm8s_tim2$TIM2_PWMIConfig$88
      002DD9 03                    2575 	.db	3
      002DDA 04                    2576 	.sleb128	4
      002DDB 01                    2577 	.db	1
      002DDC 09                    2578 	.db	9
      002DDD 00 06                 2579 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$90-Sstm8s_tim2$TIM2_PWMIConfig$89
      002DDF 03                    2580 	.db	3
      002DE0 02                    2581 	.sleb128	2
      002DE1 01                    2582 	.db	1
      002DE2 09                    2583 	.db	9
      002DE3 00 06                 2584 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$91-Sstm8s_tim2$TIM2_PWMIConfig$90
      002DE5 03                    2585 	.db	3
      002DE6 04                    2586 	.sleb128	4
      002DE7 01                    2587 	.db	1
      002DE8 09                    2588 	.db	9
      002DE9 00 04                 2589 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$92-Sstm8s_tim2$TIM2_PWMIConfig$91
      002DEB 03                    2590 	.db	3
      002DEC 03                    2591 	.sleb128	3
      002DED 01                    2592 	.db	1
      002DEE 09                    2593 	.db	9
      002DEF 00 04                 2594 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$93-Sstm8s_tim2$TIM2_PWMIConfig$92
      002DF1 03                    2595 	.db	3
      002DF2 03                    2596 	.sleb128	3
      002DF3 01                    2597 	.db	1
      002DF4 09                    2598 	.db	9
      002DF5 00 0E                 2599 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$94-Sstm8s_tim2$TIM2_PWMIConfig$93
      002DF7 03                    2600 	.db	3
      002DF8 04                    2601 	.sleb128	4
      002DF9 01                    2602 	.db	1
      002DFA 09                    2603 	.db	9
      002DFB 00 07                 2604 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$95-Sstm8s_tim2$TIM2_PWMIConfig$94
      002DFD 03                    2605 	.db	3
      002DFE 03                    2606 	.sleb128	3
      002DFF 01                    2607 	.db	1
      002E00 09                    2608 	.db	9
      002E01 00 0E                 2609 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$96-Sstm8s_tim2$TIM2_PWMIConfig$95
      002E03 03                    2610 	.db	3
      002E04 03                    2611 	.sleb128	3
      002E05 01                    2612 	.db	1
      002E06 09                    2613 	.db	9
      002E07 00 09                 2614 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$97-Sstm8s_tim2$TIM2_PWMIConfig$96
      002E09 03                    2615 	.db	3
      002E0A 05                    2616 	.sleb128	5
      002E0B 01                    2617 	.db	1
      002E0C 09                    2618 	.db	9
      002E0D 00 0E                 2619 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$98-Sstm8s_tim2$TIM2_PWMIConfig$97
      002E0F 03                    2620 	.db	3
      002E10 04                    2621 	.sleb128	4
      002E11 01                    2622 	.db	1
      002E12 09                    2623 	.db	9
      002E13 00 07                 2624 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$99-Sstm8s_tim2$TIM2_PWMIConfig$98
      002E15 03                    2625 	.db	3
      002E16 03                    2626 	.sleb128	3
      002E17 01                    2627 	.db	1
      002E18 09                    2628 	.db	9
      002E19 00 0E                 2629 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$100-Sstm8s_tim2$TIM2_PWMIConfig$99
      002E1B 03                    2630 	.db	3
      002E1C 03                    2631 	.sleb128	3
      002E1D 01                    2632 	.db	1
      002E1E 09                    2633 	.db	9
      002E1F 00 07                 2634 	.dw	Sstm8s_tim2$TIM2_PWMIConfig$101-Sstm8s_tim2$TIM2_PWMIConfig$100
      002E21 03                    2635 	.db	3
      002E22 02                    2636 	.sleb128	2
      002E23 01                    2637 	.db	1
      002E24 09                    2638 	.db	9
      002E25 00 09                 2639 	.dw	7+Sstm8s_tim2$TIM2_PWMIConfig$102-Sstm8s_tim2$TIM2_PWMIConfig$101
      002E27 00                    2640 	.db	0
      002E28 01                    2641 	.uleb128	1
      002E29 01                    2642 	.db	1
      002E2A 00                    2643 	.db	0
      002E2B 05                    2644 	.uleb128	5
      002E2C 02                    2645 	.db	2
      002E2D 00 00 A5 A0           2646 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$104)
      002E31 03                    2647 	.db	3
      002E32 D2 02                 2648 	.sleb128	338
      002E34 01                    2649 	.db	1
      002E35 09                    2650 	.db	9
      002E36 00 0C                 2651 	.dw	Sstm8s_tim2$TIM2_Cmd$106-Sstm8s_tim2$TIM2_Cmd$104
      002E38 03                    2652 	.db	3
      002E39 06                    2653 	.sleb128	6
      002E3A 01                    2654 	.db	1
      002E3B 09                    2655 	.db	9
      002E3C 00 04                 2656 	.dw	Sstm8s_tim2$TIM2_Cmd$107-Sstm8s_tim2$TIM2_Cmd$106
      002E3E 03                    2657 	.db	3
      002E3F 02                    2658 	.sleb128	2
      002E40 01                    2659 	.db	1
      002E41 09                    2660 	.db	9
      002E42 00 06                 2661 	.dw	Sstm8s_tim2$TIM2_Cmd$108-Sstm8s_tim2$TIM2_Cmd$107
      002E44 03                    2662 	.db	3
      002E45 04                    2663 	.sleb128	4
      002E46 01                    2664 	.db	1
      002E47 09                    2665 	.db	9
      002E48 00 04                 2666 	.dw	Sstm8s_tim2$TIM2_Cmd$109-Sstm8s_tim2$TIM2_Cmd$108
      002E4A 03                    2667 	.db	3
      002E4B 02                    2668 	.sleb128	2
      002E4C 01                    2669 	.db	1
      002E4D 09                    2670 	.db	9
      002E4E 00 07                 2671 	.dw	7+Sstm8s_tim2$TIM2_Cmd$110-Sstm8s_tim2$TIM2_Cmd$109
      002E50 00                    2672 	.db	0
      002E51 01                    2673 	.uleb128	1
      002E52 01                    2674 	.db	1
      002E53 00                    2675 	.db	0
      002E54 05                    2676 	.uleb128	5
      002E55 02                    2677 	.db	2
      002E56 00 00 A5 C1           2678 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$112)
      002E5A 03                    2679 	.db	3
      002E5B EF 02                 2680 	.sleb128	367
      002E5D 01                    2681 	.db	1
      002E5E 09                    2682 	.db	9
      002E5F 00 0D                 2683 	.dw	Sstm8s_tim2$TIM2_ITConfig$114-Sstm8s_tim2$TIM2_ITConfig$112
      002E61 03                    2684 	.db	3
      002E62 06                    2685 	.sleb128	6
      002E63 01                    2686 	.db	1
      002E64 09                    2687 	.db	9
      002E65 00 04                 2688 	.dw	Sstm8s_tim2$TIM2_ITConfig$115-Sstm8s_tim2$TIM2_ITConfig$114
      002E67 03                    2689 	.db	3
      002E68 03                    2690 	.sleb128	3
      002E69 01                    2691 	.db	1
      002E6A 09                    2692 	.db	9
      002E6B 00 0C                 2693 	.dw	Sstm8s_tim2$TIM2_ITConfig$116-Sstm8s_tim2$TIM2_ITConfig$115
      002E6D 03                    2694 	.db	3
      002E6E 05                    2695 	.sleb128	5
      002E6F 01                    2696 	.db	1
      002E70 09                    2697 	.db	9
      002E71 00 0F                 2698 	.dw	Sstm8s_tim2$TIM2_ITConfig$117-Sstm8s_tim2$TIM2_ITConfig$116
      002E73 03                    2699 	.db	3
      002E74 02                    2700 	.sleb128	2
      002E75 01                    2701 	.db	1
      002E76 09                    2702 	.db	9
      002E77 00 08                 2703 	.dw	7+Sstm8s_tim2$TIM2_ITConfig$118-Sstm8s_tim2$TIM2_ITConfig$117
      002E79 00                    2704 	.db	0
      002E7A 01                    2705 	.uleb128	1
      002E7B 01                    2706 	.db	1
      002E7C 00                    2707 	.db	0
      002E7D 05                    2708 	.uleb128	5
      002E7E 02                    2709 	.db	2
      002E7F 00 00 A5 F5           2710 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$120)
      002E83 03                    2711 	.db	3
      002E84 87 03                 2712 	.sleb128	391
      002E86 01                    2713 	.db	1
      002E87 09                    2714 	.db	9
      002E88 00 0C                 2715 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$122-Sstm8s_tim2$TIM2_UpdateDisableConfig$120
      002E8A 03                    2716 	.db	3
      002E8B 06                    2717 	.sleb128	6
      002E8C 01                    2718 	.db	1
      002E8D 09                    2719 	.db	9
      002E8E 00 04                 2720 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$123-Sstm8s_tim2$TIM2_UpdateDisableConfig$122
      002E90 03                    2721 	.db	3
      002E91 02                    2722 	.sleb128	2
      002E92 01                    2723 	.db	1
      002E93 09                    2724 	.db	9
      002E94 00 09                 2725 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$124-Sstm8s_tim2$TIM2_UpdateDisableConfig$123
      002E96 03                    2726 	.db	3
      002E97 04                    2727 	.sleb128	4
      002E98 01                    2728 	.db	1
      002E99 09                    2729 	.db	9
      002E9A 00 07                 2730 	.dw	Sstm8s_tim2$TIM2_UpdateDisableConfig$125-Sstm8s_tim2$TIM2_UpdateDisableConfig$124
      002E9C 03                    2731 	.db	3
      002E9D 02                    2732 	.sleb128	2
      002E9E 01                    2733 	.db	1
      002E9F 09                    2734 	.db	9
      002EA0 00 07                 2735 	.dw	7+Sstm8s_tim2$TIM2_UpdateDisableConfig$126-Sstm8s_tim2$TIM2_UpdateDisableConfig$125
      002EA2 00                    2736 	.db	0
      002EA3 01                    2737 	.uleb128	1
      002EA4 01                    2738 	.db	1
      002EA5 00                    2739 	.db	0
      002EA6 05                    2740 	.uleb128	5
      002EA7 02                    2741 	.db	2
      002EA8 00 00 A6 1C           2742 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$128)
      002EAC 03                    2743 	.db	3
      002EAD 9F 03                 2744 	.sleb128	415
      002EAF 01                    2745 	.db	1
      002EB0 09                    2746 	.db	9
      002EB1 00 0C                 2747 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$130-Sstm8s_tim2$TIM2_UpdateRequestConfig$128
      002EB3 03                    2748 	.db	3
      002EB4 06                    2749 	.sleb128	6
      002EB5 01                    2750 	.db	1
      002EB6 09                    2751 	.db	9
      002EB7 00 04                 2752 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$131-Sstm8s_tim2$TIM2_UpdateRequestConfig$130
      002EB9 03                    2753 	.db	3
      002EBA 02                    2754 	.sleb128	2
      002EBB 01                    2755 	.db	1
      002EBC 09                    2756 	.db	9
      002EBD 00 09                 2757 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$132-Sstm8s_tim2$TIM2_UpdateRequestConfig$131
      002EBF 03                    2758 	.db	3
      002EC0 04                    2759 	.sleb128	4
      002EC1 01                    2760 	.db	1
      002EC2 09                    2761 	.db	9
      002EC3 00 07                 2762 	.dw	Sstm8s_tim2$TIM2_UpdateRequestConfig$133-Sstm8s_tim2$TIM2_UpdateRequestConfig$132
      002EC5 03                    2763 	.db	3
      002EC6 02                    2764 	.sleb128	2
      002EC7 01                    2765 	.db	1
      002EC8 09                    2766 	.db	9
      002EC9 00 07                 2767 	.dw	7+Sstm8s_tim2$TIM2_UpdateRequestConfig$134-Sstm8s_tim2$TIM2_UpdateRequestConfig$133
      002ECB 00                    2768 	.db	0
      002ECC 01                    2769 	.uleb128	1
      002ECD 01                    2770 	.db	1
      002ECE 00                    2771 	.db	0
      002ECF 05                    2772 	.uleb128	5
      002ED0 02                    2773 	.db	2
      002ED1 00 00 A6 43           2774 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$136)
      002ED5 03                    2775 	.db	3
      002ED6 B7 03                 2776 	.sleb128	439
      002ED8 01                    2777 	.db	1
      002ED9 09                    2778 	.db	9
      002EDA 00 0C                 2779 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$138-Sstm8s_tim2$TIM2_SelectOnePulseMode$136
      002EDC 03                    2780 	.db	3
      002EDD 06                    2781 	.sleb128	6
      002EDE 01                    2782 	.db	1
      002EDF 09                    2783 	.db	9
      002EE0 00 04                 2784 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$139-Sstm8s_tim2$TIM2_SelectOnePulseMode$138
      002EE2 03                    2785 	.db	3
      002EE3 02                    2786 	.sleb128	2
      002EE4 01                    2787 	.db	1
      002EE5 09                    2788 	.db	9
      002EE6 00 09                 2789 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$140-Sstm8s_tim2$TIM2_SelectOnePulseMode$139
      002EE8 03                    2790 	.db	3
      002EE9 04                    2791 	.sleb128	4
      002EEA 01                    2792 	.db	1
      002EEB 09                    2793 	.db	9
      002EEC 00 07                 2794 	.dw	Sstm8s_tim2$TIM2_SelectOnePulseMode$141-Sstm8s_tim2$TIM2_SelectOnePulseMode$140
      002EEE 03                    2795 	.db	3
      002EEF 02                    2796 	.sleb128	2
      002EF0 01                    2797 	.db	1
      002EF1 09                    2798 	.db	9
      002EF2 00 07                 2799 	.dw	7+Sstm8s_tim2$TIM2_SelectOnePulseMode$142-Sstm8s_tim2$TIM2_SelectOnePulseMode$141
      002EF4 00                    2800 	.db	0
      002EF5 01                    2801 	.uleb128	1
      002EF6 01                    2802 	.db	1
      002EF7 00                    2803 	.db	0
      002EF8 05                    2804 	.uleb128	5
      002EF9 02                    2805 	.db	2
      002EFA 00 00 A6 6A           2806 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$144)
      002EFE 03                    2807 	.db	3
      002EFF E3 03                 2808 	.sleb128	483
      002F01 01                    2809 	.db	1
      002F02 09                    2810 	.db	9
      002F03 00 0C                 2811 	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$146-Sstm8s_tim2$TIM2_PrescalerConfig$144
      002F05 03                    2812 	.db	3
      002F06 08                    2813 	.sleb128	8
      002F07 01                    2814 	.db	1
      002F08 09                    2815 	.db	9
      002F09 00 06                 2816 	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$147-Sstm8s_tim2$TIM2_PrescalerConfig$146
      002F0B 03                    2817 	.db	3
      002F0C 03                    2818 	.sleb128	3
      002F0D 01                    2819 	.db	1
      002F0E 09                    2820 	.db	9
      002F0F 00 06                 2821 	.dw	Sstm8s_tim2$TIM2_PrescalerConfig$148-Sstm8s_tim2$TIM2_PrescalerConfig$147
      002F11 03                    2822 	.db	3
      002F12 01                    2823 	.sleb128	1
      002F13 01                    2824 	.db	1
      002F14 09                    2825 	.db	9
      002F15 00 07                 2826 	.dw	7+Sstm8s_tim2$TIM2_PrescalerConfig$149-Sstm8s_tim2$TIM2_PrescalerConfig$148
      002F17 00                    2827 	.db	0
      002F18 01                    2828 	.uleb128	1
      002F19 01                    2829 	.db	1
      002F1A 00                    2830 	.db	0
      002F1B 05                    2831 	.uleb128	5
      002F1C 02                    2832 	.db	2
      002F1D 00 00 A6 89           2833 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$151)
      002F21 03                    2834 	.db	3
      002F22 FA 03                 2835 	.sleb128	506
      002F24 01                    2836 	.db	1
      002F25 09                    2837 	.db	9
      002F26 00 0C                 2838 	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$153-Sstm8s_tim2$TIM2_ForcedOC1Config$151
      002F28 03                    2839 	.db	3
      002F29 06                    2840 	.sleb128	6
      002F2A 01                    2841 	.db	1
      002F2B 09                    2842 	.db	9
      002F2C 00 06                 2843 	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$154-Sstm8s_tim2$TIM2_ForcedOC1Config$153
      002F2E 03                    2844 	.db	3
      002F2F 01                    2845 	.sleb128	1
      002F30 01                    2846 	.db	1
      002F31 09                    2847 	.db	9
      002F32 00 06                 2848 	.dw	Sstm8s_tim2$TIM2_ForcedOC1Config$155-Sstm8s_tim2$TIM2_ForcedOC1Config$154
      002F34 03                    2849 	.db	3
      002F35 01                    2850 	.sleb128	1
      002F36 01                    2851 	.db	1
      002F37 09                    2852 	.db	9
      002F38 00 07                 2853 	.dw	7+Sstm8s_tim2$TIM2_ForcedOC1Config$156-Sstm8s_tim2$TIM2_ForcedOC1Config$155
      002F3A 00                    2854 	.db	0
      002F3B 01                    2855 	.uleb128	1
      002F3C 01                    2856 	.db	1
      002F3D 00                    2857 	.db	0
      002F3E 05                    2858 	.uleb128	5
      002F3F 02                    2859 	.db	2
      002F40 00 00 A6 A8           2860 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$158)
      002F44 03                    2861 	.db	3
      002F45 8D 04                 2862 	.sleb128	525
      002F47 01                    2863 	.db	1
      002F48 09                    2864 	.db	9
      002F49 00 0C                 2865 	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$160-Sstm8s_tim2$TIM2_ForcedOC2Config$158
      002F4B 03                    2866 	.db	3
      002F4C 06                    2867 	.sleb128	6
      002F4D 01                    2868 	.db	1
      002F4E 09                    2869 	.db	9
      002F4F 00 06                 2870 	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$161-Sstm8s_tim2$TIM2_ForcedOC2Config$160
      002F51 03                    2871 	.db	3
      002F52 01                    2872 	.sleb128	1
      002F53 01                    2873 	.db	1
      002F54 09                    2874 	.db	9
      002F55 00 06                 2875 	.dw	Sstm8s_tim2$TIM2_ForcedOC2Config$162-Sstm8s_tim2$TIM2_ForcedOC2Config$161
      002F57 03                    2876 	.db	3
      002F58 01                    2877 	.sleb128	1
      002F59 01                    2878 	.db	1
      002F5A 09                    2879 	.db	9
      002F5B 00 07                 2880 	.dw	7+Sstm8s_tim2$TIM2_ForcedOC2Config$163-Sstm8s_tim2$TIM2_ForcedOC2Config$162
      002F5D 00                    2881 	.db	0
      002F5E 01                    2882 	.uleb128	1
      002F5F 01                    2883 	.db	1
      002F60 00                    2884 	.db	0
      002F61 05                    2885 	.uleb128	5
      002F62 02                    2886 	.db	2
      002F63 00 00 A6 C7           2887 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$165)
      002F67 03                    2888 	.db	3
      002F68 A0 04                 2889 	.sleb128	544
      002F6A 01                    2890 	.db	1
      002F6B 09                    2891 	.db	9
      002F6C 00 0C                 2892 	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$167-Sstm8s_tim2$TIM2_ForcedOC3Config$165
      002F6E 03                    2893 	.db	3
      002F6F 06                    2894 	.sleb128	6
      002F70 01                    2895 	.db	1
      002F71 09                    2896 	.db	9
      002F72 00 06                 2897 	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$168-Sstm8s_tim2$TIM2_ForcedOC3Config$167
      002F74 03                    2898 	.db	3
      002F75 01                    2899 	.sleb128	1
      002F76 01                    2900 	.db	1
      002F77 09                    2901 	.db	9
      002F78 00 06                 2902 	.dw	Sstm8s_tim2$TIM2_ForcedOC3Config$169-Sstm8s_tim2$TIM2_ForcedOC3Config$168
      002F7A 03                    2903 	.db	3
      002F7B 01                    2904 	.sleb128	1
      002F7C 01                    2905 	.db	1
      002F7D 09                    2906 	.db	9
      002F7E 00 07                 2907 	.dw	7+Sstm8s_tim2$TIM2_ForcedOC3Config$170-Sstm8s_tim2$TIM2_ForcedOC3Config$169
      002F80 00                    2908 	.db	0
      002F81 01                    2909 	.uleb128	1
      002F82 01                    2910 	.db	1
      002F83 00                    2911 	.db	0
      002F84 05                    2912 	.uleb128	5
      002F85 02                    2913 	.db	2
      002F86 00 00 A6 E6           2914 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$172)
      002F8A 03                    2915 	.db	3
      002F8B B0 04                 2916 	.sleb128	560
      002F8D 01                    2917 	.db	1
      002F8E 09                    2918 	.db	9
      002F8F 00 0C                 2919 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$174-Sstm8s_tim2$TIM2_ARRPreloadConfig$172
      002F91 03                    2920 	.db	3
      002F92 06                    2921 	.sleb128	6
      002F93 01                    2922 	.db	1
      002F94 09                    2923 	.db	9
      002F95 00 04                 2924 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$175-Sstm8s_tim2$TIM2_ARRPreloadConfig$174
      002F97 03                    2925 	.db	3
      002F98 02                    2926 	.sleb128	2
      002F99 01                    2927 	.db	1
      002F9A 09                    2928 	.db	9
      002F9B 00 06                 2929 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$176-Sstm8s_tim2$TIM2_ARRPreloadConfig$175
      002F9D 03                    2930 	.db	3
      002F9E 04                    2931 	.sleb128	4
      002F9F 01                    2932 	.db	1
      002FA0 09                    2933 	.db	9
      002FA1 00 04                 2934 	.dw	Sstm8s_tim2$TIM2_ARRPreloadConfig$177-Sstm8s_tim2$TIM2_ARRPreloadConfig$176
      002FA3 03                    2935 	.db	3
      002FA4 02                    2936 	.sleb128	2
      002FA5 01                    2937 	.db	1
      002FA6 09                    2938 	.db	9
      002FA7 00 07                 2939 	.dw	7+Sstm8s_tim2$TIM2_ARRPreloadConfig$178-Sstm8s_tim2$TIM2_ARRPreloadConfig$177
      002FA9 00                    2940 	.db	0
      002FAA 01                    2941 	.uleb128	1
      002FAB 01                    2942 	.db	1
      002FAC 00                    2943 	.db	0
      002FAD 05                    2944 	.uleb128	5
      002FAE 02                    2945 	.db	2
      002FAF 00 00 A7 07           2946 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$180)
      002FB3 03                    2947 	.db	3
      002FB4 C6 04                 2948 	.sleb128	582
      002FB6 01                    2949 	.db	1
      002FB7 09                    2950 	.db	9
      002FB8 00 0C                 2951 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$182-Sstm8s_tim2$TIM2_OC1PreloadConfig$180
      002FBA 03                    2952 	.db	3
      002FBB 06                    2953 	.sleb128	6
      002FBC 01                    2954 	.db	1
      002FBD 09                    2955 	.db	9
      002FBE 00 04                 2956 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$183-Sstm8s_tim2$TIM2_OC1PreloadConfig$182
      002FC0 03                    2957 	.db	3
      002FC1 02                    2958 	.sleb128	2
      002FC2 01                    2959 	.db	1
      002FC3 09                    2960 	.db	9
      002FC4 00 09                 2961 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$184-Sstm8s_tim2$TIM2_OC1PreloadConfig$183
      002FC6 03                    2962 	.db	3
      002FC7 04                    2963 	.sleb128	4
      002FC8 01                    2964 	.db	1
      002FC9 09                    2965 	.db	9
      002FCA 00 07                 2966 	.dw	Sstm8s_tim2$TIM2_OC1PreloadConfig$185-Sstm8s_tim2$TIM2_OC1PreloadConfig$184
      002FCC 03                    2967 	.db	3
      002FCD 02                    2968 	.sleb128	2
      002FCE 01                    2969 	.db	1
      002FCF 09                    2970 	.db	9
      002FD0 00 07                 2971 	.dw	7+Sstm8s_tim2$TIM2_OC1PreloadConfig$186-Sstm8s_tim2$TIM2_OC1PreloadConfig$185
      002FD2 00                    2972 	.db	0
      002FD3 01                    2973 	.uleb128	1
      002FD4 01                    2974 	.db	1
      002FD5 00                    2975 	.db	0
      002FD6 05                    2976 	.uleb128	5
      002FD7 02                    2977 	.db	2
      002FD8 00 00 A7 2E           2978 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$188)
      002FDC 03                    2979 	.db	3
      002FDD DC 04                 2980 	.sleb128	604
      002FDF 01                    2981 	.db	1
      002FE0 09                    2982 	.db	9
      002FE1 00 0C                 2983 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$190-Sstm8s_tim2$TIM2_OC2PreloadConfig$188
      002FE3 03                    2984 	.db	3
      002FE4 06                    2985 	.sleb128	6
      002FE5 01                    2986 	.db	1
      002FE6 09                    2987 	.db	9
      002FE7 00 04                 2988 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$191-Sstm8s_tim2$TIM2_OC2PreloadConfig$190
      002FE9 03                    2989 	.db	3
      002FEA 02                    2990 	.sleb128	2
      002FEB 01                    2991 	.db	1
      002FEC 09                    2992 	.db	9
      002FED 00 09                 2993 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$192-Sstm8s_tim2$TIM2_OC2PreloadConfig$191
      002FEF 03                    2994 	.db	3
      002FF0 04                    2995 	.sleb128	4
      002FF1 01                    2996 	.db	1
      002FF2 09                    2997 	.db	9
      002FF3 00 07                 2998 	.dw	Sstm8s_tim2$TIM2_OC2PreloadConfig$193-Sstm8s_tim2$TIM2_OC2PreloadConfig$192
      002FF5 03                    2999 	.db	3
      002FF6 02                    3000 	.sleb128	2
      002FF7 01                    3001 	.db	1
      002FF8 09                    3002 	.db	9
      002FF9 00 07                 3003 	.dw	7+Sstm8s_tim2$TIM2_OC2PreloadConfig$194-Sstm8s_tim2$TIM2_OC2PreloadConfig$193
      002FFB 00                    3004 	.db	0
      002FFC 01                    3005 	.uleb128	1
      002FFD 01                    3006 	.db	1
      002FFE 00                    3007 	.db	0
      002FFF 05                    3008 	.uleb128	5
      003000 02                    3009 	.db	2
      003001 00 00 A7 55           3010 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$196)
      003005 03                    3011 	.db	3
      003006 F2 04                 3012 	.sleb128	626
      003008 01                    3013 	.db	1
      003009 09                    3014 	.db	9
      00300A 00 0C                 3015 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$198-Sstm8s_tim2$TIM2_OC3PreloadConfig$196
      00300C 03                    3016 	.db	3
      00300D 06                    3017 	.sleb128	6
      00300E 01                    3018 	.db	1
      00300F 09                    3019 	.db	9
      003010 00 04                 3020 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$199-Sstm8s_tim2$TIM2_OC3PreloadConfig$198
      003012 03                    3021 	.db	3
      003013 02                    3022 	.sleb128	2
      003014 01                    3023 	.db	1
      003015 09                    3024 	.db	9
      003016 00 09                 3025 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$200-Sstm8s_tim2$TIM2_OC3PreloadConfig$199
      003018 03                    3026 	.db	3
      003019 04                    3027 	.sleb128	4
      00301A 01                    3028 	.db	1
      00301B 09                    3029 	.db	9
      00301C 00 07                 3030 	.dw	Sstm8s_tim2$TIM2_OC3PreloadConfig$201-Sstm8s_tim2$TIM2_OC3PreloadConfig$200
      00301E 03                    3031 	.db	3
      00301F 02                    3032 	.sleb128	2
      003020 01                    3033 	.db	1
      003021 09                    3034 	.db	9
      003022 00 07                 3035 	.dw	7+Sstm8s_tim2$TIM2_OC3PreloadConfig$202-Sstm8s_tim2$TIM2_OC3PreloadConfig$201
      003024 00                    3036 	.db	0
      003025 01                    3037 	.uleb128	1
      003026 01                    3038 	.db	1
      003027 00                    3039 	.db	0
      003028 05                    3040 	.uleb128	5
      003029 02                    3041 	.db	2
      00302A 00 00 A7 7C           3042 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$204)
      00302E 03                    3043 	.db	3
      00302F 8C 05                 3044 	.sleb128	652
      003031 01                    3045 	.db	1
      003032 09                    3046 	.db	9
      003033 00 0C                 3047 	.dw	Sstm8s_tim2$TIM2_GenerateEvent$206-Sstm8s_tim2$TIM2_GenerateEvent$204
      003035 03                    3048 	.db	3
      003036 06                    3049 	.sleb128	6
      003037 01                    3050 	.db	1
      003038 09                    3051 	.db	9
      003039 00 06                 3052 	.dw	Sstm8s_tim2$TIM2_GenerateEvent$207-Sstm8s_tim2$TIM2_GenerateEvent$206
      00303B 03                    3053 	.db	3
      00303C 01                    3054 	.sleb128	1
      00303D 01                    3055 	.db	1
      00303E 09                    3056 	.db	9
      00303F 00 07                 3057 	.dw	7+Sstm8s_tim2$TIM2_GenerateEvent$208-Sstm8s_tim2$TIM2_GenerateEvent$207
      003041 00                    3058 	.db	0
      003042 01                    3059 	.uleb128	1
      003043 01                    3060 	.db	1
      003044 00                    3061 	.db	0
      003045 05                    3062 	.uleb128	5
      003046 02                    3063 	.db	2
      003047 00 00 A7 95           3064 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$210)
      00304B 03                    3065 	.db	3
      00304C 9D 05                 3066 	.sleb128	669
      00304E 01                    3067 	.db	1
      00304F 09                    3068 	.db	9
      003050 00 0C                 3069 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$212-Sstm8s_tim2$TIM2_OC1PolarityConfig$210
      003052 03                    3070 	.db	3
      003053 06                    3071 	.sleb128	6
      003054 01                    3072 	.db	1
      003055 09                    3073 	.db	9
      003056 00 04                 3074 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$213-Sstm8s_tim2$TIM2_OC1PolarityConfig$212
      003058 03                    3075 	.db	3
      003059 02                    3076 	.sleb128	2
      00305A 01                    3077 	.db	1
      00305B 09                    3078 	.db	9
      00305C 00 09                 3079 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$214-Sstm8s_tim2$TIM2_OC1PolarityConfig$213
      00305E 03                    3080 	.db	3
      00305F 04                    3081 	.sleb128	4
      003060 01                    3082 	.db	1
      003061 09                    3083 	.db	9
      003062 00 07                 3084 	.dw	Sstm8s_tim2$TIM2_OC1PolarityConfig$215-Sstm8s_tim2$TIM2_OC1PolarityConfig$214
      003064 03                    3085 	.db	3
      003065 02                    3086 	.sleb128	2
      003066 01                    3087 	.db	1
      003067 09                    3088 	.db	9
      003068 00 07                 3089 	.dw	7+Sstm8s_tim2$TIM2_OC1PolarityConfig$216-Sstm8s_tim2$TIM2_OC1PolarityConfig$215
      00306A 00                    3090 	.db	0
      00306B 01                    3091 	.uleb128	1
      00306C 01                    3092 	.db	1
      00306D 00                    3093 	.db	0
      00306E 05                    3094 	.uleb128	5
      00306F 02                    3095 	.db	2
      003070 00 00 A7 BC           3096 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$218)
      003074 03                    3097 	.db	3
      003075 B5 05                 3098 	.sleb128	693
      003077 01                    3099 	.db	1
      003078 09                    3100 	.db	9
      003079 00 0C                 3101 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$220-Sstm8s_tim2$TIM2_OC2PolarityConfig$218
      00307B 03                    3102 	.db	3
      00307C 06                    3103 	.sleb128	6
      00307D 01                    3104 	.db	1
      00307E 09                    3105 	.db	9
      00307F 00 04                 3106 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$221-Sstm8s_tim2$TIM2_OC2PolarityConfig$220
      003081 03                    3107 	.db	3
      003082 02                    3108 	.sleb128	2
      003083 01                    3109 	.db	1
      003084 09                    3110 	.db	9
      003085 00 09                 3111 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$222-Sstm8s_tim2$TIM2_OC2PolarityConfig$221
      003087 03                    3112 	.db	3
      003088 04                    3113 	.sleb128	4
      003089 01                    3114 	.db	1
      00308A 09                    3115 	.db	9
      00308B 00 07                 3116 	.dw	Sstm8s_tim2$TIM2_OC2PolarityConfig$223-Sstm8s_tim2$TIM2_OC2PolarityConfig$222
      00308D 03                    3117 	.db	3
      00308E 02                    3118 	.sleb128	2
      00308F 01                    3119 	.db	1
      003090 09                    3120 	.db	9
      003091 00 07                 3121 	.dw	7+Sstm8s_tim2$TIM2_OC2PolarityConfig$224-Sstm8s_tim2$TIM2_OC2PolarityConfig$223
      003093 00                    3122 	.db	0
      003094 01                    3123 	.uleb128	1
      003095 01                    3124 	.db	1
      003096 00                    3125 	.db	0
      003097 05                    3126 	.uleb128	5
      003098 02                    3127 	.db	2
      003099 00 00 A7 E3           3128 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$226)
      00309D 03                    3129 	.db	3
      00309E CD 05                 3130 	.sleb128	717
      0030A0 01                    3131 	.db	1
      0030A1 09                    3132 	.db	9
      0030A2 00 0C                 3133 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$228-Sstm8s_tim2$TIM2_OC3PolarityConfig$226
      0030A4 03                    3134 	.db	3
      0030A5 06                    3135 	.sleb128	6
      0030A6 01                    3136 	.db	1
      0030A7 09                    3137 	.db	9
      0030A8 00 04                 3138 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$229-Sstm8s_tim2$TIM2_OC3PolarityConfig$228
      0030AA 03                    3139 	.db	3
      0030AB 02                    3140 	.sleb128	2
      0030AC 01                    3141 	.db	1
      0030AD 09                    3142 	.db	9
      0030AE 00 09                 3143 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$230-Sstm8s_tim2$TIM2_OC3PolarityConfig$229
      0030B0 03                    3144 	.db	3
      0030B1 04                    3145 	.sleb128	4
      0030B2 01                    3146 	.db	1
      0030B3 09                    3147 	.db	9
      0030B4 00 07                 3148 	.dw	Sstm8s_tim2$TIM2_OC3PolarityConfig$231-Sstm8s_tim2$TIM2_OC3PolarityConfig$230
      0030B6 03                    3149 	.db	3
      0030B7 02                    3150 	.sleb128	2
      0030B8 01                    3151 	.db	1
      0030B9 09                    3152 	.db	9
      0030BA 00 07                 3153 	.dw	7+Sstm8s_tim2$TIM2_OC3PolarityConfig$232-Sstm8s_tim2$TIM2_OC3PolarityConfig$231
      0030BC 00                    3154 	.db	0
      0030BD 01                    3155 	.uleb128	1
      0030BE 01                    3156 	.db	1
      0030BF 00                    3157 	.db	0
      0030C0 05                    3158 	.uleb128	5
      0030C1 02                    3159 	.db	2
      0030C2 00 00 A8 0A           3160 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$234)
      0030C6 03                    3161 	.db	3
      0030C7 E8 05                 3162 	.sleb128	744
      0030C9 01                    3163 	.db	1
      0030CA 09                    3164 	.db	9
      0030CB 00 0C                 3165 	.dw	Sstm8s_tim2$TIM2_CCxCmd$236-Sstm8s_tim2$TIM2_CCxCmd$234
      0030CD 03                    3166 	.db	3
      0030CE 06                    3167 	.sleb128	6
      0030CF 01                    3168 	.db	1
      0030D0 09                    3169 	.db	9
      0030D1 00 04                 3170 	.dw	Sstm8s_tim2$TIM2_CCxCmd$237-Sstm8s_tim2$TIM2_CCxCmd$236
      0030D3 03                    3171 	.db	3
      0030D4 03                    3172 	.sleb128	3
      0030D5 01                    3173 	.db	1
      0030D6 09                    3174 	.db	9
      0030D7 00 04                 3175 	.dw	Sstm8s_tim2$TIM2_CCxCmd$238-Sstm8s_tim2$TIM2_CCxCmd$237
      0030D9 03                    3176 	.db	3
      0030DA 02                    3177 	.sleb128	2
      0030DB 01                    3178 	.db	1
      0030DC 09                    3179 	.db	9
      0030DD 00 06                 3180 	.dw	Sstm8s_tim2$TIM2_CCxCmd$239-Sstm8s_tim2$TIM2_CCxCmd$238
      0030DF 03                    3181 	.db	3
      0030E0 04                    3182 	.sleb128	4
      0030E1 01                    3183 	.db	1
      0030E2 09                    3184 	.db	9
      0030E3 00 06                 3185 	.dw	Sstm8s_tim2$TIM2_CCxCmd$240-Sstm8s_tim2$TIM2_CCxCmd$239
      0030E5 03                    3186 	.db	3
      0030E6 04                    3187 	.sleb128	4
      0030E7 01                    3188 	.db	1
      0030E8 09                    3189 	.db	9
      0030E9 00 06                 3190 	.dw	Sstm8s_tim2$TIM2_CCxCmd$241-Sstm8s_tim2$TIM2_CCxCmd$240
      0030EB 03                    3191 	.db	3
      0030EC 03                    3192 	.sleb128	3
      0030ED 01                    3193 	.db	1
      0030EE 09                    3194 	.db	9
      0030EF 00 04                 3195 	.dw	Sstm8s_tim2$TIM2_CCxCmd$242-Sstm8s_tim2$TIM2_CCxCmd$241
      0030F1 03                    3196 	.db	3
      0030F2 02                    3197 	.sleb128	2
      0030F3 01                    3198 	.db	1
      0030F4 09                    3199 	.db	9
      0030F5 00 09                 3200 	.dw	Sstm8s_tim2$TIM2_CCxCmd$243-Sstm8s_tim2$TIM2_CCxCmd$242
      0030F7 03                    3201 	.db	3
      0030F8 04                    3202 	.sleb128	4
      0030F9 01                    3203 	.db	1
      0030FA 09                    3204 	.db	9
      0030FB 00 09                 3205 	.dw	Sstm8s_tim2$TIM2_CCxCmd$244-Sstm8s_tim2$TIM2_CCxCmd$243
      0030FD 03                    3206 	.db	3
      0030FE 06                    3207 	.sleb128	6
      0030FF 01                    3208 	.db	1
      003100 09                    3209 	.db	9
      003101 00 04                 3210 	.dw	Sstm8s_tim2$TIM2_CCxCmd$245-Sstm8s_tim2$TIM2_CCxCmd$244
      003103 03                    3211 	.db	3
      003104 02                    3212 	.sleb128	2
      003105 01                    3213 	.db	1
      003106 09                    3214 	.db	9
      003107 00 06                 3215 	.dw	Sstm8s_tim2$TIM2_CCxCmd$246-Sstm8s_tim2$TIM2_CCxCmd$245
      003109 03                    3216 	.db	3
      00310A 04                    3217 	.sleb128	4
      00310B 01                    3218 	.db	1
      00310C 09                    3219 	.db	9
      00310D 00 04                 3220 	.dw	Sstm8s_tim2$TIM2_CCxCmd$247-Sstm8s_tim2$TIM2_CCxCmd$246
      00310F 03                    3221 	.db	3
      003110 03                    3222 	.sleb128	3
      003111 01                    3223 	.db	1
      003112 09                    3224 	.db	9
      003113 00 07                 3225 	.dw	7+Sstm8s_tim2$TIM2_CCxCmd$248-Sstm8s_tim2$TIM2_CCxCmd$247
      003115 00                    3226 	.db	0
      003116 01                    3227 	.uleb128	1
      003117 01                    3228 	.db	1
      003118 00                    3229 	.db	0
      003119 05                    3230 	.uleb128	5
      00311A 02                    3231 	.db	2
      00311B 00 00 A8 5B           3232 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$250)
      00311F 03                    3233 	.db	3
      003120 A9 06                 3234 	.sleb128	809
      003122 01                    3235 	.db	1
      003123 09                    3236 	.db	9
      003124 00 0C                 3237 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$252-Sstm8s_tim2$TIM2_SelectOCxM$250
      003126 03                    3238 	.db	3
      003127 06                    3239 	.sleb128	6
      003128 01                    3240 	.db	1
      003129 09                    3241 	.db	9
      00312A 00 04                 3242 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$253-Sstm8s_tim2$TIM2_SelectOCxM$252
      00312C 03                    3243 	.db	3
      00312D 03                    3244 	.sleb128	3
      00312E 01                    3245 	.db	1
      00312F 09                    3246 	.db	9
      003130 00 04                 3247 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$254-Sstm8s_tim2$TIM2_SelectOCxM$253
      003132 03                    3248 	.db	3
      003133 03                    3249 	.sleb128	3
      003134 01                    3250 	.db	1
      003135 09                    3251 	.db	9
      003136 00 06                 3252 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$255-Sstm8s_tim2$TIM2_SelectOCxM$254
      003138 03                    3253 	.db	3
      003139 01                    3254 	.sleb128	1
      00313A 01                    3255 	.db	1
      00313B 09                    3256 	.db	9
      00313C 00 08                 3257 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$256-Sstm8s_tim2$TIM2_SelectOCxM$255
      00313E 03                    3258 	.db	3
      00313F 02                    3259 	.sleb128	2
      003140 01                    3260 	.db	1
      003141 09                    3261 	.db	9
      003142 00 06                 3262 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$257-Sstm8s_tim2$TIM2_SelectOCxM$256
      003144 03                    3263 	.db	3
      003145 03                    3264 	.sleb128	3
      003146 01                    3265 	.db	1
      003147 09                    3266 	.db	9
      003148 00 07                 3267 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$258-Sstm8s_tim2$TIM2_SelectOCxM$257
      00314A 03                    3268 	.db	3
      00314B 03                    3269 	.sleb128	3
      00314C 01                    3270 	.db	1
      00314D 09                    3271 	.db	9
      00314E 00 06                 3272 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$259-Sstm8s_tim2$TIM2_SelectOCxM$258
      003150 03                    3273 	.db	3
      003151 01                    3274 	.sleb128	1
      003152 01                    3275 	.db	1
      003153 09                    3276 	.db	9
      003154 00 08                 3277 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$260-Sstm8s_tim2$TIM2_SelectOCxM$259
      003156 03                    3278 	.db	3
      003157 05                    3279 	.sleb128	5
      003158 01                    3280 	.db	1
      003159 09                    3281 	.db	9
      00315A 00 04                 3282 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$261-Sstm8s_tim2$TIM2_SelectOCxM$260
      00315C 03                    3283 	.db	3
      00315D 03                    3284 	.sleb128	3
      00315E 01                    3285 	.db	1
      00315F 09                    3286 	.db	9
      003160 00 06                 3287 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$262-Sstm8s_tim2$TIM2_SelectOCxM$261
      003162 03                    3288 	.db	3
      003163 01                    3289 	.sleb128	1
      003164 01                    3290 	.db	1
      003165 09                    3291 	.db	9
      003166 00 06                 3292 	.dw	Sstm8s_tim2$TIM2_SelectOCxM$263-Sstm8s_tim2$TIM2_SelectOCxM$262
      003168 03                    3293 	.db	3
      003169 02                    3294 	.sleb128	2
      00316A 01                    3295 	.db	1
      00316B 09                    3296 	.db	9
      00316C 00 07                 3297 	.dw	7+Sstm8s_tim2$TIM2_SelectOCxM$264-Sstm8s_tim2$TIM2_SelectOCxM$263
      00316E 00                    3298 	.db	0
      00316F 01                    3299 	.uleb128	1
      003170 01                    3300 	.db	1
      003171 00                    3301 	.db	0
      003172 05                    3302 	.uleb128	5
      003173 02                    3303 	.db	2
      003174 00 00 A8 AF           3304 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$266)
      003178 03                    3305 	.db	3
      003179 D2 06                 3306 	.sleb128	850
      00317B 01                    3307 	.db	1
      00317C 09                    3308 	.db	9
      00317D 00 0E                 3309 	.dw	Sstm8s_tim2$TIM2_SetCounter$268-Sstm8s_tim2$TIM2_SetCounter$266
      00317F 03                    3310 	.db	3
      003180 03                    3311 	.sleb128	3
      003181 01                    3312 	.db	1
      003182 09                    3313 	.db	9
      003183 00 08                 3314 	.dw	Sstm8s_tim2$TIM2_SetCounter$269-Sstm8s_tim2$TIM2_SetCounter$268
      003185 03                    3315 	.db	3
      003186 01                    3316 	.sleb128	1
      003187 01                    3317 	.db	1
      003188 09                    3318 	.db	9
      003189 00 06                 3319 	.dw	Sstm8s_tim2$TIM2_SetCounter$270-Sstm8s_tim2$TIM2_SetCounter$269
      00318B 03                    3320 	.db	3
      00318C 01                    3321 	.sleb128	1
      00318D 01                    3322 	.db	1
      00318E 09                    3323 	.db	9
      00318F 00 09                 3324 	.dw	7+Sstm8s_tim2$TIM2_SetCounter$271-Sstm8s_tim2$TIM2_SetCounter$270
      003191 00                    3325 	.db	0
      003192 01                    3326 	.uleb128	1
      003193 01                    3327 	.db	1
      003194 00                    3328 	.db	0
      003195 05                    3329 	.uleb128	5
      003196 02                    3330 	.db	2
      003197 00 00 A8 D4           3331 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$273)
      00319B 03                    3332 	.db	3
      00319C DF 06                 3333 	.sleb128	863
      00319E 01                    3334 	.db	1
      00319F 09                    3335 	.db	9
      0031A0 00 0E                 3336 	.dw	Sstm8s_tim2$TIM2_SetAutoreload$275-Sstm8s_tim2$TIM2_SetAutoreload$273
      0031A2 03                    3337 	.db	3
      0031A3 03                    3338 	.sleb128	3
      0031A4 01                    3339 	.db	1
      0031A5 09                    3340 	.db	9
      0031A6 00 08                 3341 	.dw	Sstm8s_tim2$TIM2_SetAutoreload$276-Sstm8s_tim2$TIM2_SetAutoreload$275
      0031A8 03                    3342 	.db	3
      0031A9 01                    3343 	.sleb128	1
      0031AA 01                    3344 	.db	1
      0031AB 09                    3345 	.db	9
      0031AC 00 06                 3346 	.dw	Sstm8s_tim2$TIM2_SetAutoreload$277-Sstm8s_tim2$TIM2_SetAutoreload$276
      0031AE 03                    3347 	.db	3
      0031AF 01                    3348 	.sleb128	1
      0031B0 01                    3349 	.db	1
      0031B1 09                    3350 	.db	9
      0031B2 00 09                 3351 	.dw	7+Sstm8s_tim2$TIM2_SetAutoreload$278-Sstm8s_tim2$TIM2_SetAutoreload$277
      0031B4 00                    3352 	.db	0
      0031B5 01                    3353 	.uleb128	1
      0031B6 01                    3354 	.db	1
      0031B7 00                    3355 	.db	0
      0031B8 05                    3356 	.uleb128	5
      0031B9 02                    3357 	.db	2
      0031BA 00 00 A8 F9           3358 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$280)
      0031BE 03                    3359 	.db	3
      0031BF EC 06                 3360 	.sleb128	876
      0031C1 01                    3361 	.db	1
      0031C2 09                    3362 	.db	9
      0031C3 00 0E                 3363 	.dw	Sstm8s_tim2$TIM2_SetCompare1$282-Sstm8s_tim2$TIM2_SetCompare1$280
      0031C5 03                    3364 	.db	3
      0031C6 03                    3365 	.sleb128	3
      0031C7 01                    3366 	.db	1
      0031C8 09                    3367 	.db	9
      0031C9 00 08                 3368 	.dw	Sstm8s_tim2$TIM2_SetCompare1$283-Sstm8s_tim2$TIM2_SetCompare1$282
      0031CB 03                    3369 	.db	3
      0031CC 01                    3370 	.sleb128	1
      0031CD 01                    3371 	.db	1
      0031CE 09                    3372 	.db	9
      0031CF 00 06                 3373 	.dw	Sstm8s_tim2$TIM2_SetCompare1$284-Sstm8s_tim2$TIM2_SetCompare1$283
      0031D1 03                    3374 	.db	3
      0031D2 01                    3375 	.sleb128	1
      0031D3 01                    3376 	.db	1
      0031D4 09                    3377 	.db	9
      0031D5 00 09                 3378 	.dw	7+Sstm8s_tim2$TIM2_SetCompare1$285-Sstm8s_tim2$TIM2_SetCompare1$284
      0031D7 00                    3379 	.db	0
      0031D8 01                    3380 	.uleb128	1
      0031D9 01                    3381 	.db	1
      0031DA 00                    3382 	.db	0
      0031DB 05                    3383 	.uleb128	5
      0031DC 02                    3384 	.db	2
      0031DD 00 00 A9 1E           3385 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$287)
      0031E1 03                    3386 	.db	3
      0031E2 F9 06                 3387 	.sleb128	889
      0031E4 01                    3388 	.db	1
      0031E5 09                    3389 	.db	9
      0031E6 00 0E                 3390 	.dw	Sstm8s_tim2$TIM2_SetCompare2$289-Sstm8s_tim2$TIM2_SetCompare2$287
      0031E8 03                    3391 	.db	3
      0031E9 03                    3392 	.sleb128	3
      0031EA 01                    3393 	.db	1
      0031EB 09                    3394 	.db	9
      0031EC 00 08                 3395 	.dw	Sstm8s_tim2$TIM2_SetCompare2$290-Sstm8s_tim2$TIM2_SetCompare2$289
      0031EE 03                    3396 	.db	3
      0031EF 01                    3397 	.sleb128	1
      0031F0 01                    3398 	.db	1
      0031F1 09                    3399 	.db	9
      0031F2 00 06                 3400 	.dw	Sstm8s_tim2$TIM2_SetCompare2$291-Sstm8s_tim2$TIM2_SetCompare2$290
      0031F4 03                    3401 	.db	3
      0031F5 01                    3402 	.sleb128	1
      0031F6 01                    3403 	.db	1
      0031F7 09                    3404 	.db	9
      0031F8 00 09                 3405 	.dw	7+Sstm8s_tim2$TIM2_SetCompare2$292-Sstm8s_tim2$TIM2_SetCompare2$291
      0031FA 00                    3406 	.db	0
      0031FB 01                    3407 	.uleb128	1
      0031FC 01                    3408 	.db	1
      0031FD 00                    3409 	.db	0
      0031FE 05                    3410 	.uleb128	5
      0031FF 02                    3411 	.db	2
      003200 00 00 A9 43           3412 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$294)
      003204 03                    3413 	.db	3
      003205 86 07                 3414 	.sleb128	902
      003207 01                    3415 	.db	1
      003208 09                    3416 	.db	9
      003209 00 0E                 3417 	.dw	Sstm8s_tim2$TIM2_SetCompare3$296-Sstm8s_tim2$TIM2_SetCompare3$294
      00320B 03                    3418 	.db	3
      00320C 03                    3419 	.sleb128	3
      00320D 01                    3420 	.db	1
      00320E 09                    3421 	.db	9
      00320F 00 08                 3422 	.dw	Sstm8s_tim2$TIM2_SetCompare3$297-Sstm8s_tim2$TIM2_SetCompare3$296
      003211 03                    3423 	.db	3
      003212 01                    3424 	.sleb128	1
      003213 01                    3425 	.db	1
      003214 09                    3426 	.db	9
      003215 00 06                 3427 	.dw	Sstm8s_tim2$TIM2_SetCompare3$298-Sstm8s_tim2$TIM2_SetCompare3$297
      003217 03                    3428 	.db	3
      003218 01                    3429 	.sleb128	1
      003219 01                    3430 	.db	1
      00321A 09                    3431 	.db	9
      00321B 00 09                 3432 	.dw	7+Sstm8s_tim2$TIM2_SetCompare3$299-Sstm8s_tim2$TIM2_SetCompare3$298
      00321D 00                    3433 	.db	0
      00321E 01                    3434 	.uleb128	1
      00321F 01                    3435 	.db	1
      003220 00                    3436 	.db	0
      003221 05                    3437 	.uleb128	5
      003222 02                    3438 	.db	2
      003223 00 00 A9 68           3439 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$301)
      003227 03                    3440 	.db	3
      003228 97 07                 3441 	.sleb128	919
      00322A 01                    3442 	.db	1
      00322B 09                    3443 	.db	9
      00322C 00 0C                 3444 	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$303-Sstm8s_tim2$TIM2_SetIC1Prescaler$301
      00322E 03                    3445 	.db	3
      00322F 06                    3446 	.sleb128	6
      003230 01                    3447 	.db	1
      003231 09                    3448 	.db	9
      003232 00 06                 3449 	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$304-Sstm8s_tim2$TIM2_SetIC1Prescaler$303
      003234 03                    3450 	.db	3
      003235 01                    3451 	.sleb128	1
      003236 01                    3452 	.db	1
      003237 09                    3453 	.db	9
      003238 00 06                 3454 	.dw	Sstm8s_tim2$TIM2_SetIC1Prescaler$305-Sstm8s_tim2$TIM2_SetIC1Prescaler$304
      00323A 03                    3455 	.db	3
      00323B 01                    3456 	.sleb128	1
      00323C 01                    3457 	.db	1
      00323D 09                    3458 	.db	9
      00323E 00 07                 3459 	.dw	7+Sstm8s_tim2$TIM2_SetIC1Prescaler$306-Sstm8s_tim2$TIM2_SetIC1Prescaler$305
      003240 00                    3460 	.db	0
      003241 01                    3461 	.uleb128	1
      003242 01                    3462 	.db	1
      003243 00                    3463 	.db	0
      003244 05                    3464 	.uleb128	5
      003245 02                    3465 	.db	2
      003246 00 00 A9 87           3466 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$308)
      00324A 03                    3467 	.db	3
      00324B AB 07                 3468 	.sleb128	939
      00324D 01                    3469 	.db	1
      00324E 09                    3470 	.db	9
      00324F 00 0C                 3471 	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$310-Sstm8s_tim2$TIM2_SetIC2Prescaler$308
      003251 03                    3472 	.db	3
      003252 06                    3473 	.sleb128	6
      003253 01                    3474 	.db	1
      003254 09                    3475 	.db	9
      003255 00 06                 3476 	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$311-Sstm8s_tim2$TIM2_SetIC2Prescaler$310
      003257 03                    3477 	.db	3
      003258 01                    3478 	.sleb128	1
      003259 01                    3479 	.db	1
      00325A 09                    3480 	.db	9
      00325B 00 06                 3481 	.dw	Sstm8s_tim2$TIM2_SetIC2Prescaler$312-Sstm8s_tim2$TIM2_SetIC2Prescaler$311
      00325D 03                    3482 	.db	3
      00325E 01                    3483 	.sleb128	1
      00325F 01                    3484 	.db	1
      003260 09                    3485 	.db	9
      003261 00 07                 3486 	.dw	7+Sstm8s_tim2$TIM2_SetIC2Prescaler$313-Sstm8s_tim2$TIM2_SetIC2Prescaler$312
      003263 00                    3487 	.db	0
      003264 01                    3488 	.uleb128	1
      003265 01                    3489 	.db	1
      003266 00                    3490 	.db	0
      003267 05                    3491 	.uleb128	5
      003268 02                    3492 	.db	2
      003269 00 00 A9 A6           3493 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$315)
      00326D 03                    3494 	.db	3
      00326E BF 07                 3495 	.sleb128	959
      003270 01                    3496 	.db	1
      003271 09                    3497 	.db	9
      003272 00 0C                 3498 	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$317-Sstm8s_tim2$TIM2_SetIC3Prescaler$315
      003274 03                    3499 	.db	3
      003275 06                    3500 	.sleb128	6
      003276 01                    3501 	.db	1
      003277 09                    3502 	.db	9
      003278 00 06                 3503 	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$318-Sstm8s_tim2$TIM2_SetIC3Prescaler$317
      00327A 03                    3504 	.db	3
      00327B 01                    3505 	.sleb128	1
      00327C 01                    3506 	.db	1
      00327D 09                    3507 	.db	9
      00327E 00 06                 3508 	.dw	Sstm8s_tim2$TIM2_SetIC3Prescaler$319-Sstm8s_tim2$TIM2_SetIC3Prescaler$318
      003280 03                    3509 	.db	3
      003281 01                    3510 	.sleb128	1
      003282 01                    3511 	.db	1
      003283 09                    3512 	.db	9
      003284 00 07                 3513 	.dw	7+Sstm8s_tim2$TIM2_SetIC3Prescaler$320-Sstm8s_tim2$TIM2_SetIC3Prescaler$319
      003286 00                    3514 	.db	0
      003287 01                    3515 	.uleb128	1
      003288 01                    3516 	.db	1
      003289 00                    3517 	.db	0
      00328A 05                    3518 	.uleb128	5
      00328B 02                    3519 	.db	2
      00328C 00 00 A9 C5           3520 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$322)
      003290 03                    3521 	.db	3
      003291 CE 07                 3522 	.sleb128	974
      003293 01                    3523 	.db	1
      003294 09                    3524 	.db	9
      003295 00 0E                 3525 	.dw	Sstm8s_tim2$TIM2_GetCapture1$324-Sstm8s_tim2$TIM2_GetCapture1$322
      003297 03                    3526 	.db	3
      003298 06                    3527 	.sleb128	6
      003299 01                    3528 	.db	1
      00329A 09                    3529 	.db	9
      00329B 00 06                 3530 	.dw	Sstm8s_tim2$TIM2_GetCapture1$325-Sstm8s_tim2$TIM2_GetCapture1$324
      00329D 03                    3531 	.db	3
      00329E 01                    3532 	.sleb128	1
      00329F 01                    3533 	.db	1
      0032A0 09                    3534 	.db	9
      0032A1 00 04                 3535 	.dw	Sstm8s_tim2$TIM2_GetCapture1$326-Sstm8s_tim2$TIM2_GetCapture1$325
      0032A3 03                    3536 	.db	3
      0032A4 02                    3537 	.sleb128	2
      0032A5 01                    3538 	.db	1
      0032A6 09                    3539 	.db	9
      0032A7 00 02                 3540 	.dw	Sstm8s_tim2$TIM2_GetCapture1$327-Sstm8s_tim2$TIM2_GetCapture1$326
      0032A9 03                    3541 	.db	3
      0032AA 01                    3542 	.sleb128	1
      0032AB 01                    3543 	.db	1
      0032AC 09                    3544 	.db	9
      0032AD 00 0D                 3545 	.dw	Sstm8s_tim2$TIM2_GetCapture1$328-Sstm8s_tim2$TIM2_GetCapture1$327
      0032AF 03                    3546 	.db	3
      0032B0 02                    3547 	.sleb128	2
      0032B1 01                    3548 	.db	1
      0032B2 09                    3549 	.db	9
      0032B3 00 00                 3550 	.dw	Sstm8s_tim2$TIM2_GetCapture1$329-Sstm8s_tim2$TIM2_GetCapture1$328
      0032B5 03                    3551 	.db	3
      0032B6 01                    3552 	.sleb128	1
      0032B7 01                    3553 	.db	1
      0032B8 09                    3554 	.db	9
      0032B9 00 09                 3555 	.dw	7+Sstm8s_tim2$TIM2_GetCapture1$330-Sstm8s_tim2$TIM2_GetCapture1$329
      0032BB 00                    3556 	.db	0
      0032BC 01                    3557 	.uleb128	1
      0032BD 01                    3558 	.db	1
      0032BE 00                    3559 	.db	0
      0032BF 05                    3560 	.uleb128	5
      0032C0 02                    3561 	.db	2
      0032C1 00 00 A9 F5           3562 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$332)
      0032C5 03                    3563 	.db	3
      0032C6 E2 07                 3564 	.sleb128	994
      0032C8 01                    3565 	.db	1
      0032C9 09                    3566 	.db	9
      0032CA 00 0E                 3567 	.dw	Sstm8s_tim2$TIM2_GetCapture2$334-Sstm8s_tim2$TIM2_GetCapture2$332
      0032CC 03                    3568 	.db	3
      0032CD 06                    3569 	.sleb128	6
      0032CE 01                    3570 	.db	1
      0032CF 09                    3571 	.db	9
      0032D0 00 06                 3572 	.dw	Sstm8s_tim2$TIM2_GetCapture2$335-Sstm8s_tim2$TIM2_GetCapture2$334
      0032D2 03                    3573 	.db	3
      0032D3 01                    3574 	.sleb128	1
      0032D4 01                    3575 	.db	1
      0032D5 09                    3576 	.db	9
      0032D6 00 04                 3577 	.dw	Sstm8s_tim2$TIM2_GetCapture2$336-Sstm8s_tim2$TIM2_GetCapture2$335
      0032D8 03                    3578 	.db	3
      0032D9 02                    3579 	.sleb128	2
      0032DA 01                    3580 	.db	1
      0032DB 09                    3581 	.db	9
      0032DC 00 02                 3582 	.dw	Sstm8s_tim2$TIM2_GetCapture2$337-Sstm8s_tim2$TIM2_GetCapture2$336
      0032DE 03                    3583 	.db	3
      0032DF 01                    3584 	.sleb128	1
      0032E0 01                    3585 	.db	1
      0032E1 09                    3586 	.db	9
      0032E2 00 0D                 3587 	.dw	Sstm8s_tim2$TIM2_GetCapture2$338-Sstm8s_tim2$TIM2_GetCapture2$337
      0032E4 03                    3588 	.db	3
      0032E5 02                    3589 	.sleb128	2
      0032E6 01                    3590 	.db	1
      0032E7 09                    3591 	.db	9
      0032E8 00 00                 3592 	.dw	Sstm8s_tim2$TIM2_GetCapture2$339-Sstm8s_tim2$TIM2_GetCapture2$338
      0032EA 03                    3593 	.db	3
      0032EB 01                    3594 	.sleb128	1
      0032EC 01                    3595 	.db	1
      0032ED 09                    3596 	.db	9
      0032EE 00 09                 3597 	.dw	7+Sstm8s_tim2$TIM2_GetCapture2$340-Sstm8s_tim2$TIM2_GetCapture2$339
      0032F0 00                    3598 	.db	0
      0032F1 01                    3599 	.uleb128	1
      0032F2 01                    3600 	.db	1
      0032F3 00                    3601 	.db	0
      0032F4 05                    3602 	.uleb128	5
      0032F5 02                    3603 	.db	2
      0032F6 00 00 AA 25           3604 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$342)
      0032FA 03                    3605 	.db	3
      0032FB F6 07                 3606 	.sleb128	1014
      0032FD 01                    3607 	.db	1
      0032FE 09                    3608 	.db	9
      0032FF 00 0E                 3609 	.dw	Sstm8s_tim2$TIM2_GetCapture3$344-Sstm8s_tim2$TIM2_GetCapture3$342
      003301 03                    3610 	.db	3
      003302 06                    3611 	.sleb128	6
      003303 01                    3612 	.db	1
      003304 09                    3613 	.db	9
      003305 00 06                 3614 	.dw	Sstm8s_tim2$TIM2_GetCapture3$345-Sstm8s_tim2$TIM2_GetCapture3$344
      003307 03                    3615 	.db	3
      003308 01                    3616 	.sleb128	1
      003309 01                    3617 	.db	1
      00330A 09                    3618 	.db	9
      00330B 00 04                 3619 	.dw	Sstm8s_tim2$TIM2_GetCapture3$346-Sstm8s_tim2$TIM2_GetCapture3$345
      00330D 03                    3620 	.db	3
      00330E 02                    3621 	.sleb128	2
      00330F 01                    3622 	.db	1
      003310 09                    3623 	.db	9
      003311 00 02                 3624 	.dw	Sstm8s_tim2$TIM2_GetCapture3$347-Sstm8s_tim2$TIM2_GetCapture3$346
      003313 03                    3625 	.db	3
      003314 01                    3626 	.sleb128	1
      003315 01                    3627 	.db	1
      003316 09                    3628 	.db	9
      003317 00 0D                 3629 	.dw	Sstm8s_tim2$TIM2_GetCapture3$348-Sstm8s_tim2$TIM2_GetCapture3$347
      003319 03                    3630 	.db	3
      00331A 02                    3631 	.sleb128	2
      00331B 01                    3632 	.db	1
      00331C 09                    3633 	.db	9
      00331D 00 00                 3634 	.dw	Sstm8s_tim2$TIM2_GetCapture3$349-Sstm8s_tim2$TIM2_GetCapture3$348
      00331F 03                    3635 	.db	3
      003320 01                    3636 	.sleb128	1
      003321 01                    3637 	.db	1
      003322 09                    3638 	.db	9
      003323 00 09                 3639 	.dw	7+Sstm8s_tim2$TIM2_GetCapture3$350-Sstm8s_tim2$TIM2_GetCapture3$349
      003325 00                    3640 	.db	0
      003326 01                    3641 	.uleb128	1
      003327 01                    3642 	.db	1
      003328 00                    3643 	.db	0
      003329 05                    3644 	.uleb128	5
      00332A 02                    3645 	.db	2
      00332B 00 00 AA 55           3646 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$352)
      00332F 03                    3647 	.db	3
      003330 8A 08                 3648 	.sleb128	1034
      003332 01                    3649 	.db	1
      003333 09                    3650 	.db	9
      003334 00 0E                 3651 	.dw	Sstm8s_tim2$TIM2_GetCounter$354-Sstm8s_tim2$TIM2_GetCounter$352
      003336 03                    3652 	.db	3
      003337 04                    3653 	.sleb128	4
      003338 01                    3654 	.db	1
      003339 09                    3655 	.db	9
      00333A 00 09                 3656 	.dw	Sstm8s_tim2$TIM2_GetCounter$355-Sstm8s_tim2$TIM2_GetCounter$354
      00333C 03                    3657 	.db	3
      00333D 02                    3658 	.sleb128	2
      00333E 01                    3659 	.db	1
      00333F 09                    3660 	.db	9
      003340 00 0E                 3661 	.dw	Sstm8s_tim2$TIM2_GetCounter$356-Sstm8s_tim2$TIM2_GetCounter$355
      003342 03                    3662 	.db	3
      003343 01                    3663 	.sleb128	1
      003344 01                    3664 	.db	1
      003345 09                    3665 	.db	9
      003346 00 09                 3666 	.dw	7+Sstm8s_tim2$TIM2_GetCounter$357-Sstm8s_tim2$TIM2_GetCounter$356
      003348 00                    3667 	.db	0
      003349 01                    3668 	.uleb128	1
      00334A 01                    3669 	.db	1
      00334B 00                    3670 	.db	0
      00334C 05                    3671 	.uleb128	5
      00334D 02                    3672 	.db	2
      00334E 00 00 AA 83           3673 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$359)
      003352 03                    3674 	.db	3
      003353 98 08                 3675 	.sleb128	1048
      003355 01                    3676 	.db	1
      003356 09                    3677 	.db	9
      003357 00 0C                 3678 	.dw	Sstm8s_tim2$TIM2_GetPrescaler$361-Sstm8s_tim2$TIM2_GetPrescaler$359
      003359 03                    3679 	.db	3
      00335A 03                    3680 	.sleb128	3
      00335B 01                    3681 	.db	1
      00335C 09                    3682 	.db	9
      00335D 00 04                 3683 	.dw	Sstm8s_tim2$TIM2_GetPrescaler$362-Sstm8s_tim2$TIM2_GetPrescaler$361
      00335F 03                    3684 	.db	3
      003360 01                    3685 	.sleb128	1
      003361 01                    3686 	.db	1
      003362 09                    3687 	.db	9
      003363 00 07                 3688 	.dw	7+Sstm8s_tim2$TIM2_GetPrescaler$363-Sstm8s_tim2$TIM2_GetPrescaler$362
      003365 00                    3689 	.db	0
      003366 01                    3690 	.uleb128	1
      003367 01                    3691 	.db	1
      003368 00                    3692 	.db	0
      003369 05                    3693 	.uleb128	5
      00336A 02                    3694 	.db	2
      00336B 00 00 AA 9A           3695 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$365)
      00336F 03                    3696 	.db	3
      003370 AB 08                 3697 	.sleb128	1067
      003372 01                    3698 	.db	1
      003373 09                    3699 	.db	9
      003374 00 0E                 3700 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$367-Sstm8s_tim2$TIM2_GetFlagStatus$365
      003376 03                    3701 	.db	3
      003377 08                    3702 	.sleb128	8
      003378 01                    3703 	.db	1
      003379 09                    3704 	.db	9
      00337A 00 0C                 3705 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$368-Sstm8s_tim2$TIM2_GetFlagStatus$367
      00337C 03                    3706 	.db	3
      00337D 01                    3707 	.sleb128	1
      00337E 01                    3708 	.db	1
      00337F 09                    3709 	.db	9
      003380 00 06                 3710 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$369-Sstm8s_tim2$TIM2_GetFlagStatus$368
      003382 03                    3711 	.db	3
      003383 02                    3712 	.sleb128	2
      003384 01                    3713 	.db	1
      003385 09                    3714 	.db	9
      003386 00 0B                 3715 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$370-Sstm8s_tim2$TIM2_GetFlagStatus$369
      003388 03                    3716 	.db	3
      003389 02                    3717 	.sleb128	2
      00338A 01                    3718 	.db	1
      00338B 09                    3719 	.db	9
      00338C 00 04                 3720 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$371-Sstm8s_tim2$TIM2_GetFlagStatus$370
      00338E 03                    3721 	.db	3
      00338F 04                    3722 	.sleb128	4
      003390 01                    3723 	.db	1
      003391 09                    3724 	.db	9
      003392 00 01                 3725 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$372-Sstm8s_tim2$TIM2_GetFlagStatus$371
      003394 03                    3726 	.db	3
      003395 02                    3727 	.sleb128	2
      003396 01                    3728 	.db	1
      003397 09                    3729 	.db	9
      003398 00 00                 3730 	.dw	Sstm8s_tim2$TIM2_GetFlagStatus$373-Sstm8s_tim2$TIM2_GetFlagStatus$372
      00339A 03                    3731 	.db	3
      00339B 01                    3732 	.sleb128	1
      00339C 01                    3733 	.db	1
      00339D 09                    3734 	.db	9
      00339E 00 09                 3735 	.dw	7+Sstm8s_tim2$TIM2_GetFlagStatus$374-Sstm8s_tim2$TIM2_GetFlagStatus$373
      0033A0 00                    3736 	.db	0
      0033A1 01                    3737 	.uleb128	1
      0033A2 01                    3738 	.db	1
      0033A3 00                    3739 	.db	0
      0033A4 05                    3740 	.uleb128	5
      0033A5 02                    3741 	.db	2
      0033A6 00 00 AA D3           3742 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$376)
      0033AA 03                    3743 	.db	3
      0033AB CE 08                 3744 	.sleb128	1102
      0033AD 01                    3745 	.db	1
      0033AE 09                    3746 	.db	9
      0033AF 00 0E                 3747 	.dw	Sstm8s_tim2$TIM2_ClearFlag$378-Sstm8s_tim2$TIM2_ClearFlag$376
      0033B1 03                    3748 	.db	3
      0033B2 06                    3749 	.sleb128	6
      0033B3 01                    3750 	.db	1
      0033B4 09                    3751 	.db	9
      0033B5 00 07                 3752 	.dw	Sstm8s_tim2$TIM2_ClearFlag$379-Sstm8s_tim2$TIM2_ClearFlag$378
      0033B7 03                    3753 	.db	3
      0033B8 02                    3754 	.sleb128	2
      0033B9 01                    3755 	.db	1
      0033BA 09                    3756 	.db	9
      0033BB 00 09                 3757 	.dw	Sstm8s_tim2$TIM2_ClearFlag$380-Sstm8s_tim2$TIM2_ClearFlag$379
      0033BD 03                    3758 	.db	3
      0033BE 01                    3759 	.sleb128	1
      0033BF 01                    3760 	.db	1
      0033C0 09                    3761 	.db	9
      0033C1 00 09                 3762 	.dw	7+Sstm8s_tim2$TIM2_ClearFlag$381-Sstm8s_tim2$TIM2_ClearFlag$380
      0033C3 00                    3763 	.db	0
      0033C4 01                    3764 	.uleb128	1
      0033C5 01                    3765 	.db	1
      0033C6 00                    3766 	.db	0
      0033C7 05                    3767 	.uleb128	5
      0033C8 02                    3768 	.db	2
      0033C9 00 00 AA FA           3769 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$383)
      0033CD 03                    3770 	.db	3
      0033CE E3 08                 3771 	.sleb128	1123
      0033D0 01                    3772 	.db	1
      0033D1 09                    3773 	.db	9
      0033D2 00 0D                 3774 	.dw	Sstm8s_tim2$TIM2_GetITStatus$385-Sstm8s_tim2$TIM2_GetITStatus$383
      0033D4 03                    3775 	.db	3
      0033D5 08                    3776 	.sleb128	8
      0033D6 01                    3777 	.db	1
      0033D7 09                    3778 	.db	9
      0033D8 00 08                 3779 	.dw	Sstm8s_tim2$TIM2_GetITStatus$386-Sstm8s_tim2$TIM2_GetITStatus$385
      0033DA 03                    3780 	.db	3
      0033DB 02                    3781 	.sleb128	2
      0033DC 01                    3782 	.db	1
      0033DD 09                    3783 	.db	9
      0033DE 00 06                 3784 	.dw	Sstm8s_tim2$TIM2_GetITStatus$387-Sstm8s_tim2$TIM2_GetITStatus$386
      0033E0 03                    3785 	.db	3
      0033E1 02                    3786 	.sleb128	2
      0033E2 01                    3787 	.db	1
      0033E3 09                    3788 	.db	9
      0033E4 00 07                 3789 	.dw	Sstm8s_tim2$TIM2_GetITStatus$388-Sstm8s_tim2$TIM2_GetITStatus$387
      0033E6 03                    3790 	.db	3
      0033E7 02                    3791 	.sleb128	2
      0033E8 01                    3792 	.db	1
      0033E9 09                    3793 	.db	9
      0033EA 00 04                 3794 	.dw	Sstm8s_tim2$TIM2_GetITStatus$389-Sstm8s_tim2$TIM2_GetITStatus$388
      0033EC 03                    3795 	.db	3
      0033ED 04                    3796 	.sleb128	4
      0033EE 01                    3797 	.db	1
      0033EF 09                    3798 	.db	9
      0033F0 00 01                 3799 	.dw	Sstm8s_tim2$TIM2_GetITStatus$390-Sstm8s_tim2$TIM2_GetITStatus$389
      0033F2 03                    3800 	.db	3
      0033F3 02                    3801 	.sleb128	2
      0033F4 01                    3802 	.db	1
      0033F5 09                    3803 	.db	9
      0033F6 00 00                 3804 	.dw	Sstm8s_tim2$TIM2_GetITStatus$391-Sstm8s_tim2$TIM2_GetITStatus$390
      0033F8 03                    3805 	.db	3
      0033F9 01                    3806 	.sleb128	1
      0033FA 01                    3807 	.db	1
      0033FB 09                    3808 	.db	9
      0033FC 00 09                 3809 	.dw	7+Sstm8s_tim2$TIM2_GetITStatus$392-Sstm8s_tim2$TIM2_GetITStatus$391
      0033FE 00                    3810 	.db	0
      0033FF 01                    3811 	.uleb128	1
      003400 01                    3812 	.db	1
      003401 00                    3813 	.db	0
      003402 05                    3814 	.uleb128	5
      003403 02                    3815 	.db	2
      003404 00 00 AB 2A           3816 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$394)
      003408 03                    3817 	.db	3
      003409 84 09                 3818 	.sleb128	1156
      00340B 01                    3819 	.db	1
      00340C 09                    3820 	.db	9
      00340D 00 0C                 3821 	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$396-Sstm8s_tim2$TIM2_ClearITPendingBit$394
      00340F 03                    3822 	.db	3
      003410 06                    3823 	.sleb128	6
      003411 01                    3824 	.db	1
      003412 09                    3825 	.db	9
      003413 00 07                 3826 	.dw	Sstm8s_tim2$TIM2_ClearITPendingBit$397-Sstm8s_tim2$TIM2_ClearITPendingBit$396
      003415 03                    3827 	.db	3
      003416 01                    3828 	.sleb128	1
      003417 01                    3829 	.db	1
      003418 09                    3830 	.db	9
      003419 00 07                 3831 	.dw	7+Sstm8s_tim2$TIM2_ClearITPendingBit$398-Sstm8s_tim2$TIM2_ClearITPendingBit$397
      00341B 00                    3832 	.db	0
      00341C 01                    3833 	.uleb128	1
      00341D 01                    3834 	.db	1
      00341E 00                    3835 	.db	0
      00341F 05                    3836 	.uleb128	5
      003420 02                    3837 	.db	2
      003421 00 00 AB 44           3838 	.dw	0,(Sstm8s_tim2$TI1_Config$400)
      003425 03                    3839 	.db	3
      003426 9D 09                 3840 	.sleb128	1181
      003428 01                    3841 	.db	1
      003429 09                    3842 	.db	9
      00342A 00 0D                 3843 	.dw	Sstm8s_tim2$TI1_Config$402-Sstm8s_tim2$TI1_Config$400
      00342C 03                    3844 	.db	3
      00342D 05                    3845 	.sleb128	5
      00342E 01                    3846 	.db	1
      00342F 09                    3847 	.db	9
      003430 00 04                 3848 	.dw	Sstm8s_tim2$TI1_Config$403-Sstm8s_tim2$TI1_Config$402
      003432 03                    3849 	.db	3
      003433 03                    3850 	.sleb128	3
      003434 01                    3851 	.db	1
      003435 09                    3852 	.db	9
      003436 00 08                 3853 	.dw	Sstm8s_tim2$TI1_Config$404-Sstm8s_tim2$TI1_Config$403
      003438 03                    3854 	.db	3
      003439 01                    3855 	.sleb128	1
      00343A 01                    3856 	.db	1
      00343B 09                    3857 	.db	9
      00343C 00 0D                 3858 	.dw	Sstm8s_tim2$TI1_Config$405-Sstm8s_tim2$TI1_Config$404
      00343E 03                    3859 	.db	3
      00343F 03                    3860 	.sleb128	3
      003440 01                    3861 	.db	1
      003441 09                    3862 	.db	9
      003442 00 04                 3863 	.dw	Sstm8s_tim2$TI1_Config$406-Sstm8s_tim2$TI1_Config$405
      003444 03                    3864 	.db	3
      003445 02                    3865 	.sleb128	2
      003446 01                    3866 	.db	1
      003447 09                    3867 	.db	9
      003448 00 09                 3868 	.dw	Sstm8s_tim2$TI1_Config$407-Sstm8s_tim2$TI1_Config$406
      00344A 03                    3869 	.db	3
      00344B 04                    3870 	.sleb128	4
      00344C 01                    3871 	.db	1
      00344D 09                    3872 	.db	9
      00344E 00 07                 3873 	.dw	Sstm8s_tim2$TI1_Config$408-Sstm8s_tim2$TI1_Config$407
      003450 03                    3874 	.db	3
      003451 03                    3875 	.sleb128	3
      003452 01                    3876 	.db	1
      003453 09                    3877 	.db	9
      003454 00 04                 3878 	.dw	Sstm8s_tim2$TI1_Config$409-Sstm8s_tim2$TI1_Config$408
      003456 03                    3879 	.db	3
      003457 01                    3880 	.sleb128	1
      003458 01                    3881 	.db	1
      003459 09                    3882 	.db	9
      00345A 00 08                 3883 	.dw	7+Sstm8s_tim2$TI1_Config$410-Sstm8s_tim2$TI1_Config$409
      00345C 00                    3884 	.db	0
      00345D 01                    3885 	.uleb128	1
      00345E 01                    3886 	.db	1
      00345F 00                    3887 	.db	0
      003460 05                    3888 	.uleb128	5
      003461 02                    3889 	.db	2
      003462 00 00 AB 8A           3890 	.dw	0,(Sstm8s_tim2$TI2_Config$412)
      003466 03                    3891 	.db	3
      003467 C5 09                 3892 	.sleb128	1221
      003469 01                    3893 	.db	1
      00346A 09                    3894 	.db	9
      00346B 00 0D                 3895 	.dw	Sstm8s_tim2$TI2_Config$414-Sstm8s_tim2$TI2_Config$412
      00346D 03                    3896 	.db	3
      00346E 05                    3897 	.sleb128	5
      00346F 01                    3898 	.db	1
      003470 09                    3899 	.db	9
      003471 00 07                 3900 	.dw	Sstm8s_tim2$TI2_Config$415-Sstm8s_tim2$TI2_Config$414
      003473 03                    3901 	.db	3
      003474 03                    3902 	.sleb128	3
      003475 01                    3903 	.db	1
      003476 09                    3904 	.db	9
      003477 00 08                 3905 	.dw	Sstm8s_tim2$TI2_Config$416-Sstm8s_tim2$TI2_Config$415
      003479 03                    3906 	.db	3
      00347A 01                    3907 	.sleb128	1
      00347B 01                    3908 	.db	1
      00347C 09                    3909 	.db	9
      00347D 00 0D                 3910 	.dw	Sstm8s_tim2$TI2_Config$417-Sstm8s_tim2$TI2_Config$416
      00347F 03                    3911 	.db	3
      003480 04                    3912 	.sleb128	4
      003481 01                    3913 	.db	1
      003482 09                    3914 	.db	9
      003483 00 04                 3915 	.dw	Sstm8s_tim2$TI2_Config$418-Sstm8s_tim2$TI2_Config$417
      003485 03                    3916 	.db	3
      003486 02                    3917 	.sleb128	2
      003487 01                    3918 	.db	1
      003488 09                    3919 	.db	9
      003489 00 09                 3920 	.dw	Sstm8s_tim2$TI2_Config$419-Sstm8s_tim2$TI2_Config$418
      00348B 03                    3921 	.db	3
      00348C 04                    3922 	.sleb128	4
      00348D 01                    3923 	.db	1
      00348E 09                    3924 	.db	9
      00348F 00 07                 3925 	.dw	Sstm8s_tim2$TI2_Config$420-Sstm8s_tim2$TI2_Config$419
      003491 03                    3926 	.db	3
      003492 04                    3927 	.sleb128	4
      003493 01                    3928 	.db	1
      003494 09                    3929 	.db	9
      003495 00 07                 3930 	.dw	Sstm8s_tim2$TI2_Config$421-Sstm8s_tim2$TI2_Config$420
      003497 03                    3931 	.db	3
      003498 01                    3932 	.sleb128	1
      003499 01                    3933 	.db	1
      00349A 09                    3934 	.db	9
      00349B 00 08                 3935 	.dw	7+Sstm8s_tim2$TI2_Config$422-Sstm8s_tim2$TI2_Config$421
      00349D 00                    3936 	.db	0
      00349E 01                    3937 	.uleb128	1
      00349F 01                    3938 	.db	1
      0034A0 00                    3939 	.db	0
      0034A1 05                    3940 	.uleb128	5
      0034A2 02                    3941 	.db	2
      0034A3 00 00 AB D6           3942 	.dw	0,(Sstm8s_tim2$TI3_Config$424)
      0034A7 03                    3943 	.db	3
      0034A8 ED 09                 3944 	.sleb128	1261
      0034AA 01                    3945 	.db	1
      0034AB 09                    3946 	.db	9
      0034AC 00 0D                 3947 	.dw	Sstm8s_tim2$TI3_Config$426-Sstm8s_tim2$TI3_Config$424
      0034AE 03                    3948 	.db	3
      0034AF 04                    3949 	.sleb128	4
      0034B0 01                    3950 	.db	1
      0034B1 09                    3951 	.db	9
      0034B2 00 04                 3952 	.dw	Sstm8s_tim2$TI3_Config$427-Sstm8s_tim2$TI3_Config$426
      0034B4 03                    3953 	.db	3
      0034B5 03                    3954 	.sleb128	3
      0034B6 01                    3955 	.db	1
      0034B7 09                    3956 	.db	9
      0034B8 00 08                 3957 	.dw	Sstm8s_tim2$TI3_Config$428-Sstm8s_tim2$TI3_Config$427
      0034BA 03                    3958 	.db	3
      0034BB 01                    3959 	.sleb128	1
      0034BC 01                    3960 	.db	1
      0034BD 09                    3961 	.db	9
      0034BE 00 0D                 3962 	.dw	Sstm8s_tim2$TI3_Config$429-Sstm8s_tim2$TI3_Config$428
      0034C0 03                    3963 	.db	3
      0034C1 04                    3964 	.sleb128	4
      0034C2 01                    3965 	.db	1
      0034C3 09                    3966 	.db	9
      0034C4 00 04                 3967 	.dw	Sstm8s_tim2$TI3_Config$430-Sstm8s_tim2$TI3_Config$429
      0034C6 03                    3968 	.db	3
      0034C7 02                    3969 	.sleb128	2
      0034C8 01                    3970 	.db	1
      0034C9 09                    3971 	.db	9
      0034CA 00 09                 3972 	.dw	Sstm8s_tim2$TI3_Config$431-Sstm8s_tim2$TI3_Config$430
      0034CC 03                    3973 	.db	3
      0034CD 04                    3974 	.sleb128	4
      0034CE 01                    3975 	.db	1
      0034CF 09                    3976 	.db	9
      0034D0 00 07                 3977 	.dw	Sstm8s_tim2$TI3_Config$432-Sstm8s_tim2$TI3_Config$431
      0034D2 03                    3978 	.db	3
      0034D3 03                    3979 	.sleb128	3
      0034D4 01                    3980 	.db	1
      0034D5 09                    3981 	.db	9
      0034D6 00 04                 3982 	.dw	Sstm8s_tim2$TI3_Config$433-Sstm8s_tim2$TI3_Config$432
      0034D8 03                    3983 	.db	3
      0034D9 01                    3984 	.sleb128	1
      0034DA 01                    3985 	.db	1
      0034DB 09                    3986 	.db	9
      0034DC 00 08                 3987 	.dw	7+Sstm8s_tim2$TI3_Config$434-Sstm8s_tim2$TI3_Config$433
      0034DE 00                    3988 	.db	0
      0034DF 01                    3989 	.uleb128	1
      0034E0 01                    3990 	.db	1
      0034E1                       3991 Ldebug_line_end:
                                   3992 
                                   3993 	.area .debug_loc (NOLOAD)
      000BE0                       3994 Ldebug_loc_start:
      000BE0 00 00 AB E2           3995 	.dw	0,(Sstm8s_tim2$TI3_Config$425)
      000BE4 00 00 AC 1C           3996 	.dw	0,(Sstm8s_tim2$TI3_Config$435)
      000BE8 00 02                 3997 	.dw	2
      000BEA 8F                    3998 	.db	143
      000BEB 01                    3999 	.sleb128	1
      000BEC 00 00 00 00           4000 	.dw	0,0
      000BF0 00 00 00 00           4001 	.dw	0,0
      000BF4 00 00 AB 96           4002 	.dw	0,(Sstm8s_tim2$TI2_Config$413)
      000BF8 00 00 AB D6           4003 	.dw	0,(Sstm8s_tim2$TI2_Config$423)
      000BFC 00 02                 4004 	.dw	2
      000BFE 8F                    4005 	.db	143
      000BFF 01                    4006 	.sleb128	1
      000C00 00 00 00 00           4007 	.dw	0,0
      000C04 00 00 00 00           4008 	.dw	0,0
      000C08 00 00 AB 50           4009 	.dw	0,(Sstm8s_tim2$TI1_Config$401)
      000C0C 00 00 AB 8A           4010 	.dw	0,(Sstm8s_tim2$TI1_Config$411)
      000C10 00 02                 4011 	.dw	2
      000C12 8F                    4012 	.db	143
      000C13 01                    4013 	.sleb128	1
      000C14 00 00 00 00           4014 	.dw	0,0
      000C18 00 00 00 00           4015 	.dw	0,0
      000C1C 00 00 AB 36           4016 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$395)
      000C20 00 00 AB 44           4017 	.dw	0,(Sstm8s_tim2$TIM2_ClearITPendingBit$399)
      000C24 00 02                 4018 	.dw	2
      000C26 8F                    4019 	.db	143
      000C27 01                    4020 	.sleb128	1
      000C28 00 00 00 00           4021 	.dw	0,0
      000C2C 00 00 00 00           4022 	.dw	0,0
      000C30 00 00 AB 06           4023 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$384)
      000C34 00 00 AB 2A           4024 	.dw	0,(Sstm8s_tim2$TIM2_GetITStatus$393)
      000C38 00 02                 4025 	.dw	2
      000C3A 8F                    4026 	.db	143
      000C3B 01                    4027 	.sleb128	1
      000C3C 00 00 00 00           4028 	.dw	0,0
      000C40 00 00 00 00           4029 	.dw	0,0
      000C44 00 00 AA DF           4030 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$377)
      000C48 00 00 AA FA           4031 	.dw	0,(Sstm8s_tim2$TIM2_ClearFlag$382)
      000C4C 00 02                 4032 	.dw	2
      000C4E 8F                    4033 	.db	143
      000C4F 01                    4034 	.sleb128	1
      000C50 00 00 00 00           4035 	.dw	0,0
      000C54 00 00 00 00           4036 	.dw	0,0
      000C58 00 00 AA A6           4037 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$366)
      000C5C 00 00 AA D3           4038 	.dw	0,(Sstm8s_tim2$TIM2_GetFlagStatus$375)
      000C60 00 02                 4039 	.dw	2
      000C62 8F                    4040 	.db	143
      000C63 01                    4041 	.sleb128	1
      000C64 00 00 00 00           4042 	.dw	0,0
      000C68 00 00 00 00           4043 	.dw	0,0
      000C6C 00 00 AA 8F           4044 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$360)
      000C70 00 00 AA 9A           4045 	.dw	0,(Sstm8s_tim2$TIM2_GetPrescaler$364)
      000C74 00 02                 4046 	.dw	2
      000C76 8F                    4047 	.db	143
      000C77 01                    4048 	.sleb128	1
      000C78 00 00 00 00           4049 	.dw	0,0
      000C7C 00 00 00 00           4050 	.dw	0,0
      000C80 00 00 AA 61           4051 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$353)
      000C84 00 00 AA 83           4052 	.dw	0,(Sstm8s_tim2$TIM2_GetCounter$358)
      000C88 00 02                 4053 	.dw	2
      000C8A 8F                    4054 	.db	143
      000C8B 01                    4055 	.sleb128	1
      000C8C 00 00 00 00           4056 	.dw	0,0
      000C90 00 00 00 00           4057 	.dw	0,0
      000C94 00 00 AA 31           4058 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$343)
      000C98 00 00 AA 55           4059 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture3$351)
      000C9C 00 02                 4060 	.dw	2
      000C9E 8F                    4061 	.db	143
      000C9F 01                    4062 	.sleb128	1
      000CA0 00 00 00 00           4063 	.dw	0,0
      000CA4 00 00 00 00           4064 	.dw	0,0
      000CA8 00 00 AA 01           4065 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$333)
      000CAC 00 00 AA 25           4066 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture2$341)
      000CB0 00 02                 4067 	.dw	2
      000CB2 8F                    4068 	.db	143
      000CB3 01                    4069 	.sleb128	1
      000CB4 00 00 00 00           4070 	.dw	0,0
      000CB8 00 00 00 00           4071 	.dw	0,0
      000CBC 00 00 A9 D1           4072 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$323)
      000CC0 00 00 A9 F5           4073 	.dw	0,(Sstm8s_tim2$TIM2_GetCapture1$331)
      000CC4 00 02                 4074 	.dw	2
      000CC6 8F                    4075 	.db	143
      000CC7 01                    4076 	.sleb128	1
      000CC8 00 00 00 00           4077 	.dw	0,0
      000CCC 00 00 00 00           4078 	.dw	0,0
      000CD0 00 00 A9 B2           4079 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$316)
      000CD4 00 00 A9 C5           4080 	.dw	0,(Sstm8s_tim2$TIM2_SetIC3Prescaler$321)
      000CD8 00 02                 4081 	.dw	2
      000CDA 8F                    4082 	.db	143
      000CDB 01                    4083 	.sleb128	1
      000CDC 00 00 00 00           4084 	.dw	0,0
      000CE0 00 00 00 00           4085 	.dw	0,0
      000CE4 00 00 A9 93           4086 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$309)
      000CE8 00 00 A9 A6           4087 	.dw	0,(Sstm8s_tim2$TIM2_SetIC2Prescaler$314)
      000CEC 00 02                 4088 	.dw	2
      000CEE 8F                    4089 	.db	143
      000CEF 01                    4090 	.sleb128	1
      000CF0 00 00 00 00           4091 	.dw	0,0
      000CF4 00 00 00 00           4092 	.dw	0,0
      000CF8 00 00 A9 74           4093 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$302)
      000CFC 00 00 A9 87           4094 	.dw	0,(Sstm8s_tim2$TIM2_SetIC1Prescaler$307)
      000D00 00 02                 4095 	.dw	2
      000D02 8F                    4096 	.db	143
      000D03 01                    4097 	.sleb128	1
      000D04 00 00 00 00           4098 	.dw	0,0
      000D08 00 00 00 00           4099 	.dw	0,0
      000D0C 00 00 A9 4F           4100 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$295)
      000D10 00 00 A9 68           4101 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare3$300)
      000D14 00 02                 4102 	.dw	2
      000D16 8F                    4103 	.db	143
      000D17 01                    4104 	.sleb128	1
      000D18 00 00 00 00           4105 	.dw	0,0
      000D1C 00 00 00 00           4106 	.dw	0,0
      000D20 00 00 A9 2A           4107 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$288)
      000D24 00 00 A9 43           4108 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare2$293)
      000D28 00 02                 4109 	.dw	2
      000D2A 8F                    4110 	.db	143
      000D2B 01                    4111 	.sleb128	1
      000D2C 00 00 00 00           4112 	.dw	0,0
      000D30 00 00 00 00           4113 	.dw	0,0
      000D34 00 00 A9 05           4114 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$281)
      000D38 00 00 A9 1E           4115 	.dw	0,(Sstm8s_tim2$TIM2_SetCompare1$286)
      000D3C 00 02                 4116 	.dw	2
      000D3E 8F                    4117 	.db	143
      000D3F 01                    4118 	.sleb128	1
      000D40 00 00 00 00           4119 	.dw	0,0
      000D44 00 00 00 00           4120 	.dw	0,0
      000D48 00 00 A8 E0           4121 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$274)
      000D4C 00 00 A8 F9           4122 	.dw	0,(Sstm8s_tim2$TIM2_SetAutoreload$279)
      000D50 00 02                 4123 	.dw	2
      000D52 8F                    4124 	.db	143
      000D53 01                    4125 	.sleb128	1
      000D54 00 00 00 00           4126 	.dw	0,0
      000D58 00 00 00 00           4127 	.dw	0,0
      000D5C 00 00 A8 BB           4128 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$267)
      000D60 00 00 A8 D4           4129 	.dw	0,(Sstm8s_tim2$TIM2_SetCounter$272)
      000D64 00 02                 4130 	.dw	2
      000D66 8F                    4131 	.db	143
      000D67 01                    4132 	.sleb128	1
      000D68 00 00 00 00           4133 	.dw	0,0
      000D6C 00 00 00 00           4134 	.dw	0,0
      000D70 00 00 A8 67           4135 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$251)
      000D74 00 00 A8 AF           4136 	.dw	0,(Sstm8s_tim2$TIM2_SelectOCxM$265)
      000D78 00 02                 4137 	.dw	2
      000D7A 8F                    4138 	.db	143
      000D7B 01                    4139 	.sleb128	1
      000D7C 00 00 00 00           4140 	.dw	0,0
      000D80 00 00 00 00           4141 	.dw	0,0
      000D84 00 00 A8 16           4142 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$235)
      000D88 00 00 A8 5B           4143 	.dw	0,(Sstm8s_tim2$TIM2_CCxCmd$249)
      000D8C 00 02                 4144 	.dw	2
      000D8E 8F                    4145 	.db	143
      000D8F 01                    4146 	.sleb128	1
      000D90 00 00 00 00           4147 	.dw	0,0
      000D94 00 00 00 00           4148 	.dw	0,0
      000D98 00 00 A7 EF           4149 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$227)
      000D9C 00 00 A8 0A           4150 	.dw	0,(Sstm8s_tim2$TIM2_OC3PolarityConfig$233)
      000DA0 00 02                 4151 	.dw	2
      000DA2 8F                    4152 	.db	143
      000DA3 01                    4153 	.sleb128	1
      000DA4 00 00 00 00           4154 	.dw	0,0
      000DA8 00 00 00 00           4155 	.dw	0,0
      000DAC 00 00 A7 C8           4156 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$219)
      000DB0 00 00 A7 E3           4157 	.dw	0,(Sstm8s_tim2$TIM2_OC2PolarityConfig$225)
      000DB4 00 02                 4158 	.dw	2
      000DB6 8F                    4159 	.db	143
      000DB7 01                    4160 	.sleb128	1
      000DB8 00 00 00 00           4161 	.dw	0,0
      000DBC 00 00 00 00           4162 	.dw	0,0
      000DC0 00 00 A7 A1           4163 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$211)
      000DC4 00 00 A7 BC           4164 	.dw	0,(Sstm8s_tim2$TIM2_OC1PolarityConfig$217)
      000DC8 00 02                 4165 	.dw	2
      000DCA 8F                    4166 	.db	143
      000DCB 01                    4167 	.sleb128	1
      000DCC 00 00 00 00           4168 	.dw	0,0
      000DD0 00 00 00 00           4169 	.dw	0,0
      000DD4 00 00 A7 88           4170 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$205)
      000DD8 00 00 A7 95           4171 	.dw	0,(Sstm8s_tim2$TIM2_GenerateEvent$209)
      000DDC 00 02                 4172 	.dw	2
      000DDE 8F                    4173 	.db	143
      000DDF 01                    4174 	.sleb128	1
      000DE0 00 00 00 00           4175 	.dw	0,0
      000DE4 00 00 00 00           4176 	.dw	0,0
      000DE8 00 00 A7 61           4177 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$197)
      000DEC 00 00 A7 7C           4178 	.dw	0,(Sstm8s_tim2$TIM2_OC3PreloadConfig$203)
      000DF0 00 02                 4179 	.dw	2
      000DF2 8F                    4180 	.db	143
      000DF3 01                    4181 	.sleb128	1
      000DF4 00 00 00 00           4182 	.dw	0,0
      000DF8 00 00 00 00           4183 	.dw	0,0
      000DFC 00 00 A7 3A           4184 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$189)
      000E00 00 00 A7 55           4185 	.dw	0,(Sstm8s_tim2$TIM2_OC2PreloadConfig$195)
      000E04 00 02                 4186 	.dw	2
      000E06 8F                    4187 	.db	143
      000E07 01                    4188 	.sleb128	1
      000E08 00 00 00 00           4189 	.dw	0,0
      000E0C 00 00 00 00           4190 	.dw	0,0
      000E10 00 00 A7 13           4191 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$181)
      000E14 00 00 A7 2E           4192 	.dw	0,(Sstm8s_tim2$TIM2_OC1PreloadConfig$187)
      000E18 00 02                 4193 	.dw	2
      000E1A 8F                    4194 	.db	143
      000E1B 01                    4195 	.sleb128	1
      000E1C 00 00 00 00           4196 	.dw	0,0
      000E20 00 00 00 00           4197 	.dw	0,0
      000E24 00 00 A6 F2           4198 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$173)
      000E28 00 00 A7 07           4199 	.dw	0,(Sstm8s_tim2$TIM2_ARRPreloadConfig$179)
      000E2C 00 02                 4200 	.dw	2
      000E2E 8F                    4201 	.db	143
      000E2F 01                    4202 	.sleb128	1
      000E30 00 00 00 00           4203 	.dw	0,0
      000E34 00 00 00 00           4204 	.dw	0,0
      000E38 00 00 A6 D3           4205 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$166)
      000E3C 00 00 A6 E6           4206 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC3Config$171)
      000E40 00 02                 4207 	.dw	2
      000E42 8F                    4208 	.db	143
      000E43 01                    4209 	.sleb128	1
      000E44 00 00 00 00           4210 	.dw	0,0
      000E48 00 00 00 00           4211 	.dw	0,0
      000E4C 00 00 A6 B4           4212 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$159)
      000E50 00 00 A6 C7           4213 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC2Config$164)
      000E54 00 02                 4214 	.dw	2
      000E56 8F                    4215 	.db	143
      000E57 01                    4216 	.sleb128	1
      000E58 00 00 00 00           4217 	.dw	0,0
      000E5C 00 00 00 00           4218 	.dw	0,0
      000E60 00 00 A6 95           4219 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$152)
      000E64 00 00 A6 A8           4220 	.dw	0,(Sstm8s_tim2$TIM2_ForcedOC1Config$157)
      000E68 00 02                 4221 	.dw	2
      000E6A 8F                    4222 	.db	143
      000E6B 01                    4223 	.sleb128	1
      000E6C 00 00 00 00           4224 	.dw	0,0
      000E70 00 00 00 00           4225 	.dw	0,0
      000E74 00 00 A6 76           4226 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$145)
      000E78 00 00 A6 89           4227 	.dw	0,(Sstm8s_tim2$TIM2_PrescalerConfig$150)
      000E7C 00 02                 4228 	.dw	2
      000E7E 8F                    4229 	.db	143
      000E7F 01                    4230 	.sleb128	1
      000E80 00 00 00 00           4231 	.dw	0,0
      000E84 00 00 00 00           4232 	.dw	0,0
      000E88 00 00 A6 4F           4233 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$137)
      000E8C 00 00 A6 6A           4234 	.dw	0,(Sstm8s_tim2$TIM2_SelectOnePulseMode$143)
      000E90 00 02                 4235 	.dw	2
      000E92 8F                    4236 	.db	143
      000E93 01                    4237 	.sleb128	1
      000E94 00 00 00 00           4238 	.dw	0,0
      000E98 00 00 00 00           4239 	.dw	0,0
      000E9C 00 00 A6 28           4240 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$129)
      000EA0 00 00 A6 43           4241 	.dw	0,(Sstm8s_tim2$TIM2_UpdateRequestConfig$135)
      000EA4 00 02                 4242 	.dw	2
      000EA6 8F                    4243 	.db	143
      000EA7 01                    4244 	.sleb128	1
      000EA8 00 00 00 00           4245 	.dw	0,0
      000EAC 00 00 00 00           4246 	.dw	0,0
      000EB0 00 00 A6 01           4247 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$121)
      000EB4 00 00 A6 1C           4248 	.dw	0,(Sstm8s_tim2$TIM2_UpdateDisableConfig$127)
      000EB8 00 02                 4249 	.dw	2
      000EBA 8F                    4250 	.db	143
      000EBB 01                    4251 	.sleb128	1
      000EBC 00 00 00 00           4252 	.dw	0,0
      000EC0 00 00 00 00           4253 	.dw	0,0
      000EC4 00 00 A5 CD           4254 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$113)
      000EC8 00 00 A5 F5           4255 	.dw	0,(Sstm8s_tim2$TIM2_ITConfig$119)
      000ECC 00 02                 4256 	.dw	2
      000ECE 8F                    4257 	.db	143
      000ECF 01                    4258 	.sleb128	1
      000ED0 00 00 00 00           4259 	.dw	0,0
      000ED4 00 00 00 00           4260 	.dw	0,0
      000ED8 00 00 A5 AC           4261 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$105)
      000EDC 00 00 A5 C1           4262 	.dw	0,(Sstm8s_tim2$TIM2_Cmd$111)
      000EE0 00 02                 4263 	.dw	2
      000EE2 8F                    4264 	.db	143
      000EE3 01                    4265 	.sleb128	1
      000EE4 00 00 00 00           4266 	.dw	0,0
      000EE8 00 00 00 00           4267 	.dw	0,0
      000EEC 00 00 A5 1D           4268 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$85)
      000EF0 00 00 A5 A0           4269 	.dw	0,(Sstm8s_tim2$TIM2_PWMIConfig$103)
      000EF4 00 02                 4270 	.dw	2
      000EF6 8F                    4271 	.db	143
      000EF7 01                    4272 	.sleb128	1
      000EF8 00 00 00 00           4273 	.dw	0,0
      000EFC 00 00 00 00           4274 	.dw	0,0
      000F00 00 00 A4 BD           4275 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$72)
      000F04 00 00 A5 11           4276 	.dw	0,(Sstm8s_tim2$TIM2_ICInit$83)
      000F08 00 02                 4277 	.dw	2
      000F0A 8F                    4278 	.db	143
      000F0B 01                    4279 	.sleb128	1
      000F0C 00 00 00 00           4280 	.dw	0,0
      000F10 00 00 00 00           4281 	.dw	0,0
      000F14 00 00 A4 6D           4282 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$60)
      000F18 00 00 A4 B1           4283 	.dw	0,(Sstm8s_tim2$TIM2_OC3Init$70)
      000F1C 00 02                 4284 	.dw	2
      000F1E 8F                    4285 	.db	143
      000F1F 01                    4286 	.sleb128	1
      000F20 00 00 00 00           4287 	.dw	0,0
      000F24 00 00 00 00           4288 	.dw	0,0
      000F28 00 00 A4 1D           4289 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$48)
      000F2C 00 00 A4 61           4290 	.dw	0,(Sstm8s_tim2$TIM2_OC2Init$58)
      000F30 00 02                 4291 	.dw	2
      000F32 8F                    4292 	.db	143
      000F33 01                    4293 	.sleb128	1
      000F34 00 00 00 00           4294 	.dw	0,0
      000F38 00 00 00 00           4295 	.dw	0,0
      000F3C 00 00 A3 CD           4296 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$36)
      000F40 00 00 A4 11           4297 	.dw	0,(Sstm8s_tim2$TIM2_OC1Init$46)
      000F44 00 02                 4298 	.dw	2
      000F46 8F                    4299 	.db	143
      000F47 01                    4300 	.sleb128	1
      000F48 00 00 00 00           4301 	.dw	0,0
      000F4C 00 00 00 00           4302 	.dw	0,0
      000F50 00 00 A3 A2           4303 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$28)
      000F54 00 00 A3 C1           4304 	.dw	0,(Sstm8s_tim2$TIM2_TimeBaseInit$34)
      000F58 00 02                 4305 	.dw	2
      000F5A 8F                    4306 	.db	143
      000F5B 01                    4307 	.sleb128	1
      000F5C 00 00 00 00           4308 	.dw	0,0
      000F60 00 00 00 00           4309 	.dw	0,0
      000F64 00 00 A3 37           4310 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$1)
      000F68 00 00 A3 96           4311 	.dw	0,(Sstm8s_tim2$TIM2_DeInit$26)
      000F6C 00 02                 4312 	.dw	2
      000F6E 8F                    4313 	.db	143
      000F6F 01                    4314 	.sleb128	1
      000F70 00 00 00 00           4315 	.dw	0,0
      000F74 00 00 00 00           4316 	.dw	0,0
                                   4317 
                                   4318 	.area .debug_abbrev (NOLOAD)
      0003D3                       4319 Ldebug_abbrev:
      0003D3 0B                    4320 	.uleb128	11
      0003D4 34                    4321 	.uleb128	52
      0003D5 00                    4322 	.db	0
      0003D6 03                    4323 	.uleb128	3
      0003D7 08                    4324 	.uleb128	8
      0003D8 49                    4325 	.uleb128	73
      0003D9 13                    4326 	.uleb128	19
      0003DA 00                    4327 	.uleb128	0
      0003DB 00                    4328 	.uleb128	0
      0003DC 06                    4329 	.uleb128	6
      0003DD 0B                    4330 	.uleb128	11
      0003DE 00                    4331 	.db	0
      0003DF 00                    4332 	.uleb128	0
      0003E0 00                    4333 	.uleb128	0
      0003E1 09                    4334 	.uleb128	9
      0003E2 0B                    4335 	.uleb128	11
      0003E3 01                    4336 	.db	1
      0003E4 00                    4337 	.uleb128	0
      0003E5 00                    4338 	.uleb128	0
      0003E6 0C                    4339 	.uleb128	12
      0003E7 2E                    4340 	.uleb128	46
      0003E8 00                    4341 	.db	0
      0003E9 03                    4342 	.uleb128	3
      0003EA 08                    4343 	.uleb128	8
      0003EB 11                    4344 	.uleb128	17
      0003EC 01                    4345 	.uleb128	1
      0003ED 12                    4346 	.uleb128	18
      0003EE 01                    4347 	.uleb128	1
      0003EF 3F                    4348 	.uleb128	63
      0003F0 0C                    4349 	.uleb128	12
      0003F1 40                    4350 	.uleb128	64
      0003F2 06                    4351 	.uleb128	6
      0003F3 49                    4352 	.uleb128	73
      0003F4 13                    4353 	.uleb128	19
      0003F5 00                    4354 	.uleb128	0
      0003F6 00                    4355 	.uleb128	0
      0003F7 04                    4356 	.uleb128	4
      0003F8 05                    4357 	.uleb128	5
      0003F9 00                    4358 	.db	0
      0003FA 02                    4359 	.uleb128	2
      0003FB 0A                    4360 	.uleb128	10
      0003FC 03                    4361 	.uleb128	3
      0003FD 08                    4362 	.uleb128	8
      0003FE 49                    4363 	.uleb128	73
      0003FF 13                    4364 	.uleb128	19
      000400 00                    4365 	.uleb128	0
      000401 00                    4366 	.uleb128	0
      000402 03                    4367 	.uleb128	3
      000403 2E                    4368 	.uleb128	46
      000404 01                    4369 	.db	1
      000405 01                    4370 	.uleb128	1
      000406 13                    4371 	.uleb128	19
      000407 03                    4372 	.uleb128	3
      000408 08                    4373 	.uleb128	8
      000409 11                    4374 	.uleb128	17
      00040A 01                    4375 	.uleb128	1
      00040B 12                    4376 	.uleb128	18
      00040C 01                    4377 	.uleb128	1
      00040D 3F                    4378 	.uleb128	63
      00040E 0C                    4379 	.uleb128	12
      00040F 40                    4380 	.uleb128	64
      000410 06                    4381 	.uleb128	6
      000411 00                    4382 	.uleb128	0
      000412 00                    4383 	.uleb128	0
      000413 07                    4384 	.uleb128	7
      000414 34                    4385 	.uleb128	52
      000415 00                    4386 	.db	0
      000416 02                    4387 	.uleb128	2
      000417 0A                    4388 	.uleb128	10
      000418 03                    4389 	.uleb128	3
      000419 08                    4390 	.uleb128	8
      00041A 49                    4391 	.uleb128	73
      00041B 13                    4392 	.uleb128	19
      00041C 00                    4393 	.uleb128	0
      00041D 00                    4394 	.uleb128	0
      00041E 0A                    4395 	.uleb128	10
      00041F 2E                    4396 	.uleb128	46
      000420 01                    4397 	.db	1
      000421 01                    4398 	.uleb128	1
      000422 13                    4399 	.uleb128	19
      000423 03                    4400 	.uleb128	3
      000424 08                    4401 	.uleb128	8
      000425 11                    4402 	.uleb128	17
      000426 01                    4403 	.uleb128	1
      000427 12                    4404 	.uleb128	18
      000428 01                    4405 	.uleb128	1
      000429 3F                    4406 	.uleb128	63
      00042A 0C                    4407 	.uleb128	12
      00042B 40                    4408 	.uleb128	64
      00042C 06                    4409 	.uleb128	6
      00042D 49                    4410 	.uleb128	73
      00042E 13                    4411 	.uleb128	19
      00042F 00                    4412 	.uleb128	0
      000430 00                    4413 	.uleb128	0
      000431 08                    4414 	.uleb128	8
      000432 0B                    4415 	.uleb128	11
      000433 01                    4416 	.db	1
      000434 01                    4417 	.uleb128	1
      000435 13                    4418 	.uleb128	19
      000436 00                    4419 	.uleb128	0
      000437 00                    4420 	.uleb128	0
      000438 01                    4421 	.uleb128	1
      000439 11                    4422 	.uleb128	17
      00043A 01                    4423 	.db	1
      00043B 03                    4424 	.uleb128	3
      00043C 08                    4425 	.uleb128	8
      00043D 10                    4426 	.uleb128	16
      00043E 06                    4427 	.uleb128	6
      00043F 13                    4428 	.uleb128	19
      000440 0B                    4429 	.uleb128	11
      000441 25                    4430 	.uleb128	37
      000442 08                    4431 	.uleb128	8
      000443 00                    4432 	.uleb128	0
      000444 00                    4433 	.uleb128	0
      000445 02                    4434 	.uleb128	2
      000446 2E                    4435 	.uleb128	46
      000447 00                    4436 	.db	0
      000448 03                    4437 	.uleb128	3
      000449 08                    4438 	.uleb128	8
      00044A 11                    4439 	.uleb128	17
      00044B 01                    4440 	.uleb128	1
      00044C 12                    4441 	.uleb128	18
      00044D 01                    4442 	.uleb128	1
      00044E 3F                    4443 	.uleb128	63
      00044F 0C                    4444 	.uleb128	12
      000450 40                    4445 	.uleb128	64
      000451 06                    4446 	.uleb128	6
      000452 00                    4447 	.uleb128	0
      000453 00                    4448 	.uleb128	0
      000454 0D                    4449 	.uleb128	13
      000455 2E                    4450 	.uleb128	46
      000456 01                    4451 	.db	1
      000457 03                    4452 	.uleb128	3
      000458 08                    4453 	.uleb128	8
      000459 11                    4454 	.uleb128	17
      00045A 01                    4455 	.uleb128	1
      00045B 12                    4456 	.uleb128	18
      00045C 01                    4457 	.uleb128	1
      00045D 3F                    4458 	.uleb128	63
      00045E 0C                    4459 	.uleb128	12
      00045F 40                    4460 	.uleb128	64
      000460 06                    4461 	.uleb128	6
      000461 00                    4462 	.uleb128	0
      000462 00                    4463 	.uleb128	0
      000463 05                    4464 	.uleb128	5
      000464 24                    4465 	.uleb128	36
      000465 00                    4466 	.db	0
      000466 03                    4467 	.uleb128	3
      000467 08                    4468 	.uleb128	8
      000468 0B                    4469 	.uleb128	11
      000469 0B                    4470 	.uleb128	11
      00046A 3E                    4471 	.uleb128	62
      00046B 0B                    4472 	.uleb128	11
      00046C 00                    4473 	.uleb128	0
      00046D 00                    4474 	.uleb128	0
      00046E 00                    4475 	.uleb128	0
                                   4476 
                                   4477 	.area .debug_info (NOLOAD)
      003135 00 00 0E 40           4478 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003139                       4479 Ldebug_info_start:
      003139 00 02                 4480 	.dw	2
      00313B 00 00 03 D3           4481 	.dw	0,(Ldebug_abbrev)
      00313F 04                    4482 	.db	4
      003140 01                    4483 	.uleb128	1
      003141 53 74 64 50 65 72 69  4484 	.ascii "StdPeriphLib/src/stm8s_tim2.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69 6D 32 2E
             63
      00315E 00                    4485 	.db	0
      00315F 00 00 2A C9           4486 	.dw	0,(Ldebug_line_start+-4)
      003163 01                    4487 	.db	1
      003164 53 44 43 43 20 76 65  4488 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      00317C 00                    4489 	.db	0
      00317D 02                    4490 	.uleb128	2
      00317E 54 49 4D 32 5F 44 65  4491 	.ascii "TIM2_DeInit"
             49 6E 69 74
      003189 00                    4492 	.db	0
      00318A 00 00 A3 2B           4493 	.dw	0,(_TIM2_DeInit)
      00318E 00 00 A3 96           4494 	.dw	0,(XG$TIM2_DeInit$0$0+7)
      003192 01                    4495 	.db	1
      003193 00 00 0F 64           4496 	.dw	0,(Ldebug_loc_start+900)
      003197 03                    4497 	.uleb128	3
      003198 00 00 00 B2           4498 	.dw	0,178
      00319C 54 49 4D 32 5F 54 69  4499 	.ascii "TIM2_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      0031AD 00                    4500 	.db	0
      0031AE 00 00 A3 96           4501 	.dw	0,(_TIM2_TimeBaseInit)
      0031B2 00 00 A3 C1           4502 	.dw	0,(XG$TIM2_TimeBaseInit$0$0+7)
      0031B6 01                    4503 	.db	1
      0031B7 00 00 0F 50           4504 	.dw	0,(Ldebug_loc_start+880)
      0031BB 04                    4505 	.uleb128	4
      0031BC 02                    4506 	.db	2
      0031BD 91                    4507 	.db	145
      0031BE 04                    4508 	.sleb128	4
      0031BF 54 49 4D 32 5F 50 72  4509 	.ascii "TIM2_Prescaler"
             65 73 63 61 6C 65 72
      0031CD 00                    4510 	.db	0
      0031CE 00 00 00 B2           4511 	.dw	0,178
      0031D2 04                    4512 	.uleb128	4
      0031D3 02                    4513 	.db	2
      0031D4 91                    4514 	.db	145
      0031D5 05                    4515 	.sleb128	5
      0031D6 54 49 4D 32 5F 50 65  4516 	.ascii "TIM2_Period"
             72 69 6F 64
      0031E1 00                    4517 	.db	0
      0031E2 00 00 00 C3           4518 	.dw	0,195
      0031E6 00                    4519 	.uleb128	0
      0031E7 05                    4520 	.uleb128	5
      0031E8 75 6E 73 69 67 6E 65  4521 	.ascii "unsigned char"
             64 20 63 68 61 72
      0031F5 00                    4522 	.db	0
      0031F6 01                    4523 	.db	1
      0031F7 08                    4524 	.db	8
      0031F8 05                    4525 	.uleb128	5
      0031F9 75 6E 73 69 67 6E 65  4526 	.ascii "unsigned int"
             64 20 69 6E 74
      003205 00                    4527 	.db	0
      003206 02                    4528 	.db	2
      003207 07                    4529 	.db	7
      003208 03                    4530 	.uleb128	3
      003209 00 00 01 4B           4531 	.dw	0,331
      00320D 54 49 4D 32 5F 4F 43  4532 	.ascii "TIM2_OC1Init"
             31 49 6E 69 74
      003219 00                    4533 	.db	0
      00321A 00 00 A3 C1           4534 	.dw	0,(_TIM2_OC1Init)
      00321E 00 00 A4 11           4535 	.dw	0,(XG$TIM2_OC1Init$0$0+7)
      003222 01                    4536 	.db	1
      003223 00 00 0F 3C           4537 	.dw	0,(Ldebug_loc_start+860)
      003227 04                    4538 	.uleb128	4
      003228 02                    4539 	.db	2
      003229 91                    4540 	.db	145
      00322A 04                    4541 	.sleb128	4
      00322B 54 49 4D 32 5F 4F 43  4542 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      003236 00                    4543 	.db	0
      003237 00 00 00 B2           4544 	.dw	0,178
      00323B 04                    4545 	.uleb128	4
      00323C 02                    4546 	.db	2
      00323D 91                    4547 	.db	145
      00323E 05                    4548 	.sleb128	5
      00323F 54 49 4D 32 5F 4F 75  4549 	.ascii "TIM2_OutputState"
             74 70 75 74 53 74 61
             74 65
      00324F 00                    4550 	.db	0
      003250 00 00 00 B2           4551 	.dw	0,178
      003254 04                    4552 	.uleb128	4
      003255 02                    4553 	.db	2
      003256 91                    4554 	.db	145
      003257 06                    4555 	.sleb128	6
      003258 54 49 4D 32 5F 50 75  4556 	.ascii "TIM2_Pulse"
             6C 73 65
      003262 00                    4557 	.db	0
      003263 00 00 00 C3           4558 	.dw	0,195
      003267 04                    4559 	.uleb128	4
      003268 02                    4560 	.db	2
      003269 91                    4561 	.db	145
      00326A 08                    4562 	.sleb128	8
      00326B 54 49 4D 32 5F 4F 43  4563 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      00327A 00                    4564 	.db	0
      00327B 00 00 00 B2           4565 	.dw	0,178
      00327F 00                    4566 	.uleb128	0
      003280 03                    4567 	.uleb128	3
      003281 00 00 01 C3           4568 	.dw	0,451
      003285 54 49 4D 32 5F 4F 43  4569 	.ascii "TIM2_OC2Init"
             32 49 6E 69 74
      003291 00                    4570 	.db	0
      003292 00 00 A4 11           4571 	.dw	0,(_TIM2_OC2Init)
      003296 00 00 A4 61           4572 	.dw	0,(XG$TIM2_OC2Init$0$0+7)
      00329A 01                    4573 	.db	1
      00329B 00 00 0F 28           4574 	.dw	0,(Ldebug_loc_start+840)
      00329F 04                    4575 	.uleb128	4
      0032A0 02                    4576 	.db	2
      0032A1 91                    4577 	.db	145
      0032A2 04                    4578 	.sleb128	4
      0032A3 54 49 4D 32 5F 4F 43  4579 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      0032AE 00                    4580 	.db	0
      0032AF 00 00 00 B2           4581 	.dw	0,178
      0032B3 04                    4582 	.uleb128	4
      0032B4 02                    4583 	.db	2
      0032B5 91                    4584 	.db	145
      0032B6 05                    4585 	.sleb128	5
      0032B7 54 49 4D 32 5F 4F 75  4586 	.ascii "TIM2_OutputState"
             74 70 75 74 53 74 61
             74 65
      0032C7 00                    4587 	.db	0
      0032C8 00 00 00 B2           4588 	.dw	0,178
      0032CC 04                    4589 	.uleb128	4
      0032CD 02                    4590 	.db	2
      0032CE 91                    4591 	.db	145
      0032CF 06                    4592 	.sleb128	6
      0032D0 54 49 4D 32 5F 50 75  4593 	.ascii "TIM2_Pulse"
             6C 73 65
      0032DA 00                    4594 	.db	0
      0032DB 00 00 00 C3           4595 	.dw	0,195
      0032DF 04                    4596 	.uleb128	4
      0032E0 02                    4597 	.db	2
      0032E1 91                    4598 	.db	145
      0032E2 08                    4599 	.sleb128	8
      0032E3 54 49 4D 32 5F 4F 43  4600 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      0032F2 00                    4601 	.db	0
      0032F3 00 00 00 B2           4602 	.dw	0,178
      0032F7 00                    4603 	.uleb128	0
      0032F8 03                    4604 	.uleb128	3
      0032F9 00 00 02 3B           4605 	.dw	0,571
      0032FD 54 49 4D 32 5F 4F 43  4606 	.ascii "TIM2_OC3Init"
             33 49 6E 69 74
      003309 00                    4607 	.db	0
      00330A 00 00 A4 61           4608 	.dw	0,(_TIM2_OC3Init)
      00330E 00 00 A4 B1           4609 	.dw	0,(XG$TIM2_OC3Init$0$0+7)
      003312 01                    4610 	.db	1
      003313 00 00 0F 14           4611 	.dw	0,(Ldebug_loc_start+820)
      003317 04                    4612 	.uleb128	4
      003318 02                    4613 	.db	2
      003319 91                    4614 	.db	145
      00331A 04                    4615 	.sleb128	4
      00331B 54 49 4D 32 5F 4F 43  4616 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      003326 00                    4617 	.db	0
      003327 00 00 00 B2           4618 	.dw	0,178
      00332B 04                    4619 	.uleb128	4
      00332C 02                    4620 	.db	2
      00332D 91                    4621 	.db	145
      00332E 05                    4622 	.sleb128	5
      00332F 54 49 4D 32 5F 4F 75  4623 	.ascii "TIM2_OutputState"
             74 70 75 74 53 74 61
             74 65
      00333F 00                    4624 	.db	0
      003340 00 00 00 B2           4625 	.dw	0,178
      003344 04                    4626 	.uleb128	4
      003345 02                    4627 	.db	2
      003346 91                    4628 	.db	145
      003347 06                    4629 	.sleb128	6
      003348 54 49 4D 32 5F 50 75  4630 	.ascii "TIM2_Pulse"
             6C 73 65
      003352 00                    4631 	.db	0
      003353 00 00 00 C3           4632 	.dw	0,195
      003357 04                    4633 	.uleb128	4
      003358 02                    4634 	.db	2
      003359 91                    4635 	.db	145
      00335A 08                    4636 	.sleb128	8
      00335B 54 49 4D 32 5F 4F 43  4637 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      00336A 00                    4638 	.db	0
      00336B 00 00 00 B2           4639 	.dw	0,178
      00336F 00                    4640 	.uleb128	0
      003370 03                    4641 	.uleb128	3
      003371 00 00 02 D2           4642 	.dw	0,722
      003375 54 49 4D 32 5F 49 43  4643 	.ascii "TIM2_ICInit"
             49 6E 69 74
      003380 00                    4644 	.db	0
      003381 00 00 A4 B1           4645 	.dw	0,(_TIM2_ICInit)
      003385 00 00 A5 11           4646 	.dw	0,(XG$TIM2_ICInit$0$0+7)
      003389 01                    4647 	.db	1
      00338A 00 00 0F 00           4648 	.dw	0,(Ldebug_loc_start+800)
      00338E 04                    4649 	.uleb128	4
      00338F 02                    4650 	.db	2
      003390 91                    4651 	.db	145
      003391 04                    4652 	.sleb128	4
      003392 54 49 4D 32 5F 43 68  4653 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      00339E 00                    4654 	.db	0
      00339F 00 00 00 B2           4655 	.dw	0,178
      0033A3 04                    4656 	.uleb128	4
      0033A4 02                    4657 	.db	2
      0033A5 91                    4658 	.db	145
      0033A6 05                    4659 	.sleb128	5
      0033A7 54 49 4D 32 5F 49 43  4660 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      0033B6 00                    4661 	.db	0
      0033B7 00 00 00 B2           4662 	.dw	0,178
      0033BB 04                    4663 	.uleb128	4
      0033BC 02                    4664 	.db	2
      0033BD 91                    4665 	.db	145
      0033BE 06                    4666 	.sleb128	6
      0033BF 54 49 4D 32 5F 49 43  4667 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      0033CF 00                    4668 	.db	0
      0033D0 00 00 00 B2           4669 	.dw	0,178
      0033D4 04                    4670 	.uleb128	4
      0033D5 02                    4671 	.db	2
      0033D6 91                    4672 	.db	145
      0033D7 07                    4673 	.sleb128	7
      0033D8 54 49 4D 32 5F 49 43  4674 	.ascii "TIM2_ICPrescaler"
             50 72 65 73 63 61 6C
             65 72
      0033E8 00                    4675 	.db	0
      0033E9 00 00 00 B2           4676 	.dw	0,178
      0033ED 04                    4677 	.uleb128	4
      0033EE 02                    4678 	.db	2
      0033EF 91                    4679 	.db	145
      0033F0 08                    4680 	.sleb128	8
      0033F1 54 49 4D 32 5F 49 43  4681 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      0033FE 00                    4682 	.db	0
      0033FF 00 00 00 B2           4683 	.dw	0,178
      003403 06                    4684 	.uleb128	6
      003404 06                    4685 	.uleb128	6
      003405 06                    4686 	.uleb128	6
      003406 00                    4687 	.uleb128	0
      003407 03                    4688 	.uleb128	3
      003408 00 00 03 97           4689 	.dw	0,919
      00340C 54 49 4D 32 5F 50 57  4690 	.ascii "TIM2_PWMIConfig"
             4D 49 43 6F 6E 66 69
             67
      00341B 00                    4691 	.db	0
      00341C 00 00 A5 11           4692 	.dw	0,(_TIM2_PWMIConfig)
      003420 00 00 A5 A0           4693 	.dw	0,(XG$TIM2_PWMIConfig$0$0+7)
      003424 01                    4694 	.db	1
      003425 00 00 0E EC           4695 	.dw	0,(Ldebug_loc_start+780)
      003429 04                    4696 	.uleb128	4
      00342A 02                    4697 	.db	2
      00342B 91                    4698 	.db	145
      00342C 04                    4699 	.sleb128	4
      00342D 54 49 4D 32 5F 43 68  4700 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      003439 00                    4701 	.db	0
      00343A 00 00 00 B2           4702 	.dw	0,178
      00343E 04                    4703 	.uleb128	4
      00343F 02                    4704 	.db	2
      003440 91                    4705 	.db	145
      003441 05                    4706 	.sleb128	5
      003442 54 49 4D 32 5F 49 43  4707 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      003451 00                    4708 	.db	0
      003452 00 00 00 B2           4709 	.dw	0,178
      003456 04                    4710 	.uleb128	4
      003457 02                    4711 	.db	2
      003458 91                    4712 	.db	145
      003459 06                    4713 	.sleb128	6
      00345A 54 49 4D 32 5F 49 43  4714 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      00346A 00                    4715 	.db	0
      00346B 00 00 00 B2           4716 	.dw	0,178
      00346F 04                    4717 	.uleb128	4
      003470 02                    4718 	.db	2
      003471 91                    4719 	.db	145
      003472 07                    4720 	.sleb128	7
      003473 54 49 4D 32 5F 49 43  4721 	.ascii "TIM2_ICPrescaler"
             50 72 65 73 63 61 6C
             65 72
      003483 00                    4722 	.db	0
      003484 00 00 00 B2           4723 	.dw	0,178
      003488 04                    4724 	.uleb128	4
      003489 02                    4725 	.db	2
      00348A 91                    4726 	.db	145
      00348B 08                    4727 	.sleb128	8
      00348C 54 49 4D 32 5F 49 43  4728 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      003499 00                    4729 	.db	0
      00349A 00 00 00 B2           4730 	.dw	0,178
      00349E 06                    4731 	.uleb128	6
      00349F 06                    4732 	.uleb128	6
      0034A0 06                    4733 	.uleb128	6
      0034A1 06                    4734 	.uleb128	6
      0034A2 06                    4735 	.uleb128	6
      0034A3 06                    4736 	.uleb128	6
      0034A4 07                    4737 	.uleb128	7
      0034A5 02                    4738 	.db	2
      0034A6 91                    4739 	.db	145
      0034A7 7F                    4740 	.sleb128	-1
      0034A8 69 63 70 6F 6C 61 72  4741 	.ascii "icpolarity"
             69 74 79
      0034B2 00                    4742 	.db	0
      0034B3 00 00 00 B2           4743 	.dw	0,178
      0034B7 07                    4744 	.uleb128	7
      0034B8 02                    4745 	.db	2
      0034B9 91                    4746 	.db	145
      0034BA 7E                    4747 	.sleb128	-2
      0034BB 69 63 73 65 6C 65 63  4748 	.ascii "icselection"
             74 69 6F 6E
      0034C6 00                    4749 	.db	0
      0034C7 00 00 00 B2           4750 	.dw	0,178
      0034CB 00                    4751 	.uleb128	0
      0034CC 03                    4752 	.uleb128	3
      0034CD 00 00 03 C6           4753 	.dw	0,966
      0034D1 54 49 4D 32 5F 43 6D  4754 	.ascii "TIM2_Cmd"
             64
      0034D9 00                    4755 	.db	0
      0034DA 00 00 A5 A0           4756 	.dw	0,(_TIM2_Cmd)
      0034DE 00 00 A5 C1           4757 	.dw	0,(XG$TIM2_Cmd$0$0+7)
      0034E2 01                    4758 	.db	1
      0034E3 00 00 0E D8           4759 	.dw	0,(Ldebug_loc_start+760)
      0034E7 04                    4760 	.uleb128	4
      0034E8 02                    4761 	.db	2
      0034E9 91                    4762 	.db	145
      0034EA 04                    4763 	.sleb128	4
      0034EB 4E 65 77 53 74 61 74  4764 	.ascii "NewState"
             65
      0034F3 00                    4765 	.db	0
      0034F4 00 00 00 B2           4766 	.dw	0,178
      0034F8 06                    4767 	.uleb128	6
      0034F9 06                    4768 	.uleb128	6
      0034FA 00                    4769 	.uleb128	0
      0034FB 03                    4770 	.uleb128	3
      0034FC 00 00 04 0A           4771 	.dw	0,1034
      003500 54 49 4D 32 5F 49 54  4772 	.ascii "TIM2_ITConfig"
             43 6F 6E 66 69 67
      00350D 00                    4773 	.db	0
      00350E 00 00 A5 C1           4774 	.dw	0,(_TIM2_ITConfig)
      003512 00 00 A5 F5           4775 	.dw	0,(XG$TIM2_ITConfig$0$0+7)
      003516 01                    4776 	.db	1
      003517 00 00 0E C4           4777 	.dw	0,(Ldebug_loc_start+740)
      00351B 04                    4778 	.uleb128	4
      00351C 02                    4779 	.db	2
      00351D 91                    4780 	.db	145
      00351E 04                    4781 	.sleb128	4
      00351F 54 49 4D 32 5F 49 54  4782 	.ascii "TIM2_IT"
      003526 00                    4783 	.db	0
      003527 00 00 00 B2           4784 	.dw	0,178
      00352B 04                    4785 	.uleb128	4
      00352C 02                    4786 	.db	2
      00352D 91                    4787 	.db	145
      00352E 05                    4788 	.sleb128	5
      00352F 4E 65 77 53 74 61 74  4789 	.ascii "NewState"
             65
      003537 00                    4790 	.db	0
      003538 00 00 00 B2           4791 	.dw	0,178
      00353C 06                    4792 	.uleb128	6
      00353D 06                    4793 	.uleb128	6
      00353E 00                    4794 	.uleb128	0
      00353F 03                    4795 	.uleb128	3
      003540 00 00 04 49           4796 	.dw	0,1097
      003544 54 49 4D 32 5F 55 70  4797 	.ascii "TIM2_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      00355C 00                    4798 	.db	0
      00355D 00 00 A5 F5           4799 	.dw	0,(_TIM2_UpdateDisableConfig)
      003561 00 00 A6 1C           4800 	.dw	0,(XG$TIM2_UpdateDisableConfig$0$0+7)
      003565 01                    4801 	.db	1
      003566 00 00 0E B0           4802 	.dw	0,(Ldebug_loc_start+720)
      00356A 04                    4803 	.uleb128	4
      00356B 02                    4804 	.db	2
      00356C 91                    4805 	.db	145
      00356D 04                    4806 	.sleb128	4
      00356E 4E 65 77 53 74 61 74  4807 	.ascii "NewState"
             65
      003576 00                    4808 	.db	0
      003577 00 00 00 B2           4809 	.dw	0,178
      00357B 06                    4810 	.uleb128	6
      00357C 06                    4811 	.uleb128	6
      00357D 00                    4812 	.uleb128	0
      00357E 03                    4813 	.uleb128	3
      00357F 00 00 04 91           4814 	.dw	0,1169
      003583 54 49 4D 32 5F 55 70  4815 	.ascii "TIM2_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      00359B 00                    4816 	.db	0
      00359C 00 00 A6 1C           4817 	.dw	0,(_TIM2_UpdateRequestConfig)
      0035A0 00 00 A6 43           4818 	.dw	0,(XG$TIM2_UpdateRequestConfig$0$0+7)
      0035A4 01                    4819 	.db	1
      0035A5 00 00 0E 9C           4820 	.dw	0,(Ldebug_loc_start+700)
      0035A9 04                    4821 	.uleb128	4
      0035AA 02                    4822 	.db	2
      0035AB 91                    4823 	.db	145
      0035AC 04                    4824 	.sleb128	4
      0035AD 54 49 4D 32 5F 55 70  4825 	.ascii "TIM2_UpdateSource"
             64 61 74 65 53 6F 75
             72 63 65
      0035BE 00                    4826 	.db	0
      0035BF 00 00 00 B2           4827 	.dw	0,178
      0035C3 06                    4828 	.uleb128	6
      0035C4 06                    4829 	.uleb128	6
      0035C5 00                    4830 	.uleb128	0
      0035C6 03                    4831 	.uleb128	3
      0035C7 00 00 04 D2           4832 	.dw	0,1234
      0035CB 54 49 4D 32 5F 53 65  4833 	.ascii "TIM2_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      0035E2 00                    4834 	.db	0
      0035E3 00 00 A6 43           4835 	.dw	0,(_TIM2_SelectOnePulseMode)
      0035E7 00 00 A6 6A           4836 	.dw	0,(XG$TIM2_SelectOnePulseMode$0$0+7)
      0035EB 01                    4837 	.db	1
      0035EC 00 00 0E 88           4838 	.dw	0,(Ldebug_loc_start+680)
      0035F0 04                    4839 	.uleb128	4
      0035F1 02                    4840 	.db	2
      0035F2 91                    4841 	.db	145
      0035F3 04                    4842 	.sleb128	4
      0035F4 54 49 4D 32 5F 4F 50  4843 	.ascii "TIM2_OPMode"
             4D 6F 64 65
      0035FF 00                    4844 	.db	0
      003600 00 00 00 B2           4845 	.dw	0,178
      003604 06                    4846 	.uleb128	6
      003605 06                    4847 	.uleb128	6
      003606 00                    4848 	.uleb128	0
      003607 03                    4849 	.uleb128	3
      003608 00 00 05 27           4850 	.dw	0,1319
      00360C 54 49 4D 32 5F 50 72  4851 	.ascii "TIM2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      003620 00                    4852 	.db	0
      003621 00 00 A6 6A           4853 	.dw	0,(_TIM2_PrescalerConfig)
      003625 00 00 A6 89           4854 	.dw	0,(XG$TIM2_PrescalerConfig$0$0+7)
      003629 01                    4855 	.db	1
      00362A 00 00 0E 74           4856 	.dw	0,(Ldebug_loc_start+660)
      00362E 04                    4857 	.uleb128	4
      00362F 02                    4858 	.db	2
      003630 91                    4859 	.db	145
      003631 04                    4860 	.sleb128	4
      003632 50 72 65 73 63 61 6C  4861 	.ascii "Prescaler"
             65 72
      00363B 00                    4862 	.db	0
      00363C 00 00 00 B2           4863 	.dw	0,178
      003640 04                    4864 	.uleb128	4
      003641 02                    4865 	.db	2
      003642 91                    4866 	.db	145
      003643 05                    4867 	.sleb128	5
      003644 54 49 4D 32 5F 50 53  4868 	.ascii "TIM2_PSCReloadMode"
             43 52 65 6C 6F 61 64
             4D 6F 64 65
      003656 00                    4869 	.db	0
      003657 00 00 00 B2           4870 	.dw	0,178
      00365B 00                    4871 	.uleb128	0
      00365C 03                    4872 	.uleb128	3
      00365D 00 00 05 69           4873 	.dw	0,1385
      003661 54 49 4D 32 5F 46 6F  4874 	.ascii "TIM2_ForcedOC1Config"
             72 63 65 64 4F 43 31
             43 6F 6E 66 69 67
      003675 00                    4875 	.db	0
      003676 00 00 A6 89           4876 	.dw	0,(_TIM2_ForcedOC1Config)
      00367A 00 00 A6 A8           4877 	.dw	0,(XG$TIM2_ForcedOC1Config$0$0+7)
      00367E 01                    4878 	.db	1
      00367F 00 00 0E 60           4879 	.dw	0,(Ldebug_loc_start+640)
      003683 04                    4880 	.uleb128	4
      003684 02                    4881 	.db	2
      003685 91                    4882 	.db	145
      003686 04                    4883 	.sleb128	4
      003687 54 49 4D 32 5F 46 6F  4884 	.ascii "TIM2_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      003698 00                    4885 	.db	0
      003699 00 00 00 B2           4886 	.dw	0,178
      00369D 00                    4887 	.uleb128	0
      00369E 03                    4888 	.uleb128	3
      00369F 00 00 05 AB           4889 	.dw	0,1451
      0036A3 54 49 4D 32 5F 46 6F  4890 	.ascii "TIM2_ForcedOC2Config"
             72 63 65 64 4F 43 32
             43 6F 6E 66 69 67
      0036B7 00                    4891 	.db	0
      0036B8 00 00 A6 A8           4892 	.dw	0,(_TIM2_ForcedOC2Config)
      0036BC 00 00 A6 C7           4893 	.dw	0,(XG$TIM2_ForcedOC2Config$0$0+7)
      0036C0 01                    4894 	.db	1
      0036C1 00 00 0E 4C           4895 	.dw	0,(Ldebug_loc_start+620)
      0036C5 04                    4896 	.uleb128	4
      0036C6 02                    4897 	.db	2
      0036C7 91                    4898 	.db	145
      0036C8 04                    4899 	.sleb128	4
      0036C9 54 49 4D 32 5F 46 6F  4900 	.ascii "TIM2_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      0036DA 00                    4901 	.db	0
      0036DB 00 00 00 B2           4902 	.dw	0,178
      0036DF 00                    4903 	.uleb128	0
      0036E0 03                    4904 	.uleb128	3
      0036E1 00 00 05 ED           4905 	.dw	0,1517
      0036E5 54 49 4D 32 5F 46 6F  4906 	.ascii "TIM2_ForcedOC3Config"
             72 63 65 64 4F 43 33
             43 6F 6E 66 69 67
      0036F9 00                    4907 	.db	0
      0036FA 00 00 A6 C7           4908 	.dw	0,(_TIM2_ForcedOC3Config)
      0036FE 00 00 A6 E6           4909 	.dw	0,(XG$TIM2_ForcedOC3Config$0$0+7)
      003702 01                    4910 	.db	1
      003703 00 00 0E 38           4911 	.dw	0,(Ldebug_loc_start+600)
      003707 04                    4912 	.uleb128	4
      003708 02                    4913 	.db	2
      003709 91                    4914 	.db	145
      00370A 04                    4915 	.sleb128	4
      00370B 54 49 4D 32 5F 46 6F  4916 	.ascii "TIM2_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      00371C 00                    4917 	.db	0
      00371D 00 00 00 B2           4918 	.dw	0,178
      003721 00                    4919 	.uleb128	0
      003722 03                    4920 	.uleb128	3
      003723 00 00 06 29           4921 	.dw	0,1577
      003727 54 49 4D 32 5F 41 52  4922 	.ascii "TIM2_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      00373C 00                    4923 	.db	0
      00373D 00 00 A6 E6           4924 	.dw	0,(_TIM2_ARRPreloadConfig)
      003741 00 00 A7 07           4925 	.dw	0,(XG$TIM2_ARRPreloadConfig$0$0+7)
      003745 01                    4926 	.db	1
      003746 00 00 0E 24           4927 	.dw	0,(Ldebug_loc_start+580)
      00374A 04                    4928 	.uleb128	4
      00374B 02                    4929 	.db	2
      00374C 91                    4930 	.db	145
      00374D 04                    4931 	.sleb128	4
      00374E 4E 65 77 53 74 61 74  4932 	.ascii "NewState"
             65
      003756 00                    4933 	.db	0
      003757 00 00 00 B2           4934 	.dw	0,178
      00375B 06                    4935 	.uleb128	6
      00375C 06                    4936 	.uleb128	6
      00375D 00                    4937 	.uleb128	0
      00375E 03                    4938 	.uleb128	3
      00375F 00 00 06 65           4939 	.dw	0,1637
      003763 54 49 4D 32 5F 4F 43  4940 	.ascii "TIM2_OC1PreloadConfig"
             31 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      003778 00                    4941 	.db	0
      003779 00 00 A7 07           4942 	.dw	0,(_TIM2_OC1PreloadConfig)
      00377D 00 00 A7 2E           4943 	.dw	0,(XG$TIM2_OC1PreloadConfig$0$0+7)
      003781 01                    4944 	.db	1
      003782 00 00 0E 10           4945 	.dw	0,(Ldebug_loc_start+560)
      003786 04                    4946 	.uleb128	4
      003787 02                    4947 	.db	2
      003788 91                    4948 	.db	145
      003789 04                    4949 	.sleb128	4
      00378A 4E 65 77 53 74 61 74  4950 	.ascii "NewState"
             65
      003792 00                    4951 	.db	0
      003793 00 00 00 B2           4952 	.dw	0,178
      003797 06                    4953 	.uleb128	6
      003798 06                    4954 	.uleb128	6
      003799 00                    4955 	.uleb128	0
      00379A 03                    4956 	.uleb128	3
      00379B 00 00 06 A1           4957 	.dw	0,1697
      00379F 54 49 4D 32 5F 4F 43  4958 	.ascii "TIM2_OC2PreloadConfig"
             32 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0037B4 00                    4959 	.db	0
      0037B5 00 00 A7 2E           4960 	.dw	0,(_TIM2_OC2PreloadConfig)
      0037B9 00 00 A7 55           4961 	.dw	0,(XG$TIM2_OC2PreloadConfig$0$0+7)
      0037BD 01                    4962 	.db	1
      0037BE 00 00 0D FC           4963 	.dw	0,(Ldebug_loc_start+540)
      0037C2 04                    4964 	.uleb128	4
      0037C3 02                    4965 	.db	2
      0037C4 91                    4966 	.db	145
      0037C5 04                    4967 	.sleb128	4
      0037C6 4E 65 77 53 74 61 74  4968 	.ascii "NewState"
             65
      0037CE 00                    4969 	.db	0
      0037CF 00 00 00 B2           4970 	.dw	0,178
      0037D3 06                    4971 	.uleb128	6
      0037D4 06                    4972 	.uleb128	6
      0037D5 00                    4973 	.uleb128	0
      0037D6 03                    4974 	.uleb128	3
      0037D7 00 00 06 DD           4975 	.dw	0,1757
      0037DB 54 49 4D 32 5F 4F 43  4976 	.ascii "TIM2_OC3PreloadConfig"
             33 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0037F0 00                    4977 	.db	0
      0037F1 00 00 A7 55           4978 	.dw	0,(_TIM2_OC3PreloadConfig)
      0037F5 00 00 A7 7C           4979 	.dw	0,(XG$TIM2_OC3PreloadConfig$0$0+7)
      0037F9 01                    4980 	.db	1
      0037FA 00 00 0D E8           4981 	.dw	0,(Ldebug_loc_start+520)
      0037FE 04                    4982 	.uleb128	4
      0037FF 02                    4983 	.db	2
      003800 91                    4984 	.db	145
      003801 04                    4985 	.sleb128	4
      003802 4E 65 77 53 74 61 74  4986 	.ascii "NewState"
             65
      00380A 00                    4987 	.db	0
      00380B 00 00 00 B2           4988 	.dw	0,178
      00380F 06                    4989 	.uleb128	6
      003810 06                    4990 	.uleb128	6
      003811 00                    4991 	.uleb128	0
      003812 03                    4992 	.uleb128	3
      003813 00 00 07 1C           4993 	.dw	0,1820
      003817 54 49 4D 32 5F 47 65  4994 	.ascii "TIM2_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      003829 00                    4995 	.db	0
      00382A 00 00 A7 7C           4996 	.dw	0,(_TIM2_GenerateEvent)
      00382E 00 00 A7 95           4997 	.dw	0,(XG$TIM2_GenerateEvent$0$0+7)
      003832 01                    4998 	.db	1
      003833 00 00 0D D4           4999 	.dw	0,(Ldebug_loc_start+500)
      003837 04                    5000 	.uleb128	4
      003838 02                    5001 	.db	2
      003839 91                    5002 	.db	145
      00383A 04                    5003 	.sleb128	4
      00383B 54 49 4D 32 5F 45 76  5004 	.ascii "TIM2_EventSource"
             65 6E 74 53 6F 75 72
             63 65
      00384B 00                    5005 	.db	0
      00384C 00 00 00 B2           5006 	.dw	0,178
      003850 00                    5007 	.uleb128	0
      003851 03                    5008 	.uleb128	3
      003852 00 00 07 60           5009 	.dw	0,1888
      003856 54 49 4D 32 5F 4F 43  5010 	.ascii "TIM2_OC1PolarityConfig"
             31 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      00386C 00                    5011 	.db	0
      00386D 00 00 A7 95           5012 	.dw	0,(_TIM2_OC1PolarityConfig)
      003871 00 00 A7 BC           5013 	.dw	0,(XG$TIM2_OC1PolarityConfig$0$0+7)
      003875 01                    5014 	.db	1
      003876 00 00 0D C0           5015 	.dw	0,(Ldebug_loc_start+480)
      00387A 04                    5016 	.uleb128	4
      00387B 02                    5017 	.db	2
      00387C 91                    5018 	.db	145
      00387D 04                    5019 	.sleb128	4
      00387E 54 49 4D 32 5F 4F 43  5020 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      00388D 00                    5021 	.db	0
      00388E 00 00 00 B2           5022 	.dw	0,178
      003892 06                    5023 	.uleb128	6
      003893 06                    5024 	.uleb128	6
      003894 00                    5025 	.uleb128	0
      003895 03                    5026 	.uleb128	3
      003896 00 00 07 A4           5027 	.dw	0,1956
      00389A 54 49 4D 32 5F 4F 43  5028 	.ascii "TIM2_OC2PolarityConfig"
             32 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      0038B0 00                    5029 	.db	0
      0038B1 00 00 A7 BC           5030 	.dw	0,(_TIM2_OC2PolarityConfig)
      0038B5 00 00 A7 E3           5031 	.dw	0,(XG$TIM2_OC2PolarityConfig$0$0+7)
      0038B9 01                    5032 	.db	1
      0038BA 00 00 0D AC           5033 	.dw	0,(Ldebug_loc_start+460)
      0038BE 04                    5034 	.uleb128	4
      0038BF 02                    5035 	.db	2
      0038C0 91                    5036 	.db	145
      0038C1 04                    5037 	.sleb128	4
      0038C2 54 49 4D 32 5F 4F 43  5038 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      0038D1 00                    5039 	.db	0
      0038D2 00 00 00 B2           5040 	.dw	0,178
      0038D6 06                    5041 	.uleb128	6
      0038D7 06                    5042 	.uleb128	6
      0038D8 00                    5043 	.uleb128	0
      0038D9 03                    5044 	.uleb128	3
      0038DA 00 00 07 E8           5045 	.dw	0,2024
      0038DE 54 49 4D 32 5F 4F 43  5046 	.ascii "TIM2_OC3PolarityConfig"
             33 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      0038F4 00                    5047 	.db	0
      0038F5 00 00 A7 E3           5048 	.dw	0,(_TIM2_OC3PolarityConfig)
      0038F9 00 00 A8 0A           5049 	.dw	0,(XG$TIM2_OC3PolarityConfig$0$0+7)
      0038FD 01                    5050 	.db	1
      0038FE 00 00 0D 98           5051 	.dw	0,(Ldebug_loc_start+440)
      003902 04                    5052 	.uleb128	4
      003903 02                    5053 	.db	2
      003904 91                    5054 	.db	145
      003905 04                    5055 	.sleb128	4
      003906 54 49 4D 32 5F 4F 43  5056 	.ascii "TIM2_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      003915 00                    5057 	.db	0
      003916 00 00 00 B2           5058 	.dw	0,178
      00391A 06                    5059 	.uleb128	6
      00391B 06                    5060 	.uleb128	6
      00391C 00                    5061 	.uleb128	0
      00391D 03                    5062 	.uleb128	3
      00391E 00 00 08 41           5063 	.dw	0,2113
      003922 54 49 4D 32 5F 43 43  5064 	.ascii "TIM2_CCxCmd"
             78 43 6D 64
      00392D 00                    5065 	.db	0
      00392E 00 00 A8 0A           5066 	.dw	0,(_TIM2_CCxCmd)
      003932 00 00 A8 5B           5067 	.dw	0,(XG$TIM2_CCxCmd$0$0+7)
      003936 01                    5068 	.db	1
      003937 00 00 0D 84           5069 	.dw	0,(Ldebug_loc_start+420)
      00393B 04                    5070 	.uleb128	4
      00393C 02                    5071 	.db	2
      00393D 91                    5072 	.db	145
      00393E 04                    5073 	.sleb128	4
      00393F 54 49 4D 32 5F 43 68  5074 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      00394B 00                    5075 	.db	0
      00394C 00 00 00 B2           5076 	.dw	0,178
      003950 04                    5077 	.uleb128	4
      003951 02                    5078 	.db	2
      003952 91                    5079 	.db	145
      003953 05                    5080 	.sleb128	5
      003954 4E 65 77 53 74 61 74  5081 	.ascii "NewState"
             65
      00395C 00                    5082 	.db	0
      00395D 00 00 00 B2           5083 	.dw	0,178
      003961 08                    5084 	.uleb128	8
      003962 00 00 08 34           5085 	.dw	0,2100
      003966 06                    5086 	.uleb128	6
      003967 06                    5087 	.uleb128	6
      003968 00                    5088 	.uleb128	0
      003969 08                    5089 	.uleb128	8
      00396A 00 00 08 3C           5090 	.dw	0,2108
      00396E 06                    5091 	.uleb128	6
      00396F 06                    5092 	.uleb128	6
      003970 00                    5093 	.uleb128	0
      003971 09                    5094 	.uleb128	9
      003972 06                    5095 	.uleb128	6
      003973 06                    5096 	.uleb128	6
      003974 00                    5097 	.uleb128	0
      003975 00                    5098 	.uleb128	0
      003976 03                    5099 	.uleb128	3
      003977 00 00 08 90           5100 	.dw	0,2192
      00397B 54 49 4D 32 5F 53 65  5101 	.ascii "TIM2_SelectOCxM"
             6C 65 63 74 4F 43 78
             4D
      00398A 00                    5102 	.db	0
      00398B 00 00 A8 5B           5103 	.dw	0,(_TIM2_SelectOCxM)
      00398F 00 00 A8 AF           5104 	.dw	0,(XG$TIM2_SelectOCxM$0$0+7)
      003993 01                    5105 	.db	1
      003994 00 00 0D 70           5106 	.dw	0,(Ldebug_loc_start+400)
      003998 04                    5107 	.uleb128	4
      003999 02                    5108 	.db	2
      00399A 91                    5109 	.db	145
      00399B 04                    5110 	.sleb128	4
      00399C 54 49 4D 32 5F 43 68  5111 	.ascii "TIM2_Channel"
             61 6E 6E 65 6C
      0039A8 00                    5112 	.db	0
      0039A9 00 00 00 B2           5113 	.dw	0,178
      0039AD 04                    5114 	.uleb128	4
      0039AE 02                    5115 	.db	2
      0039AF 91                    5116 	.db	145
      0039B0 05                    5117 	.sleb128	5
      0039B1 54 49 4D 32 5F 4F 43  5118 	.ascii "TIM2_OCMode"
             4D 6F 64 65
      0039BC 00                    5119 	.db	0
      0039BD 00 00 00 B2           5120 	.dw	0,178
      0039C1 06                    5121 	.uleb128	6
      0039C2 06                    5122 	.uleb128	6
      0039C3 06                    5123 	.uleb128	6
      0039C4 00                    5124 	.uleb128	0
      0039C5 03                    5125 	.uleb128	3
      0039C6 00 00 08 C3           5126 	.dw	0,2243
      0039CA 54 49 4D 32 5F 53 65  5127 	.ascii "TIM2_SetCounter"
             74 43 6F 75 6E 74 65
             72
      0039D9 00                    5128 	.db	0
      0039DA 00 00 A8 AF           5129 	.dw	0,(_TIM2_SetCounter)
      0039DE 00 00 A8 D4           5130 	.dw	0,(XG$TIM2_SetCounter$0$0+7)
      0039E2 01                    5131 	.db	1
      0039E3 00 00 0D 5C           5132 	.dw	0,(Ldebug_loc_start+380)
      0039E7 04                    5133 	.uleb128	4
      0039E8 02                    5134 	.db	2
      0039E9 91                    5135 	.db	145
      0039EA 04                    5136 	.sleb128	4
      0039EB 43 6F 75 6E 74 65 72  5137 	.ascii "Counter"
      0039F2 00                    5138 	.db	0
      0039F3 00 00 00 C3           5139 	.dw	0,195
      0039F7 00                    5140 	.uleb128	0
      0039F8 03                    5141 	.uleb128	3
      0039F9 00 00 08 FC           5142 	.dw	0,2300
      0039FD 54 49 4D 32 5F 53 65  5143 	.ascii "TIM2_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      003A0F 00                    5144 	.db	0
      003A10 00 00 A8 D4           5145 	.dw	0,(_TIM2_SetAutoreload)
      003A14 00 00 A8 F9           5146 	.dw	0,(XG$TIM2_SetAutoreload$0$0+7)
      003A18 01                    5147 	.db	1
      003A19 00 00 0D 48           5148 	.dw	0,(Ldebug_loc_start+360)
      003A1D 04                    5149 	.uleb128	4
      003A1E 02                    5150 	.db	2
      003A1F 91                    5151 	.db	145
      003A20 04                    5152 	.sleb128	4
      003A21 41 75 74 6F 72 65 6C  5153 	.ascii "Autoreload"
             6F 61 64
      003A2B 00                    5154 	.db	0
      003A2C 00 00 00 C3           5155 	.dw	0,195
      003A30 00                    5156 	.uleb128	0
      003A31 03                    5157 	.uleb128	3
      003A32 00 00 09 31           5158 	.dw	0,2353
      003A36 54 49 4D 32 5F 53 65  5159 	.ascii "TIM2_SetCompare1"
             74 43 6F 6D 70 61 72
             65 31
      003A46 00                    5160 	.db	0
      003A47 00 00 A8 F9           5161 	.dw	0,(_TIM2_SetCompare1)
      003A4B 00 00 A9 1E           5162 	.dw	0,(XG$TIM2_SetCompare1$0$0+7)
      003A4F 01                    5163 	.db	1
      003A50 00 00 0D 34           5164 	.dw	0,(Ldebug_loc_start+340)
      003A54 04                    5165 	.uleb128	4
      003A55 02                    5166 	.db	2
      003A56 91                    5167 	.db	145
      003A57 04                    5168 	.sleb128	4
      003A58 43 6F 6D 70 61 72 65  5169 	.ascii "Compare1"
             31
      003A60 00                    5170 	.db	0
      003A61 00 00 00 C3           5171 	.dw	0,195
      003A65 00                    5172 	.uleb128	0
      003A66 03                    5173 	.uleb128	3
      003A67 00 00 09 66           5174 	.dw	0,2406
      003A6B 54 49 4D 32 5F 53 65  5175 	.ascii "TIM2_SetCompare2"
             74 43 6F 6D 70 61 72
             65 32
      003A7B 00                    5176 	.db	0
      003A7C 00 00 A9 1E           5177 	.dw	0,(_TIM2_SetCompare2)
      003A80 00 00 A9 43           5178 	.dw	0,(XG$TIM2_SetCompare2$0$0+7)
      003A84 01                    5179 	.db	1
      003A85 00 00 0D 20           5180 	.dw	0,(Ldebug_loc_start+320)
      003A89 04                    5181 	.uleb128	4
      003A8A 02                    5182 	.db	2
      003A8B 91                    5183 	.db	145
      003A8C 04                    5184 	.sleb128	4
      003A8D 43 6F 6D 70 61 72 65  5185 	.ascii "Compare2"
             32
      003A95 00                    5186 	.db	0
      003A96 00 00 00 C3           5187 	.dw	0,195
      003A9A 00                    5188 	.uleb128	0
      003A9B 03                    5189 	.uleb128	3
      003A9C 00 00 09 9B           5190 	.dw	0,2459
      003AA0 54 49 4D 32 5F 53 65  5191 	.ascii "TIM2_SetCompare3"
             74 43 6F 6D 70 61 72
             65 33
      003AB0 00                    5192 	.db	0
      003AB1 00 00 A9 43           5193 	.dw	0,(_TIM2_SetCompare3)
      003AB5 00 00 A9 68           5194 	.dw	0,(XG$TIM2_SetCompare3$0$0+7)
      003AB9 01                    5195 	.db	1
      003ABA 00 00 0D 0C           5196 	.dw	0,(Ldebug_loc_start+300)
      003ABE 04                    5197 	.uleb128	4
      003ABF 02                    5198 	.db	2
      003AC0 91                    5199 	.db	145
      003AC1 04                    5200 	.sleb128	4
      003AC2 43 6F 6D 70 61 72 65  5201 	.ascii "Compare3"
             33
      003ACA 00                    5202 	.db	0
      003ACB 00 00 00 C3           5203 	.dw	0,195
      003ACF 00                    5204 	.uleb128	0
      003AD0 03                    5205 	.uleb128	3
      003AD1 00 00 09 DD           5206 	.dw	0,2525
      003AD5 54 49 4D 32 5F 53 65  5207 	.ascii "TIM2_SetIC1Prescaler"
             74 49 43 31 50 72 65
             73 63 61 6C 65 72
      003AE9 00                    5208 	.db	0
      003AEA 00 00 A9 68           5209 	.dw	0,(_TIM2_SetIC1Prescaler)
      003AEE 00 00 A9 87           5210 	.dw	0,(XG$TIM2_SetIC1Prescaler$0$0+7)
      003AF2 01                    5211 	.db	1
      003AF3 00 00 0C F8           5212 	.dw	0,(Ldebug_loc_start+280)
      003AF7 04                    5213 	.uleb128	4
      003AF8 02                    5214 	.db	2
      003AF9 91                    5215 	.db	145
      003AFA 04                    5216 	.sleb128	4
      003AFB 54 49 4D 32 5F 49 43  5217 	.ascii "TIM2_IC1Prescaler"
             31 50 72 65 73 63 61
             6C 65 72
      003B0C 00                    5218 	.db	0
      003B0D 00 00 00 B2           5219 	.dw	0,178
      003B11 00                    5220 	.uleb128	0
      003B12 03                    5221 	.uleb128	3
      003B13 00 00 0A 1F           5222 	.dw	0,2591
      003B17 54 49 4D 32 5F 53 65  5223 	.ascii "TIM2_SetIC2Prescaler"
             74 49 43 32 50 72 65
             73 63 61 6C 65 72
      003B2B 00                    5224 	.db	0
      003B2C 00 00 A9 87           5225 	.dw	0,(_TIM2_SetIC2Prescaler)
      003B30 00 00 A9 A6           5226 	.dw	0,(XG$TIM2_SetIC2Prescaler$0$0+7)
      003B34 01                    5227 	.db	1
      003B35 00 00 0C E4           5228 	.dw	0,(Ldebug_loc_start+260)
      003B39 04                    5229 	.uleb128	4
      003B3A 02                    5230 	.db	2
      003B3B 91                    5231 	.db	145
      003B3C 04                    5232 	.sleb128	4
      003B3D 54 49 4D 32 5F 49 43  5233 	.ascii "TIM2_IC2Prescaler"
             32 50 72 65 73 63 61
             6C 65 72
      003B4E 00                    5234 	.db	0
      003B4F 00 00 00 B2           5235 	.dw	0,178
      003B53 00                    5236 	.uleb128	0
      003B54 03                    5237 	.uleb128	3
      003B55 00 00 0A 61           5238 	.dw	0,2657
      003B59 54 49 4D 32 5F 53 65  5239 	.ascii "TIM2_SetIC3Prescaler"
             74 49 43 33 50 72 65
             73 63 61 6C 65 72
      003B6D 00                    5240 	.db	0
      003B6E 00 00 A9 A6           5241 	.dw	0,(_TIM2_SetIC3Prescaler)
      003B72 00 00 A9 C5           5242 	.dw	0,(XG$TIM2_SetIC3Prescaler$0$0+7)
      003B76 01                    5243 	.db	1
      003B77 00 00 0C D0           5244 	.dw	0,(Ldebug_loc_start+240)
      003B7B 04                    5245 	.uleb128	4
      003B7C 02                    5246 	.db	2
      003B7D 91                    5247 	.db	145
      003B7E 04                    5248 	.sleb128	4
      003B7F 54 49 4D 32 5F 49 43  5249 	.ascii "TIM2_IC3Prescaler"
             33 50 72 65 73 63 61
             6C 65 72
      003B90 00                    5250 	.db	0
      003B91 00 00 00 B2           5251 	.dw	0,178
      003B95 00                    5252 	.uleb128	0
      003B96 0A                    5253 	.uleb128	10
      003B97 00 00 0A B4           5254 	.dw	0,2740
      003B9B 54 49 4D 32 5F 47 65  5255 	.ascii "TIM2_GetCapture1"
             74 43 61 70 74 75 72
             65 31
      003BAB 00                    5256 	.db	0
      003BAC 00 00 A9 C5           5257 	.dw	0,(_TIM2_GetCapture1)
      003BB0 00 00 A9 F5           5258 	.dw	0,(XG$TIM2_GetCapture1$0$0+7)
      003BB4 01                    5259 	.db	1
      003BB5 00 00 0C BC           5260 	.dw	0,(Ldebug_loc_start+220)
      003BB9 00 00 00 C3           5261 	.dw	0,195
      003BBD 0B                    5262 	.uleb128	11
      003BBE 74 6D 70 63 63 72 31  5263 	.ascii "tmpccr1"
      003BC5 00                    5264 	.db	0
      003BC6 00 00 00 C3           5265 	.dw	0,195
      003BCA 07                    5266 	.uleb128	7
      003BCB 01                    5267 	.db	1
      003BCC 51                    5268 	.db	81
      003BCD 74 6D 70 63 63 72 31  5269 	.ascii "tmpccr1l"
             6C
      003BD5 00                    5270 	.db	0
      003BD6 00 00 00 B2           5271 	.dw	0,178
      003BDA 0B                    5272 	.uleb128	11
      003BDB 74 6D 70 63 63 72 31  5273 	.ascii "tmpccr1h"
             68
      003BE3 00                    5274 	.db	0
      003BE4 00 00 00 B2           5275 	.dw	0,178
      003BE8 00                    5276 	.uleb128	0
      003BE9 0A                    5277 	.uleb128	10
      003BEA 00 00 0B 07           5278 	.dw	0,2823
      003BEE 54 49 4D 32 5F 47 65  5279 	.ascii "TIM2_GetCapture2"
             74 43 61 70 74 75 72
             65 32
      003BFE 00                    5280 	.db	0
      003BFF 00 00 A9 F5           5281 	.dw	0,(_TIM2_GetCapture2)
      003C03 00 00 AA 25           5282 	.dw	0,(XG$TIM2_GetCapture2$0$0+7)
      003C07 01                    5283 	.db	1
      003C08 00 00 0C A8           5284 	.dw	0,(Ldebug_loc_start+200)
      003C0C 00 00 00 C3           5285 	.dw	0,195
      003C10 0B                    5286 	.uleb128	11
      003C11 74 6D 70 63 63 72 32  5287 	.ascii "tmpccr2"
      003C18 00                    5288 	.db	0
      003C19 00 00 00 C3           5289 	.dw	0,195
      003C1D 07                    5290 	.uleb128	7
      003C1E 01                    5291 	.db	1
      003C1F 51                    5292 	.db	81
      003C20 74 6D 70 63 63 72 32  5293 	.ascii "tmpccr2l"
             6C
      003C28 00                    5294 	.db	0
      003C29 00 00 00 B2           5295 	.dw	0,178
      003C2D 0B                    5296 	.uleb128	11
      003C2E 74 6D 70 63 63 72 32  5297 	.ascii "tmpccr2h"
             68
      003C36 00                    5298 	.db	0
      003C37 00 00 00 B2           5299 	.dw	0,178
      003C3B 00                    5300 	.uleb128	0
      003C3C 0A                    5301 	.uleb128	10
      003C3D 00 00 0B 5A           5302 	.dw	0,2906
      003C41 54 49 4D 32 5F 47 65  5303 	.ascii "TIM2_GetCapture3"
             74 43 61 70 74 75 72
             65 33
      003C51 00                    5304 	.db	0
      003C52 00 00 AA 25           5305 	.dw	0,(_TIM2_GetCapture3)
      003C56 00 00 AA 55           5306 	.dw	0,(XG$TIM2_GetCapture3$0$0+7)
      003C5A 01                    5307 	.db	1
      003C5B 00 00 0C 94           5308 	.dw	0,(Ldebug_loc_start+180)
      003C5F 00 00 00 C3           5309 	.dw	0,195
      003C63 0B                    5310 	.uleb128	11
      003C64 74 6D 70 63 63 72 33  5311 	.ascii "tmpccr3"
      003C6B 00                    5312 	.db	0
      003C6C 00 00 00 C3           5313 	.dw	0,195
      003C70 07                    5314 	.uleb128	7
      003C71 01                    5315 	.db	1
      003C72 51                    5316 	.db	81
      003C73 74 6D 70 63 63 72 33  5317 	.ascii "tmpccr3l"
             6C
      003C7B 00                    5318 	.db	0
      003C7C 00 00 00 B2           5319 	.dw	0,178
      003C80 0B                    5320 	.uleb128	11
      003C81 74 6D 70 63 63 72 33  5321 	.ascii "tmpccr3h"
             68
      003C89 00                    5322 	.db	0
      003C8A 00 00 00 B2           5323 	.dw	0,178
      003C8E 00                    5324 	.uleb128	0
      003C8F 0A                    5325 	.uleb128	10
      003C90 00 00 0B 91           5326 	.dw	0,2961
      003C94 54 49 4D 32 5F 47 65  5327 	.ascii "TIM2_GetCounter"
             74 43 6F 75 6E 74 65
             72
      003CA3 00                    5328 	.db	0
      003CA4 00 00 AA 55           5329 	.dw	0,(_TIM2_GetCounter)
      003CA8 00 00 AA 83           5330 	.dw	0,(XG$TIM2_GetCounter$0$0+7)
      003CAC 01                    5331 	.db	1
      003CAD 00 00 0C 80           5332 	.dw	0,(Ldebug_loc_start+160)
      003CB1 00 00 00 C3           5333 	.dw	0,195
      003CB5 07                    5334 	.uleb128	7
      003CB6 02                    5335 	.db	2
      003CB7 91                    5336 	.db	145
      003CB8 7C                    5337 	.sleb128	-4
      003CB9 74 6D 70 63 6E 74 72  5338 	.ascii "tmpcntr"
      003CC0 00                    5339 	.db	0
      003CC1 00 00 00 C3           5340 	.dw	0,195
      003CC5 00                    5341 	.uleb128	0
      003CC6 0C                    5342 	.uleb128	12
      003CC7 54 49 4D 32 5F 47 65  5343 	.ascii "TIM2_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      003CD8 00                    5344 	.db	0
      003CD9 00 00 AA 83           5345 	.dw	0,(_TIM2_GetPrescaler)
      003CDD 00 00 AA 9A           5346 	.dw	0,(XG$TIM2_GetPrescaler$0$0+7)
      003CE1 01                    5347 	.db	1
      003CE2 00 00 0C 6C           5348 	.dw	0,(Ldebug_loc_start+140)
      003CE6 00 00 00 B2           5349 	.dw	0,178
      003CEA 0A                    5350 	.uleb128	10
      003CEB 00 00 0C 2C           5351 	.dw	0,3116
      003CEF 54 49 4D 32 5F 47 65  5352 	.ascii "TIM2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      003D01 00                    5353 	.db	0
      003D02 00 00 AA 9A           5354 	.dw	0,(_TIM2_GetFlagStatus)
      003D06 00 00 AA D3           5355 	.dw	0,(XG$TIM2_GetFlagStatus$0$0+7)
      003D0A 01                    5356 	.db	1
      003D0B 00 00 0C 58           5357 	.dw	0,(Ldebug_loc_start+120)
      003D0F 00 00 00 B2           5358 	.dw	0,178
      003D13 04                    5359 	.uleb128	4
      003D14 02                    5360 	.db	2
      003D15 91                    5361 	.db	145
      003D16 04                    5362 	.sleb128	4
      003D17 54 49 4D 32 5F 46 4C  5363 	.ascii "TIM2_FLAG"
             41 47
      003D20 00                    5364 	.db	0
      003D21 00 00 00 C3           5365 	.dw	0,195
      003D25 06                    5366 	.uleb128	6
      003D26 06                    5367 	.uleb128	6
      003D27 07                    5368 	.uleb128	7
      003D28 01                    5369 	.db	1
      003D29 51                    5370 	.db	81
      003D2A 62 69 74 73 74 61 74  5371 	.ascii "bitstatus"
             75 73
      003D33 00                    5372 	.db	0
      003D34 00 00 00 B2           5373 	.dw	0,178
      003D38 07                    5374 	.uleb128	7
      003D39 02                    5375 	.db	2
      003D3A 91                    5376 	.db	145
      003D3B 7C                    5377 	.sleb128	-4
      003D3C 74 69 6D 32 5F 66 6C  5378 	.ascii "tim2_flag_l"
             61 67 5F 6C
      003D47 00                    5379 	.db	0
      003D48 00 00 00 B2           5380 	.dw	0,178
      003D4C 07                    5381 	.uleb128	7
      003D4D 02                    5382 	.db	2
      003D4E 91                    5383 	.db	145
      003D4F 7B                    5384 	.sleb128	-5
      003D50 74 69 6D 32 5F 66 6C  5385 	.ascii "tim2_flag_h"
             61 67 5F 68
      003D5B 00                    5386 	.db	0
      003D5C 00 00 00 B2           5387 	.dw	0,178
      003D60 00                    5388 	.uleb128	0
      003D61 03                    5389 	.uleb128	3
      003D62 00 00 0C 60           5390 	.dw	0,3168
      003D66 54 49 4D 32 5F 43 6C  5391 	.ascii "TIM2_ClearFlag"
             65 61 72 46 6C 61 67
      003D74 00                    5392 	.db	0
      003D75 00 00 AA D3           5393 	.dw	0,(_TIM2_ClearFlag)
      003D79 00 00 AA FA           5394 	.dw	0,(XG$TIM2_ClearFlag$0$0+7)
      003D7D 01                    5395 	.db	1
      003D7E 00 00 0C 44           5396 	.dw	0,(Ldebug_loc_start+100)
      003D82 04                    5397 	.uleb128	4
      003D83 02                    5398 	.db	2
      003D84 91                    5399 	.db	145
      003D85 04                    5400 	.sleb128	4
      003D86 54 49 4D 32 5F 46 4C  5401 	.ascii "TIM2_FLAG"
             41 47
      003D8F 00                    5402 	.db	0
      003D90 00 00 00 C3           5403 	.dw	0,195
      003D94 00                    5404 	.uleb128	0
      003D95 0A                    5405 	.uleb128	10
      003D96 00 00 0C D6           5406 	.dw	0,3286
      003D9A 54 49 4D 32 5F 47 65  5407 	.ascii "TIM2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      003DAA 00                    5408 	.db	0
      003DAB 00 00 AA FA           5409 	.dw	0,(_TIM2_GetITStatus)
      003DAF 00 00 AB 2A           5410 	.dw	0,(XG$TIM2_GetITStatus$0$0+7)
      003DB3 01                    5411 	.db	1
      003DB4 00 00 0C 30           5412 	.dw	0,(Ldebug_loc_start+80)
      003DB8 00 00 00 B2           5413 	.dw	0,178
      003DBC 04                    5414 	.uleb128	4
      003DBD 02                    5415 	.db	2
      003DBE 91                    5416 	.db	145
      003DBF 04                    5417 	.sleb128	4
      003DC0 54 49 4D 32 5F 49 54  5418 	.ascii "TIM2_IT"
      003DC7 00                    5419 	.db	0
      003DC8 00 00 00 B2           5420 	.dw	0,178
      003DCC 06                    5421 	.uleb128	6
      003DCD 06                    5422 	.uleb128	6
      003DCE 07                    5423 	.uleb128	7
      003DCF 01                    5424 	.db	1
      003DD0 51                    5425 	.db	81
      003DD1 62 69 74 73 74 61 74  5426 	.ascii "bitstatus"
             75 73
      003DDA 00                    5427 	.db	0
      003DDB 00 00 00 B2           5428 	.dw	0,178
      003DDF 07                    5429 	.uleb128	7
      003DE0 02                    5430 	.db	2
      003DE1 91                    5431 	.db	145
      003DE2 7F                    5432 	.sleb128	-1
      003DE3 54 49 4D 32 5F 69 74  5433 	.ascii "TIM2_itStatus"
             53 74 61 74 75 73
      003DF0 00                    5434 	.db	0
      003DF1 00 00 00 B2           5435 	.dw	0,178
      003DF5 07                    5436 	.uleb128	7
      003DF6 01                    5437 	.db	1
      003DF7 51                    5438 	.db	81
      003DF8 54 49 4D 32 5F 69 74  5439 	.ascii "TIM2_itEnable"
             45 6E 61 62 6C 65
      003E05 00                    5440 	.db	0
      003E06 00 00 00 B2           5441 	.dw	0,178
      003E0A 00                    5442 	.uleb128	0
      003E0B 03                    5443 	.uleb128	3
      003E0C 00 00 0D 10           5444 	.dw	0,3344
      003E10 54 49 4D 32 5F 43 6C  5445 	.ascii "TIM2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      003E26 00                    5446 	.db	0
      003E27 00 00 AB 2A           5447 	.dw	0,(_TIM2_ClearITPendingBit)
      003E2B 00 00 AB 44           5448 	.dw	0,(XG$TIM2_ClearITPendingBit$0$0+7)
      003E2F 01                    5449 	.db	1
      003E30 00 00 0C 1C           5450 	.dw	0,(Ldebug_loc_start+60)
      003E34 04                    5451 	.uleb128	4
      003E35 02                    5452 	.db	2
      003E36 91                    5453 	.db	145
      003E37 04                    5454 	.sleb128	4
      003E38 54 49 4D 32 5F 49 54  5455 	.ascii "TIM2_IT"
      003E3F 00                    5456 	.db	0
      003E40 00 00 00 B2           5457 	.dw	0,178
      003E44 00                    5458 	.uleb128	0
      003E45 03                    5459 	.uleb128	3
      003E46 00 00 0D 77           5460 	.dw	0,3447
      003E4A 54 49 31 5F 43 6F 6E  5461 	.ascii "TI1_Config"
             66 69 67
      003E54 00                    5462 	.db	0
      003E55 00 00 AB 44           5463 	.dw	0,(_TI1_Config)
      003E59 00 00 AB 8A           5464 	.dw	0,(XFstm8s_tim2$TI1_Config$0$0+7)
      003E5D 00                    5465 	.db	0
      003E5E 00 00 0C 08           5466 	.dw	0,(Ldebug_loc_start+40)
      003E62 04                    5467 	.uleb128	4
      003E63 02                    5468 	.db	2
      003E64 91                    5469 	.db	145
      003E65 04                    5470 	.sleb128	4
      003E66 54 49 4D 32 5F 49 43  5471 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      003E75 00                    5472 	.db	0
      003E76 00 00 00 B2           5473 	.dw	0,178
      003E7A 04                    5474 	.uleb128	4
      003E7B 02                    5475 	.db	2
      003E7C 91                    5476 	.db	145
      003E7D 05                    5477 	.sleb128	5
      003E7E 54 49 4D 32 5F 49 43  5478 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      003E8E 00                    5479 	.db	0
      003E8F 00 00 00 B2           5480 	.dw	0,178
      003E93 04                    5481 	.uleb128	4
      003E94 02                    5482 	.db	2
      003E95 91                    5483 	.db	145
      003E96 06                    5484 	.sleb128	6
      003E97 54 49 4D 32 5F 49 43  5485 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      003EA4 00                    5486 	.db	0
      003EA5 00 00 00 B2           5487 	.dw	0,178
      003EA9 06                    5488 	.uleb128	6
      003EAA 06                    5489 	.uleb128	6
      003EAB 00                    5490 	.uleb128	0
      003EAC 03                    5491 	.uleb128	3
      003EAD 00 00 0D DE           5492 	.dw	0,3550
      003EB1 54 49 32 5F 43 6F 6E  5493 	.ascii "TI2_Config"
             66 69 67
      003EBB 00                    5494 	.db	0
      003EBC 00 00 AB 8A           5495 	.dw	0,(_TI2_Config)
      003EC0 00 00 AB D6           5496 	.dw	0,(XFstm8s_tim2$TI2_Config$0$0+7)
      003EC4 00                    5497 	.db	0
      003EC5 00 00 0B F4           5498 	.dw	0,(Ldebug_loc_start+20)
      003EC9 04                    5499 	.uleb128	4
      003ECA 02                    5500 	.db	2
      003ECB 91                    5501 	.db	145
      003ECC 04                    5502 	.sleb128	4
      003ECD 54 49 4D 32 5F 49 43  5503 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      003EDC 00                    5504 	.db	0
      003EDD 00 00 00 B2           5505 	.dw	0,178
      003EE1 04                    5506 	.uleb128	4
      003EE2 02                    5507 	.db	2
      003EE3 91                    5508 	.db	145
      003EE4 05                    5509 	.sleb128	5
      003EE5 54 49 4D 32 5F 49 43  5510 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      003EF5 00                    5511 	.db	0
      003EF6 00 00 00 B2           5512 	.dw	0,178
      003EFA 04                    5513 	.uleb128	4
      003EFB 02                    5514 	.db	2
      003EFC 91                    5515 	.db	145
      003EFD 06                    5516 	.sleb128	6
      003EFE 54 49 4D 32 5F 49 43  5517 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      003F0B 00                    5518 	.db	0
      003F0C 00 00 00 B2           5519 	.dw	0,178
      003F10 06                    5520 	.uleb128	6
      003F11 06                    5521 	.uleb128	6
      003F12 00                    5522 	.uleb128	0
      003F13 0D                    5523 	.uleb128	13
      003F14 54 49 33 5F 43 6F 6E  5524 	.ascii "TI3_Config"
             66 69 67
      003F1E 00                    5525 	.db	0
      003F1F 00 00 AB D6           5526 	.dw	0,(_TI3_Config)
      003F23 00 00 AC 1C           5527 	.dw	0,(XFstm8s_tim2$TI3_Config$0$0+7)
      003F27 00                    5528 	.db	0
      003F28 00 00 0B E0           5529 	.dw	0,(Ldebug_loc_start)
      003F2C 04                    5530 	.uleb128	4
      003F2D 02                    5531 	.db	2
      003F2E 91                    5532 	.db	145
      003F2F 04                    5533 	.sleb128	4
      003F30 54 49 4D 32 5F 49 43  5534 	.ascii "TIM2_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      003F3F 00                    5535 	.db	0
      003F40 00 00 00 B2           5536 	.dw	0,178
      003F44 04                    5537 	.uleb128	4
      003F45 02                    5538 	.db	2
      003F46 91                    5539 	.db	145
      003F47 05                    5540 	.sleb128	5
      003F48 54 49 4D 32 5F 49 43  5541 	.ascii "TIM2_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      003F58 00                    5542 	.db	0
      003F59 00 00 00 B2           5543 	.dw	0,178
      003F5D 04                    5544 	.uleb128	4
      003F5E 02                    5545 	.db	2
      003F5F 91                    5546 	.db	145
      003F60 06                    5547 	.sleb128	6
      003F61 54 49 4D 32 5F 49 43  5548 	.ascii "TIM2_ICFilter"
             46 69 6C 74 65 72
      003F6E 00                    5549 	.db	0
      003F6F 00 00 00 B2           5550 	.dw	0,178
      003F73 06                    5551 	.uleb128	6
      003F74 06                    5552 	.uleb128	6
      003F75 00                    5553 	.uleb128	0
      003F76 00                    5554 	.uleb128	0
      003F77 00                    5555 	.uleb128	0
      003F78 00                    5556 	.uleb128	0
      003F79                       5557 Ldebug_info_end:
                                   5558 
                                   5559 	.area .debug_pubnames (NOLOAD)
      000E64 00 00 03 D0           5560 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000E68                       5561 Ldebug_pubnames_start:
      000E68 00 02                 5562 	.dw	2
      000E6A 00 00 31 35           5563 	.dw	0,(Ldebug_info_start-4)
      000E6E 00 00 0E 44           5564 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000E72 00 00 00 48           5565 	.dw	0,72
      000E76 54 49 4D 32 5F 44 65  5566 	.ascii "TIM2_DeInit"
             49 6E 69 74
      000E81 00                    5567 	.db	0
      000E82 00 00 00 62           5568 	.dw	0,98
      000E86 54 49 4D 32 5F 54 69  5569 	.ascii "TIM2_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      000E97 00                    5570 	.db	0
      000E98 00 00 00 D3           5571 	.dw	0,211
      000E9C 54 49 4D 32 5F 4F 43  5572 	.ascii "TIM2_OC1Init"
             31 49 6E 69 74
      000EA8 00                    5573 	.db	0
      000EA9 00 00 01 4B           5574 	.dw	0,331
      000EAD 54 49 4D 32 5F 4F 43  5575 	.ascii "TIM2_OC2Init"
             32 49 6E 69 74
      000EB9 00                    5576 	.db	0
      000EBA 00 00 01 C3           5577 	.dw	0,451
      000EBE 54 49 4D 32 5F 4F 43  5578 	.ascii "TIM2_OC3Init"
             33 49 6E 69 74
      000ECA 00                    5579 	.db	0
      000ECB 00 00 02 3B           5580 	.dw	0,571
      000ECF 54 49 4D 32 5F 49 43  5581 	.ascii "TIM2_ICInit"
             49 6E 69 74
      000EDA 00                    5582 	.db	0
      000EDB 00 00 02 D2           5583 	.dw	0,722
      000EDF 54 49 4D 32 5F 50 57  5584 	.ascii "TIM2_PWMIConfig"
             4D 49 43 6F 6E 66 69
             67
      000EEE 00                    5585 	.db	0
      000EEF 00 00 03 97           5586 	.dw	0,919
      000EF3 54 49 4D 32 5F 43 6D  5587 	.ascii "TIM2_Cmd"
             64
      000EFB 00                    5588 	.db	0
      000EFC 00 00 03 C6           5589 	.dw	0,966
      000F00 54 49 4D 32 5F 49 54  5590 	.ascii "TIM2_ITConfig"
             43 6F 6E 66 69 67
      000F0D 00                    5591 	.db	0
      000F0E 00 00 04 0A           5592 	.dw	0,1034
      000F12 54 49 4D 32 5F 55 70  5593 	.ascii "TIM2_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      000F2A 00                    5594 	.db	0
      000F2B 00 00 04 49           5595 	.dw	0,1097
      000F2F 54 49 4D 32 5F 55 70  5596 	.ascii "TIM2_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      000F47 00                    5597 	.db	0
      000F48 00 00 04 91           5598 	.dw	0,1169
      000F4C 54 49 4D 32 5F 53 65  5599 	.ascii "TIM2_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      000F63 00                    5600 	.db	0
      000F64 00 00 04 D2           5601 	.dw	0,1234
      000F68 54 49 4D 32 5F 50 72  5602 	.ascii "TIM2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      000F7C 00                    5603 	.db	0
      000F7D 00 00 05 27           5604 	.dw	0,1319
      000F81 54 49 4D 32 5F 46 6F  5605 	.ascii "TIM2_ForcedOC1Config"
             72 63 65 64 4F 43 31
             43 6F 6E 66 69 67
      000F95 00                    5606 	.db	0
      000F96 00 00 05 69           5607 	.dw	0,1385
      000F9A 54 49 4D 32 5F 46 6F  5608 	.ascii "TIM2_ForcedOC2Config"
             72 63 65 64 4F 43 32
             43 6F 6E 66 69 67
      000FAE 00                    5609 	.db	0
      000FAF 00 00 05 AB           5610 	.dw	0,1451
      000FB3 54 49 4D 32 5F 46 6F  5611 	.ascii "TIM2_ForcedOC3Config"
             72 63 65 64 4F 43 33
             43 6F 6E 66 69 67
      000FC7 00                    5612 	.db	0
      000FC8 00 00 05 ED           5613 	.dw	0,1517
      000FCC 54 49 4D 32 5F 41 52  5614 	.ascii "TIM2_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000FE1 00                    5615 	.db	0
      000FE2 00 00 06 29           5616 	.dw	0,1577
      000FE6 54 49 4D 32 5F 4F 43  5617 	.ascii "TIM2_OC1PreloadConfig"
             31 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000FFB 00                    5618 	.db	0
      000FFC 00 00 06 65           5619 	.dw	0,1637
      001000 54 49 4D 32 5F 4F 43  5620 	.ascii "TIM2_OC2PreloadConfig"
             32 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      001015 00                    5621 	.db	0
      001016 00 00 06 A1           5622 	.dw	0,1697
      00101A 54 49 4D 32 5F 4F 43  5623 	.ascii "TIM2_OC3PreloadConfig"
             33 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      00102F 00                    5624 	.db	0
      001030 00 00 06 DD           5625 	.dw	0,1757
      001034 54 49 4D 32 5F 47 65  5626 	.ascii "TIM2_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      001046 00                    5627 	.db	0
      001047 00 00 07 1C           5628 	.dw	0,1820
      00104B 54 49 4D 32 5F 4F 43  5629 	.ascii "TIM2_OC1PolarityConfig"
             31 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      001061 00                    5630 	.db	0
      001062 00 00 07 60           5631 	.dw	0,1888
      001066 54 49 4D 32 5F 4F 43  5632 	.ascii "TIM2_OC2PolarityConfig"
             32 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      00107C 00                    5633 	.db	0
      00107D 00 00 07 A4           5634 	.dw	0,1956
      001081 54 49 4D 32 5F 4F 43  5635 	.ascii "TIM2_OC3PolarityConfig"
             33 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      001097 00                    5636 	.db	0
      001098 00 00 07 E8           5637 	.dw	0,2024
      00109C 54 49 4D 32 5F 43 43  5638 	.ascii "TIM2_CCxCmd"
             78 43 6D 64
      0010A7 00                    5639 	.db	0
      0010A8 00 00 08 41           5640 	.dw	0,2113
      0010AC 54 49 4D 32 5F 53 65  5641 	.ascii "TIM2_SelectOCxM"
             6C 65 63 74 4F 43 78
             4D
      0010BB 00                    5642 	.db	0
      0010BC 00 00 08 90           5643 	.dw	0,2192
      0010C0 54 49 4D 32 5F 53 65  5644 	.ascii "TIM2_SetCounter"
             74 43 6F 75 6E 74 65
             72
      0010CF 00                    5645 	.db	0
      0010D0 00 00 08 C3           5646 	.dw	0,2243
      0010D4 54 49 4D 32 5F 53 65  5647 	.ascii "TIM2_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      0010E6 00                    5648 	.db	0
      0010E7 00 00 08 FC           5649 	.dw	0,2300
      0010EB 54 49 4D 32 5F 53 65  5650 	.ascii "TIM2_SetCompare1"
             74 43 6F 6D 70 61 72
             65 31
      0010FB 00                    5651 	.db	0
      0010FC 00 00 09 31           5652 	.dw	0,2353
      001100 54 49 4D 32 5F 53 65  5653 	.ascii "TIM2_SetCompare2"
             74 43 6F 6D 70 61 72
             65 32
      001110 00                    5654 	.db	0
      001111 00 00 09 66           5655 	.dw	0,2406
      001115 54 49 4D 32 5F 53 65  5656 	.ascii "TIM2_SetCompare3"
             74 43 6F 6D 70 61 72
             65 33
      001125 00                    5657 	.db	0
      001126 00 00 09 9B           5658 	.dw	0,2459
      00112A 54 49 4D 32 5F 53 65  5659 	.ascii "TIM2_SetIC1Prescaler"
             74 49 43 31 50 72 65
             73 63 61 6C 65 72
      00113E 00                    5660 	.db	0
      00113F 00 00 09 DD           5661 	.dw	0,2525
      001143 54 49 4D 32 5F 53 65  5662 	.ascii "TIM2_SetIC2Prescaler"
             74 49 43 32 50 72 65
             73 63 61 6C 65 72
      001157 00                    5663 	.db	0
      001158 00 00 0A 1F           5664 	.dw	0,2591
      00115C 54 49 4D 32 5F 53 65  5665 	.ascii "TIM2_SetIC3Prescaler"
             74 49 43 33 50 72 65
             73 63 61 6C 65 72
      001170 00                    5666 	.db	0
      001171 00 00 0A 61           5667 	.dw	0,2657
      001175 54 49 4D 32 5F 47 65  5668 	.ascii "TIM2_GetCapture1"
             74 43 61 70 74 75 72
             65 31
      001185 00                    5669 	.db	0
      001186 00 00 0A B4           5670 	.dw	0,2740
      00118A 54 49 4D 32 5F 47 65  5671 	.ascii "TIM2_GetCapture2"
             74 43 61 70 74 75 72
             65 32
      00119A 00                    5672 	.db	0
      00119B 00 00 0B 07           5673 	.dw	0,2823
      00119F 54 49 4D 32 5F 47 65  5674 	.ascii "TIM2_GetCapture3"
             74 43 61 70 74 75 72
             65 33
      0011AF 00                    5675 	.db	0
      0011B0 00 00 0B 5A           5676 	.dw	0,2906
      0011B4 54 49 4D 32 5F 47 65  5677 	.ascii "TIM2_GetCounter"
             74 43 6F 75 6E 74 65
             72
      0011C3 00                    5678 	.db	0
      0011C4 00 00 0B 91           5679 	.dw	0,2961
      0011C8 54 49 4D 32 5F 47 65  5680 	.ascii "TIM2_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      0011D9 00                    5681 	.db	0
      0011DA 00 00 0B B5           5682 	.dw	0,2997
      0011DE 54 49 4D 32 5F 47 65  5683 	.ascii "TIM2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      0011F0 00                    5684 	.db	0
      0011F1 00 00 0C 2C           5685 	.dw	0,3116
      0011F5 54 49 4D 32 5F 43 6C  5686 	.ascii "TIM2_ClearFlag"
             65 61 72 46 6C 61 67
      001203 00                    5687 	.db	0
      001204 00 00 0C 60           5688 	.dw	0,3168
      001208 54 49 4D 32 5F 47 65  5689 	.ascii "TIM2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      001218 00                    5690 	.db	0
      001219 00 00 0C D6           5691 	.dw	0,3286
      00121D 54 49 4D 32 5F 43 6C  5692 	.ascii "TIM2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      001233 00                    5693 	.db	0
      001234 00 00 00 00           5694 	.dw	0,0
      001238                       5695 Ldebug_pubnames_end:
                                   5696 
                                   5697 	.area .debug_frame (NOLOAD)
      000090 00 00                 5698 	.dw	0
      000092 00 0E                 5699 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      000094                       5700 Ldebug_CIE_start:
      000094 FF FF                 5701 	.dw	0xffff
      000096 FF FF                 5702 	.dw	0xffff
      000098 01                    5703 	.db	1
      000099 00                    5704 	.db	0
      00009A 01                    5705 	.uleb128	1
      00009B 01                    5706 	.sleb128	1
      00009C 00                    5707 	.db	0
      00009D 0C                    5708 	.db	12
      00009E 00                    5709 	.uleb128	0
      00009F 00                    5710 	.uleb128	0
      0000A0 80                    5711 	.db	128
      0000A1 00                    5712 	.uleb128	0
      0000A2                       5713 Ldebug_CIE_end:
