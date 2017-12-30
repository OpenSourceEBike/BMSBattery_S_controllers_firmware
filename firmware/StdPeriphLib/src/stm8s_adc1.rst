                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_DeInit
                                     12 	.globl _ADC1_Init
                                     13 	.globl _ADC1_Cmd
                                     14 	.globl _ADC1_ScanModeCmd
                                     15 	.globl _ADC1_DataBufferCmd
                                     16 	.globl _ADC1_ITConfig
                                     17 	.globl _ADC1_PrescalerConfig
                                     18 	.globl _ADC1_SchmittTriggerConfig
                                     19 	.globl _ADC1_ConversionConfig
                                     20 	.globl _ADC1_ExternalTriggerConfig
                                     21 	.globl _ADC1_StartConversion
                                     22 	.globl _ADC1_GetConversionValue
                                     23 	.globl _ADC1_AWDChannelConfig
                                     24 	.globl _ADC1_SetHighThreshold
                                     25 	.globl _ADC1_SetLowThreshold
                                     26 	.globl _ADC1_GetBufferValue
                                     27 	.globl _ADC1_GetAWDChannelStatus
                                     28 	.globl _ADC1_GetFlagStatus
                                     29 	.globl _ADC1_ClearFlag
                                     30 	.globl _ADC1_GetITStatus
                                     31 	.globl _ADC1_ClearITPendingBit
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                           000000    60 	Sstm8s_adc1$ADC1_DeInit$0 ==.
                                     61 ;	StdPeriphLib/src/stm8s_adc1.c: 52: void ADC1_DeInit(void)
                                     62 ;	-----------------------------------------
                                     63 ;	 function ADC1_DeInit
                                     64 ;	-----------------------------------------
      00AC1C                         65 _ADC1_DeInit:
      00AC1C 3B 01 A5         [ 1]   66 	push	_fp_+1
      00AC1F 3B 01 A4         [ 1]   67 	push	_fp_
      00AC22 90 96            [ 1]   68 	ldw	y, sp
      00AC24 90 CF 01 A4      [ 2]   69 	ldw	_fp_, y
                           00000C    70 	Sstm8s_adc1$ADC1_DeInit$1 ==.
                           00000C    71 	Sstm8s_adc1$ADC1_DeInit$2 ==.
                                     72 ;	StdPeriphLib/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
      00AC28 35 00 54 00      [ 1]   73 	mov	0x5400+0, #0x00
                           000010    74 	Sstm8s_adc1$ADC1_DeInit$3 ==.
                                     75 ;	StdPeriphLib/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
      00AC2C 35 00 54 01      [ 1]   76 	mov	0x5401+0, #0x00
                           000014    77 	Sstm8s_adc1$ADC1_DeInit$4 ==.
                                     78 ;	StdPeriphLib/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
      00AC30 35 00 54 02      [ 1]   79 	mov	0x5402+0, #0x00
                           000018    80 	Sstm8s_adc1$ADC1_DeInit$5 ==.
                                     81 ;	StdPeriphLib/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
      00AC34 35 00 54 03      [ 1]   82 	mov	0x5403+0, #0x00
                           00001C    83 	Sstm8s_adc1$ADC1_DeInit$6 ==.
                                     84 ;	StdPeriphLib/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
      00AC38 35 00 54 06      [ 1]   85 	mov	0x5406+0, #0x00
                           000020    86 	Sstm8s_adc1$ADC1_DeInit$7 ==.
                                     87 ;	StdPeriphLib/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
      00AC3C 35 00 54 07      [ 1]   88 	mov	0x5407+0, #0x00
                           000024    89 	Sstm8s_adc1$ADC1_DeInit$8 ==.
                                     90 ;	StdPeriphLib/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
      00AC40 35 FF 54 08      [ 1]   91 	mov	0x5408+0, #0xff
                           000028    92 	Sstm8s_adc1$ADC1_DeInit$9 ==.
                                     93 ;	StdPeriphLib/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
      00AC44 35 03 54 09      [ 1]   94 	mov	0x5409+0, #0x03
                           00002C    95 	Sstm8s_adc1$ADC1_DeInit$10 ==.
                                     96 ;	StdPeriphLib/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
      00AC48 35 00 54 0A      [ 1]   97 	mov	0x540a+0, #0x00
                           000030    98 	Sstm8s_adc1$ADC1_DeInit$11 ==.
                                     99 ;	StdPeriphLib/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
      00AC4C 35 00 54 0B      [ 1]  100 	mov	0x540b+0, #0x00
                           000034   101 	Sstm8s_adc1$ADC1_DeInit$12 ==.
                                    102 ;	StdPeriphLib/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
      00AC50 35 00 54 0E      [ 1]  103 	mov	0x540e+0, #0x00
                           000038   104 	Sstm8s_adc1$ADC1_DeInit$13 ==.
                                    105 ;	StdPeriphLib/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
      00AC54 35 00 54 0F      [ 1]  106 	mov	0x540f+0, #0x00
                           00003C   107 	Sstm8s_adc1$ADC1_DeInit$14 ==.
                                    108 ;	StdPeriphLib/src/stm8s_adc1.c: 66: }
                           00003C   109 	Sstm8s_adc1$ADC1_DeInit$15 ==.
                           00003C   110 	XG$ADC1_DeInit$0$0 ==.
      00AC58 32 01 A4         [ 1]  111 	pop	_fp_
      00AC5B 32 01 A5         [ 1]  112 	pop	_fp_+1
      00AC5E 81               [ 4]  113 	ret
                           000043   114 	Sstm8s_adc1$ADC1_DeInit$16 ==.
                           000043   115 	Sstm8s_adc1$ADC1_Init$17 ==.
                                    116 ;	StdPeriphLib/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                    117 ;	-----------------------------------------
                                    118 ;	 function ADC1_Init
                                    119 ;	-----------------------------------------
      00AC5F                        120 _ADC1_Init:
      00AC5F 3B 01 A5         [ 1]  121 	push	_fp_+1
      00AC62 3B 01 A4         [ 1]  122 	push	_fp_
      00AC65 90 96            [ 1]  123 	ldw	y, sp
      00AC67 90 CF 01 A4      [ 2]  124 	ldw	_fp_, y
                           00004F   125 	Sstm8s_adc1$ADC1_Init$18 ==.
                           00004F   126 	Sstm8s_adc1$ADC1_Init$19 ==.
                                    127 ;	StdPeriphLib/src/stm8s_adc1.c: 93: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
      00AC6B 7B 0A            [ 1]  128 	ld	a, (0x0a, sp)
      00AC6D 88               [ 1]  129 	push	a
      00AC6E 7B 07            [ 1]  130 	ld	a, (0x07, sp)
      00AC70 88               [ 1]  131 	push	a
      00AC71 7B 07            [ 1]  132 	ld	a, (0x07, sp)
      00AC73 88               [ 1]  133 	push	a
      00AC74 CD AE 31         [ 4]  134 	call	_ADC1_ConversionConfig
      00AC77 5B 03            [ 2]  135 	addw	sp, #3
                           00005D   136 	Sstm8s_adc1$ADC1_Init$20 ==.
                                    137 ;	StdPeriphLib/src/stm8s_adc1.c: 95: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
      00AC79 7B 07            [ 1]  138 	ld	a, (0x07, sp)
      00AC7B 88               [ 1]  139 	push	a
      00AC7C CD AD 42         [ 4]  140 	call	_ADC1_PrescalerConfig
      00AC7F 84               [ 1]  141 	pop	a
                           000064   142 	Sstm8s_adc1$ADC1_Init$21 ==.
                                    143 ;	StdPeriphLib/src/stm8s_adc1.c: 100: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
      00AC80 7B 09            [ 1]  144 	ld	a, (0x09, sp)
      00AC82 88               [ 1]  145 	push	a
      00AC83 7B 09            [ 1]  146 	ld	a, (0x09, sp)
      00AC85 88               [ 1]  147 	push	a
      00AC86 CD AE 7C         [ 4]  148 	call	_ADC1_ExternalTriggerConfig
      00AC89 5B 02            [ 2]  149 	addw	sp, #2
                           00006F   150 	Sstm8s_adc1$ADC1_Init$22 ==.
                                    151 ;	StdPeriphLib/src/stm8s_adc1.c: 105: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
      00AC8B 7B 0C            [ 1]  152 	ld	a, (0x0c, sp)
      00AC8D 88               [ 1]  153 	push	a
      00AC8E 7B 0C            [ 1]  154 	ld	a, (0x0c, sp)
      00AC90 88               [ 1]  155 	push	a
      00AC91 CD AD 66         [ 4]  156 	call	_ADC1_SchmittTriggerConfig
      00AC94 5B 02            [ 2]  157 	addw	sp, #2
                           00007A   158 	Sstm8s_adc1$ADC1_Init$23 ==.
                                    159 ;	StdPeriphLib/src/stm8s_adc1.c: 108: ADC1->CR1 |= ADC1_CR1_ADON;
      00AC96 72 10 54 01      [ 1]  160 	bset	0x5401, #0
                           00007E   161 	Sstm8s_adc1$ADC1_Init$24 ==.
                                    162 ;	StdPeriphLib/src/stm8s_adc1.c: 109: }
                           00007E   163 	Sstm8s_adc1$ADC1_Init$25 ==.
                           00007E   164 	XG$ADC1_Init$0$0 ==.
      00AC9A 32 01 A4         [ 1]  165 	pop	_fp_
      00AC9D 32 01 A5         [ 1]  166 	pop	_fp_+1
      00ACA0 81               [ 4]  167 	ret
                           000085   168 	Sstm8s_adc1$ADC1_Init$26 ==.
                           000085   169 	Sstm8s_adc1$ADC1_Cmd$27 ==.
                                    170 ;	StdPeriphLib/src/stm8s_adc1.c: 116: void ADC1_Cmd(FunctionalState NewState)
                                    171 ;	-----------------------------------------
                                    172 ;	 function ADC1_Cmd
                                    173 ;	-----------------------------------------
      00ACA1                        174 _ADC1_Cmd:
      00ACA1 3B 01 A5         [ 1]  175 	push	_fp_+1
      00ACA4 3B 01 A4         [ 1]  176 	push	_fp_
      00ACA7 90 96            [ 1]  177 	ldw	y, sp
      00ACA9 90 CF 01 A4      [ 2]  178 	ldw	_fp_, y
                           000091   179 	Sstm8s_adc1$ADC1_Cmd$28 ==.
                           000091   180 	Sstm8s_adc1$ADC1_Cmd$29 ==.
                                    181 ;	StdPeriphLib/src/stm8s_adc1.c: 121: if (NewState != DISABLE)
      00ACAD 0D 05            [ 1]  182 	tnz	(0x05, sp)
      00ACAF 27 06            [ 1]  183 	jreq	00102$
                           000095   184 	Sstm8s_adc1$ADC1_Cmd$30 ==.
                                    185 ;	StdPeriphLib/src/stm8s_adc1.c: 123: ADC1->CR1 |= ADC1_CR1_ADON;
      00ACB1 72 10 54 01      [ 1]  186 	bset	0x5401, #0
      00ACB5 20 04            [ 2]  187 	jra	00104$
      00ACB7                        188 00102$:
                           00009B   189 	Sstm8s_adc1$ADC1_Cmd$31 ==.
                                    190 ;	StdPeriphLib/src/stm8s_adc1.c: 127: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
      00ACB7 72 11 54 01      [ 1]  191 	bres	0x5401, #0
      00ACBB                        192 00104$:
                           00009F   193 	Sstm8s_adc1$ADC1_Cmd$32 ==.
                                    194 ;	StdPeriphLib/src/stm8s_adc1.c: 129: }
                           00009F   195 	Sstm8s_adc1$ADC1_Cmd$33 ==.
                           00009F   196 	XG$ADC1_Cmd$0$0 ==.
      00ACBB 32 01 A4         [ 1]  197 	pop	_fp_
      00ACBE 32 01 A5         [ 1]  198 	pop	_fp_+1
      00ACC1 81               [ 4]  199 	ret
                           0000A6   200 	Sstm8s_adc1$ADC1_Cmd$34 ==.
                           0000A6   201 	Sstm8s_adc1$ADC1_ScanModeCmd$35 ==.
                                    202 ;	StdPeriphLib/src/stm8s_adc1.c: 136: void ADC1_ScanModeCmd(FunctionalState NewState)
                                    203 ;	-----------------------------------------
                                    204 ;	 function ADC1_ScanModeCmd
                                    205 ;	-----------------------------------------
      00ACC2                        206 _ADC1_ScanModeCmd:
      00ACC2 3B 01 A5         [ 1]  207 	push	_fp_+1
      00ACC5 3B 01 A4         [ 1]  208 	push	_fp_
      00ACC8 90 96            [ 1]  209 	ldw	y, sp
      00ACCA 90 CF 01 A4      [ 2]  210 	ldw	_fp_, y
                           0000B2   211 	Sstm8s_adc1$ADC1_ScanModeCmd$36 ==.
                           0000B2   212 	Sstm8s_adc1$ADC1_ScanModeCmd$37 ==.
                                    213 ;	StdPeriphLib/src/stm8s_adc1.c: 141: if (NewState != DISABLE)
      00ACCE 0D 05            [ 1]  214 	tnz	(0x05, sp)
      00ACD0 27 09            [ 1]  215 	jreq	00102$
                           0000B6   216 	Sstm8s_adc1$ADC1_ScanModeCmd$38 ==.
                                    217 ;	StdPeriphLib/src/stm8s_adc1.c: 143: ADC1->CR2 |= ADC1_CR2_SCAN;
      00ACD2 AE 54 02         [ 2]  218 	ldw	x, #0x5402
      00ACD5 F6               [ 1]  219 	ld	a, (x)
      00ACD6 AA 02            [ 1]  220 	or	a, #0x02
      00ACD8 F7               [ 1]  221 	ld	(x), a
      00ACD9 20 07            [ 2]  222 	jra	00104$
      00ACDB                        223 00102$:
                           0000BF   224 	Sstm8s_adc1$ADC1_ScanModeCmd$39 ==.
                                    225 ;	StdPeriphLib/src/stm8s_adc1.c: 147: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
      00ACDB AE 54 02         [ 2]  226 	ldw	x, #0x5402
      00ACDE F6               [ 1]  227 	ld	a, (x)
      00ACDF A4 FD            [ 1]  228 	and	a, #0xfd
      00ACE1 F7               [ 1]  229 	ld	(x), a
      00ACE2                        230 00104$:
                           0000C6   231 	Sstm8s_adc1$ADC1_ScanModeCmd$40 ==.
                                    232 ;	StdPeriphLib/src/stm8s_adc1.c: 149: }
                           0000C6   233 	Sstm8s_adc1$ADC1_ScanModeCmd$41 ==.
                           0000C6   234 	XG$ADC1_ScanModeCmd$0$0 ==.
      00ACE2 32 01 A4         [ 1]  235 	pop	_fp_
      00ACE5 32 01 A5         [ 1]  236 	pop	_fp_+1
      00ACE8 81               [ 4]  237 	ret
                           0000CD   238 	Sstm8s_adc1$ADC1_ScanModeCmd$42 ==.
                           0000CD   239 	Sstm8s_adc1$ADC1_DataBufferCmd$43 ==.
                                    240 ;	StdPeriphLib/src/stm8s_adc1.c: 156: void ADC1_DataBufferCmd(FunctionalState NewState)
                                    241 ;	-----------------------------------------
                                    242 ;	 function ADC1_DataBufferCmd
                                    243 ;	-----------------------------------------
      00ACE9                        244 _ADC1_DataBufferCmd:
      00ACE9 3B 01 A5         [ 1]  245 	push	_fp_+1
      00ACEC 3B 01 A4         [ 1]  246 	push	_fp_
      00ACEF 90 96            [ 1]  247 	ldw	y, sp
      00ACF1 90 CF 01 A4      [ 2]  248 	ldw	_fp_, y
                           0000D9   249 	Sstm8s_adc1$ADC1_DataBufferCmd$44 ==.
                           0000D9   250 	Sstm8s_adc1$ADC1_DataBufferCmd$45 ==.
                                    251 ;	StdPeriphLib/src/stm8s_adc1.c: 161: if (NewState != DISABLE)
      00ACF5 0D 05            [ 1]  252 	tnz	(0x05, sp)
      00ACF7 27 06            [ 1]  253 	jreq	00102$
                           0000DD   254 	Sstm8s_adc1$ADC1_DataBufferCmd$46 ==.
                                    255 ;	StdPeriphLib/src/stm8s_adc1.c: 163: ADC1->CR3 |= ADC1_CR3_DBUF;
      00ACF9 72 1E 54 03      [ 1]  256 	bset	0x5403, #7
      00ACFD 20 04            [ 2]  257 	jra	00104$
      00ACFF                        258 00102$:
                           0000E3   259 	Sstm8s_adc1$ADC1_DataBufferCmd$47 ==.
                                    260 ;	StdPeriphLib/src/stm8s_adc1.c: 167: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
      00ACFF 72 1F 54 03      [ 1]  261 	bres	0x5403, #7
      00AD03                        262 00104$:
                           0000E7   263 	Sstm8s_adc1$ADC1_DataBufferCmd$48 ==.
                                    264 ;	StdPeriphLib/src/stm8s_adc1.c: 169: }
                           0000E7   265 	Sstm8s_adc1$ADC1_DataBufferCmd$49 ==.
                           0000E7   266 	XG$ADC1_DataBufferCmd$0$0 ==.
      00AD03 32 01 A4         [ 1]  267 	pop	_fp_
      00AD06 32 01 A5         [ 1]  268 	pop	_fp_+1
      00AD09 81               [ 4]  269 	ret
                           0000EE   270 	Sstm8s_adc1$ADC1_DataBufferCmd$50 ==.
                           0000EE   271 	Sstm8s_adc1$ADC1_ITConfig$51 ==.
                                    272 ;	StdPeriphLib/src/stm8s_adc1.c: 180: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
                                    273 ;	-----------------------------------------
                                    274 ;	 function ADC1_ITConfig
                                    275 ;	-----------------------------------------
      00AD0A                        276 _ADC1_ITConfig:
      00AD0A 3B 01 A5         [ 1]  277 	push	_fp_+1
      00AD0D 3B 01 A4         [ 1]  278 	push	_fp_
      00AD10 90 96            [ 1]  279 	ldw	y, sp
      00AD12 90 CF 01 A4      [ 2]  280 	ldw	_fp_, y
                           0000FA   281 	Sstm8s_adc1$ADC1_ITConfig$52 ==.
      00AD16 88               [ 1]  282 	push	a
                           0000FB   283 	Sstm8s_adc1$ADC1_ITConfig$53 ==.
                                    284 ;	StdPeriphLib/src/stm8s_adc1.c: 182: if (NewState != DISABLE)
      00AD17 0D 08            [ 1]  285 	tnz	(0x08, sp)
      00AD19 27 10            [ 1]  286 	jreq	00102$
                           0000FF   287 	Sstm8s_adc1$ADC1_ITConfig$54 ==.
                                    288 ;	StdPeriphLib/src/stm8s_adc1.c: 185: ADC1->CSR |= (uint8_t)ADC1_IT;
      00AD1B AE 54 00         [ 2]  289 	ldw	x, #0x5400
      00AD1E F6               [ 1]  290 	ld	a, (x)
      00AD1F 6B 01            [ 1]  291 	ld	(0x01, sp), a
      00AD21 7B 07            [ 1]  292 	ld	a, (0x07, sp)
      00AD23 1A 01            [ 1]  293 	or	a, (0x01, sp)
      00AD25 AE 54 00         [ 2]  294 	ldw	x, #0x5400
      00AD28 F7               [ 1]  295 	ld	(x), a
      00AD29 20 0F            [ 2]  296 	jra	00104$
      00AD2B                        297 00102$:
                           00010F   298 	Sstm8s_adc1$ADC1_ITConfig$55 ==.
                                    299 ;	StdPeriphLib/src/stm8s_adc1.c: 190: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
      00AD2B AE 54 00         [ 2]  300 	ldw	x, #0x5400
      00AD2E F6               [ 1]  301 	ld	a, (x)
      00AD2F 1E 06            [ 2]  302 	ldw	x, (0x06, sp)
      00AD31 53               [ 2]  303 	cplw	x
      00AD32 89               [ 2]  304 	pushw	x
      00AD33 14 02            [ 1]  305 	and	a, (2, sp)
      00AD35 85               [ 2]  306 	popw	x
      00AD36 AE 54 00         [ 2]  307 	ldw	x, #0x5400
      00AD39 F7               [ 1]  308 	ld	(x), a
      00AD3A                        309 00104$:
                           00011E   310 	Sstm8s_adc1$ADC1_ITConfig$56 ==.
                                    311 ;	StdPeriphLib/src/stm8s_adc1.c: 192: }
      00AD3A 84               [ 1]  312 	pop	a
                           00011F   313 	Sstm8s_adc1$ADC1_ITConfig$57 ==.
                           00011F   314 	XG$ADC1_ITConfig$0$0 ==.
      00AD3B 32 01 A4         [ 1]  315 	pop	_fp_
      00AD3E 32 01 A5         [ 1]  316 	pop	_fp_+1
      00AD41 81               [ 4]  317 	ret
                           000126   318 	Sstm8s_adc1$ADC1_ITConfig$58 ==.
                           000126   319 	Sstm8s_adc1$ADC1_PrescalerConfig$59 ==.
                                    320 ;	StdPeriphLib/src/stm8s_adc1.c: 200: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
                                    321 ;	-----------------------------------------
                                    322 ;	 function ADC1_PrescalerConfig
                                    323 ;	-----------------------------------------
      00AD42                        324 _ADC1_PrescalerConfig:
      00AD42 3B 01 A5         [ 1]  325 	push	_fp_+1
      00AD45 3B 01 A4         [ 1]  326 	push	_fp_
      00AD48 90 96            [ 1]  327 	ldw	y, sp
      00AD4A 90 CF 01 A4      [ 2]  328 	ldw	_fp_, y
                           000132   329 	Sstm8s_adc1$ADC1_PrescalerConfig$60 ==.
                           000132   330 	Sstm8s_adc1$ADC1_PrescalerConfig$61 ==.
                                    331 ;	StdPeriphLib/src/stm8s_adc1.c: 203: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
      00AD4E AE 54 01         [ 2]  332 	ldw	x, #0x5401
      00AD51 F6               [ 1]  333 	ld	a, (x)
      00AD52 A4 8F            [ 1]  334 	and	a, #0x8f
      00AD54 F7               [ 1]  335 	ld	(x), a
                           000139   336 	Sstm8s_adc1$ADC1_PrescalerConfig$62 ==.
                                    337 ;	StdPeriphLib/src/stm8s_adc1.c: 205: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
      00AD55 AE 54 01         [ 2]  338 	ldw	x, #0x5401
      00AD58 F6               [ 1]  339 	ld	a, (x)
      00AD59 1A 05            [ 1]  340 	or	a, (0x05, sp)
      00AD5B AE 54 01         [ 2]  341 	ldw	x, #0x5401
      00AD5E F7               [ 1]  342 	ld	(x), a
                           000143   343 	Sstm8s_adc1$ADC1_PrescalerConfig$63 ==.
                                    344 ;	StdPeriphLib/src/stm8s_adc1.c: 206: }
                           000143   345 	Sstm8s_adc1$ADC1_PrescalerConfig$64 ==.
                           000143   346 	XG$ADC1_PrescalerConfig$0$0 ==.
      00AD5F 32 01 A4         [ 1]  347 	pop	_fp_
      00AD62 32 01 A5         [ 1]  348 	pop	_fp_+1
      00AD65 81               [ 4]  349 	ret
                           00014A   350 	Sstm8s_adc1$ADC1_PrescalerConfig$65 ==.
                           00014A   351 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$66 ==.
                                    352 ;	StdPeriphLib/src/stm8s_adc1.c: 216: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                    353 ;	-----------------------------------------
                                    354 ;	 function ADC1_SchmittTriggerConfig
                                    355 ;	-----------------------------------------
      00AD66                        356 _ADC1_SchmittTriggerConfig:
      00AD66 3B 01 A5         [ 1]  357 	push	_fp_+1
      00AD69 3B 01 A4         [ 1]  358 	push	_fp_
      00AD6C 90 96            [ 1]  359 	ldw	y, sp
      00AD6E 90 CF 01 A4      [ 2]  360 	ldw	_fp_, y
                           000156   361 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$67 ==.
      00AD72 52 04            [ 2]  362 	sub	sp, #4
                           000158   363 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$68 ==.
                                    364 ;	StdPeriphLib/src/stm8s_adc1.c: 218: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
      00AD74 7B 09            [ 1]  365 	ld	a, (0x09, sp)
      00AD76 A1 FF            [ 1]  366 	cp	a, #0xff
      00AD78 26 2A            [ 1]  367 	jrne	00114$
                           00015E   368 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$69 ==.
                                    369 ;	StdPeriphLib/src/stm8s_adc1.c: 220: if (NewState != DISABLE)
      00AD7A 0D 0A            [ 1]  370 	tnz	(0x0a, sp)
      00AD7C 27 13            [ 1]  371 	jreq	00102$
                           000162   372 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$70 ==.
                                    373 ;	StdPeriphLib/src/stm8s_adc1.c: 222: ADC1->TDRL &= (uint8_t)0x0;
      00AD7E AE 54 07         [ 2]  374 	ldw	x, #0x5407
      00AD81 F6               [ 1]  375 	ld	a, (x)
      00AD82 35 00 54 07      [ 1]  376 	mov	0x5407+0, #0x00
                           00016A   377 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$71 ==.
                                    378 ;	StdPeriphLib/src/stm8s_adc1.c: 223: ADC1->TDRH &= (uint8_t)0x0;
      00AD86 AE 54 06         [ 2]  379 	ldw	x, #0x5406
      00AD89 F6               [ 1]  380 	ld	a, (x)
      00AD8A 35 00 54 06      [ 1]  381 	mov	0x5406+0, #0x00
      00AD8E CC AE 28         [ 2]  382 	jp	00116$
      00AD91                        383 00102$:
                           000175   384 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$72 ==.
                                    385 ;	StdPeriphLib/src/stm8s_adc1.c: 227: ADC1->TDRL |= (uint8_t)0xFF;
      00AD91 AE 54 07         [ 2]  386 	ldw	x, #0x5407
      00AD94 F6               [ 1]  387 	ld	a, (x)
      00AD95 35 FF 54 07      [ 1]  388 	mov	0x5407+0, #0xff
                           00017D   389 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$73 ==.
                                    390 ;	StdPeriphLib/src/stm8s_adc1.c: 228: ADC1->TDRH |= (uint8_t)0xFF;
      00AD99 AE 54 06         [ 2]  391 	ldw	x, #0x5406
      00AD9C F6               [ 1]  392 	ld	a, (x)
      00AD9D 35 FF 54 06      [ 1]  393 	mov	0x5406+0, #0xff
      00ADA1 CC AE 28         [ 2]  394 	jp	00116$
      00ADA4                        395 00114$:
                           000188   396 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$74 ==.
                                    397 ;	StdPeriphLib/src/stm8s_adc1.c: 231: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
      00ADA4 7B 09            [ 1]  398 	ld	a, (0x09, sp)
      00ADA6 A1 08            [ 1]  399 	cp	a, #0x08
      00ADA8 24 3B            [ 1]  400 	jrnc	00111$
                           00018E   401 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$75 ==.
                                    402 ;	StdPeriphLib/src/stm8s_adc1.c: 233: if (NewState != DISABLE)
      00ADAA 0D 0A            [ 1]  403 	tnz	(0x0a, sp)
      00ADAC 27 1C            [ 1]  404 	jreq	00105$
                           000192   405 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$76 ==.
                                    406 ;	StdPeriphLib/src/stm8s_adc1.c: 235: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      00ADAE AE 54 07         [ 2]  407 	ldw	x, #0x5407
      00ADB1 F6               [ 1]  408 	ld	a, (x)
      00ADB2 6B 04            [ 1]  409 	ld	(0x04, sp), a
      00ADB4 A6 01            [ 1]  410 	ld	a, #0x01
      00ADB6 88               [ 1]  411 	push	a
      00ADB7 7B 0A            [ 1]  412 	ld	a, (0x0a, sp)
      00ADB9 27 05            [ 1]  413 	jreq	00140$
      00ADBB                        414 00139$:
      00ADBB 08 01            [ 1]  415 	sll	(1, sp)
      00ADBD 4A               [ 1]  416 	dec	a
      00ADBE 26 FB            [ 1]  417 	jrne	00139$
      00ADC0                        418 00140$:
      00ADC0 84               [ 1]  419 	pop	a
      00ADC1 43               [ 1]  420 	cpl	a
      00ADC2 14 04            [ 1]  421 	and	a, (0x04, sp)
      00ADC4 AE 54 07         [ 2]  422 	ldw	x, #0x5407
      00ADC7 F7               [ 1]  423 	ld	(x), a
      00ADC8 20 5E            [ 2]  424 	jra	00116$
      00ADCA                        425 00105$:
                           0001AE   426 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$77 ==.
                                    427 ;	StdPeriphLib/src/stm8s_adc1.c: 239: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
      00ADCA AE 54 07         [ 2]  428 	ldw	x, #0x5407
      00ADCD F6               [ 1]  429 	ld	a, (x)
      00ADCE 88               [ 1]  430 	push	a
      00ADCF A6 01            [ 1]  431 	ld	a, #0x01
      00ADD1 6B 02            [ 1]  432 	ld	(0x02, sp), a
      00ADD3 7B 0A            [ 1]  433 	ld	a, (0x0a, sp)
      00ADD5 27 05            [ 1]  434 	jreq	00142$
      00ADD7                        435 00141$:
      00ADD7 08 02            [ 1]  436 	sll	(0x02, sp)
      00ADD9 4A               [ 1]  437 	dec	a
      00ADDA 26 FB            [ 1]  438 	jrne	00141$
      00ADDC                        439 00142$:
      00ADDC 84               [ 1]  440 	pop	a
      00ADDD 1A 01            [ 1]  441 	or	a, (0x01, sp)
      00ADDF AE 54 07         [ 2]  442 	ldw	x, #0x5407
      00ADE2 F7               [ 1]  443 	ld	(x), a
      00ADE3 20 43            [ 2]  444 	jra	00116$
      00ADE5                        445 00111$:
                           0001C9   446 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$78 ==.
                                    447 ;	StdPeriphLib/src/stm8s_adc1.c: 244: if (NewState != DISABLE)
      00ADE5 0D 0A            [ 1]  448 	tnz	(0x0a, sp)
      00ADE7 27 21            [ 1]  449 	jreq	00108$
                           0001CD   450 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$79 ==.
                                    451 ;	StdPeriphLib/src/stm8s_adc1.c: 246: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      00ADE9 AE 54 06         [ 2]  452 	ldw	x, #0x5406
      00ADEC F6               [ 1]  453 	ld	a, (x)
      00ADED 6B 03            [ 1]  454 	ld	(0x03, sp), a
      00ADEF 7B 09            [ 1]  455 	ld	a, (0x09, sp)
      00ADF1 A0 08            [ 1]  456 	sub	a, #0x08
      00ADF3 97               [ 1]  457 	ld	xl, a
      00ADF4 A6 01            [ 1]  458 	ld	a, #0x01
      00ADF6 88               [ 1]  459 	push	a
      00ADF7 9F               [ 1]  460 	ld	a, xl
      00ADF8 4D               [ 1]  461 	tnz	a
      00ADF9 27 05            [ 1]  462 	jreq	00145$
      00ADFB                        463 00144$:
      00ADFB 08 01            [ 1]  464 	sll	(1, sp)
      00ADFD 4A               [ 1]  465 	dec	a
      00ADFE 26 FB            [ 1]  466 	jrne	00144$
      00AE00                        467 00145$:
      00AE00 84               [ 1]  468 	pop	a
      00AE01 43               [ 1]  469 	cpl	a
      00AE02 14 03            [ 1]  470 	and	a, (0x03, sp)
      00AE04 AE 54 06         [ 2]  471 	ldw	x, #0x5406
      00AE07 F7               [ 1]  472 	ld	(x), a
      00AE08 20 1E            [ 2]  473 	jra	00116$
      00AE0A                        474 00108$:
                           0001EE   475 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$80 ==.
                                    476 ;	StdPeriphLib/src/stm8s_adc1.c: 250: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
      00AE0A AE 54 06         [ 2]  477 	ldw	x, #0x5406
      00AE0D F6               [ 1]  478 	ld	a, (x)
      00AE0E 97               [ 1]  479 	ld	xl, a
      00AE0F 7B 09            [ 1]  480 	ld	a, (0x09, sp)
      00AE11 A0 08            [ 1]  481 	sub	a, #0x08
      00AE13 88               [ 1]  482 	push	a
      00AE14 A6 01            [ 1]  483 	ld	a, #0x01
      00AE16 6B 03            [ 1]  484 	ld	(0x03, sp), a
      00AE18 84               [ 1]  485 	pop	a
      00AE19 4D               [ 1]  486 	tnz	a
      00AE1A 27 05            [ 1]  487 	jreq	00147$
      00AE1C                        488 00146$:
      00AE1C 08 02            [ 1]  489 	sll	(0x02, sp)
      00AE1E 4A               [ 1]  490 	dec	a
      00AE1F 26 FB            [ 1]  491 	jrne	00146$
      00AE21                        492 00147$:
      00AE21 9F               [ 1]  493 	ld	a, xl
      00AE22 1A 02            [ 1]  494 	or	a, (0x02, sp)
      00AE24 AE 54 06         [ 2]  495 	ldw	x, #0x5406
      00AE27 F7               [ 1]  496 	ld	(x), a
      00AE28                        497 00116$:
                           00020C   498 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$81 ==.
                                    499 ;	StdPeriphLib/src/stm8s_adc1.c: 253: }
      00AE28 5B 04            [ 2]  500 	addw	sp, #4
                           00020E   501 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$82 ==.
                           00020E   502 	XG$ADC1_SchmittTriggerConfig$0$0 ==.
      00AE2A 32 01 A4         [ 1]  503 	pop	_fp_
      00AE2D 32 01 A5         [ 1]  504 	pop	_fp_+1
      00AE30 81               [ 4]  505 	ret
                           000215   506 	Sstm8s_adc1$ADC1_SchmittTriggerConfig$83 ==.
                           000215   507 	Sstm8s_adc1$ADC1_ConversionConfig$84 ==.
                                    508 ;	StdPeriphLib/src/stm8s_adc1.c: 265: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                    509 ;	-----------------------------------------
                                    510 ;	 function ADC1_ConversionConfig
                                    511 ;	-----------------------------------------
      00AE31                        512 _ADC1_ConversionConfig:
      00AE31 3B 01 A5         [ 1]  513 	push	_fp_+1
      00AE34 3B 01 A4         [ 1]  514 	push	_fp_
      00AE37 90 96            [ 1]  515 	ldw	y, sp
      00AE39 90 CF 01 A4      [ 2]  516 	ldw	_fp_, y
                           000221   517 	Sstm8s_adc1$ADC1_ConversionConfig$85 ==.
                           000221   518 	Sstm8s_adc1$ADC1_ConversionConfig$86 ==.
                                    519 ;	StdPeriphLib/src/stm8s_adc1.c: 268: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
      00AE3D AE 54 02         [ 2]  520 	ldw	x, #0x5402
      00AE40 F6               [ 1]  521 	ld	a, (x)
      00AE41 A4 F7            [ 1]  522 	and	a, #0xf7
      00AE43 F7               [ 1]  523 	ld	(x), a
                           000228   524 	Sstm8s_adc1$ADC1_ConversionConfig$87 ==.
                                    525 ;	StdPeriphLib/src/stm8s_adc1.c: 270: ADC1->CR2 |= (uint8_t)(ADC1_Align);
      00AE44 AE 54 02         [ 2]  526 	ldw	x, #0x5402
      00AE47 F6               [ 1]  527 	ld	a, (x)
      00AE48 1A 07            [ 1]  528 	or	a, (0x07, sp)
      00AE4A AE 54 02         [ 2]  529 	ldw	x, #0x5402
      00AE4D F7               [ 1]  530 	ld	(x), a
                           000232   531 	Sstm8s_adc1$ADC1_ConversionConfig$88 ==.
                                    532 ;	StdPeriphLib/src/stm8s_adc1.c: 272: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
      00AE4E 7B 05            [ 1]  533 	ld	a, (0x05, sp)
      00AE50 A1 01            [ 1]  534 	cp	a, #0x01
      00AE52 26 09            [ 1]  535 	jrne	00102$
                           000238   536 	Sstm8s_adc1$ADC1_ConversionConfig$89 ==.
                                    537 ;	StdPeriphLib/src/stm8s_adc1.c: 275: ADC1->CR1 |= ADC1_CR1_CONT;
      00AE54 AE 54 01         [ 2]  538 	ldw	x, #0x5401
      00AE57 F6               [ 1]  539 	ld	a, (x)
      00AE58 AA 02            [ 1]  540 	or	a, #0x02
      00AE5A F7               [ 1]  541 	ld	(x), a
      00AE5B 20 07            [ 2]  542 	jra	00103$
      00AE5D                        543 00102$:
                           000241   544 	Sstm8s_adc1$ADC1_ConversionConfig$90 ==.
                                    545 ;	StdPeriphLib/src/stm8s_adc1.c: 280: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
      00AE5D AE 54 01         [ 2]  546 	ldw	x, #0x5401
      00AE60 F6               [ 1]  547 	ld	a, (x)
      00AE61 A4 FD            [ 1]  548 	and	a, #0xfd
      00AE63 F7               [ 1]  549 	ld	(x), a
      00AE64                        550 00103$:
                           000248   551 	Sstm8s_adc1$ADC1_ConversionConfig$91 ==.
                                    552 ;	StdPeriphLib/src/stm8s_adc1.c: 284: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
      00AE64 AE 54 00         [ 2]  553 	ldw	x, #0x5400
      00AE67 F6               [ 1]  554 	ld	a, (x)
      00AE68 A4 F0            [ 1]  555 	and	a, #0xf0
      00AE6A F7               [ 1]  556 	ld	(x), a
                           00024F   557 	Sstm8s_adc1$ADC1_ConversionConfig$92 ==.
                                    558 ;	StdPeriphLib/src/stm8s_adc1.c: 286: ADC1->CSR |= (uint8_t)(ADC1_Channel);
      00AE6B AE 54 00         [ 2]  559 	ldw	x, #0x5400
      00AE6E F6               [ 1]  560 	ld	a, (x)
      00AE6F 1A 06            [ 1]  561 	or	a, (0x06, sp)
      00AE71 AE 54 00         [ 2]  562 	ldw	x, #0x5400
      00AE74 F7               [ 1]  563 	ld	(x), a
                           000259   564 	Sstm8s_adc1$ADC1_ConversionConfig$93 ==.
                                    565 ;	StdPeriphLib/src/stm8s_adc1.c: 287: }
                           000259   566 	Sstm8s_adc1$ADC1_ConversionConfig$94 ==.
                           000259   567 	XG$ADC1_ConversionConfig$0$0 ==.
      00AE75 32 01 A4         [ 1]  568 	pop	_fp_
      00AE78 32 01 A5         [ 1]  569 	pop	_fp_+1
      00AE7B 81               [ 4]  570 	ret
                           000260   571 	Sstm8s_adc1$ADC1_ConversionConfig$95 ==.
                           000260   572 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$96 ==.
                                    573 ;	StdPeriphLib/src/stm8s_adc1.c: 299: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
                                    574 ;	-----------------------------------------
                                    575 ;	 function ADC1_ExternalTriggerConfig
                                    576 ;	-----------------------------------------
      00AE7C                        577 _ADC1_ExternalTriggerConfig:
      00AE7C 3B 01 A5         [ 1]  578 	push	_fp_+1
      00AE7F 3B 01 A4         [ 1]  579 	push	_fp_
      00AE82 90 96            [ 1]  580 	ldw	y, sp
      00AE84 90 CF 01 A4      [ 2]  581 	ldw	_fp_, y
                           00026C   582 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$97 ==.
                           00026C   583 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$98 ==.
                                    584 ;	StdPeriphLib/src/stm8s_adc1.c: 302: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
      00AE88 AE 54 02         [ 2]  585 	ldw	x, #0x5402
      00AE8B F6               [ 1]  586 	ld	a, (x)
      00AE8C A4 CF            [ 1]  587 	and	a, #0xcf
      00AE8E F7               [ 1]  588 	ld	(x), a
                           000273   589 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$99 ==.
                                    590 ;	StdPeriphLib/src/stm8s_adc1.c: 304: if (NewState != DISABLE)
      00AE8F 0D 06            [ 1]  591 	tnz	(0x06, sp)
      00AE91 27 09            [ 1]  592 	jreq	00102$
                           000277   593 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$100 ==.
                                    594 ;	StdPeriphLib/src/stm8s_adc1.c: 307: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
      00AE93 AE 54 02         [ 2]  595 	ldw	x, #0x5402
      00AE96 F6               [ 1]  596 	ld	a, (x)
      00AE97 AA 40            [ 1]  597 	or	a, #0x40
      00AE99 F7               [ 1]  598 	ld	(x), a
      00AE9A 20 07            [ 2]  599 	jra	00103$
      00AE9C                        600 00102$:
                           000280   601 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$101 ==.
                                    602 ;	StdPeriphLib/src/stm8s_adc1.c: 312: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
      00AE9C AE 54 02         [ 2]  603 	ldw	x, #0x5402
      00AE9F F6               [ 1]  604 	ld	a, (x)
      00AEA0 A4 BF            [ 1]  605 	and	a, #0xbf
      00AEA2 F7               [ 1]  606 	ld	(x), a
      00AEA3                        607 00103$:
                           000287   608 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$102 ==.
                                    609 ;	StdPeriphLib/src/stm8s_adc1.c: 316: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
      00AEA3 AE 54 02         [ 2]  610 	ldw	x, #0x5402
      00AEA6 F6               [ 1]  611 	ld	a, (x)
      00AEA7 1A 05            [ 1]  612 	or	a, (0x05, sp)
      00AEA9 AE 54 02         [ 2]  613 	ldw	x, #0x5402
      00AEAC F7               [ 1]  614 	ld	(x), a
                           000291   615 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$103 ==.
                                    616 ;	StdPeriphLib/src/stm8s_adc1.c: 317: }
                           000291   617 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$104 ==.
                           000291   618 	XG$ADC1_ExternalTriggerConfig$0$0 ==.
      00AEAD 32 01 A4         [ 1]  619 	pop	_fp_
      00AEB0 32 01 A5         [ 1]  620 	pop	_fp_+1
      00AEB3 81               [ 4]  621 	ret
                           000298   622 	Sstm8s_adc1$ADC1_ExternalTriggerConfig$105 ==.
                           000298   623 	Sstm8s_adc1$ADC1_StartConversion$106 ==.
                                    624 ;	StdPeriphLib/src/stm8s_adc1.c: 328: void ADC1_StartConversion(void)
                                    625 ;	-----------------------------------------
                                    626 ;	 function ADC1_StartConversion
                                    627 ;	-----------------------------------------
      00AEB4                        628 _ADC1_StartConversion:
      00AEB4 3B 01 A5         [ 1]  629 	push	_fp_+1
      00AEB7 3B 01 A4         [ 1]  630 	push	_fp_
      00AEBA 90 96            [ 1]  631 	ldw	y, sp
      00AEBC 90 CF 01 A4      [ 2]  632 	ldw	_fp_, y
                           0002A4   633 	Sstm8s_adc1$ADC1_StartConversion$107 ==.
                           0002A4   634 	Sstm8s_adc1$ADC1_StartConversion$108 ==.
                                    635 ;	StdPeriphLib/src/stm8s_adc1.c: 330: ADC1->CR1 |= ADC1_CR1_ADON;
      00AEC0 72 10 54 01      [ 1]  636 	bset	0x5401, #0
                           0002A8   637 	Sstm8s_adc1$ADC1_StartConversion$109 ==.
                                    638 ;	StdPeriphLib/src/stm8s_adc1.c: 331: }
                           0002A8   639 	Sstm8s_adc1$ADC1_StartConversion$110 ==.
                           0002A8   640 	XG$ADC1_StartConversion$0$0 ==.
      00AEC4 32 01 A4         [ 1]  641 	pop	_fp_
      00AEC7 32 01 A5         [ 1]  642 	pop	_fp_+1
      00AECA 81               [ 4]  643 	ret
                           0002AF   644 	Sstm8s_adc1$ADC1_StartConversion$111 ==.
                           0002AF   645 	Sstm8s_adc1$ADC1_GetConversionValue$112 ==.
                                    646 ;	StdPeriphLib/src/stm8s_adc1.c: 340: uint16_t ADC1_GetConversionValue(void)
                                    647 ;	-----------------------------------------
                                    648 ;	 function ADC1_GetConversionValue
                                    649 ;	-----------------------------------------
      00AECB                        650 _ADC1_GetConversionValue:
      00AECB 3B 01 A5         [ 1]  651 	push	_fp_+1
      00AECE 3B 01 A4         [ 1]  652 	push	_fp_
      00AED1 90 96            [ 1]  653 	ldw	y, sp
      00AED3 90 CF 01 A4      [ 2]  654 	ldw	_fp_, y
                           0002BB   655 	Sstm8s_adc1$ADC1_GetConversionValue$113 ==.
      00AED7 52 09            [ 2]  656 	sub	sp, #9
                           0002BD   657 	Sstm8s_adc1$ADC1_GetConversionValue$114 ==.
                                    658 ;	StdPeriphLib/src/stm8s_adc1.c: 345: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00AED9 AE 54 02         [ 2]  659 	ldw	x, #0x5402
      00AEDC F6               [ 1]  660 	ld	a, (x)
      00AEDD A5 08            [ 1]  661 	bcp	a, #0x08
      00AEDF 27 22            [ 1]  662 	jreq	00102$
                           0002C5   663 	Sstm8s_adc1$ADC1_GetConversionValue$115 ==.
                                    664 ;	StdPeriphLib/src/stm8s_adc1.c: 348: templ = ADC1->DRL;
      00AEE1 AE 54 05         [ 2]  665 	ldw	x, #0x5405
      00AEE4 F6               [ 1]  666 	ld	a, (x)
      00AEE5 6B 01            [ 1]  667 	ld	(0x01, sp), a
                           0002CB   668 	Sstm8s_adc1$ADC1_GetConversionValue$116 ==.
                                    669 ;	StdPeriphLib/src/stm8s_adc1.c: 350: temph = ADC1->DRH;
      00AEE7 AE 54 04         [ 2]  670 	ldw	x, #0x5404
      00AEEA F6               [ 1]  671 	ld	a, (x)
      00AEEB 5F               [ 1]  672 	clrw	x
      00AEEC 97               [ 1]  673 	ld	xl, a
      00AEED 1F 02            [ 2]  674 	ldw	(0x02, sp), x
                           0002D3   675 	Sstm8s_adc1$ADC1_GetConversionValue$117 ==.
                                    676 ;	StdPeriphLib/src/stm8s_adc1.c: 352: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      00AEEF 7B 03            [ 1]  677 	ld	a, (0x03, sp)
      00AEF1 0F 05            [ 1]  678 	clr	(0x05, sp)
      00AEF3 41               [ 1]  679 	exg	a, xl
      00AEF4 7B 01            [ 1]  680 	ld	a, (0x01, sp)
      00AEF6 41               [ 1]  681 	exg	a, xl
      00AEF7 0F 08            [ 1]  682 	clr	(0x08, sp)
      00AEF9 1A 08            [ 1]  683 	or	a, (0x08, sp)
      00AEFB 01               [ 1]  684 	rrwa	x
      00AEFC 1A 05            [ 1]  685 	or	a, (0x05, sp)
      00AEFE 97               [ 1]  686 	ld	xl, a
      00AEFF 1F 02            [ 2]  687 	ldw	(0x02, sp), x
      00AF01 20 26            [ 2]  688 	jra	00103$
      00AF03                        689 00102$:
                           0002E7   690 	Sstm8s_adc1$ADC1_GetConversionValue$118 ==.
                                    691 ;	StdPeriphLib/src/stm8s_adc1.c: 357: temph = ADC1->DRH;
      00AF03 AE 54 04         [ 2]  692 	ldw	x, #0x5404
      00AF06 F6               [ 1]  693 	ld	a, (x)
      00AF07 5F               [ 1]  694 	clrw	x
      00AF08 97               [ 1]  695 	ld	xl, a
      00AF09 1F 02            [ 2]  696 	ldw	(0x02, sp), x
                           0002EF   697 	Sstm8s_adc1$ADC1_GetConversionValue$119 ==.
                                    698 ;	StdPeriphLib/src/stm8s_adc1.c: 359: templ = ADC1->DRL;
      00AF0B AE 54 05         [ 2]  699 	ldw	x, #0x5405
      00AF0E F6               [ 1]  700 	ld	a, (x)
      00AF0F 6B 01            [ 1]  701 	ld	(0x01, sp), a
                           0002F5   702 	Sstm8s_adc1$ADC1_GetConversionValue$120 ==.
                                    703 ;	StdPeriphLib/src/stm8s_adc1.c: 361: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
      00AF11 5F               [ 1]  704 	clrw	x
      00AF12 7B 01            [ 1]  705 	ld	a, (0x01, sp)
      00AF14 97               [ 1]  706 	ld	xl, a
      00AF15 58               [ 2]  707 	sllw	x
      00AF16 58               [ 2]  708 	sllw	x
      00AF17 58               [ 2]  709 	sllw	x
      00AF18 58               [ 2]  710 	sllw	x
      00AF19 58               [ 2]  711 	sllw	x
      00AF1A 58               [ 2]  712 	sllw	x
      00AF1B 1F 06            [ 2]  713 	ldw	(0x06, sp), x
      00AF1D 7B 03            [ 1]  714 	ld	a, (0x03, sp)
      00AF1F 95               [ 1]  715 	ld	xh, a
      00AF20 4F               [ 1]  716 	clr	a
      00AF21 1A 07            [ 1]  717 	or	a, (0x07, sp)
      00AF23 02               [ 1]  718 	rlwa	x
      00AF24 1A 06            [ 1]  719 	or	a, (0x06, sp)
      00AF26 95               [ 1]  720 	ld	xh, a
      00AF27 1F 02            [ 2]  721 	ldw	(0x02, sp), x
      00AF29                        722 00103$:
                           00030D   723 	Sstm8s_adc1$ADC1_GetConversionValue$121 ==.
                                    724 ;	StdPeriphLib/src/stm8s_adc1.c: 364: return ((uint16_t)temph);
      00AF29 1E 02            [ 2]  725 	ldw	x, (0x02, sp)
                           00030F   726 	Sstm8s_adc1$ADC1_GetConversionValue$122 ==.
                                    727 ;	StdPeriphLib/src/stm8s_adc1.c: 365: }
      00AF2B 5B 09            [ 2]  728 	addw	sp, #9
                           000311   729 	Sstm8s_adc1$ADC1_GetConversionValue$123 ==.
                           000311   730 	XG$ADC1_GetConversionValue$0$0 ==.
      00AF2D 32 01 A4         [ 1]  731 	pop	_fp_
      00AF30 32 01 A5         [ 1]  732 	pop	_fp_+1
      00AF33 81               [ 4]  733 	ret
                           000318   734 	Sstm8s_adc1$ADC1_GetConversionValue$124 ==.
                           000318   735 	Sstm8s_adc1$ADC1_AWDChannelConfig$125 ==.
                                    736 ;	StdPeriphLib/src/stm8s_adc1.c: 375: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
                                    737 ;	-----------------------------------------
                                    738 ;	 function ADC1_AWDChannelConfig
                                    739 ;	-----------------------------------------
      00AF34                        740 _ADC1_AWDChannelConfig:
      00AF34 3B 01 A5         [ 1]  741 	push	_fp_+1
      00AF37 3B 01 A4         [ 1]  742 	push	_fp_
      00AF3A 90 96            [ 1]  743 	ldw	y, sp
      00AF3C 90 CF 01 A4      [ 2]  744 	ldw	_fp_, y
                           000324   745 	Sstm8s_adc1$ADC1_AWDChannelConfig$126 ==.
      00AF40 52 04            [ 2]  746 	sub	sp, #4
                           000326   747 	Sstm8s_adc1$ADC1_AWDChannelConfig$127 ==.
                                    748 ;	StdPeriphLib/src/stm8s_adc1.c: 381: if (Channel < (uint8_t)8)
      00AF42 7B 09            [ 1]  749 	ld	a, (0x09, sp)
      00AF44 A1 08            [ 1]  750 	cp	a, #0x08
      00AF46 24 3B            [ 1]  751 	jrnc	00108$
                           00032C   752 	Sstm8s_adc1$ADC1_AWDChannelConfig$128 ==.
                                    753 ;	StdPeriphLib/src/stm8s_adc1.c: 383: if (NewState != DISABLE)
      00AF48 0D 0A            [ 1]  754 	tnz	(0x0a, sp)
      00AF4A 27 1B            [ 1]  755 	jreq	00102$
                           000330   756 	Sstm8s_adc1$ADC1_AWDChannelConfig$129 ==.
                                    757 ;	StdPeriphLib/src/stm8s_adc1.c: 385: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      00AF4C AE 54 0F         [ 2]  758 	ldw	x, #0x540f
      00AF4F F6               [ 1]  759 	ld	a, (x)
      00AF50 88               [ 1]  760 	push	a
      00AF51 A6 01            [ 1]  761 	ld	a, #0x01
      00AF53 6B 02            [ 1]  762 	ld	(0x02, sp), a
      00AF55 7B 0A            [ 1]  763 	ld	a, (0x0a, sp)
      00AF57 27 05            [ 1]  764 	jreq	00124$
      00AF59                        765 00123$:
      00AF59 08 02            [ 1]  766 	sll	(0x02, sp)
      00AF5B 4A               [ 1]  767 	dec	a
      00AF5C 26 FB            [ 1]  768 	jrne	00123$
      00AF5E                        769 00124$:
      00AF5E 84               [ 1]  770 	pop	a
      00AF5F 1A 01            [ 1]  771 	or	a, (0x01, sp)
      00AF61 AE 54 0F         [ 2]  772 	ldw	x, #0x540f
      00AF64 F7               [ 1]  773 	ld	(x), a
      00AF65 20 5F            [ 2]  774 	jra	00110$
      00AF67                        775 00102$:
                           00034B   776 	Sstm8s_adc1$ADC1_AWDChannelConfig$130 ==.
                                    777 ;	StdPeriphLib/src/stm8s_adc1.c: 389: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
      00AF67 AE 54 0F         [ 2]  778 	ldw	x, #0x540f
      00AF6A F6               [ 1]  779 	ld	a, (x)
      00AF6B 6B 04            [ 1]  780 	ld	(0x04, sp), a
      00AF6D A6 01            [ 1]  781 	ld	a, #0x01
      00AF6F 88               [ 1]  782 	push	a
      00AF70 7B 0A            [ 1]  783 	ld	a, (0x0a, sp)
      00AF72 27 05            [ 1]  784 	jreq	00126$
      00AF74                        785 00125$:
      00AF74 08 01            [ 1]  786 	sll	(1, sp)
      00AF76 4A               [ 1]  787 	dec	a
      00AF77 26 FB            [ 1]  788 	jrne	00125$
      00AF79                        789 00126$:
      00AF79 84               [ 1]  790 	pop	a
      00AF7A 43               [ 1]  791 	cpl	a
      00AF7B 14 04            [ 1]  792 	and	a, (0x04, sp)
      00AF7D AE 54 0F         [ 2]  793 	ldw	x, #0x540f
      00AF80 F7               [ 1]  794 	ld	(x), a
      00AF81 20 43            [ 2]  795 	jra	00110$
      00AF83                        796 00108$:
                           000367   797 	Sstm8s_adc1$ADC1_AWDChannelConfig$131 ==.
                                    798 ;	StdPeriphLib/src/stm8s_adc1.c: 394: if (NewState != DISABLE)
      00AF83 0D 0A            [ 1]  799 	tnz	(0x0a, sp)
      00AF85 27 20            [ 1]  800 	jreq	00105$
                           00036B   801 	Sstm8s_adc1$ADC1_AWDChannelConfig$132 ==.
                                    802 ;	StdPeriphLib/src/stm8s_adc1.c: 396: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      00AF87 AE 54 0E         [ 2]  803 	ldw	x, #0x540e
      00AF8A F6               [ 1]  804 	ld	a, (x)
      00AF8B 97               [ 1]  805 	ld	xl, a
      00AF8C 7B 09            [ 1]  806 	ld	a, (0x09, sp)
      00AF8E A0 08            [ 1]  807 	sub	a, #0x08
      00AF90 88               [ 1]  808 	push	a
      00AF91 A6 01            [ 1]  809 	ld	a, #0x01
      00AF93 6B 04            [ 1]  810 	ld	(0x04, sp), a
      00AF95 84               [ 1]  811 	pop	a
      00AF96 4D               [ 1]  812 	tnz	a
      00AF97 27 05            [ 1]  813 	jreq	00129$
      00AF99                        814 00128$:
      00AF99 08 03            [ 1]  815 	sll	(0x03, sp)
      00AF9B 4A               [ 1]  816 	dec	a
      00AF9C 26 FB            [ 1]  817 	jrne	00128$
      00AF9E                        818 00129$:
      00AF9E 9F               [ 1]  819 	ld	a, xl
      00AF9F 1A 03            [ 1]  820 	or	a, (0x03, sp)
      00AFA1 AE 54 0E         [ 2]  821 	ldw	x, #0x540e
      00AFA4 F7               [ 1]  822 	ld	(x), a
      00AFA5 20 1F            [ 2]  823 	jra	00110$
      00AFA7                        824 00105$:
                           00038B   825 	Sstm8s_adc1$ADC1_AWDChannelConfig$133 ==.
                                    826 ;	StdPeriphLib/src/stm8s_adc1.c: 400: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
      00AFA7 AE 54 0E         [ 2]  827 	ldw	x, #0x540e
      00AFAA F6               [ 1]  828 	ld	a, (x)
      00AFAB 6B 02            [ 1]  829 	ld	(0x02, sp), a
      00AFAD 7B 09            [ 1]  830 	ld	a, (0x09, sp)
      00AFAF A0 08            [ 1]  831 	sub	a, #0x08
      00AFB1 97               [ 1]  832 	ld	xl, a
      00AFB2 A6 01            [ 1]  833 	ld	a, #0x01
      00AFB4 88               [ 1]  834 	push	a
      00AFB5 9F               [ 1]  835 	ld	a, xl
      00AFB6 4D               [ 1]  836 	tnz	a
      00AFB7 27 05            [ 1]  837 	jreq	00131$
      00AFB9                        838 00130$:
      00AFB9 08 01            [ 1]  839 	sll	(1, sp)
      00AFBB 4A               [ 1]  840 	dec	a
      00AFBC 26 FB            [ 1]  841 	jrne	00130$
      00AFBE                        842 00131$:
      00AFBE 84               [ 1]  843 	pop	a
      00AFBF 43               [ 1]  844 	cpl	a
      00AFC0 14 02            [ 1]  845 	and	a, (0x02, sp)
      00AFC2 AE 54 0E         [ 2]  846 	ldw	x, #0x540e
      00AFC5 F7               [ 1]  847 	ld	(x), a
      00AFC6                        848 00110$:
                           0003AA   849 	Sstm8s_adc1$ADC1_AWDChannelConfig$134 ==.
                                    850 ;	StdPeriphLib/src/stm8s_adc1.c: 403: }
      00AFC6 5B 04            [ 2]  851 	addw	sp, #4
                           0003AC   852 	Sstm8s_adc1$ADC1_AWDChannelConfig$135 ==.
                           0003AC   853 	XG$ADC1_AWDChannelConfig$0$0 ==.
      00AFC8 32 01 A4         [ 1]  854 	pop	_fp_
      00AFCB 32 01 A5         [ 1]  855 	pop	_fp_+1
      00AFCE 81               [ 4]  856 	ret
                           0003B3   857 	Sstm8s_adc1$ADC1_AWDChannelConfig$136 ==.
                           0003B3   858 	Sstm8s_adc1$ADC1_SetHighThreshold$137 ==.
                                    859 ;	StdPeriphLib/src/stm8s_adc1.c: 411: void ADC1_SetHighThreshold(uint16_t Threshold)
                                    860 ;	-----------------------------------------
                                    861 ;	 function ADC1_SetHighThreshold
                                    862 ;	-----------------------------------------
      00AFCF                        863 _ADC1_SetHighThreshold:
      00AFCF 3B 01 A5         [ 1]  864 	push	_fp_+1
      00AFD2 3B 01 A4         [ 1]  865 	push	_fp_
      00AFD5 90 96            [ 1]  866 	ldw	y, sp
      00AFD7 90 CF 01 A4      [ 2]  867 	ldw	_fp_, y
                           0003BF   868 	Sstm8s_adc1$ADC1_SetHighThreshold$138 ==.
                           0003BF   869 	Sstm8s_adc1$ADC1_SetHighThreshold$139 ==.
                                    870 ;	StdPeriphLib/src/stm8s_adc1.c: 413: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
      00AFDB 1E 05            [ 2]  871 	ldw	x, (0x05, sp)
      00AFDD 54               [ 2]  872 	srlw	x
      00AFDE 54               [ 2]  873 	srlw	x
      00AFDF 9F               [ 1]  874 	ld	a, xl
      00AFE0 AE 54 08         [ 2]  875 	ldw	x, #0x5408
      00AFE3 F7               [ 1]  876 	ld	(x), a
                           0003C8   877 	Sstm8s_adc1$ADC1_SetHighThreshold$140 ==.
                                    878 ;	StdPeriphLib/src/stm8s_adc1.c: 414: ADC1->HTRL = (uint8_t)Threshold;
      00AFE4 7B 06            [ 1]  879 	ld	a, (0x06, sp)
      00AFE6 AE 54 09         [ 2]  880 	ldw	x, #0x5409
      00AFE9 F7               [ 1]  881 	ld	(x), a
                           0003CE   882 	Sstm8s_adc1$ADC1_SetHighThreshold$141 ==.
                                    883 ;	StdPeriphLib/src/stm8s_adc1.c: 415: }
                           0003CE   884 	Sstm8s_adc1$ADC1_SetHighThreshold$142 ==.
                           0003CE   885 	XG$ADC1_SetHighThreshold$0$0 ==.
      00AFEA 32 01 A4         [ 1]  886 	pop	_fp_
      00AFED 32 01 A5         [ 1]  887 	pop	_fp_+1
      00AFF0 81               [ 4]  888 	ret
                           0003D5   889 	Sstm8s_adc1$ADC1_SetHighThreshold$143 ==.
                           0003D5   890 	Sstm8s_adc1$ADC1_SetLowThreshold$144 ==.
                                    891 ;	StdPeriphLib/src/stm8s_adc1.c: 423: void ADC1_SetLowThreshold(uint16_t Threshold)
                                    892 ;	-----------------------------------------
                                    893 ;	 function ADC1_SetLowThreshold
                                    894 ;	-----------------------------------------
      00AFF1                        895 _ADC1_SetLowThreshold:
      00AFF1 3B 01 A5         [ 1]  896 	push	_fp_+1
      00AFF4 3B 01 A4         [ 1]  897 	push	_fp_
      00AFF7 90 96            [ 1]  898 	ldw	y, sp
      00AFF9 90 CF 01 A4      [ 2]  899 	ldw	_fp_, y
                           0003E1   900 	Sstm8s_adc1$ADC1_SetLowThreshold$145 ==.
                           0003E1   901 	Sstm8s_adc1$ADC1_SetLowThreshold$146 ==.
                                    902 ;	StdPeriphLib/src/stm8s_adc1.c: 425: ADC1->LTRL = (uint8_t)Threshold;
      00AFFD 7B 06            [ 1]  903 	ld	a, (0x06, sp)
      00AFFF AE 54 0B         [ 2]  904 	ldw	x, #0x540b
      00B002 F7               [ 1]  905 	ld	(x), a
                           0003E7   906 	Sstm8s_adc1$ADC1_SetLowThreshold$147 ==.
                                    907 ;	StdPeriphLib/src/stm8s_adc1.c: 426: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
      00B003 1E 05            [ 2]  908 	ldw	x, (0x05, sp)
      00B005 54               [ 2]  909 	srlw	x
      00B006 54               [ 2]  910 	srlw	x
      00B007 9F               [ 1]  911 	ld	a, xl
      00B008 AE 54 0A         [ 2]  912 	ldw	x, #0x540a
      00B00B F7               [ 1]  913 	ld	(x), a
                           0003F0   914 	Sstm8s_adc1$ADC1_SetLowThreshold$148 ==.
                                    915 ;	StdPeriphLib/src/stm8s_adc1.c: 427: }
                           0003F0   916 	Sstm8s_adc1$ADC1_SetLowThreshold$149 ==.
                           0003F0   917 	XG$ADC1_SetLowThreshold$0$0 ==.
      00B00C 32 01 A4         [ 1]  918 	pop	_fp_
      00B00F 32 01 A5         [ 1]  919 	pop	_fp_+1
      00B012 81               [ 4]  920 	ret
                           0003F7   921 	Sstm8s_adc1$ADC1_SetLowThreshold$150 ==.
                           0003F7   922 	Sstm8s_adc1$ADC1_GetBufferValue$151 ==.
                                    923 ;	StdPeriphLib/src/stm8s_adc1.c: 436: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
                                    924 ;	-----------------------------------------
                                    925 ;	 function ADC1_GetBufferValue
                                    926 ;	-----------------------------------------
      00B013                        927 _ADC1_GetBufferValue:
      00B013 3B 01 A5         [ 1]  928 	push	_fp_+1
      00B016 3B 01 A4         [ 1]  929 	push	_fp_
      00B019 90 96            [ 1]  930 	ldw	y, sp
      00B01B 90 CF 01 A4      [ 2]  931 	ldw	_fp_, y
                           000403   932 	Sstm8s_adc1$ADC1_GetBufferValue$152 ==.
      00B01F 52 0D            [ 2]  933 	sub	sp, #13
                           000405   934 	Sstm8s_adc1$ADC1_GetBufferValue$153 ==.
                                    935 ;	StdPeriphLib/src/stm8s_adc1.c: 444: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00B021 AE 54 02         [ 2]  936 	ldw	x, #0x5402
      00B024 F6               [ 1]  937 	ld	a, (x)
      00B025 A5 08            [ 1]  938 	bcp	a, #0x08
      00B027 27 2D            [ 1]  939 	jreq	00102$
                           00040D   940 	Sstm8s_adc1$ADC1_GetBufferValue$154 ==.
                                    941 ;	StdPeriphLib/src/stm8s_adc1.c: 447: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      00B029 7B 12            [ 1]  942 	ld	a, (0x12, sp)
      00B02B 48               [ 1]  943 	sll	a
      00B02C 5F               [ 1]  944 	clrw	x
      00B02D 97               [ 1]  945 	ld	xl, a
      00B02E 1F 08            [ 2]  946 	ldw	(0x08, sp), x
      00B030 1E 08            [ 2]  947 	ldw	x, (0x08, sp)
      00B032 1C 53 E1         [ 2]  948 	addw	x, #0x53e1
      00B035 F6               [ 1]  949 	ld	a, (x)
      00B036 6B 01            [ 1]  950 	ld	(0x01, sp), a
                           00041C   951 	Sstm8s_adc1$ADC1_GetBufferValue$155 ==.
                                    952 ;	StdPeriphLib/src/stm8s_adc1.c: 449: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      00B038 1E 08            [ 2]  953 	ldw	x, (0x08, sp)
      00B03A 1C 53 E0         [ 2]  954 	addw	x, #0x53e0
      00B03D F6               [ 1]  955 	ld	a, (x)
      00B03E 5F               [ 1]  956 	clrw	x
      00B03F 97               [ 1]  957 	ld	xl, a
      00B040 1F 02            [ 2]  958 	ldw	(0x02, sp), x
                           000426   959 	Sstm8s_adc1$ADC1_GetBufferValue$156 ==.
                                    960 ;	StdPeriphLib/src/stm8s_adc1.c: 451: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      00B042 7B 03            [ 1]  961 	ld	a, (0x03, sp)
      00B044 0F 07            [ 1]  962 	clr	(0x07, sp)
      00B046 41               [ 1]  963 	exg	a, xl
      00B047 7B 01            [ 1]  964 	ld	a, (0x01, sp)
      00B049 41               [ 1]  965 	exg	a, xl
      00B04A 0F 04            [ 1]  966 	clr	(0x04, sp)
      00B04C 1A 04            [ 1]  967 	or	a, (0x04, sp)
      00B04E 01               [ 1]  968 	rrwa	x
      00B04F 1A 07            [ 1]  969 	or	a, (0x07, sp)
      00B051 97               [ 1]  970 	ld	xl, a
      00B052 1F 02            [ 2]  971 	ldw	(0x02, sp), x
      00B054 20 31            [ 2]  972 	jra	00103$
      00B056                        973 00102$:
                           00043A   974 	Sstm8s_adc1$ADC1_GetBufferValue$157 ==.
                                    975 ;	StdPeriphLib/src/stm8s_adc1.c: 456: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      00B056 7B 12            [ 1]  976 	ld	a, (0x12, sp)
      00B058 48               [ 1]  977 	sll	a
      00B059 5F               [ 1]  978 	clrw	x
      00B05A 97               [ 1]  979 	ld	xl, a
      00B05B 1F 0C            [ 2]  980 	ldw	(0x0c, sp), x
      00B05D 1E 0C            [ 2]  981 	ldw	x, (0x0c, sp)
      00B05F 1C 53 E0         [ 2]  982 	addw	x, #0x53e0
      00B062 F6               [ 1]  983 	ld	a, (x)
      00B063 5F               [ 1]  984 	clrw	x
      00B064 97               [ 1]  985 	ld	xl, a
      00B065 1F 02            [ 2]  986 	ldw	(0x02, sp), x
                           00044B   987 	Sstm8s_adc1$ADC1_GetBufferValue$158 ==.
                                    988 ;	StdPeriphLib/src/stm8s_adc1.c: 458: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      00B067 1E 0C            [ 2]  989 	ldw	x, (0x0c, sp)
      00B069 1C 53 E1         [ 2]  990 	addw	x, #0x53e1
      00B06C F6               [ 1]  991 	ld	a, (x)
      00B06D 6B 01            [ 1]  992 	ld	(0x01, sp), a
                           000453   993 	Sstm8s_adc1$ADC1_GetBufferValue$159 ==.
                                    994 ;	StdPeriphLib/src/stm8s_adc1.c: 460: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
      00B06F 5F               [ 1]  995 	clrw	x
      00B070 7B 01            [ 1]  996 	ld	a, (0x01, sp)
      00B072 97               [ 1]  997 	ld	xl, a
      00B073 58               [ 2]  998 	sllw	x
      00B074 58               [ 2]  999 	sllw	x
      00B075 58               [ 2] 1000 	sllw	x
      00B076 58               [ 2] 1001 	sllw	x
      00B077 58               [ 2] 1002 	sllw	x
      00B078 58               [ 2] 1003 	sllw	x
      00B079 1F 0A            [ 2] 1004 	ldw	(0x0a, sp), x
      00B07B 7B 03            [ 1] 1005 	ld	a, (0x03, sp)
      00B07D 95               [ 1] 1006 	ld	xh, a
      00B07E 4F               [ 1] 1007 	clr	a
      00B07F 1A 0B            [ 1] 1008 	or	a, (0x0b, sp)
      00B081 02               [ 1] 1009 	rlwa	x
      00B082 1A 0A            [ 1] 1010 	or	a, (0x0a, sp)
      00B084 95               [ 1] 1011 	ld	xh, a
      00B085 1F 02            [ 2] 1012 	ldw	(0x02, sp), x
      00B087                       1013 00103$:
                           00046B  1014 	Sstm8s_adc1$ADC1_GetBufferValue$160 ==.
                                   1015 ;	StdPeriphLib/src/stm8s_adc1.c: 463: return ((uint16_t)temph);
      00B087 1E 02            [ 2] 1016 	ldw	x, (0x02, sp)
                           00046D  1017 	Sstm8s_adc1$ADC1_GetBufferValue$161 ==.
                                   1018 ;	StdPeriphLib/src/stm8s_adc1.c: 464: }
      00B089 5B 0D            [ 2] 1019 	addw	sp, #13
                           00046F  1020 	Sstm8s_adc1$ADC1_GetBufferValue$162 ==.
                           00046F  1021 	XG$ADC1_GetBufferValue$0$0 ==.
      00B08B 32 01 A4         [ 1] 1022 	pop	_fp_
      00B08E 32 01 A5         [ 1] 1023 	pop	_fp_+1
      00B091 81               [ 4] 1024 	ret
                           000476  1025 	Sstm8s_adc1$ADC1_GetBufferValue$163 ==.
                           000476  1026 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$164 ==.
                                   1027 ;	StdPeriphLib/src/stm8s_adc1.c: 472: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function ADC1_GetAWDChannelStatus
                                   1030 ;	-----------------------------------------
      00B092                       1031 _ADC1_GetAWDChannelStatus:
      00B092 3B 01 A5         [ 1] 1032 	push	_fp_+1
      00B095 3B 01 A4         [ 1] 1033 	push	_fp_
      00B098 90 96            [ 1] 1034 	ldw	y, sp
      00B09A 90 CF 01 A4      [ 2] 1035 	ldw	_fp_, y
                           000482  1036 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$165 ==.
      00B09E 52 02            [ 2] 1037 	sub	sp, #2
                           000484  1038 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$166 ==.
                                   1039 ;	StdPeriphLib/src/stm8s_adc1.c: 479: if (Channel < (uint8_t)8)
      00B0A0 7B 07            [ 1] 1040 	ld	a, (0x07, sp)
      00B0A2 A1 08            [ 1] 1041 	cp	a, #0x08
      00B0A4 24 17            [ 1] 1042 	jrnc	00102$
                           00048A  1043 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$167 ==.
                                   1044 ;	StdPeriphLib/src/stm8s_adc1.c: 481: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
      00B0A6 AE 54 0D         [ 2] 1045 	ldw	x, #0x540d
      00B0A9 F6               [ 1] 1046 	ld	a, (x)
      00B0AA 88               [ 1] 1047 	push	a
      00B0AB A6 01            [ 1] 1048 	ld	a, #0x01
      00B0AD 6B 02            [ 1] 1049 	ld	(0x02, sp), a
      00B0AF 7B 08            [ 1] 1050 	ld	a, (0x08, sp)
      00B0B1 27 05            [ 1] 1051 	jreq	00111$
      00B0B3                       1052 00110$:
      00B0B3 08 02            [ 1] 1053 	sll	(0x02, sp)
      00B0B5 4A               [ 1] 1054 	dec	a
      00B0B6 26 FB            [ 1] 1055 	jrne	00110$
      00B0B8                       1056 00111$:
      00B0B8 84               [ 1] 1057 	pop	a
      00B0B9 14 01            [ 1] 1058 	and	a, (0x01, sp)
      00B0BB 20 1A            [ 2] 1059 	jra	00103$
      00B0BD                       1060 00102$:
                           0004A1  1061 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$168 ==.
                                   1062 ;	StdPeriphLib/src/stm8s_adc1.c: 485: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
      00B0BD AE 54 0C         [ 2] 1063 	ldw	x, #0x540c
      00B0C0 F6               [ 1] 1064 	ld	a, (x)
      00B0C1 97               [ 1] 1065 	ld	xl, a
      00B0C2 7B 07            [ 1] 1066 	ld	a, (0x07, sp)
      00B0C4 A0 08            [ 1] 1067 	sub	a, #0x08
      00B0C6 88               [ 1] 1068 	push	a
      00B0C7 A6 01            [ 1] 1069 	ld	a, #0x01
      00B0C9 6B 03            [ 1] 1070 	ld	(0x03, sp), a
      00B0CB 84               [ 1] 1071 	pop	a
      00B0CC 4D               [ 1] 1072 	tnz	a
      00B0CD 27 05            [ 1] 1073 	jreq	00113$
      00B0CF                       1074 00112$:
      00B0CF 08 02            [ 1] 1075 	sll	(0x02, sp)
      00B0D1 4A               [ 1] 1076 	dec	a
      00B0D2 26 FB            [ 1] 1077 	jrne	00112$
      00B0D4                       1078 00113$:
      00B0D4 9F               [ 1] 1079 	ld	a, xl
      00B0D5 14 02            [ 1] 1080 	and	a, (0x02, sp)
      00B0D7                       1081 00103$:
                           0004BB  1082 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$169 ==.
                                   1083 ;	StdPeriphLib/src/stm8s_adc1.c: 488: return ((FlagStatus)status);
                           0004BB  1084 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$170 ==.
                                   1085 ;	StdPeriphLib/src/stm8s_adc1.c: 489: }
      00B0D7 5B 02            [ 2] 1086 	addw	sp, #2
                           0004BD  1087 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$171 ==.
                           0004BD  1088 	XG$ADC1_GetAWDChannelStatus$0$0 ==.
      00B0D9 32 01 A4         [ 1] 1089 	pop	_fp_
      00B0DC 32 01 A5         [ 1] 1090 	pop	_fp_+1
      00B0DF 81               [ 4] 1091 	ret
                           0004C4  1092 	Sstm8s_adc1$ADC1_GetAWDChannelStatus$172 ==.
                           0004C4  1093 	Sstm8s_adc1$ADC1_GetFlagStatus$173 ==.
                                   1094 ;	StdPeriphLib/src/stm8s_adc1.c: 497: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                   1095 ;	-----------------------------------------
                                   1096 ;	 function ADC1_GetFlagStatus
                                   1097 ;	-----------------------------------------
      00B0E0                       1098 _ADC1_GetFlagStatus:
      00B0E0 3B 01 A5         [ 1] 1099 	push	_fp_+1
      00B0E3 3B 01 A4         [ 1] 1100 	push	_fp_
      00B0E6 90 96            [ 1] 1101 	ldw	y, sp
      00B0E8 90 CF 01 A4      [ 2] 1102 	ldw	_fp_, y
                           0004D0  1103 	Sstm8s_adc1$ADC1_GetFlagStatus$174 ==.
      00B0EC 52 03            [ 2] 1104 	sub	sp, #3
                           0004D2  1105 	Sstm8s_adc1$ADC1_GetFlagStatus$175 ==.
                                   1106 ;	StdPeriphLib/src/stm8s_adc1.c: 502: if ((Flag & 0x0F) == 0x01)
      00B0EE 7B 08            [ 1] 1107 	ld	a, (0x08, sp)
      00B0F0 A4 0F            [ 1] 1108 	and	a, #0x0f
      00B0F2 6B 03            [ 1] 1109 	ld	(0x03, sp), a
      00B0F4 7B 03            [ 1] 1110 	ld	a, (0x03, sp)
      00B0F6 A1 01            [ 1] 1111 	cp	a, #0x01
      00B0F8 26 08            [ 1] 1112 	jrne	00108$
                           0004DE  1113 	Sstm8s_adc1$ADC1_GetFlagStatus$176 ==.
                                   1114 ;	StdPeriphLib/src/stm8s_adc1.c: 505: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
      00B0FA AE 54 03         [ 2] 1115 	ldw	x, #0x5403
      00B0FD F6               [ 1] 1116 	ld	a, (x)
      00B0FE A4 40            [ 1] 1117 	and	a, #0x40
      00B100 20 48            [ 2] 1118 	jra	00109$
      00B102                       1119 00108$:
                           0004E6  1120 	Sstm8s_adc1$ADC1_GetFlagStatus$177 ==.
                                   1121 ;	StdPeriphLib/src/stm8s_adc1.c: 507: else if ((Flag & 0xF0) == 0x10)
      00B102 7B 08            [ 1] 1122 	ld	a, (0x08, sp)
      00B104 A4 F0            [ 1] 1123 	and	a, #0xf0
      00B106 A1 10            [ 1] 1124 	cp	a, #0x10
      00B108 26 3A            [ 1] 1125 	jrne	00105$
                           0004EE  1126 	Sstm8s_adc1$ADC1_GetFlagStatus$178 ==.
                                   1127 ;	StdPeriphLib/src/stm8s_adc1.c: 510: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      00B10A 7B 03            [ 1] 1128 	ld	a, (0x03, sp)
                           0004F0  1129 	Sstm8s_adc1$ADC1_GetFlagStatus$179 ==.
                                   1130 ;	StdPeriphLib/src/stm8s_adc1.c: 511: if (temp < 8)
      00B10C A1 08            [ 1] 1131 	cp	a, #0x08
      00B10E 24 18            [ 1] 1132 	jrnc	00102$
                           0004F4  1133 	Sstm8s_adc1$ADC1_GetFlagStatus$180 ==.
                                   1134 ;	StdPeriphLib/src/stm8s_adc1.c: 513: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00B110 AE 54 0D         [ 2] 1135 	ldw	x, #0x540d
      00B113 88               [ 1] 1136 	push	a
      00B114 F6               [ 1] 1137 	ld	a, (x)
      00B115 97               [ 1] 1138 	ld	xl, a
      00B116 A6 01            [ 1] 1139 	ld	a, #0x01
      00B118 6B 02            [ 1] 1140 	ld	(0x02, sp), a
      00B11A 84               [ 1] 1141 	pop	a
      00B11B 4D               [ 1] 1142 	tnz	a
      00B11C 27 05            [ 1] 1143 	jreq	00129$
      00B11E                       1144 00128$:
      00B11E 08 01            [ 1] 1145 	sll	(0x01, sp)
      00B120 4A               [ 1] 1146 	dec	a
      00B121 26 FB            [ 1] 1147 	jrne	00128$
      00B123                       1148 00129$:
      00B123 9F               [ 1] 1149 	ld	a, xl
      00B124 14 01            [ 1] 1150 	and	a, (0x01, sp)
      00B126 20 22            [ 2] 1151 	jra	00109$
      00B128                       1152 00102$:
                           00050C  1153 	Sstm8s_adc1$ADC1_GetFlagStatus$181 ==.
                                   1154 ;	StdPeriphLib/src/stm8s_adc1.c: 517: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00B128 AE 54 0C         [ 2] 1155 	ldw	x, #0x540c
      00B12B 88               [ 1] 1156 	push	a
      00B12C F6               [ 1] 1157 	ld	a, (x)
      00B12D 6B 03            [ 1] 1158 	ld	(0x03, sp), a
      00B12F 84               [ 1] 1159 	pop	a
      00B130 A0 08            [ 1] 1160 	sub	a, #0x08
      00B132 97               [ 1] 1161 	ld	xl, a
      00B133 A6 01            [ 1] 1162 	ld	a, #0x01
      00B135 88               [ 1] 1163 	push	a
      00B136 9F               [ 1] 1164 	ld	a, xl
      00B137 4D               [ 1] 1165 	tnz	a
      00B138 27 05            [ 1] 1166 	jreq	00131$
      00B13A                       1167 00130$:
      00B13A 08 01            [ 1] 1168 	sll	(1, sp)
      00B13C 4A               [ 1] 1169 	dec	a
      00B13D 26 FB            [ 1] 1170 	jrne	00130$
      00B13F                       1171 00131$:
      00B13F 84               [ 1] 1172 	pop	a
      00B140 14 02            [ 1] 1173 	and	a, (0x02, sp)
      00B142 20 06            [ 2] 1174 	jra	00109$
      00B144                       1175 00105$:
                           000528  1176 	Sstm8s_adc1$ADC1_GetFlagStatus$182 ==.
                                   1177 ;	StdPeriphLib/src/stm8s_adc1.c: 522: flagstatus = (uint8_t)(ADC1->CSR & Flag);
      00B144 AE 54 00         [ 2] 1178 	ldw	x, #0x5400
      00B147 F6               [ 1] 1179 	ld	a, (x)
      00B148 14 08            [ 1] 1180 	and	a, (0x08, sp)
      00B14A                       1181 00109$:
                           00052E  1182 	Sstm8s_adc1$ADC1_GetFlagStatus$183 ==.
                                   1183 ;	StdPeriphLib/src/stm8s_adc1.c: 524: return ((FlagStatus)flagstatus);
                           00052E  1184 	Sstm8s_adc1$ADC1_GetFlagStatus$184 ==.
                                   1185 ;	StdPeriphLib/src/stm8s_adc1.c: 526: }
      00B14A 5B 03            [ 2] 1186 	addw	sp, #3
                           000530  1187 	Sstm8s_adc1$ADC1_GetFlagStatus$185 ==.
                           000530  1188 	XG$ADC1_GetFlagStatus$0$0 ==.
      00B14C 32 01 A4         [ 1] 1189 	pop	_fp_
      00B14F 32 01 A5         [ 1] 1190 	pop	_fp_+1
      00B152 81               [ 4] 1191 	ret
                           000537  1192 	Sstm8s_adc1$ADC1_GetFlagStatus$186 ==.
                           000537  1193 	Sstm8s_adc1$ADC1_ClearFlag$187 ==.
                                   1194 ;	StdPeriphLib/src/stm8s_adc1.c: 534: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function ADC1_ClearFlag
                                   1197 ;	-----------------------------------------
      00B153                       1198 _ADC1_ClearFlag:
      00B153 3B 01 A5         [ 1] 1199 	push	_fp_+1
      00B156 3B 01 A4         [ 1] 1200 	push	_fp_
      00B159 90 96            [ 1] 1201 	ldw	y, sp
      00B15B 90 CF 01 A4      [ 2] 1202 	ldw	_fp_, y
                           000543  1203 	Sstm8s_adc1$ADC1_ClearFlag$188 ==.
      00B15F 52 03            [ 2] 1204 	sub	sp, #3
                           000545  1205 	Sstm8s_adc1$ADC1_ClearFlag$189 ==.
                                   1206 ;	StdPeriphLib/src/stm8s_adc1.c: 541: if ((Flag & 0x0F) == 0x01)
      00B161 7B 08            [ 1] 1207 	ld	a, (0x08, sp)
      00B163 A4 0F            [ 1] 1208 	and	a, #0x0f
      00B165 97               [ 1] 1209 	ld	xl, a
      00B166 A1 01            [ 1] 1210 	cp	a, #0x01
      00B168 26 0A            [ 1] 1211 	jrne	00108$
                           00054E  1212 	Sstm8s_adc1$ADC1_ClearFlag$190 ==.
                                   1213 ;	StdPeriphLib/src/stm8s_adc1.c: 544: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
      00B16A AE 54 03         [ 2] 1214 	ldw	x, #0x5403
      00B16D F6               [ 1] 1215 	ld	a, (x)
      00B16E A4 BF            [ 1] 1216 	and	a, #0xbf
      00B170 F7               [ 1] 1217 	ld	(x), a
      00B171 CC B1 CF         [ 2] 1218 	jp	00110$
      00B174                       1219 00108$:
                           000558  1220 	Sstm8s_adc1$ADC1_ClearFlag$191 ==.
                                   1221 ;	StdPeriphLib/src/stm8s_adc1.c: 546: else if ((Flag & 0xF0) == 0x10)
      00B174 7B 08            [ 1] 1222 	ld	a, (0x08, sp)
      00B176 A4 F0            [ 1] 1223 	and	a, #0xf0
      00B178 A1 10            [ 1] 1224 	cp	a, #0x10
      00B17A 26 44            [ 1] 1225 	jrne	00105$
                           000560  1226 	Sstm8s_adc1$ADC1_ClearFlag$192 ==.
                                   1227 ;	StdPeriphLib/src/stm8s_adc1.c: 549: temp = (uint8_t)(Flag & (uint8_t)0x0F);
                           000560  1228 	Sstm8s_adc1$ADC1_ClearFlag$193 ==.
                                   1229 ;	StdPeriphLib/src/stm8s_adc1.c: 550: if (temp < 8)
      00B17C 9F               [ 1] 1230 	ld	a, xl
      00B17D A1 08            [ 1] 1231 	cp	a, #0x08
      00B17F 24 1E            [ 1] 1232 	jrnc	00102$
                           000565  1233 	Sstm8s_adc1$ADC1_ClearFlag$194 ==.
                                   1234 ;	StdPeriphLib/src/stm8s_adc1.c: 552: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00B181 90 AE 54 0D      [ 2] 1235 	ldw	y, #0x540d
      00B185 90 F6            [ 1] 1236 	ld	a, (y)
      00B187 6B 03            [ 1] 1237 	ld	(0x03, sp), a
      00B189 A6 01            [ 1] 1238 	ld	a, #0x01
      00B18B 88               [ 1] 1239 	push	a
      00B18C 9F               [ 1] 1240 	ld	a, xl
      00B18D 4D               [ 1] 1241 	tnz	a
      00B18E 27 05            [ 1] 1242 	jreq	00129$
      00B190                       1243 00128$:
      00B190 08 01            [ 1] 1244 	sll	(1, sp)
      00B192 4A               [ 1] 1245 	dec	a
      00B193 26 FB            [ 1] 1246 	jrne	00128$
      00B195                       1247 00129$:
      00B195 84               [ 1] 1248 	pop	a
      00B196 43               [ 1] 1249 	cpl	a
      00B197 14 03            [ 1] 1250 	and	a, (0x03, sp)
      00B199 AE 54 0D         [ 2] 1251 	ldw	x, #0x540d
      00B19C F7               [ 1] 1252 	ld	(x), a
      00B19D 20 30            [ 2] 1253 	jra	00110$
      00B19F                       1254 00102$:
                           000583  1255 	Sstm8s_adc1$ADC1_ClearFlag$195 ==.
                                   1256 ;	StdPeriphLib/src/stm8s_adc1.c: 556: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      00B19F 90 AE 54 0C      [ 2] 1257 	ldw	y, #0x540c
      00B1A3 90 F6            [ 1] 1258 	ld	a, (y)
      00B1A5 6B 02            [ 1] 1259 	ld	(0x02, sp), a
      00B1A7 1D 00 08         [ 2] 1260 	subw	x, #8
      00B1AA A6 01            [ 1] 1261 	ld	a, #0x01
      00B1AC 88               [ 1] 1262 	push	a
      00B1AD 9F               [ 1] 1263 	ld	a, xl
      00B1AE 4D               [ 1] 1264 	tnz	a
      00B1AF 27 05            [ 1] 1265 	jreq	00131$
      00B1B1                       1266 00130$:
      00B1B1 08 01            [ 1] 1267 	sll	(1, sp)
      00B1B3 4A               [ 1] 1268 	dec	a
      00B1B4 26 FB            [ 1] 1269 	jrne	00130$
      00B1B6                       1270 00131$:
      00B1B6 84               [ 1] 1271 	pop	a
      00B1B7 43               [ 1] 1272 	cpl	a
      00B1B8 14 02            [ 1] 1273 	and	a, (0x02, sp)
      00B1BA AE 54 0C         [ 2] 1274 	ldw	x, #0x540c
      00B1BD F7               [ 1] 1275 	ld	(x), a
      00B1BE 20 0F            [ 2] 1276 	jra	00110$
      00B1C0                       1277 00105$:
                           0005A4  1278 	Sstm8s_adc1$ADC1_ClearFlag$196 ==.
                                   1279 ;	StdPeriphLib/src/stm8s_adc1.c: 561: ADC1->CSR &= (uint8_t) (~Flag);
      00B1C0 AE 54 00         [ 2] 1280 	ldw	x, #0x5400
      00B1C3 F6               [ 1] 1281 	ld	a, (x)
      00B1C4 6B 01            [ 1] 1282 	ld	(0x01, sp), a
      00B1C6 7B 08            [ 1] 1283 	ld	a, (0x08, sp)
      00B1C8 43               [ 1] 1284 	cpl	a
      00B1C9 14 01            [ 1] 1285 	and	a, (0x01, sp)
      00B1CB AE 54 00         [ 2] 1286 	ldw	x, #0x5400
      00B1CE F7               [ 1] 1287 	ld	(x), a
      00B1CF                       1288 00110$:
                           0005B3  1289 	Sstm8s_adc1$ADC1_ClearFlag$197 ==.
                                   1290 ;	StdPeriphLib/src/stm8s_adc1.c: 563: }
      00B1CF 5B 03            [ 2] 1291 	addw	sp, #3
                           0005B5  1292 	Sstm8s_adc1$ADC1_ClearFlag$198 ==.
                           0005B5  1293 	XG$ADC1_ClearFlag$0$0 ==.
      00B1D1 32 01 A4         [ 1] 1294 	pop	_fp_
      00B1D4 32 01 A5         [ 1] 1295 	pop	_fp_+1
      00B1D7 81               [ 4] 1296 	ret
                           0005BC  1297 	Sstm8s_adc1$ADC1_ClearFlag$199 ==.
                           0005BC  1298 	Sstm8s_adc1$ADC1_GetITStatus$200 ==.
                                   1299 ;	StdPeriphLib/src/stm8s_adc1.c: 583: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
                                   1300 ;	-----------------------------------------
                                   1301 ;	 function ADC1_GetITStatus
                                   1302 ;	-----------------------------------------
      00B1D8                       1303 _ADC1_GetITStatus:
      00B1D8 3B 01 A5         [ 1] 1304 	push	_fp_+1
      00B1DB 3B 01 A4         [ 1] 1305 	push	_fp_
      00B1DE 90 96            [ 1] 1306 	ldw	y, sp
      00B1E0 90 CF 01 A4      [ 2] 1307 	ldw	_fp_, y
                           0005C8  1308 	Sstm8s_adc1$ADC1_GetITStatus$201 ==.
      00B1E4 52 03            [ 2] 1309 	sub	sp, #3
                           0005CA  1310 	Sstm8s_adc1$ADC1_GetITStatus$202 ==.
                                   1311 ;	StdPeriphLib/src/stm8s_adc1.c: 591: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00B1E6 7B 09            [ 1] 1312 	ld	a, (0x09, sp)
      00B1E8 A4 F0            [ 1] 1313 	and	a, #0xf0
      00B1EA 97               [ 1] 1314 	ld	xl, a
      00B1EB 4F               [ 1] 1315 	clr	a
      00B1EC 95               [ 1] 1316 	ld	xh, a
      00B1ED A3 00 10         [ 2] 1317 	cpw	x, #0x0010
      00B1F0 26 40            [ 1] 1318 	jrne	00105$
                           0005D6  1319 	Sstm8s_adc1$ADC1_GetITStatus$203 ==.
                                   1320 ;	StdPeriphLib/src/stm8s_adc1.c: 594: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00B1F2 7B 09            [ 1] 1321 	ld	a, (0x09, sp)
      00B1F4 A4 0F            [ 1] 1322 	and	a, #0x0f
      00B1F6 97               [ 1] 1323 	ld	xl, a
      00B1F7 4F               [ 1] 1324 	clr	a
                           0005DC  1325 	Sstm8s_adc1$ADC1_GetITStatus$204 ==.
                                   1326 ;	StdPeriphLib/src/stm8s_adc1.c: 595: if (temp < 8)
      00B1F8 9F               [ 1] 1327 	ld	a, xl
      00B1F9 A1 08            [ 1] 1328 	cp	a, #0x08
      00B1FB 24 19            [ 1] 1329 	jrnc	00102$
                           0005E1  1330 	Sstm8s_adc1$ADC1_GetITStatus$205 ==.
                                   1331 ;	StdPeriphLib/src/stm8s_adc1.c: 597: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00B1FD 90 AE 54 0D      [ 2] 1332 	ldw	y, #0x540d
      00B201 90 F6            [ 1] 1333 	ld	a, (y)
      00B203 6B 01            [ 1] 1334 	ld	(0x01, sp), a
      00B205 A6 01            [ 1] 1335 	ld	a, #0x01
      00B207 88               [ 1] 1336 	push	a
      00B208 9F               [ 1] 1337 	ld	a, xl
      00B209 4D               [ 1] 1338 	tnz	a
      00B20A 27 05            [ 1] 1339 	jreq	00120$
      00B20C                       1340 00119$:
      00B20C 08 01            [ 1] 1341 	sll	(1, sp)
      00B20E 4A               [ 1] 1342 	dec	a
      00B20F 26 FB            [ 1] 1343 	jrne	00119$
      00B211                       1344 00120$:
      00B211 84               [ 1] 1345 	pop	a
      00B212 14 01            [ 1] 1346 	and	a, (0x01, sp)
      00B214 20 26            [ 2] 1347 	jra	00106$
      00B216                       1348 00102$:
                           0005FA  1349 	Sstm8s_adc1$ADC1_GetITStatus$206 ==.
                                   1350 ;	StdPeriphLib/src/stm8s_adc1.c: 601: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00B216 90 AE 54 0C      [ 2] 1351 	ldw	y, #0x540c
      00B21A 90 F6            [ 1] 1352 	ld	a, (y)
      00B21C 6B 03            [ 1] 1353 	ld	(0x03, sp), a
      00B21E 1D 00 08         [ 2] 1354 	subw	x, #8
      00B221 A6 01            [ 1] 1355 	ld	a, #0x01
      00B223 88               [ 1] 1356 	push	a
      00B224 9F               [ 1] 1357 	ld	a, xl
      00B225 4D               [ 1] 1358 	tnz	a
      00B226 27 05            [ 1] 1359 	jreq	00122$
      00B228                       1360 00121$:
      00B228 08 01            [ 1] 1361 	sll	(1, sp)
      00B22A 4A               [ 1] 1362 	dec	a
      00B22B 26 FB            [ 1] 1363 	jrne	00121$
      00B22D                       1364 00122$:
      00B22D 84               [ 1] 1365 	pop	a
      00B22E 14 03            [ 1] 1366 	and	a, (0x03, sp)
      00B230 20 0A            [ 2] 1367 	jra	00106$
      00B232                       1368 00105$:
                           000616  1369 	Sstm8s_adc1$ADC1_GetITStatus$207 ==.
                                   1370 ;	StdPeriphLib/src/stm8s_adc1.c: 606: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
      00B232 AE 54 00         [ 2] 1371 	ldw	x, #0x5400
      00B235 F6               [ 1] 1372 	ld	a, (x)
      00B236 6B 02            [ 1] 1373 	ld	(0x02, sp), a
      00B238 7B 09            [ 1] 1374 	ld	a, (0x09, sp)
      00B23A 14 02            [ 1] 1375 	and	a, (0x02, sp)
      00B23C                       1376 00106$:
                           000620  1377 	Sstm8s_adc1$ADC1_GetITStatus$208 ==.
                                   1378 ;	StdPeriphLib/src/stm8s_adc1.c: 608: return ((ITStatus)itstatus);
                           000620  1379 	Sstm8s_adc1$ADC1_GetITStatus$209 ==.
                                   1380 ;	StdPeriphLib/src/stm8s_adc1.c: 609: }
      00B23C 5B 03            [ 2] 1381 	addw	sp, #3
                           000622  1382 	Sstm8s_adc1$ADC1_GetITStatus$210 ==.
                           000622  1383 	XG$ADC1_GetITStatus$0$0 ==.
      00B23E 32 01 A4         [ 1] 1384 	pop	_fp_
      00B241 32 01 A5         [ 1] 1385 	pop	_fp_+1
      00B244 81               [ 4] 1386 	ret
                           000629  1387 	Sstm8s_adc1$ADC1_GetITStatus$211 ==.
                           000629  1388 	Sstm8s_adc1$ADC1_ClearITPendingBit$212 ==.
                                   1389 ;	StdPeriphLib/src/stm8s_adc1.c: 629: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
                                   1390 ;	-----------------------------------------
                                   1391 ;	 function ADC1_ClearITPendingBit
                                   1392 ;	-----------------------------------------
      00B245                       1393 _ADC1_ClearITPendingBit:
      00B245 3B 01 A5         [ 1] 1394 	push	_fp_+1
      00B248 3B 01 A4         [ 1] 1395 	push	_fp_
      00B24B 90 96            [ 1] 1396 	ldw	y, sp
      00B24D 90 CF 01 A4      [ 2] 1397 	ldw	_fp_, y
                           000635  1398 	Sstm8s_adc1$ADC1_ClearITPendingBit$213 ==.
      00B251 52 02            [ 2] 1399 	sub	sp, #2
                           000637  1400 	Sstm8s_adc1$ADC1_ClearITPendingBit$214 ==.
                                   1401 ;	StdPeriphLib/src/stm8s_adc1.c: 636: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00B253 7B 08            [ 1] 1402 	ld	a, (0x08, sp)
      00B255 A4 F0            [ 1] 1403 	and	a, #0xf0
      00B257 97               [ 1] 1404 	ld	xl, a
      00B258 4F               [ 1] 1405 	clr	a
      00B259 95               [ 1] 1406 	ld	xh, a
      00B25A A3 00 10         [ 2] 1407 	cpw	x, #0x0010
      00B25D 26 4A            [ 1] 1408 	jrne	00105$
                           000643  1409 	Sstm8s_adc1$ADC1_ClearITPendingBit$215 ==.
                                   1410 ;	StdPeriphLib/src/stm8s_adc1.c: 639: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00B25F 7B 08            [ 1] 1411 	ld	a, (0x08, sp)
      00B261 A4 0F            [ 1] 1412 	and	a, #0x0f
      00B263 97               [ 1] 1413 	ld	xl, a
      00B264 4F               [ 1] 1414 	clr	a
                           000649  1415 	Sstm8s_adc1$ADC1_ClearITPendingBit$216 ==.
                                   1416 ;	StdPeriphLib/src/stm8s_adc1.c: 640: if (temp < 8)
      00B265 9F               [ 1] 1417 	ld	a, xl
      00B266 A1 08            [ 1] 1418 	cp	a, #0x08
      00B268 24 1E            [ 1] 1419 	jrnc	00102$
                           00064E  1420 	Sstm8s_adc1$ADC1_ClearITPendingBit$217 ==.
                                   1421 ;	StdPeriphLib/src/stm8s_adc1.c: 642: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00B26A 90 AE 54 0D      [ 2] 1422 	ldw	y, #0x540d
      00B26E 90 F6            [ 1] 1423 	ld	a, (y)
      00B270 6B 01            [ 1] 1424 	ld	(0x01, sp), a
      00B272 A6 01            [ 1] 1425 	ld	a, #0x01
      00B274 88               [ 1] 1426 	push	a
      00B275 9F               [ 1] 1427 	ld	a, xl
      00B276 4D               [ 1] 1428 	tnz	a
      00B277 27 05            [ 1] 1429 	jreq	00120$
      00B279                       1430 00119$:
      00B279 08 01            [ 1] 1431 	sll	(1, sp)
      00B27B 4A               [ 1] 1432 	dec	a
      00B27C 26 FB            [ 1] 1433 	jrne	00119$
      00B27E                       1434 00120$:
      00B27E 84               [ 1] 1435 	pop	a
      00B27F 43               [ 1] 1436 	cpl	a
      00B280 14 01            [ 1] 1437 	and	a, (0x01, sp)
      00B282 AE 54 0D         [ 2] 1438 	ldw	x, #0x540d
      00B285 F7               [ 1] 1439 	ld	(x), a
      00B286 20 30            [ 2] 1440 	jra	00107$
      00B288                       1441 00102$:
                           00066C  1442 	Sstm8s_adc1$ADC1_ClearITPendingBit$218 ==.
                                   1443 ;	StdPeriphLib/src/stm8s_adc1.c: 646: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      00B288 90 AE 54 0C      [ 2] 1444 	ldw	y, #0x540c
      00B28C 90 F6            [ 1] 1445 	ld	a, (y)
      00B28E 6B 02            [ 1] 1446 	ld	(0x02, sp), a
      00B290 1D 00 08         [ 2] 1447 	subw	x, #8
      00B293 A6 01            [ 1] 1448 	ld	a, #0x01
      00B295 88               [ 1] 1449 	push	a
      00B296 9F               [ 1] 1450 	ld	a, xl
      00B297 4D               [ 1] 1451 	tnz	a
      00B298 27 05            [ 1] 1452 	jreq	00122$
      00B29A                       1453 00121$:
      00B29A 08 01            [ 1] 1454 	sll	(1, sp)
      00B29C 4A               [ 1] 1455 	dec	a
      00B29D 26 FB            [ 1] 1456 	jrne	00121$
      00B29F                       1457 00122$:
      00B29F 84               [ 1] 1458 	pop	a
      00B2A0 43               [ 1] 1459 	cpl	a
      00B2A1 14 02            [ 1] 1460 	and	a, (0x02, sp)
      00B2A3 AE 54 0C         [ 2] 1461 	ldw	x, #0x540c
      00B2A6 F7               [ 1] 1462 	ld	(x), a
      00B2A7 20 0F            [ 2] 1463 	jra	00107$
      00B2A9                       1464 00105$:
                           00068D  1465 	Sstm8s_adc1$ADC1_ClearITPendingBit$219 ==.
                                   1466 ;	StdPeriphLib/src/stm8s_adc1.c: 651: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
      00B2A9 AE 54 00         [ 2] 1467 	ldw	x, #0x5400
      00B2AC F6               [ 1] 1468 	ld	a, (x)
      00B2AD 1E 07            [ 2] 1469 	ldw	x, (0x07, sp)
      00B2AF 53               [ 2] 1470 	cplw	x
      00B2B0 89               [ 2] 1471 	pushw	x
      00B2B1 14 02            [ 1] 1472 	and	a, (2, sp)
      00B2B3 85               [ 2] 1473 	popw	x
      00B2B4 AE 54 00         [ 2] 1474 	ldw	x, #0x5400
      00B2B7 F7               [ 1] 1475 	ld	(x), a
      00B2B8                       1476 00107$:
                           00069C  1477 	Sstm8s_adc1$ADC1_ClearITPendingBit$220 ==.
                                   1478 ;	StdPeriphLib/src/stm8s_adc1.c: 653: }
      00B2B8 5B 02            [ 2] 1479 	addw	sp, #2
                           00069E  1480 	Sstm8s_adc1$ADC1_ClearITPendingBit$221 ==.
                           00069E  1481 	XG$ADC1_ClearITPendingBit$0$0 ==.
      00B2BA 32 01 A4         [ 1] 1482 	pop	_fp_
      00B2BD 32 01 A5         [ 1] 1483 	pop	_fp_+1
      00B2C0 81               [ 4] 1484 	ret
                           0006A5  1485 	Sstm8s_adc1$ADC1_ClearITPendingBit$222 ==.
                                   1486 	.area CODE
                                   1487 	.area INITIALIZER
                                   1488 	.area CABS (ABS)
                                   1489 
                                   1490 	.area .debug_line (NOLOAD)
      0034E1 00 00 05 C5           1491 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0034E5                       1492 Ldebug_line_start:
      0034E5 00 02                 1493 	.dw	2
      0034E7 00 00 01 19           1494 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0034EB 01                    1495 	.db	1
      0034EC 01                    1496 	.db	1
      0034ED FB                    1497 	.db	-5
      0034EE 0F                    1498 	.db	15
      0034EF 0A                    1499 	.db	10
      0034F0 00                    1500 	.db	0
      0034F1 01                    1501 	.db	1
      0034F2 01                    1502 	.db	1
      0034F3 01                    1503 	.db	1
      0034F4 01                    1504 	.db	1
      0034F5 00                    1505 	.db	0
      0034F6 00                    1506 	.db	0
      0034F7 00                    1507 	.db	0
      0034F8 01                    1508 	.db	1
      0034F9 2F 68 6F 6D 65 2F 63  1509 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      003538 00                    1510 	.db	0
      003539 2F 68 6F 6D 65 2F 63  1511 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      003571 00                    1512 	.db	0
      003572 2F 68 6F 6D 65 2F 63  1513 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      0035AC 00                    1514 	.db	0
      0035AD 2F 68 6F 6D 65 2F 63  1515 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      0035E0 00                    1516 	.db	0
      0035E1 00                    1517 	.db	0
      0035E2 53 74 64 50 65 72 69  1518 	.ascii "StdPeriphLib/src/stm8s_adc1.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 61 64 63 31 2E
             63
      0035FF 00                    1519 	.db	0
      003600 00                    1520 	.uleb128	0
      003601 00                    1521 	.uleb128	0
      003602 00                    1522 	.uleb128	0
      003603 00                    1523 	.db	0
      003604                       1524 Ldebug_line_stmt:
      003604 00                    1525 	.db	0
      003605 05                    1526 	.uleb128	5
      003606 02                    1527 	.db	2
      003607 00 00 AC 1C           1528 	.dw	0,(Sstm8s_adc1$ADC1_DeInit$0)
      00360B 03                    1529 	.db	3
      00360C 33                    1530 	.sleb128	51
      00360D 01                    1531 	.db	1
      00360E 09                    1532 	.db	9
      00360F 00 0C                 1533 	.dw	Sstm8s_adc1$ADC1_DeInit$2-Sstm8s_adc1$ADC1_DeInit$0
      003611 03                    1534 	.db	3
      003612 02                    1535 	.sleb128	2
      003613 01                    1536 	.db	1
      003614 09                    1537 	.db	9
      003615 00 04                 1538 	.dw	Sstm8s_adc1$ADC1_DeInit$3-Sstm8s_adc1$ADC1_DeInit$2
      003617 03                    1539 	.db	3
      003618 01                    1540 	.sleb128	1
      003619 01                    1541 	.db	1
      00361A 09                    1542 	.db	9
      00361B 00 04                 1543 	.dw	Sstm8s_adc1$ADC1_DeInit$4-Sstm8s_adc1$ADC1_DeInit$3
      00361D 03                    1544 	.db	3
      00361E 01                    1545 	.sleb128	1
      00361F 01                    1546 	.db	1
      003620 09                    1547 	.db	9
      003621 00 04                 1548 	.dw	Sstm8s_adc1$ADC1_DeInit$5-Sstm8s_adc1$ADC1_DeInit$4
      003623 03                    1549 	.db	3
      003624 01                    1550 	.sleb128	1
      003625 01                    1551 	.db	1
      003626 09                    1552 	.db	9
      003627 00 04                 1553 	.dw	Sstm8s_adc1$ADC1_DeInit$6-Sstm8s_adc1$ADC1_DeInit$5
      003629 03                    1554 	.db	3
      00362A 01                    1555 	.sleb128	1
      00362B 01                    1556 	.db	1
      00362C 09                    1557 	.db	9
      00362D 00 04                 1558 	.dw	Sstm8s_adc1$ADC1_DeInit$7-Sstm8s_adc1$ADC1_DeInit$6
      00362F 03                    1559 	.db	3
      003630 01                    1560 	.sleb128	1
      003631 01                    1561 	.db	1
      003632 09                    1562 	.db	9
      003633 00 04                 1563 	.dw	Sstm8s_adc1$ADC1_DeInit$8-Sstm8s_adc1$ADC1_DeInit$7
      003635 03                    1564 	.db	3
      003636 01                    1565 	.sleb128	1
      003637 01                    1566 	.db	1
      003638 09                    1567 	.db	9
      003639 00 04                 1568 	.dw	Sstm8s_adc1$ADC1_DeInit$9-Sstm8s_adc1$ADC1_DeInit$8
      00363B 03                    1569 	.db	3
      00363C 01                    1570 	.sleb128	1
      00363D 01                    1571 	.db	1
      00363E 09                    1572 	.db	9
      00363F 00 04                 1573 	.dw	Sstm8s_adc1$ADC1_DeInit$10-Sstm8s_adc1$ADC1_DeInit$9
      003641 03                    1574 	.db	3
      003642 01                    1575 	.sleb128	1
      003643 01                    1576 	.db	1
      003644 09                    1577 	.db	9
      003645 00 04                 1578 	.dw	Sstm8s_adc1$ADC1_DeInit$11-Sstm8s_adc1$ADC1_DeInit$10
      003647 03                    1579 	.db	3
      003648 01                    1580 	.sleb128	1
      003649 01                    1581 	.db	1
      00364A 09                    1582 	.db	9
      00364B 00 04                 1583 	.dw	Sstm8s_adc1$ADC1_DeInit$12-Sstm8s_adc1$ADC1_DeInit$11
      00364D 03                    1584 	.db	3
      00364E 01                    1585 	.sleb128	1
      00364F 01                    1586 	.db	1
      003650 09                    1587 	.db	9
      003651 00 04                 1588 	.dw	Sstm8s_adc1$ADC1_DeInit$13-Sstm8s_adc1$ADC1_DeInit$12
      003653 03                    1589 	.db	3
      003654 01                    1590 	.sleb128	1
      003655 01                    1591 	.db	1
      003656 09                    1592 	.db	9
      003657 00 04                 1593 	.dw	Sstm8s_adc1$ADC1_DeInit$14-Sstm8s_adc1$ADC1_DeInit$13
      003659 03                    1594 	.db	3
      00365A 01                    1595 	.sleb128	1
      00365B 01                    1596 	.db	1
      00365C 09                    1597 	.db	9
      00365D 00 07                 1598 	.dw	7+Sstm8s_adc1$ADC1_DeInit$15-Sstm8s_adc1$ADC1_DeInit$14
      00365F 00                    1599 	.db	0
      003660 01                    1600 	.uleb128	1
      003661 01                    1601 	.db	1
      003662 00                    1602 	.db	0
      003663 05                    1603 	.uleb128	5
      003664 02                    1604 	.db	2
      003665 00 00 AC 5F           1605 	.dw	0,(Sstm8s_adc1$ADC1_Init$17)
      003669 03                    1606 	.db	3
      00366A D7 00                 1607 	.sleb128	87
      00366C 01                    1608 	.db	1
      00366D 09                    1609 	.db	9
      00366E 00 0C                 1610 	.dw	Sstm8s_adc1$ADC1_Init$19-Sstm8s_adc1$ADC1_Init$17
      003670 03                    1611 	.db	3
      003671 05                    1612 	.sleb128	5
      003672 01                    1613 	.db	1
      003673 09                    1614 	.db	9
      003674 00 0E                 1615 	.dw	Sstm8s_adc1$ADC1_Init$20-Sstm8s_adc1$ADC1_Init$19
      003676 03                    1616 	.db	3
      003677 02                    1617 	.sleb128	2
      003678 01                    1618 	.db	1
      003679 09                    1619 	.db	9
      00367A 00 07                 1620 	.dw	Sstm8s_adc1$ADC1_Init$21-Sstm8s_adc1$ADC1_Init$20
      00367C 03                    1621 	.db	3
      00367D 05                    1622 	.sleb128	5
      00367E 01                    1623 	.db	1
      00367F 09                    1624 	.db	9
      003680 00 0B                 1625 	.dw	Sstm8s_adc1$ADC1_Init$22-Sstm8s_adc1$ADC1_Init$21
      003682 03                    1626 	.db	3
      003683 05                    1627 	.sleb128	5
      003684 01                    1628 	.db	1
      003685 09                    1629 	.db	9
      003686 00 0B                 1630 	.dw	Sstm8s_adc1$ADC1_Init$23-Sstm8s_adc1$ADC1_Init$22
      003688 03                    1631 	.db	3
      003689 03                    1632 	.sleb128	3
      00368A 01                    1633 	.db	1
      00368B 09                    1634 	.db	9
      00368C 00 04                 1635 	.dw	Sstm8s_adc1$ADC1_Init$24-Sstm8s_adc1$ADC1_Init$23
      00368E 03                    1636 	.db	3
      00368F 01                    1637 	.sleb128	1
      003690 01                    1638 	.db	1
      003691 09                    1639 	.db	9
      003692 00 07                 1640 	.dw	7+Sstm8s_adc1$ADC1_Init$25-Sstm8s_adc1$ADC1_Init$24
      003694 00                    1641 	.db	0
      003695 01                    1642 	.uleb128	1
      003696 01                    1643 	.db	1
      003697 00                    1644 	.db	0
      003698 05                    1645 	.uleb128	5
      003699 02                    1646 	.db	2
      00369A 00 00 AC A1           1647 	.dw	0,(Sstm8s_adc1$ADC1_Cmd$27)
      00369E 03                    1648 	.db	3
      00369F F3 00                 1649 	.sleb128	115
      0036A1 01                    1650 	.db	1
      0036A2 09                    1651 	.db	9
      0036A3 00 0C                 1652 	.dw	Sstm8s_adc1$ADC1_Cmd$29-Sstm8s_adc1$ADC1_Cmd$27
      0036A5 03                    1653 	.db	3
      0036A6 05                    1654 	.sleb128	5
      0036A7 01                    1655 	.db	1
      0036A8 09                    1656 	.db	9
      0036A9 00 04                 1657 	.dw	Sstm8s_adc1$ADC1_Cmd$30-Sstm8s_adc1$ADC1_Cmd$29
      0036AB 03                    1658 	.db	3
      0036AC 02                    1659 	.sleb128	2
      0036AD 01                    1660 	.db	1
      0036AE 09                    1661 	.db	9
      0036AF 00 06                 1662 	.dw	Sstm8s_adc1$ADC1_Cmd$31-Sstm8s_adc1$ADC1_Cmd$30
      0036B1 03                    1663 	.db	3
      0036B2 04                    1664 	.sleb128	4
      0036B3 01                    1665 	.db	1
      0036B4 09                    1666 	.db	9
      0036B5 00 04                 1667 	.dw	Sstm8s_adc1$ADC1_Cmd$32-Sstm8s_adc1$ADC1_Cmd$31
      0036B7 03                    1668 	.db	3
      0036B8 02                    1669 	.sleb128	2
      0036B9 01                    1670 	.db	1
      0036BA 09                    1671 	.db	9
      0036BB 00 07                 1672 	.dw	7+Sstm8s_adc1$ADC1_Cmd$33-Sstm8s_adc1$ADC1_Cmd$32
      0036BD 00                    1673 	.db	0
      0036BE 01                    1674 	.uleb128	1
      0036BF 01                    1675 	.db	1
      0036C0 00                    1676 	.db	0
      0036C1 05                    1677 	.uleb128	5
      0036C2 02                    1678 	.db	2
      0036C3 00 00 AC C2           1679 	.dw	0,(Sstm8s_adc1$ADC1_ScanModeCmd$35)
      0036C7 03                    1680 	.db	3
      0036C8 87 01                 1681 	.sleb128	135
      0036CA 01                    1682 	.db	1
      0036CB 09                    1683 	.db	9
      0036CC 00 0C                 1684 	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$37-Sstm8s_adc1$ADC1_ScanModeCmd$35
      0036CE 03                    1685 	.db	3
      0036CF 05                    1686 	.sleb128	5
      0036D0 01                    1687 	.db	1
      0036D1 09                    1688 	.db	9
      0036D2 00 04                 1689 	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$38-Sstm8s_adc1$ADC1_ScanModeCmd$37
      0036D4 03                    1690 	.db	3
      0036D5 02                    1691 	.sleb128	2
      0036D6 01                    1692 	.db	1
      0036D7 09                    1693 	.db	9
      0036D8 00 09                 1694 	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$39-Sstm8s_adc1$ADC1_ScanModeCmd$38
      0036DA 03                    1695 	.db	3
      0036DB 04                    1696 	.sleb128	4
      0036DC 01                    1697 	.db	1
      0036DD 09                    1698 	.db	9
      0036DE 00 07                 1699 	.dw	Sstm8s_adc1$ADC1_ScanModeCmd$40-Sstm8s_adc1$ADC1_ScanModeCmd$39
      0036E0 03                    1700 	.db	3
      0036E1 02                    1701 	.sleb128	2
      0036E2 01                    1702 	.db	1
      0036E3 09                    1703 	.db	9
      0036E4 00 07                 1704 	.dw	7+Sstm8s_adc1$ADC1_ScanModeCmd$41-Sstm8s_adc1$ADC1_ScanModeCmd$40
      0036E6 00                    1705 	.db	0
      0036E7 01                    1706 	.uleb128	1
      0036E8 01                    1707 	.db	1
      0036E9 00                    1708 	.db	0
      0036EA 05                    1709 	.uleb128	5
      0036EB 02                    1710 	.db	2
      0036EC 00 00 AC E9           1711 	.dw	0,(Sstm8s_adc1$ADC1_DataBufferCmd$43)
      0036F0 03                    1712 	.db	3
      0036F1 9B 01                 1713 	.sleb128	155
      0036F3 01                    1714 	.db	1
      0036F4 09                    1715 	.db	9
      0036F5 00 0C                 1716 	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$45-Sstm8s_adc1$ADC1_DataBufferCmd$43
      0036F7 03                    1717 	.db	3
      0036F8 05                    1718 	.sleb128	5
      0036F9 01                    1719 	.db	1
      0036FA 09                    1720 	.db	9
      0036FB 00 04                 1721 	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$46-Sstm8s_adc1$ADC1_DataBufferCmd$45
      0036FD 03                    1722 	.db	3
      0036FE 02                    1723 	.sleb128	2
      0036FF 01                    1724 	.db	1
      003700 09                    1725 	.db	9
      003701 00 06                 1726 	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$47-Sstm8s_adc1$ADC1_DataBufferCmd$46
      003703 03                    1727 	.db	3
      003704 04                    1728 	.sleb128	4
      003705 01                    1729 	.db	1
      003706 09                    1730 	.db	9
      003707 00 04                 1731 	.dw	Sstm8s_adc1$ADC1_DataBufferCmd$48-Sstm8s_adc1$ADC1_DataBufferCmd$47
      003709 03                    1732 	.db	3
      00370A 02                    1733 	.sleb128	2
      00370B 01                    1734 	.db	1
      00370C 09                    1735 	.db	9
      00370D 00 07                 1736 	.dw	7+Sstm8s_adc1$ADC1_DataBufferCmd$49-Sstm8s_adc1$ADC1_DataBufferCmd$48
      00370F 00                    1737 	.db	0
      003710 01                    1738 	.uleb128	1
      003711 01                    1739 	.db	1
      003712 00                    1740 	.db	0
      003713 05                    1741 	.uleb128	5
      003714 02                    1742 	.db	2
      003715 00 00 AD 0A           1743 	.dw	0,(Sstm8s_adc1$ADC1_ITConfig$51)
      003719 03                    1744 	.db	3
      00371A B3 01                 1745 	.sleb128	179
      00371C 01                    1746 	.db	1
      00371D 09                    1747 	.db	9
      00371E 00 0D                 1748 	.dw	Sstm8s_adc1$ADC1_ITConfig$53-Sstm8s_adc1$ADC1_ITConfig$51
      003720 03                    1749 	.db	3
      003721 02                    1750 	.sleb128	2
      003722 01                    1751 	.db	1
      003723 09                    1752 	.db	9
      003724 00 04                 1753 	.dw	Sstm8s_adc1$ADC1_ITConfig$54-Sstm8s_adc1$ADC1_ITConfig$53
      003726 03                    1754 	.db	3
      003727 03                    1755 	.sleb128	3
      003728 01                    1756 	.db	1
      003729 09                    1757 	.db	9
      00372A 00 10                 1758 	.dw	Sstm8s_adc1$ADC1_ITConfig$55-Sstm8s_adc1$ADC1_ITConfig$54
      00372C 03                    1759 	.db	3
      00372D 05                    1760 	.sleb128	5
      00372E 01                    1761 	.db	1
      00372F 09                    1762 	.db	9
      003730 00 0F                 1763 	.dw	Sstm8s_adc1$ADC1_ITConfig$56-Sstm8s_adc1$ADC1_ITConfig$55
      003732 03                    1764 	.db	3
      003733 02                    1765 	.sleb128	2
      003734 01                    1766 	.db	1
      003735 09                    1767 	.db	9
      003736 00 08                 1768 	.dw	7+Sstm8s_adc1$ADC1_ITConfig$57-Sstm8s_adc1$ADC1_ITConfig$56
      003738 00                    1769 	.db	0
      003739 01                    1770 	.uleb128	1
      00373A 01                    1771 	.db	1
      00373B 00                    1772 	.db	0
      00373C 05                    1773 	.uleb128	5
      00373D 02                    1774 	.db	2
      00373E 00 00 AD 42           1775 	.dw	0,(Sstm8s_adc1$ADC1_PrescalerConfig$59)
      003742 03                    1776 	.db	3
      003743 C7 01                 1777 	.sleb128	199
      003745 01                    1778 	.db	1
      003746 09                    1779 	.db	9
      003747 00 0C                 1780 	.dw	Sstm8s_adc1$ADC1_PrescalerConfig$61-Sstm8s_adc1$ADC1_PrescalerConfig$59
      003749 03                    1781 	.db	3
      00374A 03                    1782 	.sleb128	3
      00374B 01                    1783 	.db	1
      00374C 09                    1784 	.db	9
      00374D 00 07                 1785 	.dw	Sstm8s_adc1$ADC1_PrescalerConfig$62-Sstm8s_adc1$ADC1_PrescalerConfig$61
      00374F 03                    1786 	.db	3
      003750 02                    1787 	.sleb128	2
      003751 01                    1788 	.db	1
      003752 09                    1789 	.db	9
      003753 00 0A                 1790 	.dw	Sstm8s_adc1$ADC1_PrescalerConfig$63-Sstm8s_adc1$ADC1_PrescalerConfig$62
      003755 03                    1791 	.db	3
      003756 01                    1792 	.sleb128	1
      003757 01                    1793 	.db	1
      003758 09                    1794 	.db	9
      003759 00 07                 1795 	.dw	7+Sstm8s_adc1$ADC1_PrescalerConfig$64-Sstm8s_adc1$ADC1_PrescalerConfig$63
      00375B 00                    1796 	.db	0
      00375C 01                    1797 	.uleb128	1
      00375D 01                    1798 	.db	1
      00375E 00                    1799 	.db	0
      00375F 05                    1800 	.uleb128	5
      003760 02                    1801 	.db	2
      003761 00 00 AD 66           1802 	.dw	0,(Sstm8s_adc1$ADC1_SchmittTriggerConfig$66)
      003765 03                    1803 	.db	3
      003766 D7 01                 1804 	.sleb128	215
      003768 01                    1805 	.db	1
      003769 09                    1806 	.db	9
      00376A 00 0E                 1807 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$68-Sstm8s_adc1$ADC1_SchmittTriggerConfig$66
      00376C 03                    1808 	.db	3
      00376D 02                    1809 	.sleb128	2
      00376E 01                    1810 	.db	1
      00376F 09                    1811 	.db	9
      003770 00 06                 1812 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$69-Sstm8s_adc1$ADC1_SchmittTriggerConfig$68
      003772 03                    1813 	.db	3
      003773 02                    1814 	.sleb128	2
      003774 01                    1815 	.db	1
      003775 09                    1816 	.db	9
      003776 00 04                 1817 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$70-Sstm8s_adc1$ADC1_SchmittTriggerConfig$69
      003778 03                    1818 	.db	3
      003779 02                    1819 	.sleb128	2
      00377A 01                    1820 	.db	1
      00377B 09                    1821 	.db	9
      00377C 00 08                 1822 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$71-Sstm8s_adc1$ADC1_SchmittTriggerConfig$70
      00377E 03                    1823 	.db	3
      00377F 01                    1824 	.sleb128	1
      003780 01                    1825 	.db	1
      003781 09                    1826 	.db	9
      003782 00 0B                 1827 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$72-Sstm8s_adc1$ADC1_SchmittTriggerConfig$71
      003784 03                    1828 	.db	3
      003785 04                    1829 	.sleb128	4
      003786 01                    1830 	.db	1
      003787 09                    1831 	.db	9
      003788 00 08                 1832 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$73-Sstm8s_adc1$ADC1_SchmittTriggerConfig$72
      00378A 03                    1833 	.db	3
      00378B 01                    1834 	.sleb128	1
      00378C 01                    1835 	.db	1
      00378D 09                    1836 	.db	9
      00378E 00 0B                 1837 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$74-Sstm8s_adc1$ADC1_SchmittTriggerConfig$73
      003790 03                    1838 	.db	3
      003791 03                    1839 	.sleb128	3
      003792 01                    1840 	.db	1
      003793 09                    1841 	.db	9
      003794 00 06                 1842 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$75-Sstm8s_adc1$ADC1_SchmittTriggerConfig$74
      003796 03                    1843 	.db	3
      003797 02                    1844 	.sleb128	2
      003798 01                    1845 	.db	1
      003799 09                    1846 	.db	9
      00379A 00 04                 1847 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$76-Sstm8s_adc1$ADC1_SchmittTriggerConfig$75
      00379C 03                    1848 	.db	3
      00379D 02                    1849 	.sleb128	2
      00379E 01                    1850 	.db	1
      00379F 09                    1851 	.db	9
      0037A0 00 1C                 1852 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$77-Sstm8s_adc1$ADC1_SchmittTriggerConfig$76
      0037A2 03                    1853 	.db	3
      0037A3 04                    1854 	.sleb128	4
      0037A4 01                    1855 	.db	1
      0037A5 09                    1856 	.db	9
      0037A6 00 1B                 1857 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$78-Sstm8s_adc1$ADC1_SchmittTriggerConfig$77
      0037A8 03                    1858 	.db	3
      0037A9 05                    1859 	.sleb128	5
      0037AA 01                    1860 	.db	1
      0037AB 09                    1861 	.db	9
      0037AC 00 04                 1862 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$79-Sstm8s_adc1$ADC1_SchmittTriggerConfig$78
      0037AE 03                    1863 	.db	3
      0037AF 02                    1864 	.sleb128	2
      0037B0 01                    1865 	.db	1
      0037B1 09                    1866 	.db	9
      0037B2 00 21                 1867 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$80-Sstm8s_adc1$ADC1_SchmittTriggerConfig$79
      0037B4 03                    1868 	.db	3
      0037B5 04                    1869 	.sleb128	4
      0037B6 01                    1870 	.db	1
      0037B7 09                    1871 	.db	9
      0037B8 00 1E                 1872 	.dw	Sstm8s_adc1$ADC1_SchmittTriggerConfig$81-Sstm8s_adc1$ADC1_SchmittTriggerConfig$80
      0037BA 03                    1873 	.db	3
      0037BB 03                    1874 	.sleb128	3
      0037BC 01                    1875 	.db	1
      0037BD 09                    1876 	.db	9
      0037BE 00 09                 1877 	.dw	7+Sstm8s_adc1$ADC1_SchmittTriggerConfig$82-Sstm8s_adc1$ADC1_SchmittTriggerConfig$81
      0037C0 00                    1878 	.db	0
      0037C1 01                    1879 	.uleb128	1
      0037C2 01                    1880 	.db	1
      0037C3 00                    1881 	.db	0
      0037C4 05                    1882 	.uleb128	5
      0037C5 02                    1883 	.db	2
      0037C6 00 00 AE 31           1884 	.dw	0,(Sstm8s_adc1$ADC1_ConversionConfig$84)
      0037CA 03                    1885 	.db	3
      0037CB 88 02                 1886 	.sleb128	264
      0037CD 01                    1887 	.db	1
      0037CE 09                    1888 	.db	9
      0037CF 00 0C                 1889 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$86-Sstm8s_adc1$ADC1_ConversionConfig$84
      0037D1 03                    1890 	.db	3
      0037D2 03                    1891 	.sleb128	3
      0037D3 01                    1892 	.db	1
      0037D4 09                    1893 	.db	9
      0037D5 00 07                 1894 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$87-Sstm8s_adc1$ADC1_ConversionConfig$86
      0037D7 03                    1895 	.db	3
      0037D8 02                    1896 	.sleb128	2
      0037D9 01                    1897 	.db	1
      0037DA 09                    1898 	.db	9
      0037DB 00 0A                 1899 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$88-Sstm8s_adc1$ADC1_ConversionConfig$87
      0037DD 03                    1900 	.db	3
      0037DE 02                    1901 	.sleb128	2
      0037DF 01                    1902 	.db	1
      0037E0 09                    1903 	.db	9
      0037E1 00 06                 1904 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$89-Sstm8s_adc1$ADC1_ConversionConfig$88
      0037E3 03                    1905 	.db	3
      0037E4 03                    1906 	.sleb128	3
      0037E5 01                    1907 	.db	1
      0037E6 09                    1908 	.db	9
      0037E7 00 09                 1909 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$90-Sstm8s_adc1$ADC1_ConversionConfig$89
      0037E9 03                    1910 	.db	3
      0037EA 05                    1911 	.sleb128	5
      0037EB 01                    1912 	.db	1
      0037EC 09                    1913 	.db	9
      0037ED 00 07                 1914 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$91-Sstm8s_adc1$ADC1_ConversionConfig$90
      0037EF 03                    1915 	.db	3
      0037F0 04                    1916 	.sleb128	4
      0037F1 01                    1917 	.db	1
      0037F2 09                    1918 	.db	9
      0037F3 00 07                 1919 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$92-Sstm8s_adc1$ADC1_ConversionConfig$91
      0037F5 03                    1920 	.db	3
      0037F6 02                    1921 	.sleb128	2
      0037F7 01                    1922 	.db	1
      0037F8 09                    1923 	.db	9
      0037F9 00 0A                 1924 	.dw	Sstm8s_adc1$ADC1_ConversionConfig$93-Sstm8s_adc1$ADC1_ConversionConfig$92
      0037FB 03                    1925 	.db	3
      0037FC 01                    1926 	.sleb128	1
      0037FD 01                    1927 	.db	1
      0037FE 09                    1928 	.db	9
      0037FF 00 07                 1929 	.dw	7+Sstm8s_adc1$ADC1_ConversionConfig$94-Sstm8s_adc1$ADC1_ConversionConfig$93
      003801 00                    1930 	.db	0
      003802 01                    1931 	.uleb128	1
      003803 01                    1932 	.db	1
      003804 00                    1933 	.db	0
      003805 05                    1934 	.uleb128	5
      003806 02                    1935 	.db	2
      003807 00 00 AE 7C           1936 	.dw	0,(Sstm8s_adc1$ADC1_ExternalTriggerConfig$96)
      00380B 03                    1937 	.db	3
      00380C AA 02                 1938 	.sleb128	298
      00380E 01                    1939 	.db	1
      00380F 09                    1940 	.db	9
      003810 00 0C                 1941 	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$98-Sstm8s_adc1$ADC1_ExternalTriggerConfig$96
      003812 03                    1942 	.db	3
      003813 03                    1943 	.sleb128	3
      003814 01                    1944 	.db	1
      003815 09                    1945 	.db	9
      003816 00 07                 1946 	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$99-Sstm8s_adc1$ADC1_ExternalTriggerConfig$98
      003818 03                    1947 	.db	3
      003819 02                    1948 	.sleb128	2
      00381A 01                    1949 	.db	1
      00381B 09                    1950 	.db	9
      00381C 00 04                 1951 	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$100-Sstm8s_adc1$ADC1_ExternalTriggerConfig$99
      00381E 03                    1952 	.db	3
      00381F 03                    1953 	.sleb128	3
      003820 01                    1954 	.db	1
      003821 09                    1955 	.db	9
      003822 00 09                 1956 	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$101-Sstm8s_adc1$ADC1_ExternalTriggerConfig$100
      003824 03                    1957 	.db	3
      003825 05                    1958 	.sleb128	5
      003826 01                    1959 	.db	1
      003827 09                    1960 	.db	9
      003828 00 07                 1961 	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$102-Sstm8s_adc1$ADC1_ExternalTriggerConfig$101
      00382A 03                    1962 	.db	3
      00382B 04                    1963 	.sleb128	4
      00382C 01                    1964 	.db	1
      00382D 09                    1965 	.db	9
      00382E 00 0A                 1966 	.dw	Sstm8s_adc1$ADC1_ExternalTriggerConfig$103-Sstm8s_adc1$ADC1_ExternalTriggerConfig$102
      003830 03                    1967 	.db	3
      003831 01                    1968 	.sleb128	1
      003832 01                    1969 	.db	1
      003833 09                    1970 	.db	9
      003834 00 07                 1971 	.dw	7+Sstm8s_adc1$ADC1_ExternalTriggerConfig$104-Sstm8s_adc1$ADC1_ExternalTriggerConfig$103
      003836 00                    1972 	.db	0
      003837 01                    1973 	.uleb128	1
      003838 01                    1974 	.db	1
      003839 00                    1975 	.db	0
      00383A 05                    1976 	.uleb128	5
      00383B 02                    1977 	.db	2
      00383C 00 00 AE B4           1978 	.dw	0,(Sstm8s_adc1$ADC1_StartConversion$106)
      003840 03                    1979 	.db	3
      003841 C7 02                 1980 	.sleb128	327
      003843 01                    1981 	.db	1
      003844 09                    1982 	.db	9
      003845 00 0C                 1983 	.dw	Sstm8s_adc1$ADC1_StartConversion$108-Sstm8s_adc1$ADC1_StartConversion$106
      003847 03                    1984 	.db	3
      003848 02                    1985 	.sleb128	2
      003849 01                    1986 	.db	1
      00384A 09                    1987 	.db	9
      00384B 00 04                 1988 	.dw	Sstm8s_adc1$ADC1_StartConversion$109-Sstm8s_adc1$ADC1_StartConversion$108
      00384D 03                    1989 	.db	3
      00384E 01                    1990 	.sleb128	1
      00384F 01                    1991 	.db	1
      003850 09                    1992 	.db	9
      003851 00 07                 1993 	.dw	7+Sstm8s_adc1$ADC1_StartConversion$110-Sstm8s_adc1$ADC1_StartConversion$109
      003853 00                    1994 	.db	0
      003854 01                    1995 	.uleb128	1
      003855 01                    1996 	.db	1
      003856 00                    1997 	.db	0
      003857 05                    1998 	.uleb128	5
      003858 02                    1999 	.db	2
      003859 00 00 AE CB           2000 	.dw	0,(Sstm8s_adc1$ADC1_GetConversionValue$112)
      00385D 03                    2001 	.db	3
      00385E D3 02                 2002 	.sleb128	339
      003860 01                    2003 	.db	1
      003861 09                    2004 	.db	9
      003862 00 0E                 2005 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$114-Sstm8s_adc1$ADC1_GetConversionValue$112
      003864 03                    2006 	.db	3
      003865 05                    2007 	.sleb128	5
      003866 01                    2008 	.db	1
      003867 09                    2009 	.db	9
      003868 00 08                 2010 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$115-Sstm8s_adc1$ADC1_GetConversionValue$114
      00386A 03                    2011 	.db	3
      00386B 03                    2012 	.sleb128	3
      00386C 01                    2013 	.db	1
      00386D 09                    2014 	.db	9
      00386E 00 06                 2015 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$116-Sstm8s_adc1$ADC1_GetConversionValue$115
      003870 03                    2016 	.db	3
      003871 02                    2017 	.sleb128	2
      003872 01                    2018 	.db	1
      003873 09                    2019 	.db	9
      003874 00 08                 2020 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$117-Sstm8s_adc1$ADC1_GetConversionValue$116
      003876 03                    2021 	.db	3
      003877 02                    2022 	.sleb128	2
      003878 01                    2023 	.db	1
      003879 09                    2024 	.db	9
      00387A 00 14                 2025 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$118-Sstm8s_adc1$ADC1_GetConversionValue$117
      00387C 03                    2026 	.db	3
      00387D 05                    2027 	.sleb128	5
      00387E 01                    2028 	.db	1
      00387F 09                    2029 	.db	9
      003880 00 08                 2030 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$119-Sstm8s_adc1$ADC1_GetConversionValue$118
      003882 03                    2031 	.db	3
      003883 02                    2032 	.sleb128	2
      003884 01                    2033 	.db	1
      003885 09                    2034 	.db	9
      003886 00 06                 2035 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$120-Sstm8s_adc1$ADC1_GetConversionValue$119
      003888 03                    2036 	.db	3
      003889 02                    2037 	.sleb128	2
      00388A 01                    2038 	.db	1
      00388B 09                    2039 	.db	9
      00388C 00 18                 2040 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$121-Sstm8s_adc1$ADC1_GetConversionValue$120
      00388E 03                    2041 	.db	3
      00388F 03                    2042 	.sleb128	3
      003890 01                    2043 	.db	1
      003891 09                    2044 	.db	9
      003892 00 02                 2045 	.dw	Sstm8s_adc1$ADC1_GetConversionValue$122-Sstm8s_adc1$ADC1_GetConversionValue$121
      003894 03                    2046 	.db	3
      003895 01                    2047 	.sleb128	1
      003896 01                    2048 	.db	1
      003897 09                    2049 	.db	9
      003898 00 09                 2050 	.dw	7+Sstm8s_adc1$ADC1_GetConversionValue$123-Sstm8s_adc1$ADC1_GetConversionValue$122
      00389A 00                    2051 	.db	0
      00389B 01                    2052 	.uleb128	1
      00389C 01                    2053 	.db	1
      00389D 00                    2054 	.db	0
      00389E 05                    2055 	.uleb128	5
      00389F 02                    2056 	.db	2
      0038A0 00 00 AF 34           2057 	.dw	0,(Sstm8s_adc1$ADC1_AWDChannelConfig$125)
      0038A4 03                    2058 	.db	3
      0038A5 F6 02                 2059 	.sleb128	374
      0038A7 01                    2060 	.db	1
      0038A8 09                    2061 	.db	9
      0038A9 00 0E                 2062 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$127-Sstm8s_adc1$ADC1_AWDChannelConfig$125
      0038AB 03                    2063 	.db	3
      0038AC 06                    2064 	.sleb128	6
      0038AD 01                    2065 	.db	1
      0038AE 09                    2066 	.db	9
      0038AF 00 06                 2067 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$128-Sstm8s_adc1$ADC1_AWDChannelConfig$127
      0038B1 03                    2068 	.db	3
      0038B2 02                    2069 	.sleb128	2
      0038B3 01                    2070 	.db	1
      0038B4 09                    2071 	.db	9
      0038B5 00 04                 2072 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$129-Sstm8s_adc1$ADC1_AWDChannelConfig$128
      0038B7 03                    2073 	.db	3
      0038B8 02                    2074 	.sleb128	2
      0038B9 01                    2075 	.db	1
      0038BA 09                    2076 	.db	9
      0038BB 00 1B                 2077 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$130-Sstm8s_adc1$ADC1_AWDChannelConfig$129
      0038BD 03                    2078 	.db	3
      0038BE 04                    2079 	.sleb128	4
      0038BF 01                    2080 	.db	1
      0038C0 09                    2081 	.db	9
      0038C1 00 1C                 2082 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$131-Sstm8s_adc1$ADC1_AWDChannelConfig$130
      0038C3 03                    2083 	.db	3
      0038C4 05                    2084 	.sleb128	5
      0038C5 01                    2085 	.db	1
      0038C6 09                    2086 	.db	9
      0038C7 00 04                 2087 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$132-Sstm8s_adc1$ADC1_AWDChannelConfig$131
      0038C9 03                    2088 	.db	3
      0038CA 02                    2089 	.sleb128	2
      0038CB 01                    2090 	.db	1
      0038CC 09                    2091 	.db	9
      0038CD 00 20                 2092 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$133-Sstm8s_adc1$ADC1_AWDChannelConfig$132
      0038CF 03                    2093 	.db	3
      0038D0 04                    2094 	.sleb128	4
      0038D1 01                    2095 	.db	1
      0038D2 09                    2096 	.db	9
      0038D3 00 1F                 2097 	.dw	Sstm8s_adc1$ADC1_AWDChannelConfig$134-Sstm8s_adc1$ADC1_AWDChannelConfig$133
      0038D5 03                    2098 	.db	3
      0038D6 03                    2099 	.sleb128	3
      0038D7 01                    2100 	.db	1
      0038D8 09                    2101 	.db	9
      0038D9 00 09                 2102 	.dw	7+Sstm8s_adc1$ADC1_AWDChannelConfig$135-Sstm8s_adc1$ADC1_AWDChannelConfig$134
      0038DB 00                    2103 	.db	0
      0038DC 01                    2104 	.uleb128	1
      0038DD 01                    2105 	.db	1
      0038DE 00                    2106 	.db	0
      0038DF 05                    2107 	.uleb128	5
      0038E0 02                    2108 	.db	2
      0038E1 00 00 AF CF           2109 	.dw	0,(Sstm8s_adc1$ADC1_SetHighThreshold$137)
      0038E5 03                    2110 	.db	3
      0038E6 9A 03                 2111 	.sleb128	410
      0038E8 01                    2112 	.db	1
      0038E9 09                    2113 	.db	9
      0038EA 00 0C                 2114 	.dw	Sstm8s_adc1$ADC1_SetHighThreshold$139-Sstm8s_adc1$ADC1_SetHighThreshold$137
      0038EC 03                    2115 	.db	3
      0038ED 02                    2116 	.sleb128	2
      0038EE 01                    2117 	.db	1
      0038EF 09                    2118 	.db	9
      0038F0 00 09                 2119 	.dw	Sstm8s_adc1$ADC1_SetHighThreshold$140-Sstm8s_adc1$ADC1_SetHighThreshold$139
      0038F2 03                    2120 	.db	3
      0038F3 01                    2121 	.sleb128	1
      0038F4 01                    2122 	.db	1
      0038F5 09                    2123 	.db	9
      0038F6 00 06                 2124 	.dw	Sstm8s_adc1$ADC1_SetHighThreshold$141-Sstm8s_adc1$ADC1_SetHighThreshold$140
      0038F8 03                    2125 	.db	3
      0038F9 01                    2126 	.sleb128	1
      0038FA 01                    2127 	.db	1
      0038FB 09                    2128 	.db	9
      0038FC 00 07                 2129 	.dw	7+Sstm8s_adc1$ADC1_SetHighThreshold$142-Sstm8s_adc1$ADC1_SetHighThreshold$141
      0038FE 00                    2130 	.db	0
      0038FF 01                    2131 	.uleb128	1
      003900 01                    2132 	.db	1
      003901 00                    2133 	.db	0
      003902 05                    2134 	.uleb128	5
      003903 02                    2135 	.db	2
      003904 00 00 AF F1           2136 	.dw	0,(Sstm8s_adc1$ADC1_SetLowThreshold$144)
      003908 03                    2137 	.db	3
      003909 A6 03                 2138 	.sleb128	422
      00390B 01                    2139 	.db	1
      00390C 09                    2140 	.db	9
      00390D 00 0C                 2141 	.dw	Sstm8s_adc1$ADC1_SetLowThreshold$146-Sstm8s_adc1$ADC1_SetLowThreshold$144
      00390F 03                    2142 	.db	3
      003910 02                    2143 	.sleb128	2
      003911 01                    2144 	.db	1
      003912 09                    2145 	.db	9
      003913 00 06                 2146 	.dw	Sstm8s_adc1$ADC1_SetLowThreshold$147-Sstm8s_adc1$ADC1_SetLowThreshold$146
      003915 03                    2147 	.db	3
      003916 01                    2148 	.sleb128	1
      003917 01                    2149 	.db	1
      003918 09                    2150 	.db	9
      003919 00 09                 2151 	.dw	Sstm8s_adc1$ADC1_SetLowThreshold$148-Sstm8s_adc1$ADC1_SetLowThreshold$147
      00391B 03                    2152 	.db	3
      00391C 01                    2153 	.sleb128	1
      00391D 01                    2154 	.db	1
      00391E 09                    2155 	.db	9
      00391F 00 07                 2156 	.dw	7+Sstm8s_adc1$ADC1_SetLowThreshold$149-Sstm8s_adc1$ADC1_SetLowThreshold$148
      003921 00                    2157 	.db	0
      003922 01                    2158 	.uleb128	1
      003923 01                    2159 	.db	1
      003924 00                    2160 	.db	0
      003925 05                    2161 	.uleb128	5
      003926 02                    2162 	.db	2
      003927 00 00 B0 13           2163 	.dw	0,(Sstm8s_adc1$ADC1_GetBufferValue$151)
      00392B 03                    2164 	.db	3
      00392C B3 03                 2165 	.sleb128	435
      00392E 01                    2166 	.db	1
      00392F 09                    2167 	.db	9
      003930 00 0E                 2168 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$153-Sstm8s_adc1$ADC1_GetBufferValue$151
      003932 03                    2169 	.db	3
      003933 08                    2170 	.sleb128	8
      003934 01                    2171 	.db	1
      003935 09                    2172 	.db	9
      003936 00 08                 2173 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$154-Sstm8s_adc1$ADC1_GetBufferValue$153
      003938 03                    2174 	.db	3
      003939 03                    2175 	.sleb128	3
      00393A 01                    2176 	.db	1
      00393B 09                    2177 	.db	9
      00393C 00 0F                 2178 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$155-Sstm8s_adc1$ADC1_GetBufferValue$154
      00393E 03                    2179 	.db	3
      00393F 02                    2180 	.sleb128	2
      003940 01                    2181 	.db	1
      003941 09                    2182 	.db	9
      003942 00 0A                 2183 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$156-Sstm8s_adc1$ADC1_GetBufferValue$155
      003944 03                    2184 	.db	3
      003945 02                    2185 	.sleb128	2
      003946 01                    2186 	.db	1
      003947 09                    2187 	.db	9
      003948 00 14                 2188 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$157-Sstm8s_adc1$ADC1_GetBufferValue$156
      00394A 03                    2189 	.db	3
      00394B 05                    2190 	.sleb128	5
      00394C 01                    2191 	.db	1
      00394D 09                    2192 	.db	9
      00394E 00 11                 2193 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$158-Sstm8s_adc1$ADC1_GetBufferValue$157
      003950 03                    2194 	.db	3
      003951 02                    2195 	.sleb128	2
      003952 01                    2196 	.db	1
      003953 09                    2197 	.db	9
      003954 00 08                 2198 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$159-Sstm8s_adc1$ADC1_GetBufferValue$158
      003956 03                    2199 	.db	3
      003957 02                    2200 	.sleb128	2
      003958 01                    2201 	.db	1
      003959 09                    2202 	.db	9
      00395A 00 18                 2203 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$160-Sstm8s_adc1$ADC1_GetBufferValue$159
      00395C 03                    2204 	.db	3
      00395D 03                    2205 	.sleb128	3
      00395E 01                    2206 	.db	1
      00395F 09                    2207 	.db	9
      003960 00 02                 2208 	.dw	Sstm8s_adc1$ADC1_GetBufferValue$161-Sstm8s_adc1$ADC1_GetBufferValue$160
      003962 03                    2209 	.db	3
      003963 01                    2210 	.sleb128	1
      003964 01                    2211 	.db	1
      003965 09                    2212 	.db	9
      003966 00 09                 2213 	.dw	7+Sstm8s_adc1$ADC1_GetBufferValue$162-Sstm8s_adc1$ADC1_GetBufferValue$161
      003968 00                    2214 	.db	0
      003969 01                    2215 	.uleb128	1
      00396A 01                    2216 	.db	1
      00396B 00                    2217 	.db	0
      00396C 05                    2218 	.uleb128	5
      00396D 02                    2219 	.db	2
      00396E 00 00 B0 92           2220 	.dw	0,(Sstm8s_adc1$ADC1_GetAWDChannelStatus$164)
      003972 03                    2221 	.db	3
      003973 D7 03                 2222 	.sleb128	471
      003975 01                    2223 	.db	1
      003976 09                    2224 	.db	9
      003977 00 0E                 2225 	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$166-Sstm8s_adc1$ADC1_GetAWDChannelStatus$164
      003979 03                    2226 	.db	3
      00397A 07                    2227 	.sleb128	7
      00397B 01                    2228 	.db	1
      00397C 09                    2229 	.db	9
      00397D 00 06                 2230 	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$167-Sstm8s_adc1$ADC1_GetAWDChannelStatus$166
      00397F 03                    2231 	.db	3
      003980 02                    2232 	.sleb128	2
      003981 01                    2233 	.db	1
      003982 09                    2234 	.db	9
      003983 00 17                 2235 	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$168-Sstm8s_adc1$ADC1_GetAWDChannelStatus$167
      003985 03                    2236 	.db	3
      003986 04                    2237 	.sleb128	4
      003987 01                    2238 	.db	1
      003988 09                    2239 	.db	9
      003989 00 1A                 2240 	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$169-Sstm8s_adc1$ADC1_GetAWDChannelStatus$168
      00398B 03                    2241 	.db	3
      00398C 03                    2242 	.sleb128	3
      00398D 01                    2243 	.db	1
      00398E 09                    2244 	.db	9
      00398F 00 00                 2245 	.dw	Sstm8s_adc1$ADC1_GetAWDChannelStatus$170-Sstm8s_adc1$ADC1_GetAWDChannelStatus$169
      003991 03                    2246 	.db	3
      003992 01                    2247 	.sleb128	1
      003993 01                    2248 	.db	1
      003994 09                    2249 	.db	9
      003995 00 09                 2250 	.dw	7+Sstm8s_adc1$ADC1_GetAWDChannelStatus$171-Sstm8s_adc1$ADC1_GetAWDChannelStatus$170
      003997 00                    2251 	.db	0
      003998 01                    2252 	.uleb128	1
      003999 01                    2253 	.db	1
      00399A 00                    2254 	.db	0
      00399B 05                    2255 	.uleb128	5
      00399C 02                    2256 	.db	2
      00399D 00 00 B0 E0           2257 	.dw	0,(Sstm8s_adc1$ADC1_GetFlagStatus$173)
      0039A1 03                    2258 	.db	3
      0039A2 F0 03                 2259 	.sleb128	496
      0039A4 01                    2260 	.db	1
      0039A5 09                    2261 	.db	9
      0039A6 00 0E                 2262 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$175-Sstm8s_adc1$ADC1_GetFlagStatus$173
      0039A8 03                    2263 	.db	3
      0039A9 05                    2264 	.sleb128	5
      0039AA 01                    2265 	.db	1
      0039AB 09                    2266 	.db	9
      0039AC 00 0C                 2267 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$176-Sstm8s_adc1$ADC1_GetFlagStatus$175
      0039AE 03                    2268 	.db	3
      0039AF 03                    2269 	.sleb128	3
      0039B0 01                    2270 	.db	1
      0039B1 09                    2271 	.db	9
      0039B2 00 08                 2272 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$177-Sstm8s_adc1$ADC1_GetFlagStatus$176
      0039B4 03                    2273 	.db	3
      0039B5 02                    2274 	.sleb128	2
      0039B6 01                    2275 	.db	1
      0039B7 09                    2276 	.db	9
      0039B8 00 08                 2277 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$178-Sstm8s_adc1$ADC1_GetFlagStatus$177
      0039BA 03                    2278 	.db	3
      0039BB 03                    2279 	.sleb128	3
      0039BC 01                    2280 	.db	1
      0039BD 09                    2281 	.db	9
      0039BE 00 02                 2282 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$179-Sstm8s_adc1$ADC1_GetFlagStatus$178
      0039C0 03                    2283 	.db	3
      0039C1 01                    2284 	.sleb128	1
      0039C2 01                    2285 	.db	1
      0039C3 09                    2286 	.db	9
      0039C4 00 04                 2287 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$180-Sstm8s_adc1$ADC1_GetFlagStatus$179
      0039C6 03                    2288 	.db	3
      0039C7 02                    2289 	.sleb128	2
      0039C8 01                    2290 	.db	1
      0039C9 09                    2291 	.db	9
      0039CA 00 18                 2292 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$181-Sstm8s_adc1$ADC1_GetFlagStatus$180
      0039CC 03                    2293 	.db	3
      0039CD 04                    2294 	.sleb128	4
      0039CE 01                    2295 	.db	1
      0039CF 09                    2296 	.db	9
      0039D0 00 1C                 2297 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$182-Sstm8s_adc1$ADC1_GetFlagStatus$181
      0039D2 03                    2298 	.db	3
      0039D3 05                    2299 	.sleb128	5
      0039D4 01                    2300 	.db	1
      0039D5 09                    2301 	.db	9
      0039D6 00 06                 2302 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$183-Sstm8s_adc1$ADC1_GetFlagStatus$182
      0039D8 03                    2303 	.db	3
      0039D9 02                    2304 	.sleb128	2
      0039DA 01                    2305 	.db	1
      0039DB 09                    2306 	.db	9
      0039DC 00 00                 2307 	.dw	Sstm8s_adc1$ADC1_GetFlagStatus$184-Sstm8s_adc1$ADC1_GetFlagStatus$183
      0039DE 03                    2308 	.db	3
      0039DF 02                    2309 	.sleb128	2
      0039E0 01                    2310 	.db	1
      0039E1 09                    2311 	.db	9
      0039E2 00 09                 2312 	.dw	7+Sstm8s_adc1$ADC1_GetFlagStatus$185-Sstm8s_adc1$ADC1_GetFlagStatus$184
      0039E4 00                    2313 	.db	0
      0039E5 01                    2314 	.uleb128	1
      0039E6 01                    2315 	.db	1
      0039E7 00                    2316 	.db	0
      0039E8 05                    2317 	.uleb128	5
      0039E9 02                    2318 	.db	2
      0039EA 00 00 B1 53           2319 	.dw	0,(Sstm8s_adc1$ADC1_ClearFlag$187)
      0039EE 03                    2320 	.db	3
      0039EF 95 04                 2321 	.sleb128	533
      0039F1 01                    2322 	.db	1
      0039F2 09                    2323 	.db	9
      0039F3 00 0E                 2324 	.dw	Sstm8s_adc1$ADC1_ClearFlag$189-Sstm8s_adc1$ADC1_ClearFlag$187
      0039F5 03                    2325 	.db	3
      0039F6 07                    2326 	.sleb128	7
      0039F7 01                    2327 	.db	1
      0039F8 09                    2328 	.db	9
      0039F9 00 09                 2329 	.dw	Sstm8s_adc1$ADC1_ClearFlag$190-Sstm8s_adc1$ADC1_ClearFlag$189
      0039FB 03                    2330 	.db	3
      0039FC 03                    2331 	.sleb128	3
      0039FD 01                    2332 	.db	1
      0039FE 09                    2333 	.db	9
      0039FF 00 0A                 2334 	.dw	Sstm8s_adc1$ADC1_ClearFlag$191-Sstm8s_adc1$ADC1_ClearFlag$190
      003A01 03                    2335 	.db	3
      003A02 02                    2336 	.sleb128	2
      003A03 01                    2337 	.db	1
      003A04 09                    2338 	.db	9
      003A05 00 08                 2339 	.dw	Sstm8s_adc1$ADC1_ClearFlag$192-Sstm8s_adc1$ADC1_ClearFlag$191
      003A07 03                    2340 	.db	3
      003A08 03                    2341 	.sleb128	3
      003A09 01                    2342 	.db	1
      003A0A 09                    2343 	.db	9
      003A0B 00 00                 2344 	.dw	Sstm8s_adc1$ADC1_ClearFlag$193-Sstm8s_adc1$ADC1_ClearFlag$192
      003A0D 03                    2345 	.db	3
      003A0E 01                    2346 	.sleb128	1
      003A0F 01                    2347 	.db	1
      003A10 09                    2348 	.db	9
      003A11 00 05                 2349 	.dw	Sstm8s_adc1$ADC1_ClearFlag$194-Sstm8s_adc1$ADC1_ClearFlag$193
      003A13 03                    2350 	.db	3
      003A14 02                    2351 	.sleb128	2
      003A15 01                    2352 	.db	1
      003A16 09                    2353 	.db	9
      003A17 00 1E                 2354 	.dw	Sstm8s_adc1$ADC1_ClearFlag$195-Sstm8s_adc1$ADC1_ClearFlag$194
      003A19 03                    2355 	.db	3
      003A1A 04                    2356 	.sleb128	4
      003A1B 01                    2357 	.db	1
      003A1C 09                    2358 	.db	9
      003A1D 00 21                 2359 	.dw	Sstm8s_adc1$ADC1_ClearFlag$196-Sstm8s_adc1$ADC1_ClearFlag$195
      003A1F 03                    2360 	.db	3
      003A20 05                    2361 	.sleb128	5
      003A21 01                    2362 	.db	1
      003A22 09                    2363 	.db	9
      003A23 00 0F                 2364 	.dw	Sstm8s_adc1$ADC1_ClearFlag$197-Sstm8s_adc1$ADC1_ClearFlag$196
      003A25 03                    2365 	.db	3
      003A26 02                    2366 	.sleb128	2
      003A27 01                    2367 	.db	1
      003A28 09                    2368 	.db	9
      003A29 00 09                 2369 	.dw	7+Sstm8s_adc1$ADC1_ClearFlag$198-Sstm8s_adc1$ADC1_ClearFlag$197
      003A2B 00                    2370 	.db	0
      003A2C 01                    2371 	.uleb128	1
      003A2D 01                    2372 	.db	1
      003A2E 00                    2373 	.db	0
      003A2F 05                    2374 	.uleb128	5
      003A30 02                    2375 	.db	2
      003A31 00 00 B1 D8           2376 	.dw	0,(Sstm8s_adc1$ADC1_GetITStatus$200)
      003A35 03                    2377 	.db	3
      003A36 C6 04                 2378 	.sleb128	582
      003A38 01                    2379 	.db	1
      003A39 09                    2380 	.db	9
      003A3A 00 0E                 2381 	.dw	Sstm8s_adc1$ADC1_GetITStatus$202-Sstm8s_adc1$ADC1_GetITStatus$200
      003A3C 03                    2382 	.db	3
      003A3D 08                    2383 	.sleb128	8
      003A3E 01                    2384 	.db	1
      003A3F 09                    2385 	.db	9
      003A40 00 0C                 2386 	.dw	Sstm8s_adc1$ADC1_GetITStatus$203-Sstm8s_adc1$ADC1_GetITStatus$202
      003A42 03                    2387 	.db	3
      003A43 03                    2388 	.sleb128	3
      003A44 01                    2389 	.db	1
      003A45 09                    2390 	.db	9
      003A46 00 06                 2391 	.dw	Sstm8s_adc1$ADC1_GetITStatus$204-Sstm8s_adc1$ADC1_GetITStatus$203
      003A48 03                    2392 	.db	3
      003A49 01                    2393 	.sleb128	1
      003A4A 01                    2394 	.db	1
      003A4B 09                    2395 	.db	9
      003A4C 00 05                 2396 	.dw	Sstm8s_adc1$ADC1_GetITStatus$205-Sstm8s_adc1$ADC1_GetITStatus$204
      003A4E 03                    2397 	.db	3
      003A4F 02                    2398 	.sleb128	2
      003A50 01                    2399 	.db	1
      003A51 09                    2400 	.db	9
      003A52 00 19                 2401 	.dw	Sstm8s_adc1$ADC1_GetITStatus$206-Sstm8s_adc1$ADC1_GetITStatus$205
      003A54 03                    2402 	.db	3
      003A55 04                    2403 	.sleb128	4
      003A56 01                    2404 	.db	1
      003A57 09                    2405 	.db	9
      003A58 00 1C                 2406 	.dw	Sstm8s_adc1$ADC1_GetITStatus$207-Sstm8s_adc1$ADC1_GetITStatus$206
      003A5A 03                    2407 	.db	3
      003A5B 05                    2408 	.sleb128	5
      003A5C 01                    2409 	.db	1
      003A5D 09                    2410 	.db	9
      003A5E 00 0A                 2411 	.dw	Sstm8s_adc1$ADC1_GetITStatus$208-Sstm8s_adc1$ADC1_GetITStatus$207
      003A60 03                    2412 	.db	3
      003A61 02                    2413 	.sleb128	2
      003A62 01                    2414 	.db	1
      003A63 09                    2415 	.db	9
      003A64 00 00                 2416 	.dw	Sstm8s_adc1$ADC1_GetITStatus$209-Sstm8s_adc1$ADC1_GetITStatus$208
      003A66 03                    2417 	.db	3
      003A67 01                    2418 	.sleb128	1
      003A68 01                    2419 	.db	1
      003A69 09                    2420 	.db	9
      003A6A 00 09                 2421 	.dw	7+Sstm8s_adc1$ADC1_GetITStatus$210-Sstm8s_adc1$ADC1_GetITStatus$209
      003A6C 00                    2422 	.db	0
      003A6D 01                    2423 	.uleb128	1
      003A6E 01                    2424 	.db	1
      003A6F 00                    2425 	.db	0
      003A70 05                    2426 	.uleb128	5
      003A71 02                    2427 	.db	2
      003A72 00 00 B2 45           2428 	.dw	0,(Sstm8s_adc1$ADC1_ClearITPendingBit$212)
      003A76 03                    2429 	.db	3
      003A77 F4 04                 2430 	.sleb128	628
      003A79 01                    2431 	.db	1
      003A7A 09                    2432 	.db	9
      003A7B 00 0E                 2433 	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$214-Sstm8s_adc1$ADC1_ClearITPendingBit$212
      003A7D 03                    2434 	.db	3
      003A7E 07                    2435 	.sleb128	7
      003A7F 01                    2436 	.db	1
      003A80 09                    2437 	.db	9
      003A81 00 0C                 2438 	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$215-Sstm8s_adc1$ADC1_ClearITPendingBit$214
      003A83 03                    2439 	.db	3
      003A84 03                    2440 	.sleb128	3
      003A85 01                    2441 	.db	1
      003A86 09                    2442 	.db	9
      003A87 00 06                 2443 	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$216-Sstm8s_adc1$ADC1_ClearITPendingBit$215
      003A89 03                    2444 	.db	3
      003A8A 01                    2445 	.sleb128	1
      003A8B 01                    2446 	.db	1
      003A8C 09                    2447 	.db	9
      003A8D 00 05                 2448 	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$217-Sstm8s_adc1$ADC1_ClearITPendingBit$216
      003A8F 03                    2449 	.db	3
      003A90 02                    2450 	.sleb128	2
      003A91 01                    2451 	.db	1
      003A92 09                    2452 	.db	9
      003A93 00 1E                 2453 	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$218-Sstm8s_adc1$ADC1_ClearITPendingBit$217
      003A95 03                    2454 	.db	3
      003A96 04                    2455 	.sleb128	4
      003A97 01                    2456 	.db	1
      003A98 09                    2457 	.db	9
      003A99 00 21                 2458 	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$219-Sstm8s_adc1$ADC1_ClearITPendingBit$218
      003A9B 03                    2459 	.db	3
      003A9C 05                    2460 	.sleb128	5
      003A9D 01                    2461 	.db	1
      003A9E 09                    2462 	.db	9
      003A9F 00 0F                 2463 	.dw	Sstm8s_adc1$ADC1_ClearITPendingBit$220-Sstm8s_adc1$ADC1_ClearITPendingBit$219
      003AA1 03                    2464 	.db	3
      003AA2 02                    2465 	.sleb128	2
      003AA3 01                    2466 	.db	1
      003AA4 09                    2467 	.db	9
      003AA5 00 09                 2468 	.dw	7+Sstm8s_adc1$ADC1_ClearITPendingBit$221-Sstm8s_adc1$ADC1_ClearITPendingBit$220
      003AA7 00                    2469 	.db	0
      003AA8 01                    2470 	.uleb128	1
      003AA9 01                    2471 	.db	1
      003AAA                       2472 Ldebug_line_end:
                                   2473 
                                   2474 	.area .debug_loc (NOLOAD)
      000F78                       2475 Ldebug_loc_start:
      000F78 00 00 B2 51           2476 	.dw	0,(Sstm8s_adc1$ADC1_ClearITPendingBit$213)
      000F7C 00 00 B2 C1           2477 	.dw	0,(Sstm8s_adc1$ADC1_ClearITPendingBit$222)
      000F80 00 02                 2478 	.dw	2
      000F82 8F                    2479 	.db	143
      000F83 01                    2480 	.sleb128	1
      000F84 00 00 00 00           2481 	.dw	0,0
      000F88 00 00 00 00           2482 	.dw	0,0
      000F8C 00 00 B1 E4           2483 	.dw	0,(Sstm8s_adc1$ADC1_GetITStatus$201)
      000F90 00 00 B2 45           2484 	.dw	0,(Sstm8s_adc1$ADC1_GetITStatus$211)
      000F94 00 02                 2485 	.dw	2
      000F96 8F                    2486 	.db	143
      000F97 01                    2487 	.sleb128	1
      000F98 00 00 00 00           2488 	.dw	0,0
      000F9C 00 00 00 00           2489 	.dw	0,0
      000FA0 00 00 B1 5F           2490 	.dw	0,(Sstm8s_adc1$ADC1_ClearFlag$188)
      000FA4 00 00 B1 D8           2491 	.dw	0,(Sstm8s_adc1$ADC1_ClearFlag$199)
      000FA8 00 02                 2492 	.dw	2
      000FAA 8F                    2493 	.db	143
      000FAB 01                    2494 	.sleb128	1
      000FAC 00 00 00 00           2495 	.dw	0,0
      000FB0 00 00 00 00           2496 	.dw	0,0
      000FB4 00 00 B0 EC           2497 	.dw	0,(Sstm8s_adc1$ADC1_GetFlagStatus$174)
      000FB8 00 00 B1 53           2498 	.dw	0,(Sstm8s_adc1$ADC1_GetFlagStatus$186)
      000FBC 00 02                 2499 	.dw	2
      000FBE 8F                    2500 	.db	143
      000FBF 01                    2501 	.sleb128	1
      000FC0 00 00 00 00           2502 	.dw	0,0
      000FC4 00 00 00 00           2503 	.dw	0,0
      000FC8 00 00 B0 9E           2504 	.dw	0,(Sstm8s_adc1$ADC1_GetAWDChannelStatus$165)
      000FCC 00 00 B0 E0           2505 	.dw	0,(Sstm8s_adc1$ADC1_GetAWDChannelStatus$172)
      000FD0 00 02                 2506 	.dw	2
      000FD2 8F                    2507 	.db	143
      000FD3 01                    2508 	.sleb128	1
      000FD4 00 00 00 00           2509 	.dw	0,0
      000FD8 00 00 00 00           2510 	.dw	0,0
      000FDC 00 00 B0 1F           2511 	.dw	0,(Sstm8s_adc1$ADC1_GetBufferValue$152)
      000FE0 00 00 B0 92           2512 	.dw	0,(Sstm8s_adc1$ADC1_GetBufferValue$163)
      000FE4 00 02                 2513 	.dw	2
      000FE6 8F                    2514 	.db	143
      000FE7 01                    2515 	.sleb128	1
      000FE8 00 00 00 00           2516 	.dw	0,0
      000FEC 00 00 00 00           2517 	.dw	0,0
      000FF0 00 00 AF FD           2518 	.dw	0,(Sstm8s_adc1$ADC1_SetLowThreshold$145)
      000FF4 00 00 B0 13           2519 	.dw	0,(Sstm8s_adc1$ADC1_SetLowThreshold$150)
      000FF8 00 02                 2520 	.dw	2
      000FFA 8F                    2521 	.db	143
      000FFB 01                    2522 	.sleb128	1
      000FFC 00 00 00 00           2523 	.dw	0,0
      001000 00 00 00 00           2524 	.dw	0,0
      001004 00 00 AF DB           2525 	.dw	0,(Sstm8s_adc1$ADC1_SetHighThreshold$138)
      001008 00 00 AF F1           2526 	.dw	0,(Sstm8s_adc1$ADC1_SetHighThreshold$143)
      00100C 00 02                 2527 	.dw	2
      00100E 8F                    2528 	.db	143
      00100F 01                    2529 	.sleb128	1
      001010 00 00 00 00           2530 	.dw	0,0
      001014 00 00 00 00           2531 	.dw	0,0
      001018 00 00 AF 40           2532 	.dw	0,(Sstm8s_adc1$ADC1_AWDChannelConfig$126)
      00101C 00 00 AF CF           2533 	.dw	0,(Sstm8s_adc1$ADC1_AWDChannelConfig$136)
      001020 00 02                 2534 	.dw	2
      001022 8F                    2535 	.db	143
      001023 01                    2536 	.sleb128	1
      001024 00 00 00 00           2537 	.dw	0,0
      001028 00 00 00 00           2538 	.dw	0,0
      00102C 00 00 AE D7           2539 	.dw	0,(Sstm8s_adc1$ADC1_GetConversionValue$113)
      001030 00 00 AF 34           2540 	.dw	0,(Sstm8s_adc1$ADC1_GetConversionValue$124)
      001034 00 02                 2541 	.dw	2
      001036 8F                    2542 	.db	143
      001037 01                    2543 	.sleb128	1
      001038 00 00 00 00           2544 	.dw	0,0
      00103C 00 00 00 00           2545 	.dw	0,0
      001040 00 00 AE C0           2546 	.dw	0,(Sstm8s_adc1$ADC1_StartConversion$107)
      001044 00 00 AE CB           2547 	.dw	0,(Sstm8s_adc1$ADC1_StartConversion$111)
      001048 00 02                 2548 	.dw	2
      00104A 8F                    2549 	.db	143
      00104B 01                    2550 	.sleb128	1
      00104C 00 00 00 00           2551 	.dw	0,0
      001050 00 00 00 00           2552 	.dw	0,0
      001054 00 00 AE 88           2553 	.dw	0,(Sstm8s_adc1$ADC1_ExternalTriggerConfig$97)
      001058 00 00 AE B4           2554 	.dw	0,(Sstm8s_adc1$ADC1_ExternalTriggerConfig$105)
      00105C 00 02                 2555 	.dw	2
      00105E 8F                    2556 	.db	143
      00105F 01                    2557 	.sleb128	1
      001060 00 00 00 00           2558 	.dw	0,0
      001064 00 00 00 00           2559 	.dw	0,0
      001068 00 00 AE 3D           2560 	.dw	0,(Sstm8s_adc1$ADC1_ConversionConfig$85)
      00106C 00 00 AE 7C           2561 	.dw	0,(Sstm8s_adc1$ADC1_ConversionConfig$95)
      001070 00 02                 2562 	.dw	2
      001072 8F                    2563 	.db	143
      001073 01                    2564 	.sleb128	1
      001074 00 00 00 00           2565 	.dw	0,0
      001078 00 00 00 00           2566 	.dw	0,0
      00107C 00 00 AD 72           2567 	.dw	0,(Sstm8s_adc1$ADC1_SchmittTriggerConfig$67)
      001080 00 00 AE 31           2568 	.dw	0,(Sstm8s_adc1$ADC1_SchmittTriggerConfig$83)
      001084 00 02                 2569 	.dw	2
      001086 8F                    2570 	.db	143
      001087 01                    2571 	.sleb128	1
      001088 00 00 00 00           2572 	.dw	0,0
      00108C 00 00 00 00           2573 	.dw	0,0
      001090 00 00 AD 4E           2574 	.dw	0,(Sstm8s_adc1$ADC1_PrescalerConfig$60)
      001094 00 00 AD 66           2575 	.dw	0,(Sstm8s_adc1$ADC1_PrescalerConfig$65)
      001098 00 02                 2576 	.dw	2
      00109A 8F                    2577 	.db	143
      00109B 01                    2578 	.sleb128	1
      00109C 00 00 00 00           2579 	.dw	0,0
      0010A0 00 00 00 00           2580 	.dw	0,0
      0010A4 00 00 AD 16           2581 	.dw	0,(Sstm8s_adc1$ADC1_ITConfig$52)
      0010A8 00 00 AD 42           2582 	.dw	0,(Sstm8s_adc1$ADC1_ITConfig$58)
      0010AC 00 02                 2583 	.dw	2
      0010AE 8F                    2584 	.db	143
      0010AF 01                    2585 	.sleb128	1
      0010B0 00 00 00 00           2586 	.dw	0,0
      0010B4 00 00 00 00           2587 	.dw	0,0
      0010B8 00 00 AC F5           2588 	.dw	0,(Sstm8s_adc1$ADC1_DataBufferCmd$44)
      0010BC 00 00 AD 0A           2589 	.dw	0,(Sstm8s_adc1$ADC1_DataBufferCmd$50)
      0010C0 00 02                 2590 	.dw	2
      0010C2 8F                    2591 	.db	143
      0010C3 01                    2592 	.sleb128	1
      0010C4 00 00 00 00           2593 	.dw	0,0
      0010C8 00 00 00 00           2594 	.dw	0,0
      0010CC 00 00 AC CE           2595 	.dw	0,(Sstm8s_adc1$ADC1_ScanModeCmd$36)
      0010D0 00 00 AC E9           2596 	.dw	0,(Sstm8s_adc1$ADC1_ScanModeCmd$42)
      0010D4 00 02                 2597 	.dw	2
      0010D6 8F                    2598 	.db	143
      0010D7 01                    2599 	.sleb128	1
      0010D8 00 00 00 00           2600 	.dw	0,0
      0010DC 00 00 00 00           2601 	.dw	0,0
      0010E0 00 00 AC AD           2602 	.dw	0,(Sstm8s_adc1$ADC1_Cmd$28)
      0010E4 00 00 AC C2           2603 	.dw	0,(Sstm8s_adc1$ADC1_Cmd$34)
      0010E8 00 02                 2604 	.dw	2
      0010EA 8F                    2605 	.db	143
      0010EB 01                    2606 	.sleb128	1
      0010EC 00 00 00 00           2607 	.dw	0,0
      0010F0 00 00 00 00           2608 	.dw	0,0
      0010F4 00 00 AC 6B           2609 	.dw	0,(Sstm8s_adc1$ADC1_Init$18)
      0010F8 00 00 AC A1           2610 	.dw	0,(Sstm8s_adc1$ADC1_Init$26)
      0010FC 00 02                 2611 	.dw	2
      0010FE 8F                    2612 	.db	143
      0010FF 01                    2613 	.sleb128	1
      001100 00 00 00 00           2614 	.dw	0,0
      001104 00 00 00 00           2615 	.dw	0,0
      001108 00 00 AC 28           2616 	.dw	0,(Sstm8s_adc1$ADC1_DeInit$1)
      00110C 00 00 AC 5F           2617 	.dw	0,(Sstm8s_adc1$ADC1_DeInit$16)
      001110 00 02                 2618 	.dw	2
      001112 8F                    2619 	.db	143
      001113 01                    2620 	.sleb128	1
      001114 00 00 00 00           2621 	.dw	0,0
      001118 00 00 00 00           2622 	.dw	0,0
                                   2623 
                                   2624 	.area .debug_abbrev (NOLOAD)
      00046F                       2625 Ldebug_abbrev:
      00046F 0B                    2626 	.uleb128	11
      000470 34                    2627 	.uleb128	52
      000471 00                    2628 	.db	0
      000472 03                    2629 	.uleb128	3
      000473 08                    2630 	.uleb128	8
      000474 49                    2631 	.uleb128	73
      000475 13                    2632 	.uleb128	19
      000476 00                    2633 	.uleb128	0
      000477 00                    2634 	.uleb128	0
      000478 06                    2635 	.uleb128	6
      000479 0B                    2636 	.uleb128	11
      00047A 00                    2637 	.db	0
      00047B 00                    2638 	.uleb128	0
      00047C 00                    2639 	.uleb128	0
      00047D 08                    2640 	.uleb128	8
      00047E 0B                    2641 	.uleb128	11
      00047F 01                    2642 	.db	1
      000480 00                    2643 	.uleb128	0
      000481 00                    2644 	.uleb128	0
      000482 04                    2645 	.uleb128	4
      000483 05                    2646 	.uleb128	5
      000484 00                    2647 	.db	0
      000485 02                    2648 	.uleb128	2
      000486 0A                    2649 	.uleb128	10
      000487 03                    2650 	.uleb128	3
      000488 08                    2651 	.uleb128	8
      000489 49                    2652 	.uleb128	73
      00048A 13                    2653 	.uleb128	19
      00048B 00                    2654 	.uleb128	0
      00048C 00                    2655 	.uleb128	0
      00048D 03                    2656 	.uleb128	3
      00048E 2E                    2657 	.uleb128	46
      00048F 01                    2658 	.db	1
      000490 01                    2659 	.uleb128	1
      000491 13                    2660 	.uleb128	19
      000492 03                    2661 	.uleb128	3
      000493 08                    2662 	.uleb128	8
      000494 11                    2663 	.uleb128	17
      000495 01                    2664 	.uleb128	1
      000496 12                    2665 	.uleb128	18
      000497 01                    2666 	.uleb128	1
      000498 3F                    2667 	.uleb128	63
      000499 0C                    2668 	.uleb128	12
      00049A 40                    2669 	.uleb128	64
      00049B 06                    2670 	.uleb128	6
      00049C 00                    2671 	.uleb128	0
      00049D 00                    2672 	.uleb128	0
      00049E 0A                    2673 	.uleb128	10
      00049F 34                    2674 	.uleb128	52
      0004A0 00                    2675 	.db	0
      0004A1 02                    2676 	.uleb128	2
      0004A2 0A                    2677 	.uleb128	10
      0004A3 03                    2678 	.uleb128	3
      0004A4 08                    2679 	.uleb128	8
      0004A5 49                    2680 	.uleb128	73
      0004A6 13                    2681 	.uleb128	19
      0004A7 00                    2682 	.uleb128	0
      0004A8 00                    2683 	.uleb128	0
      0004A9 09                    2684 	.uleb128	9
      0004AA 2E                    2685 	.uleb128	46
      0004AB 01                    2686 	.db	1
      0004AC 01                    2687 	.uleb128	1
      0004AD 13                    2688 	.uleb128	19
      0004AE 03                    2689 	.uleb128	3
      0004AF 08                    2690 	.uleb128	8
      0004B0 11                    2691 	.uleb128	17
      0004B1 01                    2692 	.uleb128	1
      0004B2 12                    2693 	.uleb128	18
      0004B3 01                    2694 	.uleb128	1
      0004B4 3F                    2695 	.uleb128	63
      0004B5 0C                    2696 	.uleb128	12
      0004B6 40                    2697 	.uleb128	64
      0004B7 06                    2698 	.uleb128	6
      0004B8 49                    2699 	.uleb128	73
      0004B9 13                    2700 	.uleb128	19
      0004BA 00                    2701 	.uleb128	0
      0004BB 00                    2702 	.uleb128	0
      0004BC 07                    2703 	.uleb128	7
      0004BD 0B                    2704 	.uleb128	11
      0004BE 01                    2705 	.db	1
      0004BF 01                    2706 	.uleb128	1
      0004C0 13                    2707 	.uleb128	19
      0004C1 00                    2708 	.uleb128	0
      0004C2 00                    2709 	.uleb128	0
      0004C3 01                    2710 	.uleb128	1
      0004C4 11                    2711 	.uleb128	17
      0004C5 01                    2712 	.db	1
      0004C6 03                    2713 	.uleb128	3
      0004C7 08                    2714 	.uleb128	8
      0004C8 10                    2715 	.uleb128	16
      0004C9 06                    2716 	.uleb128	6
      0004CA 13                    2717 	.uleb128	19
      0004CB 0B                    2718 	.uleb128	11
      0004CC 25                    2719 	.uleb128	37
      0004CD 08                    2720 	.uleb128	8
      0004CE 00                    2721 	.uleb128	0
      0004CF 00                    2722 	.uleb128	0
      0004D0 02                    2723 	.uleb128	2
      0004D1 2E                    2724 	.uleb128	46
      0004D2 00                    2725 	.db	0
      0004D3 03                    2726 	.uleb128	3
      0004D4 08                    2727 	.uleb128	8
      0004D5 11                    2728 	.uleb128	17
      0004D6 01                    2729 	.uleb128	1
      0004D7 12                    2730 	.uleb128	18
      0004D8 01                    2731 	.uleb128	1
      0004D9 3F                    2732 	.uleb128	63
      0004DA 0C                    2733 	.uleb128	12
      0004DB 40                    2734 	.uleb128	64
      0004DC 06                    2735 	.uleb128	6
      0004DD 00                    2736 	.uleb128	0
      0004DE 00                    2737 	.uleb128	0
      0004DF 0C                    2738 	.uleb128	12
      0004E0 2E                    2739 	.uleb128	46
      0004E1 01                    2740 	.db	1
      0004E2 03                    2741 	.uleb128	3
      0004E3 08                    2742 	.uleb128	8
      0004E4 11                    2743 	.uleb128	17
      0004E5 01                    2744 	.uleb128	1
      0004E6 12                    2745 	.uleb128	18
      0004E7 01                    2746 	.uleb128	1
      0004E8 3F                    2747 	.uleb128	63
      0004E9 0C                    2748 	.uleb128	12
      0004EA 40                    2749 	.uleb128	64
      0004EB 06                    2750 	.uleb128	6
      0004EC 00                    2751 	.uleb128	0
      0004ED 00                    2752 	.uleb128	0
      0004EE 05                    2753 	.uleb128	5
      0004EF 24                    2754 	.uleb128	36
      0004F0 00                    2755 	.db	0
      0004F1 03                    2756 	.uleb128	3
      0004F2 08                    2757 	.uleb128	8
      0004F3 0B                    2758 	.uleb128	11
      0004F4 0B                    2759 	.uleb128	11
      0004F5 3E                    2760 	.uleb128	62
      0004F6 0B                    2761 	.uleb128	11
      0004F7 00                    2762 	.uleb128	0
      0004F8 00                    2763 	.uleb128	0
      0004F9 00                    2764 	.uleb128	0
                                   2765 
                                   2766 	.area .debug_info (NOLOAD)
      003F79 00 00 07 0E           2767 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003F7D                       2768 Ldebug_info_start:
      003F7D 00 02                 2769 	.dw	2
      003F7F 00 00 04 6F           2770 	.dw	0,(Ldebug_abbrev)
      003F83 04                    2771 	.db	4
      003F84 01                    2772 	.uleb128	1
      003F85 53 74 64 50 65 72 69  2773 	.ascii "StdPeriphLib/src/stm8s_adc1.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 61 64 63 31 2E
             63
      003FA2 00                    2774 	.db	0
      003FA3 00 00 34 E1           2775 	.dw	0,(Ldebug_line_start+-4)
      003FA7 01                    2776 	.db	1
      003FA8 53 44 43 43 20 76 65  2777 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      003FC0 00                    2778 	.db	0
      003FC1 02                    2779 	.uleb128	2
      003FC2 41 44 43 31 5F 44 65  2780 	.ascii "ADC1_DeInit"
             49 6E 69 74
      003FCD 00                    2781 	.db	0
      003FCE 00 00 AC 1C           2782 	.dw	0,(_ADC1_DeInit)
      003FD2 00 00 AC 5F           2783 	.dw	0,(XG$ADC1_DeInit$0$0+7)
      003FD6 01                    2784 	.db	1
      003FD7 00 00 11 08           2785 	.dw	0,(Ldebug_loc_start+400)
      003FDB 03                    2786 	.uleb128	3
      003FDC 00 00 01 5C           2787 	.dw	0,348
      003FE0 41 44 43 31 5F 49 6E  2788 	.ascii "ADC1_Init"
             69 74
      003FE9 00                    2789 	.db	0
      003FEA 00 00 AC 5F           2790 	.dw	0,(_ADC1_Init)
      003FEE 00 00 AC A1           2791 	.dw	0,(XG$ADC1_Init$0$0+7)
      003FF2 01                    2792 	.db	1
      003FF3 00 00 10 F4           2793 	.dw	0,(Ldebug_loc_start+380)
      003FF7 04                    2794 	.uleb128	4
      003FF8 02                    2795 	.db	2
      003FF9 91                    2796 	.db	145
      003FFA 04                    2797 	.sleb128	4
      003FFB 41 44 43 31 5F 43 6F  2798 	.ascii "ADC1_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      00400E 00                    2799 	.db	0
      00400F 00 00 01 5C           2800 	.dw	0,348
      004013 04                    2801 	.uleb128	4
      004014 02                    2802 	.db	2
      004015 91                    2803 	.db	145
      004016 05                    2804 	.sleb128	5
      004017 41 44 43 31 5F 43 68  2805 	.ascii "ADC1_Channel"
             61 6E 6E 65 6C
      004023 00                    2806 	.db	0
      004024 00 00 01 5C           2807 	.dw	0,348
      004028 04                    2808 	.uleb128	4
      004029 02                    2809 	.db	2
      00402A 91                    2810 	.db	145
      00402B 06                    2811 	.sleb128	6
      00402C 41 44 43 31 5F 50 72  2812 	.ascii "ADC1_PrescalerSelection"
             65 73 63 61 6C 65 72
             53 65 6C 65 63 74 69
             6F 6E
      004043 00                    2813 	.db	0
      004044 00 00 01 5C           2814 	.dw	0,348
      004048 04                    2815 	.uleb128	4
      004049 02                    2816 	.db	2
      00404A 91                    2817 	.db	145
      00404B 07                    2818 	.sleb128	7
      00404C 41 44 43 31 5F 45 78  2819 	.ascii "ADC1_ExtTrigger"
             74 54 72 69 67 67 65
             72
      00405B 00                    2820 	.db	0
      00405C 00 00 01 5C           2821 	.dw	0,348
      004060 04                    2822 	.uleb128	4
      004061 02                    2823 	.db	2
      004062 91                    2824 	.db	145
      004063 08                    2825 	.sleb128	8
      004064 41 44 43 31 5F 45 78  2826 	.ascii "ADC1_ExtTriggerState"
             74 54 72 69 67 67 65
             72 53 74 61 74 65
      004078 00                    2827 	.db	0
      004079 00 00 01 5C           2828 	.dw	0,348
      00407D 04                    2829 	.uleb128	4
      00407E 02                    2830 	.db	2
      00407F 91                    2831 	.db	145
      004080 09                    2832 	.sleb128	9
      004081 41 44 43 31 5F 41 6C  2833 	.ascii "ADC1_Align"
             69 67 6E
      00408B 00                    2834 	.db	0
      00408C 00 00 01 5C           2835 	.dw	0,348
      004090 04                    2836 	.uleb128	4
      004091 02                    2837 	.db	2
      004092 91                    2838 	.db	145
      004093 0A                    2839 	.sleb128	10
      004094 41 44 43 31 5F 53 63  2840 	.ascii "ADC1_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      0040AE 00                    2841 	.db	0
      0040AF 00 00 01 5C           2842 	.dw	0,348
      0040B3 04                    2843 	.uleb128	4
      0040B4 02                    2844 	.db	2
      0040B5 91                    2845 	.db	145
      0040B6 0B                    2846 	.sleb128	11
      0040B7 41 44 43 31 5F 53 63  2847 	.ascii "ADC1_SchmittTriggerState"
             68 6D 69 74 74 54 72
             69 67 67 65 72 53 74
             61 74 65
      0040CF 00                    2848 	.db	0
      0040D0 00 00 01 5C           2849 	.dw	0,348
      0040D4 00                    2850 	.uleb128	0
      0040D5 05                    2851 	.uleb128	5
      0040D6 75 6E 73 69 67 6E 65  2852 	.ascii "unsigned char"
             64 20 63 68 61 72
      0040E3 00                    2853 	.db	0
      0040E4 01                    2854 	.db	1
      0040E5 08                    2855 	.db	8
      0040E6 03                    2856 	.uleb128	3
      0040E7 00 00 01 9C           2857 	.dw	0,412
      0040EB 41 44 43 31 5F 43 6D  2858 	.ascii "ADC1_Cmd"
             64
      0040F3 00                    2859 	.db	0
      0040F4 00 00 AC A1           2860 	.dw	0,(_ADC1_Cmd)
      0040F8 00 00 AC C2           2861 	.dw	0,(XG$ADC1_Cmd$0$0+7)
      0040FC 01                    2862 	.db	1
      0040FD 00 00 10 E0           2863 	.dw	0,(Ldebug_loc_start+360)
      004101 04                    2864 	.uleb128	4
      004102 02                    2865 	.db	2
      004103 91                    2866 	.db	145
      004104 04                    2867 	.sleb128	4
      004105 4E 65 77 53 74 61 74  2868 	.ascii "NewState"
             65
      00410D 00                    2869 	.db	0
      00410E 00 00 01 5C           2870 	.dw	0,348
      004112 06                    2871 	.uleb128	6
      004113 06                    2872 	.uleb128	6
      004114 00                    2873 	.uleb128	0
      004115 03                    2874 	.uleb128	3
      004116 00 00 01 D3           2875 	.dw	0,467
      00411A 41 44 43 31 5F 53 63  2876 	.ascii "ADC1_ScanModeCmd"
             61 6E 4D 6F 64 65 43
             6D 64
      00412A 00                    2877 	.db	0
      00412B 00 00 AC C2           2878 	.dw	0,(_ADC1_ScanModeCmd)
      00412F 00 00 AC E9           2879 	.dw	0,(XG$ADC1_ScanModeCmd$0$0+7)
      004133 01                    2880 	.db	1
      004134 00 00 10 CC           2881 	.dw	0,(Ldebug_loc_start+340)
      004138 04                    2882 	.uleb128	4
      004139 02                    2883 	.db	2
      00413A 91                    2884 	.db	145
      00413B 04                    2885 	.sleb128	4
      00413C 4E 65 77 53 74 61 74  2886 	.ascii "NewState"
             65
      004144 00                    2887 	.db	0
      004145 00 00 01 5C           2888 	.dw	0,348
      004149 06                    2889 	.uleb128	6
      00414A 06                    2890 	.uleb128	6
      00414B 00                    2891 	.uleb128	0
      00414C 03                    2892 	.uleb128	3
      00414D 00 00 02 0C           2893 	.dw	0,524
      004151 41 44 43 31 5F 44 61  2894 	.ascii "ADC1_DataBufferCmd"
             74 61 42 75 66 66 65
             72 43 6D 64
      004163 00                    2895 	.db	0
      004164 00 00 AC E9           2896 	.dw	0,(_ADC1_DataBufferCmd)
      004168 00 00 AD 0A           2897 	.dw	0,(XG$ADC1_DataBufferCmd$0$0+7)
      00416C 01                    2898 	.db	1
      00416D 00 00 10 B8           2899 	.dw	0,(Ldebug_loc_start+320)
      004171 04                    2900 	.uleb128	4
      004172 02                    2901 	.db	2
      004173 91                    2902 	.db	145
      004174 04                    2903 	.sleb128	4
      004175 4E 65 77 53 74 61 74  2904 	.ascii "NewState"
             65
      00417D 00                    2905 	.db	0
      00417E 00 00 01 5C           2906 	.dw	0,348
      004182 06                    2907 	.uleb128	6
      004183 06                    2908 	.uleb128	6
      004184 00                    2909 	.uleb128	0
      004185 03                    2910 	.uleb128	3
      004186 00 00 02 50           2911 	.dw	0,592
      00418A 41 44 43 31 5F 49 54  2912 	.ascii "ADC1_ITConfig"
             43 6F 6E 66 69 67
      004197 00                    2913 	.db	0
      004198 00 00 AD 0A           2914 	.dw	0,(_ADC1_ITConfig)
      00419C 00 00 AD 42           2915 	.dw	0,(XG$ADC1_ITConfig$0$0+7)
      0041A0 01                    2916 	.db	1
      0041A1 00 00 10 A4           2917 	.dw	0,(Ldebug_loc_start+300)
      0041A5 04                    2918 	.uleb128	4
      0041A6 02                    2919 	.db	2
      0041A7 91                    2920 	.db	145
      0041A8 04                    2921 	.sleb128	4
      0041A9 41 44 43 31 5F 49 54  2922 	.ascii "ADC1_IT"
      0041B0 00                    2923 	.db	0
      0041B1 00 00 02 50           2924 	.dw	0,592
      0041B5 04                    2925 	.uleb128	4
      0041B6 02                    2926 	.db	2
      0041B7 91                    2927 	.db	145
      0041B8 06                    2928 	.sleb128	6
      0041B9 4E 65 77 53 74 61 74  2929 	.ascii "NewState"
             65
      0041C1 00                    2930 	.db	0
      0041C2 00 00 01 5C           2931 	.dw	0,348
      0041C6 06                    2932 	.uleb128	6
      0041C7 06                    2933 	.uleb128	6
      0041C8 00                    2934 	.uleb128	0
      0041C9 05                    2935 	.uleb128	5
      0041CA 75 6E 73 69 67 6E 65  2936 	.ascii "unsigned int"
             64 20 69 6E 74
      0041D6 00                    2937 	.db	0
      0041D7 02                    2938 	.db	2
      0041D8 07                    2939 	.db	7
      0041D9 03                    2940 	.uleb128	3
      0041DA 00 00 02 9F           2941 	.dw	0,671
      0041DE 41 44 43 31 5F 50 72  2942 	.ascii "ADC1_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0041F2 00                    2943 	.db	0
      0041F3 00 00 AD 42           2944 	.dw	0,(_ADC1_PrescalerConfig)
      0041F7 00 00 AD 66           2945 	.dw	0,(XG$ADC1_PrescalerConfig$0$0+7)
      0041FB 01                    2946 	.db	1
      0041FC 00 00 10 90           2947 	.dw	0,(Ldebug_loc_start+280)
      004200 04                    2948 	.uleb128	4
      004201 02                    2949 	.db	2
      004202 91                    2950 	.db	145
      004203 04                    2951 	.sleb128	4
      004204 41 44 43 31 5F 50 72  2952 	.ascii "ADC1_Prescaler"
             65 73 63 61 6C 65 72
      004212 00                    2953 	.db	0
      004213 00 00 01 5C           2954 	.dw	0,348
      004217 00                    2955 	.uleb128	0
      004218 03                    2956 	.uleb128	3
      004219 00 00 03 14           2957 	.dw	0,788
      00421D 41 44 43 31 5F 53 63  2958 	.ascii "ADC1_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      004236 00                    2959 	.db	0
      004237 00 00 AD 66           2960 	.dw	0,(_ADC1_SchmittTriggerConfig)
      00423B 00 00 AE 31           2961 	.dw	0,(XG$ADC1_SchmittTriggerConfig$0$0+7)
      00423F 01                    2962 	.db	1
      004240 00 00 10 7C           2963 	.dw	0,(Ldebug_loc_start+260)
      004244 04                    2964 	.uleb128	4
      004245 02                    2965 	.db	2
      004246 91                    2966 	.db	145
      004247 04                    2967 	.sleb128	4
      004248 41 44 43 31 5F 53 63  2968 	.ascii "ADC1_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      004262 00                    2969 	.db	0
      004263 00 00 01 5C           2970 	.dw	0,348
      004267 04                    2971 	.uleb128	4
      004268 02                    2972 	.db	2
      004269 91                    2973 	.db	145
      00426A 05                    2974 	.sleb128	5
      00426B 4E 65 77 53 74 61 74  2975 	.ascii "NewState"
             65
      004273 00                    2976 	.db	0
      004274 00 00 01 5C           2977 	.dw	0,348
      004278 07                    2978 	.uleb128	7
      004279 00 00 03 07           2979 	.dw	0,775
      00427D 06                    2980 	.uleb128	6
      00427E 06                    2981 	.uleb128	6
      00427F 00                    2982 	.uleb128	0
      004280 07                    2983 	.uleb128	7
      004281 00 00 03 0F           2984 	.dw	0,783
      004285 06                    2985 	.uleb128	6
      004286 06                    2986 	.uleb128	6
      004287 00                    2987 	.uleb128	0
      004288 08                    2988 	.uleb128	8
      004289 06                    2989 	.uleb128	6
      00428A 06                    2990 	.uleb128	6
      00428B 00                    2991 	.uleb128	0
      00428C 00                    2992 	.uleb128	0
      00428D 03                    2993 	.uleb128	3
      00428E 00 00 03 83           2994 	.dw	0,899
      004292 41 44 43 31 5F 43 6F  2995 	.ascii "ADC1_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      0042A7 00                    2996 	.db	0
      0042A8 00 00 AE 31           2997 	.dw	0,(_ADC1_ConversionConfig)
      0042AC 00 00 AE 7C           2998 	.dw	0,(XG$ADC1_ConversionConfig$0$0+7)
      0042B0 01                    2999 	.db	1
      0042B1 00 00 10 68           3000 	.dw	0,(Ldebug_loc_start+240)
      0042B5 04                    3001 	.uleb128	4
      0042B6 02                    3002 	.db	2
      0042B7 91                    3003 	.db	145
      0042B8 04                    3004 	.sleb128	4
      0042B9 41 44 43 31 5F 43 6F  3005 	.ascii "ADC1_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      0042CC 00                    3006 	.db	0
      0042CD 00 00 01 5C           3007 	.dw	0,348
      0042D1 04                    3008 	.uleb128	4
      0042D2 02                    3009 	.db	2
      0042D3 91                    3010 	.db	145
      0042D4 05                    3011 	.sleb128	5
      0042D5 41 44 43 31 5F 43 68  3012 	.ascii "ADC1_Channel"
             61 6E 6E 65 6C
      0042E1 00                    3013 	.db	0
      0042E2 00 00 01 5C           3014 	.dw	0,348
      0042E6 04                    3015 	.uleb128	4
      0042E7 02                    3016 	.db	2
      0042E8 91                    3017 	.db	145
      0042E9 06                    3018 	.sleb128	6
      0042EA 41 44 43 31 5F 41 6C  3019 	.ascii "ADC1_Align"
             69 67 6E
      0042F4 00                    3020 	.db	0
      0042F5 00 00 01 5C           3021 	.dw	0,348
      0042F9 06                    3022 	.uleb128	6
      0042FA 06                    3023 	.uleb128	6
      0042FB 00                    3024 	.uleb128	0
      0042FC 03                    3025 	.uleb128	3
      0042FD 00 00 03 DC           3026 	.dw	0,988
      004301 41 44 43 31 5F 45 78  3027 	.ascii "ADC1_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      00431B 00                    3028 	.db	0
      00431C 00 00 AE 7C           3029 	.dw	0,(_ADC1_ExternalTriggerConfig)
      004320 00 00 AE B4           3030 	.dw	0,(XG$ADC1_ExternalTriggerConfig$0$0+7)
      004324 01                    3031 	.db	1
      004325 00 00 10 54           3032 	.dw	0,(Ldebug_loc_start+220)
      004329 04                    3033 	.uleb128	4
      00432A 02                    3034 	.db	2
      00432B 91                    3035 	.db	145
      00432C 04                    3036 	.sleb128	4
      00432D 41 44 43 31 5F 45 78  3037 	.ascii "ADC1_ExtTrigger"
             74 54 72 69 67 67 65
             72
      00433C 00                    3038 	.db	0
      00433D 00 00 01 5C           3039 	.dw	0,348
      004341 04                    3040 	.uleb128	4
      004342 02                    3041 	.db	2
      004343 91                    3042 	.db	145
      004344 05                    3043 	.sleb128	5
      004345 4E 65 77 53 74 61 74  3044 	.ascii "NewState"
             65
      00434D 00                    3045 	.db	0
      00434E 00 00 01 5C           3046 	.dw	0,348
      004352 06                    3047 	.uleb128	6
      004353 06                    3048 	.uleb128	6
      004354 00                    3049 	.uleb128	0
      004355 02                    3050 	.uleb128	2
      004356 41 44 43 31 5F 53 74  3051 	.ascii "ADC1_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      00436A 00                    3052 	.db	0
      00436B 00 00 AE B4           3053 	.dw	0,(_ADC1_StartConversion)
      00436F 00 00 AE CB           3054 	.dw	0,(XG$ADC1_StartConversion$0$0+7)
      004373 01                    3055 	.db	1
      004374 00 00 10 40           3056 	.dw	0,(Ldebug_loc_start+200)
      004378 09                    3057 	.uleb128	9
      004379 00 00 04 4C           3058 	.dw	0,1100
      00437D 41 44 43 31 5F 47 65  3059 	.ascii "ADC1_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      004394 00                    3060 	.db	0
      004395 00 00 AE CB           3061 	.dw	0,(_ADC1_GetConversionValue)
      004399 00 00 AF 34           3062 	.dw	0,(XG$ADC1_GetConversionValue$0$0+7)
      00439D 01                    3063 	.db	1
      00439E 00 00 10 2C           3064 	.dw	0,(Ldebug_loc_start+180)
      0043A2 00 00 02 50           3065 	.dw	0,592
      0043A6 06                    3066 	.uleb128	6
      0043A7 06                    3067 	.uleb128	6
      0043A8 0A                    3068 	.uleb128	10
      0043A9 02                    3069 	.db	2
      0043AA 91                    3070 	.db	145
      0043AB 78                    3071 	.sleb128	-8
      0043AC 74 65 6D 70 68        3072 	.ascii "temph"
      0043B1 00                    3073 	.db	0
      0043B2 00 00 02 50           3074 	.dw	0,592
      0043B6 0A                    3075 	.uleb128	10
      0043B7 02                    3076 	.db	2
      0043B8 91                    3077 	.db	145
      0043B9 77                    3078 	.sleb128	-9
      0043BA 74 65 6D 70 6C        3079 	.ascii "templ"
      0043BF 00                    3080 	.db	0
      0043C0 00 00 01 5C           3081 	.dw	0,348
      0043C4 00                    3082 	.uleb128	0
      0043C5 03                    3083 	.uleb128	3
      0043C6 00 00 04 A2           3084 	.dw	0,1186
      0043CA 41 44 43 31 5F 41 57  3085 	.ascii "ADC1_AWDChannelConfig"
             44 43 68 61 6E 6E 65
             6C 43 6F 6E 66 69 67
      0043DF 00                    3086 	.db	0
      0043E0 00 00 AF 34           3087 	.dw	0,(_ADC1_AWDChannelConfig)
      0043E4 00 00 AF CF           3088 	.dw	0,(XG$ADC1_AWDChannelConfig$0$0+7)
      0043E8 01                    3089 	.db	1
      0043E9 00 00 10 18           3090 	.dw	0,(Ldebug_loc_start+160)
      0043ED 04                    3091 	.uleb128	4
      0043EE 02                    3092 	.db	2
      0043EF 91                    3093 	.db	145
      0043F0 04                    3094 	.sleb128	4
      0043F1 43 68 61 6E 6E 65 6C  3095 	.ascii "Channel"
      0043F8 00                    3096 	.db	0
      0043F9 00 00 01 5C           3097 	.dw	0,348
      0043FD 04                    3098 	.uleb128	4
      0043FE 02                    3099 	.db	2
      0043FF 91                    3100 	.db	145
      004400 05                    3101 	.sleb128	5
      004401 4E 65 77 53 74 61 74  3102 	.ascii "NewState"
             65
      004409 00                    3103 	.db	0
      00440A 00 00 01 5C           3104 	.dw	0,348
      00440E 07                    3105 	.uleb128	7
      00440F 00 00 04 9D           3106 	.dw	0,1181
      004413 06                    3107 	.uleb128	6
      004414 06                    3108 	.uleb128	6
      004415 00                    3109 	.uleb128	0
      004416 08                    3110 	.uleb128	8
      004417 06                    3111 	.uleb128	6
      004418 06                    3112 	.uleb128	6
      004419 00                    3113 	.uleb128	0
      00441A 00                    3114 	.uleb128	0
      00441B 03                    3115 	.uleb128	3
      00441C 00 00 04 DD           3116 	.dw	0,1245
      004420 41 44 43 31 5F 53 65  3117 	.ascii "ADC1_SetHighThreshold"
             74 48 69 67 68 54 68
             72 65 73 68 6F 6C 64
      004435 00                    3118 	.db	0
      004436 00 00 AF CF           3119 	.dw	0,(_ADC1_SetHighThreshold)
      00443A 00 00 AF F1           3120 	.dw	0,(XG$ADC1_SetHighThreshold$0$0+7)
      00443E 01                    3121 	.db	1
      00443F 00 00 10 04           3122 	.dw	0,(Ldebug_loc_start+140)
      004443 04                    3123 	.uleb128	4
      004444 02                    3124 	.db	2
      004445 91                    3125 	.db	145
      004446 04                    3126 	.sleb128	4
      004447 54 68 72 65 73 68 6F  3127 	.ascii "Threshold"
             6C 64
      004450 00                    3128 	.db	0
      004451 00 00 02 50           3129 	.dw	0,592
      004455 00                    3130 	.uleb128	0
      004456 03                    3131 	.uleb128	3
      004457 00 00 05 17           3132 	.dw	0,1303
      00445B 41 44 43 31 5F 53 65  3133 	.ascii "ADC1_SetLowThreshold"
             74 4C 6F 77 54 68 72
             65 73 68 6F 6C 64
      00446F 00                    3134 	.db	0
      004470 00 00 AF F1           3135 	.dw	0,(_ADC1_SetLowThreshold)
      004474 00 00 B0 13           3136 	.dw	0,(XG$ADC1_SetLowThreshold$0$0+7)
      004478 01                    3137 	.db	1
      004479 00 00 0F F0           3138 	.dw	0,(Ldebug_loc_start+120)
      00447D 04                    3139 	.uleb128	4
      00447E 02                    3140 	.db	2
      00447F 91                    3141 	.db	145
      004480 04                    3142 	.sleb128	4
      004481 54 68 72 65 73 68 6F  3143 	.ascii "Threshold"
             6C 64
      00448A 00                    3144 	.db	0
      00448B 00 00 02 50           3145 	.dw	0,592
      00448F 00                    3146 	.uleb128	0
      004490 09                    3147 	.uleb128	9
      004491 00 00 05 6F           3148 	.dw	0,1391
      004495 41 44 43 31 5F 47 65  3149 	.ascii "ADC1_GetBufferValue"
             74 42 75 66 66 65 72
             56 61 6C 75 65
      0044A8 00                    3150 	.db	0
      0044A9 00 00 B0 13           3151 	.dw	0,(_ADC1_GetBufferValue)
      0044AD 00 00 B0 92           3152 	.dw	0,(XG$ADC1_GetBufferValue$0$0+7)
      0044B1 01                    3153 	.db	1
      0044B2 00 00 0F DC           3154 	.dw	0,(Ldebug_loc_start+100)
      0044B6 00 00 02 50           3155 	.dw	0,592
      0044BA 04                    3156 	.uleb128	4
      0044BB 02                    3157 	.db	2
      0044BC 91                    3158 	.db	145
      0044BD 04                    3159 	.sleb128	4
      0044BE 42 75 66 66 65 72     3160 	.ascii "Buffer"
      0044C4 00                    3161 	.db	0
      0044C5 00 00 01 5C           3162 	.dw	0,348
      0044C9 06                    3163 	.uleb128	6
      0044CA 06                    3164 	.uleb128	6
      0044CB 0A                    3165 	.uleb128	10
      0044CC 02                    3166 	.db	2
      0044CD 91                    3167 	.db	145
      0044CE 74                    3168 	.sleb128	-12
      0044CF 74 65 6D 70 68        3169 	.ascii "temph"
      0044D4 00                    3170 	.db	0
      0044D5 00 00 02 50           3171 	.dw	0,592
      0044D9 0A                    3172 	.uleb128	10
      0044DA 02                    3173 	.db	2
      0044DB 91                    3174 	.db	145
      0044DC 73                    3175 	.sleb128	-13
      0044DD 74 65 6D 70 6C        3176 	.ascii "templ"
      0044E2 00                    3177 	.db	0
      0044E3 00 00 01 5C           3178 	.dw	0,348
      0044E7 00                    3179 	.uleb128	0
      0044E8 09                    3180 	.uleb128	9
      0044E9 00 00 05 BF           3181 	.dw	0,1471
      0044ED 41 44 43 31 5F 47 65  3182 	.ascii "ADC1_GetAWDChannelStatus"
             74 41 57 44 43 68 61
             6E 6E 65 6C 53 74 61
             74 75 73
      004505 00                    3183 	.db	0
      004506 00 00 B0 92           3184 	.dw	0,(_ADC1_GetAWDChannelStatus)
      00450A 00 00 B0 E0           3185 	.dw	0,(XG$ADC1_GetAWDChannelStatus$0$0+7)
      00450E 01                    3186 	.db	1
      00450F 00 00 0F C8           3187 	.dw	0,(Ldebug_loc_start+80)
      004513 00 00 01 5C           3188 	.dw	0,348
      004517 04                    3189 	.uleb128	4
      004518 02                    3190 	.db	2
      004519 91                    3191 	.db	145
      00451A 04                    3192 	.sleb128	4
      00451B 43 68 61 6E 6E 65 6C  3193 	.ascii "Channel"
      004522 00                    3194 	.db	0
      004523 00 00 01 5C           3195 	.dw	0,348
      004527 06                    3196 	.uleb128	6
      004528 06                    3197 	.uleb128	6
      004529 0A                    3198 	.uleb128	10
      00452A 01                    3199 	.db	1
      00452B 51                    3200 	.db	81
      00452C 73 74 61 74 75 73     3201 	.ascii "status"
      004532 00                    3202 	.db	0
      004533 00 00 01 5C           3203 	.dw	0,348
      004537 00                    3204 	.uleb128	0
      004538 09                    3205 	.uleb128	9
      004539 00 00 06 1E           3206 	.dw	0,1566
      00453D 41 44 43 31 5F 47 65  3207 	.ascii "ADC1_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      00454F 00                    3208 	.db	0
      004550 00 00 B0 E0           3209 	.dw	0,(_ADC1_GetFlagStatus)
      004554 00 00 B1 53           3210 	.dw	0,(XG$ADC1_GetFlagStatus$0$0+7)
      004558 01                    3211 	.db	1
      004559 00 00 0F B4           3212 	.dw	0,(Ldebug_loc_start+60)
      00455D 00 00 01 5C           3213 	.dw	0,348
      004561 04                    3214 	.uleb128	4
      004562 02                    3215 	.db	2
      004563 91                    3216 	.db	145
      004564 04                    3217 	.sleb128	4
      004565 46 6C 61 67           3218 	.ascii "Flag"
      004569 00                    3219 	.db	0
      00456A 00 00 01 5C           3220 	.dw	0,348
      00456E 06                    3221 	.uleb128	6
      00456F 07                    3222 	.uleb128	7
      004570 00 00 05 FE           3223 	.dw	0,1534
      004574 06                    3224 	.uleb128	6
      004575 06                    3225 	.uleb128	6
      004576 00                    3226 	.uleb128	0
      004577 06                    3227 	.uleb128	6
      004578 0A                    3228 	.uleb128	10
      004579 01                    3229 	.db	1
      00457A 51                    3230 	.db	81
      00457B 66 6C 61 67 73 74 61  3231 	.ascii "flagstatus"
             74 75 73
      004585 00                    3232 	.db	0
      004586 00 00 01 5C           3233 	.dw	0,348
      00458A 0A                    3234 	.uleb128	10
      00458B 01                    3235 	.db	1
      00458C 51                    3236 	.db	81
      00458D 74 65 6D 70           3237 	.ascii "temp"
      004591 00                    3238 	.db	0
      004592 00 00 01 5C           3239 	.dw	0,348
      004596 00                    3240 	.uleb128	0
      004597 03                    3241 	.uleb128	3
      004598 00 00 06 61           3242 	.dw	0,1633
      00459C 41 44 43 31 5F 43 6C  3243 	.ascii "ADC1_ClearFlag"
             65 61 72 46 6C 61 67
      0045AA 00                    3244 	.db	0
      0045AB 00 00 B1 53           3245 	.dw	0,(_ADC1_ClearFlag)
      0045AF 00 00 B1 D8           3246 	.dw	0,(XG$ADC1_ClearFlag$0$0+7)
      0045B3 01                    3247 	.db	1
      0045B4 00 00 0F A0           3248 	.dw	0,(Ldebug_loc_start+40)
      0045B8 04                    3249 	.uleb128	4
      0045B9 02                    3250 	.db	2
      0045BA 91                    3251 	.db	145
      0045BB 04                    3252 	.sleb128	4
      0045BC 46 6C 61 67           3253 	.ascii "Flag"
      0045C0 00                    3254 	.db	0
      0045C1 00 00 01 5C           3255 	.dw	0,348
      0045C5 06                    3256 	.uleb128	6
      0045C6 07                    3257 	.uleb128	7
      0045C7 00 00 06 55           3258 	.dw	0,1621
      0045CB 06                    3259 	.uleb128	6
      0045CC 06                    3260 	.uleb128	6
      0045CD 00                    3261 	.uleb128	0
      0045CE 06                    3262 	.uleb128	6
      0045CF 0B                    3263 	.uleb128	11
      0045D0 74 65 6D 70           3264 	.ascii "temp"
      0045D4 00                    3265 	.db	0
      0045D5 00 00 01 5C           3266 	.dw	0,348
      0045D9 00                    3267 	.uleb128	0
      0045DA 09                    3268 	.uleb128	9
      0045DB 00 00 06 C1           3269 	.dw	0,1729
      0045DF 41 44 43 31 5F 47 65  3270 	.ascii "ADC1_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      0045EF 00                    3271 	.db	0
      0045F0 00 00 B1 D8           3272 	.dw	0,(_ADC1_GetITStatus)
      0045F4 00 00 B2 45           3273 	.dw	0,(XG$ADC1_GetITStatus$0$0+7)
      0045F8 01                    3274 	.db	1
      0045F9 00 00 0F 8C           3275 	.dw	0,(Ldebug_loc_start+20)
      0045FD 00 00 01 5C           3276 	.dw	0,348
      004601 04                    3277 	.uleb128	4
      004602 02                    3278 	.db	2
      004603 91                    3279 	.db	145
      004604 04                    3280 	.sleb128	4
      004605 49 54 50 65 6E 64 69  3281 	.ascii "ITPendingBit"
             6E 67 42 69 74
      004611 00                    3282 	.db	0
      004612 00 00 02 50           3283 	.dw	0,592
      004616 07                    3284 	.uleb128	7
      004617 00 00 06 A5           3285 	.dw	0,1701
      00461B 06                    3286 	.uleb128	6
      00461C 06                    3287 	.uleb128	6
      00461D 00                    3288 	.uleb128	0
      00461E 06                    3289 	.uleb128	6
      00461F 0A                    3290 	.uleb128	10
      004620 01                    3291 	.db	1
      004621 51                    3292 	.db	81
      004622 69 74 73 74 61 74 75  3293 	.ascii "itstatus"
             73
      00462A 00                    3294 	.db	0
      00462B 00 00 01 5C           3295 	.dw	0,348
      00462F 0B                    3296 	.uleb128	11
      004630 74 65 6D 70           3297 	.ascii "temp"
      004634 00                    3298 	.db	0
      004635 00 00 01 5C           3299 	.dw	0,348
      004639 00                    3300 	.uleb128	0
      00463A 0C                    3301 	.uleb128	12
      00463B 41 44 43 31 5F 43 6C  3302 	.ascii "ADC1_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      004651 00                    3303 	.db	0
      004652 00 00 B2 45           3304 	.dw	0,(_ADC1_ClearITPendingBit)
      004656 00 00 B2 C1           3305 	.dw	0,(XG$ADC1_ClearITPendingBit$0$0+7)
      00465A 01                    3306 	.db	1
      00465B 00 00 0F 78           3307 	.dw	0,(Ldebug_loc_start)
      00465F 04                    3308 	.uleb128	4
      004660 02                    3309 	.db	2
      004661 91                    3310 	.db	145
      004662 04                    3311 	.sleb128	4
      004663 49 54 50 65 6E 64 69  3312 	.ascii "ITPendingBit"
             6E 67 42 69 74
      00466F 00                    3313 	.db	0
      004670 00 00 02 50           3314 	.dw	0,592
      004674 07                    3315 	.uleb128	7
      004675 00 00 07 03           3316 	.dw	0,1795
      004679 06                    3317 	.uleb128	6
      00467A 06                    3318 	.uleb128	6
      00467B 00                    3319 	.uleb128	0
      00467C 06                    3320 	.uleb128	6
      00467D 0B                    3321 	.uleb128	11
      00467E 74 65 6D 70           3322 	.ascii "temp"
      004682 00                    3323 	.db	0
      004683 00 00 01 5C           3324 	.dw	0,348
      004687 00                    3325 	.uleb128	0
      004688 00                    3326 	.uleb128	0
      004689 00                    3327 	.uleb128	0
      00468A 00                    3328 	.uleb128	0
      00468B                       3329 Ldebug_info_end:
                                   3330 
                                   3331 	.area .debug_pubnames (NOLOAD)
      001238 00 00 01 F8           3332 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00123C                       3333 Ldebug_pubnames_start:
      00123C 00 02                 3334 	.dw	2
      00123E 00 00 3F 79           3335 	.dw	0,(Ldebug_info_start-4)
      001242 00 00 07 12           3336 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      001246 00 00 00 48           3337 	.dw	0,72
      00124A 41 44 43 31 5F 44 65  3338 	.ascii "ADC1_DeInit"
             49 6E 69 74
      001255 00                    3339 	.db	0
      001256 00 00 00 62           3340 	.dw	0,98
      00125A 41 44 43 31 5F 49 6E  3341 	.ascii "ADC1_Init"
             69 74
      001263 00                    3342 	.db	0
      001264 00 00 01 6D           3343 	.dw	0,365
      001268 41 44 43 31 5F 43 6D  3344 	.ascii "ADC1_Cmd"
             64
      001270 00                    3345 	.db	0
      001271 00 00 01 9C           3346 	.dw	0,412
      001275 41 44 43 31 5F 53 63  3347 	.ascii "ADC1_ScanModeCmd"
             61 6E 4D 6F 64 65 43
             6D 64
      001285 00                    3348 	.db	0
      001286 00 00 01 D3           3349 	.dw	0,467
      00128A 41 44 43 31 5F 44 61  3350 	.ascii "ADC1_DataBufferCmd"
             74 61 42 75 66 66 65
             72 43 6D 64
      00129C 00                    3351 	.db	0
      00129D 00 00 02 0C           3352 	.dw	0,524
      0012A1 41 44 43 31 5F 49 54  3353 	.ascii "ADC1_ITConfig"
             43 6F 6E 66 69 67
      0012AE 00                    3354 	.db	0
      0012AF 00 00 02 60           3355 	.dw	0,608
      0012B3 41 44 43 31 5F 50 72  3356 	.ascii "ADC1_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0012C7 00                    3357 	.db	0
      0012C8 00 00 02 9F           3358 	.dw	0,671
      0012CC 41 44 43 31 5F 53 63  3359 	.ascii "ADC1_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      0012E5 00                    3360 	.db	0
      0012E6 00 00 03 14           3361 	.dw	0,788
      0012EA 41 44 43 31 5F 43 6F  3362 	.ascii "ADC1_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      0012FF 00                    3363 	.db	0
      001300 00 00 03 83           3364 	.dw	0,899
      001304 41 44 43 31 5F 45 78  3365 	.ascii "ADC1_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      00131E 00                    3366 	.db	0
      00131F 00 00 03 DC           3367 	.dw	0,988
      001323 41 44 43 31 5F 53 74  3368 	.ascii "ADC1_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      001337 00                    3369 	.db	0
      001338 00 00 03 FF           3370 	.dw	0,1023
      00133C 41 44 43 31 5F 47 65  3371 	.ascii "ADC1_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      001353 00                    3372 	.db	0
      001354 00 00 04 4C           3373 	.dw	0,1100
      001358 41 44 43 31 5F 41 57  3374 	.ascii "ADC1_AWDChannelConfig"
             44 43 68 61 6E 6E 65
             6C 43 6F 6E 66 69 67
      00136D 00                    3375 	.db	0
      00136E 00 00 04 A2           3376 	.dw	0,1186
      001372 41 44 43 31 5F 53 65  3377 	.ascii "ADC1_SetHighThreshold"
             74 48 69 67 68 54 68
             72 65 73 68 6F 6C 64
      001387 00                    3378 	.db	0
      001388 00 00 04 DD           3379 	.dw	0,1245
      00138C 41 44 43 31 5F 53 65  3380 	.ascii "ADC1_SetLowThreshold"
             74 4C 6F 77 54 68 72
             65 73 68 6F 6C 64
      0013A0 00                    3381 	.db	0
      0013A1 00 00 05 17           3382 	.dw	0,1303
      0013A5 41 44 43 31 5F 47 65  3383 	.ascii "ADC1_GetBufferValue"
             74 42 75 66 66 65 72
             56 61 6C 75 65
      0013B8 00                    3384 	.db	0
      0013B9 00 00 05 6F           3385 	.dw	0,1391
      0013BD 41 44 43 31 5F 47 65  3386 	.ascii "ADC1_GetAWDChannelStatus"
             74 41 57 44 43 68 61
             6E 6E 65 6C 53 74 61
             74 75 73
      0013D5 00                    3387 	.db	0
      0013D6 00 00 05 BF           3388 	.dw	0,1471
      0013DA 41 44 43 31 5F 47 65  3389 	.ascii "ADC1_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      0013EC 00                    3390 	.db	0
      0013ED 00 00 06 1E           3391 	.dw	0,1566
      0013F1 41 44 43 31 5F 43 6C  3392 	.ascii "ADC1_ClearFlag"
             65 61 72 46 6C 61 67
      0013FF 00                    3393 	.db	0
      001400 00 00 06 61           3394 	.dw	0,1633
      001404 41 44 43 31 5F 47 65  3395 	.ascii "ADC1_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      001414 00                    3396 	.db	0
      001415 00 00 06 C1           3397 	.dw	0,1729
      001419 41 44 43 31 5F 43 6C  3398 	.ascii "ADC1_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      00142F 00                    3399 	.db	0
      001430 00 00 00 00           3400 	.dw	0,0
      001434                       3401 Ldebug_pubnames_end:
                                   3402 
                                   3403 	.area .debug_frame (NOLOAD)
      0000A2 00 00                 3404 	.dw	0
      0000A4 00 0E                 3405 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      0000A6                       3406 Ldebug_CIE_start:
      0000A6 FF FF                 3407 	.dw	0xffff
      0000A8 FF FF                 3408 	.dw	0xffff
      0000AA 01                    3409 	.db	1
      0000AB 00                    3410 	.db	0
      0000AC 01                    3411 	.uleb128	1
      0000AD 01                    3412 	.sleb128	1
      0000AE 00                    3413 	.db	0
      0000AF 0C                    3414 	.db	12
      0000B0 00                    3415 	.uleb128	0
      0000B1 00                    3416 	.uleb128	0
      0000B2 80                    3417 	.db	128
      0000B3 00                    3418 	.uleb128	0
      0000B4                       3419 Ldebug_CIE_end:
