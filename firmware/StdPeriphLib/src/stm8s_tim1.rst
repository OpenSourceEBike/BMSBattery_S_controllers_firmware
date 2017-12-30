                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_DeInit
                                     12 	.globl _TIM1_TimeBaseInit
                                     13 	.globl _TIM1_OC1Init
                                     14 	.globl _TIM1_OC2Init
                                     15 	.globl _TIM1_OC3Init
                                     16 	.globl _TIM1_OC4Init
                                     17 	.globl _TIM1_BDTRConfig
                                     18 	.globl _TIM1_ICInit
                                     19 	.globl _TIM1_PWMIConfig
                                     20 	.globl _TIM1_Cmd
                                     21 	.globl _TIM1_CtrlPWMOutputs
                                     22 	.globl _TIM1_ITConfig
                                     23 	.globl _TIM1_InternalClockConfig
                                     24 	.globl _TIM1_ETRClockMode1Config
                                     25 	.globl _TIM1_ETRClockMode2Config
                                     26 	.globl _TIM1_ETRConfig
                                     27 	.globl _TIM1_TIxExternalClockConfig
                                     28 	.globl _TIM1_SelectInputTrigger
                                     29 	.globl _TIM1_UpdateDisableConfig
                                     30 	.globl _TIM1_UpdateRequestConfig
                                     31 	.globl _TIM1_SelectHallSensor
                                     32 	.globl _TIM1_SelectOnePulseMode
                                     33 	.globl _TIM1_SelectOutputTrigger
                                     34 	.globl _TIM1_SelectSlaveMode
                                     35 	.globl _TIM1_SelectMasterSlaveMode
                                     36 	.globl _TIM1_EncoderInterfaceConfig
                                     37 	.globl _TIM1_PrescalerConfig
                                     38 	.globl _TIM1_CounterModeConfig
                                     39 	.globl _TIM1_ForcedOC1Config
                                     40 	.globl _TIM1_ForcedOC2Config
                                     41 	.globl _TIM1_ForcedOC3Config
                                     42 	.globl _TIM1_ForcedOC4Config
                                     43 	.globl _TIM1_ARRPreloadConfig
                                     44 	.globl _TIM1_SelectCOM
                                     45 	.globl _TIM1_CCPreloadControl
                                     46 	.globl _TIM1_OC1PreloadConfig
                                     47 	.globl _TIM1_OC2PreloadConfig
                                     48 	.globl _TIM1_OC3PreloadConfig
                                     49 	.globl _TIM1_OC4PreloadConfig
                                     50 	.globl _TIM1_OC1FastConfig
                                     51 	.globl _TIM1_OC2FastConfig
                                     52 	.globl _TIM1_OC3FastConfig
                                     53 	.globl _TIM1_OC4FastConfig
                                     54 	.globl _TIM1_GenerateEvent
                                     55 	.globl _TIM1_OC1PolarityConfig
                                     56 	.globl _TIM1_OC1NPolarityConfig
                                     57 	.globl _TIM1_OC2PolarityConfig
                                     58 	.globl _TIM1_OC2NPolarityConfig
                                     59 	.globl _TIM1_OC3PolarityConfig
                                     60 	.globl _TIM1_OC3NPolarityConfig
                                     61 	.globl _TIM1_OC4PolarityConfig
                                     62 	.globl _TIM1_CCxCmd
                                     63 	.globl _TIM1_CCxNCmd
                                     64 	.globl _TIM1_SelectOCxM
                                     65 	.globl _TIM1_SetCounter
                                     66 	.globl _TIM1_SetAutoreload
                                     67 	.globl _TIM1_SetCompare1
                                     68 	.globl _TIM1_SetCompare2
                                     69 	.globl _TIM1_SetCompare3
                                     70 	.globl _TIM1_SetCompare4
                                     71 	.globl _TIM1_SetIC1Prescaler
                                     72 	.globl _TIM1_SetIC2Prescaler
                                     73 	.globl _TIM1_SetIC3Prescaler
                                     74 	.globl _TIM1_SetIC4Prescaler
                                     75 	.globl _TIM1_GetCapture1
                                     76 	.globl _TIM1_GetCapture2
                                     77 	.globl _TIM1_GetCapture3
                                     78 	.globl _TIM1_GetCapture4
                                     79 	.globl _TIM1_GetCounter
                                     80 	.globl _TIM1_GetPrescaler
                                     81 	.globl _TIM1_GetFlagStatus
                                     82 	.globl _TIM1_ClearFlag
                                     83 	.globl _TIM1_GetITStatus
                                     84 	.globl _TIM1_ClearITPendingBit
                                     85 ;--------------------------------------------------------
                                     86 ; ram data
                                     87 ;--------------------------------------------------------
                                     88 	.area DATA
                                     89 ;--------------------------------------------------------
                                     90 ; ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area INITIALIZED
                                     93 ;--------------------------------------------------------
                                     94 ; absolute external ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area DABS (ABS)
                                     97 ;--------------------------------------------------------
                                     98 ; global & static initialisations
                                     99 ;--------------------------------------------------------
                                    100 	.area HOME
                                    101 	.area GSINIT
                                    102 	.area GSFINAL
                                    103 	.area GSINIT
                                    104 ;--------------------------------------------------------
                                    105 ; Home
                                    106 ;--------------------------------------------------------
                                    107 	.area HOME
                                    108 	.area HOME
                                    109 ;--------------------------------------------------------
                                    110 ; code
                                    111 ;--------------------------------------------------------
                                    112 	.area CODE
                           000000   113 	Sstm8s_tim1$TIM1_DeInit$0 ==.
                                    114 ;	StdPeriphLib/src/stm8s_tim1.c: 58: void TIM1_DeInit(void)
                                    115 ;	-----------------------------------------
                                    116 ;	 function TIM1_DeInit
                                    117 ;	-----------------------------------------
      009352                        118 _TIM1_DeInit:
      009352 3B 01 A5         [ 1]  119 	push	_fp_+1
      009355 3B 01 A4         [ 1]  120 	push	_fp_
      009358 90 96            [ 1]  121 	ldw	y, sp
      00935A 90 CF 01 A4      [ 2]  122 	ldw	_fp_, y
                           00000C   123 	Sstm8s_tim1$TIM1_DeInit$1 ==.
                           00000C   124 	Sstm8s_tim1$TIM1_DeInit$2 ==.
                                    125 ;	StdPeriphLib/src/stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      00935E 35 00 52 50      [ 1]  126 	mov	0x5250+0, #0x00
                           000010   127 	Sstm8s_tim1$TIM1_DeInit$3 ==.
                                    128 ;	StdPeriphLib/src/stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      009362 35 00 52 51      [ 1]  129 	mov	0x5251+0, #0x00
                           000014   130 	Sstm8s_tim1$TIM1_DeInit$4 ==.
                                    131 ;	StdPeriphLib/src/stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      009366 35 00 52 52      [ 1]  132 	mov	0x5252+0, #0x00
                           000018   133 	Sstm8s_tim1$TIM1_DeInit$5 ==.
                                    134 ;	StdPeriphLib/src/stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      00936A 35 00 52 53      [ 1]  135 	mov	0x5253+0, #0x00
                           00001C   136 	Sstm8s_tim1$TIM1_DeInit$6 ==.
                                    137 ;	StdPeriphLib/src/stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
      00936E 35 00 52 54      [ 1]  138 	mov	0x5254+0, #0x00
                           000020   139 	Sstm8s_tim1$TIM1_DeInit$7 ==.
                                    140 ;	StdPeriphLib/src/stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      009372 35 00 52 56      [ 1]  141 	mov	0x5256+0, #0x00
                           000024   142 	Sstm8s_tim1$TIM1_DeInit$8 ==.
                                    143 ;	StdPeriphLib/src/stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      009376 35 00 52 5C      [ 1]  144 	mov	0x525c+0, #0x00
                           000028   145 	Sstm8s_tim1$TIM1_DeInit$9 ==.
                                    146 ;	StdPeriphLib/src/stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      00937A 35 00 52 5D      [ 1]  147 	mov	0x525d+0, #0x00
                           00002C   148 	Sstm8s_tim1$TIM1_DeInit$10 ==.
                                    149 ;	StdPeriphLib/src/stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
      00937E 35 01 52 58      [ 1]  150 	mov	0x5258+0, #0x01
                           000030   151 	Sstm8s_tim1$TIM1_DeInit$11 ==.
                                    152 ;	StdPeriphLib/src/stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
      009382 35 01 52 59      [ 1]  153 	mov	0x5259+0, #0x01
                           000034   154 	Sstm8s_tim1$TIM1_DeInit$12 ==.
                                    155 ;	StdPeriphLib/src/stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
      009386 35 01 52 5A      [ 1]  156 	mov	0x525a+0, #0x01
                           000038   157 	Sstm8s_tim1$TIM1_DeInit$13 ==.
                                    158 ;	StdPeriphLib/src/stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
      00938A 35 01 52 5B      [ 1]  159 	mov	0x525b+0, #0x01
                           00003C   160 	Sstm8s_tim1$TIM1_DeInit$14 ==.
                                    161 ;	StdPeriphLib/src/stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      00938E 35 00 52 5C      [ 1]  162 	mov	0x525c+0, #0x00
                           000040   163 	Sstm8s_tim1$TIM1_DeInit$15 ==.
                                    164 ;	StdPeriphLib/src/stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      009392 35 00 52 5D      [ 1]  165 	mov	0x525d+0, #0x00
                           000044   166 	Sstm8s_tim1$TIM1_DeInit$16 ==.
                                    167 ;	StdPeriphLib/src/stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      009396 35 00 52 58      [ 1]  168 	mov	0x5258+0, #0x00
                           000048   169 	Sstm8s_tim1$TIM1_DeInit$17 ==.
                                    170 ;	StdPeriphLib/src/stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      00939A 35 00 52 59      [ 1]  171 	mov	0x5259+0, #0x00
                           00004C   172 	Sstm8s_tim1$TIM1_DeInit$18 ==.
                                    173 ;	StdPeriphLib/src/stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      00939E 35 00 52 5A      [ 1]  174 	mov	0x525a+0, #0x00
                           000050   175 	Sstm8s_tim1$TIM1_DeInit$19 ==.
                                    176 ;	StdPeriphLib/src/stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      0093A2 35 00 52 5B      [ 1]  177 	mov	0x525b+0, #0x00
                           000054   178 	Sstm8s_tim1$TIM1_DeInit$20 ==.
                                    179 ;	StdPeriphLib/src/stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      0093A6 35 00 52 5E      [ 1]  180 	mov	0x525e+0, #0x00
                           000058   181 	Sstm8s_tim1$TIM1_DeInit$21 ==.
                                    182 ;	StdPeriphLib/src/stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      0093AA 35 00 52 5F      [ 1]  183 	mov	0x525f+0, #0x00
                           00005C   184 	Sstm8s_tim1$TIM1_DeInit$22 ==.
                                    185 ;	StdPeriphLib/src/stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      0093AE 35 00 52 60      [ 1]  186 	mov	0x5260+0, #0x00
                           000060   187 	Sstm8s_tim1$TIM1_DeInit$23 ==.
                                    188 ;	StdPeriphLib/src/stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      0093B2 35 00 52 61      [ 1]  189 	mov	0x5261+0, #0x00
                           000064   190 	Sstm8s_tim1$TIM1_DeInit$24 ==.
                                    191 ;	StdPeriphLib/src/stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      0093B6 35 FF 52 62      [ 1]  192 	mov	0x5262+0, #0xff
                           000068   193 	Sstm8s_tim1$TIM1_DeInit$25 ==.
                                    194 ;	StdPeriphLib/src/stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      0093BA 35 FF 52 63      [ 1]  195 	mov	0x5263+0, #0xff
                           00006C   196 	Sstm8s_tim1$TIM1_DeInit$26 ==.
                                    197 ;	StdPeriphLib/src/stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      0093BE 35 00 52 65      [ 1]  198 	mov	0x5265+0, #0x00
                           000070   199 	Sstm8s_tim1$TIM1_DeInit$27 ==.
                                    200 ;	StdPeriphLib/src/stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      0093C2 35 00 52 66      [ 1]  201 	mov	0x5266+0, #0x00
                           000074   202 	Sstm8s_tim1$TIM1_DeInit$28 ==.
                                    203 ;	StdPeriphLib/src/stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      0093C6 35 00 52 67      [ 1]  204 	mov	0x5267+0, #0x00
                           000078   205 	Sstm8s_tim1$TIM1_DeInit$29 ==.
                                    206 ;	StdPeriphLib/src/stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      0093CA 35 00 52 68      [ 1]  207 	mov	0x5268+0, #0x00
                           00007C   208 	Sstm8s_tim1$TIM1_DeInit$30 ==.
                                    209 ;	StdPeriphLib/src/stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      0093CE 35 00 52 69      [ 1]  210 	mov	0x5269+0, #0x00
                           000080   211 	Sstm8s_tim1$TIM1_DeInit$31 ==.
                                    212 ;	StdPeriphLib/src/stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      0093D2 35 00 52 6A      [ 1]  213 	mov	0x526a+0, #0x00
                           000084   214 	Sstm8s_tim1$TIM1_DeInit$32 ==.
                                    215 ;	StdPeriphLib/src/stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      0093D6 35 00 52 6B      [ 1]  216 	mov	0x526b+0, #0x00
                           000088   217 	Sstm8s_tim1$TIM1_DeInit$33 ==.
                                    218 ;	StdPeriphLib/src/stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      0093DA 35 00 52 6C      [ 1]  219 	mov	0x526c+0, #0x00
                           00008C   220 	Sstm8s_tim1$TIM1_DeInit$34 ==.
                                    221 ;	StdPeriphLib/src/stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      0093DE 35 00 52 6F      [ 1]  222 	mov	0x526f+0, #0x00
                           000090   223 	Sstm8s_tim1$TIM1_DeInit$35 ==.
                                    224 ;	StdPeriphLib/src/stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      0093E2 35 01 52 57      [ 1]  225 	mov	0x5257+0, #0x01
                           000094   226 	Sstm8s_tim1$TIM1_DeInit$36 ==.
                                    227 ;	StdPeriphLib/src/stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      0093E6 35 00 52 6E      [ 1]  228 	mov	0x526e+0, #0x00
                           000098   229 	Sstm8s_tim1$TIM1_DeInit$37 ==.
                                    230 ;	StdPeriphLib/src/stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      0093EA 35 00 52 6D      [ 1]  231 	mov	0x526d+0, #0x00
                           00009C   232 	Sstm8s_tim1$TIM1_DeInit$38 ==.
                                    233 ;	StdPeriphLib/src/stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      0093EE 35 00 52 64      [ 1]  234 	mov	0x5264+0, #0x00
                           0000A0   235 	Sstm8s_tim1$TIM1_DeInit$39 ==.
                                    236 ;	StdPeriphLib/src/stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      0093F2 35 00 52 55      [ 1]  237 	mov	0x5255+0, #0x00
                           0000A4   238 	Sstm8s_tim1$TIM1_DeInit$40 ==.
                                    239 ;	StdPeriphLib/src/stm8s_tim1.c: 101: }
                           0000A4   240 	Sstm8s_tim1$TIM1_DeInit$41 ==.
                           0000A4   241 	XG$TIM1_DeInit$0$0 ==.
      0093F6 32 01 A4         [ 1]  242 	pop	_fp_
      0093F9 32 01 A5         [ 1]  243 	pop	_fp_+1
      0093FC 81               [ 4]  244 	ret
                           0000AB   245 	Sstm8s_tim1$TIM1_DeInit$42 ==.
                           0000AB   246 	Sstm8s_tim1$TIM1_TimeBaseInit$43 ==.
                                    247 ;	StdPeriphLib/src/stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    248 ;	-----------------------------------------
                                    249 ;	 function TIM1_TimeBaseInit
                                    250 ;	-----------------------------------------
      0093FD                        251 _TIM1_TimeBaseInit:
      0093FD 3B 01 A5         [ 1]  252 	push	_fp_+1
      009400 3B 01 A4         [ 1]  253 	push	_fp_
      009403 90 96            [ 1]  254 	ldw	y, sp
      009405 90 CF 01 A4      [ 2]  255 	ldw	_fp_, y
                           0000B7   256 	Sstm8s_tim1$TIM1_TimeBaseInit$44 ==.
      009409 52 04            [ 2]  257 	sub	sp, #4
                           0000B9   258 	Sstm8s_tim1$TIM1_TimeBaseInit$45 ==.
                                    259 ;	StdPeriphLib/src/stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      00940B 7B 0C            [ 1]  260 	ld	a, (0x0c, sp)
      00940D 0F 03            [ 1]  261 	clr	(0x03, sp)
      00940F AE 52 62         [ 2]  262 	ldw	x, #0x5262
      009412 F7               [ 1]  263 	ld	(x), a
                           0000C1   264 	Sstm8s_tim1$TIM1_TimeBaseInit$46 ==.
                                    265 ;	StdPeriphLib/src/stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
      009413 7B 0D            [ 1]  266 	ld	a, (0x0d, sp)
      009415 AE 52 63         [ 2]  267 	ldw	x, #0x5263
      009418 F7               [ 1]  268 	ld	(x), a
                           0000C7   269 	Sstm8s_tim1$TIM1_TimeBaseInit$47 ==.
                                    270 ;	StdPeriphLib/src/stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      009419 7B 09            [ 1]  271 	ld	a, (0x09, sp)
      00941B 0F 01            [ 1]  272 	clr	(0x01, sp)
      00941D AE 52 60         [ 2]  273 	ldw	x, #0x5260
      009420 F7               [ 1]  274 	ld	(x), a
                           0000CF   275 	Sstm8s_tim1$TIM1_TimeBaseInit$48 ==.
                                    276 ;	StdPeriphLib/src/stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      009421 7B 0A            [ 1]  277 	ld	a, (0x0a, sp)
      009423 AE 52 61         [ 2]  278 	ldw	x, #0x5261
      009426 F7               [ 1]  279 	ld	(x), a
                           0000D5   280 	Sstm8s_tim1$TIM1_TimeBaseInit$49 ==.
                                    281 ;	StdPeriphLib/src/stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      009427 AE 52 50         [ 2]  282 	ldw	x, #0x5250
      00942A F6               [ 1]  283 	ld	a, (x)
      00942B A4 8F            [ 1]  284 	and	a, #0x8f
                           0000DB   285 	Sstm8s_tim1$TIM1_TimeBaseInit$50 ==.
                                    286 ;	StdPeriphLib/src/stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
      00942D 1A 0B            [ 1]  287 	or	a, (0x0b, sp)
      00942F AE 52 50         [ 2]  288 	ldw	x, #0x5250
      009432 F7               [ 1]  289 	ld	(x), a
                           0000E1   290 	Sstm8s_tim1$TIM1_TimeBaseInit$51 ==.
                                    291 ;	StdPeriphLib/src/stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
      009433 AE 52 64         [ 2]  292 	ldw	x, #0x5264
      009436 7B 0E            [ 1]  293 	ld	a, (0x0e, sp)
      009438 F7               [ 1]  294 	ld	(x), a
                           0000E7   295 	Sstm8s_tim1$TIM1_TimeBaseInit$52 ==.
                                    296 ;	StdPeriphLib/src/stm8s_tim1.c: 133: }
      009439 5B 04            [ 2]  297 	addw	sp, #4
                           0000E9   298 	Sstm8s_tim1$TIM1_TimeBaseInit$53 ==.
                           0000E9   299 	XG$TIM1_TimeBaseInit$0$0 ==.
      00943B 32 01 A4         [ 1]  300 	pop	_fp_
      00943E 32 01 A5         [ 1]  301 	pop	_fp_+1
      009441 81               [ 4]  302 	ret
                           0000F0   303 	Sstm8s_tim1$TIM1_TimeBaseInit$54 ==.
                           0000F0   304 	Sstm8s_tim1$TIM1_OC1Init$55 ==.
                                    305 ;	StdPeriphLib/src/stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    306 ;	-----------------------------------------
                                    307 ;	 function TIM1_OC1Init
                                    308 ;	-----------------------------------------
      009442                        309 _TIM1_OC1Init:
      009442 3B 01 A5         [ 1]  310 	push	_fp_+1
      009445 3B 01 A4         [ 1]  311 	push	_fp_
      009448 90 96            [ 1]  312 	ldw	y, sp
      00944A 90 CF 01 A4      [ 2]  313 	ldw	_fp_, y
                           0000FC   314 	Sstm8s_tim1$TIM1_OC1Init$56 ==.
      00944E 52 08            [ 2]  315 	sub	sp, #8
                           0000FE   316 	Sstm8s_tim1$TIM1_OC1Init$57 ==.
                                    317 ;	StdPeriphLib/src/stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
      009450 AE 52 5C         [ 2]  318 	ldw	x, #0x525c
      009453 F6               [ 1]  319 	ld	a, (x)
      009454 A4 F0            [ 1]  320 	and	a, #0xf0
      009456 F7               [ 1]  321 	ld	(x), a
                           000105   322 	Sstm8s_tim1$TIM1_OC1Init$58 ==.
                                    323 ;	StdPeriphLib/src/stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
      009457 AE 52 5C         [ 2]  324 	ldw	x, #0x525c
      00945A F6               [ 1]  325 	ld	a, (x)
      00945B 6B 05            [ 1]  326 	ld	(0x05, sp), a
      00945D 7B 0E            [ 1]  327 	ld	a, (0x0e, sp)
      00945F A4 01            [ 1]  328 	and	a, #0x01
      009461 6B 04            [ 1]  329 	ld	(0x04, sp), a
                           000111   330 	Sstm8s_tim1$TIM1_OC1Init$59 ==.
                                    331 ;	StdPeriphLib/src/stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
      009463 7B 0F            [ 1]  332 	ld	a, (0x0f, sp)
      009465 A4 04            [ 1]  333 	and	a, #0x04
      009467 1A 04            [ 1]  334 	or	a, (0x04, sp)
      009469 6B 01            [ 1]  335 	ld	(0x01, sp), a
                           000119   336 	Sstm8s_tim1$TIM1_OC1Init$60 ==.
                                    337 ;	StdPeriphLib/src/stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
      00946B 7B 12            [ 1]  338 	ld	a, (0x12, sp)
      00946D A4 02            [ 1]  339 	and	a, #0x02
      00946F 6B 03            [ 1]  340 	ld	(0x03, sp), a
                           00011F   341 	Sstm8s_tim1$TIM1_OC1Init$61 ==.
                                    342 ;	StdPeriphLib/src/stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
      009471 7B 13            [ 1]  343 	ld	a, (0x13, sp)
      009473 A4 08            [ 1]  344 	and	a, #0x08
      009475 1A 03            [ 1]  345 	or	a, (0x03, sp)
      009477 1A 01            [ 1]  346 	or	a, (0x01, sp)
      009479 1A 05            [ 1]  347 	or	a, (0x05, sp)
      00947B AE 52 5C         [ 2]  348 	ldw	x, #0x525c
      00947E F7               [ 1]  349 	ld	(x), a
                           00012D   350 	Sstm8s_tim1$TIM1_OC1Init$62 ==.
                                    351 ;	StdPeriphLib/src/stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      00947F AE 52 58         [ 2]  352 	ldw	x, #0x5258
      009482 F6               [ 1]  353 	ld	a, (x)
      009483 A4 8F            [ 1]  354 	and	a, #0x8f
                           000133   355 	Sstm8s_tim1$TIM1_OC1Init$63 ==.
                                    356 ;	StdPeriphLib/src/stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
      009485 1A 0D            [ 1]  357 	or	a, (0x0d, sp)
      009487 AE 52 58         [ 2]  358 	ldw	x, #0x5258
      00948A F7               [ 1]  359 	ld	(x), a
                           000139   360 	Sstm8s_tim1$TIM1_OC1Init$64 ==.
                                    361 ;	StdPeriphLib/src/stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
      00948B AE 52 6F         [ 2]  362 	ldw	x, #0x526f
      00948E F6               [ 1]  363 	ld	a, (x)
      00948F A4 FC            [ 1]  364 	and	a, #0xfc
      009491 F7               [ 1]  365 	ld	(x), a
                           000140   366 	Sstm8s_tim1$TIM1_OC1Init$65 ==.
                                    367 ;	StdPeriphLib/src/stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
      009492 AE 52 6F         [ 2]  368 	ldw	x, #0x526f
      009495 F6               [ 1]  369 	ld	a, (x)
      009496 6B 02            [ 1]  370 	ld	(0x02, sp), a
      009498 7B 14            [ 1]  371 	ld	a, (0x14, sp)
      00949A A4 01            [ 1]  372 	and	a, #0x01
      00949C 6B 08            [ 1]  373 	ld	(0x08, sp), a
                           00014C   374 	Sstm8s_tim1$TIM1_OC1Init$66 ==.
                                    375 ;	StdPeriphLib/src/stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
      00949E 7B 15            [ 1]  376 	ld	a, (0x15, sp)
      0094A0 A4 02            [ 1]  377 	and	a, #0x02
      0094A2 1A 08            [ 1]  378 	or	a, (0x08, sp)
      0094A4 1A 02            [ 1]  379 	or	a, (0x02, sp)
      0094A6 AE 52 6F         [ 2]  380 	ldw	x, #0x526f
      0094A9 F7               [ 1]  381 	ld	(x), a
                           000158   382 	Sstm8s_tim1$TIM1_OC1Init$67 ==.
                                    383 ;	StdPeriphLib/src/stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
      0094AA 7B 10            [ 1]  384 	ld	a, (0x10, sp)
      0094AC 0F 06            [ 1]  385 	clr	(0x06, sp)
      0094AE AE 52 65         [ 2]  386 	ldw	x, #0x5265
      0094B1 F7               [ 1]  387 	ld	(x), a
                           000160   388 	Sstm8s_tim1$TIM1_OC1Init$68 ==.
                                    389 ;	StdPeriphLib/src/stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
      0094B2 7B 11            [ 1]  390 	ld	a, (0x11, sp)
      0094B4 AE 52 66         [ 2]  391 	ldw	x, #0x5266
      0094B7 F7               [ 1]  392 	ld	(x), a
                           000166   393 	Sstm8s_tim1$TIM1_OC1Init$69 ==.
                                    394 ;	StdPeriphLib/src/stm8s_tim1.c: 196: }
      0094B8 5B 08            [ 2]  395 	addw	sp, #8
                           000168   396 	Sstm8s_tim1$TIM1_OC1Init$70 ==.
                           000168   397 	XG$TIM1_OC1Init$0$0 ==.
      0094BA 32 01 A4         [ 1]  398 	pop	_fp_
      0094BD 32 01 A5         [ 1]  399 	pop	_fp_+1
      0094C0 81               [ 4]  400 	ret
                           00016F   401 	Sstm8s_tim1$TIM1_OC1Init$71 ==.
                           00016F   402 	Sstm8s_tim1$TIM1_OC2Init$72 ==.
                                    403 ;	StdPeriphLib/src/stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    404 ;	-----------------------------------------
                                    405 ;	 function TIM1_OC2Init
                                    406 ;	-----------------------------------------
      0094C1                        407 _TIM1_OC2Init:
      0094C1 3B 01 A5         [ 1]  408 	push	_fp_+1
      0094C4 3B 01 A4         [ 1]  409 	push	_fp_
      0094C7 90 96            [ 1]  410 	ldw	y, sp
      0094C9 90 CF 01 A4      [ 2]  411 	ldw	_fp_, y
                           00017B   412 	Sstm8s_tim1$TIM1_OC2Init$73 ==.
      0094CD 52 08            [ 2]  413 	sub	sp, #8
                           00017D   414 	Sstm8s_tim1$TIM1_OC2Init$74 ==.
                                    415 ;	StdPeriphLib/src/stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
      0094CF AE 52 5C         [ 2]  416 	ldw	x, #0x525c
      0094D2 F6               [ 1]  417 	ld	a, (x)
      0094D3 A4 0F            [ 1]  418 	and	a, #0x0f
      0094D5 F7               [ 1]  419 	ld	(x), a
                           000184   420 	Sstm8s_tim1$TIM1_OC2Init$75 ==.
                                    421 ;	StdPeriphLib/src/stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
      0094D6 AE 52 5C         [ 2]  422 	ldw	x, #0x525c
      0094D9 F6               [ 1]  423 	ld	a, (x)
      0094DA 6B 01            [ 1]  424 	ld	(0x01, sp), a
      0094DC 7B 0E            [ 1]  425 	ld	a, (0x0e, sp)
      0094DE A4 10            [ 1]  426 	and	a, #0x10
      0094E0 6B 08            [ 1]  427 	ld	(0x08, sp), a
                           000190   428 	Sstm8s_tim1$TIM1_OC2Init$76 ==.
                                    429 ;	StdPeriphLib/src/stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
      0094E2 7B 0F            [ 1]  430 	ld	a, (0x0f, sp)
      0094E4 A4 40            [ 1]  431 	and	a, #0x40
      0094E6 1A 08            [ 1]  432 	or	a, (0x08, sp)
      0094E8 6B 02            [ 1]  433 	ld	(0x02, sp), a
                           000198   434 	Sstm8s_tim1$TIM1_OC2Init$77 ==.
                                    435 ;	StdPeriphLib/src/stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
      0094EA 7B 12            [ 1]  436 	ld	a, (0x12, sp)
      0094EC A4 20            [ 1]  437 	and	a, #0x20
      0094EE 6B 07            [ 1]  438 	ld	(0x07, sp), a
                           00019E   439 	Sstm8s_tim1$TIM1_OC2Init$78 ==.
                                    440 ;	StdPeriphLib/src/stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
      0094F0 7B 13            [ 1]  441 	ld	a, (0x13, sp)
      0094F2 A4 80            [ 1]  442 	and	a, #0x80
      0094F4 1A 07            [ 1]  443 	or	a, (0x07, sp)
      0094F6 1A 02            [ 1]  444 	or	a, (0x02, sp)
      0094F8 1A 01            [ 1]  445 	or	a, (0x01, sp)
      0094FA AE 52 5C         [ 2]  446 	ldw	x, #0x525c
      0094FD F7               [ 1]  447 	ld	(x), a
                           0001AC   448 	Sstm8s_tim1$TIM1_OC2Init$79 ==.
                                    449 ;	StdPeriphLib/src/stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      0094FE AE 52 59         [ 2]  450 	ldw	x, #0x5259
      009501 F6               [ 1]  451 	ld	a, (x)
      009502 A4 8F            [ 1]  452 	and	a, #0x8f
                           0001B2   453 	Sstm8s_tim1$TIM1_OC2Init$80 ==.
                                    454 ;	StdPeriphLib/src/stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
      009504 1A 0D            [ 1]  455 	or	a, (0x0d, sp)
      009506 AE 52 59         [ 2]  456 	ldw	x, #0x5259
      009509 F7               [ 1]  457 	ld	(x), a
                           0001B8   458 	Sstm8s_tim1$TIM1_OC2Init$81 ==.
                                    459 ;	StdPeriphLib/src/stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
      00950A AE 52 6F         [ 2]  460 	ldw	x, #0x526f
      00950D F6               [ 1]  461 	ld	a, (x)
      00950E A4 F3            [ 1]  462 	and	a, #0xf3
      009510 F7               [ 1]  463 	ld	(x), a
                           0001BF   464 	Sstm8s_tim1$TIM1_OC2Init$82 ==.
                                    465 ;	StdPeriphLib/src/stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
      009511 AE 52 6F         [ 2]  466 	ldw	x, #0x526f
      009514 F6               [ 1]  467 	ld	a, (x)
      009515 6B 06            [ 1]  468 	ld	(0x06, sp), a
      009517 7B 14            [ 1]  469 	ld	a, (0x14, sp)
      009519 A4 04            [ 1]  470 	and	a, #0x04
      00951B 6B 05            [ 1]  471 	ld	(0x05, sp), a
                           0001CB   472 	Sstm8s_tim1$TIM1_OC2Init$83 ==.
                                    473 ;	StdPeriphLib/src/stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
      00951D 7B 15            [ 1]  474 	ld	a, (0x15, sp)
      00951F A4 08            [ 1]  475 	and	a, #0x08
      009521 1A 05            [ 1]  476 	or	a, (0x05, sp)
      009523 1A 06            [ 1]  477 	or	a, (0x06, sp)
      009525 AE 52 6F         [ 2]  478 	ldw	x, #0x526f
      009528 F7               [ 1]  479 	ld	(x), a
                           0001D7   480 	Sstm8s_tim1$TIM1_OC2Init$84 ==.
                                    481 ;	StdPeriphLib/src/stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
      009529 7B 10            [ 1]  482 	ld	a, (0x10, sp)
      00952B 0F 03            [ 1]  483 	clr	(0x03, sp)
      00952D AE 52 67         [ 2]  484 	ldw	x, #0x5267
      009530 F7               [ 1]  485 	ld	(x), a
                           0001DF   486 	Sstm8s_tim1$TIM1_OC2Init$85 ==.
                                    487 ;	StdPeriphLib/src/stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
      009531 7B 11            [ 1]  488 	ld	a, (0x11, sp)
      009533 AE 52 68         [ 2]  489 	ldw	x, #0x5268
      009536 F7               [ 1]  490 	ld	(x), a
                           0001E5   491 	Sstm8s_tim1$TIM1_OC2Init$86 ==.
                                    492 ;	StdPeriphLib/src/stm8s_tim1.c: 260: }
      009537 5B 08            [ 2]  493 	addw	sp, #8
                           0001E7   494 	Sstm8s_tim1$TIM1_OC2Init$87 ==.
                           0001E7   495 	XG$TIM1_OC2Init$0$0 ==.
      009539 32 01 A4         [ 1]  496 	pop	_fp_
      00953C 32 01 A5         [ 1]  497 	pop	_fp_+1
      00953F 81               [ 4]  498 	ret
                           0001EE   499 	Sstm8s_tim1$TIM1_OC2Init$88 ==.
                           0001EE   500 	Sstm8s_tim1$TIM1_OC3Init$89 ==.
                                    501 ;	StdPeriphLib/src/stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    502 ;	-----------------------------------------
                                    503 ;	 function TIM1_OC3Init
                                    504 ;	-----------------------------------------
      009540                        505 _TIM1_OC3Init:
      009540 3B 01 A5         [ 1]  506 	push	_fp_+1
      009543 3B 01 A4         [ 1]  507 	push	_fp_
      009546 90 96            [ 1]  508 	ldw	y, sp
      009548 90 CF 01 A4      [ 2]  509 	ldw	_fp_, y
                           0001FA   510 	Sstm8s_tim1$TIM1_OC3Init$90 ==.
      00954C 52 08            [ 2]  511 	sub	sp, #8
                           0001FC   512 	Sstm8s_tim1$TIM1_OC3Init$91 ==.
                                    513 ;	StdPeriphLib/src/stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
      00954E AE 52 5D         [ 2]  514 	ldw	x, #0x525d
      009551 F6               [ 1]  515 	ld	a, (x)
      009552 A4 F0            [ 1]  516 	and	a, #0xf0
      009554 F7               [ 1]  517 	ld	(x), a
                           000203   518 	Sstm8s_tim1$TIM1_OC3Init$92 ==.
                                    519 ;	StdPeriphLib/src/stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
      009555 AE 52 5D         [ 2]  520 	ldw	x, #0x525d
      009558 F6               [ 1]  521 	ld	a, (x)
      009559 6B 08            [ 1]  522 	ld	(0x08, sp), a
      00955B 7B 0E            [ 1]  523 	ld	a, (0x0e, sp)
      00955D A4 01            [ 1]  524 	and	a, #0x01
      00955F 6B 07            [ 1]  525 	ld	(0x07, sp), a
                           00020F   526 	Sstm8s_tim1$TIM1_OC3Init$93 ==.
                                    527 ;	StdPeriphLib/src/stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
      009561 7B 0F            [ 1]  528 	ld	a, (0x0f, sp)
      009563 A4 04            [ 1]  529 	and	a, #0x04
      009565 1A 07            [ 1]  530 	or	a, (0x07, sp)
      009567 6B 06            [ 1]  531 	ld	(0x06, sp), a
                           000217   532 	Sstm8s_tim1$TIM1_OC3Init$94 ==.
                                    533 ;	StdPeriphLib/src/stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
      009569 7B 12            [ 1]  534 	ld	a, (0x12, sp)
      00956B A4 02            [ 1]  535 	and	a, #0x02
      00956D 6B 05            [ 1]  536 	ld	(0x05, sp), a
                           00021D   537 	Sstm8s_tim1$TIM1_OC3Init$95 ==.
                                    538 ;	StdPeriphLib/src/stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
      00956F 7B 13            [ 1]  539 	ld	a, (0x13, sp)
      009571 A4 08            [ 1]  540 	and	a, #0x08
      009573 1A 05            [ 1]  541 	or	a, (0x05, sp)
      009575 1A 06            [ 1]  542 	or	a, (0x06, sp)
      009577 1A 08            [ 1]  543 	or	a, (0x08, sp)
      009579 AE 52 5D         [ 2]  544 	ldw	x, #0x525d
      00957C F7               [ 1]  545 	ld	(x), a
                           00022B   546 	Sstm8s_tim1$TIM1_OC3Init$96 ==.
                                    547 ;	StdPeriphLib/src/stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      00957D AE 52 5A         [ 2]  548 	ldw	x, #0x525a
      009580 F6               [ 1]  549 	ld	a, (x)
      009581 A4 8F            [ 1]  550 	and	a, #0x8f
                           000231   551 	Sstm8s_tim1$TIM1_OC3Init$97 ==.
                                    552 ;	StdPeriphLib/src/stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
      009583 1A 0D            [ 1]  553 	or	a, (0x0d, sp)
      009585 AE 52 5A         [ 2]  554 	ldw	x, #0x525a
      009588 F7               [ 1]  555 	ld	(x), a
                           000237   556 	Sstm8s_tim1$TIM1_OC3Init$98 ==.
                                    557 ;	StdPeriphLib/src/stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
      009589 AE 52 6F         [ 2]  558 	ldw	x, #0x526f
      00958C F6               [ 1]  559 	ld	a, (x)
      00958D A4 CF            [ 1]  560 	and	a, #0xcf
      00958F F7               [ 1]  561 	ld	(x), a
                           00023E   562 	Sstm8s_tim1$TIM1_OC3Init$99 ==.
                                    563 ;	StdPeriphLib/src/stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
      009590 AE 52 6F         [ 2]  564 	ldw	x, #0x526f
      009593 F6               [ 1]  565 	ld	a, (x)
      009594 6B 04            [ 1]  566 	ld	(0x04, sp), a
      009596 7B 14            [ 1]  567 	ld	a, (0x14, sp)
      009598 A4 10            [ 1]  568 	and	a, #0x10
      00959A 6B 03            [ 1]  569 	ld	(0x03, sp), a
                           00024A   570 	Sstm8s_tim1$TIM1_OC3Init$100 ==.
                                    571 ;	StdPeriphLib/src/stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
      00959C 7B 15            [ 1]  572 	ld	a, (0x15, sp)
      00959E A4 20            [ 1]  573 	and	a, #0x20
      0095A0 1A 03            [ 1]  574 	or	a, (0x03, sp)
      0095A2 1A 04            [ 1]  575 	or	a, (0x04, sp)
      0095A4 AE 52 6F         [ 2]  576 	ldw	x, #0x526f
      0095A7 F7               [ 1]  577 	ld	(x), a
                           000256   578 	Sstm8s_tim1$TIM1_OC3Init$101 ==.
                                    579 ;	StdPeriphLib/src/stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
      0095A8 7B 10            [ 1]  580 	ld	a, (0x10, sp)
      0095AA 0F 01            [ 1]  581 	clr	(0x01, sp)
      0095AC AE 52 69         [ 2]  582 	ldw	x, #0x5269
      0095AF F7               [ 1]  583 	ld	(x), a
                           00025E   584 	Sstm8s_tim1$TIM1_OC3Init$102 ==.
                                    585 ;	StdPeriphLib/src/stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
      0095B0 7B 11            [ 1]  586 	ld	a, (0x11, sp)
      0095B2 AE 52 6A         [ 2]  587 	ldw	x, #0x526a
      0095B5 F7               [ 1]  588 	ld	(x), a
                           000264   589 	Sstm8s_tim1$TIM1_OC3Init$103 ==.
                                    590 ;	StdPeriphLib/src/stm8s_tim1.c: 323: }
      0095B6 5B 08            [ 2]  591 	addw	sp, #8
                           000266   592 	Sstm8s_tim1$TIM1_OC3Init$104 ==.
                           000266   593 	XG$TIM1_OC3Init$0$0 ==.
      0095B8 32 01 A4         [ 1]  594 	pop	_fp_
      0095BB 32 01 A5         [ 1]  595 	pop	_fp_+1
      0095BE 81               [ 4]  596 	ret
                           00026D   597 	Sstm8s_tim1$TIM1_OC3Init$105 ==.
                           00026D   598 	Sstm8s_tim1$TIM1_OC4Init$106 ==.
                                    599 ;	StdPeriphLib/src/stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    600 ;	-----------------------------------------
                                    601 ;	 function TIM1_OC4Init
                                    602 ;	-----------------------------------------
      0095BF                        603 _TIM1_OC4Init:
      0095BF 3B 01 A5         [ 1]  604 	push	_fp_+1
      0095C2 3B 01 A4         [ 1]  605 	push	_fp_
      0095C5 90 96            [ 1]  606 	ldw	y, sp
      0095C7 90 CF 01 A4      [ 2]  607 	ldw	_fp_, y
                           000279   608 	Sstm8s_tim1$TIM1_OC4Init$107 ==.
      0095CB 52 04            [ 2]  609 	sub	sp, #4
                           00027B   610 	Sstm8s_tim1$TIM1_OC4Init$108 ==.
                                    611 ;	StdPeriphLib/src/stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
      0095CD AE 52 5D         [ 2]  612 	ldw	x, #0x525d
      0095D0 F6               [ 1]  613 	ld	a, (x)
      0095D1 A4 CF            [ 1]  614 	and	a, #0xcf
      0095D3 F7               [ 1]  615 	ld	(x), a
                           000282   616 	Sstm8s_tim1$TIM1_OC4Init$109 ==.
                                    617 ;	StdPeriphLib/src/stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
      0095D4 AE 52 5D         [ 2]  618 	ldw	x, #0x525d
      0095D7 F6               [ 1]  619 	ld	a, (x)
      0095D8 6B 01            [ 1]  620 	ld	(0x01, sp), a
      0095DA 7B 0A            [ 1]  621 	ld	a, (0x0a, sp)
      0095DC A4 10            [ 1]  622 	and	a, #0x10
      0095DE 6B 04            [ 1]  623 	ld	(0x04, sp), a
                           00028E   624 	Sstm8s_tim1$TIM1_OC4Init$110 ==.
                                    625 ;	StdPeriphLib/src/stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
      0095E0 7B 0D            [ 1]  626 	ld	a, (0x0d, sp)
      0095E2 A4 20            [ 1]  627 	and	a, #0x20
      0095E4 1A 04            [ 1]  628 	or	a, (0x04, sp)
      0095E6 1A 01            [ 1]  629 	or	a, (0x01, sp)
      0095E8 AE 52 5D         [ 2]  630 	ldw	x, #0x525d
      0095EB F7               [ 1]  631 	ld	(x), a
                           00029A   632 	Sstm8s_tim1$TIM1_OC4Init$111 ==.
                                    633 ;	StdPeriphLib/src/stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      0095EC AE 52 5B         [ 2]  634 	ldw	x, #0x525b
      0095EF F6               [ 1]  635 	ld	a, (x)
      0095F0 A4 8F            [ 1]  636 	and	a, #0x8f
      0095F2 1A 09            [ 1]  637 	or	a, (0x09, sp)
      0095F4 AE 52 5B         [ 2]  638 	ldw	x, #0x525b
      0095F7 F7               [ 1]  639 	ld	(x), a
                           0002A6   640 	Sstm8s_tim1$TIM1_OC4Init$112 ==.
                                    641 ;	StdPeriphLib/src/stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
      0095F8 0D 0E            [ 1]  642 	tnz	(0x0e, sp)
      0095FA 27 09            [ 1]  643 	jreq	00102$
                           0002AA   644 	Sstm8s_tim1$TIM1_OC4Init$113 ==.
                                    645 ;	StdPeriphLib/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      0095FC AE 52 6F         [ 2]  646 	ldw	x, #0x526f
      0095FF F6               [ 1]  647 	ld	a, (x)
      009600 AA DF            [ 1]  648 	or	a, #0xdf
      009602 F7               [ 1]  649 	ld	(x), a
      009603 20 07            [ 2]  650 	jra	00103$
      009605                        651 00102$:
                           0002B3   652 	Sstm8s_tim1$TIM1_OC4Init$114 ==.
                                    653 ;	StdPeriphLib/src/stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
      009605 AE 52 6F         [ 2]  654 	ldw	x, #0x526f
      009608 F6               [ 1]  655 	ld	a, (x)
      009609 A4 BF            [ 1]  656 	and	a, #0xbf
      00960B F7               [ 1]  657 	ld	(x), a
      00960C                        658 00103$:
                           0002BA   659 	Sstm8s_tim1$TIM1_OC4Init$115 ==.
                                    660 ;	StdPeriphLib/src/stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
      00960C 7B 0B            [ 1]  661 	ld	a, (0x0b, sp)
      00960E 0F 02            [ 1]  662 	clr	(0x02, sp)
      009610 AE 52 6B         [ 2]  663 	ldw	x, #0x526b
      009613 F7               [ 1]  664 	ld	(x), a
                           0002C2   665 	Sstm8s_tim1$TIM1_OC4Init$116 ==.
                                    666 ;	StdPeriphLib/src/stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
      009614 7B 0C            [ 1]  667 	ld	a, (0x0c, sp)
      009616 AE 52 6C         [ 2]  668 	ldw	x, #0x526c
      009619 F7               [ 1]  669 	ld	(x), a
                           0002C8   670 	Sstm8s_tim1$TIM1_OC4Init$117 ==.
                                    671 ;	StdPeriphLib/src/stm8s_tim1.c: 373: }
      00961A 5B 04            [ 2]  672 	addw	sp, #4
                           0002CA   673 	Sstm8s_tim1$TIM1_OC4Init$118 ==.
                           0002CA   674 	XG$TIM1_OC4Init$0$0 ==.
      00961C 32 01 A4         [ 1]  675 	pop	_fp_
      00961F 32 01 A5         [ 1]  676 	pop	_fp_+1
      009622 81               [ 4]  677 	ret
                           0002D1   678 	Sstm8s_tim1$TIM1_OC4Init$119 ==.
                           0002D1   679 	Sstm8s_tim1$TIM1_BDTRConfig$120 ==.
                                    680 ;	StdPeriphLib/src/stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
                                    681 ;	-----------------------------------------
                                    682 ;	 function TIM1_BDTRConfig
                                    683 ;	-----------------------------------------
      009623                        684 _TIM1_BDTRConfig:
      009623 3B 01 A5         [ 1]  685 	push	_fp_+1
      009626 3B 01 A4         [ 1]  686 	push	_fp_
      009629 90 96            [ 1]  687 	ldw	y, sp
      00962B 90 CF 01 A4      [ 2]  688 	ldw	_fp_, y
                           0002DD   689 	Sstm8s_tim1$TIM1_BDTRConfig$121 ==.
      00962F 88               [ 1]  690 	push	a
                           0002DE   691 	Sstm8s_tim1$TIM1_BDTRConfig$122 ==.
                                    692 ;	StdPeriphLib/src/stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
      009630 AE 52 6E         [ 2]  693 	ldw	x, #0x526e
      009633 7B 08            [ 1]  694 	ld	a, (0x08, sp)
      009635 F7               [ 1]  695 	ld	(x), a
                           0002E4   696 	Sstm8s_tim1$TIM1_BDTRConfig$123 ==.
                                    697 ;	StdPeriphLib/src/stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
      009636 7B 06            [ 1]  698 	ld	a, (0x06, sp)
      009638 1A 07            [ 1]  699 	or	a, (0x07, sp)
      00963A 6B 01            [ 1]  700 	ld	(0x01, sp), a
                           0002EA   701 	Sstm8s_tim1$TIM1_BDTRConfig$124 ==.
                                    702 ;	StdPeriphLib/src/stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
      00963C 7B 09            [ 1]  703 	ld	a, (0x09, sp)
      00963E 1A 0A            [ 1]  704 	or	a, (0x0a, sp)
                           0002EE   705 	Sstm8s_tim1$TIM1_BDTRConfig$125 ==.
                                    706 ;	StdPeriphLib/src/stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
      009640 1A 0B            [ 1]  707 	or	a, (0x0b, sp)
      009642 1A 01            [ 1]  708 	or	a, (0x01, sp)
      009644 AE 52 6D         [ 2]  709 	ldw	x, #0x526d
      009647 F7               [ 1]  710 	ld	(x), a
                           0002F6   711 	Sstm8s_tim1$TIM1_BDTRConfig$126 ==.
                                    712 ;	StdPeriphLib/src/stm8s_tim1.c: 409: }
      009648 84               [ 1]  713 	pop	a
                           0002F7   714 	Sstm8s_tim1$TIM1_BDTRConfig$127 ==.
                           0002F7   715 	XG$TIM1_BDTRConfig$0$0 ==.
      009649 32 01 A4         [ 1]  716 	pop	_fp_
      00964C 32 01 A5         [ 1]  717 	pop	_fp_+1
      00964F 81               [ 4]  718 	ret
                           0002FE   719 	Sstm8s_tim1$TIM1_BDTRConfig$128 ==.
                           0002FE   720 	Sstm8s_tim1$TIM1_ICInit$129 ==.
                                    721 ;	StdPeriphLib/src/stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                    722 ;	-----------------------------------------
                                    723 ;	 function TIM1_ICInit
                                    724 ;	-----------------------------------------
      009650                        725 _TIM1_ICInit:
      009650 3B 01 A5         [ 1]  726 	push	_fp_+1
      009653 3B 01 A4         [ 1]  727 	push	_fp_
      009656 90 96            [ 1]  728 	ldw	y, sp
      009658 90 CF 01 A4      [ 2]  729 	ldw	_fp_, y
                           00030A   730 	Sstm8s_tim1$TIM1_ICInit$130 ==.
                           00030A   731 	Sstm8s_tim1$TIM1_ICInit$131 ==.
                                    732 ;	StdPeriphLib/src/stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
      00965C 0D 05            [ 1]  733 	tnz	(0x05, sp)
      00965E 26 17            [ 1]  734 	jrne	00108$
                           00030E   735 	Sstm8s_tim1$TIM1_ICInit$132 ==.
                                    736 ;	StdPeriphLib/src/stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
      009660 7B 09            [ 1]  737 	ld	a, (0x09, sp)
      009662 88               [ 1]  738 	push	a
      009663 7B 08            [ 1]  739 	ld	a, (0x08, sp)
      009665 88               [ 1]  740 	push	a
      009666 7B 08            [ 1]  741 	ld	a, (0x08, sp)
      009668 88               [ 1]  742 	push	a
      009669 CD A2 07         [ 4]  743 	call	_TI1_Config
      00966C 5B 03            [ 2]  744 	addw	sp, #3
                           00031C   745 	Sstm8s_tim1$TIM1_ICInit$133 ==.
                                    746 ;	StdPeriphLib/src/stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      00966E 7B 08            [ 1]  747 	ld	a, (0x08, sp)
      009670 88               [ 1]  748 	push	a
      009671 CD 9F C3         [ 4]  749 	call	_TIM1_SetIC1Prescaler
      009674 84               [ 1]  750 	pop	a
      009675 20 4F            [ 2]  751 	jra	00110$
      009677                        752 00108$:
                           000325   753 	Sstm8s_tim1$TIM1_ICInit$134 ==.
                                    754 ;	StdPeriphLib/src/stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009677 7B 05            [ 1]  755 	ld	a, (0x05, sp)
      009679 A1 01            [ 1]  756 	cp	a, #0x01
      00967B 26 17            [ 1]  757 	jrne	00105$
                           00032B   758 	Sstm8s_tim1$TIM1_ICInit$135 ==.
                                    759 ;	StdPeriphLib/src/stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
      00967D 7B 09            [ 1]  760 	ld	a, (0x09, sp)
      00967F 88               [ 1]  761 	push	a
      009680 7B 08            [ 1]  762 	ld	a, (0x08, sp)
      009682 88               [ 1]  763 	push	a
      009683 7B 08            [ 1]  764 	ld	a, (0x08, sp)
      009685 88               [ 1]  765 	push	a
      009686 CD A2 4D         [ 4]  766 	call	_TI2_Config
      009689 5B 03            [ 2]  767 	addw	sp, #3
                           000339   768 	Sstm8s_tim1$TIM1_ICInit$136 ==.
                                    769 ;	StdPeriphLib/src/stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      00968B 7B 08            [ 1]  770 	ld	a, (0x08, sp)
      00968D 88               [ 1]  771 	push	a
      00968E CD 9F E2         [ 4]  772 	call	_TIM1_SetIC2Prescaler
      009691 84               [ 1]  773 	pop	a
      009692 20 32            [ 2]  774 	jra	00110$
      009694                        775 00105$:
                           000342   776 	Sstm8s_tim1$TIM1_ICInit$137 ==.
                                    777 ;	StdPeriphLib/src/stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
      009694 7B 05            [ 1]  778 	ld	a, (0x05, sp)
      009696 A1 02            [ 1]  779 	cp	a, #0x02
      009698 26 17            [ 1]  780 	jrne	00102$
                           000348   781 	Sstm8s_tim1$TIM1_ICInit$138 ==.
                                    782 ;	StdPeriphLib/src/stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
      00969A 7B 09            [ 1]  783 	ld	a, (0x09, sp)
      00969C 88               [ 1]  784 	push	a
      00969D 7B 08            [ 1]  785 	ld	a, (0x08, sp)
      00969F 88               [ 1]  786 	push	a
      0096A0 7B 08            [ 1]  787 	ld	a, (0x08, sp)
      0096A2 88               [ 1]  788 	push	a
      0096A3 CD A2 99         [ 4]  789 	call	_TI3_Config
      0096A6 5B 03            [ 2]  790 	addw	sp, #3
                           000356   791 	Sstm8s_tim1$TIM1_ICInit$139 ==.
                                    792 ;	StdPeriphLib/src/stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      0096A8 7B 08            [ 1]  793 	ld	a, (0x08, sp)
      0096AA 88               [ 1]  794 	push	a
      0096AB CD A0 01         [ 4]  795 	call	_TIM1_SetIC3Prescaler
      0096AE 84               [ 1]  796 	pop	a
      0096AF 20 15            [ 2]  797 	jra	00110$
      0096B1                        798 00102$:
                           00035F   799 	Sstm8s_tim1$TIM1_ICInit$140 ==.
                                    800 ;	StdPeriphLib/src/stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
      0096B1 7B 09            [ 1]  801 	ld	a, (0x09, sp)
      0096B3 88               [ 1]  802 	push	a
      0096B4 7B 08            [ 1]  803 	ld	a, (0x08, sp)
      0096B6 88               [ 1]  804 	push	a
      0096B7 7B 08            [ 1]  805 	ld	a, (0x08, sp)
      0096B9 88               [ 1]  806 	push	a
      0096BA CD A2 DF         [ 4]  807 	call	_TI4_Config
      0096BD 5B 03            [ 2]  808 	addw	sp, #3
                           00036D   809 	Sstm8s_tim1$TIM1_ICInit$141 ==.
                                    810 ;	StdPeriphLib/src/stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      0096BF 7B 08            [ 1]  811 	ld	a, (0x08, sp)
      0096C1 88               [ 1]  812 	push	a
      0096C2 CD A0 20         [ 4]  813 	call	_TIM1_SetIC4Prescaler
      0096C5 84               [ 1]  814 	pop	a
      0096C6                        815 00110$:
                           000374   816 	Sstm8s_tim1$TIM1_ICInit$142 ==.
                                    817 ;	StdPeriphLib/src/stm8s_tim1.c: 472: }
                           000374   818 	Sstm8s_tim1$TIM1_ICInit$143 ==.
                           000374   819 	XG$TIM1_ICInit$0$0 ==.
      0096C6 32 01 A4         [ 1]  820 	pop	_fp_
      0096C9 32 01 A5         [ 1]  821 	pop	_fp_+1
      0096CC 81               [ 4]  822 	ret
                           00037B   823 	Sstm8s_tim1$TIM1_ICInit$144 ==.
                           00037B   824 	Sstm8s_tim1$TIM1_PWMIConfig$145 ==.
                                    825 ;	StdPeriphLib/src/stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
                                    826 ;	-----------------------------------------
                                    827 ;	 function TIM1_PWMIConfig
                                    828 ;	-----------------------------------------
      0096CD                        829 _TIM1_PWMIConfig:
      0096CD 3B 01 A5         [ 1]  830 	push	_fp_+1
      0096D0 3B 01 A4         [ 1]  831 	push	_fp_
      0096D3 90 96            [ 1]  832 	ldw	y, sp
      0096D5 90 CF 01 A4      [ 2]  833 	ldw	_fp_, y
                           000387   834 	Sstm8s_tim1$TIM1_PWMIConfig$146 ==.
      0096D9 52 02            [ 2]  835 	sub	sp, #2
                           000389   836 	Sstm8s_tim1$TIM1_PWMIConfig$147 ==.
                                    837 ;	StdPeriphLib/src/stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
      0096DB 7B 08            [ 1]  838 	ld	a, (0x08, sp)
      0096DD A1 01            [ 1]  839 	cp	a, #0x01
      0096DF 27 06            [ 1]  840 	jreq	00102$
                           00038F   841 	Sstm8s_tim1$TIM1_PWMIConfig$148 ==.
                                    842 ;	StdPeriphLib/src/stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
      0096E1 A6 01            [ 1]  843 	ld	a, #0x01
      0096E3 6B 02            [ 1]  844 	ld	(0x02, sp), a
      0096E5 20 02            [ 2]  845 	jra	00103$
      0096E7                        846 00102$:
                           000395   847 	Sstm8s_tim1$TIM1_PWMIConfig$149 ==.
                                    848 ;	StdPeriphLib/src/stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
      0096E7 0F 02            [ 1]  849 	clr	(0x02, sp)
      0096E9                        850 00103$:
                           000397   851 	Sstm8s_tim1$TIM1_PWMIConfig$150 ==.
                                    852 ;	StdPeriphLib/src/stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
      0096E9 7B 09            [ 1]  853 	ld	a, (0x09, sp)
      0096EB A1 01            [ 1]  854 	cp	a, #0x01
      0096ED 26 06            [ 1]  855 	jrne	00105$
                           00039D   856 	Sstm8s_tim1$TIM1_PWMIConfig$151 ==.
                                    857 ;	StdPeriphLib/src/stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
      0096EF A6 02            [ 1]  858 	ld	a, #0x02
      0096F1 6B 01            [ 1]  859 	ld	(0x01, sp), a
      0096F3 20 04            [ 2]  860 	jra	00106$
      0096F5                        861 00105$:
                           0003A3   862 	Sstm8s_tim1$TIM1_PWMIConfig$152 ==.
                                    863 ;	StdPeriphLib/src/stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
      0096F5 A6 01            [ 1]  864 	ld	a, #0x01
      0096F7 6B 01            [ 1]  865 	ld	(0x01, sp), a
      0096F9                        866 00106$:
                           0003A7   867 	Sstm8s_tim1$TIM1_PWMIConfig$153 ==.
                                    868 ;	StdPeriphLib/src/stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
      0096F9 0D 07            [ 1]  869 	tnz	(0x07, sp)
      0096FB 26 2C            [ 1]  870 	jrne	00108$
                           0003AB   871 	Sstm8s_tim1$TIM1_PWMIConfig$154 ==.
                                    872 ;	StdPeriphLib/src/stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      0096FD 7B 0B            [ 1]  873 	ld	a, (0x0b, sp)
      0096FF 88               [ 1]  874 	push	a
      009700 7B 0A            [ 1]  875 	ld	a, (0x0a, sp)
      009702 88               [ 1]  876 	push	a
      009703 7B 0A            [ 1]  877 	ld	a, (0x0a, sp)
      009705 88               [ 1]  878 	push	a
      009706 CD A2 07         [ 4]  879 	call	_TI1_Config
      009709 5B 03            [ 2]  880 	addw	sp, #3
                           0003B9   881 	Sstm8s_tim1$TIM1_PWMIConfig$155 ==.
                                    882 ;	StdPeriphLib/src/stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      00970B 7B 0A            [ 1]  883 	ld	a, (0x0a, sp)
      00970D 88               [ 1]  884 	push	a
      00970E CD 9F C3         [ 4]  885 	call	_TIM1_SetIC1Prescaler
      009711 84               [ 1]  886 	pop	a
                           0003C0   887 	Sstm8s_tim1$TIM1_PWMIConfig$156 ==.
                                    888 ;	StdPeriphLib/src/stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
      009712 7B 0B            [ 1]  889 	ld	a, (0x0b, sp)
      009714 88               [ 1]  890 	push	a
      009715 7B 02            [ 1]  891 	ld	a, (0x02, sp)
      009717 88               [ 1]  892 	push	a
      009718 7B 04            [ 1]  893 	ld	a, (0x04, sp)
      00971A 88               [ 1]  894 	push	a
      00971B CD A2 4D         [ 4]  895 	call	_TI2_Config
      00971E 5B 03            [ 2]  896 	addw	sp, #3
                           0003CE   897 	Sstm8s_tim1$TIM1_PWMIConfig$157 ==.
                                    898 ;	StdPeriphLib/src/stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      009720 7B 0A            [ 1]  899 	ld	a, (0x0a, sp)
      009722 88               [ 1]  900 	push	a
      009723 CD 9F E2         [ 4]  901 	call	_TIM1_SetIC2Prescaler
      009726 84               [ 1]  902 	pop	a
      009727 20 2A            [ 2]  903 	jra	00110$
      009729                        904 00108$:
                           0003D7   905 	Sstm8s_tim1$TIM1_PWMIConfig$158 ==.
                                    906 ;	StdPeriphLib/src/stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      009729 7B 0B            [ 1]  907 	ld	a, (0x0b, sp)
      00972B 88               [ 1]  908 	push	a
      00972C 7B 0A            [ 1]  909 	ld	a, (0x0a, sp)
      00972E 88               [ 1]  910 	push	a
      00972F 7B 0A            [ 1]  911 	ld	a, (0x0a, sp)
      009731 88               [ 1]  912 	push	a
      009732 CD A2 4D         [ 4]  913 	call	_TI2_Config
      009735 5B 03            [ 2]  914 	addw	sp, #3
                           0003E5   915 	Sstm8s_tim1$TIM1_PWMIConfig$159 ==.
                                    916 ;	StdPeriphLib/src/stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      009737 7B 0A            [ 1]  917 	ld	a, (0x0a, sp)
      009739 88               [ 1]  918 	push	a
      00973A CD 9F E2         [ 4]  919 	call	_TIM1_SetIC2Prescaler
      00973D 84               [ 1]  920 	pop	a
                           0003EC   921 	Sstm8s_tim1$TIM1_PWMIConfig$160 ==.
                                    922 ;	StdPeriphLib/src/stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
      00973E 7B 0B            [ 1]  923 	ld	a, (0x0b, sp)
      009740 88               [ 1]  924 	push	a
      009741 7B 02            [ 1]  925 	ld	a, (0x02, sp)
      009743 88               [ 1]  926 	push	a
      009744 7B 04            [ 1]  927 	ld	a, (0x04, sp)
      009746 88               [ 1]  928 	push	a
      009747 CD A2 07         [ 4]  929 	call	_TI1_Config
      00974A 5B 03            [ 2]  930 	addw	sp, #3
                           0003FA   931 	Sstm8s_tim1$TIM1_PWMIConfig$161 ==.
                                    932 ;	StdPeriphLib/src/stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      00974C 7B 0A            [ 1]  933 	ld	a, (0x0a, sp)
      00974E 88               [ 1]  934 	push	a
      00974F CD 9F C3         [ 4]  935 	call	_TIM1_SetIC1Prescaler
      009752 84               [ 1]  936 	pop	a
      009753                        937 00110$:
                           000401   938 	Sstm8s_tim1$TIM1_PWMIConfig$162 ==.
                                    939 ;	StdPeriphLib/src/stm8s_tim1.c: 553: }
      009753 5B 02            [ 2]  940 	addw	sp, #2
                           000403   941 	Sstm8s_tim1$TIM1_PWMIConfig$163 ==.
                           000403   942 	XG$TIM1_PWMIConfig$0$0 ==.
      009755 32 01 A4         [ 1]  943 	pop	_fp_
      009758 32 01 A5         [ 1]  944 	pop	_fp_+1
      00975B 81               [ 4]  945 	ret
                           00040A   946 	Sstm8s_tim1$TIM1_PWMIConfig$164 ==.
                           00040A   947 	Sstm8s_tim1$TIM1_Cmd$165 ==.
                                    948 ;	StdPeriphLib/src/stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
                                    949 ;	-----------------------------------------
                                    950 ;	 function TIM1_Cmd
                                    951 ;	-----------------------------------------
      00975C                        952 _TIM1_Cmd:
      00975C 3B 01 A5         [ 1]  953 	push	_fp_+1
      00975F 3B 01 A4         [ 1]  954 	push	_fp_
      009762 90 96            [ 1]  955 	ldw	y, sp
      009764 90 CF 01 A4      [ 2]  956 	ldw	_fp_, y
                           000416   957 	Sstm8s_tim1$TIM1_Cmd$166 ==.
                           000416   958 	Sstm8s_tim1$TIM1_Cmd$167 ==.
                                    959 ;	StdPeriphLib/src/stm8s_tim1.c: 567: if (NewState != DISABLE)
      009768 0D 05            [ 1]  960 	tnz	(0x05, sp)
      00976A 27 06            [ 1]  961 	jreq	00102$
                           00041A   962 	Sstm8s_tim1$TIM1_Cmd$168 ==.
                                    963 ;	StdPeriphLib/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      00976C 72 10 52 50      [ 1]  964 	bset	0x5250, #0
      009770 20 04            [ 2]  965 	jra	00104$
      009772                        966 00102$:
                           000420   967 	Sstm8s_tim1$TIM1_Cmd$169 ==.
                                    968 ;	StdPeriphLib/src/stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      009772 72 11 52 50      [ 1]  969 	bres	0x5250, #0
      009776                        970 00104$:
                           000424   971 	Sstm8s_tim1$TIM1_Cmd$170 ==.
                                    972 ;	StdPeriphLib/src/stm8s_tim1.c: 575: }
                           000424   973 	Sstm8s_tim1$TIM1_Cmd$171 ==.
                           000424   974 	XG$TIM1_Cmd$0$0 ==.
      009776 32 01 A4         [ 1]  975 	pop	_fp_
      009779 32 01 A5         [ 1]  976 	pop	_fp_+1
      00977C 81               [ 4]  977 	ret
                           00042B   978 	Sstm8s_tim1$TIM1_Cmd$172 ==.
                           00042B   979 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$173 ==.
                                    980 ;	StdPeriphLib/src/stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
                                    981 ;	-----------------------------------------
                                    982 ;	 function TIM1_CtrlPWMOutputs
                                    983 ;	-----------------------------------------
      00977D                        984 _TIM1_CtrlPWMOutputs:
      00977D 3B 01 A5         [ 1]  985 	push	_fp_+1
      009780 3B 01 A4         [ 1]  986 	push	_fp_
      009783 90 96            [ 1]  987 	ldw	y, sp
      009785 90 CF 01 A4      [ 2]  988 	ldw	_fp_, y
                           000437   989 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$174 ==.
                           000437   990 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$175 ==.
                                    991 ;	StdPeriphLib/src/stm8s_tim1.c: 590: if (NewState != DISABLE)
      009789 0D 05            [ 1]  992 	tnz	(0x05, sp)
      00978B 27 06            [ 1]  993 	jreq	00102$
                           00043B   994 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$176 ==.
                                    995 ;	StdPeriphLib/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      00978D 72 1E 52 6D      [ 1]  996 	bset	0x526d, #7
      009791 20 04            [ 2]  997 	jra	00104$
      009793                        998 00102$:
                           000441   999 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$177 ==.
                                   1000 ;	StdPeriphLib/src/stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
      009793 72 1F 52 6D      [ 1] 1001 	bres	0x526d, #7
      009797                       1002 00104$:
                           000445  1003 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$178 ==.
                                   1004 ;	StdPeriphLib/src/stm8s_tim1.c: 598: }
                           000445  1005 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$179 ==.
                           000445  1006 	XG$TIM1_CtrlPWMOutputs$0$0 ==.
      009797 32 01 A4         [ 1] 1007 	pop	_fp_
      00979A 32 01 A5         [ 1] 1008 	pop	_fp_+1
      00979D 81               [ 4] 1009 	ret
                           00044C  1010 	Sstm8s_tim1$TIM1_CtrlPWMOutputs$180 ==.
                           00044C  1011 	Sstm8s_tim1$TIM1_ITConfig$181 ==.
                                   1012 ;	StdPeriphLib/src/stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                   1013 ;	-----------------------------------------
                                   1014 ;	 function TIM1_ITConfig
                                   1015 ;	-----------------------------------------
      00979E                       1016 _TIM1_ITConfig:
      00979E 3B 01 A5         [ 1] 1017 	push	_fp_+1
      0097A1 3B 01 A4         [ 1] 1018 	push	_fp_
      0097A4 90 96            [ 1] 1019 	ldw	y, sp
      0097A6 90 CF 01 A4      [ 2] 1020 	ldw	_fp_, y
                           000458  1021 	Sstm8s_tim1$TIM1_ITConfig$182 ==.
      0097AA 88               [ 1] 1022 	push	a
                           000459  1023 	Sstm8s_tim1$TIM1_ITConfig$183 ==.
                                   1024 ;	StdPeriphLib/src/stm8s_tim1.c: 623: if (NewState != DISABLE)
      0097AB 0D 07            [ 1] 1025 	tnz	(0x07, sp)
      0097AD 27 0C            [ 1] 1026 	jreq	00102$
                           00045D  1027 	Sstm8s_tim1$TIM1_ITConfig$184 ==.
                                   1028 ;	StdPeriphLib/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      0097AF AE 52 54         [ 2] 1029 	ldw	x, #0x5254
      0097B2 F6               [ 1] 1030 	ld	a, (x)
      0097B3 1A 06            [ 1] 1031 	or	a, (0x06, sp)
      0097B5 AE 52 54         [ 2] 1032 	ldw	x, #0x5254
      0097B8 F7               [ 1] 1033 	ld	(x), a
      0097B9 20 0F            [ 2] 1034 	jra	00104$
      0097BB                       1035 00102$:
                           000469  1036 	Sstm8s_tim1$TIM1_ITConfig$185 ==.
                                   1037 ;	StdPeriphLib/src/stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      0097BB AE 52 54         [ 2] 1038 	ldw	x, #0x5254
      0097BE F6               [ 1] 1039 	ld	a, (x)
      0097BF 6B 01            [ 1] 1040 	ld	(0x01, sp), a
      0097C1 7B 06            [ 1] 1041 	ld	a, (0x06, sp)
      0097C3 43               [ 1] 1042 	cpl	a
      0097C4 14 01            [ 1] 1043 	and	a, (0x01, sp)
      0097C6 AE 52 54         [ 2] 1044 	ldw	x, #0x5254
      0097C9 F7               [ 1] 1045 	ld	(x), a
      0097CA                       1046 00104$:
                           000478  1047 	Sstm8s_tim1$TIM1_ITConfig$186 ==.
                                   1048 ;	StdPeriphLib/src/stm8s_tim1.c: 633: }
      0097CA 84               [ 1] 1049 	pop	a
                           000479  1050 	Sstm8s_tim1$TIM1_ITConfig$187 ==.
                           000479  1051 	XG$TIM1_ITConfig$0$0 ==.
      0097CB 32 01 A4         [ 1] 1052 	pop	_fp_
      0097CE 32 01 A5         [ 1] 1053 	pop	_fp_+1
      0097D1 81               [ 4] 1054 	ret
                           000480  1055 	Sstm8s_tim1$TIM1_ITConfig$188 ==.
                           000480  1056 	Sstm8s_tim1$TIM1_InternalClockConfig$189 ==.
                                   1057 ;	StdPeriphLib/src/stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function TIM1_InternalClockConfig
                                   1060 ;	-----------------------------------------
      0097D2                       1061 _TIM1_InternalClockConfig:
      0097D2 3B 01 A5         [ 1] 1062 	push	_fp_+1
      0097D5 3B 01 A4         [ 1] 1063 	push	_fp_
      0097D8 90 96            [ 1] 1064 	ldw	y, sp
      0097DA 90 CF 01 A4      [ 2] 1065 	ldw	_fp_, y
                           00048C  1066 	Sstm8s_tim1$TIM1_InternalClockConfig$190 ==.
                           00048C  1067 	Sstm8s_tim1$TIM1_InternalClockConfig$191 ==.
                                   1068 ;	StdPeriphLib/src/stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
      0097DE AE 52 52         [ 2] 1069 	ldw	x, #0x5252
      0097E1 F6               [ 1] 1070 	ld	a, (x)
      0097E2 A4 F8            [ 1] 1071 	and	a, #0xf8
      0097E4 F7               [ 1] 1072 	ld	(x), a
                           000493  1073 	Sstm8s_tim1$TIM1_InternalClockConfig$192 ==.
                                   1074 ;	StdPeriphLib/src/stm8s_tim1.c: 644: }
                           000493  1075 	Sstm8s_tim1$TIM1_InternalClockConfig$193 ==.
                           000493  1076 	XG$TIM1_InternalClockConfig$0$0 ==.
      0097E5 32 01 A4         [ 1] 1077 	pop	_fp_
      0097E8 32 01 A5         [ 1] 1078 	pop	_fp_+1
      0097EB 81               [ 4] 1079 	ret
                           00049A  1080 	Sstm8s_tim1$TIM1_InternalClockConfig$194 ==.
                           00049A  1081 	Sstm8s_tim1$TIM1_ETRClockMode1Config$195 ==.
                                   1082 ;	StdPeriphLib/src/stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1083 ;	-----------------------------------------
                                   1084 ;	 function TIM1_ETRClockMode1Config
                                   1085 ;	-----------------------------------------
      0097EC                       1086 _TIM1_ETRClockMode1Config:
      0097EC 3B 01 A5         [ 1] 1087 	push	_fp_+1
      0097EF 3B 01 A4         [ 1] 1088 	push	_fp_
      0097F2 90 96            [ 1] 1089 	ldw	y, sp
      0097F4 90 CF 01 A4      [ 2] 1090 	ldw	_fp_, y
                           0004A6  1091 	Sstm8s_tim1$TIM1_ETRClockMode1Config$196 ==.
                           0004A6  1092 	Sstm8s_tim1$TIM1_ETRClockMode1Config$197 ==.
                                   1093 ;	StdPeriphLib/src/stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      0097F8 7B 07            [ 1] 1094 	ld	a, (0x07, sp)
      0097FA 88               [ 1] 1095 	push	a
      0097FB 7B 07            [ 1] 1096 	ld	a, (0x07, sp)
      0097FD 88               [ 1] 1097 	push	a
      0097FE 7B 07            [ 1] 1098 	ld	a, (0x07, sp)
      009800 88               [ 1] 1099 	push	a
      009801 CD 98 41         [ 4] 1100 	call	_TIM1_ETRConfig
      009804 5B 03            [ 2] 1101 	addw	sp, #3
                           0004B4  1102 	Sstm8s_tim1$TIM1_ETRClockMode1Config$198 ==.
                                   1103 ;	StdPeriphLib/src/stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
      009806 AE 52 52         [ 2] 1104 	ldw	x, #0x5252
      009809 F6               [ 1] 1105 	ld	a, (x)
      00980A A4 88            [ 1] 1106 	and	a, #0x88
      00980C AA 77            [ 1] 1107 	or	a, #0x77
      00980E AE 52 52         [ 2] 1108 	ldw	x, #0x5252
      009811 F7               [ 1] 1109 	ld	(x), a
                           0004C0  1110 	Sstm8s_tim1$TIM1_ETRClockMode1Config$199 ==.
                                   1111 ;	StdPeriphLib/src/stm8s_tim1.c: 676: }
                           0004C0  1112 	Sstm8s_tim1$TIM1_ETRClockMode1Config$200 ==.
                           0004C0  1113 	XG$TIM1_ETRClockMode1Config$0$0 ==.
      009812 32 01 A4         [ 1] 1114 	pop	_fp_
      009815 32 01 A5         [ 1] 1115 	pop	_fp_+1
      009818 81               [ 4] 1116 	ret
                           0004C7  1117 	Sstm8s_tim1$TIM1_ETRClockMode1Config$201 ==.
                           0004C7  1118 	Sstm8s_tim1$TIM1_ETRClockMode2Config$202 ==.
                                   1119 ;	StdPeriphLib/src/stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1120 ;	-----------------------------------------
                                   1121 ;	 function TIM1_ETRClockMode2Config
                                   1122 ;	-----------------------------------------
      009819                       1123 _TIM1_ETRClockMode2Config:
      009819 3B 01 A5         [ 1] 1124 	push	_fp_+1
      00981C 3B 01 A4         [ 1] 1125 	push	_fp_
      00981F 90 96            [ 1] 1126 	ldw	y, sp
      009821 90 CF 01 A4      [ 2] 1127 	ldw	_fp_, y
                           0004D3  1128 	Sstm8s_tim1$TIM1_ETRClockMode2Config$203 ==.
                           0004D3  1129 	Sstm8s_tim1$TIM1_ETRClockMode2Config$204 ==.
                                   1130 ;	StdPeriphLib/src/stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      009825 7B 07            [ 1] 1131 	ld	a, (0x07, sp)
      009827 88               [ 1] 1132 	push	a
      009828 7B 07            [ 1] 1133 	ld	a, (0x07, sp)
      00982A 88               [ 1] 1134 	push	a
      00982B 7B 07            [ 1] 1135 	ld	a, (0x07, sp)
      00982D 88               [ 1] 1136 	push	a
      00982E CD 98 41         [ 4] 1137 	call	_TIM1_ETRConfig
      009831 5B 03            [ 2] 1138 	addw	sp, #3
                           0004E1  1139 	Sstm8s_tim1$TIM1_ETRClockMode2Config$205 ==.
                                   1140 ;	StdPeriphLib/src/stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
      009833 AE 52 53         [ 2] 1141 	ldw	x, #0x5253
      009836 F6               [ 1] 1142 	ld	a, (x)
      009837 AA 40            [ 1] 1143 	or	a, #0x40
      009839 F7               [ 1] 1144 	ld	(x), a
                           0004E8  1145 	Sstm8s_tim1$TIM1_ETRClockMode2Config$206 ==.
                                   1146 ;	StdPeriphLib/src/stm8s_tim1.c: 707: }
                           0004E8  1147 	Sstm8s_tim1$TIM1_ETRClockMode2Config$207 ==.
                           0004E8  1148 	XG$TIM1_ETRClockMode2Config$0$0 ==.
      00983A 32 01 A4         [ 1] 1149 	pop	_fp_
      00983D 32 01 A5         [ 1] 1150 	pop	_fp_+1
      009840 81               [ 4] 1151 	ret
                           0004EF  1152 	Sstm8s_tim1$TIM1_ETRClockMode2Config$208 ==.
                           0004EF  1153 	Sstm8s_tim1$TIM1_ETRConfig$209 ==.
                                   1154 ;	StdPeriphLib/src/stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function TIM1_ETRConfig
                                   1157 ;	-----------------------------------------
      009841                       1158 _TIM1_ETRConfig:
      009841 3B 01 A5         [ 1] 1159 	push	_fp_+1
      009844 3B 01 A4         [ 1] 1160 	push	_fp_
      009847 90 96            [ 1] 1161 	ldw	y, sp
      009849 90 CF 01 A4      [ 2] 1162 	ldw	_fp_, y
                           0004FB  1163 	Sstm8s_tim1$TIM1_ETRConfig$210 ==.
      00984D 88               [ 1] 1164 	push	a
                           0004FC  1165 	Sstm8s_tim1$TIM1_ETRConfig$211 ==.
                                   1166 ;	StdPeriphLib/src/stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
      00984E AE 52 53         [ 2] 1167 	ldw	x, #0x5253
      009851 F6               [ 1] 1168 	ld	a, (x)
      009852 6B 01            [ 1] 1169 	ld	(0x01, sp), a
      009854 7B 06            [ 1] 1170 	ld	a, (0x06, sp)
      009856 1A 07            [ 1] 1171 	or	a, (0x07, sp)
                           000506  1172 	Sstm8s_tim1$TIM1_ETRConfig$212 ==.
                                   1173 ;	StdPeriphLib/src/stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
      009858 1A 08            [ 1] 1174 	or	a, (0x08, sp)
      00985A 1A 01            [ 1] 1175 	or	a, (0x01, sp)
      00985C AE 52 53         [ 2] 1176 	ldw	x, #0x5253
      00985F F7               [ 1] 1177 	ld	(x), a
                           00050E  1178 	Sstm8s_tim1$TIM1_ETRConfig$213 ==.
                                   1179 ;	StdPeriphLib/src/stm8s_tim1.c: 734: }
      009860 84               [ 1] 1180 	pop	a
                           00050F  1181 	Sstm8s_tim1$TIM1_ETRConfig$214 ==.
                           00050F  1182 	XG$TIM1_ETRConfig$0$0 ==.
      009861 32 01 A4         [ 1] 1183 	pop	_fp_
      009864 32 01 A5         [ 1] 1184 	pop	_fp_+1
      009867 81               [ 4] 1185 	ret
                           000516  1186 	Sstm8s_tim1$TIM1_ETRConfig$215 ==.
                           000516  1187 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$216 ==.
                                   1188 ;	StdPeriphLib/src/stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
                                   1189 ;	-----------------------------------------
                                   1190 ;	 function TIM1_TIxExternalClockConfig
                                   1191 ;	-----------------------------------------
      009868                       1192 _TIM1_TIxExternalClockConfig:
      009868 3B 01 A5         [ 1] 1193 	push	_fp_+1
      00986B 3B 01 A4         [ 1] 1194 	push	_fp_
      00986E 90 96            [ 1] 1195 	ldw	y, sp
      009870 90 CF 01 A4      [ 2] 1196 	ldw	_fp_, y
                           000522  1197 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$217 ==.
                           000522  1198 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$218 ==.
                                   1199 ;	StdPeriphLib/src/stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
      009874 7B 05            [ 1] 1200 	ld	a, (0x05, sp)
      009876 A1 60            [ 1] 1201 	cp	a, #0x60
      009878 26 0F            [ 1] 1202 	jrne	00102$
                           000528  1203 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$219 ==.
                                   1204 ;	StdPeriphLib/src/stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      00987A 7B 07            [ 1] 1205 	ld	a, (0x07, sp)
      00987C 88               [ 1] 1206 	push	a
      00987D 4B 01            [ 1] 1207 	push	#0x01
      00987F 7B 08            [ 1] 1208 	ld	a, (0x08, sp)
      009881 88               [ 1] 1209 	push	a
      009882 CD A2 4D         [ 4] 1210 	call	_TI2_Config
      009885 5B 03            [ 2] 1211 	addw	sp, #3
      009887 20 0D            [ 2] 1212 	jra	00103$
      009889                       1213 00102$:
                           000537  1214 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$220 ==.
                                   1215 ;	StdPeriphLib/src/stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      009889 7B 07            [ 1] 1216 	ld	a, (0x07, sp)
      00988B 88               [ 1] 1217 	push	a
      00988C 4B 01            [ 1] 1218 	push	#0x01
      00988E 7B 08            [ 1] 1219 	ld	a, (0x08, sp)
      009890 88               [ 1] 1220 	push	a
      009891 CD A2 07         [ 4] 1221 	call	_TI1_Config
      009894 5B 03            [ 2] 1222 	addw	sp, #3
      009896                       1223 00103$:
                           000544  1224 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$221 ==.
                                   1225 ;	StdPeriphLib/src/stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
      009896 7B 05            [ 1] 1226 	ld	a, (0x05, sp)
      009898 88               [ 1] 1227 	push	a
      009899 CD 98 AB         [ 4] 1228 	call	_TIM1_SelectInputTrigger
      00989C 84               [ 1] 1229 	pop	a
                           00054B  1230 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$222 ==.
                                   1231 ;	StdPeriphLib/src/stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
      00989D AE 52 52         [ 2] 1232 	ldw	x, #0x5252
      0098A0 F6               [ 1] 1233 	ld	a, (x)
      0098A1 AA 07            [ 1] 1234 	or	a, #0x07
      0098A3 F7               [ 1] 1235 	ld	(x), a
                           000552  1236 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$223 ==.
                                   1237 ;	StdPeriphLib/src/stm8s_tim1.c: 775: }
                           000552  1238 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$224 ==.
                           000552  1239 	XG$TIM1_TIxExternalClockConfig$0$0 ==.
      0098A4 32 01 A4         [ 1] 1240 	pop	_fp_
      0098A7 32 01 A5         [ 1] 1241 	pop	_fp_+1
      0098AA 81               [ 4] 1242 	ret
                           000559  1243 	Sstm8s_tim1$TIM1_TIxExternalClockConfig$225 ==.
                           000559  1244 	Sstm8s_tim1$TIM1_SelectInputTrigger$226 ==.
                                   1245 ;	StdPeriphLib/src/stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
                                   1246 ;	-----------------------------------------
                                   1247 ;	 function TIM1_SelectInputTrigger
                                   1248 ;	-----------------------------------------
      0098AB                       1249 _TIM1_SelectInputTrigger:
      0098AB 3B 01 A5         [ 1] 1250 	push	_fp_+1
      0098AE 3B 01 A4         [ 1] 1251 	push	_fp_
      0098B1 90 96            [ 1] 1252 	ldw	y, sp
      0098B3 90 CF 01 A4      [ 2] 1253 	ldw	_fp_, y
                           000565  1254 	Sstm8s_tim1$TIM1_SelectInputTrigger$227 ==.
                           000565  1255 	Sstm8s_tim1$TIM1_SelectInputTrigger$228 ==.
                                   1256 ;	StdPeriphLib/src/stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
      0098B7 AE 52 52         [ 2] 1257 	ldw	x, #0x5252
      0098BA F6               [ 1] 1258 	ld	a, (x)
      0098BB A4 8F            [ 1] 1259 	and	a, #0x8f
      0098BD 1A 05            [ 1] 1260 	or	a, (0x05, sp)
      0098BF AE 52 52         [ 2] 1261 	ldw	x, #0x5252
      0098C2 F7               [ 1] 1262 	ld	(x), a
                           000571  1263 	Sstm8s_tim1$TIM1_SelectInputTrigger$229 ==.
                                   1264 ;	StdPeriphLib/src/stm8s_tim1.c: 794: }
                           000571  1265 	Sstm8s_tim1$TIM1_SelectInputTrigger$230 ==.
                           000571  1266 	XG$TIM1_SelectInputTrigger$0$0 ==.
      0098C3 32 01 A4         [ 1] 1267 	pop	_fp_
      0098C6 32 01 A5         [ 1] 1268 	pop	_fp_+1
      0098C9 81               [ 4] 1269 	ret
                           000578  1270 	Sstm8s_tim1$TIM1_SelectInputTrigger$231 ==.
                           000578  1271 	Sstm8s_tim1$TIM1_UpdateDisableConfig$232 ==.
                                   1272 ;	StdPeriphLib/src/stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function TIM1_UpdateDisableConfig
                                   1275 ;	-----------------------------------------
      0098CA                       1276 _TIM1_UpdateDisableConfig:
      0098CA 3B 01 A5         [ 1] 1277 	push	_fp_+1
      0098CD 3B 01 A4         [ 1] 1278 	push	_fp_
      0098D0 90 96            [ 1] 1279 	ldw	y, sp
      0098D2 90 CF 01 A4      [ 2] 1280 	ldw	_fp_, y
                           000584  1281 	Sstm8s_tim1$TIM1_UpdateDisableConfig$233 ==.
                           000584  1282 	Sstm8s_tim1$TIM1_UpdateDisableConfig$234 ==.
                                   1283 ;	StdPeriphLib/src/stm8s_tim1.c: 809: if (NewState != DISABLE)
      0098D6 0D 05            [ 1] 1284 	tnz	(0x05, sp)
      0098D8 27 09            [ 1] 1285 	jreq	00102$
                           000588  1286 	Sstm8s_tim1$TIM1_UpdateDisableConfig$235 ==.
                                   1287 ;	StdPeriphLib/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      0098DA AE 52 50         [ 2] 1288 	ldw	x, #0x5250
      0098DD F6               [ 1] 1289 	ld	a, (x)
      0098DE AA 02            [ 1] 1290 	or	a, #0x02
      0098E0 F7               [ 1] 1291 	ld	(x), a
      0098E1 20 07            [ 2] 1292 	jra	00104$
      0098E3                       1293 00102$:
                           000591  1294 	Sstm8s_tim1$TIM1_UpdateDisableConfig$236 ==.
                                   1295 ;	StdPeriphLib/src/stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
      0098E3 AE 52 50         [ 2] 1296 	ldw	x, #0x5250
      0098E6 F6               [ 1] 1297 	ld	a, (x)
      0098E7 A4 FD            [ 1] 1298 	and	a, #0xfd
      0098E9 F7               [ 1] 1299 	ld	(x), a
      0098EA                       1300 00104$:
                           000598  1301 	Sstm8s_tim1$TIM1_UpdateDisableConfig$237 ==.
                                   1302 ;	StdPeriphLib/src/stm8s_tim1.c: 817: }
                           000598  1303 	Sstm8s_tim1$TIM1_UpdateDisableConfig$238 ==.
                           000598  1304 	XG$TIM1_UpdateDisableConfig$0$0 ==.
      0098EA 32 01 A4         [ 1] 1305 	pop	_fp_
      0098ED 32 01 A5         [ 1] 1306 	pop	_fp_+1
      0098F0 81               [ 4] 1307 	ret
                           00059F  1308 	Sstm8s_tim1$TIM1_UpdateDisableConfig$239 ==.
                           00059F  1309 	Sstm8s_tim1$TIM1_UpdateRequestConfig$240 ==.
                                   1310 ;	StdPeriphLib/src/stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
                                   1311 ;	-----------------------------------------
                                   1312 ;	 function TIM1_UpdateRequestConfig
                                   1313 ;	-----------------------------------------
      0098F1                       1314 _TIM1_UpdateRequestConfig:
      0098F1 3B 01 A5         [ 1] 1315 	push	_fp_+1
      0098F4 3B 01 A4         [ 1] 1316 	push	_fp_
      0098F7 90 96            [ 1] 1317 	ldw	y, sp
      0098F9 90 CF 01 A4      [ 2] 1318 	ldw	_fp_, y
                           0005AB  1319 	Sstm8s_tim1$TIM1_UpdateRequestConfig$241 ==.
                           0005AB  1320 	Sstm8s_tim1$TIM1_UpdateRequestConfig$242 ==.
                                   1321 ;	StdPeriphLib/src/stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
      0098FD 0D 05            [ 1] 1322 	tnz	(0x05, sp)
      0098FF 27 09            [ 1] 1323 	jreq	00102$
                           0005AF  1324 	Sstm8s_tim1$TIM1_UpdateRequestConfig$243 ==.
                                   1325 ;	StdPeriphLib/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      009901 AE 52 50         [ 2] 1326 	ldw	x, #0x5250
      009904 F6               [ 1] 1327 	ld	a, (x)
      009905 AA 04            [ 1] 1328 	or	a, #0x04
      009907 F7               [ 1] 1329 	ld	(x), a
      009908 20 07            [ 2] 1330 	jra	00104$
      00990A                       1331 00102$:
                           0005B8  1332 	Sstm8s_tim1$TIM1_UpdateRequestConfig$244 ==.
                                   1333 ;	StdPeriphLib/src/stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
      00990A AE 52 50         [ 2] 1334 	ldw	x, #0x5250
      00990D F6               [ 1] 1335 	ld	a, (x)
      00990E A4 FB            [ 1] 1336 	and	a, #0xfb
      009910 F7               [ 1] 1337 	ld	(x), a
      009911                       1338 00104$:
                           0005BF  1339 	Sstm8s_tim1$TIM1_UpdateRequestConfig$245 ==.
                                   1340 ;	StdPeriphLib/src/stm8s_tim1.c: 841: }
                           0005BF  1341 	Sstm8s_tim1$TIM1_UpdateRequestConfig$246 ==.
                           0005BF  1342 	XG$TIM1_UpdateRequestConfig$0$0 ==.
      009911 32 01 A4         [ 1] 1343 	pop	_fp_
      009914 32 01 A5         [ 1] 1344 	pop	_fp_+1
      009917 81               [ 4] 1345 	ret
                           0005C6  1346 	Sstm8s_tim1$TIM1_UpdateRequestConfig$247 ==.
                           0005C6  1347 	Sstm8s_tim1$TIM1_SelectHallSensor$248 ==.
                                   1348 ;	StdPeriphLib/src/stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
                                   1349 ;	-----------------------------------------
                                   1350 ;	 function TIM1_SelectHallSensor
                                   1351 ;	-----------------------------------------
      009918                       1352 _TIM1_SelectHallSensor:
      009918 3B 01 A5         [ 1] 1353 	push	_fp_+1
      00991B 3B 01 A4         [ 1] 1354 	push	_fp_
      00991E 90 96            [ 1] 1355 	ldw	y, sp
      009920 90 CF 01 A4      [ 2] 1356 	ldw	_fp_, y
                           0005D2  1357 	Sstm8s_tim1$TIM1_SelectHallSensor$249 ==.
                           0005D2  1358 	Sstm8s_tim1$TIM1_SelectHallSensor$250 ==.
                                   1359 ;	StdPeriphLib/src/stm8s_tim1.c: 855: if (NewState != DISABLE)
      009924 0D 05            [ 1] 1360 	tnz	(0x05, sp)
      009926 27 06            [ 1] 1361 	jreq	00102$
                           0005D6  1362 	Sstm8s_tim1$TIM1_SelectHallSensor$251 ==.
                                   1363 ;	StdPeriphLib/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      009928 72 1E 52 51      [ 1] 1364 	bset	0x5251, #7
      00992C 20 04            [ 2] 1365 	jra	00104$
      00992E                       1366 00102$:
                           0005DC  1367 	Sstm8s_tim1$TIM1_SelectHallSensor$252 ==.
                                   1368 ;	StdPeriphLib/src/stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
      00992E 72 1F 52 51      [ 1] 1369 	bres	0x5251, #7
      009932                       1370 00104$:
                           0005E0  1371 	Sstm8s_tim1$TIM1_SelectHallSensor$253 ==.
                                   1372 ;	StdPeriphLib/src/stm8s_tim1.c: 863: }
                           0005E0  1373 	Sstm8s_tim1$TIM1_SelectHallSensor$254 ==.
                           0005E0  1374 	XG$TIM1_SelectHallSensor$0$0 ==.
      009932 32 01 A4         [ 1] 1375 	pop	_fp_
      009935 32 01 A5         [ 1] 1376 	pop	_fp_+1
      009938 81               [ 4] 1377 	ret
                           0005E7  1378 	Sstm8s_tim1$TIM1_SelectHallSensor$255 ==.
                           0005E7  1379 	Sstm8s_tim1$TIM1_SelectOnePulseMode$256 ==.
                                   1380 ;	StdPeriphLib/src/stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function TIM1_SelectOnePulseMode
                                   1383 ;	-----------------------------------------
      009939                       1384 _TIM1_SelectOnePulseMode:
      009939 3B 01 A5         [ 1] 1385 	push	_fp_+1
      00993C 3B 01 A4         [ 1] 1386 	push	_fp_
      00993F 90 96            [ 1] 1387 	ldw	y, sp
      009941 90 CF 01 A4      [ 2] 1388 	ldw	_fp_, y
                           0005F3  1389 	Sstm8s_tim1$TIM1_SelectOnePulseMode$257 ==.
                           0005F3  1390 	Sstm8s_tim1$TIM1_SelectOnePulseMode$258 ==.
                                   1391 ;	StdPeriphLib/src/stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
      009945 0D 05            [ 1] 1392 	tnz	(0x05, sp)
      009947 27 09            [ 1] 1393 	jreq	00102$
                           0005F7  1394 	Sstm8s_tim1$TIM1_SelectOnePulseMode$259 ==.
                                   1395 ;	StdPeriphLib/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      009949 AE 52 50         [ 2] 1396 	ldw	x, #0x5250
      00994C F6               [ 1] 1397 	ld	a, (x)
      00994D AA 08            [ 1] 1398 	or	a, #0x08
      00994F F7               [ 1] 1399 	ld	(x), a
      009950 20 07            [ 2] 1400 	jra	00104$
      009952                       1401 00102$:
                           000600  1402 	Sstm8s_tim1$TIM1_SelectOnePulseMode$260 ==.
                                   1403 ;	StdPeriphLib/src/stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
      009952 AE 52 50         [ 2] 1404 	ldw	x, #0x5250
      009955 F6               [ 1] 1405 	ld	a, (x)
      009956 A4 F7            [ 1] 1406 	and	a, #0xf7
      009958 F7               [ 1] 1407 	ld	(x), a
      009959                       1408 00104$:
                           000607  1409 	Sstm8s_tim1$TIM1_SelectOnePulseMode$261 ==.
                                   1410 ;	StdPeriphLib/src/stm8s_tim1.c: 888: }
                           000607  1411 	Sstm8s_tim1$TIM1_SelectOnePulseMode$262 ==.
                           000607  1412 	XG$TIM1_SelectOnePulseMode$0$0 ==.
      009959 32 01 A4         [ 1] 1413 	pop	_fp_
      00995C 32 01 A5         [ 1] 1414 	pop	_fp_+1
      00995F 81               [ 4] 1415 	ret
                           00060E  1416 	Sstm8s_tim1$TIM1_SelectOnePulseMode$263 ==.
                           00060E  1417 	Sstm8s_tim1$TIM1_SelectOutputTrigger$264 ==.
                                   1418 ;	StdPeriphLib/src/stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function TIM1_SelectOutputTrigger
                                   1421 ;	-----------------------------------------
      009960                       1422 _TIM1_SelectOutputTrigger:
      009960 3B 01 A5         [ 1] 1423 	push	_fp_+1
      009963 3B 01 A4         [ 1] 1424 	push	_fp_
      009966 90 96            [ 1] 1425 	ldw	y, sp
      009968 90 CF 01 A4      [ 2] 1426 	ldw	_fp_, y
                           00061A  1427 	Sstm8s_tim1$TIM1_SelectOutputTrigger$265 ==.
                           00061A  1428 	Sstm8s_tim1$TIM1_SelectOutputTrigger$266 ==.
                                   1429 ;	StdPeriphLib/src/stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
      00996C AE 52 51         [ 2] 1430 	ldw	x, #0x5251
      00996F F6               [ 1] 1431 	ld	a, (x)
      009970 A4 8F            [ 1] 1432 	and	a, #0x8f
                           000620  1433 	Sstm8s_tim1$TIM1_SelectOutputTrigger$267 ==.
                                   1434 ;	StdPeriphLib/src/stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
      009972 1A 05            [ 1] 1435 	or	a, (0x05, sp)
      009974 AE 52 51         [ 2] 1436 	ldw	x, #0x5251
      009977 F7               [ 1] 1437 	ld	(x), a
                           000626  1438 	Sstm8s_tim1$TIM1_SelectOutputTrigger$268 ==.
                                   1439 ;	StdPeriphLib/src/stm8s_tim1.c: 911: }
                           000626  1440 	Sstm8s_tim1$TIM1_SelectOutputTrigger$269 ==.
                           000626  1441 	XG$TIM1_SelectOutputTrigger$0$0 ==.
      009978 32 01 A4         [ 1] 1442 	pop	_fp_
      00997B 32 01 A5         [ 1] 1443 	pop	_fp_+1
      00997E 81               [ 4] 1444 	ret
                           00062D  1445 	Sstm8s_tim1$TIM1_SelectOutputTrigger$270 ==.
                           00062D  1446 	Sstm8s_tim1$TIM1_SelectSlaveMode$271 ==.
                                   1447 ;	StdPeriphLib/src/stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
                                   1448 ;	-----------------------------------------
                                   1449 ;	 function TIM1_SelectSlaveMode
                                   1450 ;	-----------------------------------------
      00997F                       1451 _TIM1_SelectSlaveMode:
      00997F 3B 01 A5         [ 1] 1452 	push	_fp_+1
      009982 3B 01 A4         [ 1] 1453 	push	_fp_
      009985 90 96            [ 1] 1454 	ldw	y, sp
      009987 90 CF 01 A4      [ 2] 1455 	ldw	_fp_, y
                           000639  1456 	Sstm8s_tim1$TIM1_SelectSlaveMode$272 ==.
                           000639  1457 	Sstm8s_tim1$TIM1_SelectSlaveMode$273 ==.
                                   1458 ;	StdPeriphLib/src/stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
      00998B AE 52 52         [ 2] 1459 	ldw	x, #0x5252
      00998E F6               [ 1] 1460 	ld	a, (x)
      00998F A4 F8            [ 1] 1461 	and	a, #0xf8
                           00063F  1462 	Sstm8s_tim1$TIM1_SelectSlaveMode$274 ==.
                                   1463 ;	StdPeriphLib/src/stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
      009991 1A 05            [ 1] 1464 	or	a, (0x05, sp)
      009993 AE 52 52         [ 2] 1465 	ldw	x, #0x5252
      009996 F7               [ 1] 1466 	ld	(x), a
                           000645  1467 	Sstm8s_tim1$TIM1_SelectSlaveMode$275 ==.
                                   1468 ;	StdPeriphLib/src/stm8s_tim1.c: 931: }
                           000645  1469 	Sstm8s_tim1$TIM1_SelectSlaveMode$276 ==.
                           000645  1470 	XG$TIM1_SelectSlaveMode$0$0 ==.
      009997 32 01 A4         [ 1] 1471 	pop	_fp_
      00999A 32 01 A5         [ 1] 1472 	pop	_fp_+1
      00999D 81               [ 4] 1473 	ret
                           00064C  1474 	Sstm8s_tim1$TIM1_SelectSlaveMode$277 ==.
                           00064C  1475 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$278 ==.
                                   1476 ;	StdPeriphLib/src/stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
                                   1477 ;	-----------------------------------------
                                   1478 ;	 function TIM1_SelectMasterSlaveMode
                                   1479 ;	-----------------------------------------
      00999E                       1480 _TIM1_SelectMasterSlaveMode:
      00999E 3B 01 A5         [ 1] 1481 	push	_fp_+1
      0099A1 3B 01 A4         [ 1] 1482 	push	_fp_
      0099A4 90 96            [ 1] 1483 	ldw	y, sp
      0099A6 90 CF 01 A4      [ 2] 1484 	ldw	_fp_, y
                           000658  1485 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$279 ==.
                           000658  1486 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$280 ==.
                                   1487 ;	StdPeriphLib/src/stm8s_tim1.c: 945: if (NewState != DISABLE)
      0099AA 0D 05            [ 1] 1488 	tnz	(0x05, sp)
      0099AC 27 06            [ 1] 1489 	jreq	00102$
                           00065C  1490 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$281 ==.
                                   1491 ;	StdPeriphLib/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      0099AE 72 1E 52 52      [ 1] 1492 	bset	0x5252, #7
      0099B2 20 04            [ 2] 1493 	jra	00104$
      0099B4                       1494 00102$:
                           000662  1495 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$282 ==.
                                   1496 ;	StdPeriphLib/src/stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
      0099B4 72 1F 52 52      [ 1] 1497 	bres	0x5252, #7
      0099B8                       1498 00104$:
                           000666  1499 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$283 ==.
                                   1500 ;	StdPeriphLib/src/stm8s_tim1.c: 953: }
                           000666  1501 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$284 ==.
                           000666  1502 	XG$TIM1_SelectMasterSlaveMode$0$0 ==.
      0099B8 32 01 A4         [ 1] 1503 	pop	_fp_
      0099BB 32 01 A5         [ 1] 1504 	pop	_fp_+1
      0099BE 81               [ 4] 1505 	ret
                           00066D  1506 	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$285 ==.
                           00066D  1507 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$286 ==.
                                   1508 ;	StdPeriphLib/src/stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
                                   1509 ;	-----------------------------------------
                                   1510 ;	 function TIM1_EncoderInterfaceConfig
                                   1511 ;	-----------------------------------------
      0099BF                       1512 _TIM1_EncoderInterfaceConfig:
      0099BF 3B 01 A5         [ 1] 1513 	push	_fp_+1
      0099C2 3B 01 A4         [ 1] 1514 	push	_fp_
      0099C5 90 96            [ 1] 1515 	ldw	y, sp
      0099C7 90 CF 01 A4      [ 2] 1516 	ldw	_fp_, y
                           000679  1517 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$287 ==.
                           000679  1518 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$288 ==.
                                   1519 ;	StdPeriphLib/src/stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
      0099CB 0D 06            [ 1] 1520 	tnz	(0x06, sp)
      0099CD 27 09            [ 1] 1521 	jreq	00102$
                           00067D  1522 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$289 ==.
                                   1523 ;	StdPeriphLib/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0099CF AE 52 5C         [ 2] 1524 	ldw	x, #0x525c
      0099D2 F6               [ 1] 1525 	ld	a, (x)
      0099D3 AA 02            [ 1] 1526 	or	a, #0x02
      0099D5 F7               [ 1] 1527 	ld	(x), a
      0099D6 20 07            [ 2] 1528 	jra	00103$
      0099D8                       1529 00102$:
                           000686  1530 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$290 ==.
                                   1531 ;	StdPeriphLib/src/stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      0099D8 AE 52 5C         [ 2] 1532 	ldw	x, #0x525c
      0099DB F6               [ 1] 1533 	ld	a, (x)
      0099DC A4 FD            [ 1] 1534 	and	a, #0xfd
      0099DE F7               [ 1] 1535 	ld	(x), a
      0099DF                       1536 00103$:
                           00068D  1537 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$291 ==.
                                   1538 ;	StdPeriphLib/src/stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
      0099DF 0D 07            [ 1] 1539 	tnz	(0x07, sp)
      0099E1 27 09            [ 1] 1540 	jreq	00105$
                           000691  1541 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$292 ==.
                                   1542 ;	StdPeriphLib/src/stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      0099E3 AE 52 5C         [ 2] 1543 	ldw	x, #0x525c
      0099E6 F6               [ 1] 1544 	ld	a, (x)
      0099E7 AA 20            [ 1] 1545 	or	a, #0x20
      0099E9 F7               [ 1] 1546 	ld	(x), a
      0099EA 20 07            [ 2] 1547 	jra	00106$
      0099EC                       1548 00105$:
                           00069A  1549 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$293 ==.
                                   1550 ;	StdPeriphLib/src/stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      0099EC AE 52 5C         [ 2] 1551 	ldw	x, #0x525c
      0099EF F6               [ 1] 1552 	ld	a, (x)
      0099F0 A4 DF            [ 1] 1553 	and	a, #0xdf
      0099F2 F7               [ 1] 1554 	ld	(x), a
      0099F3                       1555 00106$:
                           0006A1  1556 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$294 ==.
                                   1557 ;	StdPeriphLib/src/stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
      0099F3 AE 52 52         [ 2] 1558 	ldw	x, #0x5252
      0099F6 F6               [ 1] 1559 	ld	a, (x)
      0099F7 A4 F0            [ 1] 1560 	and	a, #0xf0
                           0006A7  1561 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$295 ==.
                                   1562 ;	StdPeriphLib/src/stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
      0099F9 1A 05            [ 1] 1563 	or	a, (0x05, sp)
      0099FB AE 52 52         [ 2] 1564 	ldw	x, #0x5252
      0099FE F7               [ 1] 1565 	ld	(x), a
                           0006AD  1566 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$296 ==.
                                   1567 ;	StdPeriphLib/src/stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
      0099FF AE 52 58         [ 2] 1568 	ldw	x, #0x5258
      009A02 F6               [ 1] 1569 	ld	a, (x)
      009A03 A4 FC            [ 1] 1570 	and	a, #0xfc
      009A05 AA 01            [ 1] 1571 	or	a, #0x01
      009A07 AE 52 58         [ 2] 1572 	ldw	x, #0x5258
      009A0A F7               [ 1] 1573 	ld	(x), a
                           0006B9  1574 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$297 ==.
                                   1575 ;	StdPeriphLib/src/stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
      009A0B AE 52 59         [ 2] 1576 	ldw	x, #0x5259
      009A0E F6               [ 1] 1577 	ld	a, (x)
      009A0F A4 FC            [ 1] 1578 	and	a, #0xfc
      009A11 AA 01            [ 1] 1579 	or	a, #0x01
      009A13 AE 52 59         [ 2] 1580 	ldw	x, #0x5259
      009A16 F7               [ 1] 1581 	ld	(x), a
                           0006C5  1582 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$298 ==.
                                   1583 ;	StdPeriphLib/src/stm8s_tim1.c: 1011: }
                           0006C5  1584 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$299 ==.
                           0006C5  1585 	XG$TIM1_EncoderInterfaceConfig$0$0 ==.
      009A17 32 01 A4         [ 1] 1586 	pop	_fp_
      009A1A 32 01 A5         [ 1] 1587 	pop	_fp_+1
      009A1D 81               [ 4] 1588 	ret
                           0006CC  1589 	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$300 ==.
                           0006CC  1590 	Sstm8s_tim1$TIM1_PrescalerConfig$301 ==.
                                   1591 ;	StdPeriphLib/src/stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
                                   1592 ;	-----------------------------------------
                                   1593 ;	 function TIM1_PrescalerConfig
                                   1594 ;	-----------------------------------------
      009A1E                       1595 _TIM1_PrescalerConfig:
      009A1E 3B 01 A5         [ 1] 1596 	push	_fp_+1
      009A21 3B 01 A4         [ 1] 1597 	push	_fp_
      009A24 90 96            [ 1] 1598 	ldw	y, sp
      009A26 90 CF 01 A4      [ 2] 1599 	ldw	_fp_, y
                           0006D8  1600 	Sstm8s_tim1$TIM1_PrescalerConfig$302 ==.
      009A2A 52 02            [ 2] 1601 	sub	sp, #2
                           0006DA  1602 	Sstm8s_tim1$TIM1_PrescalerConfig$303 ==.
                                   1603 ;	StdPeriphLib/src/stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
      009A2C 7B 07            [ 1] 1604 	ld	a, (0x07, sp)
      009A2E 0F 01            [ 1] 1605 	clr	(0x01, sp)
      009A30 AE 52 60         [ 2] 1606 	ldw	x, #0x5260
      009A33 F7               [ 1] 1607 	ld	(x), a
                           0006E2  1608 	Sstm8s_tim1$TIM1_PrescalerConfig$304 ==.
                                   1609 ;	StdPeriphLib/src/stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
      009A34 7B 08            [ 1] 1610 	ld	a, (0x08, sp)
      009A36 AE 52 61         [ 2] 1611 	ldw	x, #0x5261
      009A39 F7               [ 1] 1612 	ld	(x), a
                           0006E8  1613 	Sstm8s_tim1$TIM1_PrescalerConfig$305 ==.
                                   1614 ;	StdPeriphLib/src/stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
      009A3A AE 52 57         [ 2] 1615 	ldw	x, #0x5257
      009A3D 7B 09            [ 1] 1616 	ld	a, (0x09, sp)
      009A3F F7               [ 1] 1617 	ld	(x), a
                           0006EE  1618 	Sstm8s_tim1$TIM1_PrescalerConfig$306 ==.
                                   1619 ;	StdPeriphLib/src/stm8s_tim1.c: 1035: }
      009A40 5B 02            [ 2] 1620 	addw	sp, #2
                           0006F0  1621 	Sstm8s_tim1$TIM1_PrescalerConfig$307 ==.
                           0006F0  1622 	XG$TIM1_PrescalerConfig$0$0 ==.
      009A42 32 01 A4         [ 1] 1623 	pop	_fp_
      009A45 32 01 A5         [ 1] 1624 	pop	_fp_+1
      009A48 81               [ 4] 1625 	ret
                           0006F7  1626 	Sstm8s_tim1$TIM1_PrescalerConfig$308 ==.
                           0006F7  1627 	Sstm8s_tim1$TIM1_CounterModeConfig$309 ==.
                                   1628 ;	StdPeriphLib/src/stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
                                   1629 ;	-----------------------------------------
                                   1630 ;	 function TIM1_CounterModeConfig
                                   1631 ;	-----------------------------------------
      009A49                       1632 _TIM1_CounterModeConfig:
      009A49 3B 01 A5         [ 1] 1633 	push	_fp_+1
      009A4C 3B 01 A4         [ 1] 1634 	push	_fp_
      009A4F 90 96            [ 1] 1635 	ldw	y, sp
      009A51 90 CF 01 A4      [ 2] 1636 	ldw	_fp_, y
                           000703  1637 	Sstm8s_tim1$TIM1_CounterModeConfig$310 ==.
                           000703  1638 	Sstm8s_tim1$TIM1_CounterModeConfig$311 ==.
                                   1639 ;	StdPeriphLib/src/stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
      009A55 AE 52 50         [ 2] 1640 	ldw	x, #0x5250
      009A58 F6               [ 1] 1641 	ld	a, (x)
      009A59 A4 8F            [ 1] 1642 	and	a, #0x8f
                           000709  1643 	Sstm8s_tim1$TIM1_CounterModeConfig$312 ==.
                                   1644 ;	StdPeriphLib/src/stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
      009A5B 1A 05            [ 1] 1645 	or	a, (0x05, sp)
      009A5D AE 52 50         [ 2] 1646 	ldw	x, #0x5250
      009A60 F7               [ 1] 1647 	ld	(x), a
                           00070F  1648 	Sstm8s_tim1$TIM1_CounterModeConfig$313 ==.
                                   1649 ;	StdPeriphLib/src/stm8s_tim1.c: 1057: }
                           00070F  1650 	Sstm8s_tim1$TIM1_CounterModeConfig$314 ==.
                           00070F  1651 	XG$TIM1_CounterModeConfig$0$0 ==.
      009A61 32 01 A4         [ 1] 1652 	pop	_fp_
      009A64 32 01 A5         [ 1] 1653 	pop	_fp_+1
      009A67 81               [ 4] 1654 	ret
                           000716  1655 	Sstm8s_tim1$TIM1_CounterModeConfig$315 ==.
                           000716  1656 	Sstm8s_tim1$TIM1_ForcedOC1Config$316 ==.
                                   1657 ;	StdPeriphLib/src/stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1658 ;	-----------------------------------------
                                   1659 ;	 function TIM1_ForcedOC1Config
                                   1660 ;	-----------------------------------------
      009A68                       1661 _TIM1_ForcedOC1Config:
      009A68 3B 01 A5         [ 1] 1662 	push	_fp_+1
      009A6B 3B 01 A4         [ 1] 1663 	push	_fp_
      009A6E 90 96            [ 1] 1664 	ldw	y, sp
      009A70 90 CF 01 A4      [ 2] 1665 	ldw	_fp_, y
                           000722  1666 	Sstm8s_tim1$TIM1_ForcedOC1Config$317 ==.
                           000722  1667 	Sstm8s_tim1$TIM1_ForcedOC1Config$318 ==.
                                   1668 ;	StdPeriphLib/src/stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
      009A74 AE 52 58         [ 2] 1669 	ldw	x, #0x5258
      009A77 F6               [ 1] 1670 	ld	a, (x)
      009A78 A4 8F            [ 1] 1671 	and	a, #0x8f
                           000728  1672 	Sstm8s_tim1$TIM1_ForcedOC1Config$319 ==.
                                   1673 ;	StdPeriphLib/src/stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
      009A7A 1A 05            [ 1] 1674 	or	a, (0x05, sp)
      009A7C AE 52 58         [ 2] 1675 	ldw	x, #0x5258
      009A7F F7               [ 1] 1676 	ld	(x), a
                           00072E  1677 	Sstm8s_tim1$TIM1_ForcedOC1Config$320 ==.
                                   1678 ;	StdPeriphLib/src/stm8s_tim1.c: 1075: }
                           00072E  1679 	Sstm8s_tim1$TIM1_ForcedOC1Config$321 ==.
                           00072E  1680 	XG$TIM1_ForcedOC1Config$0$0 ==.
      009A80 32 01 A4         [ 1] 1681 	pop	_fp_
      009A83 32 01 A5         [ 1] 1682 	pop	_fp_+1
      009A86 81               [ 4] 1683 	ret
                           000735  1684 	Sstm8s_tim1$TIM1_ForcedOC1Config$322 ==.
                           000735  1685 	Sstm8s_tim1$TIM1_ForcedOC2Config$323 ==.
                                   1686 ;	StdPeriphLib/src/stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1687 ;	-----------------------------------------
                                   1688 ;	 function TIM1_ForcedOC2Config
                                   1689 ;	-----------------------------------------
      009A87                       1690 _TIM1_ForcedOC2Config:
      009A87 3B 01 A5         [ 1] 1691 	push	_fp_+1
      009A8A 3B 01 A4         [ 1] 1692 	push	_fp_
      009A8D 90 96            [ 1] 1693 	ldw	y, sp
      009A8F 90 CF 01 A4      [ 2] 1694 	ldw	_fp_, y
                           000741  1695 	Sstm8s_tim1$TIM1_ForcedOC2Config$324 ==.
                           000741  1696 	Sstm8s_tim1$TIM1_ForcedOC2Config$325 ==.
                                   1697 ;	StdPeriphLib/src/stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      009A93 AE 52 59         [ 2] 1698 	ldw	x, #0x5259
      009A96 F6               [ 1] 1699 	ld	a, (x)
      009A97 A4 8F            [ 1] 1700 	and	a, #0x8f
                           000747  1701 	Sstm8s_tim1$TIM1_ForcedOC2Config$326 ==.
                                   1702 ;	StdPeriphLib/src/stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
      009A99 1A 05            [ 1] 1703 	or	a, (0x05, sp)
      009A9B AE 52 59         [ 2] 1704 	ldw	x, #0x5259
      009A9E F7               [ 1] 1705 	ld	(x), a
                           00074D  1706 	Sstm8s_tim1$TIM1_ForcedOC2Config$327 ==.
                                   1707 ;	StdPeriphLib/src/stm8s_tim1.c: 1093: }
                           00074D  1708 	Sstm8s_tim1$TIM1_ForcedOC2Config$328 ==.
                           00074D  1709 	XG$TIM1_ForcedOC2Config$0$0 ==.
      009A9F 32 01 A4         [ 1] 1710 	pop	_fp_
      009AA2 32 01 A5         [ 1] 1711 	pop	_fp_+1
      009AA5 81               [ 4] 1712 	ret
                           000754  1713 	Sstm8s_tim1$TIM1_ForcedOC2Config$329 ==.
                           000754  1714 	Sstm8s_tim1$TIM1_ForcedOC3Config$330 ==.
                                   1715 ;	StdPeriphLib/src/stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1716 ;	-----------------------------------------
                                   1717 ;	 function TIM1_ForcedOC3Config
                                   1718 ;	-----------------------------------------
      009AA6                       1719 _TIM1_ForcedOC3Config:
      009AA6 3B 01 A5         [ 1] 1720 	push	_fp_+1
      009AA9 3B 01 A4         [ 1] 1721 	push	_fp_
      009AAC 90 96            [ 1] 1722 	ldw	y, sp
      009AAE 90 CF 01 A4      [ 2] 1723 	ldw	_fp_, y
                           000760  1724 	Sstm8s_tim1$TIM1_ForcedOC3Config$331 ==.
                           000760  1725 	Sstm8s_tim1$TIM1_ForcedOC3Config$332 ==.
                                   1726 ;	StdPeriphLib/src/stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
      009AB2 AE 52 5A         [ 2] 1727 	ldw	x, #0x525a
      009AB5 F6               [ 1] 1728 	ld	a, (x)
      009AB6 A4 8F            [ 1] 1729 	and	a, #0x8f
                           000766  1730 	Sstm8s_tim1$TIM1_ForcedOC3Config$333 ==.
                                   1731 ;	StdPeriphLib/src/stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
      009AB8 1A 05            [ 1] 1732 	or	a, (0x05, sp)
      009ABA AE 52 5A         [ 2] 1733 	ldw	x, #0x525a
      009ABD F7               [ 1] 1734 	ld	(x), a
                           00076C  1735 	Sstm8s_tim1$TIM1_ForcedOC3Config$334 ==.
                                   1736 ;	StdPeriphLib/src/stm8s_tim1.c: 1112: }
                           00076C  1737 	Sstm8s_tim1$TIM1_ForcedOC3Config$335 ==.
                           00076C  1738 	XG$TIM1_ForcedOC3Config$0$0 ==.
      009ABE 32 01 A4         [ 1] 1739 	pop	_fp_
      009AC1 32 01 A5         [ 1] 1740 	pop	_fp_+1
      009AC4 81               [ 4] 1741 	ret
                           000773  1742 	Sstm8s_tim1$TIM1_ForcedOC3Config$336 ==.
                           000773  1743 	Sstm8s_tim1$TIM1_ForcedOC4Config$337 ==.
                                   1744 ;	StdPeriphLib/src/stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1745 ;	-----------------------------------------
                                   1746 ;	 function TIM1_ForcedOC4Config
                                   1747 ;	-----------------------------------------
      009AC5                       1748 _TIM1_ForcedOC4Config:
      009AC5 3B 01 A5         [ 1] 1749 	push	_fp_+1
      009AC8 3B 01 A4         [ 1] 1750 	push	_fp_
      009ACB 90 96            [ 1] 1751 	ldw	y, sp
      009ACD 90 CF 01 A4      [ 2] 1752 	ldw	_fp_, y
                           00077F  1753 	Sstm8s_tim1$TIM1_ForcedOC4Config$338 ==.
                           00077F  1754 	Sstm8s_tim1$TIM1_ForcedOC4Config$339 ==.
                                   1755 ;	StdPeriphLib/src/stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009AD1 AE 52 5B         [ 2] 1756 	ldw	x, #0x525b
      009AD4 F6               [ 1] 1757 	ld	a, (x)
      009AD5 A4 8F            [ 1] 1758 	and	a, #0x8f
                           000785  1759 	Sstm8s_tim1$TIM1_ForcedOC4Config$340 ==.
                                   1760 ;	StdPeriphLib/src/stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
      009AD7 1A 05            [ 1] 1761 	or	a, (0x05, sp)
      009AD9 AE 52 5B         [ 2] 1762 	ldw	x, #0x525b
      009ADC F7               [ 1] 1763 	ld	(x), a
                           00078B  1764 	Sstm8s_tim1$TIM1_ForcedOC4Config$341 ==.
                                   1765 ;	StdPeriphLib/src/stm8s_tim1.c: 1131: }
                           00078B  1766 	Sstm8s_tim1$TIM1_ForcedOC4Config$342 ==.
                           00078B  1767 	XG$TIM1_ForcedOC4Config$0$0 ==.
      009ADD 32 01 A4         [ 1] 1768 	pop	_fp_
      009AE0 32 01 A5         [ 1] 1769 	pop	_fp_+1
      009AE3 81               [ 4] 1770 	ret
                           000792  1771 	Sstm8s_tim1$TIM1_ForcedOC4Config$343 ==.
                           000792  1772 	Sstm8s_tim1$TIM1_ARRPreloadConfig$344 ==.
                                   1773 ;	StdPeriphLib/src/stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                   1774 ;	-----------------------------------------
                                   1775 ;	 function TIM1_ARRPreloadConfig
                                   1776 ;	-----------------------------------------
      009AE4                       1777 _TIM1_ARRPreloadConfig:
      009AE4 3B 01 A5         [ 1] 1778 	push	_fp_+1
      009AE7 3B 01 A4         [ 1] 1779 	push	_fp_
      009AEA 90 96            [ 1] 1780 	ldw	y, sp
      009AEC 90 CF 01 A4      [ 2] 1781 	ldw	_fp_, y
                           00079E  1782 	Sstm8s_tim1$TIM1_ARRPreloadConfig$345 ==.
                           00079E  1783 	Sstm8s_tim1$TIM1_ARRPreloadConfig$346 ==.
                                   1784 ;	StdPeriphLib/src/stm8s_tim1.c: 1145: if (NewState != DISABLE)
      009AF0 0D 05            [ 1] 1785 	tnz	(0x05, sp)
      009AF2 27 06            [ 1] 1786 	jreq	00102$
                           0007A2  1787 	Sstm8s_tim1$TIM1_ARRPreloadConfig$347 ==.
                                   1788 ;	StdPeriphLib/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      009AF4 72 1E 52 50      [ 1] 1789 	bset	0x5250, #7
      009AF8 20 04            [ 2] 1790 	jra	00104$
      009AFA                       1791 00102$:
                           0007A8  1792 	Sstm8s_tim1$TIM1_ARRPreloadConfig$348 ==.
                                   1793 ;	StdPeriphLib/src/stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      009AFA 72 1F 52 50      [ 1] 1794 	bres	0x5250, #7
      009AFE                       1795 00104$:
                           0007AC  1796 	Sstm8s_tim1$TIM1_ARRPreloadConfig$349 ==.
                                   1797 ;	StdPeriphLib/src/stm8s_tim1.c: 1153: }
                           0007AC  1798 	Sstm8s_tim1$TIM1_ARRPreloadConfig$350 ==.
                           0007AC  1799 	XG$TIM1_ARRPreloadConfig$0$0 ==.
      009AFE 32 01 A4         [ 1] 1800 	pop	_fp_
      009B01 32 01 A5         [ 1] 1801 	pop	_fp_+1
      009B04 81               [ 4] 1802 	ret
                           0007B3  1803 	Sstm8s_tim1$TIM1_ARRPreloadConfig$351 ==.
                           0007B3  1804 	Sstm8s_tim1$TIM1_SelectCOM$352 ==.
                                   1805 ;	StdPeriphLib/src/stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
                                   1806 ;	-----------------------------------------
                                   1807 ;	 function TIM1_SelectCOM
                                   1808 ;	-----------------------------------------
      009B05                       1809 _TIM1_SelectCOM:
      009B05 3B 01 A5         [ 1] 1810 	push	_fp_+1
      009B08 3B 01 A4         [ 1] 1811 	push	_fp_
      009B0B 90 96            [ 1] 1812 	ldw	y, sp
      009B0D 90 CF 01 A4      [ 2] 1813 	ldw	_fp_, y
                           0007BF  1814 	Sstm8s_tim1$TIM1_SelectCOM$353 ==.
                           0007BF  1815 	Sstm8s_tim1$TIM1_SelectCOM$354 ==.
                                   1816 ;	StdPeriphLib/src/stm8s_tim1.c: 1167: if (NewState != DISABLE)
      009B11 0D 05            [ 1] 1817 	tnz	(0x05, sp)
      009B13 27 09            [ 1] 1818 	jreq	00102$
                           0007C3  1819 	Sstm8s_tim1$TIM1_SelectCOM$355 ==.
                                   1820 ;	StdPeriphLib/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      009B15 AE 52 51         [ 2] 1821 	ldw	x, #0x5251
      009B18 F6               [ 1] 1822 	ld	a, (x)
      009B19 AA 04            [ 1] 1823 	or	a, #0x04
      009B1B F7               [ 1] 1824 	ld	(x), a
      009B1C 20 07            [ 2] 1825 	jra	00104$
      009B1E                       1826 00102$:
                           0007CC  1827 	Sstm8s_tim1$TIM1_SelectCOM$356 ==.
                                   1828 ;	StdPeriphLib/src/stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
      009B1E AE 52 51         [ 2] 1829 	ldw	x, #0x5251
      009B21 F6               [ 1] 1830 	ld	a, (x)
      009B22 A4 FB            [ 1] 1831 	and	a, #0xfb
      009B24 F7               [ 1] 1832 	ld	(x), a
      009B25                       1833 00104$:
                           0007D3  1834 	Sstm8s_tim1$TIM1_SelectCOM$357 ==.
                                   1835 ;	StdPeriphLib/src/stm8s_tim1.c: 1175: }
                           0007D3  1836 	Sstm8s_tim1$TIM1_SelectCOM$358 ==.
                           0007D3  1837 	XG$TIM1_SelectCOM$0$0 ==.
      009B25 32 01 A4         [ 1] 1838 	pop	_fp_
      009B28 32 01 A5         [ 1] 1839 	pop	_fp_+1
      009B2B 81               [ 4] 1840 	ret
                           0007DA  1841 	Sstm8s_tim1$TIM1_SelectCOM$359 ==.
                           0007DA  1842 	Sstm8s_tim1$TIM1_CCPreloadControl$360 ==.
                                   1843 ;	StdPeriphLib/src/stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
                                   1844 ;	-----------------------------------------
                                   1845 ;	 function TIM1_CCPreloadControl
                                   1846 ;	-----------------------------------------
      009B2C                       1847 _TIM1_CCPreloadControl:
      009B2C 3B 01 A5         [ 1] 1848 	push	_fp_+1
      009B2F 3B 01 A4         [ 1] 1849 	push	_fp_
      009B32 90 96            [ 1] 1850 	ldw	y, sp
      009B34 90 CF 01 A4      [ 2] 1851 	ldw	_fp_, y
                           0007E6  1852 	Sstm8s_tim1$TIM1_CCPreloadControl$361 ==.
                           0007E6  1853 	Sstm8s_tim1$TIM1_CCPreloadControl$362 ==.
                                   1854 ;	StdPeriphLib/src/stm8s_tim1.c: 1189: if (NewState != DISABLE)
      009B38 0D 05            [ 1] 1855 	tnz	(0x05, sp)
      009B3A 27 06            [ 1] 1856 	jreq	00102$
                           0007EA  1857 	Sstm8s_tim1$TIM1_CCPreloadControl$363 ==.
                                   1858 ;	StdPeriphLib/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      009B3C 72 10 52 51      [ 1] 1859 	bset	0x5251, #0
      009B40 20 04            [ 2] 1860 	jra	00104$
      009B42                       1861 00102$:
                           0007F0  1862 	Sstm8s_tim1$TIM1_CCPreloadControl$364 ==.
                                   1863 ;	StdPeriphLib/src/stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
      009B42 72 11 52 51      [ 1] 1864 	bres	0x5251, #0
      009B46                       1865 00104$:
                           0007F4  1866 	Sstm8s_tim1$TIM1_CCPreloadControl$365 ==.
                                   1867 ;	StdPeriphLib/src/stm8s_tim1.c: 1197: }
                           0007F4  1868 	Sstm8s_tim1$TIM1_CCPreloadControl$366 ==.
                           0007F4  1869 	XG$TIM1_CCPreloadControl$0$0 ==.
      009B46 32 01 A4         [ 1] 1870 	pop	_fp_
      009B49 32 01 A5         [ 1] 1871 	pop	_fp_+1
      009B4C 81               [ 4] 1872 	ret
                           0007FB  1873 	Sstm8s_tim1$TIM1_CCPreloadControl$367 ==.
                           0007FB  1874 	Sstm8s_tim1$TIM1_OC1PreloadConfig$368 ==.
                                   1875 ;	StdPeriphLib/src/stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
                                   1876 ;	-----------------------------------------
                                   1877 ;	 function TIM1_OC1PreloadConfig
                                   1878 ;	-----------------------------------------
      009B4D                       1879 _TIM1_OC1PreloadConfig:
      009B4D 3B 01 A5         [ 1] 1880 	push	_fp_+1
      009B50 3B 01 A4         [ 1] 1881 	push	_fp_
      009B53 90 96            [ 1] 1882 	ldw	y, sp
      009B55 90 CF 01 A4      [ 2] 1883 	ldw	_fp_, y
                           000807  1884 	Sstm8s_tim1$TIM1_OC1PreloadConfig$369 ==.
                           000807  1885 	Sstm8s_tim1$TIM1_OC1PreloadConfig$370 ==.
                                   1886 ;	StdPeriphLib/src/stm8s_tim1.c: 1211: if (NewState != DISABLE)
      009B59 0D 05            [ 1] 1887 	tnz	(0x05, sp)
      009B5B 27 09            [ 1] 1888 	jreq	00102$
                           00080B  1889 	Sstm8s_tim1$TIM1_OC1PreloadConfig$371 ==.
                                   1890 ;	StdPeriphLib/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      009B5D AE 52 58         [ 2] 1891 	ldw	x, #0x5258
      009B60 F6               [ 1] 1892 	ld	a, (x)
      009B61 AA 08            [ 1] 1893 	or	a, #0x08
      009B63 F7               [ 1] 1894 	ld	(x), a
      009B64 20 07            [ 2] 1895 	jra	00104$
      009B66                       1896 00102$:
                           000814  1897 	Sstm8s_tim1$TIM1_OC1PreloadConfig$372 ==.
                                   1898 ;	StdPeriphLib/src/stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      009B66 AE 52 58         [ 2] 1899 	ldw	x, #0x5258
      009B69 F6               [ 1] 1900 	ld	a, (x)
      009B6A A4 F7            [ 1] 1901 	and	a, #0xf7
      009B6C F7               [ 1] 1902 	ld	(x), a
      009B6D                       1903 00104$:
                           00081B  1904 	Sstm8s_tim1$TIM1_OC1PreloadConfig$373 ==.
                                   1905 ;	StdPeriphLib/src/stm8s_tim1.c: 1219: }
                           00081B  1906 	Sstm8s_tim1$TIM1_OC1PreloadConfig$374 ==.
                           00081B  1907 	XG$TIM1_OC1PreloadConfig$0$0 ==.
      009B6D 32 01 A4         [ 1] 1908 	pop	_fp_
      009B70 32 01 A5         [ 1] 1909 	pop	_fp_+1
      009B73 81               [ 4] 1910 	ret
                           000822  1911 	Sstm8s_tim1$TIM1_OC1PreloadConfig$375 ==.
                           000822  1912 	Sstm8s_tim1$TIM1_OC2PreloadConfig$376 ==.
                                   1913 ;	StdPeriphLib/src/stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
                                   1914 ;	-----------------------------------------
                                   1915 ;	 function TIM1_OC2PreloadConfig
                                   1916 ;	-----------------------------------------
      009B74                       1917 _TIM1_OC2PreloadConfig:
      009B74 3B 01 A5         [ 1] 1918 	push	_fp_+1
      009B77 3B 01 A4         [ 1] 1919 	push	_fp_
      009B7A 90 96            [ 1] 1920 	ldw	y, sp
      009B7C 90 CF 01 A4      [ 2] 1921 	ldw	_fp_, y
                           00082E  1922 	Sstm8s_tim1$TIM1_OC2PreloadConfig$377 ==.
                           00082E  1923 	Sstm8s_tim1$TIM1_OC2PreloadConfig$378 ==.
                                   1924 ;	StdPeriphLib/src/stm8s_tim1.c: 1233: if (NewState != DISABLE)
      009B80 0D 05            [ 1] 1925 	tnz	(0x05, sp)
      009B82 27 09            [ 1] 1926 	jreq	00102$
                           000832  1927 	Sstm8s_tim1$TIM1_OC2PreloadConfig$379 ==.
                                   1928 ;	StdPeriphLib/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      009B84 AE 52 59         [ 2] 1929 	ldw	x, #0x5259
      009B87 F6               [ 1] 1930 	ld	a, (x)
      009B88 AA 08            [ 1] 1931 	or	a, #0x08
      009B8A F7               [ 1] 1932 	ld	(x), a
      009B8B 20 07            [ 2] 1933 	jra	00104$
      009B8D                       1934 00102$:
                           00083B  1935 	Sstm8s_tim1$TIM1_OC2PreloadConfig$380 ==.
                                   1936 ;	StdPeriphLib/src/stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      009B8D AE 52 59         [ 2] 1937 	ldw	x, #0x5259
      009B90 F6               [ 1] 1938 	ld	a, (x)
      009B91 A4 F7            [ 1] 1939 	and	a, #0xf7
      009B93 F7               [ 1] 1940 	ld	(x), a
      009B94                       1941 00104$:
                           000842  1942 	Sstm8s_tim1$TIM1_OC2PreloadConfig$381 ==.
                                   1943 ;	StdPeriphLib/src/stm8s_tim1.c: 1241: }
                           000842  1944 	Sstm8s_tim1$TIM1_OC2PreloadConfig$382 ==.
                           000842  1945 	XG$TIM1_OC2PreloadConfig$0$0 ==.
      009B94 32 01 A4         [ 1] 1946 	pop	_fp_
      009B97 32 01 A5         [ 1] 1947 	pop	_fp_+1
      009B9A 81               [ 4] 1948 	ret
                           000849  1949 	Sstm8s_tim1$TIM1_OC2PreloadConfig$383 ==.
                           000849  1950 	Sstm8s_tim1$TIM1_OC3PreloadConfig$384 ==.
                                   1951 ;	StdPeriphLib/src/stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
                                   1952 ;	-----------------------------------------
                                   1953 ;	 function TIM1_OC3PreloadConfig
                                   1954 ;	-----------------------------------------
      009B9B                       1955 _TIM1_OC3PreloadConfig:
      009B9B 3B 01 A5         [ 1] 1956 	push	_fp_+1
      009B9E 3B 01 A4         [ 1] 1957 	push	_fp_
      009BA1 90 96            [ 1] 1958 	ldw	y, sp
      009BA3 90 CF 01 A4      [ 2] 1959 	ldw	_fp_, y
                           000855  1960 	Sstm8s_tim1$TIM1_OC3PreloadConfig$385 ==.
                           000855  1961 	Sstm8s_tim1$TIM1_OC3PreloadConfig$386 ==.
                                   1962 ;	StdPeriphLib/src/stm8s_tim1.c: 1255: if (NewState != DISABLE)
      009BA7 0D 05            [ 1] 1963 	tnz	(0x05, sp)
      009BA9 27 09            [ 1] 1964 	jreq	00102$
                           000859  1965 	Sstm8s_tim1$TIM1_OC3PreloadConfig$387 ==.
                                   1966 ;	StdPeriphLib/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      009BAB AE 52 5A         [ 2] 1967 	ldw	x, #0x525a
      009BAE F6               [ 1] 1968 	ld	a, (x)
      009BAF AA 08            [ 1] 1969 	or	a, #0x08
      009BB1 F7               [ 1] 1970 	ld	(x), a
      009BB2 20 07            [ 2] 1971 	jra	00104$
      009BB4                       1972 00102$:
                           000862  1973 	Sstm8s_tim1$TIM1_OC3PreloadConfig$388 ==.
                                   1974 ;	StdPeriphLib/src/stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      009BB4 AE 52 5A         [ 2] 1975 	ldw	x, #0x525a
      009BB7 F6               [ 1] 1976 	ld	a, (x)
      009BB8 A4 F7            [ 1] 1977 	and	a, #0xf7
      009BBA F7               [ 1] 1978 	ld	(x), a
      009BBB                       1979 00104$:
                           000869  1980 	Sstm8s_tim1$TIM1_OC3PreloadConfig$389 ==.
                                   1981 ;	StdPeriphLib/src/stm8s_tim1.c: 1263: }
                           000869  1982 	Sstm8s_tim1$TIM1_OC3PreloadConfig$390 ==.
                           000869  1983 	XG$TIM1_OC3PreloadConfig$0$0 ==.
      009BBB 32 01 A4         [ 1] 1984 	pop	_fp_
      009BBE 32 01 A5         [ 1] 1985 	pop	_fp_+1
      009BC1 81               [ 4] 1986 	ret
                           000870  1987 	Sstm8s_tim1$TIM1_OC3PreloadConfig$391 ==.
                           000870  1988 	Sstm8s_tim1$TIM1_OC4PreloadConfig$392 ==.
                                   1989 ;	StdPeriphLib/src/stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
                                   1990 ;	-----------------------------------------
                                   1991 ;	 function TIM1_OC4PreloadConfig
                                   1992 ;	-----------------------------------------
      009BC2                       1993 _TIM1_OC4PreloadConfig:
      009BC2 3B 01 A5         [ 1] 1994 	push	_fp_+1
      009BC5 3B 01 A4         [ 1] 1995 	push	_fp_
      009BC8 90 96            [ 1] 1996 	ldw	y, sp
      009BCA 90 CF 01 A4      [ 2] 1997 	ldw	_fp_, y
                           00087C  1998 	Sstm8s_tim1$TIM1_OC4PreloadConfig$393 ==.
                           00087C  1999 	Sstm8s_tim1$TIM1_OC4PreloadConfig$394 ==.
                                   2000 ;	StdPeriphLib/src/stm8s_tim1.c: 1277: if (NewState != DISABLE)
      009BCE 0D 05            [ 1] 2001 	tnz	(0x05, sp)
      009BD0 27 09            [ 1] 2002 	jreq	00102$
                           000880  2003 	Sstm8s_tim1$TIM1_OC4PreloadConfig$395 ==.
                                   2004 ;	StdPeriphLib/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      009BD2 AE 52 5B         [ 2] 2005 	ldw	x, #0x525b
      009BD5 F6               [ 1] 2006 	ld	a, (x)
      009BD6 AA 08            [ 1] 2007 	or	a, #0x08
      009BD8 F7               [ 1] 2008 	ld	(x), a
      009BD9 20 07            [ 2] 2009 	jra	00104$
      009BDB                       2010 00102$:
                           000889  2011 	Sstm8s_tim1$TIM1_OC4PreloadConfig$396 ==.
                                   2012 ;	StdPeriphLib/src/stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      009BDB AE 52 5B         [ 2] 2013 	ldw	x, #0x525b
      009BDE F6               [ 1] 2014 	ld	a, (x)
      009BDF A4 F7            [ 1] 2015 	and	a, #0xf7
      009BE1 F7               [ 1] 2016 	ld	(x), a
      009BE2                       2017 00104$:
                           000890  2018 	Sstm8s_tim1$TIM1_OC4PreloadConfig$397 ==.
                                   2019 ;	StdPeriphLib/src/stm8s_tim1.c: 1285: }
                           000890  2020 	Sstm8s_tim1$TIM1_OC4PreloadConfig$398 ==.
                           000890  2021 	XG$TIM1_OC4PreloadConfig$0$0 ==.
      009BE2 32 01 A4         [ 1] 2022 	pop	_fp_
      009BE5 32 01 A5         [ 1] 2023 	pop	_fp_+1
      009BE8 81               [ 4] 2024 	ret
                           000897  2025 	Sstm8s_tim1$TIM1_OC4PreloadConfig$399 ==.
                           000897  2026 	Sstm8s_tim1$TIM1_OC1FastConfig$400 ==.
                                   2027 ;	StdPeriphLib/src/stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
                                   2028 ;	-----------------------------------------
                                   2029 ;	 function TIM1_OC1FastConfig
                                   2030 ;	-----------------------------------------
      009BE9                       2031 _TIM1_OC1FastConfig:
      009BE9 3B 01 A5         [ 1] 2032 	push	_fp_+1
      009BEC 3B 01 A4         [ 1] 2033 	push	_fp_
      009BEF 90 96            [ 1] 2034 	ldw	y, sp
      009BF1 90 CF 01 A4      [ 2] 2035 	ldw	_fp_, y
                           0008A3  2036 	Sstm8s_tim1$TIM1_OC1FastConfig$401 ==.
                           0008A3  2037 	Sstm8s_tim1$TIM1_OC1FastConfig$402 ==.
                                   2038 ;	StdPeriphLib/src/stm8s_tim1.c: 1299: if (NewState != DISABLE)
      009BF5 0D 05            [ 1] 2039 	tnz	(0x05, sp)
      009BF7 27 09            [ 1] 2040 	jreq	00102$
                           0008A7  2041 	Sstm8s_tim1$TIM1_OC1FastConfig$403 ==.
                                   2042 ;	StdPeriphLib/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      009BF9 AE 52 58         [ 2] 2043 	ldw	x, #0x5258
      009BFC F6               [ 1] 2044 	ld	a, (x)
      009BFD AA 04            [ 1] 2045 	or	a, #0x04
      009BFF F7               [ 1] 2046 	ld	(x), a
      009C00 20 07            [ 2] 2047 	jra	00104$
      009C02                       2048 00102$:
                           0008B0  2049 	Sstm8s_tim1$TIM1_OC1FastConfig$404 ==.
                                   2050 ;	StdPeriphLib/src/stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009C02 AE 52 58         [ 2] 2051 	ldw	x, #0x5258
      009C05 F6               [ 1] 2052 	ld	a, (x)
      009C06 A4 FB            [ 1] 2053 	and	a, #0xfb
      009C08 F7               [ 1] 2054 	ld	(x), a
      009C09                       2055 00104$:
                           0008B7  2056 	Sstm8s_tim1$TIM1_OC1FastConfig$405 ==.
                                   2057 ;	StdPeriphLib/src/stm8s_tim1.c: 1307: }
                           0008B7  2058 	Sstm8s_tim1$TIM1_OC1FastConfig$406 ==.
                           0008B7  2059 	XG$TIM1_OC1FastConfig$0$0 ==.
      009C09 32 01 A4         [ 1] 2060 	pop	_fp_
      009C0C 32 01 A5         [ 1] 2061 	pop	_fp_+1
      009C0F 81               [ 4] 2062 	ret
                           0008BE  2063 	Sstm8s_tim1$TIM1_OC1FastConfig$407 ==.
                           0008BE  2064 	Sstm8s_tim1$TIM1_OC2FastConfig$408 ==.
                                   2065 ;	StdPeriphLib/src/stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
                                   2066 ;	-----------------------------------------
                                   2067 ;	 function TIM1_OC2FastConfig
                                   2068 ;	-----------------------------------------
      009C10                       2069 _TIM1_OC2FastConfig:
      009C10 3B 01 A5         [ 1] 2070 	push	_fp_+1
      009C13 3B 01 A4         [ 1] 2071 	push	_fp_
      009C16 90 96            [ 1] 2072 	ldw	y, sp
      009C18 90 CF 01 A4      [ 2] 2073 	ldw	_fp_, y
                           0008CA  2074 	Sstm8s_tim1$TIM1_OC2FastConfig$409 ==.
                           0008CA  2075 	Sstm8s_tim1$TIM1_OC2FastConfig$410 ==.
                                   2076 ;	StdPeriphLib/src/stm8s_tim1.c: 1321: if (NewState != DISABLE)
      009C1C 0D 05            [ 1] 2077 	tnz	(0x05, sp)
      009C1E 27 09            [ 1] 2078 	jreq	00102$
                           0008CE  2079 	Sstm8s_tim1$TIM1_OC2FastConfig$411 ==.
                                   2080 ;	StdPeriphLib/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      009C20 AE 52 59         [ 2] 2081 	ldw	x, #0x5259
      009C23 F6               [ 1] 2082 	ld	a, (x)
      009C24 AA 04            [ 1] 2083 	or	a, #0x04
      009C26 F7               [ 1] 2084 	ld	(x), a
      009C27 20 07            [ 2] 2085 	jra	00104$
      009C29                       2086 00102$:
                           0008D7  2087 	Sstm8s_tim1$TIM1_OC2FastConfig$412 ==.
                                   2088 ;	StdPeriphLib/src/stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009C29 AE 52 59         [ 2] 2089 	ldw	x, #0x5259
      009C2C F6               [ 1] 2090 	ld	a, (x)
      009C2D A4 FB            [ 1] 2091 	and	a, #0xfb
      009C2F F7               [ 1] 2092 	ld	(x), a
      009C30                       2093 00104$:
                           0008DE  2094 	Sstm8s_tim1$TIM1_OC2FastConfig$413 ==.
                                   2095 ;	StdPeriphLib/src/stm8s_tim1.c: 1329: }
                           0008DE  2096 	Sstm8s_tim1$TIM1_OC2FastConfig$414 ==.
                           0008DE  2097 	XG$TIM1_OC2FastConfig$0$0 ==.
      009C30 32 01 A4         [ 1] 2098 	pop	_fp_
      009C33 32 01 A5         [ 1] 2099 	pop	_fp_+1
      009C36 81               [ 4] 2100 	ret
                           0008E5  2101 	Sstm8s_tim1$TIM1_OC2FastConfig$415 ==.
                           0008E5  2102 	Sstm8s_tim1$TIM1_OC3FastConfig$416 ==.
                                   2103 ;	StdPeriphLib/src/stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
                                   2104 ;	-----------------------------------------
                                   2105 ;	 function TIM1_OC3FastConfig
                                   2106 ;	-----------------------------------------
      009C37                       2107 _TIM1_OC3FastConfig:
      009C37 3B 01 A5         [ 1] 2108 	push	_fp_+1
      009C3A 3B 01 A4         [ 1] 2109 	push	_fp_
      009C3D 90 96            [ 1] 2110 	ldw	y, sp
      009C3F 90 CF 01 A4      [ 2] 2111 	ldw	_fp_, y
                           0008F1  2112 	Sstm8s_tim1$TIM1_OC3FastConfig$417 ==.
                           0008F1  2113 	Sstm8s_tim1$TIM1_OC3FastConfig$418 ==.
                                   2114 ;	StdPeriphLib/src/stm8s_tim1.c: 1343: if (NewState != DISABLE)
      009C43 0D 05            [ 1] 2115 	tnz	(0x05, sp)
      009C45 27 09            [ 1] 2116 	jreq	00102$
                           0008F5  2117 	Sstm8s_tim1$TIM1_OC3FastConfig$419 ==.
                                   2118 ;	StdPeriphLib/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      009C47 AE 52 5A         [ 2] 2119 	ldw	x, #0x525a
      009C4A F6               [ 1] 2120 	ld	a, (x)
      009C4B AA 04            [ 1] 2121 	or	a, #0x04
      009C4D F7               [ 1] 2122 	ld	(x), a
      009C4E 20 07            [ 2] 2123 	jra	00104$
      009C50                       2124 00102$:
                           0008FE  2125 	Sstm8s_tim1$TIM1_OC3FastConfig$420 ==.
                                   2126 ;	StdPeriphLib/src/stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009C50 AE 52 5A         [ 2] 2127 	ldw	x, #0x525a
      009C53 F6               [ 1] 2128 	ld	a, (x)
      009C54 A4 FB            [ 1] 2129 	and	a, #0xfb
      009C56 F7               [ 1] 2130 	ld	(x), a
      009C57                       2131 00104$:
                           000905  2132 	Sstm8s_tim1$TIM1_OC3FastConfig$421 ==.
                                   2133 ;	StdPeriphLib/src/stm8s_tim1.c: 1351: }
                           000905  2134 	Sstm8s_tim1$TIM1_OC3FastConfig$422 ==.
                           000905  2135 	XG$TIM1_OC3FastConfig$0$0 ==.
      009C57 32 01 A4         [ 1] 2136 	pop	_fp_
      009C5A 32 01 A5         [ 1] 2137 	pop	_fp_+1
      009C5D 81               [ 4] 2138 	ret
                           00090C  2139 	Sstm8s_tim1$TIM1_OC3FastConfig$423 ==.
                           00090C  2140 	Sstm8s_tim1$TIM1_OC4FastConfig$424 ==.
                                   2141 ;	StdPeriphLib/src/stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
                                   2142 ;	-----------------------------------------
                                   2143 ;	 function TIM1_OC4FastConfig
                                   2144 ;	-----------------------------------------
      009C5E                       2145 _TIM1_OC4FastConfig:
      009C5E 3B 01 A5         [ 1] 2146 	push	_fp_+1
      009C61 3B 01 A4         [ 1] 2147 	push	_fp_
      009C64 90 96            [ 1] 2148 	ldw	y, sp
      009C66 90 CF 01 A4      [ 2] 2149 	ldw	_fp_, y
                           000918  2150 	Sstm8s_tim1$TIM1_OC4FastConfig$425 ==.
                           000918  2151 	Sstm8s_tim1$TIM1_OC4FastConfig$426 ==.
                                   2152 ;	StdPeriphLib/src/stm8s_tim1.c: 1365: if (NewState != DISABLE)
      009C6A 0D 05            [ 1] 2153 	tnz	(0x05, sp)
      009C6C 27 09            [ 1] 2154 	jreq	00102$
                           00091C  2155 	Sstm8s_tim1$TIM1_OC4FastConfig$427 ==.
                                   2156 ;	StdPeriphLib/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      009C6E AE 52 5B         [ 2] 2157 	ldw	x, #0x525b
      009C71 F6               [ 1] 2158 	ld	a, (x)
      009C72 AA 04            [ 1] 2159 	or	a, #0x04
      009C74 F7               [ 1] 2160 	ld	(x), a
      009C75 20 07            [ 2] 2161 	jra	00104$
      009C77                       2162 00102$:
                           000925  2163 	Sstm8s_tim1$TIM1_OC4FastConfig$428 ==.
                                   2164 ;	StdPeriphLib/src/stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009C77 AE 52 5B         [ 2] 2165 	ldw	x, #0x525b
      009C7A F6               [ 1] 2166 	ld	a, (x)
      009C7B A4 FB            [ 1] 2167 	and	a, #0xfb
      009C7D F7               [ 1] 2168 	ld	(x), a
      009C7E                       2169 00104$:
                           00092C  2170 	Sstm8s_tim1$TIM1_OC4FastConfig$429 ==.
                                   2171 ;	StdPeriphLib/src/stm8s_tim1.c: 1373: }
                           00092C  2172 	Sstm8s_tim1$TIM1_OC4FastConfig$430 ==.
                           00092C  2173 	XG$TIM1_OC4FastConfig$0$0 ==.
      009C7E 32 01 A4         [ 1] 2174 	pop	_fp_
      009C81 32 01 A5         [ 1] 2175 	pop	_fp_+1
      009C84 81               [ 4] 2176 	ret
                           000933  2177 	Sstm8s_tim1$TIM1_OC4FastConfig$431 ==.
                           000933  2178 	Sstm8s_tim1$TIM1_GenerateEvent$432 ==.
                                   2179 ;	StdPeriphLib/src/stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
                                   2180 ;	-----------------------------------------
                                   2181 ;	 function TIM1_GenerateEvent
                                   2182 ;	-----------------------------------------
      009C85                       2183 _TIM1_GenerateEvent:
      009C85 3B 01 A5         [ 1] 2184 	push	_fp_+1
      009C88 3B 01 A4         [ 1] 2185 	push	_fp_
      009C8B 90 96            [ 1] 2186 	ldw	y, sp
      009C8D 90 CF 01 A4      [ 2] 2187 	ldw	_fp_, y
                           00093F  2188 	Sstm8s_tim1$TIM1_GenerateEvent$433 ==.
                           00093F  2189 	Sstm8s_tim1$TIM1_GenerateEvent$434 ==.
                                   2190 ;	StdPeriphLib/src/stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
      009C91 AE 52 57         [ 2] 2191 	ldw	x, #0x5257
      009C94 7B 05            [ 1] 2192 	ld	a, (0x05, sp)
      009C96 F7               [ 1] 2193 	ld	(x), a
                           000945  2194 	Sstm8s_tim1$TIM1_GenerateEvent$435 ==.
                                   2195 ;	StdPeriphLib/src/stm8s_tim1.c: 1396: }
                           000945  2196 	Sstm8s_tim1$TIM1_GenerateEvent$436 ==.
                           000945  2197 	XG$TIM1_GenerateEvent$0$0 ==.
      009C97 32 01 A4         [ 1] 2198 	pop	_fp_
      009C9A 32 01 A5         [ 1] 2199 	pop	_fp_+1
      009C9D 81               [ 4] 2200 	ret
                           00094C  2201 	Sstm8s_tim1$TIM1_GenerateEvent$437 ==.
                           00094C  2202 	Sstm8s_tim1$TIM1_OC1PolarityConfig$438 ==.
                                   2203 ;	StdPeriphLib/src/stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2204 ;	-----------------------------------------
                                   2205 ;	 function TIM1_OC1PolarityConfig
                                   2206 ;	-----------------------------------------
      009C9E                       2207 _TIM1_OC1PolarityConfig:
      009C9E 3B 01 A5         [ 1] 2208 	push	_fp_+1
      009CA1 3B 01 A4         [ 1] 2209 	push	_fp_
      009CA4 90 96            [ 1] 2210 	ldw	y, sp
      009CA6 90 CF 01 A4      [ 2] 2211 	ldw	_fp_, y
                           000958  2212 	Sstm8s_tim1$TIM1_OC1PolarityConfig$439 ==.
                           000958  2213 	Sstm8s_tim1$TIM1_OC1PolarityConfig$440 ==.
                                   2214 ;	StdPeriphLib/src/stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      009CAA 0D 05            [ 1] 2215 	tnz	(0x05, sp)
      009CAC 27 09            [ 1] 2216 	jreq	00102$
                           00095C  2217 	Sstm8s_tim1$TIM1_OC1PolarityConfig$441 ==.
                                   2218 ;	StdPeriphLib/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      009CAE AE 52 5C         [ 2] 2219 	ldw	x, #0x525c
      009CB1 F6               [ 1] 2220 	ld	a, (x)
      009CB2 AA 02            [ 1] 2221 	or	a, #0x02
      009CB4 F7               [ 1] 2222 	ld	(x), a
      009CB5 20 07            [ 2] 2223 	jra	00104$
      009CB7                       2224 00102$:
                           000965  2225 	Sstm8s_tim1$TIM1_OC1PolarityConfig$442 ==.
                                   2226 ;	StdPeriphLib/src/stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      009CB7 AE 52 5C         [ 2] 2227 	ldw	x, #0x525c
      009CBA F6               [ 1] 2228 	ld	a, (x)
      009CBB A4 FD            [ 1] 2229 	and	a, #0xfd
      009CBD F7               [ 1] 2230 	ld	(x), a
      009CBE                       2231 00104$:
                           00096C  2232 	Sstm8s_tim1$TIM1_OC1PolarityConfig$443 ==.
                                   2233 ;	StdPeriphLib/src/stm8s_tim1.c: 1420: }
                           00096C  2234 	Sstm8s_tim1$TIM1_OC1PolarityConfig$444 ==.
                           00096C  2235 	XG$TIM1_OC1PolarityConfig$0$0 ==.
      009CBE 32 01 A4         [ 1] 2236 	pop	_fp_
      009CC1 32 01 A5         [ 1] 2237 	pop	_fp_+1
      009CC4 81               [ 4] 2238 	ret
                           000973  2239 	Sstm8s_tim1$TIM1_OC1PolarityConfig$445 ==.
                           000973  2240 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$446 ==.
                                   2241 ;	StdPeriphLib/src/stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2242 ;	-----------------------------------------
                                   2243 ;	 function TIM1_OC1NPolarityConfig
                                   2244 ;	-----------------------------------------
      009CC5                       2245 _TIM1_OC1NPolarityConfig:
      009CC5 3B 01 A5         [ 1] 2246 	push	_fp_+1
      009CC8 3B 01 A4         [ 1] 2247 	push	_fp_
      009CCB 90 96            [ 1] 2248 	ldw	y, sp
      009CCD 90 CF 01 A4      [ 2] 2249 	ldw	_fp_, y
                           00097F  2250 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$447 ==.
                           00097F  2251 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$448 ==.
                                   2252 ;	StdPeriphLib/src/stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      009CD1 0D 05            [ 1] 2253 	tnz	(0x05, sp)
      009CD3 27 09            [ 1] 2254 	jreq	00102$
                           000983  2255 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$449 ==.
                                   2256 ;	StdPeriphLib/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      009CD5 AE 52 5C         [ 2] 2257 	ldw	x, #0x525c
      009CD8 F6               [ 1] 2258 	ld	a, (x)
      009CD9 AA 08            [ 1] 2259 	or	a, #0x08
      009CDB F7               [ 1] 2260 	ld	(x), a
      009CDC 20 07            [ 2] 2261 	jra	00104$
      009CDE                       2262 00102$:
                           00098C  2263 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$450 ==.
                                   2264 ;	StdPeriphLib/src/stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
      009CDE AE 52 5C         [ 2] 2265 	ldw	x, #0x525c
      009CE1 F6               [ 1] 2266 	ld	a, (x)
      009CE2 A4 F7            [ 1] 2267 	and	a, #0xf7
      009CE4 F7               [ 1] 2268 	ld	(x), a
      009CE5                       2269 00104$:
                           000993  2270 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$451 ==.
                                   2271 ;	StdPeriphLib/src/stm8s_tim1.c: 1444: }
                           000993  2272 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$452 ==.
                           000993  2273 	XG$TIM1_OC1NPolarityConfig$0$0 ==.
      009CE5 32 01 A4         [ 1] 2274 	pop	_fp_
      009CE8 32 01 A5         [ 1] 2275 	pop	_fp_+1
      009CEB 81               [ 4] 2276 	ret
                           00099A  2277 	Sstm8s_tim1$TIM1_OC1NPolarityConfig$453 ==.
                           00099A  2278 	Sstm8s_tim1$TIM1_OC2PolarityConfig$454 ==.
                                   2279 ;	StdPeriphLib/src/stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2280 ;	-----------------------------------------
                                   2281 ;	 function TIM1_OC2PolarityConfig
                                   2282 ;	-----------------------------------------
      009CEC                       2283 _TIM1_OC2PolarityConfig:
      009CEC 3B 01 A5         [ 1] 2284 	push	_fp_+1
      009CEF 3B 01 A4         [ 1] 2285 	push	_fp_
      009CF2 90 96            [ 1] 2286 	ldw	y, sp
      009CF4 90 CF 01 A4      [ 2] 2287 	ldw	_fp_, y
                           0009A6  2288 	Sstm8s_tim1$TIM1_OC2PolarityConfig$455 ==.
                           0009A6  2289 	Sstm8s_tim1$TIM1_OC2PolarityConfig$456 ==.
                                   2290 ;	StdPeriphLib/src/stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      009CF8 0D 05            [ 1] 2291 	tnz	(0x05, sp)
      009CFA 27 09            [ 1] 2292 	jreq	00102$
                           0009AA  2293 	Sstm8s_tim1$TIM1_OC2PolarityConfig$457 ==.
                                   2294 ;	StdPeriphLib/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      009CFC AE 52 5C         [ 2] 2295 	ldw	x, #0x525c
      009CFF F6               [ 1] 2296 	ld	a, (x)
      009D00 AA 20            [ 1] 2297 	or	a, #0x20
      009D02 F7               [ 1] 2298 	ld	(x), a
      009D03 20 07            [ 2] 2299 	jra	00104$
      009D05                       2300 00102$:
                           0009B3  2301 	Sstm8s_tim1$TIM1_OC2PolarityConfig$458 ==.
                                   2302 ;	StdPeriphLib/src/stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      009D05 AE 52 5C         [ 2] 2303 	ldw	x, #0x525c
      009D08 F6               [ 1] 2304 	ld	a, (x)
      009D09 A4 DF            [ 1] 2305 	and	a, #0xdf
      009D0B F7               [ 1] 2306 	ld	(x), a
      009D0C                       2307 00104$:
                           0009BA  2308 	Sstm8s_tim1$TIM1_OC2PolarityConfig$459 ==.
                                   2309 ;	StdPeriphLib/src/stm8s_tim1.c: 1468: }
                           0009BA  2310 	Sstm8s_tim1$TIM1_OC2PolarityConfig$460 ==.
                           0009BA  2311 	XG$TIM1_OC2PolarityConfig$0$0 ==.
      009D0C 32 01 A4         [ 1] 2312 	pop	_fp_
      009D0F 32 01 A5         [ 1] 2313 	pop	_fp_+1
      009D12 81               [ 4] 2314 	ret
                           0009C1  2315 	Sstm8s_tim1$TIM1_OC2PolarityConfig$461 ==.
                           0009C1  2316 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$462 ==.
                                   2317 ;	StdPeriphLib/src/stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2318 ;	-----------------------------------------
                                   2319 ;	 function TIM1_OC2NPolarityConfig
                                   2320 ;	-----------------------------------------
      009D13                       2321 _TIM1_OC2NPolarityConfig:
      009D13 3B 01 A5         [ 1] 2322 	push	_fp_+1
      009D16 3B 01 A4         [ 1] 2323 	push	_fp_
      009D19 90 96            [ 1] 2324 	ldw	y, sp
      009D1B 90 CF 01 A4      [ 2] 2325 	ldw	_fp_, y
                           0009CD  2326 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$463 ==.
                           0009CD  2327 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$464 ==.
                                   2328 ;	StdPeriphLib/src/stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      009D1F 0D 05            [ 1] 2329 	tnz	(0x05, sp)
      009D21 27 06            [ 1] 2330 	jreq	00102$
                           0009D1  2331 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$465 ==.
                                   2332 ;	StdPeriphLib/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      009D23 72 1E 52 5C      [ 1] 2333 	bset	0x525c, #7
      009D27 20 04            [ 2] 2334 	jra	00104$
      009D29                       2335 00102$:
                           0009D7  2336 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$466 ==.
                                   2337 ;	StdPeriphLib/src/stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
      009D29 72 1F 52 5C      [ 1] 2338 	bres	0x525c, #7
      009D2D                       2339 00104$:
                           0009DB  2340 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$467 ==.
                                   2341 ;	StdPeriphLib/src/stm8s_tim1.c: 1492: }
                           0009DB  2342 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$468 ==.
                           0009DB  2343 	XG$TIM1_OC2NPolarityConfig$0$0 ==.
      009D2D 32 01 A4         [ 1] 2344 	pop	_fp_
      009D30 32 01 A5         [ 1] 2345 	pop	_fp_+1
      009D33 81               [ 4] 2346 	ret
                           0009E2  2347 	Sstm8s_tim1$TIM1_OC2NPolarityConfig$469 ==.
                           0009E2  2348 	Sstm8s_tim1$TIM1_OC3PolarityConfig$470 ==.
                                   2349 ;	StdPeriphLib/src/stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2350 ;	-----------------------------------------
                                   2351 ;	 function TIM1_OC3PolarityConfig
                                   2352 ;	-----------------------------------------
      009D34                       2353 _TIM1_OC3PolarityConfig:
      009D34 3B 01 A5         [ 1] 2354 	push	_fp_+1
      009D37 3B 01 A4         [ 1] 2355 	push	_fp_
      009D3A 90 96            [ 1] 2356 	ldw	y, sp
      009D3C 90 CF 01 A4      [ 2] 2357 	ldw	_fp_, y
                           0009EE  2358 	Sstm8s_tim1$TIM1_OC3PolarityConfig$471 ==.
                           0009EE  2359 	Sstm8s_tim1$TIM1_OC3PolarityConfig$472 ==.
                                   2360 ;	StdPeriphLib/src/stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      009D40 0D 05            [ 1] 2361 	tnz	(0x05, sp)
      009D42 27 09            [ 1] 2362 	jreq	00102$
                           0009F2  2363 	Sstm8s_tim1$TIM1_OC3PolarityConfig$473 ==.
                                   2364 ;	StdPeriphLib/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      009D44 AE 52 5D         [ 2] 2365 	ldw	x, #0x525d
      009D47 F6               [ 1] 2366 	ld	a, (x)
      009D48 AA 02            [ 1] 2367 	or	a, #0x02
      009D4A F7               [ 1] 2368 	ld	(x), a
      009D4B 20 07            [ 2] 2369 	jra	00104$
      009D4D                       2370 00102$:
                           0009FB  2371 	Sstm8s_tim1$TIM1_OC3PolarityConfig$474 ==.
                                   2372 ;	StdPeriphLib/src/stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      009D4D AE 52 5D         [ 2] 2373 	ldw	x, #0x525d
      009D50 F6               [ 1] 2374 	ld	a, (x)
      009D51 A4 FD            [ 1] 2375 	and	a, #0xfd
      009D53 F7               [ 1] 2376 	ld	(x), a
      009D54                       2377 00104$:
                           000A02  2378 	Sstm8s_tim1$TIM1_OC3PolarityConfig$475 ==.
                                   2379 ;	StdPeriphLib/src/stm8s_tim1.c: 1516: }
                           000A02  2380 	Sstm8s_tim1$TIM1_OC3PolarityConfig$476 ==.
                           000A02  2381 	XG$TIM1_OC3PolarityConfig$0$0 ==.
      009D54 32 01 A4         [ 1] 2382 	pop	_fp_
      009D57 32 01 A5         [ 1] 2383 	pop	_fp_+1
      009D5A 81               [ 4] 2384 	ret
                           000A09  2385 	Sstm8s_tim1$TIM1_OC3PolarityConfig$477 ==.
                           000A09  2386 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$478 ==.
                                   2387 ;	StdPeriphLib/src/stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2388 ;	-----------------------------------------
                                   2389 ;	 function TIM1_OC3NPolarityConfig
                                   2390 ;	-----------------------------------------
      009D5B                       2391 _TIM1_OC3NPolarityConfig:
      009D5B 3B 01 A5         [ 1] 2392 	push	_fp_+1
      009D5E 3B 01 A4         [ 1] 2393 	push	_fp_
      009D61 90 96            [ 1] 2394 	ldw	y, sp
      009D63 90 CF 01 A4      [ 2] 2395 	ldw	_fp_, y
                           000A15  2396 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$479 ==.
                           000A15  2397 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$480 ==.
                                   2398 ;	StdPeriphLib/src/stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      009D67 0D 05            [ 1] 2399 	tnz	(0x05, sp)
      009D69 27 09            [ 1] 2400 	jreq	00102$
                           000A19  2401 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$481 ==.
                                   2402 ;	StdPeriphLib/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      009D6B AE 52 5D         [ 2] 2403 	ldw	x, #0x525d
      009D6E F6               [ 1] 2404 	ld	a, (x)
      009D6F AA 08            [ 1] 2405 	or	a, #0x08
      009D71 F7               [ 1] 2406 	ld	(x), a
      009D72 20 07            [ 2] 2407 	jra	00104$
      009D74                       2408 00102$:
                           000A22  2409 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$482 ==.
                                   2410 ;	StdPeriphLib/src/stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
      009D74 AE 52 5D         [ 2] 2411 	ldw	x, #0x525d
      009D77 F6               [ 1] 2412 	ld	a, (x)
      009D78 A4 F7            [ 1] 2413 	and	a, #0xf7
      009D7A F7               [ 1] 2414 	ld	(x), a
      009D7B                       2415 00104$:
                           000A29  2416 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$483 ==.
                                   2417 ;	StdPeriphLib/src/stm8s_tim1.c: 1541: }
                           000A29  2418 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$484 ==.
                           000A29  2419 	XG$TIM1_OC3NPolarityConfig$0$0 ==.
      009D7B 32 01 A4         [ 1] 2420 	pop	_fp_
      009D7E 32 01 A5         [ 1] 2421 	pop	_fp_+1
      009D81 81               [ 4] 2422 	ret
                           000A30  2423 	Sstm8s_tim1$TIM1_OC3NPolarityConfig$485 ==.
                           000A30  2424 	Sstm8s_tim1$TIM1_OC4PolarityConfig$486 ==.
                                   2425 ;	StdPeriphLib/src/stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2426 ;	-----------------------------------------
                                   2427 ;	 function TIM1_OC4PolarityConfig
                                   2428 ;	-----------------------------------------
      009D82                       2429 _TIM1_OC4PolarityConfig:
      009D82 3B 01 A5         [ 1] 2430 	push	_fp_+1
      009D85 3B 01 A4         [ 1] 2431 	push	_fp_
      009D88 90 96            [ 1] 2432 	ldw	y, sp
      009D8A 90 CF 01 A4      [ 2] 2433 	ldw	_fp_, y
                           000A3C  2434 	Sstm8s_tim1$TIM1_OC4PolarityConfig$487 ==.
                           000A3C  2435 	Sstm8s_tim1$TIM1_OC4PolarityConfig$488 ==.
                                   2436 ;	StdPeriphLib/src/stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      009D8E 0D 05            [ 1] 2437 	tnz	(0x05, sp)
      009D90 27 09            [ 1] 2438 	jreq	00102$
                           000A40  2439 	Sstm8s_tim1$TIM1_OC4PolarityConfig$489 ==.
                                   2440 ;	StdPeriphLib/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      009D92 AE 52 5D         [ 2] 2441 	ldw	x, #0x525d
      009D95 F6               [ 1] 2442 	ld	a, (x)
      009D96 AA 20            [ 1] 2443 	or	a, #0x20
      009D98 F7               [ 1] 2444 	ld	(x), a
      009D99 20 07            [ 2] 2445 	jra	00104$
      009D9B                       2446 00102$:
                           000A49  2447 	Sstm8s_tim1$TIM1_OC4PolarityConfig$490 ==.
                                   2448 ;	StdPeriphLib/src/stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      009D9B AE 52 5D         [ 2] 2449 	ldw	x, #0x525d
      009D9E F6               [ 1] 2450 	ld	a, (x)
      009D9F A4 DF            [ 1] 2451 	and	a, #0xdf
      009DA1 F7               [ 1] 2452 	ld	(x), a
      009DA2                       2453 00104$:
                           000A50  2454 	Sstm8s_tim1$TIM1_OC4PolarityConfig$491 ==.
                                   2455 ;	StdPeriphLib/src/stm8s_tim1.c: 1565: }
                           000A50  2456 	Sstm8s_tim1$TIM1_OC4PolarityConfig$492 ==.
                           000A50  2457 	XG$TIM1_OC4PolarityConfig$0$0 ==.
      009DA2 32 01 A4         [ 1] 2458 	pop	_fp_
      009DA5 32 01 A5         [ 1] 2459 	pop	_fp_+1
      009DA8 81               [ 4] 2460 	ret
                           000A57  2461 	Sstm8s_tim1$TIM1_OC4PolarityConfig$493 ==.
                           000A57  2462 	Sstm8s_tim1$TIM1_CCxCmd$494 ==.
                                   2463 ;	StdPeriphLib/src/stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   2464 ;	-----------------------------------------
                                   2465 ;	 function TIM1_CCxCmd
                                   2466 ;	-----------------------------------------
      009DA9                       2467 _TIM1_CCxCmd:
      009DA9 3B 01 A5         [ 1] 2468 	push	_fp_+1
      009DAC 3B 01 A4         [ 1] 2469 	push	_fp_
      009DAF 90 96            [ 1] 2470 	ldw	y, sp
      009DB1 90 CF 01 A4      [ 2] 2471 	ldw	_fp_, y
                           000A63  2472 	Sstm8s_tim1$TIM1_CCxCmd$495 ==.
                           000A63  2473 	Sstm8s_tim1$TIM1_CCxCmd$496 ==.
                                   2474 ;	StdPeriphLib/src/stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
      009DB5 0D 05            [ 1] 2475 	tnz	(0x05, sp)
      009DB7 26 12            [ 1] 2476 	jrne	00120$
                           000A67  2477 	Sstm8s_tim1$TIM1_CCxCmd$497 ==.
                                   2478 ;	StdPeriphLib/src/stm8s_tim1.c: 1588: if (NewState != DISABLE)
      009DB9 0D 06            [ 1] 2479 	tnz	(0x06, sp)
      009DBB 27 07            [ 1] 2480 	jreq	00102$
                           000A6B  2481 	Sstm8s_tim1$TIM1_CCxCmd$498 ==.
                                   2482 ;	StdPeriphLib/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      009DBD 72 10 52 5C      [ 1] 2483 	bset	0x525c, #0
      009DC1 CC 9E 11         [ 2] 2484 	jp	00122$
      009DC4                       2485 00102$:
                           000A72  2486 	Sstm8s_tim1$TIM1_CCxCmd$499 ==.
                                   2487 ;	StdPeriphLib/src/stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      009DC4 72 11 52 5C      [ 1] 2488 	bres	0x525c, #0
      009DC8 CC 9E 11         [ 2] 2489 	jp	00122$
      009DCB                       2490 00120$:
                           000A79  2491 	Sstm8s_tim1$TIM1_CCxCmd$500 ==.
                                   2492 ;	StdPeriphLib/src/stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009DCB 7B 05            [ 1] 2493 	ld	a, (0x05, sp)
      009DCD A1 01            [ 1] 2494 	cp	a, #0x01
      009DCF 26 16            [ 1] 2495 	jrne	00117$
                           000A7F  2496 	Sstm8s_tim1$TIM1_CCxCmd$501 ==.
                                   2497 ;	StdPeriphLib/src/stm8s_tim1.c: 1601: if (NewState != DISABLE)
      009DD1 0D 06            [ 1] 2498 	tnz	(0x06, sp)
      009DD3 27 09            [ 1] 2499 	jreq	00105$
                           000A83  2500 	Sstm8s_tim1$TIM1_CCxCmd$502 ==.
                                   2501 ;	StdPeriphLib/src/stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      009DD5 AE 52 5C         [ 2] 2502 	ldw	x, #0x525c
      009DD8 F6               [ 1] 2503 	ld	a, (x)
      009DD9 AA 10            [ 1] 2504 	or	a, #0x10
      009DDB F7               [ 1] 2505 	ld	(x), a
      009DDC 20 33            [ 2] 2506 	jra	00122$
      009DDE                       2507 00105$:
                           000A8C  2508 	Sstm8s_tim1$TIM1_CCxCmd$503 ==.
                                   2509 ;	StdPeriphLib/src/stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      009DDE AE 52 5C         [ 2] 2510 	ldw	x, #0x525c
      009DE1 F6               [ 1] 2511 	ld	a, (x)
      009DE2 A4 EF            [ 1] 2512 	and	a, #0xef
      009DE4 F7               [ 1] 2513 	ld	(x), a
      009DE5 20 2A            [ 2] 2514 	jra	00122$
      009DE7                       2515 00117$:
                           000A95  2516 	Sstm8s_tim1$TIM1_CCxCmd$504 ==.
                                   2517 ;	StdPeriphLib/src/stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
      009DE7 7B 05            [ 1] 2518 	ld	a, (0x05, sp)
      009DE9 A1 02            [ 1] 2519 	cp	a, #0x02
      009DEB 26 10            [ 1] 2520 	jrne	00114$
                           000A9B  2521 	Sstm8s_tim1$TIM1_CCxCmd$505 ==.
                                   2522 ;	StdPeriphLib/src/stm8s_tim1.c: 1613: if (NewState != DISABLE)
      009DED 0D 06            [ 1] 2523 	tnz	(0x06, sp)
      009DEF 27 06            [ 1] 2524 	jreq	00108$
                           000A9F  2525 	Sstm8s_tim1$TIM1_CCxCmd$506 ==.
                                   2526 ;	StdPeriphLib/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      009DF1 72 10 52 5D      [ 1] 2527 	bset	0x525d, #0
      009DF5 20 1A            [ 2] 2528 	jra	00122$
      009DF7                       2529 00108$:
                           000AA5  2530 	Sstm8s_tim1$TIM1_CCxCmd$507 ==.
                                   2531 ;	StdPeriphLib/src/stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      009DF7 72 11 52 5D      [ 1] 2532 	bres	0x525d, #0
      009DFB 20 14            [ 2] 2533 	jra	00122$
      009DFD                       2534 00114$:
                           000AAB  2535 	Sstm8s_tim1$TIM1_CCxCmd$508 ==.
                                   2536 ;	StdPeriphLib/src/stm8s_tim1.c: 1625: if (NewState != DISABLE)
      009DFD 0D 06            [ 1] 2537 	tnz	(0x06, sp)
      009DFF 27 09            [ 1] 2538 	jreq	00111$
                           000AAF  2539 	Sstm8s_tim1$TIM1_CCxCmd$509 ==.
                                   2540 ;	StdPeriphLib/src/stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      009E01 AE 52 5D         [ 2] 2541 	ldw	x, #0x525d
      009E04 F6               [ 1] 2542 	ld	a, (x)
      009E05 AA 10            [ 1] 2543 	or	a, #0x10
      009E07 F7               [ 1] 2544 	ld	(x), a
      009E08 20 07            [ 2] 2545 	jra	00122$
      009E0A                       2546 00111$:
                           000AB8  2547 	Sstm8s_tim1$TIM1_CCxCmd$510 ==.
                                   2548 ;	StdPeriphLib/src/stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      009E0A AE 52 5D         [ 2] 2549 	ldw	x, #0x525d
      009E0D F6               [ 1] 2550 	ld	a, (x)
      009E0E A4 EF            [ 1] 2551 	and	a, #0xef
      009E10 F7               [ 1] 2552 	ld	(x), a
      009E11                       2553 00122$:
                           000ABF  2554 	Sstm8s_tim1$TIM1_CCxCmd$511 ==.
                                   2555 ;	StdPeriphLib/src/stm8s_tim1.c: 1634: }
                           000ABF  2556 	Sstm8s_tim1$TIM1_CCxCmd$512 ==.
                           000ABF  2557 	XG$TIM1_CCxCmd$0$0 ==.
      009E11 32 01 A4         [ 1] 2558 	pop	_fp_
      009E14 32 01 A5         [ 1] 2559 	pop	_fp_+1
      009E17 81               [ 4] 2560 	ret
                           000AC6  2561 	Sstm8s_tim1$TIM1_CCxCmd$513 ==.
                           000AC6  2562 	Sstm8s_tim1$TIM1_CCxNCmd$514 ==.
                                   2563 ;	StdPeriphLib/src/stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   2564 ;	-----------------------------------------
                                   2565 ;	 function TIM1_CCxNCmd
                                   2566 ;	-----------------------------------------
      009E18                       2567 _TIM1_CCxNCmd:
      009E18 3B 01 A5         [ 1] 2568 	push	_fp_+1
      009E1B 3B 01 A4         [ 1] 2569 	push	_fp_
      009E1E 90 96            [ 1] 2570 	ldw	y, sp
      009E20 90 CF 01 A4      [ 2] 2571 	ldw	_fp_, y
                           000AD2  2572 	Sstm8s_tim1$TIM1_CCxNCmd$515 ==.
                           000AD2  2573 	Sstm8s_tim1$TIM1_CCxNCmd$516 ==.
                                   2574 ;	StdPeriphLib/src/stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
      009E24 0D 05            [ 1] 2575 	tnz	(0x05, sp)
      009E26 26 16            [ 1] 2576 	jrne	00114$
                           000AD6  2577 	Sstm8s_tim1$TIM1_CCxNCmd$517 ==.
                                   2578 ;	StdPeriphLib/src/stm8s_tim1.c: 1656: if (NewState != DISABLE)
      009E28 0D 06            [ 1] 2579 	tnz	(0x06, sp)
      009E2A 27 09            [ 1] 2580 	jreq	00102$
                           000ADA  2581 	Sstm8s_tim1$TIM1_CCxNCmd$518 ==.
                                   2582 ;	StdPeriphLib/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      009E2C AE 52 5C         [ 2] 2583 	ldw	x, #0x525c
      009E2F F6               [ 1] 2584 	ld	a, (x)
      009E30 AA 04            [ 1] 2585 	or	a, #0x04
      009E32 F7               [ 1] 2586 	ld	(x), a
      009E33 20 39            [ 2] 2587 	jra	00116$
      009E35                       2588 00102$:
                           000AE3  2589 	Sstm8s_tim1$TIM1_CCxNCmd$519 ==.
                                   2590 ;	StdPeriphLib/src/stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
      009E35 AE 52 5C         [ 2] 2591 	ldw	x, #0x525c
      009E38 F6               [ 1] 2592 	ld	a, (x)
      009E39 A4 FB            [ 1] 2593 	and	a, #0xfb
      009E3B F7               [ 1] 2594 	ld	(x), a
      009E3C 20 30            [ 2] 2595 	jra	00116$
      009E3E                       2596 00114$:
                           000AEC  2597 	Sstm8s_tim1$TIM1_CCxNCmd$520 ==.
                                   2598 ;	StdPeriphLib/src/stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009E3E 7B 05            [ 1] 2599 	ld	a, (0x05, sp)
      009E40 A1 01            [ 1] 2600 	cp	a, #0x01
      009E42 26 16            [ 1] 2601 	jrne	00111$
                           000AF2  2602 	Sstm8s_tim1$TIM1_CCxNCmd$521 ==.
                                   2603 ;	StdPeriphLib/src/stm8s_tim1.c: 1668: if (NewState != DISABLE)
      009E44 0D 06            [ 1] 2604 	tnz	(0x06, sp)
      009E46 27 09            [ 1] 2605 	jreq	00105$
                           000AF6  2606 	Sstm8s_tim1$TIM1_CCxNCmd$522 ==.
                                   2607 ;	StdPeriphLib/src/stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
      009E48 AE 52 5C         [ 2] 2608 	ldw	x, #0x525c
      009E4B F6               [ 1] 2609 	ld	a, (x)
      009E4C AA 40            [ 1] 2610 	or	a, #0x40
      009E4E F7               [ 1] 2611 	ld	(x), a
      009E4F 20 1D            [ 2] 2612 	jra	00116$
      009E51                       2613 00105$:
                           000AFF  2614 	Sstm8s_tim1$TIM1_CCxNCmd$523 ==.
                                   2615 ;	StdPeriphLib/src/stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
      009E51 AE 52 5C         [ 2] 2616 	ldw	x, #0x525c
      009E54 F6               [ 1] 2617 	ld	a, (x)
      009E55 A4 BF            [ 1] 2618 	and	a, #0xbf
      009E57 F7               [ 1] 2619 	ld	(x), a
      009E58 20 14            [ 2] 2620 	jra	00116$
      009E5A                       2621 00111$:
                           000B08  2622 	Sstm8s_tim1$TIM1_CCxNCmd$524 ==.
                                   2623 ;	StdPeriphLib/src/stm8s_tim1.c: 1680: if (NewState != DISABLE)
      009E5A 0D 06            [ 1] 2624 	tnz	(0x06, sp)
      009E5C 27 09            [ 1] 2625 	jreq	00108$
                           000B0C  2626 	Sstm8s_tim1$TIM1_CCxNCmd$525 ==.
                                   2627 ;	StdPeriphLib/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      009E5E AE 52 5D         [ 2] 2628 	ldw	x, #0x525d
      009E61 F6               [ 1] 2629 	ld	a, (x)
      009E62 AA 04            [ 1] 2630 	or	a, #0x04
      009E64 F7               [ 1] 2631 	ld	(x), a
      009E65 20 07            [ 2] 2632 	jra	00116$
      009E67                       2633 00108$:
                           000B15  2634 	Sstm8s_tim1$TIM1_CCxNCmd$526 ==.
                                   2635 ;	StdPeriphLib/src/stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
      009E67 AE 52 5D         [ 2] 2636 	ldw	x, #0x525d
      009E6A F6               [ 1] 2637 	ld	a, (x)
      009E6B A4 FB            [ 1] 2638 	and	a, #0xfb
      009E6D F7               [ 1] 2639 	ld	(x), a
      009E6E                       2640 00116$:
                           000B1C  2641 	Sstm8s_tim1$TIM1_CCxNCmd$527 ==.
                                   2642 ;	StdPeriphLib/src/stm8s_tim1.c: 1689: }
                           000B1C  2643 	Sstm8s_tim1$TIM1_CCxNCmd$528 ==.
                           000B1C  2644 	XG$TIM1_CCxNCmd$0$0 ==.
      009E6E 32 01 A4         [ 1] 2645 	pop	_fp_
      009E71 32 01 A5         [ 1] 2646 	pop	_fp_+1
      009E74 81               [ 4] 2647 	ret
                           000B23  2648 	Sstm8s_tim1$TIM1_CCxNCmd$529 ==.
                           000B23  2649 	Sstm8s_tim1$TIM1_SelectOCxM$530 ==.
                                   2650 ;	StdPeriphLib/src/stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
                                   2651 ;	-----------------------------------------
                                   2652 ;	 function TIM1_SelectOCxM
                                   2653 ;	-----------------------------------------
      009E75                       2654 _TIM1_SelectOCxM:
      009E75 3B 01 A5         [ 1] 2655 	push	_fp_+1
      009E78 3B 01 A4         [ 1] 2656 	push	_fp_
      009E7B 90 96            [ 1] 2657 	ldw	y, sp
      009E7D 90 CF 01 A4      [ 2] 2658 	ldw	_fp_, y
                           000B2F  2659 	Sstm8s_tim1$TIM1_SelectOCxM$531 ==.
                           000B2F  2660 	Sstm8s_tim1$TIM1_SelectOCxM$532 ==.
                                   2661 ;	StdPeriphLib/src/stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
      009E81 0D 05            [ 1] 2662 	tnz	(0x05, sp)
      009E83 26 13            [ 1] 2663 	jrne	00108$
                           000B33  2664 	Sstm8s_tim1$TIM1_SelectOCxM$533 ==.
                                   2665 ;	StdPeriphLib/src/stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      009E85 72 11 52 5C      [ 1] 2666 	bres	0x525c, #0
                           000B37  2667 	Sstm8s_tim1$TIM1_SelectOCxM$534 ==.
                                   2668 ;	StdPeriphLib/src/stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009E89 AE 52 58         [ 2] 2669 	ldw	x, #0x5258
      009E8C F6               [ 1] 2670 	ld	a, (x)
      009E8D A4 8F            [ 1] 2671 	and	a, #0x8f
                           000B3D  2672 	Sstm8s_tim1$TIM1_SelectOCxM$535 ==.
                                   2673 ;	StdPeriphLib/src/stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
      009E8F 1A 06            [ 1] 2674 	or	a, (0x06, sp)
      009E91 AE 52 58         [ 2] 2675 	ldw	x, #0x5258
      009E94 F7               [ 1] 2676 	ld	(x), a
      009E95 CC 9E DE         [ 2] 2677 	jp	00110$
      009E98                       2678 00108$:
                           000B46  2679 	Sstm8s_tim1$TIM1_SelectOCxM$536 ==.
                                   2680 ;	StdPeriphLib/src/stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009E98 7B 05            [ 1] 2681 	ld	a, (0x05, sp)
      009E9A A1 01            [ 1] 2682 	cp	a, #0x01
      009E9C 26 15            [ 1] 2683 	jrne	00105$
                           000B4C  2684 	Sstm8s_tim1$TIM1_SelectOCxM$537 ==.
                                   2685 ;	StdPeriphLib/src/stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      009E9E AE 52 5C         [ 2] 2686 	ldw	x, #0x525c
      009EA1 F6               [ 1] 2687 	ld	a, (x)
      009EA2 A4 EF            [ 1] 2688 	and	a, #0xef
      009EA4 F7               [ 1] 2689 	ld	(x), a
                           000B53  2690 	Sstm8s_tim1$TIM1_SelectOCxM$538 ==.
                                   2691 ;	StdPeriphLib/src/stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      009EA5 AE 52 59         [ 2] 2692 	ldw	x, #0x5259
      009EA8 F6               [ 1] 2693 	ld	a, (x)
      009EA9 A4 8F            [ 1] 2694 	and	a, #0x8f
                           000B59  2695 	Sstm8s_tim1$TIM1_SelectOCxM$539 ==.
                                   2696 ;	StdPeriphLib/src/stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
      009EAB 1A 06            [ 1] 2697 	or	a, (0x06, sp)
      009EAD AE 52 59         [ 2] 2698 	ldw	x, #0x5259
      009EB0 F7               [ 1] 2699 	ld	(x), a
      009EB1 20 2B            [ 2] 2700 	jra	00110$
      009EB3                       2701 00105$:
                           000B61  2702 	Sstm8s_tim1$TIM1_SelectOCxM$540 ==.
                                   2703 ;	StdPeriphLib/src/stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
      009EB3 7B 05            [ 1] 2704 	ld	a, (0x05, sp)
      009EB5 A1 02            [ 1] 2705 	cp	a, #0x02
      009EB7 26 12            [ 1] 2706 	jrne	00102$
                           000B67  2707 	Sstm8s_tim1$TIM1_SelectOCxM$541 ==.
                                   2708 ;	StdPeriphLib/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      009EB9 72 11 52 5D      [ 1] 2709 	bres	0x525d, #0
                           000B6B  2710 	Sstm8s_tim1$TIM1_SelectOCxM$542 ==.
                                   2711 ;	StdPeriphLib/src/stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009EBD AE 52 5A         [ 2] 2712 	ldw	x, #0x525a
      009EC0 F6               [ 1] 2713 	ld	a, (x)
      009EC1 A4 8F            [ 1] 2714 	and	a, #0x8f
                           000B71  2715 	Sstm8s_tim1$TIM1_SelectOCxM$543 ==.
                                   2716 ;	StdPeriphLib/src/stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
      009EC3 1A 06            [ 1] 2717 	or	a, (0x06, sp)
      009EC5 AE 52 5A         [ 2] 2718 	ldw	x, #0x525a
      009EC8 F7               [ 1] 2719 	ld	(x), a
      009EC9 20 13            [ 2] 2720 	jra	00110$
      009ECB                       2721 00102$:
                           000B79  2722 	Sstm8s_tim1$TIM1_SelectOCxM$544 ==.
                                   2723 ;	StdPeriphLib/src/stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      009ECB AE 52 5D         [ 2] 2724 	ldw	x, #0x525d
      009ECE F6               [ 1] 2725 	ld	a, (x)
      009ECF A4 EF            [ 1] 2726 	and	a, #0xef
      009ED1 F7               [ 1] 2727 	ld	(x), a
                           000B80  2728 	Sstm8s_tim1$TIM1_SelectOCxM$545 ==.
                                   2729 ;	StdPeriphLib/src/stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009ED2 AE 52 5B         [ 2] 2730 	ldw	x, #0x525b
      009ED5 F6               [ 1] 2731 	ld	a, (x)
      009ED6 A4 8F            [ 1] 2732 	and	a, #0x8f
                           000B86  2733 	Sstm8s_tim1$TIM1_SelectOCxM$546 ==.
                                   2734 ;	StdPeriphLib/src/stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
      009ED8 1A 06            [ 1] 2735 	or	a, (0x06, sp)
      009EDA AE 52 5B         [ 2] 2736 	ldw	x, #0x525b
      009EDD F7               [ 1] 2737 	ld	(x), a
      009EDE                       2738 00110$:
                           000B8C  2739 	Sstm8s_tim1$TIM1_SelectOCxM$547 ==.
                                   2740 ;	StdPeriphLib/src/stm8s_tim1.c: 1754: }
                           000B8C  2741 	Sstm8s_tim1$TIM1_SelectOCxM$548 ==.
                           000B8C  2742 	XG$TIM1_SelectOCxM$0$0 ==.
      009EDE 32 01 A4         [ 1] 2743 	pop	_fp_
      009EE1 32 01 A5         [ 1] 2744 	pop	_fp_+1
      009EE4 81               [ 4] 2745 	ret
                           000B93  2746 	Sstm8s_tim1$TIM1_SelectOCxM$549 ==.
                           000B93  2747 	Sstm8s_tim1$TIM1_SetCounter$550 ==.
                                   2748 ;	StdPeriphLib/src/stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
                                   2749 ;	-----------------------------------------
                                   2750 ;	 function TIM1_SetCounter
                                   2751 ;	-----------------------------------------
      009EE5                       2752 _TIM1_SetCounter:
      009EE5 3B 01 A5         [ 1] 2753 	push	_fp_+1
      009EE8 3B 01 A4         [ 1] 2754 	push	_fp_
      009EEB 90 96            [ 1] 2755 	ldw	y, sp
      009EED 90 CF 01 A4      [ 2] 2756 	ldw	_fp_, y
                           000B9F  2757 	Sstm8s_tim1$TIM1_SetCounter$551 ==.
      009EF1 52 02            [ 2] 2758 	sub	sp, #2
                           000BA1  2759 	Sstm8s_tim1$TIM1_SetCounter$552 ==.
                                   2760 ;	StdPeriphLib/src/stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
      009EF3 7B 07            [ 1] 2761 	ld	a, (0x07, sp)
      009EF5 0F 01            [ 1] 2762 	clr	(0x01, sp)
      009EF7 AE 52 5E         [ 2] 2763 	ldw	x, #0x525e
      009EFA F7               [ 1] 2764 	ld	(x), a
                           000BA9  2765 	Sstm8s_tim1$TIM1_SetCounter$553 ==.
                                   2766 ;	StdPeriphLib/src/stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
      009EFB 7B 08            [ 1] 2767 	ld	a, (0x08, sp)
      009EFD AE 52 5F         [ 2] 2768 	ldw	x, #0x525f
      009F00 F7               [ 1] 2769 	ld	(x), a
                           000BAF  2770 	Sstm8s_tim1$TIM1_SetCounter$554 ==.
                                   2771 ;	StdPeriphLib/src/stm8s_tim1.c: 1767: }
      009F01 5B 02            [ 2] 2772 	addw	sp, #2
                           000BB1  2773 	Sstm8s_tim1$TIM1_SetCounter$555 ==.
                           000BB1  2774 	XG$TIM1_SetCounter$0$0 ==.
      009F03 32 01 A4         [ 1] 2775 	pop	_fp_
      009F06 32 01 A5         [ 1] 2776 	pop	_fp_+1
      009F09 81               [ 4] 2777 	ret
                           000BB8  2778 	Sstm8s_tim1$TIM1_SetCounter$556 ==.
                           000BB8  2779 	Sstm8s_tim1$TIM1_SetAutoreload$557 ==.
                                   2780 ;	StdPeriphLib/src/stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
                                   2781 ;	-----------------------------------------
                                   2782 ;	 function TIM1_SetAutoreload
                                   2783 ;	-----------------------------------------
      009F0A                       2784 _TIM1_SetAutoreload:
      009F0A 3B 01 A5         [ 1] 2785 	push	_fp_+1
      009F0D 3B 01 A4         [ 1] 2786 	push	_fp_
      009F10 90 96            [ 1] 2787 	ldw	y, sp
      009F12 90 CF 01 A4      [ 2] 2788 	ldw	_fp_, y
                           000BC4  2789 	Sstm8s_tim1$TIM1_SetAutoreload$558 ==.
      009F16 52 02            [ 2] 2790 	sub	sp, #2
                           000BC6  2791 	Sstm8s_tim1$TIM1_SetAutoreload$559 ==.
                                   2792 ;	StdPeriphLib/src/stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
      009F18 7B 07            [ 1] 2793 	ld	a, (0x07, sp)
      009F1A 0F 01            [ 1] 2794 	clr	(0x01, sp)
      009F1C AE 52 62         [ 2] 2795 	ldw	x, #0x5262
      009F1F F7               [ 1] 2796 	ld	(x), a
                           000BCE  2797 	Sstm8s_tim1$TIM1_SetAutoreload$560 ==.
                                   2798 ;	StdPeriphLib/src/stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
      009F20 7B 08            [ 1] 2799 	ld	a, (0x08, sp)
      009F22 AE 52 63         [ 2] 2800 	ldw	x, #0x5263
      009F25 F7               [ 1] 2801 	ld	(x), a
                           000BD4  2802 	Sstm8s_tim1$TIM1_SetAutoreload$561 ==.
                                   2803 ;	StdPeriphLib/src/stm8s_tim1.c: 1780: }
      009F26 5B 02            [ 2] 2804 	addw	sp, #2
                           000BD6  2805 	Sstm8s_tim1$TIM1_SetAutoreload$562 ==.
                           000BD6  2806 	XG$TIM1_SetAutoreload$0$0 ==.
      009F28 32 01 A4         [ 1] 2807 	pop	_fp_
      009F2B 32 01 A5         [ 1] 2808 	pop	_fp_+1
      009F2E 81               [ 4] 2809 	ret
                           000BDD  2810 	Sstm8s_tim1$TIM1_SetAutoreload$563 ==.
                           000BDD  2811 	Sstm8s_tim1$TIM1_SetCompare1$564 ==.
                                   2812 ;	StdPeriphLib/src/stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
                                   2813 ;	-----------------------------------------
                                   2814 ;	 function TIM1_SetCompare1
                                   2815 ;	-----------------------------------------
      009F2F                       2816 _TIM1_SetCompare1:
      009F2F 3B 01 A5         [ 1] 2817 	push	_fp_+1
      009F32 3B 01 A4         [ 1] 2818 	push	_fp_
      009F35 90 96            [ 1] 2819 	ldw	y, sp
      009F37 90 CF 01 A4      [ 2] 2820 	ldw	_fp_, y
                           000BE9  2821 	Sstm8s_tim1$TIM1_SetCompare1$565 ==.
      009F3B 52 02            [ 2] 2822 	sub	sp, #2
                           000BEB  2823 	Sstm8s_tim1$TIM1_SetCompare1$566 ==.
                                   2824 ;	StdPeriphLib/src/stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
      009F3D 7B 07            [ 1] 2825 	ld	a, (0x07, sp)
      009F3F 0F 01            [ 1] 2826 	clr	(0x01, sp)
      009F41 AE 52 65         [ 2] 2827 	ldw	x, #0x5265
      009F44 F7               [ 1] 2828 	ld	(x), a
                           000BF3  2829 	Sstm8s_tim1$TIM1_SetCompare1$567 ==.
                                   2830 ;	StdPeriphLib/src/stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
      009F45 7B 08            [ 1] 2831 	ld	a, (0x08, sp)
      009F47 AE 52 66         [ 2] 2832 	ldw	x, #0x5266
      009F4A F7               [ 1] 2833 	ld	(x), a
                           000BF9  2834 	Sstm8s_tim1$TIM1_SetCompare1$568 ==.
                                   2835 ;	StdPeriphLib/src/stm8s_tim1.c: 1793: }
      009F4B 5B 02            [ 2] 2836 	addw	sp, #2
                           000BFB  2837 	Sstm8s_tim1$TIM1_SetCompare1$569 ==.
                           000BFB  2838 	XG$TIM1_SetCompare1$0$0 ==.
      009F4D 32 01 A4         [ 1] 2839 	pop	_fp_
      009F50 32 01 A5         [ 1] 2840 	pop	_fp_+1
      009F53 81               [ 4] 2841 	ret
                           000C02  2842 	Sstm8s_tim1$TIM1_SetCompare1$570 ==.
                           000C02  2843 	Sstm8s_tim1$TIM1_SetCompare2$571 ==.
                                   2844 ;	StdPeriphLib/src/stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
                                   2845 ;	-----------------------------------------
                                   2846 ;	 function TIM1_SetCompare2
                                   2847 ;	-----------------------------------------
      009F54                       2848 _TIM1_SetCompare2:
      009F54 3B 01 A5         [ 1] 2849 	push	_fp_+1
      009F57 3B 01 A4         [ 1] 2850 	push	_fp_
      009F5A 90 96            [ 1] 2851 	ldw	y, sp
      009F5C 90 CF 01 A4      [ 2] 2852 	ldw	_fp_, y
                           000C0E  2853 	Sstm8s_tim1$TIM1_SetCompare2$572 ==.
      009F60 52 02            [ 2] 2854 	sub	sp, #2
                           000C10  2855 	Sstm8s_tim1$TIM1_SetCompare2$573 ==.
                                   2856 ;	StdPeriphLib/src/stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
      009F62 7B 07            [ 1] 2857 	ld	a, (0x07, sp)
      009F64 0F 01            [ 1] 2858 	clr	(0x01, sp)
      009F66 AE 52 67         [ 2] 2859 	ldw	x, #0x5267
      009F69 F7               [ 1] 2860 	ld	(x), a
                           000C18  2861 	Sstm8s_tim1$TIM1_SetCompare2$574 ==.
                                   2862 ;	StdPeriphLib/src/stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
      009F6A 7B 08            [ 1] 2863 	ld	a, (0x08, sp)
      009F6C AE 52 68         [ 2] 2864 	ldw	x, #0x5268
      009F6F F7               [ 1] 2865 	ld	(x), a
                           000C1E  2866 	Sstm8s_tim1$TIM1_SetCompare2$575 ==.
                                   2867 ;	StdPeriphLib/src/stm8s_tim1.c: 1806: }
      009F70 5B 02            [ 2] 2868 	addw	sp, #2
                           000C20  2869 	Sstm8s_tim1$TIM1_SetCompare2$576 ==.
                           000C20  2870 	XG$TIM1_SetCompare2$0$0 ==.
      009F72 32 01 A4         [ 1] 2871 	pop	_fp_
      009F75 32 01 A5         [ 1] 2872 	pop	_fp_+1
      009F78 81               [ 4] 2873 	ret
                           000C27  2874 	Sstm8s_tim1$TIM1_SetCompare2$577 ==.
                           000C27  2875 	Sstm8s_tim1$TIM1_SetCompare3$578 ==.
                                   2876 ;	StdPeriphLib/src/stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
                                   2877 ;	-----------------------------------------
                                   2878 ;	 function TIM1_SetCompare3
                                   2879 ;	-----------------------------------------
      009F79                       2880 _TIM1_SetCompare3:
      009F79 3B 01 A5         [ 1] 2881 	push	_fp_+1
      009F7C 3B 01 A4         [ 1] 2882 	push	_fp_
      009F7F 90 96            [ 1] 2883 	ldw	y, sp
      009F81 90 CF 01 A4      [ 2] 2884 	ldw	_fp_, y
                           000C33  2885 	Sstm8s_tim1$TIM1_SetCompare3$579 ==.
      009F85 52 02            [ 2] 2886 	sub	sp, #2
                           000C35  2887 	Sstm8s_tim1$TIM1_SetCompare3$580 ==.
                                   2888 ;	StdPeriphLib/src/stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
      009F87 7B 07            [ 1] 2889 	ld	a, (0x07, sp)
      009F89 0F 01            [ 1] 2890 	clr	(0x01, sp)
      009F8B AE 52 69         [ 2] 2891 	ldw	x, #0x5269
      009F8E F7               [ 1] 2892 	ld	(x), a
                           000C3D  2893 	Sstm8s_tim1$TIM1_SetCompare3$581 ==.
                                   2894 ;	StdPeriphLib/src/stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
      009F8F 7B 08            [ 1] 2895 	ld	a, (0x08, sp)
      009F91 AE 52 6A         [ 2] 2896 	ldw	x, #0x526a
      009F94 F7               [ 1] 2897 	ld	(x), a
                           000C43  2898 	Sstm8s_tim1$TIM1_SetCompare3$582 ==.
                                   2899 ;	StdPeriphLib/src/stm8s_tim1.c: 1819: }
      009F95 5B 02            [ 2] 2900 	addw	sp, #2
                           000C45  2901 	Sstm8s_tim1$TIM1_SetCompare3$583 ==.
                           000C45  2902 	XG$TIM1_SetCompare3$0$0 ==.
      009F97 32 01 A4         [ 1] 2903 	pop	_fp_
      009F9A 32 01 A5         [ 1] 2904 	pop	_fp_+1
      009F9D 81               [ 4] 2905 	ret
                           000C4C  2906 	Sstm8s_tim1$TIM1_SetCompare3$584 ==.
                           000C4C  2907 	Sstm8s_tim1$TIM1_SetCompare4$585 ==.
                                   2908 ;	StdPeriphLib/src/stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
                                   2909 ;	-----------------------------------------
                                   2910 ;	 function TIM1_SetCompare4
                                   2911 ;	-----------------------------------------
      009F9E                       2912 _TIM1_SetCompare4:
      009F9E 3B 01 A5         [ 1] 2913 	push	_fp_+1
      009FA1 3B 01 A4         [ 1] 2914 	push	_fp_
      009FA4 90 96            [ 1] 2915 	ldw	y, sp
      009FA6 90 CF 01 A4      [ 2] 2916 	ldw	_fp_, y
                           000C58  2917 	Sstm8s_tim1$TIM1_SetCompare4$586 ==.
      009FAA 52 02            [ 2] 2918 	sub	sp, #2
                           000C5A  2919 	Sstm8s_tim1$TIM1_SetCompare4$587 ==.
                                   2920 ;	StdPeriphLib/src/stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
      009FAC 7B 07            [ 1] 2921 	ld	a, (0x07, sp)
      009FAE 0F 01            [ 1] 2922 	clr	(0x01, sp)
      009FB0 AE 52 6B         [ 2] 2923 	ldw	x, #0x526b
      009FB3 F7               [ 1] 2924 	ld	(x), a
                           000C62  2925 	Sstm8s_tim1$TIM1_SetCompare4$588 ==.
                                   2926 ;	StdPeriphLib/src/stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
      009FB4 7B 08            [ 1] 2927 	ld	a, (0x08, sp)
      009FB6 AE 52 6C         [ 2] 2928 	ldw	x, #0x526c
      009FB9 F7               [ 1] 2929 	ld	(x), a
                           000C68  2930 	Sstm8s_tim1$TIM1_SetCompare4$589 ==.
                                   2931 ;	StdPeriphLib/src/stm8s_tim1.c: 1832: }
      009FBA 5B 02            [ 2] 2932 	addw	sp, #2
                           000C6A  2933 	Sstm8s_tim1$TIM1_SetCompare4$590 ==.
                           000C6A  2934 	XG$TIM1_SetCompare4$0$0 ==.
      009FBC 32 01 A4         [ 1] 2935 	pop	_fp_
      009FBF 32 01 A5         [ 1] 2936 	pop	_fp_+1
      009FC2 81               [ 4] 2937 	ret
                           000C71  2938 	Sstm8s_tim1$TIM1_SetCompare4$591 ==.
                           000C71  2939 	Sstm8s_tim1$TIM1_SetIC1Prescaler$592 ==.
                                   2940 ;	StdPeriphLib/src/stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                   2941 ;	-----------------------------------------
                                   2942 ;	 function TIM1_SetIC1Prescaler
                                   2943 ;	-----------------------------------------
      009FC3                       2944 _TIM1_SetIC1Prescaler:
      009FC3 3B 01 A5         [ 1] 2945 	push	_fp_+1
      009FC6 3B 01 A4         [ 1] 2946 	push	_fp_
      009FC9 90 96            [ 1] 2947 	ldw	y, sp
      009FCB 90 CF 01 A4      [ 2] 2948 	ldw	_fp_, y
                           000C7D  2949 	Sstm8s_tim1$TIM1_SetIC1Prescaler$593 ==.
                           000C7D  2950 	Sstm8s_tim1$TIM1_SetIC1Prescaler$594 ==.
                                   2951 ;	StdPeriphLib/src/stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      009FCF AE 52 58         [ 2] 2952 	ldw	x, #0x5258
      009FD2 F6               [ 1] 2953 	ld	a, (x)
      009FD3 A4 F3            [ 1] 2954 	and	a, #0xf3
                           000C83  2955 	Sstm8s_tim1$TIM1_SetIC1Prescaler$595 ==.
                                   2956 ;	StdPeriphLib/src/stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
      009FD5 1A 05            [ 1] 2957 	or	a, (0x05, sp)
      009FD7 AE 52 58         [ 2] 2958 	ldw	x, #0x5258
      009FDA F7               [ 1] 2959 	ld	(x), a
                           000C89  2960 	Sstm8s_tim1$TIM1_SetIC1Prescaler$596 ==.
                                   2961 ;	StdPeriphLib/src/stm8s_tim1.c: 1852: }
                           000C89  2962 	Sstm8s_tim1$TIM1_SetIC1Prescaler$597 ==.
                           000C89  2963 	XG$TIM1_SetIC1Prescaler$0$0 ==.
      009FDB 32 01 A4         [ 1] 2964 	pop	_fp_
      009FDE 32 01 A5         [ 1] 2965 	pop	_fp_+1
      009FE1 81               [ 4] 2966 	ret
                           000C90  2967 	Sstm8s_tim1$TIM1_SetIC1Prescaler$598 ==.
                           000C90  2968 	Sstm8s_tim1$TIM1_SetIC2Prescaler$599 ==.
                                   2969 ;	StdPeriphLib/src/stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                   2970 ;	-----------------------------------------
                                   2971 ;	 function TIM1_SetIC2Prescaler
                                   2972 ;	-----------------------------------------
      009FE2                       2973 _TIM1_SetIC2Prescaler:
      009FE2 3B 01 A5         [ 1] 2974 	push	_fp_+1
      009FE5 3B 01 A4         [ 1] 2975 	push	_fp_
      009FE8 90 96            [ 1] 2976 	ldw	y, sp
      009FEA 90 CF 01 A4      [ 2] 2977 	ldw	_fp_, y
                           000C9C  2978 	Sstm8s_tim1$TIM1_SetIC2Prescaler$600 ==.
                           000C9C  2979 	Sstm8s_tim1$TIM1_SetIC2Prescaler$601 ==.
                                   2980 ;	StdPeriphLib/src/stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      009FEE AE 52 59         [ 2] 2981 	ldw	x, #0x5259
      009FF1 F6               [ 1] 2982 	ld	a, (x)
      009FF2 A4 F3            [ 1] 2983 	and	a, #0xf3
                           000CA2  2984 	Sstm8s_tim1$TIM1_SetIC2Prescaler$602 ==.
                                   2985 ;	StdPeriphLib/src/stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
      009FF4 1A 05            [ 1] 2986 	or	a, (0x05, sp)
      009FF6 AE 52 59         [ 2] 2987 	ldw	x, #0x5259
      009FF9 F7               [ 1] 2988 	ld	(x), a
                           000CA8  2989 	Sstm8s_tim1$TIM1_SetIC2Prescaler$603 ==.
                                   2990 ;	StdPeriphLib/src/stm8s_tim1.c: 1873: }
                           000CA8  2991 	Sstm8s_tim1$TIM1_SetIC2Prescaler$604 ==.
                           000CA8  2992 	XG$TIM1_SetIC2Prescaler$0$0 ==.
      009FFA 32 01 A4         [ 1] 2993 	pop	_fp_
      009FFD 32 01 A5         [ 1] 2994 	pop	_fp_+1
      00A000 81               [ 4] 2995 	ret
                           000CAF  2996 	Sstm8s_tim1$TIM1_SetIC2Prescaler$605 ==.
                           000CAF  2997 	Sstm8s_tim1$TIM1_SetIC3Prescaler$606 ==.
                                   2998 ;	StdPeriphLib/src/stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                   2999 ;	-----------------------------------------
                                   3000 ;	 function TIM1_SetIC3Prescaler
                                   3001 ;	-----------------------------------------
      00A001                       3002 _TIM1_SetIC3Prescaler:
      00A001 3B 01 A5         [ 1] 3003 	push	_fp_+1
      00A004 3B 01 A4         [ 1] 3004 	push	_fp_
      00A007 90 96            [ 1] 3005 	ldw	y, sp
      00A009 90 CF 01 A4      [ 2] 3006 	ldw	_fp_, y
                           000CBB  3007 	Sstm8s_tim1$TIM1_SetIC3Prescaler$607 ==.
                           000CBB  3008 	Sstm8s_tim1$TIM1_SetIC3Prescaler$608 ==.
                                   3009 ;	StdPeriphLib/src/stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      00A00D AE 52 5A         [ 2] 3010 	ldw	x, #0x525a
      00A010 F6               [ 1] 3011 	ld	a, (x)
      00A011 A4 F3            [ 1] 3012 	and	a, #0xf3
                           000CC1  3013 	Sstm8s_tim1$TIM1_SetIC3Prescaler$609 ==.
                                   3014 ;	StdPeriphLib/src/stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
      00A013 1A 05            [ 1] 3015 	or	a, (0x05, sp)
      00A015 AE 52 5A         [ 2] 3016 	ldw	x, #0x525a
      00A018 F7               [ 1] 3017 	ld	(x), a
                           000CC7  3018 	Sstm8s_tim1$TIM1_SetIC3Prescaler$610 ==.
                                   3019 ;	StdPeriphLib/src/stm8s_tim1.c: 1894: }
                           000CC7  3020 	Sstm8s_tim1$TIM1_SetIC3Prescaler$611 ==.
                           000CC7  3021 	XG$TIM1_SetIC3Prescaler$0$0 ==.
      00A019 32 01 A4         [ 1] 3022 	pop	_fp_
      00A01C 32 01 A5         [ 1] 3023 	pop	_fp_+1
      00A01F 81               [ 4] 3024 	ret
                           000CCE  3025 	Sstm8s_tim1$TIM1_SetIC3Prescaler$612 ==.
                           000CCE  3026 	Sstm8s_tim1$TIM1_SetIC4Prescaler$613 ==.
                                   3027 ;	StdPeriphLib/src/stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                   3028 ;	-----------------------------------------
                                   3029 ;	 function TIM1_SetIC4Prescaler
                                   3030 ;	-----------------------------------------
      00A020                       3031 _TIM1_SetIC4Prescaler:
      00A020 3B 01 A5         [ 1] 3032 	push	_fp_+1
      00A023 3B 01 A4         [ 1] 3033 	push	_fp_
      00A026 90 96            [ 1] 3034 	ldw	y, sp
      00A028 90 CF 01 A4      [ 2] 3035 	ldw	_fp_, y
                           000CDA  3036 	Sstm8s_tim1$TIM1_SetIC4Prescaler$614 ==.
                           000CDA  3037 	Sstm8s_tim1$TIM1_SetIC4Prescaler$615 ==.
                                   3038 ;	StdPeriphLib/src/stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      00A02C AE 52 5B         [ 2] 3039 	ldw	x, #0x525b
      00A02F F6               [ 1] 3040 	ld	a, (x)
      00A030 A4 F3            [ 1] 3041 	and	a, #0xf3
                           000CE0  3042 	Sstm8s_tim1$TIM1_SetIC4Prescaler$616 ==.
                                   3043 ;	StdPeriphLib/src/stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
      00A032 1A 05            [ 1] 3044 	or	a, (0x05, sp)
      00A034 AE 52 5B         [ 2] 3045 	ldw	x, #0x525b
      00A037 F7               [ 1] 3046 	ld	(x), a
                           000CE6  3047 	Sstm8s_tim1$TIM1_SetIC4Prescaler$617 ==.
                                   3048 ;	StdPeriphLib/src/stm8s_tim1.c: 1915: }
                           000CE6  3049 	Sstm8s_tim1$TIM1_SetIC4Prescaler$618 ==.
                           000CE6  3050 	XG$TIM1_SetIC4Prescaler$0$0 ==.
      00A038 32 01 A4         [ 1] 3051 	pop	_fp_
      00A03B 32 01 A5         [ 1] 3052 	pop	_fp_+1
      00A03E 81               [ 4] 3053 	ret
                           000CED  3054 	Sstm8s_tim1$TIM1_SetIC4Prescaler$619 ==.
                           000CED  3055 	Sstm8s_tim1$TIM1_GetCapture1$620 ==.
                                   3056 ;	StdPeriphLib/src/stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
                                   3057 ;	-----------------------------------------
                                   3058 ;	 function TIM1_GetCapture1
                                   3059 ;	-----------------------------------------
      00A03F                       3060 _TIM1_GetCapture1:
      00A03F 3B 01 A5         [ 1] 3061 	push	_fp_+1
      00A042 3B 01 A4         [ 1] 3062 	push	_fp_
      00A045 90 96            [ 1] 3063 	ldw	y, sp
      00A047 90 CF 01 A4      [ 2] 3064 	ldw	_fp_, y
                           000CF9  3065 	Sstm8s_tim1$TIM1_GetCapture1$621 ==.
      00A04B 52 02            [ 2] 3066 	sub	sp, #2
                           000CFB  3067 	Sstm8s_tim1$TIM1_GetCapture1$622 ==.
                                   3068 ;	StdPeriphLib/src/stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
      00A04D AE 52 65         [ 2] 3069 	ldw	x, #0x5265
      00A050 F6               [ 1] 3070 	ld	a, (x)
      00A051 90 97            [ 1] 3071 	ld	yl, a
                           000D01  3072 	Sstm8s_tim1$TIM1_GetCapture1$623 ==.
                                   3073 ;	StdPeriphLib/src/stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
      00A053 AE 52 66         [ 2] 3074 	ldw	x, #0x5266
      00A056 F6               [ 1] 3075 	ld	a, (x)
                           000D05  3076 	Sstm8s_tim1$TIM1_GetCapture1$624 ==.
                                   3077 ;	StdPeriphLib/src/stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
      00A057 5F               [ 1] 3078 	clrw	x
      00A058 97               [ 1] 3079 	ld	xl, a
                           000D07  3080 	Sstm8s_tim1$TIM1_GetCapture1$625 ==.
                                   3081 ;	StdPeriphLib/src/stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00A059 4F               [ 1] 3082 	clr	a
      00A05A 90 9F            [ 1] 3083 	ld	a, yl
      00A05C 0F 02            [ 1] 3084 	clr	(0x02, sp)
      00A05E 89               [ 2] 3085 	pushw	x
      00A05F 1A 01            [ 1] 3086 	or	a, (1, sp)
      00A061 85               [ 2] 3087 	popw	x
      00A062 01               [ 1] 3088 	rrwa	x
      00A063 1A 02            [ 1] 3089 	or	a, (0x02, sp)
      00A065 97               [ 1] 3090 	ld	xl, a
                           000D14  3091 	Sstm8s_tim1$TIM1_GetCapture1$626 ==.
                                   3092 ;	StdPeriphLib/src/stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
                           000D14  3093 	Sstm8s_tim1$TIM1_GetCapture1$627 ==.
                                   3094 ;	StdPeriphLib/src/stm8s_tim1.c: 1936: }
      00A066 5B 02            [ 2] 3095 	addw	sp, #2
                           000D16  3096 	Sstm8s_tim1$TIM1_GetCapture1$628 ==.
                           000D16  3097 	XG$TIM1_GetCapture1$0$0 ==.
      00A068 32 01 A4         [ 1] 3098 	pop	_fp_
      00A06B 32 01 A5         [ 1] 3099 	pop	_fp_+1
      00A06E 81               [ 4] 3100 	ret
                           000D1D  3101 	Sstm8s_tim1$TIM1_GetCapture1$629 ==.
                           000D1D  3102 	Sstm8s_tim1$TIM1_GetCapture2$630 ==.
                                   3103 ;	StdPeriphLib/src/stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
                                   3104 ;	-----------------------------------------
                                   3105 ;	 function TIM1_GetCapture2
                                   3106 ;	-----------------------------------------
      00A06F                       3107 _TIM1_GetCapture2:
      00A06F 3B 01 A5         [ 1] 3108 	push	_fp_+1
      00A072 3B 01 A4         [ 1] 3109 	push	_fp_
      00A075 90 96            [ 1] 3110 	ldw	y, sp
      00A077 90 CF 01 A4      [ 2] 3111 	ldw	_fp_, y
                           000D29  3112 	Sstm8s_tim1$TIM1_GetCapture2$631 ==.
      00A07B 52 02            [ 2] 3113 	sub	sp, #2
                           000D2B  3114 	Sstm8s_tim1$TIM1_GetCapture2$632 ==.
                                   3115 ;	StdPeriphLib/src/stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
      00A07D AE 52 67         [ 2] 3116 	ldw	x, #0x5267
      00A080 F6               [ 1] 3117 	ld	a, (x)
      00A081 90 97            [ 1] 3118 	ld	yl, a
                           000D31  3119 	Sstm8s_tim1$TIM1_GetCapture2$633 ==.
                                   3120 ;	StdPeriphLib/src/stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
      00A083 AE 52 68         [ 2] 3121 	ldw	x, #0x5268
      00A086 F6               [ 1] 3122 	ld	a, (x)
                           000D35  3123 	Sstm8s_tim1$TIM1_GetCapture2$634 ==.
                                   3124 ;	StdPeriphLib/src/stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
      00A087 5F               [ 1] 3125 	clrw	x
      00A088 97               [ 1] 3126 	ld	xl, a
                           000D37  3127 	Sstm8s_tim1$TIM1_GetCapture2$635 ==.
                                   3128 ;	StdPeriphLib/src/stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00A089 4F               [ 1] 3129 	clr	a
      00A08A 90 9F            [ 1] 3130 	ld	a, yl
      00A08C 0F 02            [ 1] 3131 	clr	(0x02, sp)
      00A08E 89               [ 2] 3132 	pushw	x
      00A08F 1A 01            [ 1] 3133 	or	a, (1, sp)
      00A091 85               [ 2] 3134 	popw	x
      00A092 01               [ 1] 3135 	rrwa	x
      00A093 1A 02            [ 1] 3136 	or	a, (0x02, sp)
      00A095 97               [ 1] 3137 	ld	xl, a
                           000D44  3138 	Sstm8s_tim1$TIM1_GetCapture2$636 ==.
                                   3139 ;	StdPeriphLib/src/stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
                           000D44  3140 	Sstm8s_tim1$TIM1_GetCapture2$637 ==.
                                   3141 ;	StdPeriphLib/src/stm8s_tim1.c: 1957: }
      00A096 5B 02            [ 2] 3142 	addw	sp, #2
                           000D46  3143 	Sstm8s_tim1$TIM1_GetCapture2$638 ==.
                           000D46  3144 	XG$TIM1_GetCapture2$0$0 ==.
      00A098 32 01 A4         [ 1] 3145 	pop	_fp_
      00A09B 32 01 A5         [ 1] 3146 	pop	_fp_+1
      00A09E 81               [ 4] 3147 	ret
                           000D4D  3148 	Sstm8s_tim1$TIM1_GetCapture2$639 ==.
                           000D4D  3149 	Sstm8s_tim1$TIM1_GetCapture3$640 ==.
                                   3150 ;	StdPeriphLib/src/stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
                                   3151 ;	-----------------------------------------
                                   3152 ;	 function TIM1_GetCapture3
                                   3153 ;	-----------------------------------------
      00A09F                       3154 _TIM1_GetCapture3:
      00A09F 3B 01 A5         [ 1] 3155 	push	_fp_+1
      00A0A2 3B 01 A4         [ 1] 3156 	push	_fp_
      00A0A5 90 96            [ 1] 3157 	ldw	y, sp
      00A0A7 90 CF 01 A4      [ 2] 3158 	ldw	_fp_, y
                           000D59  3159 	Sstm8s_tim1$TIM1_GetCapture3$641 ==.
      00A0AB 52 02            [ 2] 3160 	sub	sp, #2
                           000D5B  3161 	Sstm8s_tim1$TIM1_GetCapture3$642 ==.
                                   3162 ;	StdPeriphLib/src/stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
      00A0AD AE 52 69         [ 2] 3163 	ldw	x, #0x5269
      00A0B0 F6               [ 1] 3164 	ld	a, (x)
      00A0B1 90 97            [ 1] 3165 	ld	yl, a
                           000D61  3166 	Sstm8s_tim1$TIM1_GetCapture3$643 ==.
                                   3167 ;	StdPeriphLib/src/stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
      00A0B3 AE 52 6A         [ 2] 3168 	ldw	x, #0x526a
      00A0B6 F6               [ 1] 3169 	ld	a, (x)
                           000D65  3170 	Sstm8s_tim1$TIM1_GetCapture3$644 ==.
                                   3171 ;	StdPeriphLib/src/stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
      00A0B7 5F               [ 1] 3172 	clrw	x
      00A0B8 97               [ 1] 3173 	ld	xl, a
                           000D67  3174 	Sstm8s_tim1$TIM1_GetCapture3$645 ==.
                                   3175 ;	StdPeriphLib/src/stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      00A0B9 4F               [ 1] 3176 	clr	a
      00A0BA 90 9F            [ 1] 3177 	ld	a, yl
      00A0BC 0F 02            [ 1] 3178 	clr	(0x02, sp)
      00A0BE 89               [ 2] 3179 	pushw	x
      00A0BF 1A 01            [ 1] 3180 	or	a, (1, sp)
      00A0C1 85               [ 2] 3181 	popw	x
      00A0C2 01               [ 1] 3182 	rrwa	x
      00A0C3 1A 02            [ 1] 3183 	or	a, (0x02, sp)
      00A0C5 97               [ 1] 3184 	ld	xl, a
                           000D74  3185 	Sstm8s_tim1$TIM1_GetCapture3$646 ==.
                                   3186 ;	StdPeriphLib/src/stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
                           000D74  3187 	Sstm8s_tim1$TIM1_GetCapture3$647 ==.
                                   3188 ;	StdPeriphLib/src/stm8s_tim1.c: 1977: }
      00A0C6 5B 02            [ 2] 3189 	addw	sp, #2
                           000D76  3190 	Sstm8s_tim1$TIM1_GetCapture3$648 ==.
                           000D76  3191 	XG$TIM1_GetCapture3$0$0 ==.
      00A0C8 32 01 A4         [ 1] 3192 	pop	_fp_
      00A0CB 32 01 A5         [ 1] 3193 	pop	_fp_+1
      00A0CE 81               [ 4] 3194 	ret
                           000D7D  3195 	Sstm8s_tim1$TIM1_GetCapture3$649 ==.
                           000D7D  3196 	Sstm8s_tim1$TIM1_GetCapture4$650 ==.
                                   3197 ;	StdPeriphLib/src/stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
                                   3198 ;	-----------------------------------------
                                   3199 ;	 function TIM1_GetCapture4
                                   3200 ;	-----------------------------------------
      00A0CF                       3201 _TIM1_GetCapture4:
      00A0CF 3B 01 A5         [ 1] 3202 	push	_fp_+1
      00A0D2 3B 01 A4         [ 1] 3203 	push	_fp_
      00A0D5 90 96            [ 1] 3204 	ldw	y, sp
      00A0D7 90 CF 01 A4      [ 2] 3205 	ldw	_fp_, y
                           000D89  3206 	Sstm8s_tim1$TIM1_GetCapture4$651 ==.
      00A0DB 52 02            [ 2] 3207 	sub	sp, #2
                           000D8B  3208 	Sstm8s_tim1$TIM1_GetCapture4$652 ==.
                                   3209 ;	StdPeriphLib/src/stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
      00A0DD AE 52 6B         [ 2] 3210 	ldw	x, #0x526b
      00A0E0 F6               [ 1] 3211 	ld	a, (x)
      00A0E1 90 97            [ 1] 3212 	ld	yl, a
                           000D91  3213 	Sstm8s_tim1$TIM1_GetCapture4$653 ==.
                                   3214 ;	StdPeriphLib/src/stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
      00A0E3 AE 52 6C         [ 2] 3215 	ldw	x, #0x526c
      00A0E6 F6               [ 1] 3216 	ld	a, (x)
                           000D95  3217 	Sstm8s_tim1$TIM1_GetCapture4$654 ==.
                                   3218 ;	StdPeriphLib/src/stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
      00A0E7 5F               [ 1] 3219 	clrw	x
      00A0E8 97               [ 1] 3220 	ld	xl, a
                           000D97  3221 	Sstm8s_tim1$TIM1_GetCapture4$655 ==.
                                   3222 ;	StdPeriphLib/src/stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
      00A0E9 4F               [ 1] 3223 	clr	a
      00A0EA 90 9F            [ 1] 3224 	ld	a, yl
      00A0EC 0F 02            [ 1] 3225 	clr	(0x02, sp)
      00A0EE 89               [ 2] 3226 	pushw	x
      00A0EF 1A 01            [ 1] 3227 	or	a, (1, sp)
      00A0F1 85               [ 2] 3228 	popw	x
      00A0F2 01               [ 1] 3229 	rrwa	x
      00A0F3 1A 02            [ 1] 3230 	or	a, (0x02, sp)
      00A0F5 97               [ 1] 3231 	ld	xl, a
                           000DA4  3232 	Sstm8s_tim1$TIM1_GetCapture4$656 ==.
                                   3233 ;	StdPeriphLib/src/stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
                           000DA4  3234 	Sstm8s_tim1$TIM1_GetCapture4$657 ==.
                                   3235 ;	StdPeriphLib/src/stm8s_tim1.c: 1997: }
      00A0F6 5B 02            [ 2] 3236 	addw	sp, #2
                           000DA6  3237 	Sstm8s_tim1$TIM1_GetCapture4$658 ==.
                           000DA6  3238 	XG$TIM1_GetCapture4$0$0 ==.
      00A0F8 32 01 A4         [ 1] 3239 	pop	_fp_
      00A0FB 32 01 A5         [ 1] 3240 	pop	_fp_+1
      00A0FE 81               [ 4] 3241 	ret
                           000DAD  3242 	Sstm8s_tim1$TIM1_GetCapture4$659 ==.
                           000DAD  3243 	Sstm8s_tim1$TIM1_GetCounter$660 ==.
                                   3244 ;	StdPeriphLib/src/stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
                                   3245 ;	-----------------------------------------
                                   3246 ;	 function TIM1_GetCounter
                                   3247 ;	-----------------------------------------
      00A0FF                       3248 _TIM1_GetCounter:
      00A0FF 3B 01 A5         [ 1] 3249 	push	_fp_+1
      00A102 3B 01 A4         [ 1] 3250 	push	_fp_
      00A105 90 96            [ 1] 3251 	ldw	y, sp
      00A107 90 CF 01 A4      [ 2] 3252 	ldw	_fp_, y
                           000DB9  3253 	Sstm8s_tim1$TIM1_GetCounter$661 ==.
      00A10B 52 04            [ 2] 3254 	sub	sp, #4
                           000DBB  3255 	Sstm8s_tim1$TIM1_GetCounter$662 ==.
                                   3256 ;	StdPeriphLib/src/stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
      00A10D AE 52 5E         [ 2] 3257 	ldw	x, #0x525e
      00A110 F6               [ 1] 3258 	ld	a, (x)
      00A111 95               [ 1] 3259 	ld	xh, a
      00A112 4F               [ 1] 3260 	clr	a
      00A113 4F               [ 1] 3261 	clr	a
      00A114 6B 02            [ 1] 3262 	ld	(0x02, sp), a
                           000DC4  3263 	Sstm8s_tim1$TIM1_GetCounter$663 ==.
                                   3264 ;	StdPeriphLib/src/stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
      00A116 90 AE 52 5F      [ 2] 3265 	ldw	y, #0x525f
      00A11A 90 F6            [ 1] 3266 	ld	a, (y)
      00A11C 0F 03            [ 1] 3267 	clr	(0x03, sp)
      00A11E 1A 02            [ 1] 3268 	or	a, (0x02, sp)
      00A120 02               [ 1] 3269 	rlwa	x
      00A121 1A 03            [ 1] 3270 	or	a, (0x03, sp)
      00A123 95               [ 1] 3271 	ld	xh, a
                           000DD2  3272 	Sstm8s_tim1$TIM1_GetCounter$664 ==.
                                   3273 ;	StdPeriphLib/src/stm8s_tim1.c: 2012: }
      00A124 5B 04            [ 2] 3274 	addw	sp, #4
                           000DD4  3275 	Sstm8s_tim1$TIM1_GetCounter$665 ==.
                           000DD4  3276 	XG$TIM1_GetCounter$0$0 ==.
      00A126 32 01 A4         [ 1] 3277 	pop	_fp_
      00A129 32 01 A5         [ 1] 3278 	pop	_fp_+1
      00A12C 81               [ 4] 3279 	ret
                           000DDB  3280 	Sstm8s_tim1$TIM1_GetCounter$666 ==.
                           000DDB  3281 	Sstm8s_tim1$TIM1_GetPrescaler$667 ==.
                                   3282 ;	StdPeriphLib/src/stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
                                   3283 ;	-----------------------------------------
                                   3284 ;	 function TIM1_GetPrescaler
                                   3285 ;	-----------------------------------------
      00A12D                       3286 _TIM1_GetPrescaler:
      00A12D 3B 01 A5         [ 1] 3287 	push	_fp_+1
      00A130 3B 01 A4         [ 1] 3288 	push	_fp_
      00A133 90 96            [ 1] 3289 	ldw	y, sp
      00A135 90 CF 01 A4      [ 2] 3290 	ldw	_fp_, y
                           000DE7  3291 	Sstm8s_tim1$TIM1_GetPrescaler$668 ==.
      00A139 52 04            [ 2] 3292 	sub	sp, #4
                           000DE9  3293 	Sstm8s_tim1$TIM1_GetPrescaler$669 ==.
                                   3294 ;	StdPeriphLib/src/stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
      00A13B AE 52 60         [ 2] 3295 	ldw	x, #0x5260
      00A13E F6               [ 1] 3296 	ld	a, (x)
      00A13F 95               [ 1] 3297 	ld	xh, a
      00A140 4F               [ 1] 3298 	clr	a
      00A141 4F               [ 1] 3299 	clr	a
      00A142 6B 02            [ 1] 3300 	ld	(0x02, sp), a
                           000DF2  3301 	Sstm8s_tim1$TIM1_GetPrescaler$670 ==.
                                   3302 ;	StdPeriphLib/src/stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
      00A144 90 AE 52 61      [ 2] 3303 	ldw	y, #0x5261
      00A148 90 F6            [ 1] 3304 	ld	a, (y)
      00A14A 0F 03            [ 1] 3305 	clr	(0x03, sp)
      00A14C 1A 02            [ 1] 3306 	or	a, (0x02, sp)
      00A14E 02               [ 1] 3307 	rlwa	x
      00A14F 1A 03            [ 1] 3308 	or	a, (0x03, sp)
      00A151 95               [ 1] 3309 	ld	xh, a
                           000E00  3310 	Sstm8s_tim1$TIM1_GetPrescaler$671 ==.
                                   3311 ;	StdPeriphLib/src/stm8s_tim1.c: 2027: }
      00A152 5B 04            [ 2] 3312 	addw	sp, #4
                           000E02  3313 	Sstm8s_tim1$TIM1_GetPrescaler$672 ==.
                           000E02  3314 	XG$TIM1_GetPrescaler$0$0 ==.
      00A154 32 01 A4         [ 1] 3315 	pop	_fp_
      00A157 32 01 A5         [ 1] 3316 	pop	_fp_+1
      00A15A 81               [ 4] 3317 	ret
                           000E09  3318 	Sstm8s_tim1$TIM1_GetPrescaler$673 ==.
                           000E09  3319 	Sstm8s_tim1$TIM1_GetFlagStatus$674 ==.
                                   3320 ;	StdPeriphLib/src/stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3321 ;	-----------------------------------------
                                   3322 ;	 function TIM1_GetFlagStatus
                                   3323 ;	-----------------------------------------
      00A15B                       3324 _TIM1_GetFlagStatus:
      00A15B 3B 01 A5         [ 1] 3325 	push	_fp_+1
      00A15E 3B 01 A4         [ 1] 3326 	push	_fp_
      00A161 90 96            [ 1] 3327 	ldw	y, sp
      00A163 90 CF 01 A4      [ 2] 3328 	ldw	_fp_, y
                           000E15  3329 	Sstm8s_tim1$TIM1_GetFlagStatus$675 ==.
      00A167 52 05            [ 2] 3330 	sub	sp, #5
                           000E17  3331 	Sstm8s_tim1$TIM1_GetFlagStatus$676 ==.
                                   3332 ;	StdPeriphLib/src/stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
      00A169 AE 52 55         [ 2] 3333 	ldw	x, #0x5255
      00A16C F6               [ 1] 3334 	ld	a, (x)
      00A16D 6B 05            [ 1] 3335 	ld	(0x05, sp), a
      00A16F 7B 0B            [ 1] 3336 	ld	a, (0x0b, sp)
      00A171 14 05            [ 1] 3337 	and	a, (0x05, sp)
      00A173 6B 01            [ 1] 3338 	ld	(0x01, sp), a
                           000E23  3339 	Sstm8s_tim1$TIM1_GetFlagStatus$677 ==.
                                   3340 ;	StdPeriphLib/src/stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
      00A175 7B 0A            [ 1] 3341 	ld	a, (0x0a, sp)
      00A177 0F 03            [ 1] 3342 	clr	(0x03, sp)
      00A179 6B 02            [ 1] 3343 	ld	(0x02, sp), a
                           000E29  3344 	Sstm8s_tim1$TIM1_GetFlagStatus$678 ==.
                                   3345 ;	StdPeriphLib/src/stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
      00A17B AE 52 56         [ 2] 3346 	ldw	x, #0x5256
      00A17E F6               [ 1] 3347 	ld	a, (x)
      00A17F 14 02            [ 1] 3348 	and	a, (0x02, sp)
      00A181 1A 01            [ 1] 3349 	or	a, (0x01, sp)
      00A183 4D               [ 1] 3350 	tnz	a
      00A184 27 04            [ 1] 3351 	jreq	00102$
                           000E34  3352 	Sstm8s_tim1$TIM1_GetFlagStatus$679 ==.
                                   3353 ;	StdPeriphLib/src/stm8s_tim1.c: 2060: bitstatus = SET;
      00A186 A6 01            [ 1] 3354 	ld	a, #0x01
      00A188 20 01            [ 2] 3355 	jra	00103$
      00A18A                       3356 00102$:
                           000E38  3357 	Sstm8s_tim1$TIM1_GetFlagStatus$680 ==.
                                   3358 ;	StdPeriphLib/src/stm8s_tim1.c: 2064: bitstatus = RESET;
      00A18A 4F               [ 1] 3359 	clr	a
      00A18B                       3360 00103$:
                           000E39  3361 	Sstm8s_tim1$TIM1_GetFlagStatus$681 ==.
                                   3362 ;	StdPeriphLib/src/stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
                           000E39  3363 	Sstm8s_tim1$TIM1_GetFlagStatus$682 ==.
                                   3364 ;	StdPeriphLib/src/stm8s_tim1.c: 2067: }
      00A18B 5B 05            [ 2] 3365 	addw	sp, #5
                           000E3B  3366 	Sstm8s_tim1$TIM1_GetFlagStatus$683 ==.
                           000E3B  3367 	XG$TIM1_GetFlagStatus$0$0 ==.
      00A18D 32 01 A4         [ 1] 3368 	pop	_fp_
      00A190 32 01 A5         [ 1] 3369 	pop	_fp_+1
      00A193 81               [ 4] 3370 	ret
                           000E42  3371 	Sstm8s_tim1$TIM1_GetFlagStatus$684 ==.
                           000E42  3372 	Sstm8s_tim1$TIM1_ClearFlag$685 ==.
                                   3373 ;	StdPeriphLib/src/stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3374 ;	-----------------------------------------
                                   3375 ;	 function TIM1_ClearFlag
                                   3376 ;	-----------------------------------------
      00A194                       3377 _TIM1_ClearFlag:
      00A194 3B 01 A5         [ 1] 3378 	push	_fp_+1
      00A197 3B 01 A4         [ 1] 3379 	push	_fp_
      00A19A 90 96            [ 1] 3380 	ldw	y, sp
      00A19C 90 CF 01 A4      [ 2] 3381 	ldw	_fp_, y
                           000E4E  3382 	Sstm8s_tim1$TIM1_ClearFlag$686 ==.
      00A1A0 52 02            [ 2] 3383 	sub	sp, #2
                           000E50  3384 	Sstm8s_tim1$TIM1_ClearFlag$687 ==.
                                   3385 ;	StdPeriphLib/src/stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      00A1A2 7B 08            [ 1] 3386 	ld	a, (0x08, sp)
      00A1A4 43               [ 1] 3387 	cpl	a
      00A1A5 AE 52 55         [ 2] 3388 	ldw	x, #0x5255
      00A1A8 F7               [ 1] 3389 	ld	(x), a
                           000E57  3390 	Sstm8s_tim1$TIM1_ClearFlag$688 ==.
                                   3391 ;	StdPeriphLib/src/stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      00A1A9 7B 07            [ 1] 3392 	ld	a, (0x07, sp)
      00A1AB 0F 01            [ 1] 3393 	clr	(0x01, sp)
      00A1AD 43               [ 1] 3394 	cpl	a
      00A1AE A4 1E            [ 1] 3395 	and	a, #0x1e
      00A1B0 AE 52 56         [ 2] 3396 	ldw	x, #0x5256
      00A1B3 F7               [ 1] 3397 	ld	(x), a
                           000E62  3398 	Sstm8s_tim1$TIM1_ClearFlag$689 ==.
                                   3399 ;	StdPeriphLib/src/stm8s_tim1.c: 2096: }
      00A1B4 5B 02            [ 2] 3400 	addw	sp, #2
                           000E64  3401 	Sstm8s_tim1$TIM1_ClearFlag$690 ==.
                           000E64  3402 	XG$TIM1_ClearFlag$0$0 ==.
      00A1B6 32 01 A4         [ 1] 3403 	pop	_fp_
      00A1B9 32 01 A5         [ 1] 3404 	pop	_fp_+1
      00A1BC 81               [ 4] 3405 	ret
                           000E6B  3406 	Sstm8s_tim1$TIM1_ClearFlag$691 ==.
                           000E6B  3407 	Sstm8s_tim1$TIM1_GetITStatus$692 ==.
                                   3408 ;	StdPeriphLib/src/stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
                                   3409 ;	-----------------------------------------
                                   3410 ;	 function TIM1_GetITStatus
                                   3411 ;	-----------------------------------------
      00A1BD                       3412 _TIM1_GetITStatus:
      00A1BD 3B 01 A5         [ 1] 3413 	push	_fp_+1
      00A1C0 3B 01 A4         [ 1] 3414 	push	_fp_
      00A1C3 90 96            [ 1] 3415 	ldw	y, sp
      00A1C5 90 CF 01 A4      [ 2] 3416 	ldw	_fp_, y
                           000E77  3417 	Sstm8s_tim1$TIM1_GetITStatus$693 ==.
      00A1C9 88               [ 1] 3418 	push	a
                           000E78  3419 	Sstm8s_tim1$TIM1_GetITStatus$694 ==.
                                   3420 ;	StdPeriphLib/src/stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
      00A1CA AE 52 55         [ 2] 3421 	ldw	x, #0x5255
      00A1CD F6               [ 1] 3422 	ld	a, (x)
      00A1CE 14 06            [ 1] 3423 	and	a, (0x06, sp)
      00A1D0 6B 01            [ 1] 3424 	ld	(0x01, sp), a
                           000E80  3425 	Sstm8s_tim1$TIM1_GetITStatus$695 ==.
                                   3426 ;	StdPeriphLib/src/stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
      00A1D2 AE 52 54         [ 2] 3427 	ldw	x, #0x5254
      00A1D5 F6               [ 1] 3428 	ld	a, (x)
      00A1D6 14 06            [ 1] 3429 	and	a, (0x06, sp)
                           000E86  3430 	Sstm8s_tim1$TIM1_GetITStatus$696 ==.
                                   3431 ;	StdPeriphLib/src/stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
      00A1D8 0D 01            [ 1] 3432 	tnz	(0x01, sp)
      00A1DA 27 07            [ 1] 3433 	jreq	00102$
      00A1DC 4D               [ 1] 3434 	tnz	a
      00A1DD 27 04            [ 1] 3435 	jreq	00102$
                           000E8D  3436 	Sstm8s_tim1$TIM1_GetITStatus$697 ==.
                                   3437 ;	StdPeriphLib/src/stm8s_tim1.c: 2126: bitstatus = SET;
      00A1DF A6 01            [ 1] 3438 	ld	a, #0x01
      00A1E1 20 01            [ 2] 3439 	jra	00103$
      00A1E3                       3440 00102$:
                           000E91  3441 	Sstm8s_tim1$TIM1_GetITStatus$698 ==.
                                   3442 ;	StdPeriphLib/src/stm8s_tim1.c: 2130: bitstatus = RESET;
      00A1E3 4F               [ 1] 3443 	clr	a
      00A1E4                       3444 00103$:
                           000E92  3445 	Sstm8s_tim1$TIM1_GetITStatus$699 ==.
                                   3446 ;	StdPeriphLib/src/stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
                           000E92  3447 	Sstm8s_tim1$TIM1_GetITStatus$700 ==.
                                   3448 ;	StdPeriphLib/src/stm8s_tim1.c: 2133: }
      00A1E4 5B 01            [ 2] 3449 	addw	sp, #1
                           000E94  3450 	Sstm8s_tim1$TIM1_GetITStatus$701 ==.
                           000E94  3451 	XG$TIM1_GetITStatus$0$0 ==.
      00A1E6 32 01 A4         [ 1] 3452 	pop	_fp_
      00A1E9 32 01 A5         [ 1] 3453 	pop	_fp_+1
      00A1EC 81               [ 4] 3454 	ret
                           000E9B  3455 	Sstm8s_tim1$TIM1_GetITStatus$702 ==.
                           000E9B  3456 	Sstm8s_tim1$TIM1_ClearITPendingBit$703 ==.
                                   3457 ;	StdPeriphLib/src/stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                   3458 ;	-----------------------------------------
                                   3459 ;	 function TIM1_ClearITPendingBit
                                   3460 ;	-----------------------------------------
      00A1ED                       3461 _TIM1_ClearITPendingBit:
      00A1ED 3B 01 A5         [ 1] 3462 	push	_fp_+1
      00A1F0 3B 01 A4         [ 1] 3463 	push	_fp_
      00A1F3 90 96            [ 1] 3464 	ldw	y, sp
      00A1F5 90 CF 01 A4      [ 2] 3465 	ldw	_fp_, y
                           000EA7  3466 	Sstm8s_tim1$TIM1_ClearITPendingBit$704 ==.
                           000EA7  3467 	Sstm8s_tim1$TIM1_ClearITPendingBit$705 ==.
                                   3468 ;	StdPeriphLib/src/stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      00A1F9 7B 05            [ 1] 3469 	ld	a, (0x05, sp)
      00A1FB 43               [ 1] 3470 	cpl	a
      00A1FC AE 52 55         [ 2] 3471 	ldw	x, #0x5255
      00A1FF F7               [ 1] 3472 	ld	(x), a
                           000EAE  3473 	Sstm8s_tim1$TIM1_ClearITPendingBit$706 ==.
                                   3474 ;	StdPeriphLib/src/stm8s_tim1.c: 2156: }
                           000EAE  3475 	Sstm8s_tim1$TIM1_ClearITPendingBit$707 ==.
                           000EAE  3476 	XG$TIM1_ClearITPendingBit$0$0 ==.
      00A200 32 01 A4         [ 1] 3477 	pop	_fp_
      00A203 32 01 A5         [ 1] 3478 	pop	_fp_+1
      00A206 81               [ 4] 3479 	ret
                           000EB5  3480 	Sstm8s_tim1$TIM1_ClearITPendingBit$708 ==.
                           000EB5  3481 	Sstm8s_tim1$TI1_Config$709 ==.
                                   3482 ;	StdPeriphLib/src/stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                   3483 ;	-----------------------------------------
                                   3484 ;	 function TI1_Config
                                   3485 ;	-----------------------------------------
      00A207                       3486 _TI1_Config:
      00A207 3B 01 A5         [ 1] 3487 	push	_fp_+1
      00A20A 3B 01 A4         [ 1] 3488 	push	_fp_
      00A20D 90 96            [ 1] 3489 	ldw	y, sp
      00A20F 90 CF 01 A4      [ 2] 3490 	ldw	_fp_, y
                           000EC1  3491 	Sstm8s_tim1$TI1_Config$710 ==.
      00A213 88               [ 1] 3492 	push	a
                           000EC2  3493 	Sstm8s_tim1$TI1_Config$711 ==.
                                   3494 ;	StdPeriphLib/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00A214 72 11 52 5C      [ 1] 3495 	bres	0x525c, #0
                           000EC6  3496 	Sstm8s_tim1$TI1_Config$712 ==.
                                   3497 ;	StdPeriphLib/src/stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      00A218 AE 52 58         [ 2] 3498 	ldw	x, #0x5258
      00A21B F6               [ 1] 3499 	ld	a, (x)
      00A21C A4 0C            [ 1] 3500 	and	a, #0x0c
      00A21E 6B 01            [ 1] 3501 	ld	(0x01, sp), a
                           000ECE  3502 	Sstm8s_tim1$TI1_Config$713 ==.
                                   3503 ;	StdPeriphLib/src/stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00A220 7B 08            [ 1] 3504 	ld	a, (0x08, sp)
      00A222 4E               [ 1] 3505 	swap	a
      00A223 A4 F0            [ 1] 3506 	and	a, #0xf0
      00A225 1A 07            [ 1] 3507 	or	a, (0x07, sp)
      00A227 1A 01            [ 1] 3508 	or	a, (0x01, sp)
      00A229 AE 52 58         [ 2] 3509 	ldw	x, #0x5258
      00A22C F7               [ 1] 3510 	ld	(x), a
                           000EDB  3511 	Sstm8s_tim1$TI1_Config$714 ==.
                                   3512 ;	StdPeriphLib/src/stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00A22D 0D 06            [ 1] 3513 	tnz	(0x06, sp)
      00A22F 27 09            [ 1] 3514 	jreq	00102$
                           000EDF  3515 	Sstm8s_tim1$TI1_Config$715 ==.
                                   3516 ;	StdPeriphLib/src/stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00A231 AE 52 5C         [ 2] 3517 	ldw	x, #0x525c
      00A234 F6               [ 1] 3518 	ld	a, (x)
      00A235 AA 02            [ 1] 3519 	or	a, #0x02
      00A237 F7               [ 1] 3520 	ld	(x), a
      00A238 20 07            [ 2] 3521 	jra	00103$
      00A23A                       3522 00102$:
                           000EE8  3523 	Sstm8s_tim1$TI1_Config$716 ==.
                                   3524 ;	StdPeriphLib/src/stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00A23A AE 52 5C         [ 2] 3525 	ldw	x, #0x525c
      00A23D F6               [ 1] 3526 	ld	a, (x)
      00A23E A4 FD            [ 1] 3527 	and	a, #0xfd
      00A240 F7               [ 1] 3528 	ld	(x), a
      00A241                       3529 00103$:
                           000EEF  3530 	Sstm8s_tim1$TI1_Config$717 ==.
                                   3531 ;	StdPeriphLib/src/stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      00A241 72 10 52 5C      [ 1] 3532 	bset	0x525c, #0
                           000EF3  3533 	Sstm8s_tim1$TI1_Config$718 ==.
                                   3534 ;	StdPeriphLib/src/stm8s_tim1.c: 2197: }
      00A245 84               [ 1] 3535 	pop	a
                           000EF4  3536 	Sstm8s_tim1$TI1_Config$719 ==.
                           000EF4  3537 	XFstm8s_tim1$TI1_Config$0$0 ==.
      00A246 32 01 A4         [ 1] 3538 	pop	_fp_
      00A249 32 01 A5         [ 1] 3539 	pop	_fp_+1
      00A24C 81               [ 4] 3540 	ret
                           000EFB  3541 	Sstm8s_tim1$TI1_Config$720 ==.
                           000EFB  3542 	Sstm8s_tim1$TI2_Config$721 ==.
                                   3543 ;	StdPeriphLib/src/stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                   3544 ;	-----------------------------------------
                                   3545 ;	 function TI2_Config
                                   3546 ;	-----------------------------------------
      00A24D                       3547 _TI2_Config:
      00A24D 3B 01 A5         [ 1] 3548 	push	_fp_+1
      00A250 3B 01 A4         [ 1] 3549 	push	_fp_
      00A253 90 96            [ 1] 3550 	ldw	y, sp
      00A255 90 CF 01 A4      [ 2] 3551 	ldw	_fp_, y
                           000F07  3552 	Sstm8s_tim1$TI2_Config$722 ==.
      00A259 88               [ 1] 3553 	push	a
                           000F08  3554 	Sstm8s_tim1$TI2_Config$723 ==.
                                   3555 ;	StdPeriphLib/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      00A25A AE 52 5C         [ 2] 3556 	ldw	x, #0x525c
      00A25D F6               [ 1] 3557 	ld	a, (x)
      00A25E A4 EF            [ 1] 3558 	and	a, #0xef
      00A260 F7               [ 1] 3559 	ld	(x), a
                           000F0F  3560 	Sstm8s_tim1$TI2_Config$724 ==.
                                   3561 ;	StdPeriphLib/src/stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      00A261 AE 52 59         [ 2] 3562 	ldw	x, #0x5259
      00A264 F6               [ 1] 3563 	ld	a, (x)
      00A265 A4 0C            [ 1] 3564 	and	a, #0x0c
      00A267 6B 01            [ 1] 3565 	ld	(0x01, sp), a
                           000F17  3566 	Sstm8s_tim1$TI2_Config$725 ==.
                                   3567 ;	StdPeriphLib/src/stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00A269 7B 08            [ 1] 3568 	ld	a, (0x08, sp)
      00A26B 4E               [ 1] 3569 	swap	a
      00A26C A4 F0            [ 1] 3570 	and	a, #0xf0
      00A26E 1A 07            [ 1] 3571 	or	a, (0x07, sp)
      00A270 1A 01            [ 1] 3572 	or	a, (0x01, sp)
      00A272 AE 52 59         [ 2] 3573 	ldw	x, #0x5259
      00A275 F7               [ 1] 3574 	ld	(x), a
                           000F24  3575 	Sstm8s_tim1$TI2_Config$726 ==.
                                   3576 ;	StdPeriphLib/src/stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00A276 0D 06            [ 1] 3577 	tnz	(0x06, sp)
      00A278 27 09            [ 1] 3578 	jreq	00102$
                           000F28  3579 	Sstm8s_tim1$TI2_Config$727 ==.
                                   3580 ;	StdPeriphLib/src/stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00A27A AE 52 5C         [ 2] 3581 	ldw	x, #0x525c
      00A27D F6               [ 1] 3582 	ld	a, (x)
      00A27E AA 20            [ 1] 3583 	or	a, #0x20
      00A280 F7               [ 1] 3584 	ld	(x), a
      00A281 20 07            [ 2] 3585 	jra	00103$
      00A283                       3586 00102$:
                           000F31  3587 	Sstm8s_tim1$TI2_Config$728 ==.
                                   3588 ;	StdPeriphLib/src/stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00A283 AE 52 5C         [ 2] 3589 	ldw	x, #0x525c
      00A286 F6               [ 1] 3590 	ld	a, (x)
      00A287 A4 DF            [ 1] 3591 	and	a, #0xdf
      00A289 F7               [ 1] 3592 	ld	(x), a
      00A28A                       3593 00103$:
                           000F38  3594 	Sstm8s_tim1$TI2_Config$729 ==.
                                   3595 ;	StdPeriphLib/src/stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      00A28A AE 52 5C         [ 2] 3596 	ldw	x, #0x525c
      00A28D F6               [ 1] 3597 	ld	a, (x)
      00A28E AA 10            [ 1] 3598 	or	a, #0x10
      00A290 F7               [ 1] 3599 	ld	(x), a
                           000F3F  3600 	Sstm8s_tim1$TI2_Config$730 ==.
                                   3601 ;	StdPeriphLib/src/stm8s_tim1.c: 2236: }
      00A291 84               [ 1] 3602 	pop	a
                           000F40  3603 	Sstm8s_tim1$TI2_Config$731 ==.
                           000F40  3604 	XFstm8s_tim1$TI2_Config$0$0 ==.
      00A292 32 01 A4         [ 1] 3605 	pop	_fp_
      00A295 32 01 A5         [ 1] 3606 	pop	_fp_+1
      00A298 81               [ 4] 3607 	ret
                           000F47  3608 	Sstm8s_tim1$TI2_Config$732 ==.
                           000F47  3609 	Sstm8s_tim1$TI3_Config$733 ==.
                                   3610 ;	StdPeriphLib/src/stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                   3611 ;	-----------------------------------------
                                   3612 ;	 function TI3_Config
                                   3613 ;	-----------------------------------------
      00A299                       3614 _TI3_Config:
      00A299 3B 01 A5         [ 1] 3615 	push	_fp_+1
      00A29C 3B 01 A4         [ 1] 3616 	push	_fp_
      00A29F 90 96            [ 1] 3617 	ldw	y, sp
      00A2A1 90 CF 01 A4      [ 2] 3618 	ldw	_fp_, y
                           000F53  3619 	Sstm8s_tim1$TI3_Config$734 ==.
      00A2A5 88               [ 1] 3620 	push	a
                           000F54  3621 	Sstm8s_tim1$TI3_Config$735 ==.
                                   3622 ;	StdPeriphLib/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      00A2A6 72 11 52 5D      [ 1] 3623 	bres	0x525d, #0
                           000F58  3624 	Sstm8s_tim1$TI3_Config$736 ==.
                                   3625 ;	StdPeriphLib/src/stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      00A2AA AE 52 5A         [ 2] 3626 	ldw	x, #0x525a
      00A2AD F6               [ 1] 3627 	ld	a, (x)
      00A2AE A4 0C            [ 1] 3628 	and	a, #0x0c
      00A2B0 6B 01            [ 1] 3629 	ld	(0x01, sp), a
                           000F60  3630 	Sstm8s_tim1$TI3_Config$737 ==.
                                   3631 ;	StdPeriphLib/src/stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00A2B2 7B 08            [ 1] 3632 	ld	a, (0x08, sp)
      00A2B4 4E               [ 1] 3633 	swap	a
      00A2B5 A4 F0            [ 1] 3634 	and	a, #0xf0
      00A2B7 1A 07            [ 1] 3635 	or	a, (0x07, sp)
      00A2B9 1A 01            [ 1] 3636 	or	a, (0x01, sp)
      00A2BB AE 52 5A         [ 2] 3637 	ldw	x, #0x525a
      00A2BE F7               [ 1] 3638 	ld	(x), a
                           000F6D  3639 	Sstm8s_tim1$TI3_Config$738 ==.
                                   3640 ;	StdPeriphLib/src/stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00A2BF 0D 06            [ 1] 3641 	tnz	(0x06, sp)
      00A2C1 27 09            [ 1] 3642 	jreq	00102$
                           000F71  3643 	Sstm8s_tim1$TI3_Config$739 ==.
                                   3644 ;	StdPeriphLib/src/stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00A2C3 AE 52 5D         [ 2] 3645 	ldw	x, #0x525d
      00A2C6 F6               [ 1] 3646 	ld	a, (x)
      00A2C7 AA 02            [ 1] 3647 	or	a, #0x02
      00A2C9 F7               [ 1] 3648 	ld	(x), a
      00A2CA 20 07            [ 2] 3649 	jra	00103$
      00A2CC                       3650 00102$:
                           000F7A  3651 	Sstm8s_tim1$TI3_Config$740 ==.
                                   3652 ;	StdPeriphLib/src/stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      00A2CC AE 52 5D         [ 2] 3653 	ldw	x, #0x525d
      00A2CF F6               [ 1] 3654 	ld	a, (x)
      00A2D0 A4 FD            [ 1] 3655 	and	a, #0xfd
      00A2D2 F7               [ 1] 3656 	ld	(x), a
      00A2D3                       3657 00103$:
                           000F81  3658 	Sstm8s_tim1$TI3_Config$741 ==.
                                   3659 ;	StdPeriphLib/src/stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      00A2D3 72 10 52 5D      [ 1] 3660 	bset	0x525d, #0
                           000F85  3661 	Sstm8s_tim1$TI3_Config$742 ==.
                                   3662 ;	StdPeriphLib/src/stm8s_tim1.c: 2276: }
      00A2D7 84               [ 1] 3663 	pop	a
                           000F86  3664 	Sstm8s_tim1$TI3_Config$743 ==.
                           000F86  3665 	XFstm8s_tim1$TI3_Config$0$0 ==.
      00A2D8 32 01 A4         [ 1] 3666 	pop	_fp_
      00A2DB 32 01 A5         [ 1] 3667 	pop	_fp_+1
      00A2DE 81               [ 4] 3668 	ret
                           000F8D  3669 	Sstm8s_tim1$TI3_Config$744 ==.
                           000F8D  3670 	Sstm8s_tim1$TI4_Config$745 ==.
                                   3671 ;	StdPeriphLib/src/stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                   3672 ;	-----------------------------------------
                                   3673 ;	 function TI4_Config
                                   3674 ;	-----------------------------------------
      00A2DF                       3675 _TI4_Config:
      00A2DF 3B 01 A5         [ 1] 3676 	push	_fp_+1
      00A2E2 3B 01 A4         [ 1] 3677 	push	_fp_
      00A2E5 90 96            [ 1] 3678 	ldw	y, sp
      00A2E7 90 CF 01 A4      [ 2] 3679 	ldw	_fp_, y
                           000F99  3680 	Sstm8s_tim1$TI4_Config$746 ==.
      00A2EB 88               [ 1] 3681 	push	a
                           000F9A  3682 	Sstm8s_tim1$TI4_Config$747 ==.
                                   3683 ;	StdPeriphLib/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      00A2EC AE 52 5D         [ 2] 3684 	ldw	x, #0x525d
      00A2EF F6               [ 1] 3685 	ld	a, (x)
      00A2F0 A4 EF            [ 1] 3686 	and	a, #0xef
      00A2F2 F7               [ 1] 3687 	ld	(x), a
                           000FA1  3688 	Sstm8s_tim1$TI4_Config$748 ==.
                                   3689 ;	StdPeriphLib/src/stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      00A2F3 AE 52 5B         [ 2] 3690 	ldw	x, #0x525b
      00A2F6 F6               [ 1] 3691 	ld	a, (x)
      00A2F7 A4 0C            [ 1] 3692 	and	a, #0x0c
      00A2F9 6B 01            [ 1] 3693 	ld	(0x01, sp), a
                           000FA9  3694 	Sstm8s_tim1$TI4_Config$749 ==.
                                   3695 ;	StdPeriphLib/src/stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00A2FB 7B 08            [ 1] 3696 	ld	a, (0x08, sp)
      00A2FD 4E               [ 1] 3697 	swap	a
      00A2FE A4 F0            [ 1] 3698 	and	a, #0xf0
      00A300 1A 07            [ 1] 3699 	or	a, (0x07, sp)
      00A302 1A 01            [ 1] 3700 	or	a, (0x01, sp)
      00A304 AE 52 5B         [ 2] 3701 	ldw	x, #0x525b
      00A307 F7               [ 1] 3702 	ld	(x), a
                           000FB6  3703 	Sstm8s_tim1$TI4_Config$750 ==.
                                   3704 ;	StdPeriphLib/src/stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00A308 0D 06            [ 1] 3705 	tnz	(0x06, sp)
      00A30A 27 09            [ 1] 3706 	jreq	00102$
                           000FBA  3707 	Sstm8s_tim1$TI4_Config$751 ==.
                                   3708 ;	StdPeriphLib/src/stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      00A30C AE 52 5D         [ 2] 3709 	ldw	x, #0x525d
      00A30F F6               [ 1] 3710 	ld	a, (x)
      00A310 AA 20            [ 1] 3711 	or	a, #0x20
      00A312 F7               [ 1] 3712 	ld	(x), a
      00A313 20 07            [ 2] 3713 	jra	00103$
      00A315                       3714 00102$:
                           000FC3  3715 	Sstm8s_tim1$TI4_Config$752 ==.
                                   3716 ;	StdPeriphLib/src/stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      00A315 AE 52 5D         [ 2] 3717 	ldw	x, #0x525d
      00A318 F6               [ 1] 3718 	ld	a, (x)
      00A319 A4 DF            [ 1] 3719 	and	a, #0xdf
      00A31B F7               [ 1] 3720 	ld	(x), a
      00A31C                       3721 00103$:
                           000FCA  3722 	Sstm8s_tim1$TI4_Config$753 ==.
                                   3723 ;	StdPeriphLib/src/stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      00A31C AE 52 5D         [ 2] 3724 	ldw	x, #0x525d
      00A31F F6               [ 1] 3725 	ld	a, (x)
      00A320 AA 10            [ 1] 3726 	or	a, #0x10
      00A322 F7               [ 1] 3727 	ld	(x), a
                           000FD1  3728 	Sstm8s_tim1$TI4_Config$754 ==.
                                   3729 ;	StdPeriphLib/src/stm8s_tim1.c: 2317: }
      00A323 84               [ 1] 3730 	pop	a
                           000FD2  3731 	Sstm8s_tim1$TI4_Config$755 ==.
                           000FD2  3732 	XFstm8s_tim1$TI4_Config$0$0 ==.
      00A324 32 01 A4         [ 1] 3733 	pop	_fp_
      00A327 32 01 A5         [ 1] 3734 	pop	_fp_+1
      00A32A 81               [ 4] 3735 	ret
                           000FD9  3736 	Sstm8s_tim1$TI4_Config$756 ==.
                                   3737 	.area CODE
                                   3738 	.area INITIALIZER
                                   3739 	.area CABS (ABS)
                                   3740 
                                   3741 	.area .debug_line (NOLOAD)
      001A0B 00 00 10 BA           3742 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001A0F                       3743 Ldebug_line_start:
      001A0F 00 02                 3744 	.dw	2
      001A11 00 00 01 19           3745 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001A15 01                    3746 	.db	1
      001A16 01                    3747 	.db	1
      001A17 FB                    3748 	.db	-5
      001A18 0F                    3749 	.db	15
      001A19 0A                    3750 	.db	10
      001A1A 00                    3751 	.db	0
      001A1B 01                    3752 	.db	1
      001A1C 01                    3753 	.db	1
      001A1D 01                    3754 	.db	1
      001A1E 01                    3755 	.db	1
      001A1F 00                    3756 	.db	0
      001A20 00                    3757 	.db	0
      001A21 00                    3758 	.db	0
      001A22 01                    3759 	.db	1
      001A23 2F 68 6F 6D 65 2F 63  3760 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      001A62 00                    3761 	.db	0
      001A63 2F 68 6F 6D 65 2F 63  3762 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      001A9B 00                    3763 	.db	0
      001A9C 2F 68 6F 6D 65 2F 63  3764 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      001AD6 00                    3765 	.db	0
      001AD7 2F 68 6F 6D 65 2F 63  3766 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      001B0A 00                    3767 	.db	0
      001B0B 00                    3768 	.db	0
      001B0C 53 74 64 50 65 72 69  3769 	.ascii "StdPeriphLib/src/stm8s_tim1.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69 6D 31 2E
             63
      001B29 00                    3770 	.db	0
      001B2A 00                    3771 	.uleb128	0
      001B2B 00                    3772 	.uleb128	0
      001B2C 00                    3773 	.uleb128	0
      001B2D 00                    3774 	.db	0
      001B2E                       3775 Ldebug_line_stmt:
      001B2E 00                    3776 	.db	0
      001B2F 05                    3777 	.uleb128	5
      001B30 02                    3778 	.db	2
      001B31 00 00 93 52           3779 	.dw	0,(Sstm8s_tim1$TIM1_DeInit$0)
      001B35 03                    3780 	.db	3
      001B36 39                    3781 	.sleb128	57
      001B37 01                    3782 	.db	1
      001B38 09                    3783 	.db	9
      001B39 00 0C                 3784 	.dw	Sstm8s_tim1$TIM1_DeInit$2-Sstm8s_tim1$TIM1_DeInit$0
      001B3B 03                    3785 	.db	3
      001B3C 02                    3786 	.sleb128	2
      001B3D 01                    3787 	.db	1
      001B3E 09                    3788 	.db	9
      001B3F 00 04                 3789 	.dw	Sstm8s_tim1$TIM1_DeInit$3-Sstm8s_tim1$TIM1_DeInit$2
      001B41 03                    3790 	.db	3
      001B42 01                    3791 	.sleb128	1
      001B43 01                    3792 	.db	1
      001B44 09                    3793 	.db	9
      001B45 00 04                 3794 	.dw	Sstm8s_tim1$TIM1_DeInit$4-Sstm8s_tim1$TIM1_DeInit$3
      001B47 03                    3795 	.db	3
      001B48 01                    3796 	.sleb128	1
      001B49 01                    3797 	.db	1
      001B4A 09                    3798 	.db	9
      001B4B 00 04                 3799 	.dw	Sstm8s_tim1$TIM1_DeInit$5-Sstm8s_tim1$TIM1_DeInit$4
      001B4D 03                    3800 	.db	3
      001B4E 01                    3801 	.sleb128	1
      001B4F 01                    3802 	.db	1
      001B50 09                    3803 	.db	9
      001B51 00 04                 3804 	.dw	Sstm8s_tim1$TIM1_DeInit$6-Sstm8s_tim1$TIM1_DeInit$5
      001B53 03                    3805 	.db	3
      001B54 01                    3806 	.sleb128	1
      001B55 01                    3807 	.db	1
      001B56 09                    3808 	.db	9
      001B57 00 04                 3809 	.dw	Sstm8s_tim1$TIM1_DeInit$7-Sstm8s_tim1$TIM1_DeInit$6
      001B59 03                    3810 	.db	3
      001B5A 01                    3811 	.sleb128	1
      001B5B 01                    3812 	.db	1
      001B5C 09                    3813 	.db	9
      001B5D 00 04                 3814 	.dw	Sstm8s_tim1$TIM1_DeInit$8-Sstm8s_tim1$TIM1_DeInit$7
      001B5F 03                    3815 	.db	3
      001B60 02                    3816 	.sleb128	2
      001B61 01                    3817 	.db	1
      001B62 09                    3818 	.db	9
      001B63 00 04                 3819 	.dw	Sstm8s_tim1$TIM1_DeInit$9-Sstm8s_tim1$TIM1_DeInit$8
      001B65 03                    3820 	.db	3
      001B66 01                    3821 	.sleb128	1
      001B67 01                    3822 	.db	1
      001B68 09                    3823 	.db	9
      001B69 00 04                 3824 	.dw	Sstm8s_tim1$TIM1_DeInit$10-Sstm8s_tim1$TIM1_DeInit$9
      001B6B 03                    3825 	.db	3
      001B6C 02                    3826 	.sleb128	2
      001B6D 01                    3827 	.db	1
      001B6E 09                    3828 	.db	9
      001B6F 00 04                 3829 	.dw	Sstm8s_tim1$TIM1_DeInit$11-Sstm8s_tim1$TIM1_DeInit$10
      001B71 03                    3830 	.db	3
      001B72 01                    3831 	.sleb128	1
      001B73 01                    3832 	.db	1
      001B74 09                    3833 	.db	9
      001B75 00 04                 3834 	.dw	Sstm8s_tim1$TIM1_DeInit$12-Sstm8s_tim1$TIM1_DeInit$11
      001B77 03                    3835 	.db	3
      001B78 01                    3836 	.sleb128	1
      001B79 01                    3837 	.db	1
      001B7A 09                    3838 	.db	9
      001B7B 00 04                 3839 	.dw	Sstm8s_tim1$TIM1_DeInit$13-Sstm8s_tim1$TIM1_DeInit$12
      001B7D 03                    3840 	.db	3
      001B7E 01                    3841 	.sleb128	1
      001B7F 01                    3842 	.db	1
      001B80 09                    3843 	.db	9
      001B81 00 04                 3844 	.dw	Sstm8s_tim1$TIM1_DeInit$14-Sstm8s_tim1$TIM1_DeInit$13
      001B83 03                    3845 	.db	3
      001B84 02                    3846 	.sleb128	2
      001B85 01                    3847 	.db	1
      001B86 09                    3848 	.db	9
      001B87 00 04                 3849 	.dw	Sstm8s_tim1$TIM1_DeInit$15-Sstm8s_tim1$TIM1_DeInit$14
      001B89 03                    3850 	.db	3
      001B8A 01                    3851 	.sleb128	1
      001B8B 01                    3852 	.db	1
      001B8C 09                    3853 	.db	9
      001B8D 00 04                 3854 	.dw	Sstm8s_tim1$TIM1_DeInit$16-Sstm8s_tim1$TIM1_DeInit$15
      001B8F 03                    3855 	.db	3
      001B90 01                    3856 	.sleb128	1
      001B91 01                    3857 	.db	1
      001B92 09                    3858 	.db	9
      001B93 00 04                 3859 	.dw	Sstm8s_tim1$TIM1_DeInit$17-Sstm8s_tim1$TIM1_DeInit$16
      001B95 03                    3860 	.db	3
      001B96 01                    3861 	.sleb128	1
      001B97 01                    3862 	.db	1
      001B98 09                    3863 	.db	9
      001B99 00 04                 3864 	.dw	Sstm8s_tim1$TIM1_DeInit$18-Sstm8s_tim1$TIM1_DeInit$17
      001B9B 03                    3865 	.db	3
      001B9C 01                    3866 	.sleb128	1
      001B9D 01                    3867 	.db	1
      001B9E 09                    3868 	.db	9
      001B9F 00 04                 3869 	.dw	Sstm8s_tim1$TIM1_DeInit$19-Sstm8s_tim1$TIM1_DeInit$18
      001BA1 03                    3870 	.db	3
      001BA2 01                    3871 	.sleb128	1
      001BA3 01                    3872 	.db	1
      001BA4 09                    3873 	.db	9
      001BA5 00 04                 3874 	.dw	Sstm8s_tim1$TIM1_DeInit$20-Sstm8s_tim1$TIM1_DeInit$19
      001BA7 03                    3875 	.db	3
      001BA8 01                    3876 	.sleb128	1
      001BA9 01                    3877 	.db	1
      001BAA 09                    3878 	.db	9
      001BAB 00 04                 3879 	.dw	Sstm8s_tim1$TIM1_DeInit$21-Sstm8s_tim1$TIM1_DeInit$20
      001BAD 03                    3880 	.db	3
      001BAE 01                    3881 	.sleb128	1
      001BAF 01                    3882 	.db	1
      001BB0 09                    3883 	.db	9
      001BB1 00 04                 3884 	.dw	Sstm8s_tim1$TIM1_DeInit$22-Sstm8s_tim1$TIM1_DeInit$21
      001BB3 03                    3885 	.db	3
      001BB4 01                    3886 	.sleb128	1
      001BB5 01                    3887 	.db	1
      001BB6 09                    3888 	.db	9
      001BB7 00 04                 3889 	.dw	Sstm8s_tim1$TIM1_DeInit$23-Sstm8s_tim1$TIM1_DeInit$22
      001BB9 03                    3890 	.db	3
      001BBA 01                    3891 	.sleb128	1
      001BBB 01                    3892 	.db	1
      001BBC 09                    3893 	.db	9
      001BBD 00 04                 3894 	.dw	Sstm8s_tim1$TIM1_DeInit$24-Sstm8s_tim1$TIM1_DeInit$23
      001BBF 03                    3895 	.db	3
      001BC0 01                    3896 	.sleb128	1
      001BC1 01                    3897 	.db	1
      001BC2 09                    3898 	.db	9
      001BC3 00 04                 3899 	.dw	Sstm8s_tim1$TIM1_DeInit$25-Sstm8s_tim1$TIM1_DeInit$24
      001BC5 03                    3900 	.db	3
      001BC6 01                    3901 	.sleb128	1
      001BC7 01                    3902 	.db	1
      001BC8 09                    3903 	.db	9
      001BC9 00 04                 3904 	.dw	Sstm8s_tim1$TIM1_DeInit$26-Sstm8s_tim1$TIM1_DeInit$25
      001BCB 03                    3905 	.db	3
      001BCC 01                    3906 	.sleb128	1
      001BCD 01                    3907 	.db	1
      001BCE 09                    3908 	.db	9
      001BCF 00 04                 3909 	.dw	Sstm8s_tim1$TIM1_DeInit$27-Sstm8s_tim1$TIM1_DeInit$26
      001BD1 03                    3910 	.db	3
      001BD2 01                    3911 	.sleb128	1
      001BD3 01                    3912 	.db	1
      001BD4 09                    3913 	.db	9
      001BD5 00 04                 3914 	.dw	Sstm8s_tim1$TIM1_DeInit$28-Sstm8s_tim1$TIM1_DeInit$27
      001BD7 03                    3915 	.db	3
      001BD8 01                    3916 	.sleb128	1
      001BD9 01                    3917 	.db	1
      001BDA 09                    3918 	.db	9
      001BDB 00 04                 3919 	.dw	Sstm8s_tim1$TIM1_DeInit$29-Sstm8s_tim1$TIM1_DeInit$28
      001BDD 03                    3920 	.db	3
      001BDE 01                    3921 	.sleb128	1
      001BDF 01                    3922 	.db	1
      001BE0 09                    3923 	.db	9
      001BE1 00 04                 3924 	.dw	Sstm8s_tim1$TIM1_DeInit$30-Sstm8s_tim1$TIM1_DeInit$29
      001BE3 03                    3925 	.db	3
      001BE4 01                    3926 	.sleb128	1
      001BE5 01                    3927 	.db	1
      001BE6 09                    3928 	.db	9
      001BE7 00 04                 3929 	.dw	Sstm8s_tim1$TIM1_DeInit$31-Sstm8s_tim1$TIM1_DeInit$30
      001BE9 03                    3930 	.db	3
      001BEA 01                    3931 	.sleb128	1
      001BEB 01                    3932 	.db	1
      001BEC 09                    3933 	.db	9
      001BED 00 04                 3934 	.dw	Sstm8s_tim1$TIM1_DeInit$32-Sstm8s_tim1$TIM1_DeInit$31
      001BEF 03                    3935 	.db	3
      001BF0 01                    3936 	.sleb128	1
      001BF1 01                    3937 	.db	1
      001BF2 09                    3938 	.db	9
      001BF3 00 04                 3939 	.dw	Sstm8s_tim1$TIM1_DeInit$33-Sstm8s_tim1$TIM1_DeInit$32
      001BF5 03                    3940 	.db	3
      001BF6 01                    3941 	.sleb128	1
      001BF7 01                    3942 	.db	1
      001BF8 09                    3943 	.db	9
      001BF9 00 04                 3944 	.dw	Sstm8s_tim1$TIM1_DeInit$34-Sstm8s_tim1$TIM1_DeInit$33
      001BFB 03                    3945 	.db	3
      001BFC 01                    3946 	.sleb128	1
      001BFD 01                    3947 	.db	1
      001BFE 09                    3948 	.db	9
      001BFF 00 04                 3949 	.dw	Sstm8s_tim1$TIM1_DeInit$35-Sstm8s_tim1$TIM1_DeInit$34
      001C01 03                    3950 	.db	3
      001C02 01                    3951 	.sleb128	1
      001C03 01                    3952 	.db	1
      001C04 09                    3953 	.db	9
      001C05 00 04                 3954 	.dw	Sstm8s_tim1$TIM1_DeInit$36-Sstm8s_tim1$TIM1_DeInit$35
      001C07 03                    3955 	.db	3
      001C08 01                    3956 	.sleb128	1
      001C09 01                    3957 	.db	1
      001C0A 09                    3958 	.db	9
      001C0B 00 04                 3959 	.dw	Sstm8s_tim1$TIM1_DeInit$37-Sstm8s_tim1$TIM1_DeInit$36
      001C0D 03                    3960 	.db	3
      001C0E 01                    3961 	.sleb128	1
      001C0F 01                    3962 	.db	1
      001C10 09                    3963 	.db	9
      001C11 00 04                 3964 	.dw	Sstm8s_tim1$TIM1_DeInit$38-Sstm8s_tim1$TIM1_DeInit$37
      001C13 03                    3965 	.db	3
      001C14 01                    3966 	.sleb128	1
      001C15 01                    3967 	.db	1
      001C16 09                    3968 	.db	9
      001C17 00 04                 3969 	.dw	Sstm8s_tim1$TIM1_DeInit$39-Sstm8s_tim1$TIM1_DeInit$38
      001C19 03                    3970 	.db	3
      001C1A 01                    3971 	.sleb128	1
      001C1B 01                    3972 	.db	1
      001C1C 09                    3973 	.db	9
      001C1D 00 04                 3974 	.dw	Sstm8s_tim1$TIM1_DeInit$40-Sstm8s_tim1$TIM1_DeInit$39
      001C1F 03                    3975 	.db	3
      001C20 01                    3976 	.sleb128	1
      001C21 01                    3977 	.db	1
      001C22 09                    3978 	.db	9
      001C23 00 07                 3979 	.dw	7+Sstm8s_tim1$TIM1_DeInit$41-Sstm8s_tim1$TIM1_DeInit$40
      001C25 00                    3980 	.db	0
      001C26 01                    3981 	.uleb128	1
      001C27 01                    3982 	.db	1
      001C28 00                    3983 	.db	0
      001C29 05                    3984 	.uleb128	5
      001C2A 02                    3985 	.db	2
      001C2B 00 00 93 FD           3986 	.dw	0,(Sstm8s_tim1$TIM1_TimeBaseInit$43)
      001C2F 03                    3987 	.db	3
      001C30 EE 00                 3988 	.sleb128	110
      001C32 01                    3989 	.db	1
      001C33 09                    3990 	.db	9
      001C34 00 0E                 3991 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$45-Sstm8s_tim1$TIM1_TimeBaseInit$43
      001C36 03                    3992 	.db	3
      001C37 09                    3993 	.sleb128	9
      001C38 01                    3994 	.db	1
      001C39 09                    3995 	.db	9
      001C3A 00 08                 3996 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$46-Sstm8s_tim1$TIM1_TimeBaseInit$45
      001C3C 03                    3997 	.db	3
      001C3D 01                    3998 	.sleb128	1
      001C3E 01                    3999 	.db	1
      001C3F 09                    4000 	.db	9
      001C40 00 06                 4001 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$47-Sstm8s_tim1$TIM1_TimeBaseInit$46
      001C42 03                    4002 	.db	3
      001C43 03                    4003 	.sleb128	3
      001C44 01                    4004 	.db	1
      001C45 09                    4005 	.db	9
      001C46 00 08                 4006 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$48-Sstm8s_tim1$TIM1_TimeBaseInit$47
      001C48 03                    4007 	.db	3
      001C49 01                    4008 	.sleb128	1
      001C4A 01                    4009 	.db	1
      001C4B 09                    4010 	.db	9
      001C4C 00 06                 4011 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$49-Sstm8s_tim1$TIM1_TimeBaseInit$48
      001C4E 03                    4012 	.db	3
      001C4F 03                    4013 	.sleb128	3
      001C50 01                    4014 	.db	1
      001C51 09                    4015 	.db	9
      001C52 00 06                 4016 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$50-Sstm8s_tim1$TIM1_TimeBaseInit$49
      001C54 03                    4017 	.db	3
      001C55 01                    4018 	.sleb128	1
      001C56 01                    4019 	.db	1
      001C57 09                    4020 	.db	9
      001C58 00 06                 4021 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$51-Sstm8s_tim1$TIM1_TimeBaseInit$50
      001C5A 03                    4022 	.db	3
      001C5B 03                    4023 	.sleb128	3
      001C5C 01                    4024 	.db	1
      001C5D 09                    4025 	.db	9
      001C5E 00 06                 4026 	.dw	Sstm8s_tim1$TIM1_TimeBaseInit$52-Sstm8s_tim1$TIM1_TimeBaseInit$51
      001C60 03                    4027 	.db	3
      001C61 01                    4028 	.sleb128	1
      001C62 01                    4029 	.db	1
      001C63 09                    4030 	.db	9
      001C64 00 09                 4031 	.dw	7+Sstm8s_tim1$TIM1_TimeBaseInit$53-Sstm8s_tim1$TIM1_TimeBaseInit$52
      001C66 00                    4032 	.db	0
      001C67 01                    4033 	.uleb128	1
      001C68 01                    4034 	.db	1
      001C69 00                    4035 	.db	0
      001C6A 05                    4036 	.uleb128	5
      001C6B 02                    4037 	.db	2
      001C6C 00 00 94 42           4038 	.dw	0,(Sstm8s_tim1$TIM1_OC1Init$55)
      001C70 03                    4039 	.db	3
      001C71 99 01                 4040 	.sleb128	153
      001C73 01                    4041 	.db	1
      001C74 09                    4042 	.db	9
      001C75 00 0E                 4043 	.dw	Sstm8s_tim1$TIM1_OC1Init$57-Sstm8s_tim1$TIM1_OC1Init$55
      001C77 03                    4044 	.db	3
      001C78 14                    4045 	.sleb128	20
      001C79 01                    4046 	.db	1
      001C7A 09                    4047 	.db	9
      001C7B 00 07                 4048 	.dw	Sstm8s_tim1$TIM1_OC1Init$58-Sstm8s_tim1$TIM1_OC1Init$57
      001C7D 03                    4049 	.db	3
      001C7E 04                    4050 	.sleb128	4
      001C7F 01                    4051 	.db	1
      001C80 09                    4052 	.db	9
      001C81 00 0C                 4053 	.dw	Sstm8s_tim1$TIM1_OC1Init$59-Sstm8s_tim1$TIM1_OC1Init$58
      001C83 03                    4054 	.db	3
      001C84 01                    4055 	.sleb128	1
      001C85 01                    4056 	.db	1
      001C86 09                    4057 	.db	9
      001C87 00 08                 4058 	.dw	Sstm8s_tim1$TIM1_OC1Init$60-Sstm8s_tim1$TIM1_OC1Init$59
      001C89 03                    4059 	.db	3
      001C8A 01                    4060 	.sleb128	1
      001C8B 01                    4061 	.db	1
      001C8C 09                    4062 	.db	9
      001C8D 00 06                 4063 	.dw	Sstm8s_tim1$TIM1_OC1Init$61-Sstm8s_tim1$TIM1_OC1Init$60
      001C8F 03                    4064 	.db	3
      001C90 01                    4065 	.sleb128	1
      001C91 01                    4066 	.db	1
      001C92 09                    4067 	.db	9
      001C93 00 0E                 4068 	.dw	Sstm8s_tim1$TIM1_OC1Init$62-Sstm8s_tim1$TIM1_OC1Init$61
      001C95 03                    4069 	.db	3
      001C96 03                    4070 	.sleb128	3
      001C97 01                    4071 	.db	1
      001C98 09                    4072 	.db	9
      001C99 00 06                 4073 	.dw	Sstm8s_tim1$TIM1_OC1Init$63-Sstm8s_tim1$TIM1_OC1Init$62
      001C9B 03                    4074 	.db	3
      001C9C 01                    4075 	.sleb128	1
      001C9D 01                    4076 	.db	1
      001C9E 09                    4077 	.db	9
      001C9F 00 06                 4078 	.dw	Sstm8s_tim1$TIM1_OC1Init$64-Sstm8s_tim1$TIM1_OC1Init$63
      001CA1 03                    4079 	.db	3
      001CA2 03                    4080 	.sleb128	3
      001CA3 01                    4081 	.db	1
      001CA4 09                    4082 	.db	9
      001CA5 00 07                 4083 	.dw	Sstm8s_tim1$TIM1_OC1Init$65-Sstm8s_tim1$TIM1_OC1Init$64
      001CA7 03                    4084 	.db	3
      001CA8 02                    4085 	.sleb128	2
      001CA9 01                    4086 	.db	1
      001CAA 09                    4087 	.db	9
      001CAB 00 0C                 4088 	.dw	Sstm8s_tim1$TIM1_OC1Init$66-Sstm8s_tim1$TIM1_OC1Init$65
      001CAD 03                    4089 	.db	3
      001CAE 01                    4090 	.sleb128	1
      001CAF 01                    4091 	.db	1
      001CB0 09                    4092 	.db	9
      001CB1 00 0C                 4093 	.dw	Sstm8s_tim1$TIM1_OC1Init$67-Sstm8s_tim1$TIM1_OC1Init$66
      001CB3 03                    4094 	.db	3
      001CB4 03                    4095 	.sleb128	3
      001CB5 01                    4096 	.db	1
      001CB6 09                    4097 	.db	9
      001CB7 00 08                 4098 	.dw	Sstm8s_tim1$TIM1_OC1Init$68-Sstm8s_tim1$TIM1_OC1Init$67
      001CB9 03                    4099 	.db	3
      001CBA 01                    4100 	.sleb128	1
      001CBB 01                    4101 	.db	1
      001CBC 09                    4102 	.db	9
      001CBD 00 06                 4103 	.dw	Sstm8s_tim1$TIM1_OC1Init$69-Sstm8s_tim1$TIM1_OC1Init$68
      001CBF 03                    4104 	.db	3
      001CC0 01                    4105 	.sleb128	1
      001CC1 01                    4106 	.db	1
      001CC2 09                    4107 	.db	9
      001CC3 00 09                 4108 	.dw	7+Sstm8s_tim1$TIM1_OC1Init$70-Sstm8s_tim1$TIM1_OC1Init$69
      001CC5 00                    4109 	.db	0
      001CC6 01                    4110 	.uleb128	1
      001CC7 01                    4111 	.db	1
      001CC8 00                    4112 	.db	0
      001CC9 05                    4113 	.uleb128	5
      001CCA 02                    4114 	.db	2
      001CCB 00 00 94 C1           4115 	.dw	0,(Sstm8s_tim1$TIM1_OC2Init$72)
      001CCF 03                    4116 	.db	3
      001CD0 D8 01                 4117 	.sleb128	216
      001CD2 01                    4118 	.db	1
      001CD3 09                    4119 	.db	9
      001CD4 00 0E                 4120 	.dw	Sstm8s_tim1$TIM1_OC2Init$74-Sstm8s_tim1$TIM1_OC2Init$72
      001CD6 03                    4121 	.db	3
      001CD7 14                    4122 	.sleb128	20
      001CD8 01                    4123 	.db	1
      001CD9 09                    4124 	.db	9
      001CDA 00 07                 4125 	.dw	Sstm8s_tim1$TIM1_OC2Init$75-Sstm8s_tim1$TIM1_OC2Init$74
      001CDC 03                    4126 	.db	3
      001CDD 05                    4127 	.sleb128	5
      001CDE 01                    4128 	.db	1
      001CDF 09                    4129 	.db	9
      001CE0 00 0C                 4130 	.dw	Sstm8s_tim1$TIM1_OC2Init$76-Sstm8s_tim1$TIM1_OC2Init$75
      001CE2 03                    4131 	.db	3
      001CE3 01                    4132 	.sleb128	1
      001CE4 01                    4133 	.db	1
      001CE5 09                    4134 	.db	9
      001CE6 00 08                 4135 	.dw	Sstm8s_tim1$TIM1_OC2Init$77-Sstm8s_tim1$TIM1_OC2Init$76
      001CE8 03                    4136 	.db	3
      001CE9 01                    4137 	.sleb128	1
      001CEA 01                    4138 	.db	1
      001CEB 09                    4139 	.db	9
      001CEC 00 06                 4140 	.dw	Sstm8s_tim1$TIM1_OC2Init$78-Sstm8s_tim1$TIM1_OC2Init$77
      001CEE 03                    4141 	.db	3
      001CEF 01                    4142 	.sleb128	1
      001CF0 01                    4143 	.db	1
      001CF1 09                    4144 	.db	9
      001CF2 00 0E                 4145 	.dw	Sstm8s_tim1$TIM1_OC2Init$79-Sstm8s_tim1$TIM1_OC2Init$78
      001CF4 03                    4146 	.db	3
      001CF5 03                    4147 	.sleb128	3
      001CF6 01                    4148 	.db	1
      001CF7 09                    4149 	.db	9
      001CF8 00 06                 4150 	.dw	Sstm8s_tim1$TIM1_OC2Init$80-Sstm8s_tim1$TIM1_OC2Init$79
      001CFA 03                    4151 	.db	3
      001CFB 01                    4152 	.sleb128	1
      001CFC 01                    4153 	.db	1
      001CFD 09                    4154 	.db	9
      001CFE 00 06                 4155 	.dw	Sstm8s_tim1$TIM1_OC2Init$81-Sstm8s_tim1$TIM1_OC2Init$80
      001D00 03                    4156 	.db	3
      001D01 03                    4157 	.sleb128	3
      001D02 01                    4158 	.db	1
      001D03 09                    4159 	.db	9
      001D04 00 07                 4160 	.dw	Sstm8s_tim1$TIM1_OC2Init$82-Sstm8s_tim1$TIM1_OC2Init$81
      001D06 03                    4161 	.db	3
      001D07 02                    4162 	.sleb128	2
      001D08 01                    4163 	.db	1
      001D09 09                    4164 	.db	9
      001D0A 00 0C                 4165 	.dw	Sstm8s_tim1$TIM1_OC2Init$83-Sstm8s_tim1$TIM1_OC2Init$82
      001D0C 03                    4166 	.db	3
      001D0D 01                    4167 	.sleb128	1
      001D0E 01                    4168 	.db	1
      001D0F 09                    4169 	.db	9
      001D10 00 0C                 4170 	.dw	Sstm8s_tim1$TIM1_OC2Init$84-Sstm8s_tim1$TIM1_OC2Init$83
      001D12 03                    4171 	.db	3
      001D13 03                    4172 	.sleb128	3
      001D14 01                    4173 	.db	1
      001D15 09                    4174 	.db	9
      001D16 00 08                 4175 	.dw	Sstm8s_tim1$TIM1_OC2Init$85-Sstm8s_tim1$TIM1_OC2Init$84
      001D18 03                    4176 	.db	3
      001D19 01                    4177 	.sleb128	1
      001D1A 01                    4178 	.db	1
      001D1B 09                    4179 	.db	9
      001D1C 00 06                 4180 	.dw	Sstm8s_tim1$TIM1_OC2Init$86-Sstm8s_tim1$TIM1_OC2Init$85
      001D1E 03                    4181 	.db	3
      001D1F 01                    4182 	.sleb128	1
      001D20 01                    4183 	.db	1
      001D21 09                    4184 	.db	9
      001D22 00 09                 4185 	.dw	7+Sstm8s_tim1$TIM1_OC2Init$87-Sstm8s_tim1$TIM1_OC2Init$86
      001D24 00                    4186 	.db	0
      001D25 01                    4187 	.uleb128	1
      001D26 01                    4188 	.db	1
      001D27 00                    4189 	.db	0
      001D28 05                    4190 	.uleb128	5
      001D29 02                    4191 	.db	2
      001D2A 00 00 95 40           4192 	.dw	0,(Sstm8s_tim1$TIM1_OC3Init$89)
      001D2E 03                    4193 	.db	3
      001D2F 98 02                 4194 	.sleb128	280
      001D31 01                    4195 	.db	1
      001D32 09                    4196 	.db	9
      001D33 00 0E                 4197 	.dw	Sstm8s_tim1$TIM1_OC3Init$91-Sstm8s_tim1$TIM1_OC3Init$89
      001D35 03                    4198 	.db	3
      001D36 14                    4199 	.sleb128	20
      001D37 01                    4200 	.db	1
      001D38 09                    4201 	.db	9
      001D39 00 07                 4202 	.dw	Sstm8s_tim1$TIM1_OC3Init$92-Sstm8s_tim1$TIM1_OC3Init$91
      001D3B 03                    4203 	.db	3
      001D3C 04                    4204 	.sleb128	4
      001D3D 01                    4205 	.db	1
      001D3E 09                    4206 	.db	9
      001D3F 00 0C                 4207 	.dw	Sstm8s_tim1$TIM1_OC3Init$93-Sstm8s_tim1$TIM1_OC3Init$92
      001D41 03                    4208 	.db	3
      001D42 01                    4209 	.sleb128	1
      001D43 01                    4210 	.db	1
      001D44 09                    4211 	.db	9
      001D45 00 08                 4212 	.dw	Sstm8s_tim1$TIM1_OC3Init$94-Sstm8s_tim1$TIM1_OC3Init$93
      001D47 03                    4213 	.db	3
      001D48 01                    4214 	.sleb128	1
      001D49 01                    4215 	.db	1
      001D4A 09                    4216 	.db	9
      001D4B 00 06                 4217 	.dw	Sstm8s_tim1$TIM1_OC3Init$95-Sstm8s_tim1$TIM1_OC3Init$94
      001D4D 03                    4218 	.db	3
      001D4E 01                    4219 	.sleb128	1
      001D4F 01                    4220 	.db	1
      001D50 09                    4221 	.db	9
      001D51 00 0E                 4222 	.dw	Sstm8s_tim1$TIM1_OC3Init$96-Sstm8s_tim1$TIM1_OC3Init$95
      001D53 03                    4223 	.db	3
      001D54 03                    4224 	.sleb128	3
      001D55 01                    4225 	.db	1
      001D56 09                    4226 	.db	9
      001D57 00 06                 4227 	.dw	Sstm8s_tim1$TIM1_OC3Init$97-Sstm8s_tim1$TIM1_OC3Init$96
      001D59 03                    4228 	.db	3
      001D5A 01                    4229 	.sleb128	1
      001D5B 01                    4230 	.db	1
      001D5C 09                    4231 	.db	9
      001D5D 00 06                 4232 	.dw	Sstm8s_tim1$TIM1_OC3Init$98-Sstm8s_tim1$TIM1_OC3Init$97
      001D5F 03                    4233 	.db	3
      001D60 03                    4234 	.sleb128	3
      001D61 01                    4235 	.db	1
      001D62 09                    4236 	.db	9
      001D63 00 07                 4237 	.dw	Sstm8s_tim1$TIM1_OC3Init$99-Sstm8s_tim1$TIM1_OC3Init$98
      001D65 03                    4238 	.db	3
      001D66 02                    4239 	.sleb128	2
      001D67 01                    4240 	.db	1
      001D68 09                    4241 	.db	9
      001D69 00 0C                 4242 	.dw	Sstm8s_tim1$TIM1_OC3Init$100-Sstm8s_tim1$TIM1_OC3Init$99
      001D6B 03                    4243 	.db	3
      001D6C 01                    4244 	.sleb128	1
      001D6D 01                    4245 	.db	1
      001D6E 09                    4246 	.db	9
      001D6F 00 0C                 4247 	.dw	Sstm8s_tim1$TIM1_OC3Init$101-Sstm8s_tim1$TIM1_OC3Init$100
      001D71 03                    4248 	.db	3
      001D72 03                    4249 	.sleb128	3
      001D73 01                    4250 	.db	1
      001D74 09                    4251 	.db	9
      001D75 00 08                 4252 	.dw	Sstm8s_tim1$TIM1_OC3Init$102-Sstm8s_tim1$TIM1_OC3Init$101
      001D77 03                    4253 	.db	3
      001D78 01                    4254 	.sleb128	1
      001D79 01                    4255 	.db	1
      001D7A 09                    4256 	.db	9
      001D7B 00 06                 4257 	.dw	Sstm8s_tim1$TIM1_OC3Init$103-Sstm8s_tim1$TIM1_OC3Init$102
      001D7D 03                    4258 	.db	3
      001D7E 01                    4259 	.sleb128	1
      001D7F 01                    4260 	.db	1
      001D80 09                    4261 	.db	9
      001D81 00 09                 4262 	.dw	7+Sstm8s_tim1$TIM1_OC3Init$104-Sstm8s_tim1$TIM1_OC3Init$103
      001D83 00                    4263 	.db	0
      001D84 01                    4264 	.uleb128	1
      001D85 01                    4265 	.db	1
      001D86 00                    4266 	.db	0
      001D87 05                    4267 	.uleb128	5
      001D88 02                    4268 	.db	2
      001D89 00 00 95 BF           4269 	.dw	0,(Sstm8s_tim1$TIM1_OC4Init$106)
      001D8D 03                    4270 	.db	3
      001D8E D1 02                 4271 	.sleb128	337
      001D90 01                    4272 	.db	1
      001D91 09                    4273 	.db	9
      001D92 00 0E                 4274 	.dw	Sstm8s_tim1$TIM1_OC4Init$108-Sstm8s_tim1$TIM1_OC4Init$106
      001D94 03                    4275 	.db	3
      001D95 0D                    4276 	.sleb128	13
      001D96 01                    4277 	.db	1
      001D97 09                    4278 	.db	9
      001D98 00 07                 4279 	.dw	Sstm8s_tim1$TIM1_OC4Init$109-Sstm8s_tim1$TIM1_OC4Init$108
      001D9A 03                    4280 	.db	3
      001D9B 02                    4281 	.sleb128	2
      001D9C 01                    4282 	.db	1
      001D9D 09                    4283 	.db	9
      001D9E 00 0C                 4284 	.dw	Sstm8s_tim1$TIM1_OC4Init$110-Sstm8s_tim1$TIM1_OC4Init$109
      001DA0 03                    4285 	.db	3
      001DA1 01                    4286 	.sleb128	1
      001DA2 01                    4287 	.db	1
      001DA3 09                    4288 	.db	9
      001DA4 00 0C                 4289 	.dw	Sstm8s_tim1$TIM1_OC4Init$111-Sstm8s_tim1$TIM1_OC4Init$110
      001DA6 03                    4290 	.db	3
      001DA7 03                    4291 	.sleb128	3
      001DA8 01                    4292 	.db	1
      001DA9 09                    4293 	.db	9
      001DAA 00 0C                 4294 	.dw	Sstm8s_tim1$TIM1_OC4Init$112-Sstm8s_tim1$TIM1_OC4Init$111
      001DAC 03                    4295 	.db	3
      001DAD 04                    4296 	.sleb128	4
      001DAE 01                    4297 	.db	1
      001DAF 09                    4298 	.db	9
      001DB0 00 04                 4299 	.dw	Sstm8s_tim1$TIM1_OC4Init$113-Sstm8s_tim1$TIM1_OC4Init$112
      001DB2 03                    4300 	.db	3
      001DB3 02                    4301 	.sleb128	2
      001DB4 01                    4302 	.db	1
      001DB5 09                    4303 	.db	9
      001DB6 00 09                 4304 	.dw	Sstm8s_tim1$TIM1_OC4Init$114-Sstm8s_tim1$TIM1_OC4Init$113
      001DB8 03                    4305 	.db	3
      001DB9 04                    4306 	.sleb128	4
      001DBA 01                    4307 	.db	1
      001DBB 09                    4308 	.db	9
      001DBC 00 07                 4309 	.dw	Sstm8s_tim1$TIM1_OC4Init$115-Sstm8s_tim1$TIM1_OC4Init$114
      001DBE 03                    4310 	.db	3
      001DBF 04                    4311 	.sleb128	4
      001DC0 01                    4312 	.db	1
      001DC1 09                    4313 	.db	9
      001DC2 00 08                 4314 	.dw	Sstm8s_tim1$TIM1_OC4Init$116-Sstm8s_tim1$TIM1_OC4Init$115
      001DC4 03                    4315 	.db	3
      001DC5 01                    4316 	.sleb128	1
      001DC6 01                    4317 	.db	1
      001DC7 09                    4318 	.db	9
      001DC8 00 06                 4319 	.dw	Sstm8s_tim1$TIM1_OC4Init$117-Sstm8s_tim1$TIM1_OC4Init$116
      001DCA 03                    4320 	.db	3
      001DCB 01                    4321 	.sleb128	1
      001DCC 01                    4322 	.db	1
      001DCD 09                    4323 	.db	9
      001DCE 00 09                 4324 	.dw	7+Sstm8s_tim1$TIM1_OC4Init$118-Sstm8s_tim1$TIM1_OC4Init$117
      001DD0 00                    4325 	.db	0
      001DD1 01                    4326 	.uleb128	1
      001DD2 01                    4327 	.db	1
      001DD3 00                    4328 	.db	0
      001DD4 05                    4329 	.uleb128	5
      001DD5 02                    4330 	.db	2
      001DD6 00 00 96 23           4331 	.dw	0,(Sstm8s_tim1$TIM1_BDTRConfig$120)
      001DDA 03                    4332 	.db	3
      001DDB 83 03                 4333 	.sleb128	387
      001DDD 01                    4334 	.db	1
      001DDE 09                    4335 	.db	9
      001DDF 00 0D                 4336 	.dw	Sstm8s_tim1$TIM1_BDTRConfig$122-Sstm8s_tim1$TIM1_BDTRConfig$120
      001DE1 03                    4337 	.db	3
      001DE2 0E                    4338 	.sleb128	14
      001DE3 01                    4339 	.db	1
      001DE4 09                    4340 	.db	9
      001DE5 00 06                 4341 	.dw	Sstm8s_tim1$TIM1_BDTRConfig$123-Sstm8s_tim1$TIM1_BDTRConfig$122
      001DE7 03                    4342 	.db	3
      001DE8 04                    4343 	.sleb128	4
      001DE9 01                    4344 	.db	1
      001DEA 09                    4345 	.db	9
      001DEB 00 06                 4346 	.dw	Sstm8s_tim1$TIM1_BDTRConfig$124-Sstm8s_tim1$TIM1_BDTRConfig$123
      001DED 03                    4347 	.db	3
      001DEE 01                    4348 	.sleb128	1
      001DEF 01                    4349 	.db	1
      001DF0 09                    4350 	.db	9
      001DF1 00 04                 4351 	.dw	Sstm8s_tim1$TIM1_BDTRConfig$125-Sstm8s_tim1$TIM1_BDTRConfig$124
      001DF3 03                    4352 	.db	3
      001DF4 01                    4353 	.sleb128	1
      001DF5 01                    4354 	.db	1
      001DF6 09                    4355 	.db	9
      001DF7 00 08                 4356 	.dw	Sstm8s_tim1$TIM1_BDTRConfig$126-Sstm8s_tim1$TIM1_BDTRConfig$125
      001DF9 03                    4357 	.db	3
      001DFA 01                    4358 	.sleb128	1
      001DFB 01                    4359 	.db	1
      001DFC 09                    4360 	.db	9
      001DFD 00 08                 4361 	.dw	7+Sstm8s_tim1$TIM1_BDTRConfig$127-Sstm8s_tim1$TIM1_BDTRConfig$126
      001DFF 00                    4362 	.db	0
      001E00 01                    4363 	.uleb128	1
      001E01 01                    4364 	.db	1
      001E02 00                    4365 	.db	0
      001E03 05                    4366 	.uleb128	5
      001E04 02                    4367 	.db	2
      001E05 00 00 96 50           4368 	.dw	0,(Sstm8s_tim1$TIM1_ICInit$129)
      001E09 03                    4369 	.db	3
      001E0A A6 03                 4370 	.sleb128	422
      001E0C 01                    4371 	.db	1
      001E0D 09                    4372 	.db	9
      001E0E 00 0C                 4373 	.dw	Sstm8s_tim1$TIM1_ICInit$131-Sstm8s_tim1$TIM1_ICInit$129
      001E10 03                    4374 	.db	3
      001E11 0D                    4375 	.sleb128	13
      001E12 01                    4376 	.db	1
      001E13 09                    4377 	.db	9
      001E14 00 04                 4378 	.dw	Sstm8s_tim1$TIM1_ICInit$132-Sstm8s_tim1$TIM1_ICInit$131
      001E16 03                    4379 	.db	3
      001E17 03                    4380 	.sleb128	3
      001E18 01                    4381 	.db	1
      001E19 09                    4382 	.db	9
      001E1A 00 0E                 4383 	.dw	Sstm8s_tim1$TIM1_ICInit$133-Sstm8s_tim1$TIM1_ICInit$132
      001E1C 03                    4384 	.db	3
      001E1D 04                    4385 	.sleb128	4
      001E1E 01                    4386 	.db	1
      001E1F 09                    4387 	.db	9
      001E20 00 09                 4388 	.dw	Sstm8s_tim1$TIM1_ICInit$134-Sstm8s_tim1$TIM1_ICInit$133
      001E22 03                    4389 	.db	3
      001E23 02                    4390 	.sleb128	2
      001E24 01                    4391 	.db	1
      001E25 09                    4392 	.db	9
      001E26 00 06                 4393 	.dw	Sstm8s_tim1$TIM1_ICInit$135-Sstm8s_tim1$TIM1_ICInit$134
      001E28 03                    4394 	.db	3
      001E29 03                    4395 	.sleb128	3
      001E2A 01                    4396 	.db	1
      001E2B 09                    4397 	.db	9
      001E2C 00 0E                 4398 	.dw	Sstm8s_tim1$TIM1_ICInit$136-Sstm8s_tim1$TIM1_ICInit$135
      001E2E 03                    4399 	.db	3
      001E2F 04                    4400 	.sleb128	4
      001E30 01                    4401 	.db	1
      001E31 09                    4402 	.db	9
      001E32 00 09                 4403 	.dw	Sstm8s_tim1$TIM1_ICInit$137-Sstm8s_tim1$TIM1_ICInit$136
      001E34 03                    4404 	.db	3
      001E35 02                    4405 	.sleb128	2
      001E36 01                    4406 	.db	1
      001E37 09                    4407 	.db	9
      001E38 00 06                 4408 	.dw	Sstm8s_tim1$TIM1_ICInit$138-Sstm8s_tim1$TIM1_ICInit$137
      001E3A 03                    4409 	.db	3
      001E3B 03                    4410 	.sleb128	3
      001E3C 01                    4411 	.db	1
      001E3D 09                    4412 	.db	9
      001E3E 00 0E                 4413 	.dw	Sstm8s_tim1$TIM1_ICInit$139-Sstm8s_tim1$TIM1_ICInit$138
      001E40 03                    4414 	.db	3
      001E41 04                    4415 	.sleb128	4
      001E42 01                    4416 	.db	1
      001E43 09                    4417 	.db	9
      001E44 00 09                 4418 	.dw	Sstm8s_tim1$TIM1_ICInit$140-Sstm8s_tim1$TIM1_ICInit$139
      001E46 03                    4419 	.db	3
      001E47 05                    4420 	.sleb128	5
      001E48 01                    4421 	.db	1
      001E49 09                    4422 	.db	9
      001E4A 00 0E                 4423 	.dw	Sstm8s_tim1$TIM1_ICInit$141-Sstm8s_tim1$TIM1_ICInit$140
      001E4C 03                    4424 	.db	3
      001E4D 04                    4425 	.sleb128	4
      001E4E 01                    4426 	.db	1
      001E4F 09                    4427 	.db	9
      001E50 00 07                 4428 	.dw	Sstm8s_tim1$TIM1_ICInit$142-Sstm8s_tim1$TIM1_ICInit$141
      001E52 03                    4429 	.db	3
      001E53 02                    4430 	.sleb128	2
      001E54 01                    4431 	.db	1
      001E55 09                    4432 	.db	9
      001E56 00 07                 4433 	.dw	7+Sstm8s_tim1$TIM1_ICInit$143-Sstm8s_tim1$TIM1_ICInit$142
      001E58 00                    4434 	.db	0
      001E59 01                    4435 	.uleb128	1
      001E5A 01                    4436 	.db	1
      001E5B 00                    4437 	.db	0
      001E5C 05                    4438 	.uleb128	5
      001E5D 02                    4439 	.db	2
      001E5E 00 00 96 CD           4440 	.dw	0,(Sstm8s_tim1$TIM1_PWMIConfig$145)
      001E62 03                    4441 	.db	3
      001E63 E7 03                 4442 	.sleb128	487
      001E65 01                    4443 	.db	1
      001E66 09                    4444 	.db	9
      001E67 00 0E                 4445 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$147-Sstm8s_tim1$TIM1_PWMIConfig$145
      001E69 03                    4446 	.db	3
      001E6A 10                    4447 	.sleb128	16
      001E6B 01                    4448 	.db	1
      001E6C 09                    4449 	.db	9
      001E6D 00 06                 4450 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$148-Sstm8s_tim1$TIM1_PWMIConfig$147
      001E6F 03                    4451 	.db	3
      001E70 02                    4452 	.sleb128	2
      001E71 01                    4453 	.db	1
      001E72 09                    4454 	.db	9
      001E73 00 06                 4455 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$149-Sstm8s_tim1$TIM1_PWMIConfig$148
      001E75 03                    4456 	.db	3
      001E76 04                    4457 	.sleb128	4
      001E77 01                    4458 	.db	1
      001E78 09                    4459 	.db	9
      001E79 00 02                 4460 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$150-Sstm8s_tim1$TIM1_PWMIConfig$149
      001E7B 03                    4461 	.db	3
      001E7C 04                    4462 	.sleb128	4
      001E7D 01                    4463 	.db	1
      001E7E 09                    4464 	.db	9
      001E7F 00 06                 4465 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$151-Sstm8s_tim1$TIM1_PWMIConfig$150
      001E81 03                    4466 	.db	3
      001E82 02                    4467 	.sleb128	2
      001E83 01                    4468 	.db	1
      001E84 09                    4469 	.db	9
      001E85 00 06                 4470 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$152-Sstm8s_tim1$TIM1_PWMIConfig$151
      001E87 03                    4471 	.db	3
      001E88 04                    4472 	.sleb128	4
      001E89 01                    4473 	.db	1
      001E8A 09                    4474 	.db	9
      001E8B 00 04                 4475 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$153-Sstm8s_tim1$TIM1_PWMIConfig$152
      001E8D 03                    4476 	.db	3
      001E8E 03                    4477 	.sleb128	3
      001E8F 01                    4478 	.db	1
      001E90 09                    4479 	.db	9
      001E91 00 04                 4480 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$154-Sstm8s_tim1$TIM1_PWMIConfig$153
      001E93 03                    4481 	.db	3
      001E94 03                    4482 	.sleb128	3
      001E95 01                    4483 	.db	1
      001E96 09                    4484 	.db	9
      001E97 00 0E                 4485 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$155-Sstm8s_tim1$TIM1_PWMIConfig$154
      001E99 03                    4486 	.db	3
      001E9A 04                    4487 	.sleb128	4
      001E9B 01                    4488 	.db	1
      001E9C 09                    4489 	.db	9
      001E9D 00 07                 4490 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$156-Sstm8s_tim1$TIM1_PWMIConfig$155
      001E9F 03                    4491 	.db	3
      001EA0 03                    4492 	.sleb128	3
      001EA1 01                    4493 	.db	1
      001EA2 09                    4494 	.db	9
      001EA3 00 0E                 4495 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$157-Sstm8s_tim1$TIM1_PWMIConfig$156
      001EA5 03                    4496 	.db	3
      001EA6 03                    4497 	.sleb128	3
      001EA7 01                    4498 	.db	1
      001EA8 09                    4499 	.db	9
      001EA9 00 09                 4500 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$158-Sstm8s_tim1$TIM1_PWMIConfig$157
      001EAB 03                    4501 	.db	3
      001EAC 05                    4502 	.sleb128	5
      001EAD 01                    4503 	.db	1
      001EAE 09                    4504 	.db	9
      001EAF 00 0E                 4505 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$159-Sstm8s_tim1$TIM1_PWMIConfig$158
      001EB1 03                    4506 	.db	3
      001EB2 04                    4507 	.sleb128	4
      001EB3 01                    4508 	.db	1
      001EB4 09                    4509 	.db	9
      001EB5 00 07                 4510 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$160-Sstm8s_tim1$TIM1_PWMIConfig$159
      001EB7 03                    4511 	.db	3
      001EB8 03                    4512 	.sleb128	3
      001EB9 01                    4513 	.db	1
      001EBA 09                    4514 	.db	9
      001EBB 00 0E                 4515 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$161-Sstm8s_tim1$TIM1_PWMIConfig$160
      001EBD 03                    4516 	.db	3
      001EBE 03                    4517 	.sleb128	3
      001EBF 01                    4518 	.db	1
      001EC0 09                    4519 	.db	9
      001EC1 00 07                 4520 	.dw	Sstm8s_tim1$TIM1_PWMIConfig$162-Sstm8s_tim1$TIM1_PWMIConfig$161
      001EC3 03                    4521 	.db	3
      001EC4 02                    4522 	.sleb128	2
      001EC5 01                    4523 	.db	1
      001EC6 09                    4524 	.db	9
      001EC7 00 09                 4525 	.dw	7+Sstm8s_tim1$TIM1_PWMIConfig$163-Sstm8s_tim1$TIM1_PWMIConfig$162
      001EC9 00                    4526 	.db	0
      001ECA 01                    4527 	.uleb128	1
      001ECB 01                    4528 	.db	1
      001ECC 00                    4529 	.db	0
      001ECD 05                    4530 	.uleb128	5
      001ECE 02                    4531 	.db	2
      001ECF 00 00 97 5C           4532 	.dw	0,(Sstm8s_tim1$TIM1_Cmd$165)
      001ED3 03                    4533 	.db	3
      001ED4 B0 04                 4534 	.sleb128	560
      001ED6 01                    4535 	.db	1
      001ED7 09                    4536 	.db	9
      001ED8 00 0C                 4537 	.dw	Sstm8s_tim1$TIM1_Cmd$167-Sstm8s_tim1$TIM1_Cmd$165
      001EDA 03                    4538 	.db	3
      001EDB 06                    4539 	.sleb128	6
      001EDC 01                    4540 	.db	1
      001EDD 09                    4541 	.db	9
      001EDE 00 04                 4542 	.dw	Sstm8s_tim1$TIM1_Cmd$168-Sstm8s_tim1$TIM1_Cmd$167
      001EE0 03                    4543 	.db	3
      001EE1 02                    4544 	.sleb128	2
      001EE2 01                    4545 	.db	1
      001EE3 09                    4546 	.db	9
      001EE4 00 06                 4547 	.dw	Sstm8s_tim1$TIM1_Cmd$169-Sstm8s_tim1$TIM1_Cmd$168
      001EE6 03                    4548 	.db	3
      001EE7 04                    4549 	.sleb128	4
      001EE8 01                    4550 	.db	1
      001EE9 09                    4551 	.db	9
      001EEA 00 04                 4552 	.dw	Sstm8s_tim1$TIM1_Cmd$170-Sstm8s_tim1$TIM1_Cmd$169
      001EEC 03                    4553 	.db	3
      001EED 02                    4554 	.sleb128	2
      001EEE 01                    4555 	.db	1
      001EEF 09                    4556 	.db	9
      001EF0 00 07                 4557 	.dw	7+Sstm8s_tim1$TIM1_Cmd$171-Sstm8s_tim1$TIM1_Cmd$170
      001EF2 00                    4558 	.db	0
      001EF3 01                    4559 	.uleb128	1
      001EF4 01                    4560 	.db	1
      001EF5 00                    4561 	.db	0
      001EF6 05                    4562 	.uleb128	5
      001EF7 02                    4563 	.db	2
      001EF8 00 00 97 7D           4564 	.dw	0,(Sstm8s_tim1$TIM1_CtrlPWMOutputs$173)
      001EFC 03                    4565 	.db	3
      001EFD C6 04                 4566 	.sleb128	582
      001EFF 01                    4567 	.db	1
      001F00 09                    4568 	.db	9
      001F01 00 0C                 4569 	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$175-Sstm8s_tim1$TIM1_CtrlPWMOutputs$173
      001F03 03                    4570 	.db	3
      001F04 07                    4571 	.sleb128	7
      001F05 01                    4572 	.db	1
      001F06 09                    4573 	.db	9
      001F07 00 04                 4574 	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$176-Sstm8s_tim1$TIM1_CtrlPWMOutputs$175
      001F09 03                    4575 	.db	3
      001F0A 02                    4576 	.sleb128	2
      001F0B 01                    4577 	.db	1
      001F0C 09                    4578 	.db	9
      001F0D 00 06                 4579 	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$177-Sstm8s_tim1$TIM1_CtrlPWMOutputs$176
      001F0F 03                    4580 	.db	3
      001F10 04                    4581 	.sleb128	4
      001F11 01                    4582 	.db	1
      001F12 09                    4583 	.db	9
      001F13 00 04                 4584 	.dw	Sstm8s_tim1$TIM1_CtrlPWMOutputs$178-Sstm8s_tim1$TIM1_CtrlPWMOutputs$177
      001F15 03                    4585 	.db	3
      001F16 02                    4586 	.sleb128	2
      001F17 01                    4587 	.db	1
      001F18 09                    4588 	.db	9
      001F19 00 07                 4589 	.dw	7+Sstm8s_tim1$TIM1_CtrlPWMOutputs$179-Sstm8s_tim1$TIM1_CtrlPWMOutputs$178
      001F1B 00                    4590 	.db	0
      001F1C 01                    4591 	.uleb128	1
      001F1D 01                    4592 	.db	1
      001F1E 00                    4593 	.db	0
      001F1F 05                    4594 	.uleb128	5
      001F20 02                    4595 	.db	2
      001F21 00 00 97 9E           4596 	.dw	0,(Sstm8s_tim1$TIM1_ITConfig$181)
      001F25 03                    4597 	.db	3
      001F26 E8 04                 4598 	.sleb128	616
      001F28 01                    4599 	.db	1
      001F29 09                    4600 	.db	9
      001F2A 00 0D                 4601 	.dw	Sstm8s_tim1$TIM1_ITConfig$183-Sstm8s_tim1$TIM1_ITConfig$181
      001F2C 03                    4602 	.db	3
      001F2D 06                    4603 	.sleb128	6
      001F2E 01                    4604 	.db	1
      001F2F 09                    4605 	.db	9
      001F30 00 04                 4606 	.dw	Sstm8s_tim1$TIM1_ITConfig$184-Sstm8s_tim1$TIM1_ITConfig$183
      001F32 03                    4607 	.db	3
      001F33 03                    4608 	.sleb128	3
      001F34 01                    4609 	.db	1
      001F35 09                    4610 	.db	9
      001F36 00 0C                 4611 	.dw	Sstm8s_tim1$TIM1_ITConfig$185-Sstm8s_tim1$TIM1_ITConfig$184
      001F38 03                    4612 	.db	3
      001F39 05                    4613 	.sleb128	5
      001F3A 01                    4614 	.db	1
      001F3B 09                    4615 	.db	9
      001F3C 00 0F                 4616 	.dw	Sstm8s_tim1$TIM1_ITConfig$186-Sstm8s_tim1$TIM1_ITConfig$185
      001F3E 03                    4617 	.db	3
      001F3F 02                    4618 	.sleb128	2
      001F40 01                    4619 	.db	1
      001F41 09                    4620 	.db	9
      001F42 00 08                 4621 	.dw	7+Sstm8s_tim1$TIM1_ITConfig$187-Sstm8s_tim1$TIM1_ITConfig$186
      001F44 00                    4622 	.db	0
      001F45 01                    4623 	.uleb128	1
      001F46 01                    4624 	.db	1
      001F47 00                    4625 	.db	0
      001F48 05                    4626 	.uleb128	5
      001F49 02                    4627 	.db	2
      001F4A 00 00 97 D2           4628 	.dw	0,(Sstm8s_tim1$TIM1_InternalClockConfig$189)
      001F4E 03                    4629 	.db	3
      001F4F FF 04                 4630 	.sleb128	639
      001F51 01                    4631 	.db	1
      001F52 09                    4632 	.db	9
      001F53 00 0C                 4633 	.dw	Sstm8s_tim1$TIM1_InternalClockConfig$191-Sstm8s_tim1$TIM1_InternalClockConfig$189
      001F55 03                    4634 	.db	3
      001F56 03                    4635 	.sleb128	3
      001F57 01                    4636 	.db	1
      001F58 09                    4637 	.db	9
      001F59 00 07                 4638 	.dw	Sstm8s_tim1$TIM1_InternalClockConfig$192-Sstm8s_tim1$TIM1_InternalClockConfig$191
      001F5B 03                    4639 	.db	3
      001F5C 01                    4640 	.sleb128	1
      001F5D 01                    4641 	.db	1
      001F5E 09                    4642 	.db	9
      001F5F 00 07                 4643 	.dw	7+Sstm8s_tim1$TIM1_InternalClockConfig$193-Sstm8s_tim1$TIM1_InternalClockConfig$192
      001F61 00                    4644 	.db	0
      001F62 01                    4645 	.uleb128	1
      001F63 01                    4646 	.db	1
      001F64 00                    4647 	.db	0
      001F65 05                    4648 	.uleb128	5
      001F66 02                    4649 	.db	2
      001F67 00 00 97 EC           4650 	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode1Config$195)
      001F6B 03                    4651 	.db	3
      001F6C 95 05                 4652 	.sleb128	661
      001F6E 01                    4653 	.db	1
      001F6F 09                    4654 	.db	9
      001F70 00 0C                 4655 	.dw	Sstm8s_tim1$TIM1_ETRClockMode1Config$197-Sstm8s_tim1$TIM1_ETRClockMode1Config$195
      001F72 03                    4656 	.db	3
      001F73 09                    4657 	.sleb128	9
      001F74 01                    4658 	.db	1
      001F75 09                    4659 	.db	9
      001F76 00 0E                 4660 	.dw	Sstm8s_tim1$TIM1_ETRClockMode1Config$198-Sstm8s_tim1$TIM1_ETRClockMode1Config$197
      001F78 03                    4661 	.db	3
      001F79 03                    4662 	.sleb128	3
      001F7A 01                    4663 	.db	1
      001F7B 09                    4664 	.db	9
      001F7C 00 0C                 4665 	.dw	Sstm8s_tim1$TIM1_ETRClockMode1Config$199-Sstm8s_tim1$TIM1_ETRClockMode1Config$198
      001F7E 03                    4666 	.db	3
      001F7F 02                    4667 	.sleb128	2
      001F80 01                    4668 	.db	1
      001F81 09                    4669 	.db	9
      001F82 00 07                 4670 	.dw	7+Sstm8s_tim1$TIM1_ETRClockMode1Config$200-Sstm8s_tim1$TIM1_ETRClockMode1Config$199
      001F84 00                    4671 	.db	0
      001F85 01                    4672 	.uleb128	1
      001F86 01                    4673 	.db	1
      001F87 00                    4674 	.db	0
      001F88 05                    4675 	.uleb128	5
      001F89 02                    4676 	.db	2
      001F8A 00 00 98 19           4677 	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode2Config$202)
      001F8E 03                    4678 	.db	3
      001F8F B5 05                 4679 	.sleb128	693
      001F91 01                    4680 	.db	1
      001F92 09                    4681 	.db	9
      001F93 00 0C                 4682 	.dw	Sstm8s_tim1$TIM1_ETRClockMode2Config$204-Sstm8s_tim1$TIM1_ETRClockMode2Config$202
      001F95 03                    4683 	.db	3
      001F96 09                    4684 	.sleb128	9
      001F97 01                    4685 	.db	1
      001F98 09                    4686 	.db	9
      001F99 00 0E                 4687 	.dw	Sstm8s_tim1$TIM1_ETRClockMode2Config$205-Sstm8s_tim1$TIM1_ETRClockMode2Config$204
      001F9B 03                    4688 	.db	3
      001F9C 03                    4689 	.sleb128	3
      001F9D 01                    4690 	.db	1
      001F9E 09                    4691 	.db	9
      001F9F 00 07                 4692 	.dw	Sstm8s_tim1$TIM1_ETRClockMode2Config$206-Sstm8s_tim1$TIM1_ETRClockMode2Config$205
      001FA1 03                    4693 	.db	3
      001FA2 01                    4694 	.sleb128	1
      001FA3 01                    4695 	.db	1
      001FA4 09                    4696 	.db	9
      001FA5 00 07                 4697 	.dw	7+Sstm8s_tim1$TIM1_ETRClockMode2Config$207-Sstm8s_tim1$TIM1_ETRClockMode2Config$206
      001FA7 00                    4698 	.db	0
      001FA8 01                    4699 	.uleb128	1
      001FA9 01                    4700 	.db	1
      001FAA 00                    4701 	.db	0
      001FAB 05                    4702 	.uleb128	5
      001FAC 02                    4703 	.db	2
      001FAD 00 00 98 41           4704 	.dw	0,(Sstm8s_tim1$TIM1_ETRConfig$209)
      001FB1 03                    4705 	.db	3
      001FB2 D4 05                 4706 	.sleb128	724
      001FB4 01                    4707 	.db	1
      001FB5 09                    4708 	.db	9
      001FB6 00 0D                 4709 	.dw	Sstm8s_tim1$TIM1_ETRConfig$211-Sstm8s_tim1$TIM1_ETRConfig$209
      001FB8 03                    4710 	.db	3
      001FB9 07                    4711 	.sleb128	7
      001FBA 01                    4712 	.db	1
      001FBB 09                    4713 	.db	9
      001FBC 00 0A                 4714 	.dw	Sstm8s_tim1$TIM1_ETRConfig$212-Sstm8s_tim1$TIM1_ETRConfig$211
      001FBE 03                    4715 	.db	3
      001FBF 01                    4716 	.sleb128	1
      001FC0 01                    4717 	.db	1
      001FC1 09                    4718 	.db	9
      001FC2 00 08                 4719 	.dw	Sstm8s_tim1$TIM1_ETRConfig$213-Sstm8s_tim1$TIM1_ETRConfig$212
      001FC4 03                    4720 	.db	3
      001FC5 01                    4721 	.sleb128	1
      001FC6 01                    4722 	.db	1
      001FC7 09                    4723 	.db	9
      001FC8 00 08                 4724 	.dw	7+Sstm8s_tim1$TIM1_ETRConfig$214-Sstm8s_tim1$TIM1_ETRConfig$213
      001FCA 00                    4725 	.db	0
      001FCB 01                    4726 	.uleb128	1
      001FCC 01                    4727 	.db	1
      001FCD 00                    4728 	.db	0
      001FCE 05                    4729 	.uleb128	5
      001FCF 02                    4730 	.db	2
      001FD0 00 00 98 68           4731 	.dw	0,(Sstm8s_tim1$TIM1_TIxExternalClockConfig$216)
      001FD4 03                    4732 	.db	3
      001FD5 EE 05                 4733 	.sleb128	750
      001FD7 01                    4734 	.db	1
      001FD8 09                    4735 	.db	9
      001FD9 00 0C                 4736 	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$218-Sstm8s_tim1$TIM1_TIxExternalClockConfig$216
      001FDB 03                    4737 	.db	3
      001FDC 0A                    4738 	.sleb128	10
      001FDD 01                    4739 	.db	1
      001FDE 09                    4740 	.db	9
      001FDF 00 06                 4741 	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$219-Sstm8s_tim1$TIM1_TIxExternalClockConfig$218
      001FE1 03                    4742 	.db	3
      001FE2 02                    4743 	.sleb128	2
      001FE3 01                    4744 	.db	1
      001FE4 09                    4745 	.db	9
      001FE5 00 0F                 4746 	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$220-Sstm8s_tim1$TIM1_TIxExternalClockConfig$219
      001FE7 03                    4747 	.db	3
      001FE8 04                    4748 	.sleb128	4
      001FE9 01                    4749 	.db	1
      001FEA 09                    4750 	.db	9
      001FEB 00 0D                 4751 	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$221-Sstm8s_tim1$TIM1_TIxExternalClockConfig$220
      001FED 03                    4752 	.db	3
      001FEE 04                    4753 	.sleb128	4
      001FEF 01                    4754 	.db	1
      001FF0 09                    4755 	.db	9
      001FF1 00 07                 4756 	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$222-Sstm8s_tim1$TIM1_TIxExternalClockConfig$221
      001FF3 03                    4757 	.db	3
      001FF4 03                    4758 	.sleb128	3
      001FF5 01                    4759 	.db	1
      001FF6 09                    4760 	.db	9
      001FF7 00 07                 4761 	.dw	Sstm8s_tim1$TIM1_TIxExternalClockConfig$223-Sstm8s_tim1$TIM1_TIxExternalClockConfig$222
      001FF9 03                    4762 	.db	3
      001FFA 01                    4763 	.sleb128	1
      001FFB 01                    4764 	.db	1
      001FFC 09                    4765 	.db	9
      001FFD 00 07                 4766 	.dw	7+Sstm8s_tim1$TIM1_TIxExternalClockConfig$224-Sstm8s_tim1$TIM1_TIxExternalClockConfig$223
      001FFF 00                    4767 	.db	0
      002000 01                    4768 	.uleb128	1
      002001 01                    4769 	.db	1
      002002 00                    4770 	.db	0
      002003 05                    4771 	.uleb128	5
      002004 02                    4772 	.db	2
      002005 00 00 98 AB           4773 	.dw	0,(Sstm8s_tim1$TIM1_SelectInputTrigger$226)
      002009 03                    4774 	.db	3
      00200A 92 06                 4775 	.sleb128	786
      00200C 01                    4776 	.db	1
      00200D 09                    4777 	.db	9
      00200E 00 0C                 4778 	.dw	Sstm8s_tim1$TIM1_SelectInputTrigger$228-Sstm8s_tim1$TIM1_SelectInputTrigger$226
      002010 03                    4779 	.db	3
      002011 06                    4780 	.sleb128	6
      002012 01                    4781 	.db	1
      002013 09                    4782 	.db	9
      002014 00 0C                 4783 	.dw	Sstm8s_tim1$TIM1_SelectInputTrigger$229-Sstm8s_tim1$TIM1_SelectInputTrigger$228
      002016 03                    4784 	.db	3
      002017 01                    4785 	.sleb128	1
      002018 01                    4786 	.db	1
      002019 09                    4787 	.db	9
      00201A 00 07                 4788 	.dw	7+Sstm8s_tim1$TIM1_SelectInputTrigger$230-Sstm8s_tim1$TIM1_SelectInputTrigger$229
      00201C 00                    4789 	.db	0
      00201D 01                    4790 	.uleb128	1
      00201E 01                    4791 	.db	1
      00201F 00                    4792 	.db	0
      002020 05                    4793 	.uleb128	5
      002021 02                    4794 	.db	2
      002022 00 00 98 CA           4795 	.dw	0,(Sstm8s_tim1$TIM1_UpdateDisableConfig$232)
      002026 03                    4796 	.db	3
      002027 A2 06                 4797 	.sleb128	802
      002029 01                    4798 	.db	1
      00202A 09                    4799 	.db	9
      00202B 00 0C                 4800 	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$234-Sstm8s_tim1$TIM1_UpdateDisableConfig$232
      00202D 03                    4801 	.db	3
      00202E 06                    4802 	.sleb128	6
      00202F 01                    4803 	.db	1
      002030 09                    4804 	.db	9
      002031 00 04                 4805 	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$235-Sstm8s_tim1$TIM1_UpdateDisableConfig$234
      002033 03                    4806 	.db	3
      002034 02                    4807 	.sleb128	2
      002035 01                    4808 	.db	1
      002036 09                    4809 	.db	9
      002037 00 09                 4810 	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$236-Sstm8s_tim1$TIM1_UpdateDisableConfig$235
      002039 03                    4811 	.db	3
      00203A 04                    4812 	.sleb128	4
      00203B 01                    4813 	.db	1
      00203C 09                    4814 	.db	9
      00203D 00 07                 4815 	.dw	Sstm8s_tim1$TIM1_UpdateDisableConfig$237-Sstm8s_tim1$TIM1_UpdateDisableConfig$236
      00203F 03                    4816 	.db	3
      002040 02                    4817 	.sleb128	2
      002041 01                    4818 	.db	1
      002042 09                    4819 	.db	9
      002043 00 07                 4820 	.dw	7+Sstm8s_tim1$TIM1_UpdateDisableConfig$238-Sstm8s_tim1$TIM1_UpdateDisableConfig$237
      002045 00                    4821 	.db	0
      002046 01                    4822 	.uleb128	1
      002047 01                    4823 	.db	1
      002048 00                    4824 	.db	0
      002049 05                    4825 	.uleb128	5
      00204A 02                    4826 	.db	2
      00204B 00 00 98 F1           4827 	.dw	0,(Sstm8s_tim1$TIM1_UpdateRequestConfig$240)
      00204F 03                    4828 	.db	3
      002050 BA 06                 4829 	.sleb128	826
      002052 01                    4830 	.db	1
      002053 09                    4831 	.db	9
      002054 00 0C                 4832 	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$242-Sstm8s_tim1$TIM1_UpdateRequestConfig$240
      002056 03                    4833 	.db	3
      002057 06                    4834 	.sleb128	6
      002058 01                    4835 	.db	1
      002059 09                    4836 	.db	9
      00205A 00 04                 4837 	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$243-Sstm8s_tim1$TIM1_UpdateRequestConfig$242
      00205C 03                    4838 	.db	3
      00205D 02                    4839 	.sleb128	2
      00205E 01                    4840 	.db	1
      00205F 09                    4841 	.db	9
      002060 00 09                 4842 	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$244-Sstm8s_tim1$TIM1_UpdateRequestConfig$243
      002062 03                    4843 	.db	3
      002063 04                    4844 	.sleb128	4
      002064 01                    4845 	.db	1
      002065 09                    4846 	.db	9
      002066 00 07                 4847 	.dw	Sstm8s_tim1$TIM1_UpdateRequestConfig$245-Sstm8s_tim1$TIM1_UpdateRequestConfig$244
      002068 03                    4848 	.db	3
      002069 02                    4849 	.sleb128	2
      00206A 01                    4850 	.db	1
      00206B 09                    4851 	.db	9
      00206C 00 07                 4852 	.dw	7+Sstm8s_tim1$TIM1_UpdateRequestConfig$246-Sstm8s_tim1$TIM1_UpdateRequestConfig$245
      00206E 00                    4853 	.db	0
      00206F 01                    4854 	.uleb128	1
      002070 01                    4855 	.db	1
      002071 00                    4856 	.db	0
      002072 05                    4857 	.uleb128	5
      002073 02                    4858 	.db	2
      002074 00 00 99 18           4859 	.dw	0,(Sstm8s_tim1$TIM1_SelectHallSensor$248)
      002078 03                    4860 	.db	3
      002079 D0 06                 4861 	.sleb128	848
      00207B 01                    4862 	.db	1
      00207C 09                    4863 	.db	9
      00207D 00 0C                 4864 	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$250-Sstm8s_tim1$TIM1_SelectHallSensor$248
      00207F 03                    4865 	.db	3
      002080 06                    4866 	.sleb128	6
      002081 01                    4867 	.db	1
      002082 09                    4868 	.db	9
      002083 00 04                 4869 	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$251-Sstm8s_tim1$TIM1_SelectHallSensor$250
      002085 03                    4870 	.db	3
      002086 02                    4871 	.sleb128	2
      002087 01                    4872 	.db	1
      002088 09                    4873 	.db	9
      002089 00 06                 4874 	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$252-Sstm8s_tim1$TIM1_SelectHallSensor$251
      00208B 03                    4875 	.db	3
      00208C 04                    4876 	.sleb128	4
      00208D 01                    4877 	.db	1
      00208E 09                    4878 	.db	9
      00208F 00 04                 4879 	.dw	Sstm8s_tim1$TIM1_SelectHallSensor$253-Sstm8s_tim1$TIM1_SelectHallSensor$252
      002091 03                    4880 	.db	3
      002092 02                    4881 	.sleb128	2
      002093 01                    4882 	.db	1
      002094 09                    4883 	.db	9
      002095 00 07                 4884 	.dw	7+Sstm8s_tim1$TIM1_SelectHallSensor$254-Sstm8s_tim1$TIM1_SelectHallSensor$253
      002097 00                    4885 	.db	0
      002098 01                    4886 	.uleb128	1
      002099 01                    4887 	.db	1
      00209A 00                    4888 	.db	0
      00209B 05                    4889 	.uleb128	5
      00209C 02                    4890 	.db	2
      00209D 00 00 99 39           4891 	.dw	0,(Sstm8s_tim1$TIM1_SelectOnePulseMode$256)
      0020A1 03                    4892 	.db	3
      0020A2 E8 06                 4893 	.sleb128	872
      0020A4 01                    4894 	.db	1
      0020A5 09                    4895 	.db	9
      0020A6 00 0C                 4896 	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$258-Sstm8s_tim1$TIM1_SelectOnePulseMode$256
      0020A8 03                    4897 	.db	3
      0020A9 06                    4898 	.sleb128	6
      0020AA 01                    4899 	.db	1
      0020AB 09                    4900 	.db	9
      0020AC 00 04                 4901 	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$259-Sstm8s_tim1$TIM1_SelectOnePulseMode$258
      0020AE 03                    4902 	.db	3
      0020AF 02                    4903 	.sleb128	2
      0020B0 01                    4904 	.db	1
      0020B1 09                    4905 	.db	9
      0020B2 00 09                 4906 	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$260-Sstm8s_tim1$TIM1_SelectOnePulseMode$259
      0020B4 03                    4907 	.db	3
      0020B5 04                    4908 	.sleb128	4
      0020B6 01                    4909 	.db	1
      0020B7 09                    4910 	.db	9
      0020B8 00 07                 4911 	.dw	Sstm8s_tim1$TIM1_SelectOnePulseMode$261-Sstm8s_tim1$TIM1_SelectOnePulseMode$260
      0020BA 03                    4912 	.db	3
      0020BB 03                    4913 	.sleb128	3
      0020BC 01                    4914 	.db	1
      0020BD 09                    4915 	.db	9
      0020BE 00 07                 4916 	.dw	7+Sstm8s_tim1$TIM1_SelectOnePulseMode$262-Sstm8s_tim1$TIM1_SelectOnePulseMode$261
      0020C0 00                    4917 	.db	0
      0020C1 01                    4918 	.uleb128	1
      0020C2 01                    4919 	.db	1
      0020C3 00                    4920 	.db	0
      0020C4 05                    4921 	.uleb128	5
      0020C5 02                    4922 	.db	2
      0020C6 00 00 99 60           4923 	.dw	0,(Sstm8s_tim1$TIM1_SelectOutputTrigger$264)
      0020CA 03                    4924 	.db	3
      0020CB 86 07                 4925 	.sleb128	902
      0020CD 01                    4926 	.db	1
      0020CE 09                    4927 	.db	9
      0020CF 00 0C                 4928 	.dw	Sstm8s_tim1$TIM1_SelectOutputTrigger$266-Sstm8s_tim1$TIM1_SelectOutputTrigger$264
      0020D1 03                    4929 	.db	3
      0020D2 06                    4930 	.sleb128	6
      0020D3 01                    4931 	.db	1
      0020D4 09                    4932 	.db	9
      0020D5 00 06                 4933 	.dw	Sstm8s_tim1$TIM1_SelectOutputTrigger$267-Sstm8s_tim1$TIM1_SelectOutputTrigger$266
      0020D7 03                    4934 	.db	3
      0020D8 01                    4935 	.sleb128	1
      0020D9 01                    4936 	.db	1
      0020DA 09                    4937 	.db	9
      0020DB 00 06                 4938 	.dw	Sstm8s_tim1$TIM1_SelectOutputTrigger$268-Sstm8s_tim1$TIM1_SelectOutputTrigger$267
      0020DD 03                    4939 	.db	3
      0020DE 01                    4940 	.sleb128	1
      0020DF 01                    4941 	.db	1
      0020E0 09                    4942 	.db	9
      0020E1 00 07                 4943 	.dw	7+Sstm8s_tim1$TIM1_SelectOutputTrigger$269-Sstm8s_tim1$TIM1_SelectOutputTrigger$268
      0020E3 00                    4944 	.db	0
      0020E4 01                    4945 	.uleb128	1
      0020E5 01                    4946 	.db	1
      0020E6 00                    4947 	.db	0
      0020E7 05                    4948 	.uleb128	5
      0020E8 02                    4949 	.db	2
      0020E9 00 00 99 7F           4950 	.dw	0,(Sstm8s_tim1$TIM1_SelectSlaveMode$271)
      0020ED 03                    4951 	.db	3
      0020EE 9A 07                 4952 	.sleb128	922
      0020F0 01                    4953 	.db	1
      0020F1 09                    4954 	.db	9
      0020F2 00 0C                 4955 	.dw	Sstm8s_tim1$TIM1_SelectSlaveMode$273-Sstm8s_tim1$TIM1_SelectSlaveMode$271
      0020F4 03                    4956 	.db	3
      0020F5 06                    4957 	.sleb128	6
      0020F6 01                    4958 	.db	1
      0020F7 09                    4959 	.db	9
      0020F8 00 06                 4960 	.dw	Sstm8s_tim1$TIM1_SelectSlaveMode$274-Sstm8s_tim1$TIM1_SelectSlaveMode$273
      0020FA 03                    4961 	.db	3
      0020FB 01                    4962 	.sleb128	1
      0020FC 01                    4963 	.db	1
      0020FD 09                    4964 	.db	9
      0020FE 00 06                 4965 	.dw	Sstm8s_tim1$TIM1_SelectSlaveMode$275-Sstm8s_tim1$TIM1_SelectSlaveMode$274
      002100 03                    4966 	.db	3
      002101 01                    4967 	.sleb128	1
      002102 01                    4968 	.db	1
      002103 09                    4969 	.db	9
      002104 00 07                 4970 	.dw	7+Sstm8s_tim1$TIM1_SelectSlaveMode$276-Sstm8s_tim1$TIM1_SelectSlaveMode$275
      002106 00                    4971 	.db	0
      002107 01                    4972 	.uleb128	1
      002108 01                    4973 	.db	1
      002109 00                    4974 	.db	0
      00210A 05                    4975 	.uleb128	5
      00210B 02                    4976 	.db	2
      00210C 00 00 99 9E           4977 	.dw	0,(Sstm8s_tim1$TIM1_SelectMasterSlaveMode$278)
      002110 03                    4978 	.db	3
      002111 AA 07                 4979 	.sleb128	938
      002113 01                    4980 	.db	1
      002114 09                    4981 	.db	9
      002115 00 0C                 4982 	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$280-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$278
      002117 03                    4983 	.db	3
      002118 06                    4984 	.sleb128	6
      002119 01                    4985 	.db	1
      00211A 09                    4986 	.db	9
      00211B 00 04                 4987 	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$281-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$280
      00211D 03                    4988 	.db	3
      00211E 02                    4989 	.sleb128	2
      00211F 01                    4990 	.db	1
      002120 09                    4991 	.db	9
      002121 00 06                 4992 	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$282-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$281
      002123 03                    4993 	.db	3
      002124 04                    4994 	.sleb128	4
      002125 01                    4995 	.db	1
      002126 09                    4996 	.db	9
      002127 00 04                 4997 	.dw	Sstm8s_tim1$TIM1_SelectMasterSlaveMode$283-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$282
      002129 03                    4998 	.db	3
      00212A 02                    4999 	.sleb128	2
      00212B 01                    5000 	.db	1
      00212C 09                    5001 	.db	9
      00212D 00 07                 5002 	.dw	7+Sstm8s_tim1$TIM1_SelectMasterSlaveMode$284-Sstm8s_tim1$TIM1_SelectMasterSlaveMode$283
      00212F 00                    5003 	.db	0
      002130 01                    5004 	.uleb128	1
      002131 01                    5005 	.db	1
      002132 00                    5006 	.db	0
      002133 05                    5007 	.uleb128	5
      002134 02                    5008 	.db	2
      002135 00 00 99 BF           5009 	.dw	0,(Sstm8s_tim1$TIM1_EncoderInterfaceConfig$286)
      002139 03                    5010 	.db	3
      00213A CE 07                 5011 	.sleb128	974
      00213C 01                    5012 	.db	1
      00213D 09                    5013 	.db	9
      00213E 00 0C                 5014 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$288-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$286
      002140 03                    5015 	.db	3
      002141 0A                    5016 	.sleb128	10
      002142 01                    5017 	.db	1
      002143 09                    5018 	.db	9
      002144 00 04                 5019 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$289-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$288
      002146 03                    5020 	.db	3
      002147 02                    5021 	.sleb128	2
      002148 01                    5022 	.db	1
      002149 09                    5023 	.db	9
      00214A 00 09                 5024 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$290-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$289
      00214C 03                    5025 	.db	3
      00214D 04                    5026 	.sleb128	4
      00214E 01                    5027 	.db	1
      00214F 09                    5028 	.db	9
      002150 00 07                 5029 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$291-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$290
      002152 03                    5030 	.db	3
      002153 03                    5031 	.sleb128	3
      002154 01                    5032 	.db	1
      002155 09                    5033 	.db	9
      002156 00 04                 5034 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$292-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$291
      002158 03                    5035 	.db	3
      002159 02                    5036 	.sleb128	2
      00215A 01                    5037 	.db	1
      00215B 09                    5038 	.db	9
      00215C 00 09                 5039 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$293-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$292
      00215E 03                    5040 	.db	3
      00215F 04                    5041 	.sleb128	4
      002160 01                    5042 	.db	1
      002161 09                    5043 	.db	9
      002162 00 07                 5044 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$294-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$293
      002164 03                    5045 	.db	3
      002165 03                    5046 	.sleb128	3
      002166 01                    5047 	.db	1
      002167 09                    5048 	.db	9
      002168 00 06                 5049 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$295-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$294
      00216A 03                    5050 	.db	3
      00216B 01                    5051 	.sleb128	1
      00216C 01                    5052 	.db	1
      00216D 09                    5053 	.db	9
      00216E 00 06                 5054 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$296-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$295
      002170 03                    5055 	.db	3
      002171 03                    5056 	.sleb128	3
      002172 01                    5057 	.db	1
      002173 09                    5058 	.db	9
      002174 00 0C                 5059 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$297-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$296
      002176 03                    5060 	.db	3
      002177 02                    5061 	.sleb128	2
      002178 01                    5062 	.db	1
      002179 09                    5063 	.db	9
      00217A 00 0C                 5064 	.dw	Sstm8s_tim1$TIM1_EncoderInterfaceConfig$298-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$297
      00217C 03                    5065 	.db	3
      00217D 02                    5066 	.sleb128	2
      00217E 01                    5067 	.db	1
      00217F 09                    5068 	.db	9
      002180 00 07                 5069 	.dw	7+Sstm8s_tim1$TIM1_EncoderInterfaceConfig$299-Sstm8s_tim1$TIM1_EncoderInterfaceConfig$298
      002182 00                    5070 	.db	0
      002183 01                    5071 	.uleb128	1
      002184 01                    5072 	.db	1
      002185 00                    5073 	.db	0
      002186 05                    5074 	.uleb128	5
      002187 02                    5075 	.db	2
      002188 00 00 9A 1E           5076 	.dw	0,(Sstm8s_tim1$TIM1_PrescalerConfig$301)
      00218C 03                    5077 	.db	3
      00218D FE 07                 5078 	.sleb128	1022
      00218F 01                    5079 	.db	1
      002190 09                    5080 	.db	9
      002191 00 0E                 5081 	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$303-Sstm8s_tim1$TIM1_PrescalerConfig$301
      002193 03                    5082 	.db	3
      002194 07                    5083 	.sleb128	7
      002195 01                    5084 	.db	1
      002196 09                    5085 	.db	9
      002197 00 08                 5086 	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$304-Sstm8s_tim1$TIM1_PrescalerConfig$303
      002199 03                    5087 	.db	3
      00219A 01                    5088 	.sleb128	1
      00219B 01                    5089 	.db	1
      00219C 09                    5090 	.db	9
      00219D 00 06                 5091 	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$305-Sstm8s_tim1$TIM1_PrescalerConfig$304
      00219F 03                    5092 	.db	3
      0021A0 03                    5093 	.sleb128	3
      0021A1 01                    5094 	.db	1
      0021A2 09                    5095 	.db	9
      0021A3 00 06                 5096 	.dw	Sstm8s_tim1$TIM1_PrescalerConfig$306-Sstm8s_tim1$TIM1_PrescalerConfig$305
      0021A5 03                    5097 	.db	3
      0021A6 01                    5098 	.sleb128	1
      0021A7 01                    5099 	.db	1
      0021A8 09                    5100 	.db	9
      0021A9 00 09                 5101 	.dw	7+Sstm8s_tim1$TIM1_PrescalerConfig$307-Sstm8s_tim1$TIM1_PrescalerConfig$306
      0021AB 00                    5102 	.db	0
      0021AC 01                    5103 	.uleb128	1
      0021AD 01                    5104 	.db	1
      0021AE 00                    5105 	.db	0
      0021AF 05                    5106 	.uleb128	5
      0021B0 02                    5107 	.db	2
      0021B1 00 00 9A 49           5108 	.dw	0,(Sstm8s_tim1$TIM1_CounterModeConfig$309)
      0021B5 03                    5109 	.db	3
      0021B6 97 08                 5110 	.sleb128	1047
      0021B8 01                    5111 	.db	1
      0021B9 09                    5112 	.db	9
      0021BA 00 0C                 5113 	.dw	Sstm8s_tim1$TIM1_CounterModeConfig$311-Sstm8s_tim1$TIM1_CounterModeConfig$309
      0021BC 03                    5114 	.db	3
      0021BD 07                    5115 	.sleb128	7
      0021BE 01                    5116 	.db	1
      0021BF 09                    5117 	.db	9
      0021C0 00 06                 5118 	.dw	Sstm8s_tim1$TIM1_CounterModeConfig$312-Sstm8s_tim1$TIM1_CounterModeConfig$311
      0021C2 03                    5119 	.db	3
      0021C3 01                    5120 	.sleb128	1
      0021C4 01                    5121 	.db	1
      0021C5 09                    5122 	.db	9
      0021C6 00 06                 5123 	.dw	Sstm8s_tim1$TIM1_CounterModeConfig$313-Sstm8s_tim1$TIM1_CounterModeConfig$312
      0021C8 03                    5124 	.db	3
      0021C9 01                    5125 	.sleb128	1
      0021CA 01                    5126 	.db	1
      0021CB 09                    5127 	.db	9
      0021CC 00 07                 5128 	.dw	7+Sstm8s_tim1$TIM1_CounterModeConfig$314-Sstm8s_tim1$TIM1_CounterModeConfig$313
      0021CE 00                    5129 	.db	0
      0021CF 01                    5130 	.uleb128	1
      0021D0 01                    5131 	.db	1
      0021D1 00                    5132 	.db	0
      0021D2 05                    5133 	.uleb128	5
      0021D3 02                    5134 	.db	2
      0021D4 00 00 9A 68           5135 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC1Config$316)
      0021D8 03                    5136 	.db	3
      0021D9 AA 08                 5137 	.sleb128	1066
      0021DB 01                    5138 	.db	1
      0021DC 09                    5139 	.db	9
      0021DD 00 0C                 5140 	.dw	Sstm8s_tim1$TIM1_ForcedOC1Config$318-Sstm8s_tim1$TIM1_ForcedOC1Config$316
      0021DF 03                    5141 	.db	3
      0021E0 06                    5142 	.sleb128	6
      0021E1 01                    5143 	.db	1
      0021E2 09                    5144 	.db	9
      0021E3 00 06                 5145 	.dw	Sstm8s_tim1$TIM1_ForcedOC1Config$319-Sstm8s_tim1$TIM1_ForcedOC1Config$318
      0021E5 03                    5146 	.db	3
      0021E6 01                    5147 	.sleb128	1
      0021E7 01                    5148 	.db	1
      0021E8 09                    5149 	.db	9
      0021E9 00 06                 5150 	.dw	Sstm8s_tim1$TIM1_ForcedOC1Config$320-Sstm8s_tim1$TIM1_ForcedOC1Config$319
      0021EB 03                    5151 	.db	3
      0021EC 01                    5152 	.sleb128	1
      0021ED 01                    5153 	.db	1
      0021EE 09                    5154 	.db	9
      0021EF 00 07                 5155 	.dw	7+Sstm8s_tim1$TIM1_ForcedOC1Config$321-Sstm8s_tim1$TIM1_ForcedOC1Config$320
      0021F1 00                    5156 	.db	0
      0021F2 01                    5157 	.uleb128	1
      0021F3 01                    5158 	.db	1
      0021F4 00                    5159 	.db	0
      0021F5 05                    5160 	.uleb128	5
      0021F6 02                    5161 	.db	2
      0021F7 00 00 9A 87           5162 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC2Config$323)
      0021FB 03                    5163 	.db	3
      0021FC BC 08                 5164 	.sleb128	1084
      0021FE 01                    5165 	.db	1
      0021FF 09                    5166 	.db	9
      002200 00 0C                 5167 	.dw	Sstm8s_tim1$TIM1_ForcedOC2Config$325-Sstm8s_tim1$TIM1_ForcedOC2Config$323
      002202 03                    5168 	.db	3
      002203 06                    5169 	.sleb128	6
      002204 01                    5170 	.db	1
      002205 09                    5171 	.db	9
      002206 00 06                 5172 	.dw	Sstm8s_tim1$TIM1_ForcedOC2Config$326-Sstm8s_tim1$TIM1_ForcedOC2Config$325
      002208 03                    5173 	.db	3
      002209 01                    5174 	.sleb128	1
      00220A 01                    5175 	.db	1
      00220B 09                    5176 	.db	9
      00220C 00 06                 5177 	.dw	Sstm8s_tim1$TIM1_ForcedOC2Config$327-Sstm8s_tim1$TIM1_ForcedOC2Config$326
      00220E 03                    5178 	.db	3
      00220F 01                    5179 	.sleb128	1
      002210 01                    5180 	.db	1
      002211 09                    5181 	.db	9
      002212 00 07                 5182 	.dw	7+Sstm8s_tim1$TIM1_ForcedOC2Config$328-Sstm8s_tim1$TIM1_ForcedOC2Config$327
      002214 00                    5183 	.db	0
      002215 01                    5184 	.uleb128	1
      002216 01                    5185 	.db	1
      002217 00                    5186 	.db	0
      002218 05                    5187 	.uleb128	5
      002219 02                    5188 	.db	2
      00221A 00 00 9A A6           5189 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC3Config$330)
      00221E 03                    5190 	.db	3
      00221F CF 08                 5191 	.sleb128	1103
      002221 01                    5192 	.db	1
      002222 09                    5193 	.db	9
      002223 00 0C                 5194 	.dw	Sstm8s_tim1$TIM1_ForcedOC3Config$332-Sstm8s_tim1$TIM1_ForcedOC3Config$330
      002225 03                    5195 	.db	3
      002226 06                    5196 	.sleb128	6
      002227 01                    5197 	.db	1
      002228 09                    5198 	.db	9
      002229 00 06                 5199 	.dw	Sstm8s_tim1$TIM1_ForcedOC3Config$333-Sstm8s_tim1$TIM1_ForcedOC3Config$332
      00222B 03                    5200 	.db	3
      00222C 01                    5201 	.sleb128	1
      00222D 01                    5202 	.db	1
      00222E 09                    5203 	.db	9
      00222F 00 06                 5204 	.dw	Sstm8s_tim1$TIM1_ForcedOC3Config$334-Sstm8s_tim1$TIM1_ForcedOC3Config$333
      002231 03                    5205 	.db	3
      002232 01                    5206 	.sleb128	1
      002233 01                    5207 	.db	1
      002234 09                    5208 	.db	9
      002235 00 07                 5209 	.dw	7+Sstm8s_tim1$TIM1_ForcedOC3Config$335-Sstm8s_tim1$TIM1_ForcedOC3Config$334
      002237 00                    5210 	.db	0
      002238 01                    5211 	.uleb128	1
      002239 01                    5212 	.db	1
      00223A 00                    5213 	.db	0
      00223B 05                    5214 	.uleb128	5
      00223C 02                    5215 	.db	2
      00223D 00 00 9A C5           5216 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC4Config$337)
      002241 03                    5217 	.db	3
      002242 E2 08                 5218 	.sleb128	1122
      002244 01                    5219 	.db	1
      002245 09                    5220 	.db	9
      002246 00 0C                 5221 	.dw	Sstm8s_tim1$TIM1_ForcedOC4Config$339-Sstm8s_tim1$TIM1_ForcedOC4Config$337
      002248 03                    5222 	.db	3
      002249 06                    5223 	.sleb128	6
      00224A 01                    5224 	.db	1
      00224B 09                    5225 	.db	9
      00224C 00 06                 5226 	.dw	Sstm8s_tim1$TIM1_ForcedOC4Config$340-Sstm8s_tim1$TIM1_ForcedOC4Config$339
      00224E 03                    5227 	.db	3
      00224F 01                    5228 	.sleb128	1
      002250 01                    5229 	.db	1
      002251 09                    5230 	.db	9
      002252 00 06                 5231 	.dw	Sstm8s_tim1$TIM1_ForcedOC4Config$341-Sstm8s_tim1$TIM1_ForcedOC4Config$340
      002254 03                    5232 	.db	3
      002255 01                    5233 	.sleb128	1
      002256 01                    5234 	.db	1
      002257 09                    5235 	.db	9
      002258 00 07                 5236 	.dw	7+Sstm8s_tim1$TIM1_ForcedOC4Config$342-Sstm8s_tim1$TIM1_ForcedOC4Config$341
      00225A 00                    5237 	.db	0
      00225B 01                    5238 	.uleb128	1
      00225C 01                    5239 	.db	1
      00225D 00                    5240 	.db	0
      00225E 05                    5241 	.uleb128	5
      00225F 02                    5242 	.db	2
      002260 00 00 9A E4           5243 	.dw	0,(Sstm8s_tim1$TIM1_ARRPreloadConfig$344)
      002264 03                    5244 	.db	3
      002265 F2 08                 5245 	.sleb128	1138
      002267 01                    5246 	.db	1
      002268 09                    5247 	.db	9
      002269 00 0C                 5248 	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$346-Sstm8s_tim1$TIM1_ARRPreloadConfig$344
      00226B 03                    5249 	.db	3
      00226C 06                    5250 	.sleb128	6
      00226D 01                    5251 	.db	1
      00226E 09                    5252 	.db	9
      00226F 00 04                 5253 	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$347-Sstm8s_tim1$TIM1_ARRPreloadConfig$346
      002271 03                    5254 	.db	3
      002272 02                    5255 	.sleb128	2
      002273 01                    5256 	.db	1
      002274 09                    5257 	.db	9
      002275 00 06                 5258 	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$348-Sstm8s_tim1$TIM1_ARRPreloadConfig$347
      002277 03                    5259 	.db	3
      002278 04                    5260 	.sleb128	4
      002279 01                    5261 	.db	1
      00227A 09                    5262 	.db	9
      00227B 00 04                 5263 	.dw	Sstm8s_tim1$TIM1_ARRPreloadConfig$349-Sstm8s_tim1$TIM1_ARRPreloadConfig$348
      00227D 03                    5264 	.db	3
      00227E 02                    5265 	.sleb128	2
      00227F 01                    5266 	.db	1
      002280 09                    5267 	.db	9
      002281 00 07                 5268 	.dw	7+Sstm8s_tim1$TIM1_ARRPreloadConfig$350-Sstm8s_tim1$TIM1_ARRPreloadConfig$349
      002283 00                    5269 	.db	0
      002284 01                    5270 	.uleb128	1
      002285 01                    5271 	.db	1
      002286 00                    5272 	.db	0
      002287 05                    5273 	.uleb128	5
      002288 02                    5274 	.db	2
      002289 00 00 9B 05           5275 	.dw	0,(Sstm8s_tim1$TIM1_SelectCOM$352)
      00228D 03                    5276 	.db	3
      00228E 88 09                 5277 	.sleb128	1160
      002290 01                    5278 	.db	1
      002291 09                    5279 	.db	9
      002292 00 0C                 5280 	.dw	Sstm8s_tim1$TIM1_SelectCOM$354-Sstm8s_tim1$TIM1_SelectCOM$352
      002294 03                    5281 	.db	3
      002295 06                    5282 	.sleb128	6
      002296 01                    5283 	.db	1
      002297 09                    5284 	.db	9
      002298 00 04                 5285 	.dw	Sstm8s_tim1$TIM1_SelectCOM$355-Sstm8s_tim1$TIM1_SelectCOM$354
      00229A 03                    5286 	.db	3
      00229B 02                    5287 	.sleb128	2
      00229C 01                    5288 	.db	1
      00229D 09                    5289 	.db	9
      00229E 00 09                 5290 	.dw	Sstm8s_tim1$TIM1_SelectCOM$356-Sstm8s_tim1$TIM1_SelectCOM$355
      0022A0 03                    5291 	.db	3
      0022A1 04                    5292 	.sleb128	4
      0022A2 01                    5293 	.db	1
      0022A3 09                    5294 	.db	9
      0022A4 00 07                 5295 	.dw	Sstm8s_tim1$TIM1_SelectCOM$357-Sstm8s_tim1$TIM1_SelectCOM$356
      0022A6 03                    5296 	.db	3
      0022A7 02                    5297 	.sleb128	2
      0022A8 01                    5298 	.db	1
      0022A9 09                    5299 	.db	9
      0022AA 00 07                 5300 	.dw	7+Sstm8s_tim1$TIM1_SelectCOM$358-Sstm8s_tim1$TIM1_SelectCOM$357
      0022AC 00                    5301 	.db	0
      0022AD 01                    5302 	.uleb128	1
      0022AE 01                    5303 	.db	1
      0022AF 00                    5304 	.db	0
      0022B0 05                    5305 	.uleb128	5
      0022B1 02                    5306 	.db	2
      0022B2 00 00 9B 2C           5307 	.dw	0,(Sstm8s_tim1$TIM1_CCPreloadControl$360)
      0022B6 03                    5308 	.db	3
      0022B7 9E 09                 5309 	.sleb128	1182
      0022B9 01                    5310 	.db	1
      0022BA 09                    5311 	.db	9
      0022BB 00 0C                 5312 	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$362-Sstm8s_tim1$TIM1_CCPreloadControl$360
      0022BD 03                    5313 	.db	3
      0022BE 06                    5314 	.sleb128	6
      0022BF 01                    5315 	.db	1
      0022C0 09                    5316 	.db	9
      0022C1 00 04                 5317 	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$363-Sstm8s_tim1$TIM1_CCPreloadControl$362
      0022C3 03                    5318 	.db	3
      0022C4 02                    5319 	.sleb128	2
      0022C5 01                    5320 	.db	1
      0022C6 09                    5321 	.db	9
      0022C7 00 06                 5322 	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$364-Sstm8s_tim1$TIM1_CCPreloadControl$363
      0022C9 03                    5323 	.db	3
      0022CA 04                    5324 	.sleb128	4
      0022CB 01                    5325 	.db	1
      0022CC 09                    5326 	.db	9
      0022CD 00 04                 5327 	.dw	Sstm8s_tim1$TIM1_CCPreloadControl$365-Sstm8s_tim1$TIM1_CCPreloadControl$364
      0022CF 03                    5328 	.db	3
      0022D0 02                    5329 	.sleb128	2
      0022D1 01                    5330 	.db	1
      0022D2 09                    5331 	.db	9
      0022D3 00 07                 5332 	.dw	7+Sstm8s_tim1$TIM1_CCPreloadControl$366-Sstm8s_tim1$TIM1_CCPreloadControl$365
      0022D5 00                    5333 	.db	0
      0022D6 01                    5334 	.uleb128	1
      0022D7 01                    5335 	.db	1
      0022D8 00                    5336 	.db	0
      0022D9 05                    5337 	.uleb128	5
      0022DA 02                    5338 	.db	2
      0022DB 00 00 9B 4D           5339 	.dw	0,(Sstm8s_tim1$TIM1_OC1PreloadConfig$368)
      0022DF 03                    5340 	.db	3
      0022E0 B4 09                 5341 	.sleb128	1204
      0022E2 01                    5342 	.db	1
      0022E3 09                    5343 	.db	9
      0022E4 00 0C                 5344 	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$370-Sstm8s_tim1$TIM1_OC1PreloadConfig$368
      0022E6 03                    5345 	.db	3
      0022E7 06                    5346 	.sleb128	6
      0022E8 01                    5347 	.db	1
      0022E9 09                    5348 	.db	9
      0022EA 00 04                 5349 	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$371-Sstm8s_tim1$TIM1_OC1PreloadConfig$370
      0022EC 03                    5350 	.db	3
      0022ED 02                    5351 	.sleb128	2
      0022EE 01                    5352 	.db	1
      0022EF 09                    5353 	.db	9
      0022F0 00 09                 5354 	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$372-Sstm8s_tim1$TIM1_OC1PreloadConfig$371
      0022F2 03                    5355 	.db	3
      0022F3 04                    5356 	.sleb128	4
      0022F4 01                    5357 	.db	1
      0022F5 09                    5358 	.db	9
      0022F6 00 07                 5359 	.dw	Sstm8s_tim1$TIM1_OC1PreloadConfig$373-Sstm8s_tim1$TIM1_OC1PreloadConfig$372
      0022F8 03                    5360 	.db	3
      0022F9 02                    5361 	.sleb128	2
      0022FA 01                    5362 	.db	1
      0022FB 09                    5363 	.db	9
      0022FC 00 07                 5364 	.dw	7+Sstm8s_tim1$TIM1_OC1PreloadConfig$374-Sstm8s_tim1$TIM1_OC1PreloadConfig$373
      0022FE 00                    5365 	.db	0
      0022FF 01                    5366 	.uleb128	1
      002300 01                    5367 	.db	1
      002301 00                    5368 	.db	0
      002302 05                    5369 	.uleb128	5
      002303 02                    5370 	.db	2
      002304 00 00 9B 74           5371 	.dw	0,(Sstm8s_tim1$TIM1_OC2PreloadConfig$376)
      002308 03                    5372 	.db	3
      002309 CA 09                 5373 	.sleb128	1226
      00230B 01                    5374 	.db	1
      00230C 09                    5375 	.db	9
      00230D 00 0C                 5376 	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$378-Sstm8s_tim1$TIM1_OC2PreloadConfig$376
      00230F 03                    5377 	.db	3
      002310 06                    5378 	.sleb128	6
      002311 01                    5379 	.db	1
      002312 09                    5380 	.db	9
      002313 00 04                 5381 	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$379-Sstm8s_tim1$TIM1_OC2PreloadConfig$378
      002315 03                    5382 	.db	3
      002316 02                    5383 	.sleb128	2
      002317 01                    5384 	.db	1
      002318 09                    5385 	.db	9
      002319 00 09                 5386 	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$380-Sstm8s_tim1$TIM1_OC2PreloadConfig$379
      00231B 03                    5387 	.db	3
      00231C 04                    5388 	.sleb128	4
      00231D 01                    5389 	.db	1
      00231E 09                    5390 	.db	9
      00231F 00 07                 5391 	.dw	Sstm8s_tim1$TIM1_OC2PreloadConfig$381-Sstm8s_tim1$TIM1_OC2PreloadConfig$380
      002321 03                    5392 	.db	3
      002322 02                    5393 	.sleb128	2
      002323 01                    5394 	.db	1
      002324 09                    5395 	.db	9
      002325 00 07                 5396 	.dw	7+Sstm8s_tim1$TIM1_OC2PreloadConfig$382-Sstm8s_tim1$TIM1_OC2PreloadConfig$381
      002327 00                    5397 	.db	0
      002328 01                    5398 	.uleb128	1
      002329 01                    5399 	.db	1
      00232A 00                    5400 	.db	0
      00232B 05                    5401 	.uleb128	5
      00232C 02                    5402 	.db	2
      00232D 00 00 9B 9B           5403 	.dw	0,(Sstm8s_tim1$TIM1_OC3PreloadConfig$384)
      002331 03                    5404 	.db	3
      002332 E0 09                 5405 	.sleb128	1248
      002334 01                    5406 	.db	1
      002335 09                    5407 	.db	9
      002336 00 0C                 5408 	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$386-Sstm8s_tim1$TIM1_OC3PreloadConfig$384
      002338 03                    5409 	.db	3
      002339 06                    5410 	.sleb128	6
      00233A 01                    5411 	.db	1
      00233B 09                    5412 	.db	9
      00233C 00 04                 5413 	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$387-Sstm8s_tim1$TIM1_OC3PreloadConfig$386
      00233E 03                    5414 	.db	3
      00233F 02                    5415 	.sleb128	2
      002340 01                    5416 	.db	1
      002341 09                    5417 	.db	9
      002342 00 09                 5418 	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$388-Sstm8s_tim1$TIM1_OC3PreloadConfig$387
      002344 03                    5419 	.db	3
      002345 04                    5420 	.sleb128	4
      002346 01                    5421 	.db	1
      002347 09                    5422 	.db	9
      002348 00 07                 5423 	.dw	Sstm8s_tim1$TIM1_OC3PreloadConfig$389-Sstm8s_tim1$TIM1_OC3PreloadConfig$388
      00234A 03                    5424 	.db	3
      00234B 02                    5425 	.sleb128	2
      00234C 01                    5426 	.db	1
      00234D 09                    5427 	.db	9
      00234E 00 07                 5428 	.dw	7+Sstm8s_tim1$TIM1_OC3PreloadConfig$390-Sstm8s_tim1$TIM1_OC3PreloadConfig$389
      002350 00                    5429 	.db	0
      002351 01                    5430 	.uleb128	1
      002352 01                    5431 	.db	1
      002353 00                    5432 	.db	0
      002354 05                    5433 	.uleb128	5
      002355 02                    5434 	.db	2
      002356 00 00 9B C2           5435 	.dw	0,(Sstm8s_tim1$TIM1_OC4PreloadConfig$392)
      00235A 03                    5436 	.db	3
      00235B F6 09                 5437 	.sleb128	1270
      00235D 01                    5438 	.db	1
      00235E 09                    5439 	.db	9
      00235F 00 0C                 5440 	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$394-Sstm8s_tim1$TIM1_OC4PreloadConfig$392
      002361 03                    5441 	.db	3
      002362 06                    5442 	.sleb128	6
      002363 01                    5443 	.db	1
      002364 09                    5444 	.db	9
      002365 00 04                 5445 	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$395-Sstm8s_tim1$TIM1_OC4PreloadConfig$394
      002367 03                    5446 	.db	3
      002368 02                    5447 	.sleb128	2
      002369 01                    5448 	.db	1
      00236A 09                    5449 	.db	9
      00236B 00 09                 5450 	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$396-Sstm8s_tim1$TIM1_OC4PreloadConfig$395
      00236D 03                    5451 	.db	3
      00236E 04                    5452 	.sleb128	4
      00236F 01                    5453 	.db	1
      002370 09                    5454 	.db	9
      002371 00 07                 5455 	.dw	Sstm8s_tim1$TIM1_OC4PreloadConfig$397-Sstm8s_tim1$TIM1_OC4PreloadConfig$396
      002373 03                    5456 	.db	3
      002374 02                    5457 	.sleb128	2
      002375 01                    5458 	.db	1
      002376 09                    5459 	.db	9
      002377 00 07                 5460 	.dw	7+Sstm8s_tim1$TIM1_OC4PreloadConfig$398-Sstm8s_tim1$TIM1_OC4PreloadConfig$397
      002379 00                    5461 	.db	0
      00237A 01                    5462 	.uleb128	1
      00237B 01                    5463 	.db	1
      00237C 00                    5464 	.db	0
      00237D 05                    5465 	.uleb128	5
      00237E 02                    5466 	.db	2
      00237F 00 00 9B E9           5467 	.dw	0,(Sstm8s_tim1$TIM1_OC1FastConfig$400)
      002383 03                    5468 	.db	3
      002384 8C 0A                 5469 	.sleb128	1292
      002386 01                    5470 	.db	1
      002387 09                    5471 	.db	9
      002388 00 0C                 5472 	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$402-Sstm8s_tim1$TIM1_OC1FastConfig$400
      00238A 03                    5473 	.db	3
      00238B 06                    5474 	.sleb128	6
      00238C 01                    5475 	.db	1
      00238D 09                    5476 	.db	9
      00238E 00 04                 5477 	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$403-Sstm8s_tim1$TIM1_OC1FastConfig$402
      002390 03                    5478 	.db	3
      002391 02                    5479 	.sleb128	2
      002392 01                    5480 	.db	1
      002393 09                    5481 	.db	9
      002394 00 09                 5482 	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$404-Sstm8s_tim1$TIM1_OC1FastConfig$403
      002396 03                    5483 	.db	3
      002397 04                    5484 	.sleb128	4
      002398 01                    5485 	.db	1
      002399 09                    5486 	.db	9
      00239A 00 07                 5487 	.dw	Sstm8s_tim1$TIM1_OC1FastConfig$405-Sstm8s_tim1$TIM1_OC1FastConfig$404
      00239C 03                    5488 	.db	3
      00239D 02                    5489 	.sleb128	2
      00239E 01                    5490 	.db	1
      00239F 09                    5491 	.db	9
      0023A0 00 07                 5492 	.dw	7+Sstm8s_tim1$TIM1_OC1FastConfig$406-Sstm8s_tim1$TIM1_OC1FastConfig$405
      0023A2 00                    5493 	.db	0
      0023A3 01                    5494 	.uleb128	1
      0023A4 01                    5495 	.db	1
      0023A5 00                    5496 	.db	0
      0023A6 05                    5497 	.uleb128	5
      0023A7 02                    5498 	.db	2
      0023A8 00 00 9C 10           5499 	.dw	0,(Sstm8s_tim1$TIM1_OC2FastConfig$408)
      0023AC 03                    5500 	.db	3
      0023AD A2 0A                 5501 	.sleb128	1314
      0023AF 01                    5502 	.db	1
      0023B0 09                    5503 	.db	9
      0023B1 00 0C                 5504 	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$410-Sstm8s_tim1$TIM1_OC2FastConfig$408
      0023B3 03                    5505 	.db	3
      0023B4 06                    5506 	.sleb128	6
      0023B5 01                    5507 	.db	1
      0023B6 09                    5508 	.db	9
      0023B7 00 04                 5509 	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$411-Sstm8s_tim1$TIM1_OC2FastConfig$410
      0023B9 03                    5510 	.db	3
      0023BA 02                    5511 	.sleb128	2
      0023BB 01                    5512 	.db	1
      0023BC 09                    5513 	.db	9
      0023BD 00 09                 5514 	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$412-Sstm8s_tim1$TIM1_OC2FastConfig$411
      0023BF 03                    5515 	.db	3
      0023C0 04                    5516 	.sleb128	4
      0023C1 01                    5517 	.db	1
      0023C2 09                    5518 	.db	9
      0023C3 00 07                 5519 	.dw	Sstm8s_tim1$TIM1_OC2FastConfig$413-Sstm8s_tim1$TIM1_OC2FastConfig$412
      0023C5 03                    5520 	.db	3
      0023C6 02                    5521 	.sleb128	2
      0023C7 01                    5522 	.db	1
      0023C8 09                    5523 	.db	9
      0023C9 00 07                 5524 	.dw	7+Sstm8s_tim1$TIM1_OC2FastConfig$414-Sstm8s_tim1$TIM1_OC2FastConfig$413
      0023CB 00                    5525 	.db	0
      0023CC 01                    5526 	.uleb128	1
      0023CD 01                    5527 	.db	1
      0023CE 00                    5528 	.db	0
      0023CF 05                    5529 	.uleb128	5
      0023D0 02                    5530 	.db	2
      0023D1 00 00 9C 37           5531 	.dw	0,(Sstm8s_tim1$TIM1_OC3FastConfig$416)
      0023D5 03                    5532 	.db	3
      0023D6 B8 0A                 5533 	.sleb128	1336
      0023D8 01                    5534 	.db	1
      0023D9 09                    5535 	.db	9
      0023DA 00 0C                 5536 	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$418-Sstm8s_tim1$TIM1_OC3FastConfig$416
      0023DC 03                    5537 	.db	3
      0023DD 06                    5538 	.sleb128	6
      0023DE 01                    5539 	.db	1
      0023DF 09                    5540 	.db	9
      0023E0 00 04                 5541 	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$419-Sstm8s_tim1$TIM1_OC3FastConfig$418
      0023E2 03                    5542 	.db	3
      0023E3 02                    5543 	.sleb128	2
      0023E4 01                    5544 	.db	1
      0023E5 09                    5545 	.db	9
      0023E6 00 09                 5546 	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$420-Sstm8s_tim1$TIM1_OC3FastConfig$419
      0023E8 03                    5547 	.db	3
      0023E9 04                    5548 	.sleb128	4
      0023EA 01                    5549 	.db	1
      0023EB 09                    5550 	.db	9
      0023EC 00 07                 5551 	.dw	Sstm8s_tim1$TIM1_OC3FastConfig$421-Sstm8s_tim1$TIM1_OC3FastConfig$420
      0023EE 03                    5552 	.db	3
      0023EF 02                    5553 	.sleb128	2
      0023F0 01                    5554 	.db	1
      0023F1 09                    5555 	.db	9
      0023F2 00 07                 5556 	.dw	7+Sstm8s_tim1$TIM1_OC3FastConfig$422-Sstm8s_tim1$TIM1_OC3FastConfig$421
      0023F4 00                    5557 	.db	0
      0023F5 01                    5558 	.uleb128	1
      0023F6 01                    5559 	.db	1
      0023F7 00                    5560 	.db	0
      0023F8 05                    5561 	.uleb128	5
      0023F9 02                    5562 	.db	2
      0023FA 00 00 9C 5E           5563 	.dw	0,(Sstm8s_tim1$TIM1_OC4FastConfig$424)
      0023FE 03                    5564 	.db	3
      0023FF CE 0A                 5565 	.sleb128	1358
      002401 01                    5566 	.db	1
      002402 09                    5567 	.db	9
      002403 00 0C                 5568 	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$426-Sstm8s_tim1$TIM1_OC4FastConfig$424
      002405 03                    5569 	.db	3
      002406 06                    5570 	.sleb128	6
      002407 01                    5571 	.db	1
      002408 09                    5572 	.db	9
      002409 00 04                 5573 	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$427-Sstm8s_tim1$TIM1_OC4FastConfig$426
      00240B 03                    5574 	.db	3
      00240C 02                    5575 	.sleb128	2
      00240D 01                    5576 	.db	1
      00240E 09                    5577 	.db	9
      00240F 00 09                 5578 	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$428-Sstm8s_tim1$TIM1_OC4FastConfig$427
      002411 03                    5579 	.db	3
      002412 04                    5580 	.sleb128	4
      002413 01                    5581 	.db	1
      002414 09                    5582 	.db	9
      002415 00 07                 5583 	.dw	Sstm8s_tim1$TIM1_OC4FastConfig$429-Sstm8s_tim1$TIM1_OC4FastConfig$428
      002417 03                    5584 	.db	3
      002418 02                    5585 	.sleb128	2
      002419 01                    5586 	.db	1
      00241A 09                    5587 	.db	9
      00241B 00 07                 5588 	.dw	7+Sstm8s_tim1$TIM1_OC4FastConfig$430-Sstm8s_tim1$TIM1_OC4FastConfig$429
      00241D 00                    5589 	.db	0
      00241E 01                    5590 	.uleb128	1
      00241F 01                    5591 	.db	1
      002420 00                    5592 	.db	0
      002421 05                    5593 	.uleb128	5
      002422 02                    5594 	.db	2
      002423 00 00 9C 85           5595 	.dw	0,(Sstm8s_tim1$TIM1_GenerateEvent$432)
      002427 03                    5596 	.db	3
      002428 EC 0A                 5597 	.sleb128	1388
      00242A 01                    5598 	.db	1
      00242B 09                    5599 	.db	9
      00242C 00 0C                 5600 	.dw	Sstm8s_tim1$TIM1_GenerateEvent$434-Sstm8s_tim1$TIM1_GenerateEvent$432
      00242E 03                    5601 	.db	3
      00242F 06                    5602 	.sleb128	6
      002430 01                    5603 	.db	1
      002431 09                    5604 	.db	9
      002432 00 06                 5605 	.dw	Sstm8s_tim1$TIM1_GenerateEvent$435-Sstm8s_tim1$TIM1_GenerateEvent$434
      002434 03                    5606 	.db	3
      002435 01                    5607 	.sleb128	1
      002436 01                    5608 	.db	1
      002437 09                    5609 	.db	9
      002438 00 07                 5610 	.dw	7+Sstm8s_tim1$TIM1_GenerateEvent$436-Sstm8s_tim1$TIM1_GenerateEvent$435
      00243A 00                    5611 	.db	0
      00243B 01                    5612 	.uleb128	1
      00243C 01                    5613 	.db	1
      00243D 00                    5614 	.db	0
      00243E 05                    5615 	.uleb128	5
      00243F 02                    5616 	.db	2
      002440 00 00 9C 9E           5617 	.dw	0,(Sstm8s_tim1$TIM1_OC1PolarityConfig$438)
      002444 03                    5618 	.db	3
      002445 FD 0A                 5619 	.sleb128	1405
      002447 01                    5620 	.db	1
      002448 09                    5621 	.db	9
      002449 00 0C                 5622 	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$440-Sstm8s_tim1$TIM1_OC1PolarityConfig$438
      00244B 03                    5623 	.db	3
      00244C 06                    5624 	.sleb128	6
      00244D 01                    5625 	.db	1
      00244E 09                    5626 	.db	9
      00244F 00 04                 5627 	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$441-Sstm8s_tim1$TIM1_OC1PolarityConfig$440
      002451 03                    5628 	.db	3
      002452 02                    5629 	.sleb128	2
      002453 01                    5630 	.db	1
      002454 09                    5631 	.db	9
      002455 00 09                 5632 	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$442-Sstm8s_tim1$TIM1_OC1PolarityConfig$441
      002457 03                    5633 	.db	3
      002458 04                    5634 	.sleb128	4
      002459 01                    5635 	.db	1
      00245A 09                    5636 	.db	9
      00245B 00 07                 5637 	.dw	Sstm8s_tim1$TIM1_OC1PolarityConfig$443-Sstm8s_tim1$TIM1_OC1PolarityConfig$442
      00245D 03                    5638 	.db	3
      00245E 02                    5639 	.sleb128	2
      00245F 01                    5640 	.db	1
      002460 09                    5641 	.db	9
      002461 00 07                 5642 	.dw	7+Sstm8s_tim1$TIM1_OC1PolarityConfig$444-Sstm8s_tim1$TIM1_OC1PolarityConfig$443
      002463 00                    5643 	.db	0
      002464 01                    5644 	.uleb128	1
      002465 01                    5645 	.db	1
      002466 00                    5646 	.db	0
      002467 05                    5647 	.uleb128	5
      002468 02                    5648 	.db	2
      002469 00 00 9C C5           5649 	.dw	0,(Sstm8s_tim1$TIM1_OC1NPolarityConfig$446)
      00246D 03                    5650 	.db	3
      00246E 95 0B                 5651 	.sleb128	1429
      002470 01                    5652 	.db	1
      002471 09                    5653 	.db	9
      002472 00 0C                 5654 	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$448-Sstm8s_tim1$TIM1_OC1NPolarityConfig$446
      002474 03                    5655 	.db	3
      002475 06                    5656 	.sleb128	6
      002476 01                    5657 	.db	1
      002477 09                    5658 	.db	9
      002478 00 04                 5659 	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$449-Sstm8s_tim1$TIM1_OC1NPolarityConfig$448
      00247A 03                    5660 	.db	3
      00247B 02                    5661 	.sleb128	2
      00247C 01                    5662 	.db	1
      00247D 09                    5663 	.db	9
      00247E 00 09                 5664 	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$450-Sstm8s_tim1$TIM1_OC1NPolarityConfig$449
      002480 03                    5665 	.db	3
      002481 04                    5666 	.sleb128	4
      002482 01                    5667 	.db	1
      002483 09                    5668 	.db	9
      002484 00 07                 5669 	.dw	Sstm8s_tim1$TIM1_OC1NPolarityConfig$451-Sstm8s_tim1$TIM1_OC1NPolarityConfig$450
      002486 03                    5670 	.db	3
      002487 02                    5671 	.sleb128	2
      002488 01                    5672 	.db	1
      002489 09                    5673 	.db	9
      00248A 00 07                 5674 	.dw	7+Sstm8s_tim1$TIM1_OC1NPolarityConfig$452-Sstm8s_tim1$TIM1_OC1NPolarityConfig$451
      00248C 00                    5675 	.db	0
      00248D 01                    5676 	.uleb128	1
      00248E 01                    5677 	.db	1
      00248F 00                    5678 	.db	0
      002490 05                    5679 	.uleb128	5
      002491 02                    5680 	.db	2
      002492 00 00 9C EC           5681 	.dw	0,(Sstm8s_tim1$TIM1_OC2PolarityConfig$454)
      002496 03                    5682 	.db	3
      002497 AD 0B                 5683 	.sleb128	1453
      002499 01                    5684 	.db	1
      00249A 09                    5685 	.db	9
      00249B 00 0C                 5686 	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$456-Sstm8s_tim1$TIM1_OC2PolarityConfig$454
      00249D 03                    5687 	.db	3
      00249E 06                    5688 	.sleb128	6
      00249F 01                    5689 	.db	1
      0024A0 09                    5690 	.db	9
      0024A1 00 04                 5691 	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$457-Sstm8s_tim1$TIM1_OC2PolarityConfig$456
      0024A3 03                    5692 	.db	3
      0024A4 02                    5693 	.sleb128	2
      0024A5 01                    5694 	.db	1
      0024A6 09                    5695 	.db	9
      0024A7 00 09                 5696 	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$458-Sstm8s_tim1$TIM1_OC2PolarityConfig$457
      0024A9 03                    5697 	.db	3
      0024AA 04                    5698 	.sleb128	4
      0024AB 01                    5699 	.db	1
      0024AC 09                    5700 	.db	9
      0024AD 00 07                 5701 	.dw	Sstm8s_tim1$TIM1_OC2PolarityConfig$459-Sstm8s_tim1$TIM1_OC2PolarityConfig$458
      0024AF 03                    5702 	.db	3
      0024B0 02                    5703 	.sleb128	2
      0024B1 01                    5704 	.db	1
      0024B2 09                    5705 	.db	9
      0024B3 00 07                 5706 	.dw	7+Sstm8s_tim1$TIM1_OC2PolarityConfig$460-Sstm8s_tim1$TIM1_OC2PolarityConfig$459
      0024B5 00                    5707 	.db	0
      0024B6 01                    5708 	.uleb128	1
      0024B7 01                    5709 	.db	1
      0024B8 00                    5710 	.db	0
      0024B9 05                    5711 	.uleb128	5
      0024BA 02                    5712 	.db	2
      0024BB 00 00 9D 13           5713 	.dw	0,(Sstm8s_tim1$TIM1_OC2NPolarityConfig$462)
      0024BF 03                    5714 	.db	3
      0024C0 C5 0B                 5715 	.sleb128	1477
      0024C2 01                    5716 	.db	1
      0024C3 09                    5717 	.db	9
      0024C4 00 0C                 5718 	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$464-Sstm8s_tim1$TIM1_OC2NPolarityConfig$462
      0024C6 03                    5719 	.db	3
      0024C7 06                    5720 	.sleb128	6
      0024C8 01                    5721 	.db	1
      0024C9 09                    5722 	.db	9
      0024CA 00 04                 5723 	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$465-Sstm8s_tim1$TIM1_OC2NPolarityConfig$464
      0024CC 03                    5724 	.db	3
      0024CD 02                    5725 	.sleb128	2
      0024CE 01                    5726 	.db	1
      0024CF 09                    5727 	.db	9
      0024D0 00 06                 5728 	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$466-Sstm8s_tim1$TIM1_OC2NPolarityConfig$465
      0024D2 03                    5729 	.db	3
      0024D3 04                    5730 	.sleb128	4
      0024D4 01                    5731 	.db	1
      0024D5 09                    5732 	.db	9
      0024D6 00 04                 5733 	.dw	Sstm8s_tim1$TIM1_OC2NPolarityConfig$467-Sstm8s_tim1$TIM1_OC2NPolarityConfig$466
      0024D8 03                    5734 	.db	3
      0024D9 02                    5735 	.sleb128	2
      0024DA 01                    5736 	.db	1
      0024DB 09                    5737 	.db	9
      0024DC 00 07                 5738 	.dw	7+Sstm8s_tim1$TIM1_OC2NPolarityConfig$468-Sstm8s_tim1$TIM1_OC2NPolarityConfig$467
      0024DE 00                    5739 	.db	0
      0024DF 01                    5740 	.uleb128	1
      0024E0 01                    5741 	.db	1
      0024E1 00                    5742 	.db	0
      0024E2 05                    5743 	.uleb128	5
      0024E3 02                    5744 	.db	2
      0024E4 00 00 9D 34           5745 	.dw	0,(Sstm8s_tim1$TIM1_OC3PolarityConfig$470)
      0024E8 03                    5746 	.db	3
      0024E9 DD 0B                 5747 	.sleb128	1501
      0024EB 01                    5748 	.db	1
      0024EC 09                    5749 	.db	9
      0024ED 00 0C                 5750 	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$472-Sstm8s_tim1$TIM1_OC3PolarityConfig$470
      0024EF 03                    5751 	.db	3
      0024F0 06                    5752 	.sleb128	6
      0024F1 01                    5753 	.db	1
      0024F2 09                    5754 	.db	9
      0024F3 00 04                 5755 	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$473-Sstm8s_tim1$TIM1_OC3PolarityConfig$472
      0024F5 03                    5756 	.db	3
      0024F6 02                    5757 	.sleb128	2
      0024F7 01                    5758 	.db	1
      0024F8 09                    5759 	.db	9
      0024F9 00 09                 5760 	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$474-Sstm8s_tim1$TIM1_OC3PolarityConfig$473
      0024FB 03                    5761 	.db	3
      0024FC 04                    5762 	.sleb128	4
      0024FD 01                    5763 	.db	1
      0024FE 09                    5764 	.db	9
      0024FF 00 07                 5765 	.dw	Sstm8s_tim1$TIM1_OC3PolarityConfig$475-Sstm8s_tim1$TIM1_OC3PolarityConfig$474
      002501 03                    5766 	.db	3
      002502 02                    5767 	.sleb128	2
      002503 01                    5768 	.db	1
      002504 09                    5769 	.db	9
      002505 00 07                 5770 	.dw	7+Sstm8s_tim1$TIM1_OC3PolarityConfig$476-Sstm8s_tim1$TIM1_OC3PolarityConfig$475
      002507 00                    5771 	.db	0
      002508 01                    5772 	.uleb128	1
      002509 01                    5773 	.db	1
      00250A 00                    5774 	.db	0
      00250B 05                    5775 	.uleb128	5
      00250C 02                    5776 	.db	2
      00250D 00 00 9D 5B           5777 	.dw	0,(Sstm8s_tim1$TIM1_OC3NPolarityConfig$478)
      002511 03                    5778 	.db	3
      002512 F6 0B                 5779 	.sleb128	1526
      002514 01                    5780 	.db	1
      002515 09                    5781 	.db	9
      002516 00 0C                 5782 	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$480-Sstm8s_tim1$TIM1_OC3NPolarityConfig$478
      002518 03                    5783 	.db	3
      002519 06                    5784 	.sleb128	6
      00251A 01                    5785 	.db	1
      00251B 09                    5786 	.db	9
      00251C 00 04                 5787 	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$481-Sstm8s_tim1$TIM1_OC3NPolarityConfig$480
      00251E 03                    5788 	.db	3
      00251F 02                    5789 	.sleb128	2
      002520 01                    5790 	.db	1
      002521 09                    5791 	.db	9
      002522 00 09                 5792 	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$482-Sstm8s_tim1$TIM1_OC3NPolarityConfig$481
      002524 03                    5793 	.db	3
      002525 04                    5794 	.sleb128	4
      002526 01                    5795 	.db	1
      002527 09                    5796 	.db	9
      002528 00 07                 5797 	.dw	Sstm8s_tim1$TIM1_OC3NPolarityConfig$483-Sstm8s_tim1$TIM1_OC3NPolarityConfig$482
      00252A 03                    5798 	.db	3
      00252B 02                    5799 	.sleb128	2
      00252C 01                    5800 	.db	1
      00252D 09                    5801 	.db	9
      00252E 00 07                 5802 	.dw	7+Sstm8s_tim1$TIM1_OC3NPolarityConfig$484-Sstm8s_tim1$TIM1_OC3NPolarityConfig$483
      002530 00                    5803 	.db	0
      002531 01                    5804 	.uleb128	1
      002532 01                    5805 	.db	1
      002533 00                    5806 	.db	0
      002534 05                    5807 	.uleb128	5
      002535 02                    5808 	.db	2
      002536 00 00 9D 82           5809 	.dw	0,(Sstm8s_tim1$TIM1_OC4PolarityConfig$486)
      00253A 03                    5810 	.db	3
      00253B 8E 0C                 5811 	.sleb128	1550
      00253D 01                    5812 	.db	1
      00253E 09                    5813 	.db	9
      00253F 00 0C                 5814 	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$488-Sstm8s_tim1$TIM1_OC4PolarityConfig$486
      002541 03                    5815 	.db	3
      002542 06                    5816 	.sleb128	6
      002543 01                    5817 	.db	1
      002544 09                    5818 	.db	9
      002545 00 04                 5819 	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$489-Sstm8s_tim1$TIM1_OC4PolarityConfig$488
      002547 03                    5820 	.db	3
      002548 02                    5821 	.sleb128	2
      002549 01                    5822 	.db	1
      00254A 09                    5823 	.db	9
      00254B 00 09                 5824 	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$490-Sstm8s_tim1$TIM1_OC4PolarityConfig$489
      00254D 03                    5825 	.db	3
      00254E 04                    5826 	.sleb128	4
      00254F 01                    5827 	.db	1
      002550 09                    5828 	.db	9
      002551 00 07                 5829 	.dw	Sstm8s_tim1$TIM1_OC4PolarityConfig$491-Sstm8s_tim1$TIM1_OC4PolarityConfig$490
      002553 03                    5830 	.db	3
      002554 02                    5831 	.sleb128	2
      002555 01                    5832 	.db	1
      002556 09                    5833 	.db	9
      002557 00 07                 5834 	.dw	7+Sstm8s_tim1$TIM1_OC4PolarityConfig$492-Sstm8s_tim1$TIM1_OC4PolarityConfig$491
      002559 00                    5835 	.db	0
      00255A 01                    5836 	.uleb128	1
      00255B 01                    5837 	.db	1
      00255C 00                    5838 	.db	0
      00255D 05                    5839 	.uleb128	5
      00255E 02                    5840 	.db	2
      00255F 00 00 9D A9           5841 	.dw	0,(Sstm8s_tim1$TIM1_CCxCmd$494)
      002563 03                    5842 	.db	3
      002564 AA 0C                 5843 	.sleb128	1578
      002566 01                    5844 	.db	1
      002567 09                    5845 	.db	9
      002568 00 0C                 5846 	.dw	Sstm8s_tim1$TIM1_CCxCmd$496-Sstm8s_tim1$TIM1_CCxCmd$494
      00256A 03                    5847 	.db	3
      00256B 06                    5848 	.sleb128	6
      00256C 01                    5849 	.db	1
      00256D 09                    5850 	.db	9
      00256E 00 04                 5851 	.dw	Sstm8s_tim1$TIM1_CCxCmd$497-Sstm8s_tim1$TIM1_CCxCmd$496
      002570 03                    5852 	.db	3
      002571 03                    5853 	.sleb128	3
      002572 01                    5854 	.db	1
      002573 09                    5855 	.db	9
      002574 00 04                 5856 	.dw	Sstm8s_tim1$TIM1_CCxCmd$498-Sstm8s_tim1$TIM1_CCxCmd$497
      002576 03                    5857 	.db	3
      002577 02                    5858 	.sleb128	2
      002578 01                    5859 	.db	1
      002579 09                    5860 	.db	9
      00257A 00 07                 5861 	.dw	Sstm8s_tim1$TIM1_CCxCmd$499-Sstm8s_tim1$TIM1_CCxCmd$498
      00257C 03                    5862 	.db	3
      00257D 04                    5863 	.sleb128	4
      00257E 01                    5864 	.db	1
      00257F 09                    5865 	.db	9
      002580 00 07                 5866 	.dw	Sstm8s_tim1$TIM1_CCxCmd$500-Sstm8s_tim1$TIM1_CCxCmd$499
      002582 03                    5867 	.db	3
      002583 04                    5868 	.sleb128	4
      002584 01                    5869 	.db	1
      002585 09                    5870 	.db	9
      002586 00 06                 5871 	.dw	Sstm8s_tim1$TIM1_CCxCmd$501-Sstm8s_tim1$TIM1_CCxCmd$500
      002588 03                    5872 	.db	3
      002589 03                    5873 	.sleb128	3
      00258A 01                    5874 	.db	1
      00258B 09                    5875 	.db	9
      00258C 00 04                 5876 	.dw	Sstm8s_tim1$TIM1_CCxCmd$502-Sstm8s_tim1$TIM1_CCxCmd$501
      00258E 03                    5877 	.db	3
      00258F 02                    5878 	.sleb128	2
      002590 01                    5879 	.db	1
      002591 09                    5880 	.db	9
      002592 00 09                 5881 	.dw	Sstm8s_tim1$TIM1_CCxCmd$503-Sstm8s_tim1$TIM1_CCxCmd$502
      002594 03                    5882 	.db	3
      002595 04                    5883 	.sleb128	4
      002596 01                    5884 	.db	1
      002597 09                    5885 	.db	9
      002598 00 09                 5886 	.dw	Sstm8s_tim1$TIM1_CCxCmd$504-Sstm8s_tim1$TIM1_CCxCmd$503
      00259A 03                    5887 	.db	3
      00259B 03                    5888 	.sleb128	3
      00259C 01                    5889 	.db	1
      00259D 09                    5890 	.db	9
      00259E 00 06                 5891 	.dw	Sstm8s_tim1$TIM1_CCxCmd$505-Sstm8s_tim1$TIM1_CCxCmd$504
      0025A0 03                    5892 	.db	3
      0025A1 03                    5893 	.sleb128	3
      0025A2 01                    5894 	.db	1
      0025A3 09                    5895 	.db	9
      0025A4 00 04                 5896 	.dw	Sstm8s_tim1$TIM1_CCxCmd$506-Sstm8s_tim1$TIM1_CCxCmd$505
      0025A6 03                    5897 	.db	3
      0025A7 02                    5898 	.sleb128	2
      0025A8 01                    5899 	.db	1
      0025A9 09                    5900 	.db	9
      0025AA 00 06                 5901 	.dw	Sstm8s_tim1$TIM1_CCxCmd$507-Sstm8s_tim1$TIM1_CCxCmd$506
      0025AC 03                    5902 	.db	3
      0025AD 04                    5903 	.sleb128	4
      0025AE 01                    5904 	.db	1
      0025AF 09                    5905 	.db	9
      0025B0 00 06                 5906 	.dw	Sstm8s_tim1$TIM1_CCxCmd$508-Sstm8s_tim1$TIM1_CCxCmd$507
      0025B2 03                    5907 	.db	3
      0025B3 06                    5908 	.sleb128	6
      0025B4 01                    5909 	.db	1
      0025B5 09                    5910 	.db	9
      0025B6 00 04                 5911 	.dw	Sstm8s_tim1$TIM1_CCxCmd$509-Sstm8s_tim1$TIM1_CCxCmd$508
      0025B8 03                    5912 	.db	3
      0025B9 02                    5913 	.sleb128	2
      0025BA 01                    5914 	.db	1
      0025BB 09                    5915 	.db	9
      0025BC 00 09                 5916 	.dw	Sstm8s_tim1$TIM1_CCxCmd$510-Sstm8s_tim1$TIM1_CCxCmd$509
      0025BE 03                    5917 	.db	3
      0025BF 04                    5918 	.sleb128	4
      0025C0 01                    5919 	.db	1
      0025C1 09                    5920 	.db	9
      0025C2 00 07                 5921 	.dw	Sstm8s_tim1$TIM1_CCxCmd$511-Sstm8s_tim1$TIM1_CCxCmd$510
      0025C4 03                    5922 	.db	3
      0025C5 03                    5923 	.sleb128	3
      0025C6 01                    5924 	.db	1
      0025C7 09                    5925 	.db	9
      0025C8 00 07                 5926 	.dw	7+Sstm8s_tim1$TIM1_CCxCmd$512-Sstm8s_tim1$TIM1_CCxCmd$511
      0025CA 00                    5927 	.db	0
      0025CB 01                    5928 	.uleb128	1
      0025CC 01                    5929 	.db	1
      0025CD 00                    5930 	.db	0
      0025CE 05                    5931 	.uleb128	5
      0025CF 02                    5932 	.db	2
      0025D0 00 00 9E 18           5933 	.dw	0,(Sstm8s_tim1$TIM1_CCxNCmd$514)
      0025D4 03                    5934 	.db	3
      0025D5 EE 0C                 5935 	.sleb128	1646
      0025D7 01                    5936 	.db	1
      0025D8 09                    5937 	.db	9
      0025D9 00 0C                 5938 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$516-Sstm8s_tim1$TIM1_CCxNCmd$514
      0025DB 03                    5939 	.db	3
      0025DC 06                    5940 	.sleb128	6
      0025DD 01                    5941 	.db	1
      0025DE 09                    5942 	.db	9
      0025DF 00 04                 5943 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$517-Sstm8s_tim1$TIM1_CCxNCmd$516
      0025E1 03                    5944 	.db	3
      0025E2 03                    5945 	.sleb128	3
      0025E3 01                    5946 	.db	1
      0025E4 09                    5947 	.db	9
      0025E5 00 04                 5948 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$518-Sstm8s_tim1$TIM1_CCxNCmd$517
      0025E7 03                    5949 	.db	3
      0025E8 02                    5950 	.sleb128	2
      0025E9 01                    5951 	.db	1
      0025EA 09                    5952 	.db	9
      0025EB 00 09                 5953 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$519-Sstm8s_tim1$TIM1_CCxNCmd$518
      0025ED 03                    5954 	.db	3
      0025EE 04                    5955 	.sleb128	4
      0025EF 01                    5956 	.db	1
      0025F0 09                    5957 	.db	9
      0025F1 00 09                 5958 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$520-Sstm8s_tim1$TIM1_CCxNCmd$519
      0025F3 03                    5959 	.db	3
      0025F4 03                    5960 	.sleb128	3
      0025F5 01                    5961 	.db	1
      0025F6 09                    5962 	.db	9
      0025F7 00 06                 5963 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$521-Sstm8s_tim1$TIM1_CCxNCmd$520
      0025F9 03                    5964 	.db	3
      0025FA 03                    5965 	.sleb128	3
      0025FB 01                    5966 	.db	1
      0025FC 09                    5967 	.db	9
      0025FD 00 04                 5968 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$522-Sstm8s_tim1$TIM1_CCxNCmd$521
      0025FF 03                    5969 	.db	3
      002600 02                    5970 	.sleb128	2
      002601 01                    5971 	.db	1
      002602 09                    5972 	.db	9
      002603 00 09                 5973 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$523-Sstm8s_tim1$TIM1_CCxNCmd$522
      002605 03                    5974 	.db	3
      002606 04                    5975 	.sleb128	4
      002607 01                    5976 	.db	1
      002608 09                    5977 	.db	9
      002609 00 09                 5978 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$524-Sstm8s_tim1$TIM1_CCxNCmd$523
      00260B 03                    5979 	.db	3
      00260C 06                    5980 	.sleb128	6
      00260D 01                    5981 	.db	1
      00260E 09                    5982 	.db	9
      00260F 00 04                 5983 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$525-Sstm8s_tim1$TIM1_CCxNCmd$524
      002611 03                    5984 	.db	3
      002612 02                    5985 	.sleb128	2
      002613 01                    5986 	.db	1
      002614 09                    5987 	.db	9
      002615 00 09                 5988 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$526-Sstm8s_tim1$TIM1_CCxNCmd$525
      002617 03                    5989 	.db	3
      002618 04                    5990 	.sleb128	4
      002619 01                    5991 	.db	1
      00261A 09                    5992 	.db	9
      00261B 00 07                 5993 	.dw	Sstm8s_tim1$TIM1_CCxNCmd$527-Sstm8s_tim1$TIM1_CCxNCmd$526
      00261D 03                    5994 	.db	3
      00261E 03                    5995 	.sleb128	3
      00261F 01                    5996 	.db	1
      002620 09                    5997 	.db	9
      002621 00 07                 5998 	.dw	7+Sstm8s_tim1$TIM1_CCxNCmd$528-Sstm8s_tim1$TIM1_CCxNCmd$527
      002623 00                    5999 	.db	0
      002624 01                    6000 	.uleb128	1
      002625 01                    6001 	.db	1
      002626 00                    6002 	.db	0
      002627 05                    6003 	.uleb128	5
      002628 02                    6004 	.db	2
      002629 00 00 9E 75           6005 	.dw	0,(Sstm8s_tim1$TIM1_SelectOCxM$530)
      00262D 03                    6006 	.db	3
      00262E AF 0D                 6007 	.sleb128	1711
      002630 01                    6008 	.db	1
      002631 09                    6009 	.db	9
      002632 00 0C                 6010 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$532-Sstm8s_tim1$TIM1_SelectOCxM$530
      002634 03                    6011 	.db	3
      002635 06                    6012 	.sleb128	6
      002636 01                    6013 	.db	1
      002637 09                    6014 	.db	9
      002638 00 04                 6015 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$533-Sstm8s_tim1$TIM1_SelectOCxM$532
      00263A 03                    6016 	.db	3
      00263B 03                    6017 	.sleb128	3
      00263C 01                    6018 	.db	1
      00263D 09                    6019 	.db	9
      00263E 00 04                 6020 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$534-Sstm8s_tim1$TIM1_SelectOCxM$533
      002640 03                    6021 	.db	3
      002641 03                    6022 	.sleb128	3
      002642 01                    6023 	.db	1
      002643 09                    6024 	.db	9
      002644 00 06                 6025 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$535-Sstm8s_tim1$TIM1_SelectOCxM$534
      002646 03                    6026 	.db	3
      002647 01                    6027 	.sleb128	1
      002648 01                    6028 	.db	1
      002649 09                    6029 	.db	9
      00264A 00 09                 6030 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$536-Sstm8s_tim1$TIM1_SelectOCxM$535
      00264C 03                    6031 	.db	3
      00264D 02                    6032 	.sleb128	2
      00264E 01                    6033 	.db	1
      00264F 09                    6034 	.db	9
      002650 00 06                 6035 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$537-Sstm8s_tim1$TIM1_SelectOCxM$536
      002652 03                    6036 	.db	3
      002653 03                    6037 	.sleb128	3
      002654 01                    6038 	.db	1
      002655 09                    6039 	.db	9
      002656 00 07                 6040 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$538-Sstm8s_tim1$TIM1_SelectOCxM$537
      002658 03                    6041 	.db	3
      002659 03                    6042 	.sleb128	3
      00265A 01                    6043 	.db	1
      00265B 09                    6044 	.db	9
      00265C 00 06                 6045 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$539-Sstm8s_tim1$TIM1_SelectOCxM$538
      00265E 03                    6046 	.db	3
      00265F 01                    6047 	.sleb128	1
      002660 01                    6048 	.db	1
      002661 09                    6049 	.db	9
      002662 00 08                 6050 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$540-Sstm8s_tim1$TIM1_SelectOCxM$539
      002664 03                    6051 	.db	3
      002665 02                    6052 	.sleb128	2
      002666 01                    6053 	.db	1
      002667 09                    6054 	.db	9
      002668 00 06                 6055 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$541-Sstm8s_tim1$TIM1_SelectOCxM$540
      00266A 03                    6056 	.db	3
      00266B 03                    6057 	.sleb128	3
      00266C 01                    6058 	.db	1
      00266D 09                    6059 	.db	9
      00266E 00 04                 6060 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$542-Sstm8s_tim1$TIM1_SelectOCxM$541
      002670 03                    6061 	.db	3
      002671 03                    6062 	.sleb128	3
      002672 01                    6063 	.db	1
      002673 09                    6064 	.db	9
      002674 00 06                 6065 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$543-Sstm8s_tim1$TIM1_SelectOCxM$542
      002676 03                    6066 	.db	3
      002677 01                    6067 	.sleb128	1
      002678 01                    6068 	.db	1
      002679 09                    6069 	.db	9
      00267A 00 08                 6070 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$544-Sstm8s_tim1$TIM1_SelectOCxM$543
      00267C 03                    6071 	.db	3
      00267D 05                    6072 	.sleb128	5
      00267E 01                    6073 	.db	1
      00267F 09                    6074 	.db	9
      002680 00 07                 6075 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$545-Sstm8s_tim1$TIM1_SelectOCxM$544
      002682 03                    6076 	.db	3
      002683 03                    6077 	.sleb128	3
      002684 01                    6078 	.db	1
      002685 09                    6079 	.db	9
      002686 00 06                 6080 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$546-Sstm8s_tim1$TIM1_SelectOCxM$545
      002688 03                    6081 	.db	3
      002689 01                    6082 	.sleb128	1
      00268A 01                    6083 	.db	1
      00268B 09                    6084 	.db	9
      00268C 00 06                 6085 	.dw	Sstm8s_tim1$TIM1_SelectOCxM$547-Sstm8s_tim1$TIM1_SelectOCxM$546
      00268E 03                    6086 	.db	3
      00268F 02                    6087 	.sleb128	2
      002690 01                    6088 	.db	1
      002691 09                    6089 	.db	9
      002692 00 07                 6090 	.dw	7+Sstm8s_tim1$TIM1_SelectOCxM$548-Sstm8s_tim1$TIM1_SelectOCxM$547
      002694 00                    6091 	.db	0
      002695 01                    6092 	.uleb128	1
      002696 01                    6093 	.db	1
      002697 00                    6094 	.db	0
      002698 05                    6095 	.uleb128	5
      002699 02                    6096 	.db	2
      00269A 00 00 9E E5           6097 	.dw	0,(Sstm8s_tim1$TIM1_SetCounter$550)
      00269E 03                    6098 	.db	3
      00269F E1 0D                 6099 	.sleb128	1761
      0026A1 01                    6100 	.db	1
      0026A2 09                    6101 	.db	9
      0026A3 00 0E                 6102 	.dw	Sstm8s_tim1$TIM1_SetCounter$552-Sstm8s_tim1$TIM1_SetCounter$550
      0026A5 03                    6103 	.db	3
      0026A6 03                    6104 	.sleb128	3
      0026A7 01                    6105 	.db	1
      0026A8 09                    6106 	.db	9
      0026A9 00 08                 6107 	.dw	Sstm8s_tim1$TIM1_SetCounter$553-Sstm8s_tim1$TIM1_SetCounter$552
      0026AB 03                    6108 	.db	3
      0026AC 01                    6109 	.sleb128	1
      0026AD 01                    6110 	.db	1
      0026AE 09                    6111 	.db	9
      0026AF 00 06                 6112 	.dw	Sstm8s_tim1$TIM1_SetCounter$554-Sstm8s_tim1$TIM1_SetCounter$553
      0026B1 03                    6113 	.db	3
      0026B2 01                    6114 	.sleb128	1
      0026B3 01                    6115 	.db	1
      0026B4 09                    6116 	.db	9
      0026B5 00 09                 6117 	.dw	7+Sstm8s_tim1$TIM1_SetCounter$555-Sstm8s_tim1$TIM1_SetCounter$554
      0026B7 00                    6118 	.db	0
      0026B8 01                    6119 	.uleb128	1
      0026B9 01                    6120 	.db	1
      0026BA 00                    6121 	.db	0
      0026BB 05                    6122 	.uleb128	5
      0026BC 02                    6123 	.db	2
      0026BD 00 00 9F 0A           6124 	.dw	0,(Sstm8s_tim1$TIM1_SetAutoreload$557)
      0026C1 03                    6125 	.db	3
      0026C2 EE 0D                 6126 	.sleb128	1774
      0026C4 01                    6127 	.db	1
      0026C5 09                    6128 	.db	9
      0026C6 00 0E                 6129 	.dw	Sstm8s_tim1$TIM1_SetAutoreload$559-Sstm8s_tim1$TIM1_SetAutoreload$557
      0026C8 03                    6130 	.db	3
      0026C9 03                    6131 	.sleb128	3
      0026CA 01                    6132 	.db	1
      0026CB 09                    6133 	.db	9
      0026CC 00 08                 6134 	.dw	Sstm8s_tim1$TIM1_SetAutoreload$560-Sstm8s_tim1$TIM1_SetAutoreload$559
      0026CE 03                    6135 	.db	3
      0026CF 01                    6136 	.sleb128	1
      0026D0 01                    6137 	.db	1
      0026D1 09                    6138 	.db	9
      0026D2 00 06                 6139 	.dw	Sstm8s_tim1$TIM1_SetAutoreload$561-Sstm8s_tim1$TIM1_SetAutoreload$560
      0026D4 03                    6140 	.db	3
      0026D5 01                    6141 	.sleb128	1
      0026D6 01                    6142 	.db	1
      0026D7 09                    6143 	.db	9
      0026D8 00 09                 6144 	.dw	7+Sstm8s_tim1$TIM1_SetAutoreload$562-Sstm8s_tim1$TIM1_SetAutoreload$561
      0026DA 00                    6145 	.db	0
      0026DB 01                    6146 	.uleb128	1
      0026DC 01                    6147 	.db	1
      0026DD 00                    6148 	.db	0
      0026DE 05                    6149 	.uleb128	5
      0026DF 02                    6150 	.db	2
      0026E0 00 00 9F 2F           6151 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare1$564)
      0026E4 03                    6152 	.db	3
      0026E5 FB 0D                 6153 	.sleb128	1787
      0026E7 01                    6154 	.db	1
      0026E8 09                    6155 	.db	9
      0026E9 00 0E                 6156 	.dw	Sstm8s_tim1$TIM1_SetCompare1$566-Sstm8s_tim1$TIM1_SetCompare1$564
      0026EB 03                    6157 	.db	3
      0026EC 03                    6158 	.sleb128	3
      0026ED 01                    6159 	.db	1
      0026EE 09                    6160 	.db	9
      0026EF 00 08                 6161 	.dw	Sstm8s_tim1$TIM1_SetCompare1$567-Sstm8s_tim1$TIM1_SetCompare1$566
      0026F1 03                    6162 	.db	3
      0026F2 01                    6163 	.sleb128	1
      0026F3 01                    6164 	.db	1
      0026F4 09                    6165 	.db	9
      0026F5 00 06                 6166 	.dw	Sstm8s_tim1$TIM1_SetCompare1$568-Sstm8s_tim1$TIM1_SetCompare1$567
      0026F7 03                    6167 	.db	3
      0026F8 01                    6168 	.sleb128	1
      0026F9 01                    6169 	.db	1
      0026FA 09                    6170 	.db	9
      0026FB 00 09                 6171 	.dw	7+Sstm8s_tim1$TIM1_SetCompare1$569-Sstm8s_tim1$TIM1_SetCompare1$568
      0026FD 00                    6172 	.db	0
      0026FE 01                    6173 	.uleb128	1
      0026FF 01                    6174 	.db	1
      002700 00                    6175 	.db	0
      002701 05                    6176 	.uleb128	5
      002702 02                    6177 	.db	2
      002703 00 00 9F 54           6178 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare2$571)
      002707 03                    6179 	.db	3
      002708 88 0E                 6180 	.sleb128	1800
      00270A 01                    6181 	.db	1
      00270B 09                    6182 	.db	9
      00270C 00 0E                 6183 	.dw	Sstm8s_tim1$TIM1_SetCompare2$573-Sstm8s_tim1$TIM1_SetCompare2$571
      00270E 03                    6184 	.db	3
      00270F 03                    6185 	.sleb128	3
      002710 01                    6186 	.db	1
      002711 09                    6187 	.db	9
      002712 00 08                 6188 	.dw	Sstm8s_tim1$TIM1_SetCompare2$574-Sstm8s_tim1$TIM1_SetCompare2$573
      002714 03                    6189 	.db	3
      002715 01                    6190 	.sleb128	1
      002716 01                    6191 	.db	1
      002717 09                    6192 	.db	9
      002718 00 06                 6193 	.dw	Sstm8s_tim1$TIM1_SetCompare2$575-Sstm8s_tim1$TIM1_SetCompare2$574
      00271A 03                    6194 	.db	3
      00271B 01                    6195 	.sleb128	1
      00271C 01                    6196 	.db	1
      00271D 09                    6197 	.db	9
      00271E 00 09                 6198 	.dw	7+Sstm8s_tim1$TIM1_SetCompare2$576-Sstm8s_tim1$TIM1_SetCompare2$575
      002720 00                    6199 	.db	0
      002721 01                    6200 	.uleb128	1
      002722 01                    6201 	.db	1
      002723 00                    6202 	.db	0
      002724 05                    6203 	.uleb128	5
      002725 02                    6204 	.db	2
      002726 00 00 9F 79           6205 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare3$578)
      00272A 03                    6206 	.db	3
      00272B 95 0E                 6207 	.sleb128	1813
      00272D 01                    6208 	.db	1
      00272E 09                    6209 	.db	9
      00272F 00 0E                 6210 	.dw	Sstm8s_tim1$TIM1_SetCompare3$580-Sstm8s_tim1$TIM1_SetCompare3$578
      002731 03                    6211 	.db	3
      002732 03                    6212 	.sleb128	3
      002733 01                    6213 	.db	1
      002734 09                    6214 	.db	9
      002735 00 08                 6215 	.dw	Sstm8s_tim1$TIM1_SetCompare3$581-Sstm8s_tim1$TIM1_SetCompare3$580
      002737 03                    6216 	.db	3
      002738 01                    6217 	.sleb128	1
      002739 01                    6218 	.db	1
      00273A 09                    6219 	.db	9
      00273B 00 06                 6220 	.dw	Sstm8s_tim1$TIM1_SetCompare3$582-Sstm8s_tim1$TIM1_SetCompare3$581
      00273D 03                    6221 	.db	3
      00273E 01                    6222 	.sleb128	1
      00273F 01                    6223 	.db	1
      002740 09                    6224 	.db	9
      002741 00 09                 6225 	.dw	7+Sstm8s_tim1$TIM1_SetCompare3$583-Sstm8s_tim1$TIM1_SetCompare3$582
      002743 00                    6226 	.db	0
      002744 01                    6227 	.uleb128	1
      002745 01                    6228 	.db	1
      002746 00                    6229 	.db	0
      002747 05                    6230 	.uleb128	5
      002748 02                    6231 	.db	2
      002749 00 00 9F 9E           6232 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare4$585)
      00274D 03                    6233 	.db	3
      00274E A2 0E                 6234 	.sleb128	1826
      002750 01                    6235 	.db	1
      002751 09                    6236 	.db	9
      002752 00 0E                 6237 	.dw	Sstm8s_tim1$TIM1_SetCompare4$587-Sstm8s_tim1$TIM1_SetCompare4$585
      002754 03                    6238 	.db	3
      002755 03                    6239 	.sleb128	3
      002756 01                    6240 	.db	1
      002757 09                    6241 	.db	9
      002758 00 08                 6242 	.dw	Sstm8s_tim1$TIM1_SetCompare4$588-Sstm8s_tim1$TIM1_SetCompare4$587
      00275A 03                    6243 	.db	3
      00275B 01                    6244 	.sleb128	1
      00275C 01                    6245 	.db	1
      00275D 09                    6246 	.db	9
      00275E 00 06                 6247 	.dw	Sstm8s_tim1$TIM1_SetCompare4$589-Sstm8s_tim1$TIM1_SetCompare4$588
      002760 03                    6248 	.db	3
      002761 01                    6249 	.sleb128	1
      002762 01                    6250 	.db	1
      002763 09                    6251 	.db	9
      002764 00 09                 6252 	.dw	7+Sstm8s_tim1$TIM1_SetCompare4$590-Sstm8s_tim1$TIM1_SetCompare4$589
      002766 00                    6253 	.db	0
      002767 01                    6254 	.uleb128	1
      002768 01                    6255 	.db	1
      002769 00                    6256 	.db	0
      00276A 05                    6257 	.uleb128	5
      00276B 02                    6258 	.db	2
      00276C 00 00 9F C3           6259 	.dw	0,(Sstm8s_tim1$TIM1_SetIC1Prescaler$592)
      002770 03                    6260 	.db	3
      002771 B3 0E                 6261 	.sleb128	1843
      002773 01                    6262 	.db	1
      002774 09                    6263 	.db	9
      002775 00 0C                 6264 	.dw	Sstm8s_tim1$TIM1_SetIC1Prescaler$594-Sstm8s_tim1$TIM1_SetIC1Prescaler$592
      002777 03                    6265 	.db	3
      002778 06                    6266 	.sleb128	6
      002779 01                    6267 	.db	1
      00277A 09                    6268 	.db	9
      00277B 00 06                 6269 	.dw	Sstm8s_tim1$TIM1_SetIC1Prescaler$595-Sstm8s_tim1$TIM1_SetIC1Prescaler$594
      00277D 03                    6270 	.db	3
      00277E 01                    6271 	.sleb128	1
      00277F 01                    6272 	.db	1
      002780 09                    6273 	.db	9
      002781 00 06                 6274 	.dw	Sstm8s_tim1$TIM1_SetIC1Prescaler$596-Sstm8s_tim1$TIM1_SetIC1Prescaler$595
      002783 03                    6275 	.db	3
      002784 01                    6276 	.sleb128	1
      002785 01                    6277 	.db	1
      002786 09                    6278 	.db	9
      002787 00 07                 6279 	.dw	7+Sstm8s_tim1$TIM1_SetIC1Prescaler$597-Sstm8s_tim1$TIM1_SetIC1Prescaler$596
      002789 00                    6280 	.db	0
      00278A 01                    6281 	.uleb128	1
      00278B 01                    6282 	.db	1
      00278C 00                    6283 	.db	0
      00278D 05                    6284 	.uleb128	5
      00278E 02                    6285 	.db	2
      00278F 00 00 9F E2           6286 	.dw	0,(Sstm8s_tim1$TIM1_SetIC2Prescaler$599)
      002793 03                    6287 	.db	3
      002794 C7 0E                 6288 	.sleb128	1863
      002796 01                    6289 	.db	1
      002797 09                    6290 	.db	9
      002798 00 0C                 6291 	.dw	Sstm8s_tim1$TIM1_SetIC2Prescaler$601-Sstm8s_tim1$TIM1_SetIC2Prescaler$599
      00279A 03                    6292 	.db	3
      00279B 07                    6293 	.sleb128	7
      00279C 01                    6294 	.db	1
      00279D 09                    6295 	.db	9
      00279E 00 06                 6296 	.dw	Sstm8s_tim1$TIM1_SetIC2Prescaler$602-Sstm8s_tim1$TIM1_SetIC2Prescaler$601
      0027A0 03                    6297 	.db	3
      0027A1 01                    6298 	.sleb128	1
      0027A2 01                    6299 	.db	1
      0027A3 09                    6300 	.db	9
      0027A4 00 06                 6301 	.dw	Sstm8s_tim1$TIM1_SetIC2Prescaler$603-Sstm8s_tim1$TIM1_SetIC2Prescaler$602
      0027A6 03                    6302 	.db	3
      0027A7 01                    6303 	.sleb128	1
      0027A8 01                    6304 	.db	1
      0027A9 09                    6305 	.db	9
      0027AA 00 07                 6306 	.dw	7+Sstm8s_tim1$TIM1_SetIC2Prescaler$604-Sstm8s_tim1$TIM1_SetIC2Prescaler$603
      0027AC 00                    6307 	.db	0
      0027AD 01                    6308 	.uleb128	1
      0027AE 01                    6309 	.db	1
      0027AF 00                    6310 	.db	0
      0027B0 05                    6311 	.uleb128	5
      0027B1 02                    6312 	.db	2
      0027B2 00 00 A0 01           6313 	.dw	0,(Sstm8s_tim1$TIM1_SetIC3Prescaler$606)
      0027B6 03                    6314 	.db	3
      0027B7 DC 0E                 6315 	.sleb128	1884
      0027B9 01                    6316 	.db	1
      0027BA 09                    6317 	.db	9
      0027BB 00 0C                 6318 	.dw	Sstm8s_tim1$TIM1_SetIC3Prescaler$608-Sstm8s_tim1$TIM1_SetIC3Prescaler$606
      0027BD 03                    6319 	.db	3
      0027BE 07                    6320 	.sleb128	7
      0027BF 01                    6321 	.db	1
      0027C0 09                    6322 	.db	9
      0027C1 00 06                 6323 	.dw	Sstm8s_tim1$TIM1_SetIC3Prescaler$609-Sstm8s_tim1$TIM1_SetIC3Prescaler$608
      0027C3 03                    6324 	.db	3
      0027C4 01                    6325 	.sleb128	1
      0027C5 01                    6326 	.db	1
      0027C6 09                    6327 	.db	9
      0027C7 00 06                 6328 	.dw	Sstm8s_tim1$TIM1_SetIC3Prescaler$610-Sstm8s_tim1$TIM1_SetIC3Prescaler$609
      0027C9 03                    6329 	.db	3
      0027CA 01                    6330 	.sleb128	1
      0027CB 01                    6331 	.db	1
      0027CC 09                    6332 	.db	9
      0027CD 00 07                 6333 	.dw	7+Sstm8s_tim1$TIM1_SetIC3Prescaler$611-Sstm8s_tim1$TIM1_SetIC3Prescaler$610
      0027CF 00                    6334 	.db	0
      0027D0 01                    6335 	.uleb128	1
      0027D1 01                    6336 	.db	1
      0027D2 00                    6337 	.db	0
      0027D3 05                    6338 	.uleb128	5
      0027D4 02                    6339 	.db	2
      0027D5 00 00 A0 20           6340 	.dw	0,(Sstm8s_tim1$TIM1_SetIC4Prescaler$613)
      0027D9 03                    6341 	.db	3
      0027DA F1 0E                 6342 	.sleb128	1905
      0027DC 01                    6343 	.db	1
      0027DD 09                    6344 	.db	9
      0027DE 00 0C                 6345 	.dw	Sstm8s_tim1$TIM1_SetIC4Prescaler$615-Sstm8s_tim1$TIM1_SetIC4Prescaler$613
      0027E0 03                    6346 	.db	3
      0027E1 07                    6347 	.sleb128	7
      0027E2 01                    6348 	.db	1
      0027E3 09                    6349 	.db	9
      0027E4 00 06                 6350 	.dw	Sstm8s_tim1$TIM1_SetIC4Prescaler$616-Sstm8s_tim1$TIM1_SetIC4Prescaler$615
      0027E6 03                    6351 	.db	3
      0027E7 01                    6352 	.sleb128	1
      0027E8 01                    6353 	.db	1
      0027E9 09                    6354 	.db	9
      0027EA 00 06                 6355 	.dw	Sstm8s_tim1$TIM1_SetIC4Prescaler$617-Sstm8s_tim1$TIM1_SetIC4Prescaler$616
      0027EC 03                    6356 	.db	3
      0027ED 01                    6357 	.sleb128	1
      0027EE 01                    6358 	.db	1
      0027EF 09                    6359 	.db	9
      0027F0 00 07                 6360 	.dw	7+Sstm8s_tim1$TIM1_SetIC4Prescaler$618-Sstm8s_tim1$TIM1_SetIC4Prescaler$617
      0027F2 00                    6361 	.db	0
      0027F3 01                    6362 	.uleb128	1
      0027F4 01                    6363 	.db	1
      0027F5 00                    6364 	.db	0
      0027F6 05                    6365 	.uleb128	5
      0027F7 02                    6366 	.db	2
      0027F8 00 00 A0 3F           6367 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture1$620)
      0027FC 03                    6368 	.db	3
      0027FD 81 0F                 6369 	.sleb128	1921
      0027FF 01                    6370 	.db	1
      002800 09                    6371 	.db	9
      002801 00 0E                 6372 	.dw	Sstm8s_tim1$TIM1_GetCapture1$622-Sstm8s_tim1$TIM1_GetCapture1$620
      002803 03                    6373 	.db	3
      002804 07                    6374 	.sleb128	7
      002805 01                    6375 	.db	1
      002806 09                    6376 	.db	9
      002807 00 06                 6377 	.dw	Sstm8s_tim1$TIM1_GetCapture1$623-Sstm8s_tim1$TIM1_GetCapture1$622
      002809 03                    6378 	.db	3
      00280A 01                    6379 	.sleb128	1
      00280B 01                    6380 	.db	1
      00280C 09                    6381 	.db	9
      00280D 00 04                 6382 	.dw	Sstm8s_tim1$TIM1_GetCapture1$624-Sstm8s_tim1$TIM1_GetCapture1$623
      00280F 03                    6383 	.db	3
      002810 02                    6384 	.sleb128	2
      002811 01                    6385 	.db	1
      002812 09                    6386 	.db	9
      002813 00 02                 6387 	.dw	Sstm8s_tim1$TIM1_GetCapture1$625-Sstm8s_tim1$TIM1_GetCapture1$624
      002815 03                    6388 	.db	3
      002816 01                    6389 	.sleb128	1
      002817 01                    6390 	.db	1
      002818 09                    6391 	.db	9
      002819 00 0D                 6392 	.dw	Sstm8s_tim1$TIM1_GetCapture1$626-Sstm8s_tim1$TIM1_GetCapture1$625
      00281B 03                    6393 	.db	3
      00281C 02                    6394 	.sleb128	2
      00281D 01                    6395 	.db	1
      00281E 09                    6396 	.db	9
      00281F 00 00                 6397 	.dw	Sstm8s_tim1$TIM1_GetCapture1$627-Sstm8s_tim1$TIM1_GetCapture1$626
      002821 03                    6398 	.db	3
      002822 01                    6399 	.sleb128	1
      002823 01                    6400 	.db	1
      002824 09                    6401 	.db	9
      002825 00 09                 6402 	.dw	7+Sstm8s_tim1$TIM1_GetCapture1$628-Sstm8s_tim1$TIM1_GetCapture1$627
      002827 00                    6403 	.db	0
      002828 01                    6404 	.uleb128	1
      002829 01                    6405 	.db	1
      00282A 00                    6406 	.db	0
      00282B 05                    6407 	.uleb128	5
      00282C 02                    6408 	.db	2
      00282D 00 00 A0 6F           6409 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture2$630)
      002831 03                    6410 	.db	3
      002832 96 0F                 6411 	.sleb128	1942
      002834 01                    6412 	.db	1
      002835 09                    6413 	.db	9
      002836 00 0E                 6414 	.dw	Sstm8s_tim1$TIM1_GetCapture2$632-Sstm8s_tim1$TIM1_GetCapture2$630
      002838 03                    6415 	.db	3
      002839 07                    6416 	.sleb128	7
      00283A 01                    6417 	.db	1
      00283B 09                    6418 	.db	9
      00283C 00 06                 6419 	.dw	Sstm8s_tim1$TIM1_GetCapture2$633-Sstm8s_tim1$TIM1_GetCapture2$632
      00283E 03                    6420 	.db	3
      00283F 01                    6421 	.sleb128	1
      002840 01                    6422 	.db	1
      002841 09                    6423 	.db	9
      002842 00 04                 6424 	.dw	Sstm8s_tim1$TIM1_GetCapture2$634-Sstm8s_tim1$TIM1_GetCapture2$633
      002844 03                    6425 	.db	3
      002845 02                    6426 	.sleb128	2
      002846 01                    6427 	.db	1
      002847 09                    6428 	.db	9
      002848 00 02                 6429 	.dw	Sstm8s_tim1$TIM1_GetCapture2$635-Sstm8s_tim1$TIM1_GetCapture2$634
      00284A 03                    6430 	.db	3
      00284B 01                    6431 	.sleb128	1
      00284C 01                    6432 	.db	1
      00284D 09                    6433 	.db	9
      00284E 00 0D                 6434 	.dw	Sstm8s_tim1$TIM1_GetCapture2$636-Sstm8s_tim1$TIM1_GetCapture2$635
      002850 03                    6435 	.db	3
      002851 02                    6436 	.sleb128	2
      002852 01                    6437 	.db	1
      002853 09                    6438 	.db	9
      002854 00 00                 6439 	.dw	Sstm8s_tim1$TIM1_GetCapture2$637-Sstm8s_tim1$TIM1_GetCapture2$636
      002856 03                    6440 	.db	3
      002857 01                    6441 	.sleb128	1
      002858 01                    6442 	.db	1
      002859 09                    6443 	.db	9
      00285A 00 09                 6444 	.dw	7+Sstm8s_tim1$TIM1_GetCapture2$638-Sstm8s_tim1$TIM1_GetCapture2$637
      00285C 00                    6445 	.db	0
      00285D 01                    6446 	.uleb128	1
      00285E 01                    6447 	.db	1
      00285F 00                    6448 	.db	0
      002860 05                    6449 	.uleb128	5
      002861 02                    6450 	.db	2
      002862 00 00 A0 9F           6451 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture3$640)
      002866 03                    6452 	.db	3
      002867 AB 0F                 6453 	.sleb128	1963
      002869 01                    6454 	.db	1
      00286A 09                    6455 	.db	9
      00286B 00 0E                 6456 	.dw	Sstm8s_tim1$TIM1_GetCapture3$642-Sstm8s_tim1$TIM1_GetCapture3$640
      00286D 03                    6457 	.db	3
      00286E 06                    6458 	.sleb128	6
      00286F 01                    6459 	.db	1
      002870 09                    6460 	.db	9
      002871 00 06                 6461 	.dw	Sstm8s_tim1$TIM1_GetCapture3$643-Sstm8s_tim1$TIM1_GetCapture3$642
      002873 03                    6462 	.db	3
      002874 01                    6463 	.sleb128	1
      002875 01                    6464 	.db	1
      002876 09                    6465 	.db	9
      002877 00 04                 6466 	.dw	Sstm8s_tim1$TIM1_GetCapture3$644-Sstm8s_tim1$TIM1_GetCapture3$643
      002879 03                    6467 	.db	3
      00287A 02                    6468 	.sleb128	2
      00287B 01                    6469 	.db	1
      00287C 09                    6470 	.db	9
      00287D 00 02                 6471 	.dw	Sstm8s_tim1$TIM1_GetCapture3$645-Sstm8s_tim1$TIM1_GetCapture3$644
      00287F 03                    6472 	.db	3
      002880 01                    6473 	.sleb128	1
      002881 01                    6474 	.db	1
      002882 09                    6475 	.db	9
      002883 00 0D                 6476 	.dw	Sstm8s_tim1$TIM1_GetCapture3$646-Sstm8s_tim1$TIM1_GetCapture3$645
      002885 03                    6477 	.db	3
      002886 02                    6478 	.sleb128	2
      002887 01                    6479 	.db	1
      002888 09                    6480 	.db	9
      002889 00 00                 6481 	.dw	Sstm8s_tim1$TIM1_GetCapture3$647-Sstm8s_tim1$TIM1_GetCapture3$646
      00288B 03                    6482 	.db	3
      00288C 01                    6483 	.sleb128	1
      00288D 01                    6484 	.db	1
      00288E 09                    6485 	.db	9
      00288F 00 09                 6486 	.dw	7+Sstm8s_tim1$TIM1_GetCapture3$648-Sstm8s_tim1$TIM1_GetCapture3$647
      002891 00                    6487 	.db	0
      002892 01                    6488 	.uleb128	1
      002893 01                    6489 	.db	1
      002894 00                    6490 	.db	0
      002895 05                    6491 	.uleb128	5
      002896 02                    6492 	.db	2
      002897 00 00 A0 CF           6493 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture4$650)
      00289B 03                    6494 	.db	3
      00289C BF 0F                 6495 	.sleb128	1983
      00289E 01                    6496 	.db	1
      00289F 09                    6497 	.db	9
      0028A0 00 0E                 6498 	.dw	Sstm8s_tim1$TIM1_GetCapture4$652-Sstm8s_tim1$TIM1_GetCapture4$650
      0028A2 03                    6499 	.db	3
      0028A3 06                    6500 	.sleb128	6
      0028A4 01                    6501 	.db	1
      0028A5 09                    6502 	.db	9
      0028A6 00 06                 6503 	.dw	Sstm8s_tim1$TIM1_GetCapture4$653-Sstm8s_tim1$TIM1_GetCapture4$652
      0028A8 03                    6504 	.db	3
      0028A9 01                    6505 	.sleb128	1
      0028AA 01                    6506 	.db	1
      0028AB 09                    6507 	.db	9
      0028AC 00 04                 6508 	.dw	Sstm8s_tim1$TIM1_GetCapture4$654-Sstm8s_tim1$TIM1_GetCapture4$653
      0028AE 03                    6509 	.db	3
      0028AF 02                    6510 	.sleb128	2
      0028B0 01                    6511 	.db	1
      0028B1 09                    6512 	.db	9
      0028B2 00 02                 6513 	.dw	Sstm8s_tim1$TIM1_GetCapture4$655-Sstm8s_tim1$TIM1_GetCapture4$654
      0028B4 03                    6514 	.db	3
      0028B5 01                    6515 	.sleb128	1
      0028B6 01                    6516 	.db	1
      0028B7 09                    6517 	.db	9
      0028B8 00 0D                 6518 	.dw	Sstm8s_tim1$TIM1_GetCapture4$656-Sstm8s_tim1$TIM1_GetCapture4$655
      0028BA 03                    6519 	.db	3
      0028BB 02                    6520 	.sleb128	2
      0028BC 01                    6521 	.db	1
      0028BD 09                    6522 	.db	9
      0028BE 00 00                 6523 	.dw	Sstm8s_tim1$TIM1_GetCapture4$657-Sstm8s_tim1$TIM1_GetCapture4$656
      0028C0 03                    6524 	.db	3
      0028C1 01                    6525 	.sleb128	1
      0028C2 01                    6526 	.db	1
      0028C3 09                    6527 	.db	9
      0028C4 00 09                 6528 	.dw	7+Sstm8s_tim1$TIM1_GetCapture4$658-Sstm8s_tim1$TIM1_GetCapture4$657
      0028C6 00                    6529 	.db	0
      0028C7 01                    6530 	.uleb128	1
      0028C8 01                    6531 	.db	1
      0028C9 00                    6532 	.db	0
      0028CA 05                    6533 	.uleb128	5
      0028CB 02                    6534 	.db	2
      0028CC 00 00 A0 FF           6535 	.dw	0,(Sstm8s_tim1$TIM1_GetCounter$660)
      0028D0 03                    6536 	.db	3
      0028D1 D3 0F                 6537 	.sleb128	2003
      0028D3 01                    6538 	.db	1
      0028D4 09                    6539 	.db	9
      0028D5 00 0E                 6540 	.dw	Sstm8s_tim1$TIM1_GetCounter$662-Sstm8s_tim1$TIM1_GetCounter$660
      0028D7 03                    6541 	.db	3
      0028D8 04                    6542 	.sleb128	4
      0028D9 01                    6543 	.db	1
      0028DA 09                    6544 	.db	9
      0028DB 00 09                 6545 	.dw	Sstm8s_tim1$TIM1_GetCounter$663-Sstm8s_tim1$TIM1_GetCounter$662
      0028DD 03                    6546 	.db	3
      0028DE 03                    6547 	.sleb128	3
      0028DF 01                    6548 	.db	1
      0028E0 09                    6549 	.db	9
      0028E1 00 0E                 6550 	.dw	Sstm8s_tim1$TIM1_GetCounter$664-Sstm8s_tim1$TIM1_GetCounter$663
      0028E3 03                    6551 	.db	3
      0028E4 01                    6552 	.sleb128	1
      0028E5 01                    6553 	.db	1
      0028E6 09                    6554 	.db	9
      0028E7 00 09                 6555 	.dw	7+Sstm8s_tim1$TIM1_GetCounter$665-Sstm8s_tim1$TIM1_GetCounter$664
      0028E9 00                    6556 	.db	0
      0028EA 01                    6557 	.uleb128	1
      0028EB 01                    6558 	.db	1
      0028EC 00                    6559 	.db	0
      0028ED 05                    6560 	.uleb128	5
      0028EE 02                    6561 	.db	2
      0028EF 00 00 A1 2D           6562 	.dw	0,(Sstm8s_tim1$TIM1_GetPrescaler$667)
      0028F3 03                    6563 	.db	3
      0028F4 E2 0F                 6564 	.sleb128	2018
      0028F6 01                    6565 	.db	1
      0028F7 09                    6566 	.db	9
      0028F8 00 0E                 6567 	.dw	Sstm8s_tim1$TIM1_GetPrescaler$669-Sstm8s_tim1$TIM1_GetPrescaler$667
      0028FA 03                    6568 	.db	3
      0028FB 04                    6569 	.sleb128	4
      0028FC 01                    6570 	.db	1
      0028FD 09                    6571 	.db	9
      0028FE 00 09                 6572 	.dw	Sstm8s_tim1$TIM1_GetPrescaler$670-Sstm8s_tim1$TIM1_GetPrescaler$669
      002900 03                    6573 	.db	3
      002901 03                    6574 	.sleb128	3
      002902 01                    6575 	.db	1
      002903 09                    6576 	.db	9
      002904 00 0E                 6577 	.dw	Sstm8s_tim1$TIM1_GetPrescaler$671-Sstm8s_tim1$TIM1_GetPrescaler$670
      002906 03                    6578 	.db	3
      002907 01                    6579 	.sleb128	1
      002908 01                    6580 	.db	1
      002909 09                    6581 	.db	9
      00290A 00 09                 6582 	.dw	7+Sstm8s_tim1$TIM1_GetPrescaler$672-Sstm8s_tim1$TIM1_GetPrescaler$671
      00290C 00                    6583 	.db	0
      00290D 01                    6584 	.uleb128	1
      00290E 01                    6585 	.db	1
      00290F 00                    6586 	.db	0
      002910 05                    6587 	.uleb128	5
      002911 02                    6588 	.db	2
      002912 00 00 A1 5B           6589 	.dw	0,(Sstm8s_tim1$TIM1_GetFlagStatus$674)
      002916 03                    6590 	.db	3
      002917 FE 0F                 6591 	.sleb128	2046
      002919 01                    6592 	.db	1
      00291A 09                    6593 	.db	9
      00291B 00 0E                 6594 	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$676-Sstm8s_tim1$TIM1_GetFlagStatus$674
      00291D 03                    6595 	.db	3
      00291E 08                    6596 	.sleb128	8
      00291F 01                    6597 	.db	1
      002920 09                    6598 	.db	9
      002921 00 0C                 6599 	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$677-Sstm8s_tim1$TIM1_GetFlagStatus$676
      002923 03                    6600 	.db	3
      002924 01                    6601 	.sleb128	1
      002925 01                    6602 	.db	1
      002926 09                    6603 	.db	9
      002927 00 06                 6604 	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$678-Sstm8s_tim1$TIM1_GetFlagStatus$677
      002929 03                    6605 	.db	3
      00292A 02                    6606 	.sleb128	2
      00292B 01                    6607 	.db	1
      00292C 09                    6608 	.db	9
      00292D 00 0B                 6609 	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$679-Sstm8s_tim1$TIM1_GetFlagStatus$678
      00292F 03                    6610 	.db	3
      002930 02                    6611 	.sleb128	2
      002931 01                    6612 	.db	1
      002932 09                    6613 	.db	9
      002933 00 04                 6614 	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$680-Sstm8s_tim1$TIM1_GetFlagStatus$679
      002935 03                    6615 	.db	3
      002936 04                    6616 	.sleb128	4
      002937 01                    6617 	.db	1
      002938 09                    6618 	.db	9
      002939 00 01                 6619 	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$681-Sstm8s_tim1$TIM1_GetFlagStatus$680
      00293B 03                    6620 	.db	3
      00293C 02                    6621 	.sleb128	2
      00293D 01                    6622 	.db	1
      00293E 09                    6623 	.db	9
      00293F 00 00                 6624 	.dw	Sstm8s_tim1$TIM1_GetFlagStatus$682-Sstm8s_tim1$TIM1_GetFlagStatus$681
      002941 03                    6625 	.db	3
      002942 01                    6626 	.sleb128	1
      002943 01                    6627 	.db	1
      002944 09                    6628 	.db	9
      002945 00 09                 6629 	.dw	7+Sstm8s_tim1$TIM1_GetFlagStatus$683-Sstm8s_tim1$TIM1_GetFlagStatus$682
      002947 00                    6630 	.db	0
      002948 01                    6631 	.uleb128	1
      002949 01                    6632 	.db	1
      00294A 00                    6633 	.db	0
      00294B 05                    6634 	.uleb128	5
      00294C 02                    6635 	.db	2
      00294D 00 00 A1 94           6636 	.dw	0,(Sstm8s_tim1$TIM1_ClearFlag$685)
      002951 03                    6637 	.db	3
      002952 A6 10                 6638 	.sleb128	2086
      002954 01                    6639 	.db	1
      002955 09                    6640 	.db	9
      002956 00 0E                 6641 	.dw	Sstm8s_tim1$TIM1_ClearFlag$687-Sstm8s_tim1$TIM1_ClearFlag$685
      002958 03                    6642 	.db	3
      002959 06                    6643 	.sleb128	6
      00295A 01                    6644 	.db	1
      00295B 09                    6645 	.db	9
      00295C 00 07                 6646 	.dw	Sstm8s_tim1$TIM1_ClearFlag$688-Sstm8s_tim1$TIM1_ClearFlag$687
      00295E 03                    6647 	.db	3
      00295F 01                    6648 	.sleb128	1
      002960 01                    6649 	.db	1
      002961 09                    6650 	.db	9
      002962 00 0B                 6651 	.dw	Sstm8s_tim1$TIM1_ClearFlag$689-Sstm8s_tim1$TIM1_ClearFlag$688
      002964 03                    6652 	.db	3
      002965 02                    6653 	.sleb128	2
      002966 01                    6654 	.db	1
      002967 09                    6655 	.db	9
      002968 00 09                 6656 	.dw	7+Sstm8s_tim1$TIM1_ClearFlag$690-Sstm8s_tim1$TIM1_ClearFlag$689
      00296A 00                    6657 	.db	0
      00296B 01                    6658 	.uleb128	1
      00296C 01                    6659 	.db	1
      00296D 00                    6660 	.db	0
      00296E 05                    6661 	.uleb128	5
      00296F 02                    6662 	.db	2
      002970 00 00 A1 BD           6663 	.dw	0,(Sstm8s_tim1$TIM1_GetITStatus$692)
      002974 03                    6664 	.db	3
      002975 BF 10                 6665 	.sleb128	2111
      002977 01                    6666 	.db	1
      002978 09                    6667 	.db	9
      002979 00 0D                 6668 	.dw	Sstm8s_tim1$TIM1_GetITStatus$694-Sstm8s_tim1$TIM1_GetITStatus$692
      00297B 03                    6669 	.db	3
      00297C 08                    6670 	.sleb128	8
      00297D 01                    6671 	.db	1
      00297E 09                    6672 	.db	9
      00297F 00 08                 6673 	.dw	Sstm8s_tim1$TIM1_GetITStatus$695-Sstm8s_tim1$TIM1_GetITStatus$694
      002981 03                    6674 	.db	3
      002982 02                    6675 	.sleb128	2
      002983 01                    6676 	.db	1
      002984 09                    6677 	.db	9
      002985 00 06                 6678 	.dw	Sstm8s_tim1$TIM1_GetITStatus$696-Sstm8s_tim1$TIM1_GetITStatus$695
      002987 03                    6679 	.db	3
      002988 02                    6680 	.sleb128	2
      002989 01                    6681 	.db	1
      00298A 09                    6682 	.db	9
      00298B 00 07                 6683 	.dw	Sstm8s_tim1$TIM1_GetITStatus$697-Sstm8s_tim1$TIM1_GetITStatus$696
      00298D 03                    6684 	.db	3
      00298E 02                    6685 	.sleb128	2
      00298F 01                    6686 	.db	1
      002990 09                    6687 	.db	9
      002991 00 04                 6688 	.dw	Sstm8s_tim1$TIM1_GetITStatus$698-Sstm8s_tim1$TIM1_GetITStatus$697
      002993 03                    6689 	.db	3
      002994 04                    6690 	.sleb128	4
      002995 01                    6691 	.db	1
      002996 09                    6692 	.db	9
      002997 00 01                 6693 	.dw	Sstm8s_tim1$TIM1_GetITStatus$699-Sstm8s_tim1$TIM1_GetITStatus$698
      002999 03                    6694 	.db	3
      00299A 02                    6695 	.sleb128	2
      00299B 01                    6696 	.db	1
      00299C 09                    6697 	.db	9
      00299D 00 00                 6698 	.dw	Sstm8s_tim1$TIM1_GetITStatus$700-Sstm8s_tim1$TIM1_GetITStatus$699
      00299F 03                    6699 	.db	3
      0029A0 01                    6700 	.sleb128	1
      0029A1 01                    6701 	.db	1
      0029A2 09                    6702 	.db	9
      0029A3 00 09                 6703 	.dw	7+Sstm8s_tim1$TIM1_GetITStatus$701-Sstm8s_tim1$TIM1_GetITStatus$700
      0029A5 00                    6704 	.db	0
      0029A6 01                    6705 	.uleb128	1
      0029A7 01                    6706 	.db	1
      0029A8 00                    6707 	.db	0
      0029A9 05                    6708 	.uleb128	5
      0029AA 02                    6709 	.db	2
      0029AB 00 00 A1 ED           6710 	.dw	0,(Sstm8s_tim1$TIM1_ClearITPendingBit$703)
      0029AF 03                    6711 	.db	3
      0029B0 E4 10                 6712 	.sleb128	2148
      0029B2 01                    6713 	.db	1
      0029B3 09                    6714 	.db	9
      0029B4 00 0C                 6715 	.dw	Sstm8s_tim1$TIM1_ClearITPendingBit$705-Sstm8s_tim1$TIM1_ClearITPendingBit$703
      0029B6 03                    6716 	.db	3
      0029B7 06                    6717 	.sleb128	6
      0029B8 01                    6718 	.db	1
      0029B9 09                    6719 	.db	9
      0029BA 00 07                 6720 	.dw	Sstm8s_tim1$TIM1_ClearITPendingBit$706-Sstm8s_tim1$TIM1_ClearITPendingBit$705
      0029BC 03                    6721 	.db	3
      0029BD 01                    6722 	.sleb128	1
      0029BE 01                    6723 	.db	1
      0029BF 09                    6724 	.db	9
      0029C0 00 07                 6725 	.dw	7+Sstm8s_tim1$TIM1_ClearITPendingBit$707-Sstm8s_tim1$TIM1_ClearITPendingBit$706
      0029C2 00                    6726 	.db	0
      0029C3 01                    6727 	.uleb128	1
      0029C4 01                    6728 	.db	1
      0029C5 00                    6729 	.db	0
      0029C6 05                    6730 	.uleb128	5
      0029C7 02                    6731 	.db	2
      0029C8 00 00 A2 07           6732 	.dw	0,(Sstm8s_tim1$TI1_Config$709)
      0029CC 03                    6733 	.db	3
      0029CD FD 10                 6734 	.sleb128	2173
      0029CF 01                    6735 	.db	1
      0029D0 09                    6736 	.db	9
      0029D1 00 0D                 6737 	.dw	Sstm8s_tim1$TI1_Config$711-Sstm8s_tim1$TI1_Config$709
      0029D3 03                    6738 	.db	3
      0029D4 05                    6739 	.sleb128	5
      0029D5 01                    6740 	.db	1
      0029D6 09                    6741 	.db	9
      0029D7 00 04                 6742 	.dw	Sstm8s_tim1$TI1_Config$712-Sstm8s_tim1$TI1_Config$711
      0029D9 03                    6743 	.db	3
      0029DA 03                    6744 	.sleb128	3
      0029DB 01                    6745 	.db	1
      0029DC 09                    6746 	.db	9
      0029DD 00 08                 6747 	.dw	Sstm8s_tim1$TI1_Config$713-Sstm8s_tim1$TI1_Config$712
      0029DF 03                    6748 	.db	3
      0029E0 01                    6749 	.sleb128	1
      0029E1 01                    6750 	.db	1
      0029E2 09                    6751 	.db	9
      0029E3 00 0D                 6752 	.dw	Sstm8s_tim1$TI1_Config$714-Sstm8s_tim1$TI1_Config$713
      0029E5 03                    6753 	.db	3
      0029E6 03                    6754 	.sleb128	3
      0029E7 01                    6755 	.db	1
      0029E8 09                    6756 	.db	9
      0029E9 00 04                 6757 	.dw	Sstm8s_tim1$TI1_Config$715-Sstm8s_tim1$TI1_Config$714
      0029EB 03                    6758 	.db	3
      0029EC 02                    6759 	.sleb128	2
      0029ED 01                    6760 	.db	1
      0029EE 09                    6761 	.db	9
      0029EF 00 09                 6762 	.dw	Sstm8s_tim1$TI1_Config$716-Sstm8s_tim1$TI1_Config$715
      0029F1 03                    6763 	.db	3
      0029F2 04                    6764 	.sleb128	4
      0029F3 01                    6765 	.db	1
      0029F4 09                    6766 	.db	9
      0029F5 00 07                 6767 	.dw	Sstm8s_tim1$TI1_Config$717-Sstm8s_tim1$TI1_Config$716
      0029F7 03                    6768 	.db	3
      0029F8 04                    6769 	.sleb128	4
      0029F9 01                    6770 	.db	1
      0029FA 09                    6771 	.db	9
      0029FB 00 04                 6772 	.dw	Sstm8s_tim1$TI1_Config$718-Sstm8s_tim1$TI1_Config$717
      0029FD 03                    6773 	.db	3
      0029FE 01                    6774 	.sleb128	1
      0029FF 01                    6775 	.db	1
      002A00 09                    6776 	.db	9
      002A01 00 08                 6777 	.dw	7+Sstm8s_tim1$TI1_Config$719-Sstm8s_tim1$TI1_Config$718
      002A03 00                    6778 	.db	0
      002A04 01                    6779 	.uleb128	1
      002A05 01                    6780 	.db	1
      002A06 00                    6781 	.db	0
      002A07 05                    6782 	.uleb128	5
      002A08 02                    6783 	.db	2
      002A09 00 00 A2 4D           6784 	.dw	0,(Sstm8s_tim1$TI2_Config$721)
      002A0D 03                    6785 	.db	3
      002A0E A6 11                 6786 	.sleb128	2214
      002A10 01                    6787 	.db	1
      002A11 09                    6788 	.db	9
      002A12 00 0D                 6789 	.dw	Sstm8s_tim1$TI2_Config$723-Sstm8s_tim1$TI2_Config$721
      002A14 03                    6790 	.db	3
      002A15 05                    6791 	.sleb128	5
      002A16 01                    6792 	.db	1
      002A17 09                    6793 	.db	9
      002A18 00 07                 6794 	.dw	Sstm8s_tim1$TI2_Config$724-Sstm8s_tim1$TI2_Config$723
      002A1A 03                    6795 	.db	3
      002A1B 03                    6796 	.sleb128	3
      002A1C 01                    6797 	.db	1
      002A1D 09                    6798 	.db	9
      002A1E 00 08                 6799 	.dw	Sstm8s_tim1$TI2_Config$725-Sstm8s_tim1$TI2_Config$724
      002A20 03                    6800 	.db	3
      002A21 01                    6801 	.sleb128	1
      002A22 01                    6802 	.db	1
      002A23 09                    6803 	.db	9
      002A24 00 0D                 6804 	.dw	Sstm8s_tim1$TI2_Config$726-Sstm8s_tim1$TI2_Config$725
      002A26 03                    6805 	.db	3
      002A27 02                    6806 	.sleb128	2
      002A28 01                    6807 	.db	1
      002A29 09                    6808 	.db	9
      002A2A 00 04                 6809 	.dw	Sstm8s_tim1$TI2_Config$727-Sstm8s_tim1$TI2_Config$726
      002A2C 03                    6810 	.db	3
      002A2D 02                    6811 	.sleb128	2
      002A2E 01                    6812 	.db	1
      002A2F 09                    6813 	.db	9
      002A30 00 09                 6814 	.dw	Sstm8s_tim1$TI2_Config$728-Sstm8s_tim1$TI2_Config$727
      002A32 03                    6815 	.db	3
      002A33 04                    6816 	.sleb128	4
      002A34 01                    6817 	.db	1
      002A35 09                    6818 	.db	9
      002A36 00 07                 6819 	.dw	Sstm8s_tim1$TI2_Config$729-Sstm8s_tim1$TI2_Config$728
      002A38 03                    6820 	.db	3
      002A39 03                    6821 	.sleb128	3
      002A3A 01                    6822 	.db	1
      002A3B 09                    6823 	.db	9
      002A3C 00 07                 6824 	.dw	Sstm8s_tim1$TI2_Config$730-Sstm8s_tim1$TI2_Config$729
      002A3E 03                    6825 	.db	3
      002A3F 01                    6826 	.sleb128	1
      002A40 01                    6827 	.db	1
      002A41 09                    6828 	.db	9
      002A42 00 08                 6829 	.dw	7+Sstm8s_tim1$TI2_Config$731-Sstm8s_tim1$TI2_Config$730
      002A44 00                    6830 	.db	0
      002A45 01                    6831 	.uleb128	1
      002A46 01                    6832 	.db	1
      002A47 00                    6833 	.db	0
      002A48 05                    6834 	.uleb128	5
      002A49 02                    6835 	.db	2
      002A4A 00 00 A2 99           6836 	.dw	0,(Sstm8s_tim1$TI3_Config$733)
      002A4E 03                    6837 	.db	3
      002A4F CD 11                 6838 	.sleb128	2253
      002A51 01                    6839 	.db	1
      002A52 09                    6840 	.db	9
      002A53 00 0D                 6841 	.dw	Sstm8s_tim1$TI3_Config$735-Sstm8s_tim1$TI3_Config$733
      002A55 03                    6842 	.db	3
      002A56 05                    6843 	.sleb128	5
      002A57 01                    6844 	.db	1
      002A58 09                    6845 	.db	9
      002A59 00 04                 6846 	.dw	Sstm8s_tim1$TI3_Config$736-Sstm8s_tim1$TI3_Config$735
      002A5B 03                    6847 	.db	3
      002A5C 03                    6848 	.sleb128	3
      002A5D 01                    6849 	.db	1
      002A5E 09                    6850 	.db	9
      002A5F 00 08                 6851 	.dw	Sstm8s_tim1$TI3_Config$737-Sstm8s_tim1$TI3_Config$736
      002A61 03                    6852 	.db	3
      002A62 01                    6853 	.sleb128	1
      002A63 01                    6854 	.db	1
      002A64 09                    6855 	.db	9
      002A65 00 0D                 6856 	.dw	Sstm8s_tim1$TI3_Config$738-Sstm8s_tim1$TI3_Config$737
      002A67 03                    6857 	.db	3
      002A68 03                    6858 	.sleb128	3
      002A69 01                    6859 	.db	1
      002A6A 09                    6860 	.db	9
      002A6B 00 04                 6861 	.dw	Sstm8s_tim1$TI3_Config$739-Sstm8s_tim1$TI3_Config$738
      002A6D 03                    6862 	.db	3
      002A6E 02                    6863 	.sleb128	2
      002A6F 01                    6864 	.db	1
      002A70 09                    6865 	.db	9
      002A71 00 09                 6866 	.dw	Sstm8s_tim1$TI3_Config$740-Sstm8s_tim1$TI3_Config$739
      002A73 03                    6867 	.db	3
      002A74 04                    6868 	.sleb128	4
      002A75 01                    6869 	.db	1
      002A76 09                    6870 	.db	9
      002A77 00 07                 6871 	.dw	Sstm8s_tim1$TI3_Config$741-Sstm8s_tim1$TI3_Config$740
      002A79 03                    6872 	.db	3
      002A7A 03                    6873 	.sleb128	3
      002A7B 01                    6874 	.db	1
      002A7C 09                    6875 	.db	9
      002A7D 00 04                 6876 	.dw	Sstm8s_tim1$TI3_Config$742-Sstm8s_tim1$TI3_Config$741
      002A7F 03                    6877 	.db	3
      002A80 01                    6878 	.sleb128	1
      002A81 01                    6879 	.db	1
      002A82 09                    6880 	.db	9
      002A83 00 08                 6881 	.dw	7+Sstm8s_tim1$TI3_Config$743-Sstm8s_tim1$TI3_Config$742
      002A85 00                    6882 	.db	0
      002A86 01                    6883 	.uleb128	1
      002A87 01                    6884 	.db	1
      002A88 00                    6885 	.db	0
      002A89 05                    6886 	.uleb128	5
      002A8A 02                    6887 	.db	2
      002A8B 00 00 A2 DF           6888 	.dw	0,(Sstm8s_tim1$TI4_Config$745)
      002A8F 03                    6889 	.db	3
      002A90 F5 11                 6890 	.sleb128	2293
      002A92 01                    6891 	.db	1
      002A93 09                    6892 	.db	9
      002A94 00 0D                 6893 	.dw	Sstm8s_tim1$TI4_Config$747-Sstm8s_tim1$TI4_Config$745
      002A96 03                    6894 	.db	3
      002A97 05                    6895 	.sleb128	5
      002A98 01                    6896 	.db	1
      002A99 09                    6897 	.db	9
      002A9A 00 07                 6898 	.dw	Sstm8s_tim1$TI4_Config$748-Sstm8s_tim1$TI4_Config$747
      002A9C 03                    6899 	.db	3
      002A9D 03                    6900 	.sleb128	3
      002A9E 01                    6901 	.db	1
      002A9F 09                    6902 	.db	9
      002AA0 00 08                 6903 	.dw	Sstm8s_tim1$TI4_Config$749-Sstm8s_tim1$TI4_Config$748
      002AA2 03                    6904 	.db	3
      002AA3 01                    6905 	.sleb128	1
      002AA4 01                    6906 	.db	1
      002AA5 09                    6907 	.db	9
      002AA6 00 0D                 6908 	.dw	Sstm8s_tim1$TI4_Config$750-Sstm8s_tim1$TI4_Config$749
      002AA8 03                    6909 	.db	3
      002AA9 03                    6910 	.sleb128	3
      002AAA 01                    6911 	.db	1
      002AAB 09                    6912 	.db	9
      002AAC 00 04                 6913 	.dw	Sstm8s_tim1$TI4_Config$751-Sstm8s_tim1$TI4_Config$750
      002AAE 03                    6914 	.db	3
      002AAF 02                    6915 	.sleb128	2
      002AB0 01                    6916 	.db	1
      002AB1 09                    6917 	.db	9
      002AB2 00 09                 6918 	.dw	Sstm8s_tim1$TI4_Config$752-Sstm8s_tim1$TI4_Config$751
      002AB4 03                    6919 	.db	3
      002AB5 04                    6920 	.sleb128	4
      002AB6 01                    6921 	.db	1
      002AB7 09                    6922 	.db	9
      002AB8 00 07                 6923 	.dw	Sstm8s_tim1$TI4_Config$753-Sstm8s_tim1$TI4_Config$752
      002ABA 03                    6924 	.db	3
      002ABB 04                    6925 	.sleb128	4
      002ABC 01                    6926 	.db	1
      002ABD 09                    6927 	.db	9
      002ABE 00 07                 6928 	.dw	Sstm8s_tim1$TI4_Config$754-Sstm8s_tim1$TI4_Config$753
      002AC0 03                    6929 	.db	3
      002AC1 01                    6930 	.sleb128	1
      002AC2 01                    6931 	.db	1
      002AC3 09                    6932 	.db	9
      002AC4 00 08                 6933 	.dw	7+Sstm8s_tim1$TI4_Config$755-Sstm8s_tim1$TI4_Config$754
      002AC6 00                    6934 	.db	0
      002AC7 01                    6935 	.uleb128	1
      002AC8 01                    6936 	.db	1
      002AC9                       6937 Ldebug_line_end:
                                   6938 
                                   6939 	.area .debug_loc (NOLOAD)
      0005C8                       6940 Ldebug_loc_start:
      0005C8 00 00 A2 EB           6941 	.dw	0,(Sstm8s_tim1$TI4_Config$746)
      0005CC 00 00 A3 2B           6942 	.dw	0,(Sstm8s_tim1$TI4_Config$756)
      0005D0 00 02                 6943 	.dw	2
      0005D2 8F                    6944 	.db	143
      0005D3 01                    6945 	.sleb128	1
      0005D4 00 00 00 00           6946 	.dw	0,0
      0005D8 00 00 00 00           6947 	.dw	0,0
      0005DC 00 00 A2 A5           6948 	.dw	0,(Sstm8s_tim1$TI3_Config$734)
      0005E0 00 00 A2 DF           6949 	.dw	0,(Sstm8s_tim1$TI3_Config$744)
      0005E4 00 02                 6950 	.dw	2
      0005E6 8F                    6951 	.db	143
      0005E7 01                    6952 	.sleb128	1
      0005E8 00 00 00 00           6953 	.dw	0,0
      0005EC 00 00 00 00           6954 	.dw	0,0
      0005F0 00 00 A2 59           6955 	.dw	0,(Sstm8s_tim1$TI2_Config$722)
      0005F4 00 00 A2 99           6956 	.dw	0,(Sstm8s_tim1$TI2_Config$732)
      0005F8 00 02                 6957 	.dw	2
      0005FA 8F                    6958 	.db	143
      0005FB 01                    6959 	.sleb128	1
      0005FC 00 00 00 00           6960 	.dw	0,0
      000600 00 00 00 00           6961 	.dw	0,0
      000604 00 00 A2 13           6962 	.dw	0,(Sstm8s_tim1$TI1_Config$710)
      000608 00 00 A2 4D           6963 	.dw	0,(Sstm8s_tim1$TI1_Config$720)
      00060C 00 02                 6964 	.dw	2
      00060E 8F                    6965 	.db	143
      00060F 01                    6966 	.sleb128	1
      000610 00 00 00 00           6967 	.dw	0,0
      000614 00 00 00 00           6968 	.dw	0,0
      000618 00 00 A1 F9           6969 	.dw	0,(Sstm8s_tim1$TIM1_ClearITPendingBit$704)
      00061C 00 00 A2 07           6970 	.dw	0,(Sstm8s_tim1$TIM1_ClearITPendingBit$708)
      000620 00 02                 6971 	.dw	2
      000622 8F                    6972 	.db	143
      000623 01                    6973 	.sleb128	1
      000624 00 00 00 00           6974 	.dw	0,0
      000628 00 00 00 00           6975 	.dw	0,0
      00062C 00 00 A1 C9           6976 	.dw	0,(Sstm8s_tim1$TIM1_GetITStatus$693)
      000630 00 00 A1 ED           6977 	.dw	0,(Sstm8s_tim1$TIM1_GetITStatus$702)
      000634 00 02                 6978 	.dw	2
      000636 8F                    6979 	.db	143
      000637 01                    6980 	.sleb128	1
      000638 00 00 00 00           6981 	.dw	0,0
      00063C 00 00 00 00           6982 	.dw	0,0
      000640 00 00 A1 A0           6983 	.dw	0,(Sstm8s_tim1$TIM1_ClearFlag$686)
      000644 00 00 A1 BD           6984 	.dw	0,(Sstm8s_tim1$TIM1_ClearFlag$691)
      000648 00 02                 6985 	.dw	2
      00064A 8F                    6986 	.db	143
      00064B 01                    6987 	.sleb128	1
      00064C 00 00 00 00           6988 	.dw	0,0
      000650 00 00 00 00           6989 	.dw	0,0
      000654 00 00 A1 67           6990 	.dw	0,(Sstm8s_tim1$TIM1_GetFlagStatus$675)
      000658 00 00 A1 94           6991 	.dw	0,(Sstm8s_tim1$TIM1_GetFlagStatus$684)
      00065C 00 02                 6992 	.dw	2
      00065E 8F                    6993 	.db	143
      00065F 01                    6994 	.sleb128	1
      000660 00 00 00 00           6995 	.dw	0,0
      000664 00 00 00 00           6996 	.dw	0,0
      000668 00 00 A1 39           6997 	.dw	0,(Sstm8s_tim1$TIM1_GetPrescaler$668)
      00066C 00 00 A1 5B           6998 	.dw	0,(Sstm8s_tim1$TIM1_GetPrescaler$673)
      000670 00 02                 6999 	.dw	2
      000672 8F                    7000 	.db	143
      000673 01                    7001 	.sleb128	1
      000674 00 00 00 00           7002 	.dw	0,0
      000678 00 00 00 00           7003 	.dw	0,0
      00067C 00 00 A1 0B           7004 	.dw	0,(Sstm8s_tim1$TIM1_GetCounter$661)
      000680 00 00 A1 2D           7005 	.dw	0,(Sstm8s_tim1$TIM1_GetCounter$666)
      000684 00 02                 7006 	.dw	2
      000686 8F                    7007 	.db	143
      000687 01                    7008 	.sleb128	1
      000688 00 00 00 00           7009 	.dw	0,0
      00068C 00 00 00 00           7010 	.dw	0,0
      000690 00 00 A0 DB           7011 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture4$651)
      000694 00 00 A0 FF           7012 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture4$659)
      000698 00 02                 7013 	.dw	2
      00069A 8F                    7014 	.db	143
      00069B 01                    7015 	.sleb128	1
      00069C 00 00 00 00           7016 	.dw	0,0
      0006A0 00 00 00 00           7017 	.dw	0,0
      0006A4 00 00 A0 AB           7018 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture3$641)
      0006A8 00 00 A0 CF           7019 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture3$649)
      0006AC 00 02                 7020 	.dw	2
      0006AE 8F                    7021 	.db	143
      0006AF 01                    7022 	.sleb128	1
      0006B0 00 00 00 00           7023 	.dw	0,0
      0006B4 00 00 00 00           7024 	.dw	0,0
      0006B8 00 00 A0 7B           7025 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture2$631)
      0006BC 00 00 A0 9F           7026 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture2$639)
      0006C0 00 02                 7027 	.dw	2
      0006C2 8F                    7028 	.db	143
      0006C3 01                    7029 	.sleb128	1
      0006C4 00 00 00 00           7030 	.dw	0,0
      0006C8 00 00 00 00           7031 	.dw	0,0
      0006CC 00 00 A0 4B           7032 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture1$621)
      0006D0 00 00 A0 6F           7033 	.dw	0,(Sstm8s_tim1$TIM1_GetCapture1$629)
      0006D4 00 02                 7034 	.dw	2
      0006D6 8F                    7035 	.db	143
      0006D7 01                    7036 	.sleb128	1
      0006D8 00 00 00 00           7037 	.dw	0,0
      0006DC 00 00 00 00           7038 	.dw	0,0
      0006E0 00 00 A0 2C           7039 	.dw	0,(Sstm8s_tim1$TIM1_SetIC4Prescaler$614)
      0006E4 00 00 A0 3F           7040 	.dw	0,(Sstm8s_tim1$TIM1_SetIC4Prescaler$619)
      0006E8 00 02                 7041 	.dw	2
      0006EA 8F                    7042 	.db	143
      0006EB 01                    7043 	.sleb128	1
      0006EC 00 00 00 00           7044 	.dw	0,0
      0006F0 00 00 00 00           7045 	.dw	0,0
      0006F4 00 00 A0 0D           7046 	.dw	0,(Sstm8s_tim1$TIM1_SetIC3Prescaler$607)
      0006F8 00 00 A0 20           7047 	.dw	0,(Sstm8s_tim1$TIM1_SetIC3Prescaler$612)
      0006FC 00 02                 7048 	.dw	2
      0006FE 8F                    7049 	.db	143
      0006FF 01                    7050 	.sleb128	1
      000700 00 00 00 00           7051 	.dw	0,0
      000704 00 00 00 00           7052 	.dw	0,0
      000708 00 00 9F EE           7053 	.dw	0,(Sstm8s_tim1$TIM1_SetIC2Prescaler$600)
      00070C 00 00 A0 01           7054 	.dw	0,(Sstm8s_tim1$TIM1_SetIC2Prescaler$605)
      000710 00 02                 7055 	.dw	2
      000712 8F                    7056 	.db	143
      000713 01                    7057 	.sleb128	1
      000714 00 00 00 00           7058 	.dw	0,0
      000718 00 00 00 00           7059 	.dw	0,0
      00071C 00 00 9F CF           7060 	.dw	0,(Sstm8s_tim1$TIM1_SetIC1Prescaler$593)
      000720 00 00 9F E2           7061 	.dw	0,(Sstm8s_tim1$TIM1_SetIC1Prescaler$598)
      000724 00 02                 7062 	.dw	2
      000726 8F                    7063 	.db	143
      000727 01                    7064 	.sleb128	1
      000728 00 00 00 00           7065 	.dw	0,0
      00072C 00 00 00 00           7066 	.dw	0,0
      000730 00 00 9F AA           7067 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare4$586)
      000734 00 00 9F C3           7068 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare4$591)
      000738 00 02                 7069 	.dw	2
      00073A 8F                    7070 	.db	143
      00073B 01                    7071 	.sleb128	1
      00073C 00 00 00 00           7072 	.dw	0,0
      000740 00 00 00 00           7073 	.dw	0,0
      000744 00 00 9F 85           7074 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare3$579)
      000748 00 00 9F 9E           7075 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare3$584)
      00074C 00 02                 7076 	.dw	2
      00074E 8F                    7077 	.db	143
      00074F 01                    7078 	.sleb128	1
      000750 00 00 00 00           7079 	.dw	0,0
      000754 00 00 00 00           7080 	.dw	0,0
      000758 00 00 9F 60           7081 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare2$572)
      00075C 00 00 9F 79           7082 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare2$577)
      000760 00 02                 7083 	.dw	2
      000762 8F                    7084 	.db	143
      000763 01                    7085 	.sleb128	1
      000764 00 00 00 00           7086 	.dw	0,0
      000768 00 00 00 00           7087 	.dw	0,0
      00076C 00 00 9F 3B           7088 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare1$565)
      000770 00 00 9F 54           7089 	.dw	0,(Sstm8s_tim1$TIM1_SetCompare1$570)
      000774 00 02                 7090 	.dw	2
      000776 8F                    7091 	.db	143
      000777 01                    7092 	.sleb128	1
      000778 00 00 00 00           7093 	.dw	0,0
      00077C 00 00 00 00           7094 	.dw	0,0
      000780 00 00 9F 16           7095 	.dw	0,(Sstm8s_tim1$TIM1_SetAutoreload$558)
      000784 00 00 9F 2F           7096 	.dw	0,(Sstm8s_tim1$TIM1_SetAutoreload$563)
      000788 00 02                 7097 	.dw	2
      00078A 8F                    7098 	.db	143
      00078B 01                    7099 	.sleb128	1
      00078C 00 00 00 00           7100 	.dw	0,0
      000790 00 00 00 00           7101 	.dw	0,0
      000794 00 00 9E F1           7102 	.dw	0,(Sstm8s_tim1$TIM1_SetCounter$551)
      000798 00 00 9F 0A           7103 	.dw	0,(Sstm8s_tim1$TIM1_SetCounter$556)
      00079C 00 02                 7104 	.dw	2
      00079E 8F                    7105 	.db	143
      00079F 01                    7106 	.sleb128	1
      0007A0 00 00 00 00           7107 	.dw	0,0
      0007A4 00 00 00 00           7108 	.dw	0,0
      0007A8 00 00 9E 81           7109 	.dw	0,(Sstm8s_tim1$TIM1_SelectOCxM$531)
      0007AC 00 00 9E E5           7110 	.dw	0,(Sstm8s_tim1$TIM1_SelectOCxM$549)
      0007B0 00 02                 7111 	.dw	2
      0007B2 8F                    7112 	.db	143
      0007B3 01                    7113 	.sleb128	1
      0007B4 00 00 00 00           7114 	.dw	0,0
      0007B8 00 00 00 00           7115 	.dw	0,0
      0007BC 00 00 9E 24           7116 	.dw	0,(Sstm8s_tim1$TIM1_CCxNCmd$515)
      0007C0 00 00 9E 75           7117 	.dw	0,(Sstm8s_tim1$TIM1_CCxNCmd$529)
      0007C4 00 02                 7118 	.dw	2
      0007C6 8F                    7119 	.db	143
      0007C7 01                    7120 	.sleb128	1
      0007C8 00 00 00 00           7121 	.dw	0,0
      0007CC 00 00 00 00           7122 	.dw	0,0
      0007D0 00 00 9D B5           7123 	.dw	0,(Sstm8s_tim1$TIM1_CCxCmd$495)
      0007D4 00 00 9E 18           7124 	.dw	0,(Sstm8s_tim1$TIM1_CCxCmd$513)
      0007D8 00 02                 7125 	.dw	2
      0007DA 8F                    7126 	.db	143
      0007DB 01                    7127 	.sleb128	1
      0007DC 00 00 00 00           7128 	.dw	0,0
      0007E0 00 00 00 00           7129 	.dw	0,0
      0007E4 00 00 9D 8E           7130 	.dw	0,(Sstm8s_tim1$TIM1_OC4PolarityConfig$487)
      0007E8 00 00 9D A9           7131 	.dw	0,(Sstm8s_tim1$TIM1_OC4PolarityConfig$493)
      0007EC 00 02                 7132 	.dw	2
      0007EE 8F                    7133 	.db	143
      0007EF 01                    7134 	.sleb128	1
      0007F0 00 00 00 00           7135 	.dw	0,0
      0007F4 00 00 00 00           7136 	.dw	0,0
      0007F8 00 00 9D 67           7137 	.dw	0,(Sstm8s_tim1$TIM1_OC3NPolarityConfig$479)
      0007FC 00 00 9D 82           7138 	.dw	0,(Sstm8s_tim1$TIM1_OC3NPolarityConfig$485)
      000800 00 02                 7139 	.dw	2
      000802 8F                    7140 	.db	143
      000803 01                    7141 	.sleb128	1
      000804 00 00 00 00           7142 	.dw	0,0
      000808 00 00 00 00           7143 	.dw	0,0
      00080C 00 00 9D 40           7144 	.dw	0,(Sstm8s_tim1$TIM1_OC3PolarityConfig$471)
      000810 00 00 9D 5B           7145 	.dw	0,(Sstm8s_tim1$TIM1_OC3PolarityConfig$477)
      000814 00 02                 7146 	.dw	2
      000816 8F                    7147 	.db	143
      000817 01                    7148 	.sleb128	1
      000818 00 00 00 00           7149 	.dw	0,0
      00081C 00 00 00 00           7150 	.dw	0,0
      000820 00 00 9D 1F           7151 	.dw	0,(Sstm8s_tim1$TIM1_OC2NPolarityConfig$463)
      000824 00 00 9D 34           7152 	.dw	0,(Sstm8s_tim1$TIM1_OC2NPolarityConfig$469)
      000828 00 02                 7153 	.dw	2
      00082A 8F                    7154 	.db	143
      00082B 01                    7155 	.sleb128	1
      00082C 00 00 00 00           7156 	.dw	0,0
      000830 00 00 00 00           7157 	.dw	0,0
      000834 00 00 9C F8           7158 	.dw	0,(Sstm8s_tim1$TIM1_OC2PolarityConfig$455)
      000838 00 00 9D 13           7159 	.dw	0,(Sstm8s_tim1$TIM1_OC2PolarityConfig$461)
      00083C 00 02                 7160 	.dw	2
      00083E 8F                    7161 	.db	143
      00083F 01                    7162 	.sleb128	1
      000840 00 00 00 00           7163 	.dw	0,0
      000844 00 00 00 00           7164 	.dw	0,0
      000848 00 00 9C D1           7165 	.dw	0,(Sstm8s_tim1$TIM1_OC1NPolarityConfig$447)
      00084C 00 00 9C EC           7166 	.dw	0,(Sstm8s_tim1$TIM1_OC1NPolarityConfig$453)
      000850 00 02                 7167 	.dw	2
      000852 8F                    7168 	.db	143
      000853 01                    7169 	.sleb128	1
      000854 00 00 00 00           7170 	.dw	0,0
      000858 00 00 00 00           7171 	.dw	0,0
      00085C 00 00 9C AA           7172 	.dw	0,(Sstm8s_tim1$TIM1_OC1PolarityConfig$439)
      000860 00 00 9C C5           7173 	.dw	0,(Sstm8s_tim1$TIM1_OC1PolarityConfig$445)
      000864 00 02                 7174 	.dw	2
      000866 8F                    7175 	.db	143
      000867 01                    7176 	.sleb128	1
      000868 00 00 00 00           7177 	.dw	0,0
      00086C 00 00 00 00           7178 	.dw	0,0
      000870 00 00 9C 91           7179 	.dw	0,(Sstm8s_tim1$TIM1_GenerateEvent$433)
      000874 00 00 9C 9E           7180 	.dw	0,(Sstm8s_tim1$TIM1_GenerateEvent$437)
      000878 00 02                 7181 	.dw	2
      00087A 8F                    7182 	.db	143
      00087B 01                    7183 	.sleb128	1
      00087C 00 00 00 00           7184 	.dw	0,0
      000880 00 00 00 00           7185 	.dw	0,0
      000884 00 00 9C 6A           7186 	.dw	0,(Sstm8s_tim1$TIM1_OC4FastConfig$425)
      000888 00 00 9C 85           7187 	.dw	0,(Sstm8s_tim1$TIM1_OC4FastConfig$431)
      00088C 00 02                 7188 	.dw	2
      00088E 8F                    7189 	.db	143
      00088F 01                    7190 	.sleb128	1
      000890 00 00 00 00           7191 	.dw	0,0
      000894 00 00 00 00           7192 	.dw	0,0
      000898 00 00 9C 43           7193 	.dw	0,(Sstm8s_tim1$TIM1_OC3FastConfig$417)
      00089C 00 00 9C 5E           7194 	.dw	0,(Sstm8s_tim1$TIM1_OC3FastConfig$423)
      0008A0 00 02                 7195 	.dw	2
      0008A2 8F                    7196 	.db	143
      0008A3 01                    7197 	.sleb128	1
      0008A4 00 00 00 00           7198 	.dw	0,0
      0008A8 00 00 00 00           7199 	.dw	0,0
      0008AC 00 00 9C 1C           7200 	.dw	0,(Sstm8s_tim1$TIM1_OC2FastConfig$409)
      0008B0 00 00 9C 37           7201 	.dw	0,(Sstm8s_tim1$TIM1_OC2FastConfig$415)
      0008B4 00 02                 7202 	.dw	2
      0008B6 8F                    7203 	.db	143
      0008B7 01                    7204 	.sleb128	1
      0008B8 00 00 00 00           7205 	.dw	0,0
      0008BC 00 00 00 00           7206 	.dw	0,0
      0008C0 00 00 9B F5           7207 	.dw	0,(Sstm8s_tim1$TIM1_OC1FastConfig$401)
      0008C4 00 00 9C 10           7208 	.dw	0,(Sstm8s_tim1$TIM1_OC1FastConfig$407)
      0008C8 00 02                 7209 	.dw	2
      0008CA 8F                    7210 	.db	143
      0008CB 01                    7211 	.sleb128	1
      0008CC 00 00 00 00           7212 	.dw	0,0
      0008D0 00 00 00 00           7213 	.dw	0,0
      0008D4 00 00 9B CE           7214 	.dw	0,(Sstm8s_tim1$TIM1_OC4PreloadConfig$393)
      0008D8 00 00 9B E9           7215 	.dw	0,(Sstm8s_tim1$TIM1_OC4PreloadConfig$399)
      0008DC 00 02                 7216 	.dw	2
      0008DE 8F                    7217 	.db	143
      0008DF 01                    7218 	.sleb128	1
      0008E0 00 00 00 00           7219 	.dw	0,0
      0008E4 00 00 00 00           7220 	.dw	0,0
      0008E8 00 00 9B A7           7221 	.dw	0,(Sstm8s_tim1$TIM1_OC3PreloadConfig$385)
      0008EC 00 00 9B C2           7222 	.dw	0,(Sstm8s_tim1$TIM1_OC3PreloadConfig$391)
      0008F0 00 02                 7223 	.dw	2
      0008F2 8F                    7224 	.db	143
      0008F3 01                    7225 	.sleb128	1
      0008F4 00 00 00 00           7226 	.dw	0,0
      0008F8 00 00 00 00           7227 	.dw	0,0
      0008FC 00 00 9B 80           7228 	.dw	0,(Sstm8s_tim1$TIM1_OC2PreloadConfig$377)
      000900 00 00 9B 9B           7229 	.dw	0,(Sstm8s_tim1$TIM1_OC2PreloadConfig$383)
      000904 00 02                 7230 	.dw	2
      000906 8F                    7231 	.db	143
      000907 01                    7232 	.sleb128	1
      000908 00 00 00 00           7233 	.dw	0,0
      00090C 00 00 00 00           7234 	.dw	0,0
      000910 00 00 9B 59           7235 	.dw	0,(Sstm8s_tim1$TIM1_OC1PreloadConfig$369)
      000914 00 00 9B 74           7236 	.dw	0,(Sstm8s_tim1$TIM1_OC1PreloadConfig$375)
      000918 00 02                 7237 	.dw	2
      00091A 8F                    7238 	.db	143
      00091B 01                    7239 	.sleb128	1
      00091C 00 00 00 00           7240 	.dw	0,0
      000920 00 00 00 00           7241 	.dw	0,0
      000924 00 00 9B 38           7242 	.dw	0,(Sstm8s_tim1$TIM1_CCPreloadControl$361)
      000928 00 00 9B 4D           7243 	.dw	0,(Sstm8s_tim1$TIM1_CCPreloadControl$367)
      00092C 00 02                 7244 	.dw	2
      00092E 8F                    7245 	.db	143
      00092F 01                    7246 	.sleb128	1
      000930 00 00 00 00           7247 	.dw	0,0
      000934 00 00 00 00           7248 	.dw	0,0
      000938 00 00 9B 11           7249 	.dw	0,(Sstm8s_tim1$TIM1_SelectCOM$353)
      00093C 00 00 9B 2C           7250 	.dw	0,(Sstm8s_tim1$TIM1_SelectCOM$359)
      000940 00 02                 7251 	.dw	2
      000942 8F                    7252 	.db	143
      000943 01                    7253 	.sleb128	1
      000944 00 00 00 00           7254 	.dw	0,0
      000948 00 00 00 00           7255 	.dw	0,0
      00094C 00 00 9A F0           7256 	.dw	0,(Sstm8s_tim1$TIM1_ARRPreloadConfig$345)
      000950 00 00 9B 05           7257 	.dw	0,(Sstm8s_tim1$TIM1_ARRPreloadConfig$351)
      000954 00 02                 7258 	.dw	2
      000956 8F                    7259 	.db	143
      000957 01                    7260 	.sleb128	1
      000958 00 00 00 00           7261 	.dw	0,0
      00095C 00 00 00 00           7262 	.dw	0,0
      000960 00 00 9A D1           7263 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC4Config$338)
      000964 00 00 9A E4           7264 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC4Config$343)
      000968 00 02                 7265 	.dw	2
      00096A 8F                    7266 	.db	143
      00096B 01                    7267 	.sleb128	1
      00096C 00 00 00 00           7268 	.dw	0,0
      000970 00 00 00 00           7269 	.dw	0,0
      000974 00 00 9A B2           7270 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC3Config$331)
      000978 00 00 9A C5           7271 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC3Config$336)
      00097C 00 02                 7272 	.dw	2
      00097E 8F                    7273 	.db	143
      00097F 01                    7274 	.sleb128	1
      000980 00 00 00 00           7275 	.dw	0,0
      000984 00 00 00 00           7276 	.dw	0,0
      000988 00 00 9A 93           7277 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC2Config$324)
      00098C 00 00 9A A6           7278 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC2Config$329)
      000990 00 02                 7279 	.dw	2
      000992 8F                    7280 	.db	143
      000993 01                    7281 	.sleb128	1
      000994 00 00 00 00           7282 	.dw	0,0
      000998 00 00 00 00           7283 	.dw	0,0
      00099C 00 00 9A 74           7284 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC1Config$317)
      0009A0 00 00 9A 87           7285 	.dw	0,(Sstm8s_tim1$TIM1_ForcedOC1Config$322)
      0009A4 00 02                 7286 	.dw	2
      0009A6 8F                    7287 	.db	143
      0009A7 01                    7288 	.sleb128	1
      0009A8 00 00 00 00           7289 	.dw	0,0
      0009AC 00 00 00 00           7290 	.dw	0,0
      0009B0 00 00 9A 55           7291 	.dw	0,(Sstm8s_tim1$TIM1_CounterModeConfig$310)
      0009B4 00 00 9A 68           7292 	.dw	0,(Sstm8s_tim1$TIM1_CounterModeConfig$315)
      0009B8 00 02                 7293 	.dw	2
      0009BA 8F                    7294 	.db	143
      0009BB 01                    7295 	.sleb128	1
      0009BC 00 00 00 00           7296 	.dw	0,0
      0009C0 00 00 00 00           7297 	.dw	0,0
      0009C4 00 00 9A 2A           7298 	.dw	0,(Sstm8s_tim1$TIM1_PrescalerConfig$302)
      0009C8 00 00 9A 49           7299 	.dw	0,(Sstm8s_tim1$TIM1_PrescalerConfig$308)
      0009CC 00 02                 7300 	.dw	2
      0009CE 8F                    7301 	.db	143
      0009CF 01                    7302 	.sleb128	1
      0009D0 00 00 00 00           7303 	.dw	0,0
      0009D4 00 00 00 00           7304 	.dw	0,0
      0009D8 00 00 99 CB           7305 	.dw	0,(Sstm8s_tim1$TIM1_EncoderInterfaceConfig$287)
      0009DC 00 00 9A 1E           7306 	.dw	0,(Sstm8s_tim1$TIM1_EncoderInterfaceConfig$300)
      0009E0 00 02                 7307 	.dw	2
      0009E2 8F                    7308 	.db	143
      0009E3 01                    7309 	.sleb128	1
      0009E4 00 00 00 00           7310 	.dw	0,0
      0009E8 00 00 00 00           7311 	.dw	0,0
      0009EC 00 00 99 AA           7312 	.dw	0,(Sstm8s_tim1$TIM1_SelectMasterSlaveMode$279)
      0009F0 00 00 99 BF           7313 	.dw	0,(Sstm8s_tim1$TIM1_SelectMasterSlaveMode$285)
      0009F4 00 02                 7314 	.dw	2
      0009F6 8F                    7315 	.db	143
      0009F7 01                    7316 	.sleb128	1
      0009F8 00 00 00 00           7317 	.dw	0,0
      0009FC 00 00 00 00           7318 	.dw	0,0
      000A00 00 00 99 8B           7319 	.dw	0,(Sstm8s_tim1$TIM1_SelectSlaveMode$272)
      000A04 00 00 99 9E           7320 	.dw	0,(Sstm8s_tim1$TIM1_SelectSlaveMode$277)
      000A08 00 02                 7321 	.dw	2
      000A0A 8F                    7322 	.db	143
      000A0B 01                    7323 	.sleb128	1
      000A0C 00 00 00 00           7324 	.dw	0,0
      000A10 00 00 00 00           7325 	.dw	0,0
      000A14 00 00 99 6C           7326 	.dw	0,(Sstm8s_tim1$TIM1_SelectOutputTrigger$265)
      000A18 00 00 99 7F           7327 	.dw	0,(Sstm8s_tim1$TIM1_SelectOutputTrigger$270)
      000A1C 00 02                 7328 	.dw	2
      000A1E 8F                    7329 	.db	143
      000A1F 01                    7330 	.sleb128	1
      000A20 00 00 00 00           7331 	.dw	0,0
      000A24 00 00 00 00           7332 	.dw	0,0
      000A28 00 00 99 45           7333 	.dw	0,(Sstm8s_tim1$TIM1_SelectOnePulseMode$257)
      000A2C 00 00 99 60           7334 	.dw	0,(Sstm8s_tim1$TIM1_SelectOnePulseMode$263)
      000A30 00 02                 7335 	.dw	2
      000A32 8F                    7336 	.db	143
      000A33 01                    7337 	.sleb128	1
      000A34 00 00 00 00           7338 	.dw	0,0
      000A38 00 00 00 00           7339 	.dw	0,0
      000A3C 00 00 99 24           7340 	.dw	0,(Sstm8s_tim1$TIM1_SelectHallSensor$249)
      000A40 00 00 99 39           7341 	.dw	0,(Sstm8s_tim1$TIM1_SelectHallSensor$255)
      000A44 00 02                 7342 	.dw	2
      000A46 8F                    7343 	.db	143
      000A47 01                    7344 	.sleb128	1
      000A48 00 00 00 00           7345 	.dw	0,0
      000A4C 00 00 00 00           7346 	.dw	0,0
      000A50 00 00 98 FD           7347 	.dw	0,(Sstm8s_tim1$TIM1_UpdateRequestConfig$241)
      000A54 00 00 99 18           7348 	.dw	0,(Sstm8s_tim1$TIM1_UpdateRequestConfig$247)
      000A58 00 02                 7349 	.dw	2
      000A5A 8F                    7350 	.db	143
      000A5B 01                    7351 	.sleb128	1
      000A5C 00 00 00 00           7352 	.dw	0,0
      000A60 00 00 00 00           7353 	.dw	0,0
      000A64 00 00 98 D6           7354 	.dw	0,(Sstm8s_tim1$TIM1_UpdateDisableConfig$233)
      000A68 00 00 98 F1           7355 	.dw	0,(Sstm8s_tim1$TIM1_UpdateDisableConfig$239)
      000A6C 00 02                 7356 	.dw	2
      000A6E 8F                    7357 	.db	143
      000A6F 01                    7358 	.sleb128	1
      000A70 00 00 00 00           7359 	.dw	0,0
      000A74 00 00 00 00           7360 	.dw	0,0
      000A78 00 00 98 B7           7361 	.dw	0,(Sstm8s_tim1$TIM1_SelectInputTrigger$227)
      000A7C 00 00 98 CA           7362 	.dw	0,(Sstm8s_tim1$TIM1_SelectInputTrigger$231)
      000A80 00 02                 7363 	.dw	2
      000A82 8F                    7364 	.db	143
      000A83 01                    7365 	.sleb128	1
      000A84 00 00 00 00           7366 	.dw	0,0
      000A88 00 00 00 00           7367 	.dw	0,0
      000A8C 00 00 98 74           7368 	.dw	0,(Sstm8s_tim1$TIM1_TIxExternalClockConfig$217)
      000A90 00 00 98 AB           7369 	.dw	0,(Sstm8s_tim1$TIM1_TIxExternalClockConfig$225)
      000A94 00 02                 7370 	.dw	2
      000A96 8F                    7371 	.db	143
      000A97 01                    7372 	.sleb128	1
      000A98 00 00 00 00           7373 	.dw	0,0
      000A9C 00 00 00 00           7374 	.dw	0,0
      000AA0 00 00 98 4D           7375 	.dw	0,(Sstm8s_tim1$TIM1_ETRConfig$210)
      000AA4 00 00 98 68           7376 	.dw	0,(Sstm8s_tim1$TIM1_ETRConfig$215)
      000AA8 00 02                 7377 	.dw	2
      000AAA 8F                    7378 	.db	143
      000AAB 01                    7379 	.sleb128	1
      000AAC 00 00 00 00           7380 	.dw	0,0
      000AB0 00 00 00 00           7381 	.dw	0,0
      000AB4 00 00 98 25           7382 	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode2Config$203)
      000AB8 00 00 98 41           7383 	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode2Config$208)
      000ABC 00 02                 7384 	.dw	2
      000ABE 8F                    7385 	.db	143
      000ABF 01                    7386 	.sleb128	1
      000AC0 00 00 00 00           7387 	.dw	0,0
      000AC4 00 00 00 00           7388 	.dw	0,0
      000AC8 00 00 97 F8           7389 	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode1Config$196)
      000ACC 00 00 98 19           7390 	.dw	0,(Sstm8s_tim1$TIM1_ETRClockMode1Config$201)
      000AD0 00 02                 7391 	.dw	2
      000AD2 8F                    7392 	.db	143
      000AD3 01                    7393 	.sleb128	1
      000AD4 00 00 00 00           7394 	.dw	0,0
      000AD8 00 00 00 00           7395 	.dw	0,0
      000ADC 00 00 97 DE           7396 	.dw	0,(Sstm8s_tim1$TIM1_InternalClockConfig$190)
      000AE0 00 00 97 EC           7397 	.dw	0,(Sstm8s_tim1$TIM1_InternalClockConfig$194)
      000AE4 00 02                 7398 	.dw	2
      000AE6 8F                    7399 	.db	143
      000AE7 01                    7400 	.sleb128	1
      000AE8 00 00 00 00           7401 	.dw	0,0
      000AEC 00 00 00 00           7402 	.dw	0,0
      000AF0 00 00 97 AA           7403 	.dw	0,(Sstm8s_tim1$TIM1_ITConfig$182)
      000AF4 00 00 97 D2           7404 	.dw	0,(Sstm8s_tim1$TIM1_ITConfig$188)
      000AF8 00 02                 7405 	.dw	2
      000AFA 8F                    7406 	.db	143
      000AFB 01                    7407 	.sleb128	1
      000AFC 00 00 00 00           7408 	.dw	0,0
      000B00 00 00 00 00           7409 	.dw	0,0
      000B04 00 00 97 89           7410 	.dw	0,(Sstm8s_tim1$TIM1_CtrlPWMOutputs$174)
      000B08 00 00 97 9E           7411 	.dw	0,(Sstm8s_tim1$TIM1_CtrlPWMOutputs$180)
      000B0C 00 02                 7412 	.dw	2
      000B0E 8F                    7413 	.db	143
      000B0F 01                    7414 	.sleb128	1
      000B10 00 00 00 00           7415 	.dw	0,0
      000B14 00 00 00 00           7416 	.dw	0,0
      000B18 00 00 97 68           7417 	.dw	0,(Sstm8s_tim1$TIM1_Cmd$166)
      000B1C 00 00 97 7D           7418 	.dw	0,(Sstm8s_tim1$TIM1_Cmd$172)
      000B20 00 02                 7419 	.dw	2
      000B22 8F                    7420 	.db	143
      000B23 01                    7421 	.sleb128	1
      000B24 00 00 00 00           7422 	.dw	0,0
      000B28 00 00 00 00           7423 	.dw	0,0
      000B2C 00 00 96 D9           7424 	.dw	0,(Sstm8s_tim1$TIM1_PWMIConfig$146)
      000B30 00 00 97 5C           7425 	.dw	0,(Sstm8s_tim1$TIM1_PWMIConfig$164)
      000B34 00 02                 7426 	.dw	2
      000B36 8F                    7427 	.db	143
      000B37 01                    7428 	.sleb128	1
      000B38 00 00 00 00           7429 	.dw	0,0
      000B3C 00 00 00 00           7430 	.dw	0,0
      000B40 00 00 96 5C           7431 	.dw	0,(Sstm8s_tim1$TIM1_ICInit$130)
      000B44 00 00 96 CD           7432 	.dw	0,(Sstm8s_tim1$TIM1_ICInit$144)
      000B48 00 02                 7433 	.dw	2
      000B4A 8F                    7434 	.db	143
      000B4B 01                    7435 	.sleb128	1
      000B4C 00 00 00 00           7436 	.dw	0,0
      000B50 00 00 00 00           7437 	.dw	0,0
      000B54 00 00 96 2F           7438 	.dw	0,(Sstm8s_tim1$TIM1_BDTRConfig$121)
      000B58 00 00 96 50           7439 	.dw	0,(Sstm8s_tim1$TIM1_BDTRConfig$128)
      000B5C 00 02                 7440 	.dw	2
      000B5E 8F                    7441 	.db	143
      000B5F 01                    7442 	.sleb128	1
      000B60 00 00 00 00           7443 	.dw	0,0
      000B64 00 00 00 00           7444 	.dw	0,0
      000B68 00 00 95 CB           7445 	.dw	0,(Sstm8s_tim1$TIM1_OC4Init$107)
      000B6C 00 00 96 23           7446 	.dw	0,(Sstm8s_tim1$TIM1_OC4Init$119)
      000B70 00 02                 7447 	.dw	2
      000B72 8F                    7448 	.db	143
      000B73 01                    7449 	.sleb128	1
      000B74 00 00 00 00           7450 	.dw	0,0
      000B78 00 00 00 00           7451 	.dw	0,0
      000B7C 00 00 95 4C           7452 	.dw	0,(Sstm8s_tim1$TIM1_OC3Init$90)
      000B80 00 00 95 BF           7453 	.dw	0,(Sstm8s_tim1$TIM1_OC3Init$105)
      000B84 00 02                 7454 	.dw	2
      000B86 8F                    7455 	.db	143
      000B87 01                    7456 	.sleb128	1
      000B88 00 00 00 00           7457 	.dw	0,0
      000B8C 00 00 00 00           7458 	.dw	0,0
      000B90 00 00 94 CD           7459 	.dw	0,(Sstm8s_tim1$TIM1_OC2Init$73)
      000B94 00 00 95 40           7460 	.dw	0,(Sstm8s_tim1$TIM1_OC2Init$88)
      000B98 00 02                 7461 	.dw	2
      000B9A 8F                    7462 	.db	143
      000B9B 01                    7463 	.sleb128	1
      000B9C 00 00 00 00           7464 	.dw	0,0
      000BA0 00 00 00 00           7465 	.dw	0,0
      000BA4 00 00 94 4E           7466 	.dw	0,(Sstm8s_tim1$TIM1_OC1Init$56)
      000BA8 00 00 94 C1           7467 	.dw	0,(Sstm8s_tim1$TIM1_OC1Init$71)
      000BAC 00 02                 7468 	.dw	2
      000BAE 8F                    7469 	.db	143
      000BAF 01                    7470 	.sleb128	1
      000BB0 00 00 00 00           7471 	.dw	0,0
      000BB4 00 00 00 00           7472 	.dw	0,0
      000BB8 00 00 94 09           7473 	.dw	0,(Sstm8s_tim1$TIM1_TimeBaseInit$44)
      000BBC 00 00 94 42           7474 	.dw	0,(Sstm8s_tim1$TIM1_TimeBaseInit$54)
      000BC0 00 02                 7475 	.dw	2
      000BC2 8F                    7476 	.db	143
      000BC3 01                    7477 	.sleb128	1
      000BC4 00 00 00 00           7478 	.dw	0,0
      000BC8 00 00 00 00           7479 	.dw	0,0
      000BCC 00 00 93 5E           7480 	.dw	0,(Sstm8s_tim1$TIM1_DeInit$1)
      000BD0 00 00 93 FD           7481 	.dw	0,(Sstm8s_tim1$TIM1_DeInit$42)
      000BD4 00 02                 7482 	.dw	2
      000BD6 8F                    7483 	.db	143
      000BD7 01                    7484 	.sleb128	1
      000BD8 00 00 00 00           7485 	.dw	0,0
      000BDC 00 00 00 00           7486 	.dw	0,0
                                   7487 
                                   7488 	.area .debug_abbrev (NOLOAD)
      000348                       7489 Ldebug_abbrev:
      000348 0B                    7490 	.uleb128	11
      000349 34                    7491 	.uleb128	52
      00034A 00                    7492 	.db	0
      00034B 03                    7493 	.uleb128	3
      00034C 08                    7494 	.uleb128	8
      00034D 49                    7495 	.uleb128	73
      00034E 13                    7496 	.uleb128	19
      00034F 00                    7497 	.uleb128	0
      000350 00                    7498 	.uleb128	0
      000351 06                    7499 	.uleb128	6
      000352 0B                    7500 	.uleb128	11
      000353 00                    7501 	.db	0
      000354 00                    7502 	.uleb128	0
      000355 00                    7503 	.uleb128	0
      000356 09                    7504 	.uleb128	9
      000357 0B                    7505 	.uleb128	11
      000358 01                    7506 	.db	1
      000359 00                    7507 	.uleb128	0
      00035A 00                    7508 	.uleb128	0
      00035B 04                    7509 	.uleb128	4
      00035C 05                    7510 	.uleb128	5
      00035D 00                    7511 	.db	0
      00035E 02                    7512 	.uleb128	2
      00035F 0A                    7513 	.uleb128	10
      000360 03                    7514 	.uleb128	3
      000361 08                    7515 	.uleb128	8
      000362 49                    7516 	.uleb128	73
      000363 13                    7517 	.uleb128	19
      000364 00                    7518 	.uleb128	0
      000365 00                    7519 	.uleb128	0
      000366 03                    7520 	.uleb128	3
      000367 2E                    7521 	.uleb128	46
      000368 01                    7522 	.db	1
      000369 01                    7523 	.uleb128	1
      00036A 13                    7524 	.uleb128	19
      00036B 03                    7525 	.uleb128	3
      00036C 08                    7526 	.uleb128	8
      00036D 11                    7527 	.uleb128	17
      00036E 01                    7528 	.uleb128	1
      00036F 12                    7529 	.uleb128	18
      000370 01                    7530 	.uleb128	1
      000371 3F                    7531 	.uleb128	63
      000372 0C                    7532 	.uleb128	12
      000373 40                    7533 	.uleb128	64
      000374 06                    7534 	.uleb128	6
      000375 00                    7535 	.uleb128	0
      000376 00                    7536 	.uleb128	0
      000377 07                    7537 	.uleb128	7
      000378 34                    7538 	.uleb128	52
      000379 00                    7539 	.db	0
      00037A 02                    7540 	.uleb128	2
      00037B 0A                    7541 	.uleb128	10
      00037C 03                    7542 	.uleb128	3
      00037D 08                    7543 	.uleb128	8
      00037E 49                    7544 	.uleb128	73
      00037F 13                    7545 	.uleb128	19
      000380 00                    7546 	.uleb128	0
      000381 00                    7547 	.uleb128	0
      000382 0A                    7548 	.uleb128	10
      000383 2E                    7549 	.uleb128	46
      000384 01                    7550 	.db	1
      000385 01                    7551 	.uleb128	1
      000386 13                    7552 	.uleb128	19
      000387 03                    7553 	.uleb128	3
      000388 08                    7554 	.uleb128	8
      000389 11                    7555 	.uleb128	17
      00038A 01                    7556 	.uleb128	1
      00038B 12                    7557 	.uleb128	18
      00038C 01                    7558 	.uleb128	1
      00038D 3F                    7559 	.uleb128	63
      00038E 0C                    7560 	.uleb128	12
      00038F 40                    7561 	.uleb128	64
      000390 06                    7562 	.uleb128	6
      000391 49                    7563 	.uleb128	73
      000392 13                    7564 	.uleb128	19
      000393 00                    7565 	.uleb128	0
      000394 00                    7566 	.uleb128	0
      000395 08                    7567 	.uleb128	8
      000396 0B                    7568 	.uleb128	11
      000397 01                    7569 	.db	1
      000398 01                    7570 	.uleb128	1
      000399 13                    7571 	.uleb128	19
      00039A 00                    7572 	.uleb128	0
      00039B 00                    7573 	.uleb128	0
      00039C 01                    7574 	.uleb128	1
      00039D 11                    7575 	.uleb128	17
      00039E 01                    7576 	.db	1
      00039F 03                    7577 	.uleb128	3
      0003A0 08                    7578 	.uleb128	8
      0003A1 10                    7579 	.uleb128	16
      0003A2 06                    7580 	.uleb128	6
      0003A3 13                    7581 	.uleb128	19
      0003A4 0B                    7582 	.uleb128	11
      0003A5 25                    7583 	.uleb128	37
      0003A6 08                    7584 	.uleb128	8
      0003A7 00                    7585 	.uleb128	0
      0003A8 00                    7586 	.uleb128	0
      0003A9 02                    7587 	.uleb128	2
      0003AA 2E                    7588 	.uleb128	46
      0003AB 00                    7589 	.db	0
      0003AC 03                    7590 	.uleb128	3
      0003AD 08                    7591 	.uleb128	8
      0003AE 11                    7592 	.uleb128	17
      0003AF 01                    7593 	.uleb128	1
      0003B0 12                    7594 	.uleb128	18
      0003B1 01                    7595 	.uleb128	1
      0003B2 3F                    7596 	.uleb128	63
      0003B3 0C                    7597 	.uleb128	12
      0003B4 40                    7598 	.uleb128	64
      0003B5 06                    7599 	.uleb128	6
      0003B6 00                    7600 	.uleb128	0
      0003B7 00                    7601 	.uleb128	0
      0003B8 0C                    7602 	.uleb128	12
      0003B9 2E                    7603 	.uleb128	46
      0003BA 01                    7604 	.db	1
      0003BB 03                    7605 	.uleb128	3
      0003BC 08                    7606 	.uleb128	8
      0003BD 11                    7607 	.uleb128	17
      0003BE 01                    7608 	.uleb128	1
      0003BF 12                    7609 	.uleb128	18
      0003C0 01                    7610 	.uleb128	1
      0003C1 3F                    7611 	.uleb128	63
      0003C2 0C                    7612 	.uleb128	12
      0003C3 40                    7613 	.uleb128	64
      0003C4 06                    7614 	.uleb128	6
      0003C5 00                    7615 	.uleb128	0
      0003C6 00                    7616 	.uleb128	0
      0003C7 05                    7617 	.uleb128	5
      0003C8 24                    7618 	.uleb128	36
      0003C9 00                    7619 	.db	0
      0003CA 03                    7620 	.uleb128	3
      0003CB 08                    7621 	.uleb128	8
      0003CC 0B                    7622 	.uleb128	11
      0003CD 0B                    7623 	.uleb128	11
      0003CE 3E                    7624 	.uleb128	62
      0003CF 0B                    7625 	.uleb128	11
      0003D0 00                    7626 	.uleb128	0
      0003D1 00                    7627 	.uleb128	0
      0003D2 00                    7628 	.uleb128	0
                                   7629 
                                   7630 	.area .debug_info (NOLOAD)
      001765 00 00 19 CC           7631 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001769                       7632 Ldebug_info_start:
      001769 00 02                 7633 	.dw	2
      00176B 00 00 03 48           7634 	.dw	0,(Ldebug_abbrev)
      00176F 04                    7635 	.db	4
      001770 01                    7636 	.uleb128	1
      001771 53 74 64 50 65 72 69  7637 	.ascii "StdPeriphLib/src/stm8s_tim1.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69 6D 31 2E
             63
      00178E 00                    7638 	.db	0
      00178F 00 00 1A 0B           7639 	.dw	0,(Ldebug_line_start+-4)
      001793 01                    7640 	.db	1
      001794 53 44 43 43 20 76 65  7641 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      0017AC 00                    7642 	.db	0
      0017AD 02                    7643 	.uleb128	2
      0017AE 54 49 4D 31 5F 44 65  7644 	.ascii "TIM1_DeInit"
             49 6E 69 74
      0017B9 00                    7645 	.db	0
      0017BA 00 00 93 52           7646 	.dw	0,(_TIM1_DeInit)
      0017BE 00 00 93 FD           7647 	.dw	0,(XG$TIM1_DeInit$0$0+7)
      0017C2 01                    7648 	.db	1
      0017C3 00 00 0B CC           7649 	.dw	0,(Ldebug_loc_start+1540)
      0017C7 03                    7650 	.uleb128	3
      0017C8 00 00 00 EA           7651 	.dw	0,234
      0017CC 54 49 4D 31 5F 54 69  7652 	.ascii "TIM1_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      0017DD 00                    7653 	.db	0
      0017DE 00 00 93 FD           7654 	.dw	0,(_TIM1_TimeBaseInit)
      0017E2 00 00 94 42           7655 	.dw	0,(XG$TIM1_TimeBaseInit$0$0+7)
      0017E6 01                    7656 	.db	1
      0017E7 00 00 0B B8           7657 	.dw	0,(Ldebug_loc_start+1520)
      0017EB 04                    7658 	.uleb128	4
      0017EC 02                    7659 	.db	2
      0017ED 91                    7660 	.db	145
      0017EE 04                    7661 	.sleb128	4
      0017EF 54 49 4D 31 5F 50 72  7662 	.ascii "TIM1_Prescaler"
             65 73 63 61 6C 65 72
      0017FD 00                    7663 	.db	0
      0017FE 00 00 00 EA           7664 	.dw	0,234
      001802 04                    7665 	.uleb128	4
      001803 02                    7666 	.db	2
      001804 91                    7667 	.db	145
      001805 06                    7668 	.sleb128	6
      001806 54 49 4D 31 5F 43 6F  7669 	.ascii "TIM1_CounterMode"
             75 6E 74 65 72 4D 6F
             64 65
      001816 00                    7670 	.db	0
      001817 00 00 00 FA           7671 	.dw	0,250
      00181B 04                    7672 	.uleb128	4
      00181C 02                    7673 	.db	2
      00181D 91                    7674 	.db	145
      00181E 07                    7675 	.sleb128	7
      00181F 54 49 4D 31 5F 50 65  7676 	.ascii "TIM1_Period"
             72 69 6F 64
      00182A 00                    7677 	.db	0
      00182B 00 00 00 EA           7678 	.dw	0,234
      00182F 04                    7679 	.uleb128	4
      001830 02                    7680 	.db	2
      001831 91                    7681 	.db	145
      001832 09                    7682 	.sleb128	9
      001833 54 49 4D 31 5F 52 65  7683 	.ascii "TIM1_RepetitionCounter"
             70 65 74 69 74 69 6F
             6E 43 6F 75 6E 74 65
             72
      001849 00                    7684 	.db	0
      00184A 00 00 00 FA           7685 	.dw	0,250
      00184E 00                    7686 	.uleb128	0
      00184F 05                    7687 	.uleb128	5
      001850 75 6E 73 69 67 6E 65  7688 	.ascii "unsigned int"
             64 20 69 6E 74
      00185C 00                    7689 	.db	0
      00185D 02                    7690 	.db	2
      00185E 07                    7691 	.db	7
      00185F 05                    7692 	.uleb128	5
      001860 75 6E 73 69 67 6E 65  7693 	.ascii "unsigned char"
             64 20 63 68 61 72
      00186D 00                    7694 	.db	0
      00186E 01                    7695 	.db	1
      00186F 08                    7696 	.db	8
      001870 03                    7697 	.uleb128	3
      001871 00 00 01 E9           7698 	.dw	0,489
      001875 54 49 4D 31 5F 4F 43  7699 	.ascii "TIM1_OC1Init"
             31 49 6E 69 74
      001881 00                    7700 	.db	0
      001882 00 00 94 42           7701 	.dw	0,(_TIM1_OC1Init)
      001886 00 00 94 C1           7702 	.dw	0,(XG$TIM1_OC1Init$0$0+7)
      00188A 01                    7703 	.db	1
      00188B 00 00 0B A4           7704 	.dw	0,(Ldebug_loc_start+1500)
      00188F 04                    7705 	.uleb128	4
      001890 02                    7706 	.db	2
      001891 91                    7707 	.db	145
      001892 04                    7708 	.sleb128	4
      001893 54 49 4D 31 5F 4F 43  7709 	.ascii "TIM1_OCMode"
             4D 6F 64 65
      00189E 00                    7710 	.db	0
      00189F 00 00 00 FA           7711 	.dw	0,250
      0018A3 04                    7712 	.uleb128	4
      0018A4 02                    7713 	.db	2
      0018A5 91                    7714 	.db	145
      0018A6 05                    7715 	.sleb128	5
      0018A7 54 49 4D 31 5F 4F 75  7716 	.ascii "TIM1_OutputState"
             74 70 75 74 53 74 61
             74 65
      0018B7 00                    7717 	.db	0
      0018B8 00 00 00 FA           7718 	.dw	0,250
      0018BC 04                    7719 	.uleb128	4
      0018BD 02                    7720 	.db	2
      0018BE 91                    7721 	.db	145
      0018BF 06                    7722 	.sleb128	6
      0018C0 54 49 4D 31 5F 4F 75  7723 	.ascii "TIM1_OutputNState"
             74 70 75 74 4E 53 74
             61 74 65
      0018D1 00                    7724 	.db	0
      0018D2 00 00 00 FA           7725 	.dw	0,250
      0018D6 04                    7726 	.uleb128	4
      0018D7 02                    7727 	.db	2
      0018D8 91                    7728 	.db	145
      0018D9 07                    7729 	.sleb128	7
      0018DA 54 49 4D 31 5F 50 75  7730 	.ascii "TIM1_Pulse"
             6C 73 65
      0018E4 00                    7731 	.db	0
      0018E5 00 00 00 EA           7732 	.dw	0,234
      0018E9 04                    7733 	.uleb128	4
      0018EA 02                    7734 	.db	2
      0018EB 91                    7735 	.db	145
      0018EC 09                    7736 	.sleb128	9
      0018ED 54 49 4D 31 5F 4F 43  7737 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      0018FC 00                    7738 	.db	0
      0018FD 00 00 00 FA           7739 	.dw	0,250
      001901 04                    7740 	.uleb128	4
      001902 02                    7741 	.db	2
      001903 91                    7742 	.db	145
      001904 0A                    7743 	.sleb128	10
      001905 54 49 4D 31 5F 4F 43  7744 	.ascii "TIM1_OCNPolarity"
             4E 50 6F 6C 61 72 69
             74 79
      001915 00                    7745 	.db	0
      001916 00 00 00 FA           7746 	.dw	0,250
      00191A 04                    7747 	.uleb128	4
      00191B 02                    7748 	.db	2
      00191C 91                    7749 	.db	145
      00191D 0B                    7750 	.sleb128	11
      00191E 54 49 4D 31 5F 4F 43  7751 	.ascii "TIM1_OCIdleState"
             49 64 6C 65 53 74 61
             74 65
      00192E 00                    7752 	.db	0
      00192F 00 00 00 FA           7753 	.dw	0,250
      001933 04                    7754 	.uleb128	4
      001934 02                    7755 	.db	2
      001935 91                    7756 	.db	145
      001936 0C                    7757 	.sleb128	12
      001937 54 49 4D 31 5F 4F 43  7758 	.ascii "TIM1_OCNIdleState"
             4E 49 64 6C 65 53 74
             61 74 65
      001948 00                    7759 	.db	0
      001949 00 00 00 FA           7760 	.dw	0,250
      00194D 00                    7761 	.uleb128	0
      00194E 03                    7762 	.uleb128	3
      00194F 00 00 02 C7           7763 	.dw	0,711
      001953 54 49 4D 31 5F 4F 43  7764 	.ascii "TIM1_OC2Init"
             32 49 6E 69 74
      00195F 00                    7765 	.db	0
      001960 00 00 94 C1           7766 	.dw	0,(_TIM1_OC2Init)
      001964 00 00 95 40           7767 	.dw	0,(XG$TIM1_OC2Init$0$0+7)
      001968 01                    7768 	.db	1
      001969 00 00 0B 90           7769 	.dw	0,(Ldebug_loc_start+1480)
      00196D 04                    7770 	.uleb128	4
      00196E 02                    7771 	.db	2
      00196F 91                    7772 	.db	145
      001970 04                    7773 	.sleb128	4
      001971 54 49 4D 31 5F 4F 43  7774 	.ascii "TIM1_OCMode"
             4D 6F 64 65
      00197C 00                    7775 	.db	0
      00197D 00 00 00 FA           7776 	.dw	0,250
      001981 04                    7777 	.uleb128	4
      001982 02                    7778 	.db	2
      001983 91                    7779 	.db	145
      001984 05                    7780 	.sleb128	5
      001985 54 49 4D 31 5F 4F 75  7781 	.ascii "TIM1_OutputState"
             74 70 75 74 53 74 61
             74 65
      001995 00                    7782 	.db	0
      001996 00 00 00 FA           7783 	.dw	0,250
      00199A 04                    7784 	.uleb128	4
      00199B 02                    7785 	.db	2
      00199C 91                    7786 	.db	145
      00199D 06                    7787 	.sleb128	6
      00199E 54 49 4D 31 5F 4F 75  7788 	.ascii "TIM1_OutputNState"
             74 70 75 74 4E 53 74
             61 74 65
      0019AF 00                    7789 	.db	0
      0019B0 00 00 00 FA           7790 	.dw	0,250
      0019B4 04                    7791 	.uleb128	4
      0019B5 02                    7792 	.db	2
      0019B6 91                    7793 	.db	145
      0019B7 07                    7794 	.sleb128	7
      0019B8 54 49 4D 31 5F 50 75  7795 	.ascii "TIM1_Pulse"
             6C 73 65
      0019C2 00                    7796 	.db	0
      0019C3 00 00 00 EA           7797 	.dw	0,234
      0019C7 04                    7798 	.uleb128	4
      0019C8 02                    7799 	.db	2
      0019C9 91                    7800 	.db	145
      0019CA 09                    7801 	.sleb128	9
      0019CB 54 49 4D 31 5F 4F 43  7802 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      0019DA 00                    7803 	.db	0
      0019DB 00 00 00 FA           7804 	.dw	0,250
      0019DF 04                    7805 	.uleb128	4
      0019E0 02                    7806 	.db	2
      0019E1 91                    7807 	.db	145
      0019E2 0A                    7808 	.sleb128	10
      0019E3 54 49 4D 31 5F 4F 43  7809 	.ascii "TIM1_OCNPolarity"
             4E 50 6F 6C 61 72 69
             74 79
      0019F3 00                    7810 	.db	0
      0019F4 00 00 00 FA           7811 	.dw	0,250
      0019F8 04                    7812 	.uleb128	4
      0019F9 02                    7813 	.db	2
      0019FA 91                    7814 	.db	145
      0019FB 0B                    7815 	.sleb128	11
      0019FC 54 49 4D 31 5F 4F 43  7816 	.ascii "TIM1_OCIdleState"
             49 64 6C 65 53 74 61
             74 65
      001A0C 00                    7817 	.db	0
      001A0D 00 00 00 FA           7818 	.dw	0,250
      001A11 04                    7819 	.uleb128	4
      001A12 02                    7820 	.db	2
      001A13 91                    7821 	.db	145
      001A14 0C                    7822 	.sleb128	12
      001A15 54 49 4D 31 5F 4F 43  7823 	.ascii "TIM1_OCNIdleState"
             4E 49 64 6C 65 53 74
             61 74 65
      001A26 00                    7824 	.db	0
      001A27 00 00 00 FA           7825 	.dw	0,250
      001A2B 00                    7826 	.uleb128	0
      001A2C 03                    7827 	.uleb128	3
      001A2D 00 00 03 A5           7828 	.dw	0,933
      001A31 54 49 4D 31 5F 4F 43  7829 	.ascii "TIM1_OC3Init"
             33 49 6E 69 74
      001A3D 00                    7830 	.db	0
      001A3E 00 00 95 40           7831 	.dw	0,(_TIM1_OC3Init)
      001A42 00 00 95 BF           7832 	.dw	0,(XG$TIM1_OC3Init$0$0+7)
      001A46 01                    7833 	.db	1
      001A47 00 00 0B 7C           7834 	.dw	0,(Ldebug_loc_start+1460)
      001A4B 04                    7835 	.uleb128	4
      001A4C 02                    7836 	.db	2
      001A4D 91                    7837 	.db	145
      001A4E 04                    7838 	.sleb128	4
      001A4F 54 49 4D 31 5F 4F 43  7839 	.ascii "TIM1_OCMode"
             4D 6F 64 65
      001A5A 00                    7840 	.db	0
      001A5B 00 00 00 FA           7841 	.dw	0,250
      001A5F 04                    7842 	.uleb128	4
      001A60 02                    7843 	.db	2
      001A61 91                    7844 	.db	145
      001A62 05                    7845 	.sleb128	5
      001A63 54 49 4D 31 5F 4F 75  7846 	.ascii "TIM1_OutputState"
             74 70 75 74 53 74 61
             74 65
      001A73 00                    7847 	.db	0
      001A74 00 00 00 FA           7848 	.dw	0,250
      001A78 04                    7849 	.uleb128	4
      001A79 02                    7850 	.db	2
      001A7A 91                    7851 	.db	145
      001A7B 06                    7852 	.sleb128	6
      001A7C 54 49 4D 31 5F 4F 75  7853 	.ascii "TIM1_OutputNState"
             74 70 75 74 4E 53 74
             61 74 65
      001A8D 00                    7854 	.db	0
      001A8E 00 00 00 FA           7855 	.dw	0,250
      001A92 04                    7856 	.uleb128	4
      001A93 02                    7857 	.db	2
      001A94 91                    7858 	.db	145
      001A95 07                    7859 	.sleb128	7
      001A96 54 49 4D 31 5F 50 75  7860 	.ascii "TIM1_Pulse"
             6C 73 65
      001AA0 00                    7861 	.db	0
      001AA1 00 00 00 EA           7862 	.dw	0,234
      001AA5 04                    7863 	.uleb128	4
      001AA6 02                    7864 	.db	2
      001AA7 91                    7865 	.db	145
      001AA8 09                    7866 	.sleb128	9
      001AA9 54 49 4D 31 5F 4F 43  7867 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      001AB8 00                    7868 	.db	0
      001AB9 00 00 00 FA           7869 	.dw	0,250
      001ABD 04                    7870 	.uleb128	4
      001ABE 02                    7871 	.db	2
      001ABF 91                    7872 	.db	145
      001AC0 0A                    7873 	.sleb128	10
      001AC1 54 49 4D 31 5F 4F 43  7874 	.ascii "TIM1_OCNPolarity"
             4E 50 6F 6C 61 72 69
             74 79
      001AD1 00                    7875 	.db	0
      001AD2 00 00 00 FA           7876 	.dw	0,250
      001AD6 04                    7877 	.uleb128	4
      001AD7 02                    7878 	.db	2
      001AD8 91                    7879 	.db	145
      001AD9 0B                    7880 	.sleb128	11
      001ADA 54 49 4D 31 5F 4F 43  7881 	.ascii "TIM1_OCIdleState"
             49 64 6C 65 53 74 61
             74 65
      001AEA 00                    7882 	.db	0
      001AEB 00 00 00 FA           7883 	.dw	0,250
      001AEF 04                    7884 	.uleb128	4
      001AF0 02                    7885 	.db	2
      001AF1 91                    7886 	.db	145
      001AF2 0C                    7887 	.sleb128	12
      001AF3 54 49 4D 31 5F 4F 43  7888 	.ascii "TIM1_OCNIdleState"
             4E 49 64 6C 65 53 74
             61 74 65
      001B04 00                    7889 	.db	0
      001B05 00 00 00 FA           7890 	.dw	0,250
      001B09 00                    7891 	.uleb128	0
      001B0A 03                    7892 	.uleb128	3
      001B0B 00 00 04 38           7893 	.dw	0,1080
      001B0F 54 49 4D 31 5F 4F 43  7894 	.ascii "TIM1_OC4Init"
             34 49 6E 69 74
      001B1B 00                    7895 	.db	0
      001B1C 00 00 95 BF           7896 	.dw	0,(_TIM1_OC4Init)
      001B20 00 00 96 23           7897 	.dw	0,(XG$TIM1_OC4Init$0$0+7)
      001B24 01                    7898 	.db	1
      001B25 00 00 0B 68           7899 	.dw	0,(Ldebug_loc_start+1440)
      001B29 04                    7900 	.uleb128	4
      001B2A 02                    7901 	.db	2
      001B2B 91                    7902 	.db	145
      001B2C 04                    7903 	.sleb128	4
      001B2D 54 49 4D 31 5F 4F 43  7904 	.ascii "TIM1_OCMode"
             4D 6F 64 65
      001B38 00                    7905 	.db	0
      001B39 00 00 00 FA           7906 	.dw	0,250
      001B3D 04                    7907 	.uleb128	4
      001B3E 02                    7908 	.db	2
      001B3F 91                    7909 	.db	145
      001B40 05                    7910 	.sleb128	5
      001B41 54 49 4D 31 5F 4F 75  7911 	.ascii "TIM1_OutputState"
             74 70 75 74 53 74 61
             74 65
      001B51 00                    7912 	.db	0
      001B52 00 00 00 FA           7913 	.dw	0,250
      001B56 04                    7914 	.uleb128	4
      001B57 02                    7915 	.db	2
      001B58 91                    7916 	.db	145
      001B59 06                    7917 	.sleb128	6
      001B5A 54 49 4D 31 5F 50 75  7918 	.ascii "TIM1_Pulse"
             6C 73 65
      001B64 00                    7919 	.db	0
      001B65 00 00 00 EA           7920 	.dw	0,234
      001B69 04                    7921 	.uleb128	4
      001B6A 02                    7922 	.db	2
      001B6B 91                    7923 	.db	145
      001B6C 08                    7924 	.sleb128	8
      001B6D 54 49 4D 31 5F 4F 43  7925 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      001B7C 00                    7926 	.db	0
      001B7D 00 00 00 FA           7927 	.dw	0,250
      001B81 04                    7928 	.uleb128	4
      001B82 02                    7929 	.db	2
      001B83 91                    7930 	.db	145
      001B84 09                    7931 	.sleb128	9
      001B85 54 49 4D 31 5F 4F 43  7932 	.ascii "TIM1_OCIdleState"
             49 64 6C 65 53 74 61
             74 65
      001B95 00                    7933 	.db	0
      001B96 00 00 00 FA           7934 	.dw	0,250
      001B9A 06                    7935 	.uleb128	6
      001B9B 06                    7936 	.uleb128	6
      001B9C 00                    7937 	.uleb128	0
      001B9D 03                    7938 	.uleb128	3
      001B9E 00 00 04 EA           7939 	.dw	0,1258
      001BA2 54 49 4D 31 5F 42 44  7940 	.ascii "TIM1_BDTRConfig"
             54 52 43 6F 6E 66 69
             67
      001BB1 00                    7941 	.db	0
      001BB2 00 00 96 23           7942 	.dw	0,(_TIM1_BDTRConfig)
      001BB6 00 00 96 50           7943 	.dw	0,(XG$TIM1_BDTRConfig$0$0+7)
      001BBA 01                    7944 	.db	1
      001BBB 00 00 0B 54           7945 	.dw	0,(Ldebug_loc_start+1420)
      001BBF 04                    7946 	.uleb128	4
      001BC0 02                    7947 	.db	2
      001BC1 91                    7948 	.db	145
      001BC2 04                    7949 	.sleb128	4
      001BC3 54 49 4D 31 5F 4F 53  7950 	.ascii "TIM1_OSSIState"
             53 49 53 74 61 74 65
      001BD1 00                    7951 	.db	0
      001BD2 00 00 00 FA           7952 	.dw	0,250
      001BD6 04                    7953 	.uleb128	4
      001BD7 02                    7954 	.db	2
      001BD8 91                    7955 	.db	145
      001BD9 05                    7956 	.sleb128	5
      001BDA 54 49 4D 31 5F 4C 6F  7957 	.ascii "TIM1_LockLevel"
             63 6B 4C 65 76 65 6C
      001BE8 00                    7958 	.db	0
      001BE9 00 00 00 FA           7959 	.dw	0,250
      001BED 04                    7960 	.uleb128	4
      001BEE 02                    7961 	.db	2
      001BEF 91                    7962 	.db	145
      001BF0 06                    7963 	.sleb128	6
      001BF1 54 49 4D 31 5F 44 65  7964 	.ascii "TIM1_DeadTime"
             61 64 54 69 6D 65
      001BFE 00                    7965 	.db	0
      001BFF 00 00 00 FA           7966 	.dw	0,250
      001C03 04                    7967 	.uleb128	4
      001C04 02                    7968 	.db	2
      001C05 91                    7969 	.db	145
      001C06 07                    7970 	.sleb128	7
      001C07 54 49 4D 31 5F 42 72  7971 	.ascii "TIM1_Break"
             65 61 6B
      001C11 00                    7972 	.db	0
      001C12 00 00 00 FA           7973 	.dw	0,250
      001C16 04                    7974 	.uleb128	4
      001C17 02                    7975 	.db	2
      001C18 91                    7976 	.db	145
      001C19 08                    7977 	.sleb128	8
      001C1A 54 49 4D 31 5F 42 72  7978 	.ascii "TIM1_BreakPolarity"
             65 61 6B 50 6F 6C 61
             72 69 74 79
      001C2C 00                    7979 	.db	0
      001C2D 00 00 00 FA           7980 	.dw	0,250
      001C31 04                    7981 	.uleb128	4
      001C32 02                    7982 	.db	2
      001C33 91                    7983 	.db	145
      001C34 09                    7984 	.sleb128	9
      001C35 54 49 4D 31 5F 41 75  7985 	.ascii "TIM1_AutomaticOutput"
             74 6F 6D 61 74 69 63
             4F 75 74 70 75 74
      001C49 00                    7986 	.db	0
      001C4A 00 00 00 FA           7987 	.dw	0,250
      001C4E 00                    7988 	.uleb128	0
      001C4F 03                    7989 	.uleb128	3
      001C50 00 00 05 82           7990 	.dw	0,1410
      001C54 54 49 4D 31 5F 49 43  7991 	.ascii "TIM1_ICInit"
             49 6E 69 74
      001C5F 00                    7992 	.db	0
      001C60 00 00 96 50           7993 	.dw	0,(_TIM1_ICInit)
      001C64 00 00 96 CD           7994 	.dw	0,(XG$TIM1_ICInit$0$0+7)
      001C68 01                    7995 	.db	1
      001C69 00 00 0B 40           7996 	.dw	0,(Ldebug_loc_start+1400)
      001C6D 04                    7997 	.uleb128	4
      001C6E 02                    7998 	.db	2
      001C6F 91                    7999 	.db	145
      001C70 04                    8000 	.sleb128	4
      001C71 54 49 4D 31 5F 43 68  8001 	.ascii "TIM1_Channel"
             61 6E 6E 65 6C
      001C7D 00                    8002 	.db	0
      001C7E 00 00 00 FA           8003 	.dw	0,250
      001C82 04                    8004 	.uleb128	4
      001C83 02                    8005 	.db	2
      001C84 91                    8006 	.db	145
      001C85 05                    8007 	.sleb128	5
      001C86 54 49 4D 31 5F 49 43  8008 	.ascii "TIM1_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      001C95 00                    8009 	.db	0
      001C96 00 00 00 FA           8010 	.dw	0,250
      001C9A 04                    8011 	.uleb128	4
      001C9B 02                    8012 	.db	2
      001C9C 91                    8013 	.db	145
      001C9D 06                    8014 	.sleb128	6
      001C9E 54 49 4D 31 5F 49 43  8015 	.ascii "TIM1_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      001CAE 00                    8016 	.db	0
      001CAF 00 00 00 FA           8017 	.dw	0,250
      001CB3 04                    8018 	.uleb128	4
      001CB4 02                    8019 	.db	2
      001CB5 91                    8020 	.db	145
      001CB6 07                    8021 	.sleb128	7
      001CB7 54 49 4D 31 5F 49 43  8022 	.ascii "TIM1_ICPrescaler"
             50 72 65 73 63 61 6C
             65 72
      001CC7 00                    8023 	.db	0
      001CC8 00 00 00 FA           8024 	.dw	0,250
      001CCC 04                    8025 	.uleb128	4
      001CCD 02                    8026 	.db	2
      001CCE 91                    8027 	.db	145
      001CCF 08                    8028 	.sleb128	8
      001CD0 54 49 4D 31 5F 49 43  8029 	.ascii "TIM1_ICFilter"
             46 69 6C 74 65 72
      001CDD 00                    8030 	.db	0
      001CDE 00 00 00 FA           8031 	.dw	0,250
      001CE2 06                    8032 	.uleb128	6
      001CE3 06                    8033 	.uleb128	6
      001CE4 06                    8034 	.uleb128	6
      001CE5 06                    8035 	.uleb128	6
      001CE6 00                    8036 	.uleb128	0
      001CE7 03                    8037 	.uleb128	3
      001CE8 00 00 06 47           8038 	.dw	0,1607
      001CEC 54 49 4D 31 5F 50 57  8039 	.ascii "TIM1_PWMIConfig"
             4D 49 43 6F 6E 66 69
             67
      001CFB 00                    8040 	.db	0
      001CFC 00 00 96 CD           8041 	.dw	0,(_TIM1_PWMIConfig)
      001D00 00 00 97 5C           8042 	.dw	0,(XG$TIM1_PWMIConfig$0$0+7)
      001D04 01                    8043 	.db	1
      001D05 00 00 0B 2C           8044 	.dw	0,(Ldebug_loc_start+1380)
      001D09 04                    8045 	.uleb128	4
      001D0A 02                    8046 	.db	2
      001D0B 91                    8047 	.db	145
      001D0C 04                    8048 	.sleb128	4
      001D0D 54 49 4D 31 5F 43 68  8049 	.ascii "TIM1_Channel"
             61 6E 6E 65 6C
      001D19 00                    8050 	.db	0
      001D1A 00 00 00 FA           8051 	.dw	0,250
      001D1E 04                    8052 	.uleb128	4
      001D1F 02                    8053 	.db	2
      001D20 91                    8054 	.db	145
      001D21 05                    8055 	.sleb128	5
      001D22 54 49 4D 31 5F 49 43  8056 	.ascii "TIM1_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      001D31 00                    8057 	.db	0
      001D32 00 00 00 FA           8058 	.dw	0,250
      001D36 04                    8059 	.uleb128	4
      001D37 02                    8060 	.db	2
      001D38 91                    8061 	.db	145
      001D39 06                    8062 	.sleb128	6
      001D3A 54 49 4D 31 5F 49 43  8063 	.ascii "TIM1_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      001D4A 00                    8064 	.db	0
      001D4B 00 00 00 FA           8065 	.dw	0,250
      001D4F 04                    8066 	.uleb128	4
      001D50 02                    8067 	.db	2
      001D51 91                    8068 	.db	145
      001D52 07                    8069 	.sleb128	7
      001D53 54 49 4D 31 5F 49 43  8070 	.ascii "TIM1_ICPrescaler"
             50 72 65 73 63 61 6C
             65 72
      001D63 00                    8071 	.db	0
      001D64 00 00 00 FA           8072 	.dw	0,250
      001D68 04                    8073 	.uleb128	4
      001D69 02                    8074 	.db	2
      001D6A 91                    8075 	.db	145
      001D6B 08                    8076 	.sleb128	8
      001D6C 54 49 4D 31 5F 49 43  8077 	.ascii "TIM1_ICFilter"
             46 69 6C 74 65 72
      001D79 00                    8078 	.db	0
      001D7A 00 00 00 FA           8079 	.dw	0,250
      001D7E 06                    8080 	.uleb128	6
      001D7F 06                    8081 	.uleb128	6
      001D80 06                    8082 	.uleb128	6
      001D81 06                    8083 	.uleb128	6
      001D82 06                    8084 	.uleb128	6
      001D83 06                    8085 	.uleb128	6
      001D84 07                    8086 	.uleb128	7
      001D85 02                    8087 	.db	2
      001D86 91                    8088 	.db	145
      001D87 7F                    8089 	.sleb128	-1
      001D88 69 63 70 6F 6C 61 72  8090 	.ascii "icpolarity"
             69 74 79
      001D92 00                    8091 	.db	0
      001D93 00 00 00 FA           8092 	.dw	0,250
      001D97 07                    8093 	.uleb128	7
      001D98 02                    8094 	.db	2
      001D99 91                    8095 	.db	145
      001D9A 7E                    8096 	.sleb128	-2
      001D9B 69 63 73 65 6C 65 63  8097 	.ascii "icselection"
             74 69 6F 6E
      001DA6 00                    8098 	.db	0
      001DA7 00 00 00 FA           8099 	.dw	0,250
      001DAB 00                    8100 	.uleb128	0
      001DAC 03                    8101 	.uleb128	3
      001DAD 00 00 06 76           8102 	.dw	0,1654
      001DB1 54 49 4D 31 5F 43 6D  8103 	.ascii "TIM1_Cmd"
             64
      001DB9 00                    8104 	.db	0
      001DBA 00 00 97 5C           8105 	.dw	0,(_TIM1_Cmd)
      001DBE 00 00 97 7D           8106 	.dw	0,(XG$TIM1_Cmd$0$0+7)
      001DC2 01                    8107 	.db	1
      001DC3 00 00 0B 18           8108 	.dw	0,(Ldebug_loc_start+1360)
      001DC7 04                    8109 	.uleb128	4
      001DC8 02                    8110 	.db	2
      001DC9 91                    8111 	.db	145
      001DCA 04                    8112 	.sleb128	4
      001DCB 4E 65 77 53 74 61 74  8113 	.ascii "NewState"
             65
      001DD3 00                    8114 	.db	0
      001DD4 00 00 00 FA           8115 	.dw	0,250
      001DD8 06                    8116 	.uleb128	6
      001DD9 06                    8117 	.uleb128	6
      001DDA 00                    8118 	.uleb128	0
      001DDB 03                    8119 	.uleb128	3
      001DDC 00 00 06 B0           8120 	.dw	0,1712
      001DE0 54 49 4D 31 5F 43 74  8121 	.ascii "TIM1_CtrlPWMOutputs"
             72 6C 50 57 4D 4F 75
             74 70 75 74 73
      001DF3 00                    8122 	.db	0
      001DF4 00 00 97 7D           8123 	.dw	0,(_TIM1_CtrlPWMOutputs)
      001DF8 00 00 97 9E           8124 	.dw	0,(XG$TIM1_CtrlPWMOutputs$0$0+7)
      001DFC 01                    8125 	.db	1
      001DFD 00 00 0B 04           8126 	.dw	0,(Ldebug_loc_start+1340)
      001E01 04                    8127 	.uleb128	4
      001E02 02                    8128 	.db	2
      001E03 91                    8129 	.db	145
      001E04 04                    8130 	.sleb128	4
      001E05 4E 65 77 53 74 61 74  8131 	.ascii "NewState"
             65
      001E0D 00                    8132 	.db	0
      001E0E 00 00 00 FA           8133 	.dw	0,250
      001E12 06                    8134 	.uleb128	6
      001E13 06                    8135 	.uleb128	6
      001E14 00                    8136 	.uleb128	0
      001E15 03                    8137 	.uleb128	3
      001E16 00 00 06 F4           8138 	.dw	0,1780
      001E1A 54 49 4D 31 5F 49 54  8139 	.ascii "TIM1_ITConfig"
             43 6F 6E 66 69 67
      001E27 00                    8140 	.db	0
      001E28 00 00 97 9E           8141 	.dw	0,(_TIM1_ITConfig)
      001E2C 00 00 97 D2           8142 	.dw	0,(XG$TIM1_ITConfig$0$0+7)
      001E30 01                    8143 	.db	1
      001E31 00 00 0A F0           8144 	.dw	0,(Ldebug_loc_start+1320)
      001E35 04                    8145 	.uleb128	4
      001E36 02                    8146 	.db	2
      001E37 91                    8147 	.db	145
      001E38 04                    8148 	.sleb128	4
      001E39 54 49 4D 31 5F 49 54  8149 	.ascii "TIM1_IT"
      001E40 00                    8150 	.db	0
      001E41 00 00 00 FA           8151 	.dw	0,250
      001E45 04                    8152 	.uleb128	4
      001E46 02                    8153 	.db	2
      001E47 91                    8154 	.db	145
      001E48 05                    8155 	.sleb128	5
      001E49 4E 65 77 53 74 61 74  8156 	.ascii "NewState"
             65
      001E51 00                    8157 	.db	0
      001E52 00 00 00 FA           8158 	.dw	0,250
      001E56 06                    8159 	.uleb128	6
      001E57 06                    8160 	.uleb128	6
      001E58 00                    8161 	.uleb128	0
      001E59 02                    8162 	.uleb128	2
      001E5A 54 49 4D 31 5F 49 6E  8163 	.ascii "TIM1_InternalClockConfig"
             74 65 72 6E 61 6C 43
             6C 6F 63 6B 43 6F 6E
             66 69 67
      001E72 00                    8164 	.db	0
      001E73 00 00 97 D2           8165 	.dw	0,(_TIM1_InternalClockConfig)
      001E77 00 00 97 EC           8166 	.dw	0,(XG$TIM1_InternalClockConfig$0$0+7)
      001E7B 01                    8167 	.db	1
      001E7C 00 00 0A DC           8168 	.dw	0,(Ldebug_loc_start+1300)
      001E80 03                    8169 	.uleb128	3
      001E81 00 00 07 95           8170 	.dw	0,1941
      001E85 54 49 4D 31 5F 45 54  8171 	.ascii "TIM1_ETRClockMode1Config"
             52 43 6C 6F 63 6B 4D
             6F 64 65 31 43 6F 6E
             66 69 67
      001E9D 00                    8172 	.db	0
      001E9E 00 00 97 EC           8173 	.dw	0,(_TIM1_ETRClockMode1Config)
      001EA2 00 00 98 19           8174 	.dw	0,(XG$TIM1_ETRClockMode1Config$0$0+7)
      001EA6 01                    8175 	.db	1
      001EA7 00 00 0A C8           8176 	.dw	0,(Ldebug_loc_start+1280)
      001EAB 04                    8177 	.uleb128	4
      001EAC 02                    8178 	.db	2
      001EAD 91                    8179 	.db	145
      001EAE 04                    8180 	.sleb128	4
      001EAF 54 49 4D 31 5F 45 78  8181 	.ascii "TIM1_ExtTRGPrescaler"
             74 54 52 47 50 72 65
             73 63 61 6C 65 72
      001EC3 00                    8182 	.db	0
      001EC4 00 00 00 FA           8183 	.dw	0,250
      001EC8 04                    8184 	.uleb128	4
      001EC9 02                    8185 	.db	2
      001ECA 91                    8186 	.db	145
      001ECB 05                    8187 	.sleb128	5
      001ECC 54 49 4D 31 5F 45 78  8188 	.ascii "TIM1_ExtTRGPolarity"
             74 54 52 47 50 6F 6C
             61 72 69 74 79
      001EDF 00                    8189 	.db	0
      001EE0 00 00 00 FA           8190 	.dw	0,250
      001EE4 04                    8191 	.uleb128	4
      001EE5 02                    8192 	.db	2
      001EE6 91                    8193 	.db	145
      001EE7 06                    8194 	.sleb128	6
      001EE8 45 78 74 54 52 47 46  8195 	.ascii "ExtTRGFilter"
             69 6C 74 65 72
      001EF4 00                    8196 	.db	0
      001EF5 00 00 00 FA           8197 	.dw	0,250
      001EF9 00                    8198 	.uleb128	0
      001EFA 03                    8199 	.uleb128	3
      001EFB 00 00 08 0F           8200 	.dw	0,2063
      001EFF 54 49 4D 31 5F 45 54  8201 	.ascii "TIM1_ETRClockMode2Config"
             52 43 6C 6F 63 6B 4D
             6F 64 65 32 43 6F 6E
             66 69 67
      001F17 00                    8202 	.db	0
      001F18 00 00 98 19           8203 	.dw	0,(_TIM1_ETRClockMode2Config)
      001F1C 00 00 98 41           8204 	.dw	0,(XG$TIM1_ETRClockMode2Config$0$0+7)
      001F20 01                    8205 	.db	1
      001F21 00 00 0A B4           8206 	.dw	0,(Ldebug_loc_start+1260)
      001F25 04                    8207 	.uleb128	4
      001F26 02                    8208 	.db	2
      001F27 91                    8209 	.db	145
      001F28 04                    8210 	.sleb128	4
      001F29 54 49 4D 31 5F 45 78  8211 	.ascii "TIM1_ExtTRGPrescaler"
             74 54 52 47 50 72 65
             73 63 61 6C 65 72
      001F3D 00                    8212 	.db	0
      001F3E 00 00 00 FA           8213 	.dw	0,250
      001F42 04                    8214 	.uleb128	4
      001F43 02                    8215 	.db	2
      001F44 91                    8216 	.db	145
      001F45 05                    8217 	.sleb128	5
      001F46 54 49 4D 31 5F 45 78  8218 	.ascii "TIM1_ExtTRGPolarity"
             74 54 52 47 50 6F 6C
             61 72 69 74 79
      001F59 00                    8219 	.db	0
      001F5A 00 00 00 FA           8220 	.dw	0,250
      001F5E 04                    8221 	.uleb128	4
      001F5F 02                    8222 	.db	2
      001F60 91                    8223 	.db	145
      001F61 06                    8224 	.sleb128	6
      001F62 45 78 74 54 52 47 46  8225 	.ascii "ExtTRGFilter"
             69 6C 74 65 72
      001F6E 00                    8226 	.db	0
      001F6F 00 00 00 FA           8227 	.dw	0,250
      001F73 00                    8228 	.uleb128	0
      001F74 03                    8229 	.uleb128	3
      001F75 00 00 08 7F           8230 	.dw	0,2175
      001F79 54 49 4D 31 5F 45 54  8231 	.ascii "TIM1_ETRConfig"
             52 43 6F 6E 66 69 67
      001F87 00                    8232 	.db	0
      001F88 00 00 98 41           8233 	.dw	0,(_TIM1_ETRConfig)
      001F8C 00 00 98 68           8234 	.dw	0,(XG$TIM1_ETRConfig$0$0+7)
      001F90 01                    8235 	.db	1
      001F91 00 00 0A A0           8236 	.dw	0,(Ldebug_loc_start+1240)
      001F95 04                    8237 	.uleb128	4
      001F96 02                    8238 	.db	2
      001F97 91                    8239 	.db	145
      001F98 04                    8240 	.sleb128	4
      001F99 54 49 4D 31 5F 45 78  8241 	.ascii "TIM1_ExtTRGPrescaler"
             74 54 52 47 50 72 65
             73 63 61 6C 65 72
      001FAD 00                    8242 	.db	0
      001FAE 00 00 00 FA           8243 	.dw	0,250
      001FB2 04                    8244 	.uleb128	4
      001FB3 02                    8245 	.db	2
      001FB4 91                    8246 	.db	145
      001FB5 05                    8247 	.sleb128	5
      001FB6 54 49 4D 31 5F 45 78  8248 	.ascii "TIM1_ExtTRGPolarity"
             74 54 52 47 50 6F 6C
             61 72 69 74 79
      001FC9 00                    8249 	.db	0
      001FCA 00 00 00 FA           8250 	.dw	0,250
      001FCE 04                    8251 	.uleb128	4
      001FCF 02                    8252 	.db	2
      001FD0 91                    8253 	.db	145
      001FD1 06                    8254 	.sleb128	6
      001FD2 45 78 74 54 52 47 46  8255 	.ascii "ExtTRGFilter"
             69 6C 74 65 72
      001FDE 00                    8256 	.db	0
      001FDF 00 00 00 FA           8257 	.dw	0,250
      001FE3 00                    8258 	.uleb128	0
      001FE4 03                    8259 	.uleb128	3
      001FE5 00 00 08 FB           8260 	.dw	0,2299
      001FE9 54 49 4D 31 5F 54 49  8261 	.ascii "TIM1_TIxExternalClockConfig"
             78 45 78 74 65 72 6E
             61 6C 43 6C 6F 63 6B
             43 6F 6E 66 69 67
      002004 00                    8262 	.db	0
      002005 00 00 98 68           8263 	.dw	0,(_TIM1_TIxExternalClockConfig)
      002009 00 00 98 AB           8264 	.dw	0,(XG$TIM1_TIxExternalClockConfig$0$0+7)
      00200D 01                    8265 	.db	1
      00200E 00 00 0A 8C           8266 	.dw	0,(Ldebug_loc_start+1220)
      002012 04                    8267 	.uleb128	4
      002013 02                    8268 	.db	2
      002014 91                    8269 	.db	145
      002015 04                    8270 	.sleb128	4
      002016 54 49 4D 31 5F 54 49  8271 	.ascii "TIM1_TIxExternalCLKSource"
             78 45 78 74 65 72 6E
             61 6C 43 4C 4B 53 6F
             75 72 63 65
      00202F 00                    8272 	.db	0
      002030 00 00 00 FA           8273 	.dw	0,250
      002034 04                    8274 	.uleb128	4
      002035 02                    8275 	.db	2
      002036 91                    8276 	.db	145
      002037 05                    8277 	.sleb128	5
      002038 54 49 4D 31 5F 49 43  8278 	.ascii "TIM1_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      002047 00                    8279 	.db	0
      002048 00 00 00 FA           8280 	.dw	0,250
      00204C 04                    8281 	.uleb128	4
      00204D 02                    8282 	.db	2
      00204E 91                    8283 	.db	145
      00204F 06                    8284 	.sleb128	6
      002050 49 43 46 69 6C 74 65  8285 	.ascii "ICFilter"
             72
      002058 00                    8286 	.db	0
      002059 00 00 00 FA           8287 	.dw	0,250
      00205D 06                    8288 	.uleb128	6
      00205E 06                    8289 	.uleb128	6
      00205F 00                    8290 	.uleb128	0
      002060 03                    8291 	.uleb128	3
      002061 00 00 09 46           8292 	.dw	0,2374
      002065 54 49 4D 31 5F 53 65  8293 	.ascii "TIM1_SelectInputTrigger"
             6C 65 63 74 49 6E 70
             75 74 54 72 69 67 67
             65 72
      00207C 00                    8294 	.db	0
      00207D 00 00 98 AB           8295 	.dw	0,(_TIM1_SelectInputTrigger)
      002081 00 00 98 CA           8296 	.dw	0,(XG$TIM1_SelectInputTrigger$0$0+7)
      002085 01                    8297 	.db	1
      002086 00 00 0A 78           8298 	.dw	0,(Ldebug_loc_start+1200)
      00208A 04                    8299 	.uleb128	4
      00208B 02                    8300 	.db	2
      00208C 91                    8301 	.db	145
      00208D 04                    8302 	.sleb128	4
      00208E 54 49 4D 31 5F 49 6E  8303 	.ascii "TIM1_InputTriggerSource"
             70 75 74 54 72 69 67
             67 65 72 53 6F 75 72
             63 65
      0020A5 00                    8304 	.db	0
      0020A6 00 00 00 FA           8305 	.dw	0,250
      0020AA 00                    8306 	.uleb128	0
      0020AB 03                    8307 	.uleb128	3
      0020AC 00 00 09 85           8308 	.dw	0,2437
      0020B0 54 49 4D 31 5F 55 70  8309 	.ascii "TIM1_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      0020C8 00                    8310 	.db	0
      0020C9 00 00 98 CA           8311 	.dw	0,(_TIM1_UpdateDisableConfig)
      0020CD 00 00 98 F1           8312 	.dw	0,(XG$TIM1_UpdateDisableConfig$0$0+7)
      0020D1 01                    8313 	.db	1
      0020D2 00 00 0A 64           8314 	.dw	0,(Ldebug_loc_start+1180)
      0020D6 04                    8315 	.uleb128	4
      0020D7 02                    8316 	.db	2
      0020D8 91                    8317 	.db	145
      0020D9 04                    8318 	.sleb128	4
      0020DA 4E 65 77 53 74 61 74  8319 	.ascii "NewState"
             65
      0020E2 00                    8320 	.db	0
      0020E3 00 00 00 FA           8321 	.dw	0,250
      0020E7 06                    8322 	.uleb128	6
      0020E8 06                    8323 	.uleb128	6
      0020E9 00                    8324 	.uleb128	0
      0020EA 03                    8325 	.uleb128	3
      0020EB 00 00 09 CD           8326 	.dw	0,2509
      0020EF 54 49 4D 31 5F 55 70  8327 	.ascii "TIM1_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      002107 00                    8328 	.db	0
      002108 00 00 98 F1           8329 	.dw	0,(_TIM1_UpdateRequestConfig)
      00210C 00 00 99 18           8330 	.dw	0,(XG$TIM1_UpdateRequestConfig$0$0+7)
      002110 01                    8331 	.db	1
      002111 00 00 0A 50           8332 	.dw	0,(Ldebug_loc_start+1160)
      002115 04                    8333 	.uleb128	4
      002116 02                    8334 	.db	2
      002117 91                    8335 	.db	145
      002118 04                    8336 	.sleb128	4
      002119 54 49 4D 31 5F 55 70  8337 	.ascii "TIM1_UpdateSource"
             64 61 74 65 53 6F 75
             72 63 65
      00212A 00                    8338 	.db	0
      00212B 00 00 00 FA           8339 	.dw	0,250
      00212F 06                    8340 	.uleb128	6
      002130 06                    8341 	.uleb128	6
      002131 00                    8342 	.uleb128	0
      002132 03                    8343 	.uleb128	3
      002133 00 00 0A 09           8344 	.dw	0,2569
      002137 54 49 4D 31 5F 53 65  8345 	.ascii "TIM1_SelectHallSensor"
             6C 65 63 74 48 61 6C
             6C 53 65 6E 73 6F 72
      00214C 00                    8346 	.db	0
      00214D 00 00 99 18           8347 	.dw	0,(_TIM1_SelectHallSensor)
      002151 00 00 99 39           8348 	.dw	0,(XG$TIM1_SelectHallSensor$0$0+7)
      002155 01                    8349 	.db	1
      002156 00 00 0A 3C           8350 	.dw	0,(Ldebug_loc_start+1140)
      00215A 04                    8351 	.uleb128	4
      00215B 02                    8352 	.db	2
      00215C 91                    8353 	.db	145
      00215D 04                    8354 	.sleb128	4
      00215E 4E 65 77 53 74 61 74  8355 	.ascii "NewState"
             65
      002166 00                    8356 	.db	0
      002167 00 00 00 FA           8357 	.dw	0,250
      00216B 06                    8358 	.uleb128	6
      00216C 06                    8359 	.uleb128	6
      00216D 00                    8360 	.uleb128	0
      00216E 03                    8361 	.uleb128	3
      00216F 00 00 0A 4A           8362 	.dw	0,2634
      002173 54 49 4D 31 5F 53 65  8363 	.ascii "TIM1_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      00218A 00                    8364 	.db	0
      00218B 00 00 99 39           8365 	.dw	0,(_TIM1_SelectOnePulseMode)
      00218F 00 00 99 60           8366 	.dw	0,(XG$TIM1_SelectOnePulseMode$0$0+7)
      002193 01                    8367 	.db	1
      002194 00 00 0A 28           8368 	.dw	0,(Ldebug_loc_start+1120)
      002198 04                    8369 	.uleb128	4
      002199 02                    8370 	.db	2
      00219A 91                    8371 	.db	145
      00219B 04                    8372 	.sleb128	4
      00219C 54 49 4D 31 5F 4F 50  8373 	.ascii "TIM1_OPMode"
             4D 6F 64 65
      0021A7 00                    8374 	.db	0
      0021A8 00 00 00 FA           8375 	.dw	0,250
      0021AC 06                    8376 	.uleb128	6
      0021AD 06                    8377 	.uleb128	6
      0021AE 00                    8378 	.uleb128	0
      0021AF 03                    8379 	.uleb128	3
      0021B0 00 00 0A 8E           8380 	.dw	0,2702
      0021B4 54 49 4D 31 5F 53 65  8381 	.ascii "TIM1_SelectOutputTrigger"
             6C 65 63 74 4F 75 74
             70 75 74 54 72 69 67
             67 65 72
      0021CC 00                    8382 	.db	0
      0021CD 00 00 99 60           8383 	.dw	0,(_TIM1_SelectOutputTrigger)
      0021D1 00 00 99 7F           8384 	.dw	0,(XG$TIM1_SelectOutputTrigger$0$0+7)
      0021D5 01                    8385 	.db	1
      0021D6 00 00 0A 14           8386 	.dw	0,(Ldebug_loc_start+1100)
      0021DA 04                    8387 	.uleb128	4
      0021DB 02                    8388 	.db	2
      0021DC 91                    8389 	.db	145
      0021DD 04                    8390 	.sleb128	4
      0021DE 54 49 4D 31 5F 54 52  8391 	.ascii "TIM1_TRGOSource"
             47 4F 53 6F 75 72 63
             65
      0021ED 00                    8392 	.db	0
      0021EE 00 00 00 FA           8393 	.dw	0,250
      0021F2 00                    8394 	.uleb128	0
      0021F3 03                    8395 	.uleb128	3
      0021F4 00 00 0A CD           8396 	.dw	0,2765
      0021F8 54 49 4D 31 5F 53 65  8397 	.ascii "TIM1_SelectSlaveMode"
             6C 65 63 74 53 6C 61
             76 65 4D 6F 64 65
      00220C 00                    8398 	.db	0
      00220D 00 00 99 7F           8399 	.dw	0,(_TIM1_SelectSlaveMode)
      002211 00 00 99 9E           8400 	.dw	0,(XG$TIM1_SelectSlaveMode$0$0+7)
      002215 01                    8401 	.db	1
      002216 00 00 0A 00           8402 	.dw	0,(Ldebug_loc_start+1080)
      00221A 04                    8403 	.uleb128	4
      00221B 02                    8404 	.db	2
      00221C 91                    8405 	.db	145
      00221D 04                    8406 	.sleb128	4
      00221E 54 49 4D 31 5F 53 6C  8407 	.ascii "TIM1_SlaveMode"
             61 76 65 4D 6F 64 65
      00222C 00                    8408 	.db	0
      00222D 00 00 00 FA           8409 	.dw	0,250
      002231 00                    8410 	.uleb128	0
      002232 03                    8411 	.uleb128	3
      002233 00 00 0B 0E           8412 	.dw	0,2830
      002237 54 49 4D 31 5F 53 65  8413 	.ascii "TIM1_SelectMasterSlaveMode"
             6C 65 63 74 4D 61 73
             74 65 72 53 6C 61 76
             65 4D 6F 64 65
      002251 00                    8414 	.db	0
      002252 00 00 99 9E           8415 	.dw	0,(_TIM1_SelectMasterSlaveMode)
      002256 00 00 99 BF           8416 	.dw	0,(XG$TIM1_SelectMasterSlaveMode$0$0+7)
      00225A 01                    8417 	.db	1
      00225B 00 00 09 EC           8418 	.dw	0,(Ldebug_loc_start+1060)
      00225F 04                    8419 	.uleb128	4
      002260 02                    8420 	.db	2
      002261 91                    8421 	.db	145
      002262 04                    8422 	.sleb128	4
      002263 4E 65 77 53 74 61 74  8423 	.ascii "NewState"
             65
      00226B 00                    8424 	.db	0
      00226C 00 00 00 FA           8425 	.dw	0,250
      002270 06                    8426 	.uleb128	6
      002271 06                    8427 	.uleb128	6
      002272 00                    8428 	.uleb128	0
      002273 03                    8429 	.uleb128	3
      002274 00 00 0B 8C           8430 	.dw	0,2956
      002278 54 49 4D 31 5F 45 6E  8431 	.ascii "TIM1_EncoderInterfaceConfig"
             63 6F 64 65 72 49 6E
             74 65 72 66 61 63 65
             43 6F 6E 66 69 67
      002293 00                    8432 	.db	0
      002294 00 00 99 BF           8433 	.dw	0,(_TIM1_EncoderInterfaceConfig)
      002298 00 00 9A 1E           8434 	.dw	0,(XG$TIM1_EncoderInterfaceConfig$0$0+7)
      00229C 01                    8435 	.db	1
      00229D 00 00 09 D8           8436 	.dw	0,(Ldebug_loc_start+1040)
      0022A1 04                    8437 	.uleb128	4
      0022A2 02                    8438 	.db	2
      0022A3 91                    8439 	.db	145
      0022A4 04                    8440 	.sleb128	4
      0022A5 54 49 4D 31 5F 45 6E  8441 	.ascii "TIM1_EncoderMode"
             63 6F 64 65 72 4D 6F
             64 65
      0022B5 00                    8442 	.db	0
      0022B6 00 00 00 FA           8443 	.dw	0,250
      0022BA 04                    8444 	.uleb128	4
      0022BB 02                    8445 	.db	2
      0022BC 91                    8446 	.db	145
      0022BD 05                    8447 	.sleb128	5
      0022BE 54 49 4D 31 5F 49 43  8448 	.ascii "TIM1_IC1Polarity"
             31 50 6F 6C 61 72 69
             74 79
      0022CE 00                    8449 	.db	0
      0022CF 00 00 00 FA           8450 	.dw	0,250
      0022D3 04                    8451 	.uleb128	4
      0022D4 02                    8452 	.db	2
      0022D5 91                    8453 	.db	145
      0022D6 06                    8454 	.sleb128	6
      0022D7 54 49 4D 31 5F 49 43  8455 	.ascii "TIM1_IC2Polarity"
             32 50 6F 6C 61 72 69
             74 79
      0022E7 00                    8456 	.db	0
      0022E8 00 00 00 FA           8457 	.dw	0,250
      0022EC 06                    8458 	.uleb128	6
      0022ED 06                    8459 	.uleb128	6
      0022EE 06                    8460 	.uleb128	6
      0022EF 06                    8461 	.uleb128	6
      0022F0 00                    8462 	.uleb128	0
      0022F1 03                    8463 	.uleb128	3
      0022F2 00 00 0B E1           8464 	.dw	0,3041
      0022F6 54 49 4D 31 5F 50 72  8465 	.ascii "TIM1_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      00230A 00                    8466 	.db	0
      00230B 00 00 9A 1E           8467 	.dw	0,(_TIM1_PrescalerConfig)
      00230F 00 00 9A 49           8468 	.dw	0,(XG$TIM1_PrescalerConfig$0$0+7)
      002313 01                    8469 	.db	1
      002314 00 00 09 C4           8470 	.dw	0,(Ldebug_loc_start+1020)
      002318 04                    8471 	.uleb128	4
      002319 02                    8472 	.db	2
      00231A 91                    8473 	.db	145
      00231B 04                    8474 	.sleb128	4
      00231C 50 72 65 73 63 61 6C  8475 	.ascii "Prescaler"
             65 72
      002325 00                    8476 	.db	0
      002326 00 00 00 EA           8477 	.dw	0,234
      00232A 04                    8478 	.uleb128	4
      00232B 02                    8479 	.db	2
      00232C 91                    8480 	.db	145
      00232D 06                    8481 	.sleb128	6
      00232E 54 49 4D 31 5F 50 53  8482 	.ascii "TIM1_PSCReloadMode"
             43 52 65 6C 6F 61 64
             4D 6F 64 65
      002340 00                    8483 	.db	0
      002341 00 00 00 FA           8484 	.dw	0,250
      002345 00                    8485 	.uleb128	0
      002346 03                    8486 	.uleb128	3
      002347 00 00 0C 24           8487 	.dw	0,3108
      00234B 54 49 4D 31 5F 43 6F  8488 	.ascii "TIM1_CounterModeConfig"
             75 6E 74 65 72 4D 6F
             64 65 43 6F 6E 66 69
             67
      002361 00                    8489 	.db	0
      002362 00 00 9A 49           8490 	.dw	0,(_TIM1_CounterModeConfig)
      002366 00 00 9A 68           8491 	.dw	0,(XG$TIM1_CounterModeConfig$0$0+7)
      00236A 01                    8492 	.db	1
      00236B 00 00 09 B0           8493 	.dw	0,(Ldebug_loc_start+1000)
      00236F 04                    8494 	.uleb128	4
      002370 02                    8495 	.db	2
      002371 91                    8496 	.db	145
      002372 04                    8497 	.sleb128	4
      002373 54 49 4D 31 5F 43 6F  8498 	.ascii "TIM1_CounterMode"
             75 6E 74 65 72 4D 6F
             64 65
      002383 00                    8499 	.db	0
      002384 00 00 00 FA           8500 	.dw	0,250
      002388 00                    8501 	.uleb128	0
      002389 03                    8502 	.uleb128	3
      00238A 00 00 0C 66           8503 	.dw	0,3174
      00238E 54 49 4D 31 5F 46 6F  8504 	.ascii "TIM1_ForcedOC1Config"
             72 63 65 64 4F 43 31
             43 6F 6E 66 69 67
      0023A2 00                    8505 	.db	0
      0023A3 00 00 9A 68           8506 	.dw	0,(_TIM1_ForcedOC1Config)
      0023A7 00 00 9A 87           8507 	.dw	0,(XG$TIM1_ForcedOC1Config$0$0+7)
      0023AB 01                    8508 	.db	1
      0023AC 00 00 09 9C           8509 	.dw	0,(Ldebug_loc_start+980)
      0023B0 04                    8510 	.uleb128	4
      0023B1 02                    8511 	.db	2
      0023B2 91                    8512 	.db	145
      0023B3 04                    8513 	.sleb128	4
      0023B4 54 49 4D 31 5F 46 6F  8514 	.ascii "TIM1_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      0023C5 00                    8515 	.db	0
      0023C6 00 00 00 FA           8516 	.dw	0,250
      0023CA 00                    8517 	.uleb128	0
      0023CB 03                    8518 	.uleb128	3
      0023CC 00 00 0C A8           8519 	.dw	0,3240
      0023D0 54 49 4D 31 5F 46 6F  8520 	.ascii "TIM1_ForcedOC2Config"
             72 63 65 64 4F 43 32
             43 6F 6E 66 69 67
      0023E4 00                    8521 	.db	0
      0023E5 00 00 9A 87           8522 	.dw	0,(_TIM1_ForcedOC2Config)
      0023E9 00 00 9A A6           8523 	.dw	0,(XG$TIM1_ForcedOC2Config$0$0+7)
      0023ED 01                    8524 	.db	1
      0023EE 00 00 09 88           8525 	.dw	0,(Ldebug_loc_start+960)
      0023F2 04                    8526 	.uleb128	4
      0023F3 02                    8527 	.db	2
      0023F4 91                    8528 	.db	145
      0023F5 04                    8529 	.sleb128	4
      0023F6 54 49 4D 31 5F 46 6F  8530 	.ascii "TIM1_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      002407 00                    8531 	.db	0
      002408 00 00 00 FA           8532 	.dw	0,250
      00240C 00                    8533 	.uleb128	0
      00240D 03                    8534 	.uleb128	3
      00240E 00 00 0C EA           8535 	.dw	0,3306
      002412 54 49 4D 31 5F 46 6F  8536 	.ascii "TIM1_ForcedOC3Config"
             72 63 65 64 4F 43 33
             43 6F 6E 66 69 67
      002426 00                    8537 	.db	0
      002427 00 00 9A A6           8538 	.dw	0,(_TIM1_ForcedOC3Config)
      00242B 00 00 9A C5           8539 	.dw	0,(XG$TIM1_ForcedOC3Config$0$0+7)
      00242F 01                    8540 	.db	1
      002430 00 00 09 74           8541 	.dw	0,(Ldebug_loc_start+940)
      002434 04                    8542 	.uleb128	4
      002435 02                    8543 	.db	2
      002436 91                    8544 	.db	145
      002437 04                    8545 	.sleb128	4
      002438 54 49 4D 31 5F 46 6F  8546 	.ascii "TIM1_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      002449 00                    8547 	.db	0
      00244A 00 00 00 FA           8548 	.dw	0,250
      00244E 00                    8549 	.uleb128	0
      00244F 03                    8550 	.uleb128	3
      002450 00 00 0D 2C           8551 	.dw	0,3372
      002454 54 49 4D 31 5F 46 6F  8552 	.ascii "TIM1_ForcedOC4Config"
             72 63 65 64 4F 43 34
             43 6F 6E 66 69 67
      002468 00                    8553 	.db	0
      002469 00 00 9A C5           8554 	.dw	0,(_TIM1_ForcedOC4Config)
      00246D 00 00 9A E4           8555 	.dw	0,(XG$TIM1_ForcedOC4Config$0$0+7)
      002471 01                    8556 	.db	1
      002472 00 00 09 60           8557 	.dw	0,(Ldebug_loc_start+920)
      002476 04                    8558 	.uleb128	4
      002477 02                    8559 	.db	2
      002478 91                    8560 	.db	145
      002479 04                    8561 	.sleb128	4
      00247A 54 49 4D 31 5F 46 6F  8562 	.ascii "TIM1_ForcedAction"
             72 63 65 64 41 63 74
             69 6F 6E
      00248B 00                    8563 	.db	0
      00248C 00 00 00 FA           8564 	.dw	0,250
      002490 00                    8565 	.uleb128	0
      002491 03                    8566 	.uleb128	3
      002492 00 00 0D 68           8567 	.dw	0,3432
      002496 54 49 4D 31 5F 41 52  8568 	.ascii "TIM1_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0024AB 00                    8569 	.db	0
      0024AC 00 00 9A E4           8570 	.dw	0,(_TIM1_ARRPreloadConfig)
      0024B0 00 00 9B 05           8571 	.dw	0,(XG$TIM1_ARRPreloadConfig$0$0+7)
      0024B4 01                    8572 	.db	1
      0024B5 00 00 09 4C           8573 	.dw	0,(Ldebug_loc_start+900)
      0024B9 04                    8574 	.uleb128	4
      0024BA 02                    8575 	.db	2
      0024BB 91                    8576 	.db	145
      0024BC 04                    8577 	.sleb128	4
      0024BD 4E 65 77 53 74 61 74  8578 	.ascii "NewState"
             65
      0024C5 00                    8579 	.db	0
      0024C6 00 00 00 FA           8580 	.dw	0,250
      0024CA 06                    8581 	.uleb128	6
      0024CB 06                    8582 	.uleb128	6
      0024CC 00                    8583 	.uleb128	0
      0024CD 03                    8584 	.uleb128	3
      0024CE 00 00 0D 9D           8585 	.dw	0,3485
      0024D2 54 49 4D 31 5F 53 65  8586 	.ascii "TIM1_SelectCOM"
             6C 65 63 74 43 4F 4D
      0024E0 00                    8587 	.db	0
      0024E1 00 00 9B 05           8588 	.dw	0,(_TIM1_SelectCOM)
      0024E5 00 00 9B 2C           8589 	.dw	0,(XG$TIM1_SelectCOM$0$0+7)
      0024E9 01                    8590 	.db	1
      0024EA 00 00 09 38           8591 	.dw	0,(Ldebug_loc_start+880)
      0024EE 04                    8592 	.uleb128	4
      0024EF 02                    8593 	.db	2
      0024F0 91                    8594 	.db	145
      0024F1 04                    8595 	.sleb128	4
      0024F2 4E 65 77 53 74 61 74  8596 	.ascii "NewState"
             65
      0024FA 00                    8597 	.db	0
      0024FB 00 00 00 FA           8598 	.dw	0,250
      0024FF 06                    8599 	.uleb128	6
      002500 06                    8600 	.uleb128	6
      002501 00                    8601 	.uleb128	0
      002502 03                    8602 	.uleb128	3
      002503 00 00 0D D9           8603 	.dw	0,3545
      002507 54 49 4D 31 5F 43 43  8604 	.ascii "TIM1_CCPreloadControl"
             50 72 65 6C 6F 61 64
             43 6F 6E 74 72 6F 6C
      00251C 00                    8605 	.db	0
      00251D 00 00 9B 2C           8606 	.dw	0,(_TIM1_CCPreloadControl)
      002521 00 00 9B 4D           8607 	.dw	0,(XG$TIM1_CCPreloadControl$0$0+7)
      002525 01                    8608 	.db	1
      002526 00 00 09 24           8609 	.dw	0,(Ldebug_loc_start+860)
      00252A 04                    8610 	.uleb128	4
      00252B 02                    8611 	.db	2
      00252C 91                    8612 	.db	145
      00252D 04                    8613 	.sleb128	4
      00252E 4E 65 77 53 74 61 74  8614 	.ascii "NewState"
             65
      002536 00                    8615 	.db	0
      002537 00 00 00 FA           8616 	.dw	0,250
      00253B 06                    8617 	.uleb128	6
      00253C 06                    8618 	.uleb128	6
      00253D 00                    8619 	.uleb128	0
      00253E 03                    8620 	.uleb128	3
      00253F 00 00 0E 15           8621 	.dw	0,3605
      002543 54 49 4D 31 5F 4F 43  8622 	.ascii "TIM1_OC1PreloadConfig"
             31 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      002558 00                    8623 	.db	0
      002559 00 00 9B 4D           8624 	.dw	0,(_TIM1_OC1PreloadConfig)
      00255D 00 00 9B 74           8625 	.dw	0,(XG$TIM1_OC1PreloadConfig$0$0+7)
      002561 01                    8626 	.db	1
      002562 00 00 09 10           8627 	.dw	0,(Ldebug_loc_start+840)
      002566 04                    8628 	.uleb128	4
      002567 02                    8629 	.db	2
      002568 91                    8630 	.db	145
      002569 04                    8631 	.sleb128	4
      00256A 4E 65 77 53 74 61 74  8632 	.ascii "NewState"
             65
      002572 00                    8633 	.db	0
      002573 00 00 00 FA           8634 	.dw	0,250
      002577 06                    8635 	.uleb128	6
      002578 06                    8636 	.uleb128	6
      002579 00                    8637 	.uleb128	0
      00257A 03                    8638 	.uleb128	3
      00257B 00 00 0E 51           8639 	.dw	0,3665
      00257F 54 49 4D 31 5F 4F 43  8640 	.ascii "TIM1_OC2PreloadConfig"
             32 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      002594 00                    8641 	.db	0
      002595 00 00 9B 74           8642 	.dw	0,(_TIM1_OC2PreloadConfig)
      002599 00 00 9B 9B           8643 	.dw	0,(XG$TIM1_OC2PreloadConfig$0$0+7)
      00259D 01                    8644 	.db	1
      00259E 00 00 08 FC           8645 	.dw	0,(Ldebug_loc_start+820)
      0025A2 04                    8646 	.uleb128	4
      0025A3 02                    8647 	.db	2
      0025A4 91                    8648 	.db	145
      0025A5 04                    8649 	.sleb128	4
      0025A6 4E 65 77 53 74 61 74  8650 	.ascii "NewState"
             65
      0025AE 00                    8651 	.db	0
      0025AF 00 00 00 FA           8652 	.dw	0,250
      0025B3 06                    8653 	.uleb128	6
      0025B4 06                    8654 	.uleb128	6
      0025B5 00                    8655 	.uleb128	0
      0025B6 03                    8656 	.uleb128	3
      0025B7 00 00 0E 8D           8657 	.dw	0,3725
      0025BB 54 49 4D 31 5F 4F 43  8658 	.ascii "TIM1_OC3PreloadConfig"
             33 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0025D0 00                    8659 	.db	0
      0025D1 00 00 9B 9B           8660 	.dw	0,(_TIM1_OC3PreloadConfig)
      0025D5 00 00 9B C2           8661 	.dw	0,(XG$TIM1_OC3PreloadConfig$0$0+7)
      0025D9 01                    8662 	.db	1
      0025DA 00 00 08 E8           8663 	.dw	0,(Ldebug_loc_start+800)
      0025DE 04                    8664 	.uleb128	4
      0025DF 02                    8665 	.db	2
      0025E0 91                    8666 	.db	145
      0025E1 04                    8667 	.sleb128	4
      0025E2 4E 65 77 53 74 61 74  8668 	.ascii "NewState"
             65
      0025EA 00                    8669 	.db	0
      0025EB 00 00 00 FA           8670 	.dw	0,250
      0025EF 06                    8671 	.uleb128	6
      0025F0 06                    8672 	.uleb128	6
      0025F1 00                    8673 	.uleb128	0
      0025F2 03                    8674 	.uleb128	3
      0025F3 00 00 0E C9           8675 	.dw	0,3785
      0025F7 54 49 4D 31 5F 4F 43  8676 	.ascii "TIM1_OC4PreloadConfig"
             34 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      00260C 00                    8677 	.db	0
      00260D 00 00 9B C2           8678 	.dw	0,(_TIM1_OC4PreloadConfig)
      002611 00 00 9B E9           8679 	.dw	0,(XG$TIM1_OC4PreloadConfig$0$0+7)
      002615 01                    8680 	.db	1
      002616 00 00 08 D4           8681 	.dw	0,(Ldebug_loc_start+780)
      00261A 04                    8682 	.uleb128	4
      00261B 02                    8683 	.db	2
      00261C 91                    8684 	.db	145
      00261D 04                    8685 	.sleb128	4
      00261E 4E 65 77 53 74 61 74  8686 	.ascii "NewState"
             65
      002626 00                    8687 	.db	0
      002627 00 00 00 FA           8688 	.dw	0,250
      00262B 06                    8689 	.uleb128	6
      00262C 06                    8690 	.uleb128	6
      00262D 00                    8691 	.uleb128	0
      00262E 03                    8692 	.uleb128	3
      00262F 00 00 0F 02           8693 	.dw	0,3842
      002633 54 49 4D 31 5F 4F 43  8694 	.ascii "TIM1_OC1FastConfig"
             31 46 61 73 74 43 6F
             6E 66 69 67
      002645 00                    8695 	.db	0
      002646 00 00 9B E9           8696 	.dw	0,(_TIM1_OC1FastConfig)
      00264A 00 00 9C 10           8697 	.dw	0,(XG$TIM1_OC1FastConfig$0$0+7)
      00264E 01                    8698 	.db	1
      00264F 00 00 08 C0           8699 	.dw	0,(Ldebug_loc_start+760)
      002653 04                    8700 	.uleb128	4
      002654 02                    8701 	.db	2
      002655 91                    8702 	.db	145
      002656 04                    8703 	.sleb128	4
      002657 4E 65 77 53 74 61 74  8704 	.ascii "NewState"
             65
      00265F 00                    8705 	.db	0
      002660 00 00 00 FA           8706 	.dw	0,250
      002664 06                    8707 	.uleb128	6
      002665 06                    8708 	.uleb128	6
      002666 00                    8709 	.uleb128	0
      002667 03                    8710 	.uleb128	3
      002668 00 00 0F 3B           8711 	.dw	0,3899
      00266C 54 49 4D 31 5F 4F 43  8712 	.ascii "TIM1_OC2FastConfig"
             32 46 61 73 74 43 6F
             6E 66 69 67
      00267E 00                    8713 	.db	0
      00267F 00 00 9C 10           8714 	.dw	0,(_TIM1_OC2FastConfig)
      002683 00 00 9C 37           8715 	.dw	0,(XG$TIM1_OC2FastConfig$0$0+7)
      002687 01                    8716 	.db	1
      002688 00 00 08 AC           8717 	.dw	0,(Ldebug_loc_start+740)
      00268C 04                    8718 	.uleb128	4
      00268D 02                    8719 	.db	2
      00268E 91                    8720 	.db	145
      00268F 04                    8721 	.sleb128	4
      002690 4E 65 77 53 74 61 74  8722 	.ascii "NewState"
             65
      002698 00                    8723 	.db	0
      002699 00 00 00 FA           8724 	.dw	0,250
      00269D 06                    8725 	.uleb128	6
      00269E 06                    8726 	.uleb128	6
      00269F 00                    8727 	.uleb128	0
      0026A0 03                    8728 	.uleb128	3
      0026A1 00 00 0F 74           8729 	.dw	0,3956
      0026A5 54 49 4D 31 5F 4F 43  8730 	.ascii "TIM1_OC3FastConfig"
             33 46 61 73 74 43 6F
             6E 66 69 67
      0026B7 00                    8731 	.db	0
      0026B8 00 00 9C 37           8732 	.dw	0,(_TIM1_OC3FastConfig)
      0026BC 00 00 9C 5E           8733 	.dw	0,(XG$TIM1_OC3FastConfig$0$0+7)
      0026C0 01                    8734 	.db	1
      0026C1 00 00 08 98           8735 	.dw	0,(Ldebug_loc_start+720)
      0026C5 04                    8736 	.uleb128	4
      0026C6 02                    8737 	.db	2
      0026C7 91                    8738 	.db	145
      0026C8 04                    8739 	.sleb128	4
      0026C9 4E 65 77 53 74 61 74  8740 	.ascii "NewState"
             65
      0026D1 00                    8741 	.db	0
      0026D2 00 00 00 FA           8742 	.dw	0,250
      0026D6 06                    8743 	.uleb128	6
      0026D7 06                    8744 	.uleb128	6
      0026D8 00                    8745 	.uleb128	0
      0026D9 03                    8746 	.uleb128	3
      0026DA 00 00 0F AD           8747 	.dw	0,4013
      0026DE 54 49 4D 31 5F 4F 43  8748 	.ascii "TIM1_OC4FastConfig"
             34 46 61 73 74 43 6F
             6E 66 69 67
      0026F0 00                    8749 	.db	0
      0026F1 00 00 9C 5E           8750 	.dw	0,(_TIM1_OC4FastConfig)
      0026F5 00 00 9C 85           8751 	.dw	0,(XG$TIM1_OC4FastConfig$0$0+7)
      0026F9 01                    8752 	.db	1
      0026FA 00 00 08 84           8753 	.dw	0,(Ldebug_loc_start+700)
      0026FE 04                    8754 	.uleb128	4
      0026FF 02                    8755 	.db	2
      002700 91                    8756 	.db	145
      002701 04                    8757 	.sleb128	4
      002702 4E 65 77 53 74 61 74  8758 	.ascii "NewState"
             65
      00270A 00                    8759 	.db	0
      00270B 00 00 00 FA           8760 	.dw	0,250
      00270F 06                    8761 	.uleb128	6
      002710 06                    8762 	.uleb128	6
      002711 00                    8763 	.uleb128	0
      002712 03                    8764 	.uleb128	3
      002713 00 00 0F EC           8765 	.dw	0,4076
      002717 54 49 4D 31 5F 47 65  8766 	.ascii "TIM1_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      002729 00                    8767 	.db	0
      00272A 00 00 9C 85           8768 	.dw	0,(_TIM1_GenerateEvent)
      00272E 00 00 9C 9E           8769 	.dw	0,(XG$TIM1_GenerateEvent$0$0+7)
      002732 01                    8770 	.db	1
      002733 00 00 08 70           8771 	.dw	0,(Ldebug_loc_start+680)
      002737 04                    8772 	.uleb128	4
      002738 02                    8773 	.db	2
      002739 91                    8774 	.db	145
      00273A 04                    8775 	.sleb128	4
      00273B 54 49 4D 31 5F 45 76  8776 	.ascii "TIM1_EventSource"
             65 6E 74 53 6F 75 72
             63 65
      00274B 00                    8777 	.db	0
      00274C 00 00 00 FA           8778 	.dw	0,250
      002750 00                    8779 	.uleb128	0
      002751 03                    8780 	.uleb128	3
      002752 00 00 10 30           8781 	.dw	0,4144
      002756 54 49 4D 31 5F 4F 43  8782 	.ascii "TIM1_OC1PolarityConfig"
             31 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      00276C 00                    8783 	.db	0
      00276D 00 00 9C 9E           8784 	.dw	0,(_TIM1_OC1PolarityConfig)
      002771 00 00 9C C5           8785 	.dw	0,(XG$TIM1_OC1PolarityConfig$0$0+7)
      002775 01                    8786 	.db	1
      002776 00 00 08 5C           8787 	.dw	0,(Ldebug_loc_start+660)
      00277A 04                    8788 	.uleb128	4
      00277B 02                    8789 	.db	2
      00277C 91                    8790 	.db	145
      00277D 04                    8791 	.sleb128	4
      00277E 54 49 4D 31 5F 4F 43  8792 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      00278D 00                    8793 	.db	0
      00278E 00 00 00 FA           8794 	.dw	0,250
      002792 06                    8795 	.uleb128	6
      002793 06                    8796 	.uleb128	6
      002794 00                    8797 	.uleb128	0
      002795 03                    8798 	.uleb128	3
      002796 00 00 10 76           8799 	.dw	0,4214
      00279A 54 49 4D 31 5F 4F 43  8800 	.ascii "TIM1_OC1NPolarityConfig"
             31 4E 50 6F 6C 61 72
             69 74 79 43 6F 6E 66
             69 67
      0027B1 00                    8801 	.db	0
      0027B2 00 00 9C C5           8802 	.dw	0,(_TIM1_OC1NPolarityConfig)
      0027B6 00 00 9C EC           8803 	.dw	0,(XG$TIM1_OC1NPolarityConfig$0$0+7)
      0027BA 01                    8804 	.db	1
      0027BB 00 00 08 48           8805 	.dw	0,(Ldebug_loc_start+640)
      0027BF 04                    8806 	.uleb128	4
      0027C0 02                    8807 	.db	2
      0027C1 91                    8808 	.db	145
      0027C2 04                    8809 	.sleb128	4
      0027C3 54 49 4D 31 5F 4F 43  8810 	.ascii "TIM1_OCNPolarity"
             4E 50 6F 6C 61 72 69
             74 79
      0027D3 00                    8811 	.db	0
      0027D4 00 00 00 FA           8812 	.dw	0,250
      0027D8 06                    8813 	.uleb128	6
      0027D9 06                    8814 	.uleb128	6
      0027DA 00                    8815 	.uleb128	0
      0027DB 03                    8816 	.uleb128	3
      0027DC 00 00 10 BA           8817 	.dw	0,4282
      0027E0 54 49 4D 31 5F 4F 43  8818 	.ascii "TIM1_OC2PolarityConfig"
             32 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      0027F6 00                    8819 	.db	0
      0027F7 00 00 9C EC           8820 	.dw	0,(_TIM1_OC2PolarityConfig)
      0027FB 00 00 9D 13           8821 	.dw	0,(XG$TIM1_OC2PolarityConfig$0$0+7)
      0027FF 01                    8822 	.db	1
      002800 00 00 08 34           8823 	.dw	0,(Ldebug_loc_start+620)
      002804 04                    8824 	.uleb128	4
      002805 02                    8825 	.db	2
      002806 91                    8826 	.db	145
      002807 04                    8827 	.sleb128	4
      002808 54 49 4D 31 5F 4F 43  8828 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      002817 00                    8829 	.db	0
      002818 00 00 00 FA           8830 	.dw	0,250
      00281C 06                    8831 	.uleb128	6
      00281D 06                    8832 	.uleb128	6
      00281E 00                    8833 	.uleb128	0
      00281F 03                    8834 	.uleb128	3
      002820 00 00 11 00           8835 	.dw	0,4352
      002824 54 49 4D 31 5F 4F 43  8836 	.ascii "TIM1_OC2NPolarityConfig"
             32 4E 50 6F 6C 61 72
             69 74 79 43 6F 6E 66
             69 67
      00283B 00                    8837 	.db	0
      00283C 00 00 9D 13           8838 	.dw	0,(_TIM1_OC2NPolarityConfig)
      002840 00 00 9D 34           8839 	.dw	0,(XG$TIM1_OC2NPolarityConfig$0$0+7)
      002844 01                    8840 	.db	1
      002845 00 00 08 20           8841 	.dw	0,(Ldebug_loc_start+600)
      002849 04                    8842 	.uleb128	4
      00284A 02                    8843 	.db	2
      00284B 91                    8844 	.db	145
      00284C 04                    8845 	.sleb128	4
      00284D 54 49 4D 31 5F 4F 43  8846 	.ascii "TIM1_OCNPolarity"
             4E 50 6F 6C 61 72 69
             74 79
      00285D 00                    8847 	.db	0
      00285E 00 00 00 FA           8848 	.dw	0,250
      002862 06                    8849 	.uleb128	6
      002863 06                    8850 	.uleb128	6
      002864 00                    8851 	.uleb128	0
      002865 03                    8852 	.uleb128	3
      002866 00 00 11 44           8853 	.dw	0,4420
      00286A 54 49 4D 31 5F 4F 43  8854 	.ascii "TIM1_OC3PolarityConfig"
             33 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      002880 00                    8855 	.db	0
      002881 00 00 9D 34           8856 	.dw	0,(_TIM1_OC3PolarityConfig)
      002885 00 00 9D 5B           8857 	.dw	0,(XG$TIM1_OC3PolarityConfig$0$0+7)
      002889 01                    8858 	.db	1
      00288A 00 00 08 0C           8859 	.dw	0,(Ldebug_loc_start+580)
      00288E 04                    8860 	.uleb128	4
      00288F 02                    8861 	.db	2
      002890 91                    8862 	.db	145
      002891 04                    8863 	.sleb128	4
      002892 54 49 4D 31 5F 4F 43  8864 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      0028A1 00                    8865 	.db	0
      0028A2 00 00 00 FA           8866 	.dw	0,250
      0028A6 06                    8867 	.uleb128	6
      0028A7 06                    8868 	.uleb128	6
      0028A8 00                    8869 	.uleb128	0
      0028A9 03                    8870 	.uleb128	3
      0028AA 00 00 11 8A           8871 	.dw	0,4490
      0028AE 54 49 4D 31 5F 4F 43  8872 	.ascii "TIM1_OC3NPolarityConfig"
             33 4E 50 6F 6C 61 72
             69 74 79 43 6F 6E 66
             69 67
      0028C5 00                    8873 	.db	0
      0028C6 00 00 9D 5B           8874 	.dw	0,(_TIM1_OC3NPolarityConfig)
      0028CA 00 00 9D 82           8875 	.dw	0,(XG$TIM1_OC3NPolarityConfig$0$0+7)
      0028CE 01                    8876 	.db	1
      0028CF 00 00 07 F8           8877 	.dw	0,(Ldebug_loc_start+560)
      0028D3 04                    8878 	.uleb128	4
      0028D4 02                    8879 	.db	2
      0028D5 91                    8880 	.db	145
      0028D6 04                    8881 	.sleb128	4
      0028D7 54 49 4D 31 5F 4F 43  8882 	.ascii "TIM1_OCNPolarity"
             4E 50 6F 6C 61 72 69
             74 79
      0028E7 00                    8883 	.db	0
      0028E8 00 00 00 FA           8884 	.dw	0,250
      0028EC 06                    8885 	.uleb128	6
      0028ED 06                    8886 	.uleb128	6
      0028EE 00                    8887 	.uleb128	0
      0028EF 03                    8888 	.uleb128	3
      0028F0 00 00 11 CE           8889 	.dw	0,4558
      0028F4 54 49 4D 31 5F 4F 43  8890 	.ascii "TIM1_OC4PolarityConfig"
             34 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      00290A 00                    8891 	.db	0
      00290B 00 00 9D 82           8892 	.dw	0,(_TIM1_OC4PolarityConfig)
      00290F 00 00 9D A9           8893 	.dw	0,(XG$TIM1_OC4PolarityConfig$0$0+7)
      002913 01                    8894 	.db	1
      002914 00 00 07 E4           8895 	.dw	0,(Ldebug_loc_start+540)
      002918 04                    8896 	.uleb128	4
      002919 02                    8897 	.db	2
      00291A 91                    8898 	.db	145
      00291B 04                    8899 	.sleb128	4
      00291C 54 49 4D 31 5F 4F 43  8900 	.ascii "TIM1_OCPolarity"
             50 6F 6C 61 72 69 74
             79
      00292B 00                    8901 	.db	0
      00292C 00 00 00 FA           8902 	.dw	0,250
      002930 06                    8903 	.uleb128	6
      002931 06                    8904 	.uleb128	6
      002932 00                    8905 	.uleb128	0
      002933 03                    8906 	.uleb128	3
      002934 00 00 12 2F           8907 	.dw	0,4655
      002938 54 49 4D 31 5F 43 43  8908 	.ascii "TIM1_CCxCmd"
             78 43 6D 64
      002943 00                    8909 	.db	0
      002944 00 00 9D A9           8910 	.dw	0,(_TIM1_CCxCmd)
      002948 00 00 9E 18           8911 	.dw	0,(XG$TIM1_CCxCmd$0$0+7)
      00294C 01                    8912 	.db	1
      00294D 00 00 07 D0           8913 	.dw	0,(Ldebug_loc_start+520)
      002951 04                    8914 	.uleb128	4
      002952 02                    8915 	.db	2
      002953 91                    8916 	.db	145
      002954 04                    8917 	.sleb128	4
      002955 54 49 4D 31 5F 43 68  8918 	.ascii "TIM1_Channel"
             61 6E 6E 65 6C
      002961 00                    8919 	.db	0
      002962 00 00 00 FA           8920 	.dw	0,250
      002966 04                    8921 	.uleb128	4
      002967 02                    8922 	.db	2
      002968 91                    8923 	.db	145
      002969 05                    8924 	.sleb128	5
      00296A 4E 65 77 53 74 61 74  8925 	.ascii "NewState"
             65
      002972 00                    8926 	.db	0
      002973 00 00 00 FA           8927 	.dw	0,250
      002977 08                    8928 	.uleb128	8
      002978 00 00 12 1A           8929 	.dw	0,4634
      00297C 06                    8930 	.uleb128	6
      00297D 06                    8931 	.uleb128	6
      00297E 00                    8932 	.uleb128	0
      00297F 08                    8933 	.uleb128	8
      002980 00 00 12 22           8934 	.dw	0,4642
      002984 06                    8935 	.uleb128	6
      002985 06                    8936 	.uleb128	6
      002986 00                    8937 	.uleb128	0
      002987 08                    8938 	.uleb128	8
      002988 00 00 12 2A           8939 	.dw	0,4650
      00298C 06                    8940 	.uleb128	6
      00298D 06                    8941 	.uleb128	6
      00298E 00                    8942 	.uleb128	0
      00298F 09                    8943 	.uleb128	9
      002990 06                    8944 	.uleb128	6
      002991 06                    8945 	.uleb128	6
      002992 00                    8946 	.uleb128	0
      002993 00                    8947 	.uleb128	0
      002994 03                    8948 	.uleb128	3
      002995 00 00 12 89           8949 	.dw	0,4745
      002999 54 49 4D 31 5F 43 43  8950 	.ascii "TIM1_CCxNCmd"
             78 4E 43 6D 64
      0029A5 00                    8951 	.db	0
      0029A6 00 00 9E 18           8952 	.dw	0,(_TIM1_CCxNCmd)
      0029AA 00 00 9E 75           8953 	.dw	0,(XG$TIM1_CCxNCmd$0$0+7)
      0029AE 01                    8954 	.db	1
      0029AF 00 00 07 BC           8955 	.dw	0,(Ldebug_loc_start+500)
      0029B3 04                    8956 	.uleb128	4
      0029B4 02                    8957 	.db	2
      0029B5 91                    8958 	.db	145
      0029B6 04                    8959 	.sleb128	4
      0029B7 54 49 4D 31 5F 43 68  8960 	.ascii "TIM1_Channel"
             61 6E 6E 65 6C
      0029C3 00                    8961 	.db	0
      0029C4 00 00 00 FA           8962 	.dw	0,250
      0029C8 04                    8963 	.uleb128	4
      0029C9 02                    8964 	.db	2
      0029CA 91                    8965 	.db	145
      0029CB 05                    8966 	.sleb128	5
      0029CC 4E 65 77 53 74 61 74  8967 	.ascii "NewState"
             65
      0029D4 00                    8968 	.db	0
      0029D5 00 00 00 FA           8969 	.dw	0,250
      0029D9 08                    8970 	.uleb128	8
      0029DA 00 00 12 7C           8971 	.dw	0,4732
      0029DE 06                    8972 	.uleb128	6
      0029DF 06                    8973 	.uleb128	6
      0029E0 00                    8974 	.uleb128	0
      0029E1 08                    8975 	.uleb128	8
      0029E2 00 00 12 84           8976 	.dw	0,4740
      0029E6 06                    8977 	.uleb128	6
      0029E7 06                    8978 	.uleb128	6
      0029E8 00                    8979 	.uleb128	0
      0029E9 09                    8980 	.uleb128	9
      0029EA 06                    8981 	.uleb128	6
      0029EB 06                    8982 	.uleb128	6
      0029EC 00                    8983 	.uleb128	0
      0029ED 00                    8984 	.uleb128	0
      0029EE 03                    8985 	.uleb128	3
      0029EF 00 00 12 D9           8986 	.dw	0,4825
      0029F3 54 49 4D 31 5F 53 65  8987 	.ascii "TIM1_SelectOCxM"
             6C 65 63 74 4F 43 78
             4D
      002A02 00                    8988 	.db	0
      002A03 00 00 9E 75           8989 	.dw	0,(_TIM1_SelectOCxM)
      002A07 00 00 9E E5           8990 	.dw	0,(XG$TIM1_SelectOCxM$0$0+7)
      002A0B 01                    8991 	.db	1
      002A0C 00 00 07 A8           8992 	.dw	0,(Ldebug_loc_start+480)
      002A10 04                    8993 	.uleb128	4
      002A11 02                    8994 	.db	2
      002A12 91                    8995 	.db	145
      002A13 04                    8996 	.sleb128	4
      002A14 54 49 4D 31 5F 43 68  8997 	.ascii "TIM1_Channel"
             61 6E 6E 65 6C
      002A20 00                    8998 	.db	0
      002A21 00 00 00 FA           8999 	.dw	0,250
      002A25 04                    9000 	.uleb128	4
      002A26 02                    9001 	.db	2
      002A27 91                    9002 	.db	145
      002A28 05                    9003 	.sleb128	5
      002A29 54 49 4D 31 5F 4F 43  9004 	.ascii "TIM1_OCMode"
             4D 6F 64 65
      002A34 00                    9005 	.db	0
      002A35 00 00 00 FA           9006 	.dw	0,250
      002A39 06                    9007 	.uleb128	6
      002A3A 06                    9008 	.uleb128	6
      002A3B 06                    9009 	.uleb128	6
      002A3C 06                    9010 	.uleb128	6
      002A3D 00                    9011 	.uleb128	0
      002A3E 03                    9012 	.uleb128	3
      002A3F 00 00 13 0C           9013 	.dw	0,4876
      002A43 54 49 4D 31 5F 53 65  9014 	.ascii "TIM1_SetCounter"
             74 43 6F 75 6E 74 65
             72
      002A52 00                    9015 	.db	0
      002A53 00 00 9E E5           9016 	.dw	0,(_TIM1_SetCounter)
      002A57 00 00 9F 0A           9017 	.dw	0,(XG$TIM1_SetCounter$0$0+7)
      002A5B 01                    9018 	.db	1
      002A5C 00 00 07 94           9019 	.dw	0,(Ldebug_loc_start+460)
      002A60 04                    9020 	.uleb128	4
      002A61 02                    9021 	.db	2
      002A62 91                    9022 	.db	145
      002A63 04                    9023 	.sleb128	4
      002A64 43 6F 75 6E 74 65 72  9024 	.ascii "Counter"
      002A6B 00                    9025 	.db	0
      002A6C 00 00 00 EA           9026 	.dw	0,234
      002A70 00                    9027 	.uleb128	0
      002A71 03                    9028 	.uleb128	3
      002A72 00 00 13 45           9029 	.dw	0,4933
      002A76 54 49 4D 31 5F 53 65  9030 	.ascii "TIM1_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      002A88 00                    9031 	.db	0
      002A89 00 00 9F 0A           9032 	.dw	0,(_TIM1_SetAutoreload)
      002A8D 00 00 9F 2F           9033 	.dw	0,(XG$TIM1_SetAutoreload$0$0+7)
      002A91 01                    9034 	.db	1
      002A92 00 00 07 80           9035 	.dw	0,(Ldebug_loc_start+440)
      002A96 04                    9036 	.uleb128	4
      002A97 02                    9037 	.db	2
      002A98 91                    9038 	.db	145
      002A99 04                    9039 	.sleb128	4
      002A9A 41 75 74 6F 72 65 6C  9040 	.ascii "Autoreload"
             6F 61 64
      002AA4 00                    9041 	.db	0
      002AA5 00 00 00 EA           9042 	.dw	0,234
      002AA9 00                    9043 	.uleb128	0
      002AAA 03                    9044 	.uleb128	3
      002AAB 00 00 13 7A           9045 	.dw	0,4986
      002AAF 54 49 4D 31 5F 53 65  9046 	.ascii "TIM1_SetCompare1"
             74 43 6F 6D 70 61 72
             65 31
      002ABF 00                    9047 	.db	0
      002AC0 00 00 9F 2F           9048 	.dw	0,(_TIM1_SetCompare1)
      002AC4 00 00 9F 54           9049 	.dw	0,(XG$TIM1_SetCompare1$0$0+7)
      002AC8 01                    9050 	.db	1
      002AC9 00 00 07 6C           9051 	.dw	0,(Ldebug_loc_start+420)
      002ACD 04                    9052 	.uleb128	4
      002ACE 02                    9053 	.db	2
      002ACF 91                    9054 	.db	145
      002AD0 04                    9055 	.sleb128	4
      002AD1 43 6F 6D 70 61 72 65  9056 	.ascii "Compare1"
             31
      002AD9 00                    9057 	.db	0
      002ADA 00 00 00 EA           9058 	.dw	0,234
      002ADE 00                    9059 	.uleb128	0
      002ADF 03                    9060 	.uleb128	3
      002AE0 00 00 13 AF           9061 	.dw	0,5039
      002AE4 54 49 4D 31 5F 53 65  9062 	.ascii "TIM1_SetCompare2"
             74 43 6F 6D 70 61 72
             65 32
      002AF4 00                    9063 	.db	0
      002AF5 00 00 9F 54           9064 	.dw	0,(_TIM1_SetCompare2)
      002AF9 00 00 9F 79           9065 	.dw	0,(XG$TIM1_SetCompare2$0$0+7)
      002AFD 01                    9066 	.db	1
      002AFE 00 00 07 58           9067 	.dw	0,(Ldebug_loc_start+400)
      002B02 04                    9068 	.uleb128	4
      002B03 02                    9069 	.db	2
      002B04 91                    9070 	.db	145
      002B05 04                    9071 	.sleb128	4
      002B06 43 6F 6D 70 61 72 65  9072 	.ascii "Compare2"
             32
      002B0E 00                    9073 	.db	0
      002B0F 00 00 00 EA           9074 	.dw	0,234
      002B13 00                    9075 	.uleb128	0
      002B14 03                    9076 	.uleb128	3
      002B15 00 00 13 E4           9077 	.dw	0,5092
      002B19 54 49 4D 31 5F 53 65  9078 	.ascii "TIM1_SetCompare3"
             74 43 6F 6D 70 61 72
             65 33
      002B29 00                    9079 	.db	0
      002B2A 00 00 9F 79           9080 	.dw	0,(_TIM1_SetCompare3)
      002B2E 00 00 9F 9E           9081 	.dw	0,(XG$TIM1_SetCompare3$0$0+7)
      002B32 01                    9082 	.db	1
      002B33 00 00 07 44           9083 	.dw	0,(Ldebug_loc_start+380)
      002B37 04                    9084 	.uleb128	4
      002B38 02                    9085 	.db	2
      002B39 91                    9086 	.db	145
      002B3A 04                    9087 	.sleb128	4
      002B3B 43 6F 6D 70 61 72 65  9088 	.ascii "Compare3"
             33
      002B43 00                    9089 	.db	0
      002B44 00 00 00 EA           9090 	.dw	0,234
      002B48 00                    9091 	.uleb128	0
      002B49 03                    9092 	.uleb128	3
      002B4A 00 00 14 19           9093 	.dw	0,5145
      002B4E 54 49 4D 31 5F 53 65  9094 	.ascii "TIM1_SetCompare4"
             74 43 6F 6D 70 61 72
             65 34
      002B5E 00                    9095 	.db	0
      002B5F 00 00 9F 9E           9096 	.dw	0,(_TIM1_SetCompare4)
      002B63 00 00 9F C3           9097 	.dw	0,(XG$TIM1_SetCompare4$0$0+7)
      002B67 01                    9098 	.db	1
      002B68 00 00 07 30           9099 	.dw	0,(Ldebug_loc_start+360)
      002B6C 04                    9100 	.uleb128	4
      002B6D 02                    9101 	.db	2
      002B6E 91                    9102 	.db	145
      002B6F 04                    9103 	.sleb128	4
      002B70 43 6F 6D 70 61 72 65  9104 	.ascii "Compare4"
             34
      002B78 00                    9105 	.db	0
      002B79 00 00 00 EA           9106 	.dw	0,234
      002B7D 00                    9107 	.uleb128	0
      002B7E 03                    9108 	.uleb128	3
      002B7F 00 00 14 5B           9109 	.dw	0,5211
      002B83 54 49 4D 31 5F 53 65  9110 	.ascii "TIM1_SetIC1Prescaler"
             74 49 43 31 50 72 65
             73 63 61 6C 65 72
      002B97 00                    9111 	.db	0
      002B98 00 00 9F C3           9112 	.dw	0,(_TIM1_SetIC1Prescaler)
      002B9C 00 00 9F E2           9113 	.dw	0,(XG$TIM1_SetIC1Prescaler$0$0+7)
      002BA0 01                    9114 	.db	1
      002BA1 00 00 07 1C           9115 	.dw	0,(Ldebug_loc_start+340)
      002BA5 04                    9116 	.uleb128	4
      002BA6 02                    9117 	.db	2
      002BA7 91                    9118 	.db	145
      002BA8 04                    9119 	.sleb128	4
      002BA9 54 49 4D 31 5F 49 43  9120 	.ascii "TIM1_IC1Prescaler"
             31 50 72 65 73 63 61
             6C 65 72
      002BBA 00                    9121 	.db	0
      002BBB 00 00 00 FA           9122 	.dw	0,250
      002BBF 00                    9123 	.uleb128	0
      002BC0 03                    9124 	.uleb128	3
      002BC1 00 00 14 9D           9125 	.dw	0,5277
      002BC5 54 49 4D 31 5F 53 65  9126 	.ascii "TIM1_SetIC2Prescaler"
             74 49 43 32 50 72 65
             73 63 61 6C 65 72
      002BD9 00                    9127 	.db	0
      002BDA 00 00 9F E2           9128 	.dw	0,(_TIM1_SetIC2Prescaler)
      002BDE 00 00 A0 01           9129 	.dw	0,(XG$TIM1_SetIC2Prescaler$0$0+7)
      002BE2 01                    9130 	.db	1
      002BE3 00 00 07 08           9131 	.dw	0,(Ldebug_loc_start+320)
      002BE7 04                    9132 	.uleb128	4
      002BE8 02                    9133 	.db	2
      002BE9 91                    9134 	.db	145
      002BEA 04                    9135 	.sleb128	4
      002BEB 54 49 4D 31 5F 49 43  9136 	.ascii "TIM1_IC2Prescaler"
             32 50 72 65 73 63 61
             6C 65 72
      002BFC 00                    9137 	.db	0
      002BFD 00 00 00 FA           9138 	.dw	0,250
      002C01 00                    9139 	.uleb128	0
      002C02 03                    9140 	.uleb128	3
      002C03 00 00 14 DF           9141 	.dw	0,5343
      002C07 54 49 4D 31 5F 53 65  9142 	.ascii "TIM1_SetIC3Prescaler"
             74 49 43 33 50 72 65
             73 63 61 6C 65 72
      002C1B 00                    9143 	.db	0
      002C1C 00 00 A0 01           9144 	.dw	0,(_TIM1_SetIC3Prescaler)
      002C20 00 00 A0 20           9145 	.dw	0,(XG$TIM1_SetIC3Prescaler$0$0+7)
      002C24 01                    9146 	.db	1
      002C25 00 00 06 F4           9147 	.dw	0,(Ldebug_loc_start+300)
      002C29 04                    9148 	.uleb128	4
      002C2A 02                    9149 	.db	2
      002C2B 91                    9150 	.db	145
      002C2C 04                    9151 	.sleb128	4
      002C2D 54 49 4D 31 5F 49 43  9152 	.ascii "TIM1_IC3Prescaler"
             33 50 72 65 73 63 61
             6C 65 72
      002C3E 00                    9153 	.db	0
      002C3F 00 00 00 FA           9154 	.dw	0,250
      002C43 00                    9155 	.uleb128	0
      002C44 03                    9156 	.uleb128	3
      002C45 00 00 15 21           9157 	.dw	0,5409
      002C49 54 49 4D 31 5F 53 65  9158 	.ascii "TIM1_SetIC4Prescaler"
             74 49 43 34 50 72 65
             73 63 61 6C 65 72
      002C5D 00                    9159 	.db	0
      002C5E 00 00 A0 20           9160 	.dw	0,(_TIM1_SetIC4Prescaler)
      002C62 00 00 A0 3F           9161 	.dw	0,(XG$TIM1_SetIC4Prescaler$0$0+7)
      002C66 01                    9162 	.db	1
      002C67 00 00 06 E0           9163 	.dw	0,(Ldebug_loc_start+280)
      002C6B 04                    9164 	.uleb128	4
      002C6C 02                    9165 	.db	2
      002C6D 91                    9166 	.db	145
      002C6E 04                    9167 	.sleb128	4
      002C6F 54 49 4D 31 5F 49 43  9168 	.ascii "TIM1_IC4Prescaler"
             34 50 72 65 73 63 61
             6C 65 72
      002C80 00                    9169 	.db	0
      002C81 00 00 00 FA           9170 	.dw	0,250
      002C85 00                    9171 	.uleb128	0
      002C86 0A                    9172 	.uleb128	10
      002C87 00 00 15 74           9173 	.dw	0,5492
      002C8B 54 49 4D 31 5F 47 65  9174 	.ascii "TIM1_GetCapture1"
             74 43 61 70 74 75 72
             65 31
      002C9B 00                    9175 	.db	0
      002C9C 00 00 A0 3F           9176 	.dw	0,(_TIM1_GetCapture1)
      002CA0 00 00 A0 6F           9177 	.dw	0,(XG$TIM1_GetCapture1$0$0+7)
      002CA4 01                    9178 	.db	1
      002CA5 00 00 06 CC           9179 	.dw	0,(Ldebug_loc_start+260)
      002CA9 00 00 00 EA           9180 	.dw	0,234
      002CAD 0B                    9181 	.uleb128	11
      002CAE 74 6D 70 63 63 72 31  9182 	.ascii "tmpccr1"
      002CB5 00                    9183 	.db	0
      002CB6 00 00 00 EA           9184 	.dw	0,234
      002CBA 07                    9185 	.uleb128	7
      002CBB 01                    9186 	.db	1
      002CBC 51                    9187 	.db	81
      002CBD 74 6D 70 63 63 72 31  9188 	.ascii "tmpccr1l"
             6C
      002CC5 00                    9189 	.db	0
      002CC6 00 00 00 FA           9190 	.dw	0,250
      002CCA 0B                    9191 	.uleb128	11
      002CCB 74 6D 70 63 63 72 31  9192 	.ascii "tmpccr1h"
             68
      002CD3 00                    9193 	.db	0
      002CD4 00 00 00 FA           9194 	.dw	0,250
      002CD8 00                    9195 	.uleb128	0
      002CD9 0A                    9196 	.uleb128	10
      002CDA 00 00 15 C7           9197 	.dw	0,5575
      002CDE 54 49 4D 31 5F 47 65  9198 	.ascii "TIM1_GetCapture2"
             74 43 61 70 74 75 72
             65 32
      002CEE 00                    9199 	.db	0
      002CEF 00 00 A0 6F           9200 	.dw	0,(_TIM1_GetCapture2)
      002CF3 00 00 A0 9F           9201 	.dw	0,(XG$TIM1_GetCapture2$0$0+7)
      002CF7 01                    9202 	.db	1
      002CF8 00 00 06 B8           9203 	.dw	0,(Ldebug_loc_start+240)
      002CFC 00 00 00 EA           9204 	.dw	0,234
      002D00 0B                    9205 	.uleb128	11
      002D01 74 6D 70 63 63 72 32  9206 	.ascii "tmpccr2"
      002D08 00                    9207 	.db	0
      002D09 00 00 00 EA           9208 	.dw	0,234
      002D0D 07                    9209 	.uleb128	7
      002D0E 01                    9210 	.db	1
      002D0F 51                    9211 	.db	81
      002D10 74 6D 70 63 63 72 32  9212 	.ascii "tmpccr2l"
             6C
      002D18 00                    9213 	.db	0
      002D19 00 00 00 FA           9214 	.dw	0,250
      002D1D 0B                    9215 	.uleb128	11
      002D1E 74 6D 70 63 63 72 32  9216 	.ascii "tmpccr2h"
             68
      002D26 00                    9217 	.db	0
      002D27 00 00 00 FA           9218 	.dw	0,250
      002D2B 00                    9219 	.uleb128	0
      002D2C 0A                    9220 	.uleb128	10
      002D2D 00 00 16 1A           9221 	.dw	0,5658
      002D31 54 49 4D 31 5F 47 65  9222 	.ascii "TIM1_GetCapture3"
             74 43 61 70 74 75 72
             65 33
      002D41 00                    9223 	.db	0
      002D42 00 00 A0 9F           9224 	.dw	0,(_TIM1_GetCapture3)
      002D46 00 00 A0 CF           9225 	.dw	0,(XG$TIM1_GetCapture3$0$0+7)
      002D4A 01                    9226 	.db	1
      002D4B 00 00 06 A4           9227 	.dw	0,(Ldebug_loc_start+220)
      002D4F 00 00 00 EA           9228 	.dw	0,234
      002D53 0B                    9229 	.uleb128	11
      002D54 74 6D 70 63 63 72 33  9230 	.ascii "tmpccr3"
      002D5B 00                    9231 	.db	0
      002D5C 00 00 00 EA           9232 	.dw	0,234
      002D60 07                    9233 	.uleb128	7
      002D61 01                    9234 	.db	1
      002D62 51                    9235 	.db	81
      002D63 74 6D 70 63 63 72 33  9236 	.ascii "tmpccr3l"
             6C
      002D6B 00                    9237 	.db	0
      002D6C 00 00 00 FA           9238 	.dw	0,250
      002D70 0B                    9239 	.uleb128	11
      002D71 74 6D 70 63 63 72 33  9240 	.ascii "tmpccr3h"
             68
      002D79 00                    9241 	.db	0
      002D7A 00 00 00 FA           9242 	.dw	0,250
      002D7E 00                    9243 	.uleb128	0
      002D7F 0A                    9244 	.uleb128	10
      002D80 00 00 16 6D           9245 	.dw	0,5741
      002D84 54 49 4D 31 5F 47 65  9246 	.ascii "TIM1_GetCapture4"
             74 43 61 70 74 75 72
             65 34
      002D94 00                    9247 	.db	0
      002D95 00 00 A0 CF           9248 	.dw	0,(_TIM1_GetCapture4)
      002D99 00 00 A0 FF           9249 	.dw	0,(XG$TIM1_GetCapture4$0$0+7)
      002D9D 01                    9250 	.db	1
      002D9E 00 00 06 90           9251 	.dw	0,(Ldebug_loc_start+200)
      002DA2 00 00 00 EA           9252 	.dw	0,234
      002DA6 0B                    9253 	.uleb128	11
      002DA7 74 6D 70 63 63 72 34  9254 	.ascii "tmpccr4"
      002DAE 00                    9255 	.db	0
      002DAF 00 00 00 EA           9256 	.dw	0,234
      002DB3 07                    9257 	.uleb128	7
      002DB4 01                    9258 	.db	1
      002DB5 51                    9259 	.db	81
      002DB6 74 6D 70 63 63 72 34  9260 	.ascii "tmpccr4l"
             6C
      002DBE 00                    9261 	.db	0
      002DBF 00 00 00 FA           9262 	.dw	0,250
      002DC3 0B                    9263 	.uleb128	11
      002DC4 74 6D 70 63 63 72 34  9264 	.ascii "tmpccr4h"
             68
      002DCC 00                    9265 	.db	0
      002DCD 00 00 00 FA           9266 	.dw	0,250
      002DD1 00                    9267 	.uleb128	0
      002DD2 0A                    9268 	.uleb128	10
      002DD3 00 00 16 A4           9269 	.dw	0,5796
      002DD7 54 49 4D 31 5F 47 65  9270 	.ascii "TIM1_GetCounter"
             74 43 6F 75 6E 74 65
             72
      002DE6 00                    9271 	.db	0
      002DE7 00 00 A0 FF           9272 	.dw	0,(_TIM1_GetCounter)
      002DEB 00 00 A1 2D           9273 	.dw	0,(XG$TIM1_GetCounter$0$0+7)
      002DEF 01                    9274 	.db	1
      002DF0 00 00 06 7C           9275 	.dw	0,(Ldebug_loc_start+180)
      002DF4 00 00 00 EA           9276 	.dw	0,234
      002DF8 07                    9277 	.uleb128	7
      002DF9 02                    9278 	.db	2
      002DFA 91                    9279 	.db	145
      002DFB 7C                    9280 	.sleb128	-4
      002DFC 74 6D 70 63 6E 74 72  9281 	.ascii "tmpcntr"
      002E03 00                    9282 	.db	0
      002E04 00 00 00 EA           9283 	.dw	0,234
      002E08 00                    9284 	.uleb128	0
      002E09 0A                    9285 	.uleb128	10
      002E0A 00 00 16 DA           9286 	.dw	0,5850
      002E0E 54 49 4D 31 5F 47 65  9287 	.ascii "TIM1_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      002E1F 00                    9288 	.db	0
      002E20 00 00 A1 2D           9289 	.dw	0,(_TIM1_GetPrescaler)
      002E24 00 00 A1 5B           9290 	.dw	0,(XG$TIM1_GetPrescaler$0$0+7)
      002E28 01                    9291 	.db	1
      002E29 00 00 06 68           9292 	.dw	0,(Ldebug_loc_start+160)
      002E2D 00 00 00 EA           9293 	.dw	0,234
      002E31 07                    9294 	.uleb128	7
      002E32 02                    9295 	.db	2
      002E33 91                    9296 	.db	145
      002E34 7C                    9297 	.sleb128	-4
      002E35 74 65 6D 70           9298 	.ascii "temp"
      002E39 00                    9299 	.db	0
      002E3A 00 00 00 EA           9300 	.dw	0,234
      002E3E 00                    9301 	.uleb128	0
      002E3F 0A                    9302 	.uleb128	10
      002E40 00 00 17 51           9303 	.dw	0,5969
      002E44 54 49 4D 31 5F 47 65  9304 	.ascii "TIM1_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      002E56 00                    9305 	.db	0
      002E57 00 00 A1 5B           9306 	.dw	0,(_TIM1_GetFlagStatus)
      002E5B 00 00 A1 94           9307 	.dw	0,(XG$TIM1_GetFlagStatus$0$0+7)
      002E5F 01                    9308 	.db	1
      002E60 00 00 06 54           9309 	.dw	0,(Ldebug_loc_start+140)
      002E64 00 00 00 FA           9310 	.dw	0,250
      002E68 04                    9311 	.uleb128	4
      002E69 02                    9312 	.db	2
      002E6A 91                    9313 	.db	145
      002E6B 04                    9314 	.sleb128	4
      002E6C 54 49 4D 31 5F 46 4C  9315 	.ascii "TIM1_FLAG"
             41 47
      002E75 00                    9316 	.db	0
      002E76 00 00 00 EA           9317 	.dw	0,234
      002E7A 06                    9318 	.uleb128	6
      002E7B 06                    9319 	.uleb128	6
      002E7C 07                    9320 	.uleb128	7
      002E7D 01                    9321 	.db	1
      002E7E 51                    9322 	.db	81
      002E7F 62 69 74 73 74 61 74  9323 	.ascii "bitstatus"
             75 73
      002E88 00                    9324 	.db	0
      002E89 00 00 00 FA           9325 	.dw	0,250
      002E8D 07                    9326 	.uleb128	7
      002E8E 02                    9327 	.db	2
      002E8F 91                    9328 	.db	145
      002E90 7B                    9329 	.sleb128	-5
      002E91 74 69 6D 31 5F 66 6C  9330 	.ascii "tim1_flag_l"
             61 67 5F 6C
      002E9C 00                    9331 	.db	0
      002E9D 00 00 00 FA           9332 	.dw	0,250
      002EA1 07                    9333 	.uleb128	7
      002EA2 02                    9334 	.db	2
      002EA3 91                    9335 	.db	145
      002EA4 7C                    9336 	.sleb128	-4
      002EA5 74 69 6D 31 5F 66 6C  9337 	.ascii "tim1_flag_h"
             61 67 5F 68
      002EB0 00                    9338 	.db	0
      002EB1 00 00 00 FA           9339 	.dw	0,250
      002EB5 00                    9340 	.uleb128	0
      002EB6 03                    9341 	.uleb128	3
      002EB7 00 00 17 85           9342 	.dw	0,6021
      002EBB 54 49 4D 31 5F 43 6C  9343 	.ascii "TIM1_ClearFlag"
             65 61 72 46 6C 61 67
      002EC9 00                    9344 	.db	0
      002ECA 00 00 A1 94           9345 	.dw	0,(_TIM1_ClearFlag)
      002ECE 00 00 A1 BD           9346 	.dw	0,(XG$TIM1_ClearFlag$0$0+7)
      002ED2 01                    9347 	.db	1
      002ED3 00 00 06 40           9348 	.dw	0,(Ldebug_loc_start+120)
      002ED7 04                    9349 	.uleb128	4
      002ED8 02                    9350 	.db	2
      002ED9 91                    9351 	.db	145
      002EDA 04                    9352 	.sleb128	4
      002EDB 54 49 4D 31 5F 46 4C  9353 	.ascii "TIM1_FLAG"
             41 47
      002EE4 00                    9354 	.db	0
      002EE5 00 00 00 EA           9355 	.dw	0,234
      002EE9 00                    9356 	.uleb128	0
      002EEA 0A                    9357 	.uleb128	10
      002EEB 00 00 17 FB           9358 	.dw	0,6139
      002EEF 54 49 4D 31 5F 47 65  9359 	.ascii "TIM1_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      002EFF 00                    9360 	.db	0
      002F00 00 00 A1 BD           9361 	.dw	0,(_TIM1_GetITStatus)
      002F04 00 00 A1 ED           9362 	.dw	0,(XG$TIM1_GetITStatus$0$0+7)
      002F08 01                    9363 	.db	1
      002F09 00 00 06 2C           9364 	.dw	0,(Ldebug_loc_start+100)
      002F0D 00 00 00 FA           9365 	.dw	0,250
      002F11 04                    9366 	.uleb128	4
      002F12 02                    9367 	.db	2
      002F13 91                    9368 	.db	145
      002F14 04                    9369 	.sleb128	4
      002F15 54 49 4D 31 5F 49 54  9370 	.ascii "TIM1_IT"
      002F1C 00                    9371 	.db	0
      002F1D 00 00 00 FA           9372 	.dw	0,250
      002F21 06                    9373 	.uleb128	6
      002F22 06                    9374 	.uleb128	6
      002F23 07                    9375 	.uleb128	7
      002F24 01                    9376 	.db	1
      002F25 51                    9377 	.db	81
      002F26 62 69 74 73 74 61 74  9378 	.ascii "bitstatus"
             75 73
      002F2F 00                    9379 	.db	0
      002F30 00 00 00 FA           9380 	.dw	0,250
      002F34 07                    9381 	.uleb128	7
      002F35 02                    9382 	.db	2
      002F36 91                    9383 	.db	145
      002F37 7F                    9384 	.sleb128	-1
      002F38 54 49 4D 31 5F 69 74  9385 	.ascii "TIM1_itStatus"
             53 74 61 74 75 73
      002F45 00                    9386 	.db	0
      002F46 00 00 00 FA           9387 	.dw	0,250
      002F4A 07                    9388 	.uleb128	7
      002F4B 01                    9389 	.db	1
      002F4C 51                    9390 	.db	81
      002F4D 54 49 4D 31 5F 69 74  9391 	.ascii "TIM1_itEnable"
             45 6E 61 62 6C 65
      002F5A 00                    9392 	.db	0
      002F5B 00 00 00 FA           9393 	.dw	0,250
      002F5F 00                    9394 	.uleb128	0
      002F60 03                    9395 	.uleb128	3
      002F61 00 00 18 35           9396 	.dw	0,6197
      002F65 54 49 4D 31 5F 43 6C  9397 	.ascii "TIM1_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      002F7B 00                    9398 	.db	0
      002F7C 00 00 A1 ED           9399 	.dw	0,(_TIM1_ClearITPendingBit)
      002F80 00 00 A2 07           9400 	.dw	0,(XG$TIM1_ClearITPendingBit$0$0+7)
      002F84 01                    9401 	.db	1
      002F85 00 00 06 18           9402 	.dw	0,(Ldebug_loc_start+80)
      002F89 04                    9403 	.uleb128	4
      002F8A 02                    9404 	.db	2
      002F8B 91                    9405 	.db	145
      002F8C 04                    9406 	.sleb128	4
      002F8D 54 49 4D 31 5F 49 54  9407 	.ascii "TIM1_IT"
      002F94 00                    9408 	.db	0
      002F95 00 00 00 FA           9409 	.dw	0,250
      002F99 00                    9410 	.uleb128	0
      002F9A 03                    9411 	.uleb128	3
      002F9B 00 00 18 9C           9412 	.dw	0,6300
      002F9F 54 49 31 5F 43 6F 6E  9413 	.ascii "TI1_Config"
             66 69 67
      002FA9 00                    9414 	.db	0
      002FAA 00 00 A2 07           9415 	.dw	0,(_TI1_Config)
      002FAE 00 00 A2 4D           9416 	.dw	0,(XFstm8s_tim1$TI1_Config$0$0+7)
      002FB2 00                    9417 	.db	0
      002FB3 00 00 06 04           9418 	.dw	0,(Ldebug_loc_start+60)
      002FB7 04                    9419 	.uleb128	4
      002FB8 02                    9420 	.db	2
      002FB9 91                    9421 	.db	145
      002FBA 04                    9422 	.sleb128	4
      002FBB 54 49 4D 31 5F 49 43  9423 	.ascii "TIM1_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      002FCA 00                    9424 	.db	0
      002FCB 00 00 00 FA           9425 	.dw	0,250
      002FCF 04                    9426 	.uleb128	4
      002FD0 02                    9427 	.db	2
      002FD1 91                    9428 	.db	145
      002FD2 05                    9429 	.sleb128	5
      002FD3 54 49 4D 31 5F 49 43  9430 	.ascii "TIM1_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      002FE3 00                    9431 	.db	0
      002FE4 00 00 00 FA           9432 	.dw	0,250
      002FE8 04                    9433 	.uleb128	4
      002FE9 02                    9434 	.db	2
      002FEA 91                    9435 	.db	145
      002FEB 06                    9436 	.sleb128	6
      002FEC 54 49 4D 31 5F 49 43  9437 	.ascii "TIM1_ICFilter"
             46 69 6C 74 65 72
      002FF9 00                    9438 	.db	0
      002FFA 00 00 00 FA           9439 	.dw	0,250
      002FFE 06                    9440 	.uleb128	6
      002FFF 06                    9441 	.uleb128	6
      003000 00                    9442 	.uleb128	0
      003001 03                    9443 	.uleb128	3
      003002 00 00 19 03           9444 	.dw	0,6403
      003006 54 49 32 5F 43 6F 6E  9445 	.ascii "TI2_Config"
             66 69 67
      003010 00                    9446 	.db	0
      003011 00 00 A2 4D           9447 	.dw	0,(_TI2_Config)
      003015 00 00 A2 99           9448 	.dw	0,(XFstm8s_tim1$TI2_Config$0$0+7)
      003019 00                    9449 	.db	0
      00301A 00 00 05 F0           9450 	.dw	0,(Ldebug_loc_start+40)
      00301E 04                    9451 	.uleb128	4
      00301F 02                    9452 	.db	2
      003020 91                    9453 	.db	145
      003021 04                    9454 	.sleb128	4
      003022 54 49 4D 31 5F 49 43  9455 	.ascii "TIM1_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      003031 00                    9456 	.db	0
      003032 00 00 00 FA           9457 	.dw	0,250
      003036 04                    9458 	.uleb128	4
      003037 02                    9459 	.db	2
      003038 91                    9460 	.db	145
      003039 05                    9461 	.sleb128	5
      00303A 54 49 4D 31 5F 49 43  9462 	.ascii "TIM1_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      00304A 00                    9463 	.db	0
      00304B 00 00 00 FA           9464 	.dw	0,250
      00304F 04                    9465 	.uleb128	4
      003050 02                    9466 	.db	2
      003051 91                    9467 	.db	145
      003052 06                    9468 	.sleb128	6
      003053 54 49 4D 31 5F 49 43  9469 	.ascii "TIM1_ICFilter"
             46 69 6C 74 65 72
      003060 00                    9470 	.db	0
      003061 00 00 00 FA           9471 	.dw	0,250
      003065 06                    9472 	.uleb128	6
      003066 06                    9473 	.uleb128	6
      003067 00                    9474 	.uleb128	0
      003068 03                    9475 	.uleb128	3
      003069 00 00 19 6A           9476 	.dw	0,6506
      00306D 54 49 33 5F 43 6F 6E  9477 	.ascii "TI3_Config"
             66 69 67
      003077 00                    9478 	.db	0
      003078 00 00 A2 99           9479 	.dw	0,(_TI3_Config)
      00307C 00 00 A2 DF           9480 	.dw	0,(XFstm8s_tim1$TI3_Config$0$0+7)
      003080 00                    9481 	.db	0
      003081 00 00 05 DC           9482 	.dw	0,(Ldebug_loc_start+20)
      003085 04                    9483 	.uleb128	4
      003086 02                    9484 	.db	2
      003087 91                    9485 	.db	145
      003088 04                    9486 	.sleb128	4
      003089 54 49 4D 31 5F 49 43  9487 	.ascii "TIM1_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      003098 00                    9488 	.db	0
      003099 00 00 00 FA           9489 	.dw	0,250
      00309D 04                    9490 	.uleb128	4
      00309E 02                    9491 	.db	2
      00309F 91                    9492 	.db	145
      0030A0 05                    9493 	.sleb128	5
      0030A1 54 49 4D 31 5F 49 43  9494 	.ascii "TIM1_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      0030B1 00                    9495 	.db	0
      0030B2 00 00 00 FA           9496 	.dw	0,250
      0030B6 04                    9497 	.uleb128	4
      0030B7 02                    9498 	.db	2
      0030B8 91                    9499 	.db	145
      0030B9 06                    9500 	.sleb128	6
      0030BA 54 49 4D 31 5F 49 43  9501 	.ascii "TIM1_ICFilter"
             46 69 6C 74 65 72
      0030C7 00                    9502 	.db	0
      0030C8 00 00 00 FA           9503 	.dw	0,250
      0030CC 06                    9504 	.uleb128	6
      0030CD 06                    9505 	.uleb128	6
      0030CE 00                    9506 	.uleb128	0
      0030CF 0C                    9507 	.uleb128	12
      0030D0 54 49 34 5F 43 6F 6E  9508 	.ascii "TI4_Config"
             66 69 67
      0030DA 00                    9509 	.db	0
      0030DB 00 00 A2 DF           9510 	.dw	0,(_TI4_Config)
      0030DF 00 00 A3 2B           9511 	.dw	0,(XFstm8s_tim1$TI4_Config$0$0+7)
      0030E3 00                    9512 	.db	0
      0030E4 00 00 05 C8           9513 	.dw	0,(Ldebug_loc_start)
      0030E8 04                    9514 	.uleb128	4
      0030E9 02                    9515 	.db	2
      0030EA 91                    9516 	.db	145
      0030EB 04                    9517 	.sleb128	4
      0030EC 54 49 4D 31 5F 49 43  9518 	.ascii "TIM1_ICPolarity"
             50 6F 6C 61 72 69 74
             79
      0030FB 00                    9519 	.db	0
      0030FC 00 00 00 FA           9520 	.dw	0,250
      003100 04                    9521 	.uleb128	4
      003101 02                    9522 	.db	2
      003102 91                    9523 	.db	145
      003103 05                    9524 	.sleb128	5
      003104 54 49 4D 31 5F 49 43  9525 	.ascii "TIM1_ICSelection"
             53 65 6C 65 63 74 69
             6F 6E
      003114 00                    9526 	.db	0
      003115 00 00 00 FA           9527 	.dw	0,250
      003119 04                    9528 	.uleb128	4
      00311A 02                    9529 	.db	2
      00311B 91                    9530 	.db	145
      00311C 06                    9531 	.sleb128	6
      00311D 54 49 4D 31 5F 49 43  9532 	.ascii "TIM1_ICFilter"
             46 69 6C 74 65 72
      00312A 00                    9533 	.db	0
      00312B 00 00 00 FA           9534 	.dw	0,250
      00312F 06                    9535 	.uleb128	6
      003130 06                    9536 	.uleb128	6
      003131 00                    9537 	.uleb128	0
      003132 00                    9538 	.uleb128	0
      003133 00                    9539 	.uleb128	0
      003134 00                    9540 	.uleb128	0
      003135                       9541 Ldebug_info_end:
                                   9542 
                                   9543 	.area .debug_pubnames (NOLOAD)
      000784 00 00 06 DC           9544 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000788                       9545 Ldebug_pubnames_start:
      000788 00 02                 9546 	.dw	2
      00078A 00 00 17 65           9547 	.dw	0,(Ldebug_info_start-4)
      00078E 00 00 19 D0           9548 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000792 00 00 00 48           9549 	.dw	0,72
      000796 54 49 4D 31 5F 44 65  9550 	.ascii "TIM1_DeInit"
             49 6E 69 74
      0007A1 00                    9551 	.db	0
      0007A2 00 00 00 62           9552 	.dw	0,98
      0007A6 54 49 4D 31 5F 54 69  9553 	.ascii "TIM1_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      0007B7 00                    9554 	.db	0
      0007B8 00 00 01 0B           9555 	.dw	0,267
      0007BC 54 49 4D 31 5F 4F 43  9556 	.ascii "TIM1_OC1Init"
             31 49 6E 69 74
      0007C8 00                    9557 	.db	0
      0007C9 00 00 01 E9           9558 	.dw	0,489
      0007CD 54 49 4D 31 5F 4F 43  9559 	.ascii "TIM1_OC2Init"
             32 49 6E 69 74
      0007D9 00                    9560 	.db	0
      0007DA 00 00 02 C7           9561 	.dw	0,711
      0007DE 54 49 4D 31 5F 4F 43  9562 	.ascii "TIM1_OC3Init"
             33 49 6E 69 74
      0007EA 00                    9563 	.db	0
      0007EB 00 00 03 A5           9564 	.dw	0,933
      0007EF 54 49 4D 31 5F 4F 43  9565 	.ascii "TIM1_OC4Init"
             34 49 6E 69 74
      0007FB 00                    9566 	.db	0
      0007FC 00 00 04 38           9567 	.dw	0,1080
      000800 54 49 4D 31 5F 42 44  9568 	.ascii "TIM1_BDTRConfig"
             54 52 43 6F 6E 66 69
             67
      00080F 00                    9569 	.db	0
      000810 00 00 04 EA           9570 	.dw	0,1258
      000814 54 49 4D 31 5F 49 43  9571 	.ascii "TIM1_ICInit"
             49 6E 69 74
      00081F 00                    9572 	.db	0
      000820 00 00 05 82           9573 	.dw	0,1410
      000824 54 49 4D 31 5F 50 57  9574 	.ascii "TIM1_PWMIConfig"
             4D 49 43 6F 6E 66 69
             67
      000833 00                    9575 	.db	0
      000834 00 00 06 47           9576 	.dw	0,1607
      000838 54 49 4D 31 5F 43 6D  9577 	.ascii "TIM1_Cmd"
             64
      000840 00                    9578 	.db	0
      000841 00 00 06 76           9579 	.dw	0,1654
      000845 54 49 4D 31 5F 43 74  9580 	.ascii "TIM1_CtrlPWMOutputs"
             72 6C 50 57 4D 4F 75
             74 70 75 74 73
      000858 00                    9581 	.db	0
      000859 00 00 06 B0           9582 	.dw	0,1712
      00085D 54 49 4D 31 5F 49 54  9583 	.ascii "TIM1_ITConfig"
             43 6F 6E 66 69 67
      00086A 00                    9584 	.db	0
      00086B 00 00 06 F4           9585 	.dw	0,1780
      00086F 54 49 4D 31 5F 49 6E  9586 	.ascii "TIM1_InternalClockConfig"
             74 65 72 6E 61 6C 43
             6C 6F 63 6B 43 6F 6E
             66 69 67
      000887 00                    9587 	.db	0
      000888 00 00 07 1B           9588 	.dw	0,1819
      00088C 54 49 4D 31 5F 45 54  9589 	.ascii "TIM1_ETRClockMode1Config"
             52 43 6C 6F 63 6B 4D
             6F 64 65 31 43 6F 6E
             66 69 67
      0008A4 00                    9590 	.db	0
      0008A5 00 00 07 95           9591 	.dw	0,1941
      0008A9 54 49 4D 31 5F 45 54  9592 	.ascii "TIM1_ETRClockMode2Config"
             52 43 6C 6F 63 6B 4D
             6F 64 65 32 43 6F 6E
             66 69 67
      0008C1 00                    9593 	.db	0
      0008C2 00 00 08 0F           9594 	.dw	0,2063
      0008C6 54 49 4D 31 5F 45 54  9595 	.ascii "TIM1_ETRConfig"
             52 43 6F 6E 66 69 67
      0008D4 00                    9596 	.db	0
      0008D5 00 00 08 7F           9597 	.dw	0,2175
      0008D9 54 49 4D 31 5F 54 49  9598 	.ascii "TIM1_TIxExternalClockConfig"
             78 45 78 74 65 72 6E
             61 6C 43 6C 6F 63 6B
             43 6F 6E 66 69 67
      0008F4 00                    9599 	.db	0
      0008F5 00 00 08 FB           9600 	.dw	0,2299
      0008F9 54 49 4D 31 5F 53 65  9601 	.ascii "TIM1_SelectInputTrigger"
             6C 65 63 74 49 6E 70
             75 74 54 72 69 67 67
             65 72
      000910 00                    9602 	.db	0
      000911 00 00 09 46           9603 	.dw	0,2374
      000915 54 49 4D 31 5F 55 70  9604 	.ascii "TIM1_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      00092D 00                    9605 	.db	0
      00092E 00 00 09 85           9606 	.dw	0,2437
      000932 54 49 4D 31 5F 55 70  9607 	.ascii "TIM1_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      00094A 00                    9608 	.db	0
      00094B 00 00 09 CD           9609 	.dw	0,2509
      00094F 54 49 4D 31 5F 53 65  9610 	.ascii "TIM1_SelectHallSensor"
             6C 65 63 74 48 61 6C
             6C 53 65 6E 73 6F 72
      000964 00                    9611 	.db	0
      000965 00 00 0A 09           9612 	.dw	0,2569
      000969 54 49 4D 31 5F 53 65  9613 	.ascii "TIM1_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      000980 00                    9614 	.db	0
      000981 00 00 0A 4A           9615 	.dw	0,2634
      000985 54 49 4D 31 5F 53 65  9616 	.ascii "TIM1_SelectOutputTrigger"
             6C 65 63 74 4F 75 74
             70 75 74 54 72 69 67
             67 65 72
      00099D 00                    9617 	.db	0
      00099E 00 00 0A 8E           9618 	.dw	0,2702
      0009A2 54 49 4D 31 5F 53 65  9619 	.ascii "TIM1_SelectSlaveMode"
             6C 65 63 74 53 6C 61
             76 65 4D 6F 64 65
      0009B6 00                    9620 	.db	0
      0009B7 00 00 0A CD           9621 	.dw	0,2765
      0009BB 54 49 4D 31 5F 53 65  9622 	.ascii "TIM1_SelectMasterSlaveMode"
             6C 65 63 74 4D 61 73
             74 65 72 53 6C 61 76
             65 4D 6F 64 65
      0009D5 00                    9623 	.db	0
      0009D6 00 00 0B 0E           9624 	.dw	0,2830
      0009DA 54 49 4D 31 5F 45 6E  9625 	.ascii "TIM1_EncoderInterfaceConfig"
             63 6F 64 65 72 49 6E
             74 65 72 66 61 63 65
             43 6F 6E 66 69 67
      0009F5 00                    9626 	.db	0
      0009F6 00 00 0B 8C           9627 	.dw	0,2956
      0009FA 54 49 4D 31 5F 50 72  9628 	.ascii "TIM1_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      000A0E 00                    9629 	.db	0
      000A0F 00 00 0B E1           9630 	.dw	0,3041
      000A13 54 49 4D 31 5F 43 6F  9631 	.ascii "TIM1_CounterModeConfig"
             75 6E 74 65 72 4D 6F
             64 65 43 6F 6E 66 69
             67
      000A29 00                    9632 	.db	0
      000A2A 00 00 0C 24           9633 	.dw	0,3108
      000A2E 54 49 4D 31 5F 46 6F  9634 	.ascii "TIM1_ForcedOC1Config"
             72 63 65 64 4F 43 31
             43 6F 6E 66 69 67
      000A42 00                    9635 	.db	0
      000A43 00 00 0C 66           9636 	.dw	0,3174
      000A47 54 49 4D 31 5F 46 6F  9637 	.ascii "TIM1_ForcedOC2Config"
             72 63 65 64 4F 43 32
             43 6F 6E 66 69 67
      000A5B 00                    9638 	.db	0
      000A5C 00 00 0C A8           9639 	.dw	0,3240
      000A60 54 49 4D 31 5F 46 6F  9640 	.ascii "TIM1_ForcedOC3Config"
             72 63 65 64 4F 43 33
             43 6F 6E 66 69 67
      000A74 00                    9641 	.db	0
      000A75 00 00 0C EA           9642 	.dw	0,3306
      000A79 54 49 4D 31 5F 46 6F  9643 	.ascii "TIM1_ForcedOC4Config"
             72 63 65 64 4F 43 34
             43 6F 6E 66 69 67
      000A8D 00                    9644 	.db	0
      000A8E 00 00 0D 2C           9645 	.dw	0,3372
      000A92 54 49 4D 31 5F 41 52  9646 	.ascii "TIM1_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000AA7 00                    9647 	.db	0
      000AA8 00 00 0D 68           9648 	.dw	0,3432
      000AAC 54 49 4D 31 5F 53 65  9649 	.ascii "TIM1_SelectCOM"
             6C 65 63 74 43 4F 4D
      000ABA 00                    9650 	.db	0
      000ABB 00 00 0D 9D           9651 	.dw	0,3485
      000ABF 54 49 4D 31 5F 43 43  9652 	.ascii "TIM1_CCPreloadControl"
             50 72 65 6C 6F 61 64
             43 6F 6E 74 72 6F 6C
      000AD4 00                    9653 	.db	0
      000AD5 00 00 0D D9           9654 	.dw	0,3545
      000AD9 54 49 4D 31 5F 4F 43  9655 	.ascii "TIM1_OC1PreloadConfig"
             31 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000AEE 00                    9656 	.db	0
      000AEF 00 00 0E 15           9657 	.dw	0,3605
      000AF3 54 49 4D 31 5F 4F 43  9658 	.ascii "TIM1_OC2PreloadConfig"
             32 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000B08 00                    9659 	.db	0
      000B09 00 00 0E 51           9660 	.dw	0,3665
      000B0D 54 49 4D 31 5F 4F 43  9661 	.ascii "TIM1_OC3PreloadConfig"
             33 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000B22 00                    9662 	.db	0
      000B23 00 00 0E 8D           9663 	.dw	0,3725
      000B27 54 49 4D 31 5F 4F 43  9664 	.ascii "TIM1_OC4PreloadConfig"
             34 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      000B3C 00                    9665 	.db	0
      000B3D 00 00 0E C9           9666 	.dw	0,3785
      000B41 54 49 4D 31 5F 4F 43  9667 	.ascii "TIM1_OC1FastConfig"
             31 46 61 73 74 43 6F
             6E 66 69 67
      000B53 00                    9668 	.db	0
      000B54 00 00 0F 02           9669 	.dw	0,3842
      000B58 54 49 4D 31 5F 4F 43  9670 	.ascii "TIM1_OC2FastConfig"
             32 46 61 73 74 43 6F
             6E 66 69 67
      000B6A 00                    9671 	.db	0
      000B6B 00 00 0F 3B           9672 	.dw	0,3899
      000B6F 54 49 4D 31 5F 4F 43  9673 	.ascii "TIM1_OC3FastConfig"
             33 46 61 73 74 43 6F
             6E 66 69 67
      000B81 00                    9674 	.db	0
      000B82 00 00 0F 74           9675 	.dw	0,3956
      000B86 54 49 4D 31 5F 4F 43  9676 	.ascii "TIM1_OC4FastConfig"
             34 46 61 73 74 43 6F
             6E 66 69 67
      000B98 00                    9677 	.db	0
      000B99 00 00 0F AD           9678 	.dw	0,4013
      000B9D 54 49 4D 31 5F 47 65  9679 	.ascii "TIM1_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      000BAF 00                    9680 	.db	0
      000BB0 00 00 0F EC           9681 	.dw	0,4076
      000BB4 54 49 4D 31 5F 4F 43  9682 	.ascii "TIM1_OC1PolarityConfig"
             31 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      000BCA 00                    9683 	.db	0
      000BCB 00 00 10 30           9684 	.dw	0,4144
      000BCF 54 49 4D 31 5F 4F 43  9685 	.ascii "TIM1_OC1NPolarityConfig"
             31 4E 50 6F 6C 61 72
             69 74 79 43 6F 6E 66
             69 67
      000BE6 00                    9686 	.db	0
      000BE7 00 00 10 76           9687 	.dw	0,4214
      000BEB 54 49 4D 31 5F 4F 43  9688 	.ascii "TIM1_OC2PolarityConfig"
             32 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      000C01 00                    9689 	.db	0
      000C02 00 00 10 BA           9690 	.dw	0,4282
      000C06 54 49 4D 31 5F 4F 43  9691 	.ascii "TIM1_OC2NPolarityConfig"
             32 4E 50 6F 6C 61 72
             69 74 79 43 6F 6E 66
             69 67
      000C1D 00                    9692 	.db	0
      000C1E 00 00 11 00           9693 	.dw	0,4352
      000C22 54 49 4D 31 5F 4F 43  9694 	.ascii "TIM1_OC3PolarityConfig"
             33 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      000C38 00                    9695 	.db	0
      000C39 00 00 11 44           9696 	.dw	0,4420
      000C3D 54 49 4D 31 5F 4F 43  9697 	.ascii "TIM1_OC3NPolarityConfig"
             33 4E 50 6F 6C 61 72
             69 74 79 43 6F 6E 66
             69 67
      000C54 00                    9698 	.db	0
      000C55 00 00 11 8A           9699 	.dw	0,4490
      000C59 54 49 4D 31 5F 4F 43  9700 	.ascii "TIM1_OC4PolarityConfig"
             34 50 6F 6C 61 72 69
             74 79 43 6F 6E 66 69
             67
      000C6F 00                    9701 	.db	0
      000C70 00 00 11 CE           9702 	.dw	0,4558
      000C74 54 49 4D 31 5F 43 43  9703 	.ascii "TIM1_CCxCmd"
             78 43 6D 64
      000C7F 00                    9704 	.db	0
      000C80 00 00 12 2F           9705 	.dw	0,4655
      000C84 54 49 4D 31 5F 43 43  9706 	.ascii "TIM1_CCxNCmd"
             78 4E 43 6D 64
      000C90 00                    9707 	.db	0
      000C91 00 00 12 89           9708 	.dw	0,4745
      000C95 54 49 4D 31 5F 53 65  9709 	.ascii "TIM1_SelectOCxM"
             6C 65 63 74 4F 43 78
             4D
      000CA4 00                    9710 	.db	0
      000CA5 00 00 12 D9           9711 	.dw	0,4825
      000CA9 54 49 4D 31 5F 53 65  9712 	.ascii "TIM1_SetCounter"
             74 43 6F 75 6E 74 65
             72
      000CB8 00                    9713 	.db	0
      000CB9 00 00 13 0C           9714 	.dw	0,4876
      000CBD 54 49 4D 31 5F 53 65  9715 	.ascii "TIM1_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      000CCF 00                    9716 	.db	0
      000CD0 00 00 13 45           9717 	.dw	0,4933
      000CD4 54 49 4D 31 5F 53 65  9718 	.ascii "TIM1_SetCompare1"
             74 43 6F 6D 70 61 72
             65 31
      000CE4 00                    9719 	.db	0
      000CE5 00 00 13 7A           9720 	.dw	0,4986
      000CE9 54 49 4D 31 5F 53 65  9721 	.ascii "TIM1_SetCompare2"
             74 43 6F 6D 70 61 72
             65 32
      000CF9 00                    9722 	.db	0
      000CFA 00 00 13 AF           9723 	.dw	0,5039
      000CFE 54 49 4D 31 5F 53 65  9724 	.ascii "TIM1_SetCompare3"
             74 43 6F 6D 70 61 72
             65 33
      000D0E 00                    9725 	.db	0
      000D0F 00 00 13 E4           9726 	.dw	0,5092
      000D13 54 49 4D 31 5F 53 65  9727 	.ascii "TIM1_SetCompare4"
             74 43 6F 6D 70 61 72
             65 34
      000D23 00                    9728 	.db	0
      000D24 00 00 14 19           9729 	.dw	0,5145
      000D28 54 49 4D 31 5F 53 65  9730 	.ascii "TIM1_SetIC1Prescaler"
             74 49 43 31 50 72 65
             73 63 61 6C 65 72
      000D3C 00                    9731 	.db	0
      000D3D 00 00 14 5B           9732 	.dw	0,5211
      000D41 54 49 4D 31 5F 53 65  9733 	.ascii "TIM1_SetIC2Prescaler"
             74 49 43 32 50 72 65
             73 63 61 6C 65 72
      000D55 00                    9734 	.db	0
      000D56 00 00 14 9D           9735 	.dw	0,5277
      000D5A 54 49 4D 31 5F 53 65  9736 	.ascii "TIM1_SetIC3Prescaler"
             74 49 43 33 50 72 65
             73 63 61 6C 65 72
      000D6E 00                    9737 	.db	0
      000D6F 00 00 14 DF           9738 	.dw	0,5343
      000D73 54 49 4D 31 5F 53 65  9739 	.ascii "TIM1_SetIC4Prescaler"
             74 49 43 34 50 72 65
             73 63 61 6C 65 72
      000D87 00                    9740 	.db	0
      000D88 00 00 15 21           9741 	.dw	0,5409
      000D8C 54 49 4D 31 5F 47 65  9742 	.ascii "TIM1_GetCapture1"
             74 43 61 70 74 75 72
             65 31
      000D9C 00                    9743 	.db	0
      000D9D 00 00 15 74           9744 	.dw	0,5492
      000DA1 54 49 4D 31 5F 47 65  9745 	.ascii "TIM1_GetCapture2"
             74 43 61 70 74 75 72
             65 32
      000DB1 00                    9746 	.db	0
      000DB2 00 00 15 C7           9747 	.dw	0,5575
      000DB6 54 49 4D 31 5F 47 65  9748 	.ascii "TIM1_GetCapture3"
             74 43 61 70 74 75 72
             65 33
      000DC6 00                    9749 	.db	0
      000DC7 00 00 16 1A           9750 	.dw	0,5658
      000DCB 54 49 4D 31 5F 47 65  9751 	.ascii "TIM1_GetCapture4"
             74 43 61 70 74 75 72
             65 34
      000DDB 00                    9752 	.db	0
      000DDC 00 00 16 6D           9753 	.dw	0,5741
      000DE0 54 49 4D 31 5F 47 65  9754 	.ascii "TIM1_GetCounter"
             74 43 6F 75 6E 74 65
             72
      000DEF 00                    9755 	.db	0
      000DF0 00 00 16 A4           9756 	.dw	0,5796
      000DF4 54 49 4D 31 5F 47 65  9757 	.ascii "TIM1_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      000E05 00                    9758 	.db	0
      000E06 00 00 16 DA           9759 	.dw	0,5850
      000E0A 54 49 4D 31 5F 47 65  9760 	.ascii "TIM1_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      000E1C 00                    9761 	.db	0
      000E1D 00 00 17 51           9762 	.dw	0,5969
      000E21 54 49 4D 31 5F 43 6C  9763 	.ascii "TIM1_ClearFlag"
             65 61 72 46 6C 61 67
      000E2F 00                    9764 	.db	0
      000E30 00 00 17 85           9765 	.dw	0,6021
      000E34 54 49 4D 31 5F 47 65  9766 	.ascii "TIM1_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      000E44 00                    9767 	.db	0
      000E45 00 00 17 FB           9768 	.dw	0,6139
      000E49 54 49 4D 31 5F 43 6C  9769 	.ascii "TIM1_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      000E5F 00                    9770 	.db	0
      000E60 00 00 00 00           9771 	.dw	0,0
      000E64                       9772 Ldebug_pubnames_end:
                                   9773 
                                   9774 	.area .debug_frame (NOLOAD)
      00007E 00 00                 9775 	.dw	0
      000080 00 0E                 9776 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      000082                       9777 Ldebug_CIE_start:
      000082 FF FF                 9778 	.dw	0xffff
      000084 FF FF                 9779 	.dw	0xffff
      000086 01                    9780 	.db	1
      000087 00                    9781 	.db	0
      000088 01                    9782 	.uleb128	1
      000089 01                    9783 	.sleb128	1
      00008A 00                    9784 	.db	0
      00008B 0C                    9785 	.db	12
      00008C 00                    9786 	.uleb128	0
      00008D 00                    9787 	.uleb128	0
      00008E 80                    9788 	.db	128
      00008F 00                    9789 	.uleb128	0
      000090                       9790 Ldebug_CIE_end:
