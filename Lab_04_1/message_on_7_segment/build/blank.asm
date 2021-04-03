
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000aec  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000208  08000bac  08000bac  00010bac  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000db4  08000db4  00010db4  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000dbc  08000dbc  00010dbc  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000dc0  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000024  20000434  080011f4  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000458  080011f4  00020458  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000bb2  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000395  00000000  00000000  0002100e  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000005c0  00000000  00000000  000213a3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000138  00000000  00000000  00021963  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000108  00000000  00000000  00021a9b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000896  00000000  00000000  00021ba3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000005e8  00000000  00000000  00022439  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  00022a21  2**0  CONTENTS, READONLY
 17 .debug_frame      000005a4  00000000  00000000  00022af0  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08000b94 	.word	0x08000b94

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000438 	.word	0x20000438
 8000104:	08000b94 	.word	0x08000b94

08000108 <Reset_Handler>:
 8000108:	480d      	ldr	r0, [pc, #52]	; (8000140 <LoopForever+0x2>)
 800010a:	4685      	mov	sp, r0
 800010c:	480d      	ldr	r0, [pc, #52]	; (8000144 <LoopForever+0x6>)
 800010e:	490e      	ldr	r1, [pc, #56]	; (8000148 <LoopForever+0xa>)
 8000110:	4a0e      	ldr	r2, [pc, #56]	; (800014c <LoopForever+0xe>)
 8000112:	2300      	movs	r3, #0
 8000114:	e002      	b.n	800011c <LoopCopyDataInit>

08000116 <CopyDataInit>:
 8000116:	58d4      	ldr	r4, [r2, r3]
 8000118:	50c4      	str	r4, [r0, r3]
 800011a:	3304      	adds	r3, #4

0800011c <LoopCopyDataInit>:
 800011c:	18c4      	adds	r4, r0, r3
 800011e:	428c      	cmp	r4, r1
 8000120:	d3f9      	bcc.n	8000116 <CopyDataInit>
 8000122:	4a0b      	ldr	r2, [pc, #44]	; (8000150 <LoopForever+0x12>)
 8000124:	4c0b      	ldr	r4, [pc, #44]	; (8000154 <LoopForever+0x16>)
 8000126:	2300      	movs	r3, #0
 8000128:	e001      	b.n	800012e <LoopFillZerobss>

0800012a <FillZerobss>:
 800012a:	6013      	str	r3, [r2, #0]
 800012c:	3204      	adds	r2, #4

0800012e <LoopFillZerobss>:
 800012e:	42a2      	cmp	r2, r4
 8000130:	d3fb      	bcc.n	800012a <FillZerobss>
 8000132:	f000 fbe3 	bl	80008fc <SystemInit>
 8000136:	f000 fc37 	bl	80009a8 <__libc_init_array>
 800013a:	f000 fbbf 	bl	80008bc <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000dc0 	.word	0x08000dc0
 8000150:	20000434 	.word	0x20000434
 8000154:	20000458 	.word	0x20000458

08000158 <ADC1_COMP_IRQHandler>:
 8000158:	e7fe      	b.n	8000158 <ADC1_COMP_IRQHandler>
	...

0800015c <LL_RCC_HSI_Enable>:
 800015c:	b580      	push	{r7, lr}
 800015e:	af00      	add	r7, sp, #0
 8000160:	4b04      	ldr	r3, [pc, #16]	; (8000174 <LL_RCC_HSI_Enable+0x18>)
 8000162:	681a      	ldr	r2, [r3, #0]
 8000164:	4b03      	ldr	r3, [pc, #12]	; (8000174 <LL_RCC_HSI_Enable+0x18>)
 8000166:	2101      	movs	r1, #1
 8000168:	430a      	orrs	r2, r1
 800016a:	601a      	str	r2, [r3, #0]
 800016c:	46c0      	nop			; (mov r8, r8)
 800016e:	46bd      	mov	sp, r7
 8000170:	bd80      	pop	{r7, pc}
 8000172:	46c0      	nop			; (mov r8, r8)
 8000174:	40021000 	.word	0x40021000

08000178 <LL_RCC_HSI_IsReady>:
 8000178:	b580      	push	{r7, lr}
 800017a:	af00      	add	r7, sp, #0
 800017c:	4b05      	ldr	r3, [pc, #20]	; (8000194 <LL_RCC_HSI_IsReady+0x1c>)
 800017e:	681b      	ldr	r3, [r3, #0]
 8000180:	2202      	movs	r2, #2
 8000182:	4013      	ands	r3, r2
 8000184:	3b02      	subs	r3, #2
 8000186:	425a      	negs	r2, r3
 8000188:	4153      	adcs	r3, r2
 800018a:	b2db      	uxtb	r3, r3
 800018c:	0018      	movs	r0, r3
 800018e:	46bd      	mov	sp, r7
 8000190:	bd80      	pop	{r7, pc}
 8000192:	46c0      	nop			; (mov r8, r8)
 8000194:	40021000 	.word	0x40021000

08000198 <LL_RCC_SetSysClkSource>:
 8000198:	b580      	push	{r7, lr}
 800019a:	b082      	sub	sp, #8
 800019c:	af00      	add	r7, sp, #0
 800019e:	6078      	str	r0, [r7, #4]
 80001a0:	4b06      	ldr	r3, [pc, #24]	; (80001bc <LL_RCC_SetSysClkSource+0x24>)
 80001a2:	685b      	ldr	r3, [r3, #4]
 80001a4:	2203      	movs	r2, #3
 80001a6:	4393      	bics	r3, r2
 80001a8:	0019      	movs	r1, r3
 80001aa:	4b04      	ldr	r3, [pc, #16]	; (80001bc <LL_RCC_SetSysClkSource+0x24>)
 80001ac:	687a      	ldr	r2, [r7, #4]
 80001ae:	430a      	orrs	r2, r1
 80001b0:	605a      	str	r2, [r3, #4]
 80001b2:	46c0      	nop			; (mov r8, r8)
 80001b4:	46bd      	mov	sp, r7
 80001b6:	b002      	add	sp, #8
 80001b8:	bd80      	pop	{r7, pc}
 80001ba:	46c0      	nop			; (mov r8, r8)
 80001bc:	40021000 	.word	0x40021000

080001c0 <LL_RCC_GetSysClkSource>:
 80001c0:	b580      	push	{r7, lr}
 80001c2:	af00      	add	r7, sp, #0
 80001c4:	4b03      	ldr	r3, [pc, #12]	; (80001d4 <LL_RCC_GetSysClkSource+0x14>)
 80001c6:	685b      	ldr	r3, [r3, #4]
 80001c8:	220c      	movs	r2, #12
 80001ca:	4013      	ands	r3, r2
 80001cc:	0018      	movs	r0, r3
 80001ce:	46bd      	mov	sp, r7
 80001d0:	bd80      	pop	{r7, pc}
 80001d2:	46c0      	nop			; (mov r8, r8)
 80001d4:	40021000 	.word	0x40021000

080001d8 <LL_RCC_SetAHBPrescaler>:
 80001d8:	b580      	push	{r7, lr}
 80001da:	b082      	sub	sp, #8
 80001dc:	af00      	add	r7, sp, #0
 80001de:	6078      	str	r0, [r7, #4]
 80001e0:	4b06      	ldr	r3, [pc, #24]	; (80001fc <LL_RCC_SetAHBPrescaler+0x24>)
 80001e2:	685b      	ldr	r3, [r3, #4]
 80001e4:	22f0      	movs	r2, #240	; 0xf0
 80001e6:	4393      	bics	r3, r2
 80001e8:	0019      	movs	r1, r3
 80001ea:	4b04      	ldr	r3, [pc, #16]	; (80001fc <LL_RCC_SetAHBPrescaler+0x24>)
 80001ec:	687a      	ldr	r2, [r7, #4]
 80001ee:	430a      	orrs	r2, r1
 80001f0:	605a      	str	r2, [r3, #4]
 80001f2:	46c0      	nop			; (mov r8, r8)
 80001f4:	46bd      	mov	sp, r7
 80001f6:	b002      	add	sp, #8
 80001f8:	bd80      	pop	{r7, pc}
 80001fa:	46c0      	nop			; (mov r8, r8)
 80001fc:	40021000 	.word	0x40021000

08000200 <LL_RCC_SetAPB1Prescaler>:
 8000200:	b580      	push	{r7, lr}
 8000202:	b082      	sub	sp, #8
 8000204:	af00      	add	r7, sp, #0
 8000206:	6078      	str	r0, [r7, #4]
 8000208:	4b06      	ldr	r3, [pc, #24]	; (8000224 <LL_RCC_SetAPB1Prescaler+0x24>)
 800020a:	685b      	ldr	r3, [r3, #4]
 800020c:	4a06      	ldr	r2, [pc, #24]	; (8000228 <LL_RCC_SetAPB1Prescaler+0x28>)
 800020e:	4013      	ands	r3, r2
 8000210:	0019      	movs	r1, r3
 8000212:	4b04      	ldr	r3, [pc, #16]	; (8000224 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000214:	687a      	ldr	r2, [r7, #4]
 8000216:	430a      	orrs	r2, r1
 8000218:	605a      	str	r2, [r3, #4]
 800021a:	46c0      	nop			; (mov r8, r8)
 800021c:	46bd      	mov	sp, r7
 800021e:	b002      	add	sp, #8
 8000220:	bd80      	pop	{r7, pc}
 8000222:	46c0      	nop			; (mov r8, r8)
 8000224:	40021000 	.word	0x40021000
 8000228:	fffff8ff 	.word	0xfffff8ff

0800022c <LL_RCC_PLL_Enable>:
 800022c:	b580      	push	{r7, lr}
 800022e:	af00      	add	r7, sp, #0
 8000230:	4b04      	ldr	r3, [pc, #16]	; (8000244 <LL_RCC_PLL_Enable+0x18>)
 8000232:	681a      	ldr	r2, [r3, #0]
 8000234:	4b03      	ldr	r3, [pc, #12]	; (8000244 <LL_RCC_PLL_Enable+0x18>)
 8000236:	2180      	movs	r1, #128	; 0x80
 8000238:	0449      	lsls	r1, r1, #17
 800023a:	430a      	orrs	r2, r1
 800023c:	601a      	str	r2, [r3, #0]
 800023e:	46c0      	nop			; (mov r8, r8)
 8000240:	46bd      	mov	sp, r7
 8000242:	bd80      	pop	{r7, pc}
 8000244:	40021000 	.word	0x40021000

08000248 <LL_RCC_PLL_IsReady>:
 8000248:	b580      	push	{r7, lr}
 800024a:	af00      	add	r7, sp, #0
 800024c:	4b07      	ldr	r3, [pc, #28]	; (800026c <LL_RCC_PLL_IsReady+0x24>)
 800024e:	681a      	ldr	r2, [r3, #0]
 8000250:	2380      	movs	r3, #128	; 0x80
 8000252:	049b      	lsls	r3, r3, #18
 8000254:	4013      	ands	r3, r2
 8000256:	22fe      	movs	r2, #254	; 0xfe
 8000258:	0612      	lsls	r2, r2, #24
 800025a:	4694      	mov	ip, r2
 800025c:	4463      	add	r3, ip
 800025e:	425a      	negs	r2, r3
 8000260:	4153      	adcs	r3, r2
 8000262:	b2db      	uxtb	r3, r3
 8000264:	0018      	movs	r0, r3
 8000266:	46bd      	mov	sp, r7
 8000268:	bd80      	pop	{r7, pc}
 800026a:	46c0      	nop			; (mov r8, r8)
 800026c:	40021000 	.word	0x40021000

08000270 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000270:	b580      	push	{r7, lr}
 8000272:	b082      	sub	sp, #8
 8000274:	af00      	add	r7, sp, #0
 8000276:	6078      	str	r0, [r7, #4]
 8000278:	6039      	str	r1, [r7, #0]
 800027a:	4b0e      	ldr	r3, [pc, #56]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800027c:	685b      	ldr	r3, [r3, #4]
 800027e:	4a0e      	ldr	r2, [pc, #56]	; (80002b8 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000280:	4013      	ands	r3, r2
 8000282:	0019      	movs	r1, r3
 8000284:	687a      	ldr	r2, [r7, #4]
 8000286:	2380      	movs	r3, #128	; 0x80
 8000288:	025b      	lsls	r3, r3, #9
 800028a:	401a      	ands	r2, r3
 800028c:	683b      	ldr	r3, [r7, #0]
 800028e:	431a      	orrs	r2, r3
 8000290:	4b08      	ldr	r3, [pc, #32]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000292:	430a      	orrs	r2, r1
 8000294:	605a      	str	r2, [r3, #4]
 8000296:	4b07      	ldr	r3, [pc, #28]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000298:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800029a:	220f      	movs	r2, #15
 800029c:	4393      	bics	r3, r2
 800029e:	0019      	movs	r1, r3
 80002a0:	687b      	ldr	r3, [r7, #4]
 80002a2:	220f      	movs	r2, #15
 80002a4:	401a      	ands	r2, r3
 80002a6:	4b03      	ldr	r3, [pc, #12]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80002a8:	430a      	orrs	r2, r1
 80002aa:	62da      	str	r2, [r3, #44]	; 0x2c
 80002ac:	46c0      	nop			; (mov r8, r8)
 80002ae:	46bd      	mov	sp, r7
 80002b0:	b002      	add	sp, #8
 80002b2:	bd80      	pop	{r7, pc}
 80002b4:	40021000 	.word	0x40021000
 80002b8:	ffc2ffff 	.word	0xffc2ffff

080002bc <LL_FLASH_SetLatency>:
 80002bc:	b580      	push	{r7, lr}
 80002be:	b082      	sub	sp, #8
 80002c0:	af00      	add	r7, sp, #0
 80002c2:	6078      	str	r0, [r7, #4]
 80002c4:	4b06      	ldr	r3, [pc, #24]	; (80002e0 <LL_FLASH_SetLatency+0x24>)
 80002c6:	681b      	ldr	r3, [r3, #0]
 80002c8:	2201      	movs	r2, #1
 80002ca:	4393      	bics	r3, r2
 80002cc:	0019      	movs	r1, r3
 80002ce:	4b04      	ldr	r3, [pc, #16]	; (80002e0 <LL_FLASH_SetLatency+0x24>)
 80002d0:	687a      	ldr	r2, [r7, #4]
 80002d2:	430a      	orrs	r2, r1
 80002d4:	601a      	str	r2, [r3, #0]
 80002d6:	46c0      	nop			; (mov r8, r8)
 80002d8:	46bd      	mov	sp, r7
 80002da:	b002      	add	sp, #8
 80002dc:	bd80      	pop	{r7, pc}
 80002de:	46c0      	nop			; (mov r8, r8)
 80002e0:	40022000 	.word	0x40022000

080002e4 <LL_AHB1_GRP1_EnableClock>:
 80002e4:	b580      	push	{r7, lr}
 80002e6:	b084      	sub	sp, #16
 80002e8:	af00      	add	r7, sp, #0
 80002ea:	6078      	str	r0, [r7, #4]
 80002ec:	4b07      	ldr	r3, [pc, #28]	; (800030c <LL_AHB1_GRP1_EnableClock+0x28>)
 80002ee:	6959      	ldr	r1, [r3, #20]
 80002f0:	4b06      	ldr	r3, [pc, #24]	; (800030c <LL_AHB1_GRP1_EnableClock+0x28>)
 80002f2:	687a      	ldr	r2, [r7, #4]
 80002f4:	430a      	orrs	r2, r1
 80002f6:	615a      	str	r2, [r3, #20]
 80002f8:	4b04      	ldr	r3, [pc, #16]	; (800030c <LL_AHB1_GRP1_EnableClock+0x28>)
 80002fa:	695b      	ldr	r3, [r3, #20]
 80002fc:	687a      	ldr	r2, [r7, #4]
 80002fe:	4013      	ands	r3, r2
 8000300:	60fb      	str	r3, [r7, #12]
 8000302:	68fb      	ldr	r3, [r7, #12]
 8000304:	46c0      	nop			; (mov r8, r8)
 8000306:	46bd      	mov	sp, r7
 8000308:	b004      	add	sp, #16
 800030a:	bd80      	pop	{r7, pc}
 800030c:	40021000 	.word	0x40021000

08000310 <LL_GPIO_SetPinMode>:
 8000310:	b580      	push	{r7, lr}
 8000312:	b084      	sub	sp, #16
 8000314:	af00      	add	r7, sp, #0
 8000316:	60f8      	str	r0, [r7, #12]
 8000318:	60b9      	str	r1, [r7, #8]
 800031a:	607a      	str	r2, [r7, #4]
 800031c:	68fb      	ldr	r3, [r7, #12]
 800031e:	6819      	ldr	r1, [r3, #0]
 8000320:	68bb      	ldr	r3, [r7, #8]
 8000322:	435b      	muls	r3, r3
 8000324:	001a      	movs	r2, r3
 8000326:	0013      	movs	r3, r2
 8000328:	005b      	lsls	r3, r3, #1
 800032a:	189b      	adds	r3, r3, r2
 800032c:	43db      	mvns	r3, r3
 800032e:	400b      	ands	r3, r1
 8000330:	001a      	movs	r2, r3
 8000332:	68bb      	ldr	r3, [r7, #8]
 8000334:	435b      	muls	r3, r3
 8000336:	6879      	ldr	r1, [r7, #4]
 8000338:	434b      	muls	r3, r1
 800033a:	431a      	orrs	r2, r3
 800033c:	68fb      	ldr	r3, [r7, #12]
 800033e:	601a      	str	r2, [r3, #0]
 8000340:	46c0      	nop			; (mov r8, r8)
 8000342:	46bd      	mov	sp, r7
 8000344:	b004      	add	sp, #16
 8000346:	bd80      	pop	{r7, pc}

08000348 <LL_GPIO_WriteOutputPort>:
 8000348:	b580      	push	{r7, lr}
 800034a:	b082      	sub	sp, #8
 800034c:	af00      	add	r7, sp, #0
 800034e:	6078      	str	r0, [r7, #4]
 8000350:	6039      	str	r1, [r7, #0]
 8000352:	687b      	ldr	r3, [r7, #4]
 8000354:	683a      	ldr	r2, [r7, #0]
 8000356:	615a      	str	r2, [r3, #20]
 8000358:	46c0      	nop			; (mov r8, r8)
 800035a:	46bd      	mov	sp, r7
 800035c:	b002      	add	sp, #8
 800035e:	bd80      	pop	{r7, pc}

08000360 <LL_GPIO_ResetOutputPin>:
 8000360:	b580      	push	{r7, lr}
 8000362:	b082      	sub	sp, #8
 8000364:	af00      	add	r7, sp, #0
 8000366:	6078      	str	r0, [r7, #4]
 8000368:	6039      	str	r1, [r7, #0]
 800036a:	687b      	ldr	r3, [r7, #4]
 800036c:	683a      	ldr	r2, [r7, #0]
 800036e:	629a      	str	r2, [r3, #40]	; 0x28
 8000370:	46c0      	nop			; (mov r8, r8)
 8000372:	46bd      	mov	sp, r7
 8000374:	b002      	add	sp, #8
 8000376:	bd80      	pop	{r7, pc}

08000378 <rcc_config>:
 8000378:	b580      	push	{r7, lr}
 800037a:	af00      	add	r7, sp, #0
 800037c:	2001      	movs	r0, #1
 800037e:	f7ff ff9d 	bl	80002bc <LL_FLASH_SetLatency>
 8000382:	f7ff feeb 	bl	800015c <LL_RCC_HSI_Enable>
 8000386:	46c0      	nop			; (mov r8, r8)
 8000388:	f7ff fef6 	bl	8000178 <LL_RCC_HSI_IsReady>
 800038c:	0003      	movs	r3, r0
 800038e:	2b01      	cmp	r3, #1
 8000390:	d1fa      	bne.n	8000388 <rcc_config+0x10>
 8000392:	23a0      	movs	r3, #160	; 0xa0
 8000394:	039b      	lsls	r3, r3, #14
 8000396:	0019      	movs	r1, r3
 8000398:	2000      	movs	r0, #0
 800039a:	f7ff ff69 	bl	8000270 <LL_RCC_PLL_ConfigDomain_SYS>
 800039e:	f7ff ff45 	bl	800022c <LL_RCC_PLL_Enable>
 80003a2:	46c0      	nop			; (mov r8, r8)
 80003a4:	f7ff ff50 	bl	8000248 <LL_RCC_PLL_IsReady>
 80003a8:	0003      	movs	r3, r0
 80003aa:	2b01      	cmp	r3, #1
 80003ac:	d1fa      	bne.n	80003a4 <rcc_config+0x2c>
 80003ae:	2000      	movs	r0, #0
 80003b0:	f7ff ff12 	bl	80001d8 <LL_RCC_SetAHBPrescaler>
 80003b4:	2002      	movs	r0, #2
 80003b6:	f7ff feef 	bl	8000198 <LL_RCC_SetSysClkSource>
 80003ba:	46c0      	nop			; (mov r8, r8)
 80003bc:	f7ff ff00 	bl	80001c0 <LL_RCC_GetSysClkSource>
 80003c0:	0003      	movs	r3, r0
 80003c2:	2b08      	cmp	r3, #8
 80003c4:	d1fa      	bne.n	80003bc <rcc_config+0x44>
 80003c6:	2000      	movs	r0, #0
 80003c8:	f7ff ff1a 	bl	8000200 <LL_RCC_SetAPB1Prescaler>
 80003cc:	4b02      	ldr	r3, [pc, #8]	; (80003d8 <rcc_config+0x60>)
 80003ce:	4a03      	ldr	r2, [pc, #12]	; (80003dc <rcc_config+0x64>)
 80003d0:	601a      	str	r2, [r3, #0]
 80003d2:	46c0      	nop			; (mov r8, r8)
 80003d4:	46bd      	mov	sp, r7
 80003d6:	bd80      	pop	{r7, pc}
 80003d8:	20000000 	.word	0x20000000
 80003dc:	02dc6c00 	.word	0x02dc6c00

080003e0 <gpio_config>:
 80003e0:	b580      	push	{r7, lr}
 80003e2:	af00      	add	r7, sp, #0
 80003e4:	2380      	movs	r3, #128	; 0x80
 80003e6:	031b      	lsls	r3, r3, #12
 80003e8:	0018      	movs	r0, r3
 80003ea:	f7ff ff7b 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 80003ee:	2380      	movs	r3, #128	; 0x80
 80003f0:	005b      	lsls	r3, r3, #1
 80003f2:	4834      	ldr	r0, [pc, #208]	; (80004c4 <gpio_config+0xe4>)
 80003f4:	2201      	movs	r2, #1
 80003f6:	0019      	movs	r1, r3
 80003f8:	f7ff ff8a 	bl	8000310 <LL_GPIO_SetPinMode>
 80003fc:	2380      	movs	r3, #128	; 0x80
 80003fe:	009b      	lsls	r3, r3, #2
 8000400:	4830      	ldr	r0, [pc, #192]	; (80004c4 <gpio_config+0xe4>)
 8000402:	2201      	movs	r2, #1
 8000404:	0019      	movs	r1, r3
 8000406:	f7ff ff83 	bl	8000310 <LL_GPIO_SetPinMode>
 800040a:	4b2e      	ldr	r3, [pc, #184]	; (80004c4 <gpio_config+0xe4>)
 800040c:	2201      	movs	r2, #1
 800040e:	2101      	movs	r1, #1
 8000410:	0018      	movs	r0, r3
 8000412:	f7ff ff7d 	bl	8000310 <LL_GPIO_SetPinMode>
 8000416:	4b2b      	ldr	r3, [pc, #172]	; (80004c4 <gpio_config+0xe4>)
 8000418:	2201      	movs	r2, #1
 800041a:	2102      	movs	r1, #2
 800041c:	0018      	movs	r0, r3
 800041e:	f7ff ff77 	bl	8000310 <LL_GPIO_SetPinMode>
 8000422:	4b28      	ldr	r3, [pc, #160]	; (80004c4 <gpio_config+0xe4>)
 8000424:	2201      	movs	r2, #1
 8000426:	2104      	movs	r1, #4
 8000428:	0018      	movs	r0, r3
 800042a:	f7ff ff71 	bl	8000310 <LL_GPIO_SetPinMode>
 800042e:	4b25      	ldr	r3, [pc, #148]	; (80004c4 <gpio_config+0xe4>)
 8000430:	2201      	movs	r2, #1
 8000432:	2108      	movs	r1, #8
 8000434:	0018      	movs	r0, r3
 8000436:	f7ff ff6b 	bl	8000310 <LL_GPIO_SetPinMode>
 800043a:	2380      	movs	r3, #128	; 0x80
 800043c:	029b      	lsls	r3, r3, #10
 800043e:	0018      	movs	r0, r3
 8000440:	f7ff ff50 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000444:	2390      	movs	r3, #144	; 0x90
 8000446:	05db      	lsls	r3, r3, #23
 8000448:	2200      	movs	r2, #0
 800044a:	2101      	movs	r1, #1
 800044c:	0018      	movs	r0, r3
 800044e:	f7ff ff5f 	bl	8000310 <LL_GPIO_SetPinMode>
 8000452:	2380      	movs	r3, #128	; 0x80
 8000454:	02db      	lsls	r3, r3, #11
 8000456:	0018      	movs	r0, r3
 8000458:	f7ff ff44 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 800045c:	4b1a      	ldr	r3, [pc, #104]	; (80004c8 <gpio_config+0xe8>)
 800045e:	2201      	movs	r2, #1
 8000460:	2101      	movs	r1, #1
 8000462:	0018      	movs	r0, r3
 8000464:	f7ff ff54 	bl	8000310 <LL_GPIO_SetPinMode>
 8000468:	4b17      	ldr	r3, [pc, #92]	; (80004c8 <gpio_config+0xe8>)
 800046a:	2201      	movs	r2, #1
 800046c:	2102      	movs	r1, #2
 800046e:	0018      	movs	r0, r3
 8000470:	f7ff ff4e 	bl	8000310 <LL_GPIO_SetPinMode>
 8000474:	4b14      	ldr	r3, [pc, #80]	; (80004c8 <gpio_config+0xe8>)
 8000476:	2201      	movs	r2, #1
 8000478:	2104      	movs	r1, #4
 800047a:	0018      	movs	r0, r3
 800047c:	f7ff ff48 	bl	8000310 <LL_GPIO_SetPinMode>
 8000480:	4b11      	ldr	r3, [pc, #68]	; (80004c8 <gpio_config+0xe8>)
 8000482:	2201      	movs	r2, #1
 8000484:	2108      	movs	r1, #8
 8000486:	0018      	movs	r0, r3
 8000488:	f7ff ff42 	bl	8000310 <LL_GPIO_SetPinMode>
 800048c:	4b0e      	ldr	r3, [pc, #56]	; (80004c8 <gpio_config+0xe8>)
 800048e:	2201      	movs	r2, #1
 8000490:	2110      	movs	r1, #16
 8000492:	0018      	movs	r0, r3
 8000494:	f7ff ff3c 	bl	8000310 <LL_GPIO_SetPinMode>
 8000498:	4b0b      	ldr	r3, [pc, #44]	; (80004c8 <gpio_config+0xe8>)
 800049a:	2201      	movs	r2, #1
 800049c:	2120      	movs	r1, #32
 800049e:	0018      	movs	r0, r3
 80004a0:	f7ff ff36 	bl	8000310 <LL_GPIO_SetPinMode>
 80004a4:	4b08      	ldr	r3, [pc, #32]	; (80004c8 <gpio_config+0xe8>)
 80004a6:	2201      	movs	r2, #1
 80004a8:	2140      	movs	r1, #64	; 0x40
 80004aa:	0018      	movs	r0, r3
 80004ac:	f7ff ff30 	bl	8000310 <LL_GPIO_SetPinMode>
 80004b0:	4b05      	ldr	r3, [pc, #20]	; (80004c8 <gpio_config+0xe8>)
 80004b2:	2201      	movs	r2, #1
 80004b4:	2180      	movs	r1, #128	; 0x80
 80004b6:	0018      	movs	r0, r3
 80004b8:	f7ff ff2a 	bl	8000310 <LL_GPIO_SetPinMode>
 80004bc:	46c0      	nop			; (mov r8, r8)
 80004be:	46bd      	mov	sp, r7
 80004c0:	bd80      	pop	{r7, pc}
 80004c2:	46c0      	nop			; (mov r8, r8)
 80004c4:	48000800 	.word	0x48000800
 80004c8:	48000400 	.word	0x48000400

080004cc <delay>:
 80004cc:	b580      	push	{r7, lr}
 80004ce:	4e02      	ldr	r6, [pc, #8]	; (80004d8 <delay+0xc>)
 80004d0:	3e01      	subs	r6, #1
 80004d2:	2e00      	cmp	r6, #0
 80004d4:	d1fc      	bne.n	80004d0 <delay+0x4>
 80004d6:	bd80      	pop	{r7, pc}
 80004d8:	00002ee0 	.word	0x00002ee0
 80004dc:	46c0      	nop			; (mov r8, r8)
	...

080004e0 <symbols>:
 80004e0:	b580      	push	{r7, lr}
 80004e2:	b084      	sub	sp, #16
 80004e4:	af00      	add	r7, sp, #0
 80004e6:	0002      	movs	r2, r0
 80004e8:	1dfb      	adds	r3, r7, #7
 80004ea:	701a      	strb	r2, [r3, #0]
 80004ec:	2300      	movs	r3, #0
 80004ee:	60fb      	str	r3, [r7, #12]
 80004f0:	1dfb      	adds	r3, r7, #7
 80004f2:	781b      	ldrb	r3, [r3, #0]
 80004f4:	3b21      	subs	r3, #33	; 0x21
 80004f6:	2b59      	cmp	r3, #89	; 0x59
 80004f8:	d852      	bhi.n	80005a0 <symbols+0xc0>
 80004fa:	009a      	lsls	r2, r3, #2
 80004fc:	4b2c      	ldr	r3, [pc, #176]	; (80005b0 <symbols+0xd0>)
 80004fe:	18d3      	adds	r3, r2, r3
 8000500:	681b      	ldr	r3, [r3, #0]
 8000502:	469f      	mov	pc, r3
 8000504:	2377      	movs	r3, #119	; 0x77
 8000506:	60fb      	str	r3, [r7, #12]
 8000508:	e04d      	b.n	80005a6 <symbols+0xc6>
 800050a:	237c      	movs	r3, #124	; 0x7c
 800050c:	60fb      	str	r3, [r7, #12]
 800050e:	e04a      	b.n	80005a6 <symbols+0xc6>
 8000510:	2339      	movs	r3, #57	; 0x39
 8000512:	60fb      	str	r3, [r7, #12]
 8000514:	e047      	b.n	80005a6 <symbols+0xc6>
 8000516:	235e      	movs	r3, #94	; 0x5e
 8000518:	60fb      	str	r3, [r7, #12]
 800051a:	e044      	b.n	80005a6 <symbols+0xc6>
 800051c:	2379      	movs	r3, #121	; 0x79
 800051e:	60fb      	str	r3, [r7, #12]
 8000520:	e041      	b.n	80005a6 <symbols+0xc6>
 8000522:	2371      	movs	r3, #113	; 0x71
 8000524:	60fb      	str	r3, [r7, #12]
 8000526:	e03e      	b.n	80005a6 <symbols+0xc6>
 8000528:	237d      	movs	r3, #125	; 0x7d
 800052a:	60fb      	str	r3, [r7, #12]
 800052c:	e03b      	b.n	80005a6 <symbols+0xc6>
 800052e:	2376      	movs	r3, #118	; 0x76
 8000530:	60fb      	str	r3, [r7, #12]
 8000532:	e038      	b.n	80005a6 <symbols+0xc6>
 8000534:	2306      	movs	r3, #6
 8000536:	60fb      	str	r3, [r7, #12]
 8000538:	e035      	b.n	80005a6 <symbols+0xc6>
 800053a:	230e      	movs	r3, #14
 800053c:	60fb      	str	r3, [r7, #12]
 800053e:	e032      	b.n	80005a6 <symbols+0xc6>
 8000540:	2338      	movs	r3, #56	; 0x38
 8000542:	60fb      	str	r3, [r7, #12]
 8000544:	e02f      	b.n	80005a6 <symbols+0xc6>
 8000546:	2354      	movs	r3, #84	; 0x54
 8000548:	60fb      	str	r3, [r7, #12]
 800054a:	e02c      	b.n	80005a6 <symbols+0xc6>
 800054c:	233f      	movs	r3, #63	; 0x3f
 800054e:	60fb      	str	r3, [r7, #12]
 8000550:	e029      	b.n	80005a6 <symbols+0xc6>
 8000552:	2373      	movs	r3, #115	; 0x73
 8000554:	60fb      	str	r3, [r7, #12]
 8000556:	e026      	b.n	80005a6 <symbols+0xc6>
 8000558:	236d      	movs	r3, #109	; 0x6d
 800055a:	60fb      	str	r3, [r7, #12]
 800055c:	e023      	b.n	80005a6 <symbols+0xc6>
 800055e:	233e      	movs	r3, #62	; 0x3e
 8000560:	60fb      	str	r3, [r7, #12]
 8000562:	e020      	b.n	80005a6 <symbols+0xc6>
 8000564:	235b      	movs	r3, #91	; 0x5b
 8000566:	60fb      	str	r3, [r7, #12]
 8000568:	e01d      	b.n	80005a6 <symbols+0xc6>
 800056a:	2367      	movs	r3, #103	; 0x67
 800056c:	60fb      	str	r3, [r7, #12]
 800056e:	e01a      	b.n	80005a6 <symbols+0xc6>
 8000570:	2350      	movs	r3, #80	; 0x50
 8000572:	60fb      	str	r3, [r7, #12]
 8000574:	e017      	b.n	80005a6 <symbols+0xc6>
 8000576:	2378      	movs	r3, #120	; 0x78
 8000578:	60fb      	str	r3, [r7, #12]
 800057a:	e014      	b.n	80005a6 <symbols+0xc6>
 800057c:	236e      	movs	r3, #110	; 0x6e
 800057e:	60fb      	str	r3, [r7, #12]
 8000580:	e011      	b.n	80005a6 <symbols+0xc6>
 8000582:	2380      	movs	r3, #128	; 0x80
 8000584:	60fb      	str	r3, [r7, #12]
 8000586:	e00e      	b.n	80005a6 <symbols+0xc6>
 8000588:	2386      	movs	r3, #134	; 0x86
 800058a:	60fb      	str	r3, [r7, #12]
 800058c:	e00b      	b.n	80005a6 <symbols+0xc6>
 800058e:	23a7      	movs	r3, #167	; 0xa7
 8000590:	60fb      	str	r3, [r7, #12]
 8000592:	e008      	b.n	80005a6 <symbols+0xc6>
 8000594:	2308      	movs	r3, #8
 8000596:	60fb      	str	r3, [r7, #12]
 8000598:	e005      	b.n	80005a6 <symbols+0xc6>
 800059a:	2340      	movs	r3, #64	; 0x40
 800059c:	60fb      	str	r3, [r7, #12]
 800059e:	e002      	b.n	80005a6 <symbols+0xc6>
 80005a0:	2300      	movs	r3, #0
 80005a2:	60fb      	str	r3, [r7, #12]
 80005a4:	46c0      	nop			; (mov r8, r8)
 80005a6:	68fb      	ldr	r3, [r7, #12]
 80005a8:	0018      	movs	r0, r3
 80005aa:	46bd      	mov	sp, r7
 80005ac:	b004      	add	sp, #16
 80005ae:	bd80      	pop	{r7, pc}
 80005b0:	08000c48 	.word	0x08000c48

080005b4 <mask_indicator>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	b082      	sub	sp, #8
 80005b8:	af00      	add	r7, sp, #0
 80005ba:	6078      	str	r0, [r7, #4]
 80005bc:	687b      	ldr	r3, [r7, #4]
 80005be:	09db      	lsrs	r3, r3, #7
 80005c0:	2201      	movs	r2, #1
 80005c2:	4013      	ands	r3, r2
 80005c4:	01da      	lsls	r2, r3, #7
 80005c6:	687b      	ldr	r3, [r7, #4]
 80005c8:	099b      	lsrs	r3, r3, #6
 80005ca:	2101      	movs	r1, #1
 80005cc:	400b      	ands	r3, r1
 80005ce:	019b      	lsls	r3, r3, #6
 80005d0:	431a      	orrs	r2, r3
 80005d2:	687b      	ldr	r3, [r7, #4]
 80005d4:	095b      	lsrs	r3, r3, #5
 80005d6:	2101      	movs	r1, #1
 80005d8:	400b      	ands	r3, r1
 80005da:	015b      	lsls	r3, r3, #5
 80005dc:	431a      	orrs	r2, r3
 80005de:	687b      	ldr	r3, [r7, #4]
 80005e0:	091b      	lsrs	r3, r3, #4
 80005e2:	2101      	movs	r1, #1
 80005e4:	400b      	ands	r3, r1
 80005e6:	011b      	lsls	r3, r3, #4
 80005e8:	431a      	orrs	r2, r3
 80005ea:	687b      	ldr	r3, [r7, #4]
 80005ec:	08db      	lsrs	r3, r3, #3
 80005ee:	2101      	movs	r1, #1
 80005f0:	400b      	ands	r3, r1
 80005f2:	00db      	lsls	r3, r3, #3
 80005f4:	431a      	orrs	r2, r3
 80005f6:	687b      	ldr	r3, [r7, #4]
 80005f8:	089b      	lsrs	r3, r3, #2
 80005fa:	2101      	movs	r1, #1
 80005fc:	400b      	ands	r3, r1
 80005fe:	009b      	lsls	r3, r3, #2
 8000600:	431a      	orrs	r2, r3
 8000602:	687b      	ldr	r3, [r7, #4]
 8000604:	085b      	lsrs	r3, r3, #1
 8000606:	2101      	movs	r1, #1
 8000608:	400b      	ands	r3, r1
 800060a:	005b      	lsls	r3, r3, #1
 800060c:	431a      	orrs	r2, r3
 800060e:	687b      	ldr	r3, [r7, #4]
 8000610:	2101      	movs	r1, #1
 8000612:	400b      	ands	r3, r1
 8000614:	4313      	orrs	r3, r2
 8000616:	0018      	movs	r0, r3
 8000618:	46bd      	mov	sp, r7
 800061a:	b002      	add	sp, #8
 800061c:	bd80      	pop	{r7, pc}
	...

08000620 <dynamic_text>:
 8000620:	b590      	push	{r4, r7, lr}
 8000622:	b089      	sub	sp, #36	; 0x24
 8000624:	af00      	add	r7, sp, #0
 8000626:	6078      	str	r0, [r7, #4]
 8000628:	231f      	movs	r3, #31
 800062a:	18fb      	adds	r3, r7, r3
 800062c:	687a      	ldr	r2, [r7, #4]
 800062e:	7812      	ldrb	r2, [r2, #0]
 8000630:	701a      	strb	r2, [r3, #0]
 8000632:	2300      	movs	r3, #0
 8000634:	61bb      	str	r3, [r7, #24]
 8000636:	2300      	movs	r3, #0
 8000638:	617b      	str	r3, [r7, #20]
 800063a:	e05f      	b.n	80006fc <dynamic_text+0xdc>
 800063c:	2300      	movs	r3, #0
 800063e:	613b      	str	r3, [r7, #16]
 8000640:	e03a      	b.n	80006b8 <dynamic_text+0x98>
 8000642:	69bb      	ldr	r3, [r7, #24]
 8000644:	60fb      	str	r3, [r7, #12]
 8000646:	2300      	movs	r3, #0
 8000648:	60bb      	str	r3, [r7, #8]
 800064a:	e02f      	b.n	80006ac <dynamic_text+0x8c>
 800064c:	687a      	ldr	r2, [r7, #4]
 800064e:	68fb      	ldr	r3, [r7, #12]
 8000650:	18d2      	adds	r2, r2, r3
 8000652:	241f      	movs	r4, #31
 8000654:	193b      	adds	r3, r7, r4
 8000656:	7812      	ldrb	r2, [r2, #0]
 8000658:	701a      	strb	r2, [r3, #0]
 800065a:	200f      	movs	r0, #15
 800065c:	f7ff ffaa 	bl	80005b4 <mask_indicator>
 8000660:	0003      	movs	r3, r0
 8000662:	4a2b      	ldr	r2, [pc, #172]	; (8000710 <dynamic_text+0xf0>)
 8000664:	0019      	movs	r1, r3
 8000666:	0010      	movs	r0, r2
 8000668:	f7ff fe6e 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800066c:	2201      	movs	r2, #1
 800066e:	68bb      	ldr	r3, [r7, #8]
 8000670:	409a      	lsls	r2, r3
 8000672:	0013      	movs	r3, r2
 8000674:	0018      	movs	r0, r3
 8000676:	f7ff ff9d 	bl	80005b4 <mask_indicator>
 800067a:	0003      	movs	r3, r0
 800067c:	4a24      	ldr	r2, [pc, #144]	; (8000710 <dynamic_text+0xf0>)
 800067e:	0019      	movs	r1, r3
 8000680:	0010      	movs	r0, r2
 8000682:	f7ff fe6d 	bl	8000360 <LL_GPIO_ResetOutputPin>
 8000686:	193b      	adds	r3, r7, r4
 8000688:	781b      	ldrb	r3, [r3, #0]
 800068a:	0018      	movs	r0, r3
 800068c:	f7ff ff28 	bl	80004e0 <symbols>
 8000690:	0003      	movs	r3, r0
 8000692:	4a20      	ldr	r2, [pc, #128]	; (8000714 <dynamic_text+0xf4>)
 8000694:	0019      	movs	r1, r3
 8000696:	0010      	movs	r0, r2
 8000698:	f7ff fe56 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800069c:	f7ff ff16 	bl	80004cc <delay>
 80006a0:	68fb      	ldr	r3, [r7, #12]
 80006a2:	3b01      	subs	r3, #1
 80006a4:	60fb      	str	r3, [r7, #12]
 80006a6:	68bb      	ldr	r3, [r7, #8]
 80006a8:	3301      	adds	r3, #1
 80006aa:	60bb      	str	r3, [r7, #8]
 80006ac:	68bb      	ldr	r3, [r7, #8]
 80006ae:	2b03      	cmp	r3, #3
 80006b0:	d9cc      	bls.n	800064c <dynamic_text+0x2c>
 80006b2:	693b      	ldr	r3, [r7, #16]
 80006b4:	3301      	adds	r3, #1
 80006b6:	613b      	str	r3, [r7, #16]
 80006b8:	693b      	ldr	r3, [r7, #16]
 80006ba:	2b31      	cmp	r3, #49	; 0x31
 80006bc:	ddc1      	ble.n	8000642 <dynamic_text+0x22>
 80006be:	69bb      	ldr	r3, [r7, #24]
 80006c0:	1c5a      	adds	r2, r3, #1
 80006c2:	61ba      	str	r2, [r7, #24]
 80006c4:	687a      	ldr	r2, [r7, #4]
 80006c6:	18d2      	adds	r2, r2, r3
 80006c8:	211f      	movs	r1, #31
 80006ca:	187b      	adds	r3, r7, r1
 80006cc:	7812      	ldrb	r2, [r2, #0]
 80006ce:	701a      	strb	r2, [r3, #0]
 80006d0:	187b      	adds	r3, r7, r1
 80006d2:	781b      	ldrb	r3, [r3, #0]
 80006d4:	2b00      	cmp	r3, #0
 80006d6:	d002      	beq.n	80006de <dynamic_text+0xbe>
 80006d8:	697b      	ldr	r3, [r7, #20]
 80006da:	2b00      	cmp	r3, #0
 80006dc:	d00e      	beq.n	80006fc <dynamic_text+0xdc>
 80006de:	697b      	ldr	r3, [r7, #20]
 80006e0:	2b01      	cmp	r3, #1
 80006e2:	d807      	bhi.n	80006f4 <dynamic_text+0xd4>
 80006e4:	231f      	movs	r3, #31
 80006e6:	18fb      	adds	r3, r7, r3
 80006e8:	2220      	movs	r2, #32
 80006ea:	701a      	strb	r2, [r3, #0]
 80006ec:	697b      	ldr	r3, [r7, #20]
 80006ee:	3301      	adds	r3, #1
 80006f0:	617b      	str	r3, [r7, #20]
 80006f2:	e003      	b.n	80006fc <dynamic_text+0xdc>
 80006f4:	231f      	movs	r3, #31
 80006f6:	18fb      	adds	r3, r7, r3
 80006f8:	2200      	movs	r2, #0
 80006fa:	701a      	strb	r2, [r3, #0]
 80006fc:	231f      	movs	r3, #31
 80006fe:	18fb      	adds	r3, r7, r3
 8000700:	781b      	ldrb	r3, [r3, #0]
 8000702:	2b00      	cmp	r3, #0
 8000704:	d19a      	bne.n	800063c <dynamic_text+0x1c>
 8000706:	46c0      	nop			; (mov r8, r8)
 8000708:	46bd      	mov	sp, r7
 800070a:	b009      	add	sp, #36	; 0x24
 800070c:	bd90      	pop	{r4, r7, pc}
 800070e:	46c0      	nop			; (mov r8, r8)
 8000710:	48000800 	.word	0x48000800
 8000714:	48000400 	.word	0x48000400

08000718 <text>:
 8000718:	b5b0      	push	{r4, r5, r7, lr}
 800071a:	b086      	sub	sp, #24
 800071c:	af00      	add	r7, sp, #0
 800071e:	6078      	str	r0, [r7, #4]
 8000720:	2300      	movs	r3, #0
 8000722:	60fb      	str	r3, [r7, #12]
 8000724:	2300      	movs	r3, #0
 8000726:	617b      	str	r3, [r7, #20]
 8000728:	e051      	b.n	80007ce <text+0xb6>
 800072a:	2313      	movs	r3, #19
 800072c:	18fb      	adds	r3, r7, r3
 800072e:	687a      	ldr	r2, [r7, #4]
 8000730:	7812      	ldrb	r2, [r2, #0]
 8000732:	701a      	strb	r2, [r3, #0]
 8000734:	2312      	movs	r3, #18
 8000736:	18fb      	adds	r3, r7, r3
 8000738:	2203      	movs	r2, #3
 800073a:	701a      	strb	r2, [r3, #0]
 800073c:	2311      	movs	r3, #17
 800073e:	18fb      	adds	r3, r7, r3
 8000740:	2200      	movs	r2, #0
 8000742:	701a      	strb	r2, [r3, #0]
 8000744:	e039      	b.n	80007ba <text+0xa2>
 8000746:	2411      	movs	r4, #17
 8000748:	193b      	adds	r3, r7, r4
 800074a:	781b      	ldrb	r3, [r3, #0]
 800074c:	687a      	ldr	r2, [r7, #4]
 800074e:	18d2      	adds	r2, r2, r3
 8000750:	2113      	movs	r1, #19
 8000752:	187b      	adds	r3, r7, r1
 8000754:	7812      	ldrb	r2, [r2, #0]
 8000756:	701a      	strb	r2, [r3, #0]
 8000758:	187b      	adds	r3, r7, r1
 800075a:	781b      	ldrb	r3, [r3, #0]
 800075c:	0018      	movs	r0, r3
 800075e:	f7ff febf 	bl	80004e0 <symbols>
 8000762:	0003      	movs	r3, r0
 8000764:	60fb      	str	r3, [r7, #12]
 8000766:	200f      	movs	r0, #15
 8000768:	f7ff ff24 	bl	80005b4 <mask_indicator>
 800076c:	0003      	movs	r3, r0
 800076e:	4a1b      	ldr	r2, [pc, #108]	; (80007dc <text+0xc4>)
 8000770:	0019      	movs	r1, r3
 8000772:	0010      	movs	r0, r2
 8000774:	f7ff fde8 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000778:	2512      	movs	r5, #18
 800077a:	197b      	adds	r3, r7, r5
 800077c:	781b      	ldrb	r3, [r3, #0]
 800077e:	2201      	movs	r2, #1
 8000780:	409a      	lsls	r2, r3
 8000782:	0013      	movs	r3, r2
 8000784:	0018      	movs	r0, r3
 8000786:	f7ff ff15 	bl	80005b4 <mask_indicator>
 800078a:	0003      	movs	r3, r0
 800078c:	4a13      	ldr	r2, [pc, #76]	; (80007dc <text+0xc4>)
 800078e:	0019      	movs	r1, r3
 8000790:	0010      	movs	r0, r2
 8000792:	f7ff fde5 	bl	8000360 <LL_GPIO_ResetOutputPin>
 8000796:	68fb      	ldr	r3, [r7, #12]
 8000798:	4a11      	ldr	r2, [pc, #68]	; (80007e0 <text+0xc8>)
 800079a:	0019      	movs	r1, r3
 800079c:	0010      	movs	r0, r2
 800079e:	f7ff fdd3 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80007a2:	f7ff fe93 	bl	80004cc <delay>
 80007a6:	197b      	adds	r3, r7, r5
 80007a8:	781a      	ldrb	r2, [r3, #0]
 80007aa:	197b      	adds	r3, r7, r5
 80007ac:	3a01      	subs	r2, #1
 80007ae:	701a      	strb	r2, [r3, #0]
 80007b0:	193b      	adds	r3, r7, r4
 80007b2:	781a      	ldrb	r2, [r3, #0]
 80007b4:	193b      	adds	r3, r7, r4
 80007b6:	3201      	adds	r2, #1
 80007b8:	701a      	strb	r2, [r3, #0]
 80007ba:	2313      	movs	r3, #19
 80007bc:	18fb      	adds	r3, r7, r3
 80007be:	781b      	ldrb	r3, [r3, #0]
 80007c0:	2b00      	cmp	r3, #0
 80007c2:	d1c0      	bne.n	8000746 <text+0x2e>
 80007c4:	f7ff fe82 	bl	80004cc <delay>
 80007c8:	697b      	ldr	r3, [r7, #20]
 80007ca:	3301      	adds	r3, #1
 80007cc:	617b      	str	r3, [r7, #20]
 80007ce:	697b      	ldr	r3, [r7, #20]
 80007d0:	2b63      	cmp	r3, #99	; 0x63
 80007d2:	d9aa      	bls.n	800072a <text+0x12>
 80007d4:	46c0      	nop			; (mov r8, r8)
 80007d6:	46bd      	mov	sp, r7
 80007d8:	b006      	add	sp, #24
 80007da:	bdb0      	pop	{r4, r5, r7, pc}
 80007dc:	48000800 	.word	0x48000800
 80007e0:	48000400 	.word	0x48000400

080007e4 <dyn_display>:
 80007e4:	b580      	push	{r7, lr}
 80007e6:	b094      	sub	sp, #80	; 0x50
 80007e8:	af00      	add	r7, sp, #0
 80007ea:	6078      	str	r0, [r7, #4]
 80007ec:	2300      	movs	r3, #0
 80007ee:	64bb      	str	r3, [r7, #72]	; 0x48
 80007f0:	2308      	movs	r3, #8
 80007f2:	18fa      	adds	r2, r7, r3
 80007f4:	4b2c      	ldr	r3, [pc, #176]	; (80008a8 <dyn_display+0xc4>)
 80007f6:	0010      	movs	r0, r2
 80007f8:	0019      	movs	r1, r3
 80007fa:	2340      	movs	r3, #64	; 0x40
 80007fc:	001a      	movs	r2, r3
 80007fe:	f000 f8f5 	bl	80009ec <memcpy>
 8000802:	2300      	movs	r3, #0
 8000804:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000806:	e045      	b.n	8000894 <dyn_display+0xb0>
 8000808:	200f      	movs	r0, #15
 800080a:	f7ff fed3 	bl	80005b4 <mask_indicator>
 800080e:	0003      	movs	r3, r0
 8000810:	4a26      	ldr	r2, [pc, #152]	; (80008ac <dyn_display+0xc8>)
 8000812:	0019      	movs	r1, r3
 8000814:	0010      	movs	r0, r2
 8000816:	f7ff fd97 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800081a:	4b25      	ldr	r3, [pc, #148]	; (80008b0 <dyn_display+0xcc>)
 800081c:	881b      	ldrh	r3, [r3, #0]
 800081e:	001a      	movs	r2, r3
 8000820:	2301      	movs	r3, #1
 8000822:	4093      	lsls	r3, r2
 8000824:	0018      	movs	r0, r3
 8000826:	f7ff fec5 	bl	80005b4 <mask_indicator>
 800082a:	0003      	movs	r3, r0
 800082c:	4a1f      	ldr	r2, [pc, #124]	; (80008ac <dyn_display+0xc8>)
 800082e:	0019      	movs	r1, r3
 8000830:	0010      	movs	r0, r2
 8000832:	f7ff fd95 	bl	8000360 <LL_GPIO_ResetOutputPin>
 8000836:	4b1e      	ldr	r3, [pc, #120]	; (80008b0 <dyn_display+0xcc>)
 8000838:	881b      	ldrh	r3, [r3, #0]
 800083a:	009b      	lsls	r3, r3, #2
 800083c:	220f      	movs	r2, #15
 800083e:	409a      	lsls	r2, r3
 8000840:	0013      	movs	r3, r2
 8000842:	001a      	movs	r2, r3
 8000844:	687b      	ldr	r3, [r7, #4]
 8000846:	401a      	ands	r2, r3
 8000848:	4b19      	ldr	r3, [pc, #100]	; (80008b0 <dyn_display+0xcc>)
 800084a:	881b      	ldrh	r3, [r3, #0]
 800084c:	009b      	lsls	r3, r3, #2
 800084e:	40da      	lsrs	r2, r3
 8000850:	2308      	movs	r3, #8
 8000852:	18fb      	adds	r3, r7, r3
 8000854:	0092      	lsls	r2, r2, #2
 8000856:	58d3      	ldr	r3, [r2, r3]
 8000858:	64bb      	str	r3, [r7, #72]	; 0x48
 800085a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 800085c:	0018      	movs	r0, r3
 800085e:	f7ff fea9 	bl	80005b4 <mask_indicator>
 8000862:	0003      	movs	r3, r0
 8000864:	4a13      	ldr	r2, [pc, #76]	; (80008b4 <dyn_display+0xd0>)
 8000866:	0019      	movs	r1, r3
 8000868:	0010      	movs	r0, r2
 800086a:	f7ff fd6d 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800086e:	4b10      	ldr	r3, [pc, #64]	; (80008b0 <dyn_display+0xcc>)
 8000870:	881b      	ldrh	r3, [r3, #0]
 8000872:	3301      	adds	r3, #1
 8000874:	4a10      	ldr	r2, [pc, #64]	; (80008b8 <dyn_display+0xd4>)
 8000876:	4013      	ands	r3, r2
 8000878:	d504      	bpl.n	8000884 <dyn_display+0xa0>
 800087a:	3b01      	subs	r3, #1
 800087c:	2204      	movs	r2, #4
 800087e:	4252      	negs	r2, r2
 8000880:	4313      	orrs	r3, r2
 8000882:	3301      	adds	r3, #1
 8000884:	b29a      	uxth	r2, r3
 8000886:	4b0a      	ldr	r3, [pc, #40]	; (80008b0 <dyn_display+0xcc>)
 8000888:	801a      	strh	r2, [r3, #0]
 800088a:	f7ff fe1f 	bl	80004cc <delay>
 800088e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8000890:	3301      	adds	r3, #1
 8000892:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000894:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8000896:	23fa      	movs	r3, #250	; 0xfa
 8000898:	005b      	lsls	r3, r3, #1
 800089a:	429a      	cmp	r2, r3
 800089c:	d3b4      	bcc.n	8000808 <dyn_display+0x24>
 800089e:	46c0      	nop			; (mov r8, r8)
 80008a0:	46bd      	mov	sp, r7
 80008a2:	b014      	add	sp, #80	; 0x50
 80008a4:	bd80      	pop	{r7, pc}
 80008a6:	46c0      	nop			; (mov r8, r8)
 80008a8:	08000bcc 	.word	0x08000bcc
 80008ac:	48000800 	.word	0x48000800
 80008b0:	20000450 	.word	0x20000450
 80008b4:	48000400 	.word	0x48000400
 80008b8:	80000003 	.word	0x80000003

080008bc <main>:
 80008bc:	b580      	push	{r7, lr}
 80008be:	af00      	add	r7, sp, #0
 80008c0:	f7ff fd5a 	bl	8000378 <rcc_config>
 80008c4:	f7ff fd8c 	bl	80003e0 <gpio_config>
 80008c8:	4b08      	ldr	r3, [pc, #32]	; (80008ec <main+0x30>)
 80008ca:	0018      	movs	r0, r3
 80008cc:	f7ff ff8a 	bl	80007e4 <dyn_display>
 80008d0:	4b07      	ldr	r3, [pc, #28]	; (80008f0 <main+0x34>)
 80008d2:	0018      	movs	r0, r3
 80008d4:	f7ff fea4 	bl	8000620 <dynamic_text>
 80008d8:	4b06      	ldr	r3, [pc, #24]	; (80008f4 <main+0x38>)
 80008da:	0018      	movs	r0, r3
 80008dc:	f7ff ff1c 	bl	8000718 <text>
 80008e0:	4b05      	ldr	r3, [pc, #20]	; (80008f8 <main+0x3c>)
 80008e2:	0018      	movs	r0, r3
 80008e4:	f7ff fe9c 	bl	8000620 <dynamic_text>
 80008e8:	e7ee      	b.n	80008c8 <main+0xc>
 80008ea:	46c0      	nop			; (mov r8, r8)
 80008ec:	00002021 	.word	0x00002021
 80008f0:	08000c0c 	.word	0x08000c0c
 80008f4:	08000c30 	.word	0x08000c30
 80008f8:	08000c34 	.word	0x08000c34

080008fc <SystemInit>:
 80008fc:	b580      	push	{r7, lr}
 80008fe:	af00      	add	r7, sp, #0
 8000900:	4b1a      	ldr	r3, [pc, #104]	; (800096c <SystemInit+0x70>)
 8000902:	681a      	ldr	r2, [r3, #0]
 8000904:	4b19      	ldr	r3, [pc, #100]	; (800096c <SystemInit+0x70>)
 8000906:	2101      	movs	r1, #1
 8000908:	430a      	orrs	r2, r1
 800090a:	601a      	str	r2, [r3, #0]
 800090c:	4b17      	ldr	r3, [pc, #92]	; (800096c <SystemInit+0x70>)
 800090e:	685a      	ldr	r2, [r3, #4]
 8000910:	4b16      	ldr	r3, [pc, #88]	; (800096c <SystemInit+0x70>)
 8000912:	4917      	ldr	r1, [pc, #92]	; (8000970 <SystemInit+0x74>)
 8000914:	400a      	ands	r2, r1
 8000916:	605a      	str	r2, [r3, #4]
 8000918:	4b14      	ldr	r3, [pc, #80]	; (800096c <SystemInit+0x70>)
 800091a:	681a      	ldr	r2, [r3, #0]
 800091c:	4b13      	ldr	r3, [pc, #76]	; (800096c <SystemInit+0x70>)
 800091e:	4915      	ldr	r1, [pc, #84]	; (8000974 <SystemInit+0x78>)
 8000920:	400a      	ands	r2, r1
 8000922:	601a      	str	r2, [r3, #0]
 8000924:	4b11      	ldr	r3, [pc, #68]	; (800096c <SystemInit+0x70>)
 8000926:	681a      	ldr	r2, [r3, #0]
 8000928:	4b10      	ldr	r3, [pc, #64]	; (800096c <SystemInit+0x70>)
 800092a:	4913      	ldr	r1, [pc, #76]	; (8000978 <SystemInit+0x7c>)
 800092c:	400a      	ands	r2, r1
 800092e:	601a      	str	r2, [r3, #0]
 8000930:	4b0e      	ldr	r3, [pc, #56]	; (800096c <SystemInit+0x70>)
 8000932:	685a      	ldr	r2, [r3, #4]
 8000934:	4b0d      	ldr	r3, [pc, #52]	; (800096c <SystemInit+0x70>)
 8000936:	4911      	ldr	r1, [pc, #68]	; (800097c <SystemInit+0x80>)
 8000938:	400a      	ands	r2, r1
 800093a:	605a      	str	r2, [r3, #4]
 800093c:	4b0b      	ldr	r3, [pc, #44]	; (800096c <SystemInit+0x70>)
 800093e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000940:	4b0a      	ldr	r3, [pc, #40]	; (800096c <SystemInit+0x70>)
 8000942:	210f      	movs	r1, #15
 8000944:	438a      	bics	r2, r1
 8000946:	62da      	str	r2, [r3, #44]	; 0x2c
 8000948:	4b08      	ldr	r3, [pc, #32]	; (800096c <SystemInit+0x70>)
 800094a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800094c:	4b07      	ldr	r3, [pc, #28]	; (800096c <SystemInit+0x70>)
 800094e:	490c      	ldr	r1, [pc, #48]	; (8000980 <SystemInit+0x84>)
 8000950:	400a      	ands	r2, r1
 8000952:	631a      	str	r2, [r3, #48]	; 0x30
 8000954:	4b05      	ldr	r3, [pc, #20]	; (800096c <SystemInit+0x70>)
 8000956:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000958:	4b04      	ldr	r3, [pc, #16]	; (800096c <SystemInit+0x70>)
 800095a:	2101      	movs	r1, #1
 800095c:	438a      	bics	r2, r1
 800095e:	635a      	str	r2, [r3, #52]	; 0x34
 8000960:	4b02      	ldr	r3, [pc, #8]	; (800096c <SystemInit+0x70>)
 8000962:	2200      	movs	r2, #0
 8000964:	609a      	str	r2, [r3, #8]
 8000966:	46c0      	nop			; (mov r8, r8)
 8000968:	46bd      	mov	sp, r7
 800096a:	bd80      	pop	{r7, pc}
 800096c:	40021000 	.word	0x40021000
 8000970:	f8ffb80c 	.word	0xf8ffb80c
 8000974:	fef6ffff 	.word	0xfef6ffff
 8000978:	fffbffff 	.word	0xfffbffff
 800097c:	ffc0ffff 	.word	0xffc0ffff
 8000980:	fffffeac 	.word	0xfffffeac

08000984 <NMI_Handler>:
 8000984:	b580      	push	{r7, lr}
 8000986:	af00      	add	r7, sp, #0
 8000988:	46c0      	nop			; (mov r8, r8)
 800098a:	46bd      	mov	sp, r7
 800098c:	bd80      	pop	{r7, pc}

0800098e <HardFault_Handler>:
 800098e:	b580      	push	{r7, lr}
 8000990:	af00      	add	r7, sp, #0
 8000992:	e7fe      	b.n	8000992 <HardFault_Handler+0x4>

08000994 <SVC_Handler>:
 8000994:	b580      	push	{r7, lr}
 8000996:	af00      	add	r7, sp, #0
 8000998:	46c0      	nop			; (mov r8, r8)
 800099a:	46bd      	mov	sp, r7
 800099c:	bd80      	pop	{r7, pc}

0800099e <PendSV_Handler>:
 800099e:	b580      	push	{r7, lr}
 80009a0:	af00      	add	r7, sp, #0
 80009a2:	46c0      	nop			; (mov r8, r8)
 80009a4:	46bd      	mov	sp, r7
 80009a6:	bd80      	pop	{r7, pc}

080009a8 <__libc_init_array>:
 80009a8:	b570      	push	{r4, r5, r6, lr}
 80009aa:	4d0c      	ldr	r5, [pc, #48]	; (80009dc <__libc_init_array+0x34>)
 80009ac:	4e0c      	ldr	r6, [pc, #48]	; (80009e0 <__libc_init_array+0x38>)
 80009ae:	1b76      	subs	r6, r6, r5
 80009b0:	10b6      	asrs	r6, r6, #2
 80009b2:	d005      	beq.n	80009c0 <__libc_init_array+0x18>
 80009b4:	2400      	movs	r4, #0
 80009b6:	cd08      	ldmia	r5!, {r3}
 80009b8:	3401      	adds	r4, #1
 80009ba:	4798      	blx	r3
 80009bc:	42a6      	cmp	r6, r4
 80009be:	d1fa      	bne.n	80009b6 <__libc_init_array+0xe>
 80009c0:	f000 f8e8 	bl	8000b94 <_init>
 80009c4:	4d07      	ldr	r5, [pc, #28]	; (80009e4 <__libc_init_array+0x3c>)
 80009c6:	4e08      	ldr	r6, [pc, #32]	; (80009e8 <__libc_init_array+0x40>)
 80009c8:	1b76      	subs	r6, r6, r5
 80009ca:	10b6      	asrs	r6, r6, #2
 80009cc:	d005      	beq.n	80009da <__libc_init_array+0x32>
 80009ce:	2400      	movs	r4, #0
 80009d0:	cd08      	ldmia	r5!, {r3}
 80009d2:	3401      	adds	r4, #1
 80009d4:	4798      	blx	r3
 80009d6:	42a6      	cmp	r6, r4
 80009d8:	d1fa      	bne.n	80009d0 <__libc_init_array+0x28>
 80009da:	bd70      	pop	{r4, r5, r6, pc}
 80009dc:	08000db4 	.word	0x08000db4
 80009e0:	08000db4 	.word	0x08000db4
 80009e4:	08000db4 	.word	0x08000db4
 80009e8:	08000dbc 	.word	0x08000dbc

080009ec <memcpy>:
 80009ec:	b5f0      	push	{r4, r5, r6, r7, lr}
 80009ee:	46c6      	mov	lr, r8
 80009f0:	b500      	push	{lr}
 80009f2:	2a0f      	cmp	r2, #15
 80009f4:	d941      	bls.n	8000a7a <memcpy+0x8e>
 80009f6:	2703      	movs	r7, #3
 80009f8:	000d      	movs	r5, r1
 80009fa:	003e      	movs	r6, r7
 80009fc:	4305      	orrs	r5, r0
 80009fe:	000c      	movs	r4, r1
 8000a00:	0003      	movs	r3, r0
 8000a02:	402e      	ands	r6, r5
 8000a04:	422f      	tst	r7, r5
 8000a06:	d13d      	bne.n	8000a84 <memcpy+0x98>
 8000a08:	0015      	movs	r5, r2
 8000a0a:	3d10      	subs	r5, #16
 8000a0c:	092d      	lsrs	r5, r5, #4
 8000a0e:	46a8      	mov	r8, r5
 8000a10:	012d      	lsls	r5, r5, #4
 8000a12:	46ac      	mov	ip, r5
 8000a14:	4484      	add	ip, r0
 8000a16:	6827      	ldr	r7, [r4, #0]
 8000a18:	001d      	movs	r5, r3
 8000a1a:	601f      	str	r7, [r3, #0]
 8000a1c:	6867      	ldr	r7, [r4, #4]
 8000a1e:	605f      	str	r7, [r3, #4]
 8000a20:	68a7      	ldr	r7, [r4, #8]
 8000a22:	609f      	str	r7, [r3, #8]
 8000a24:	68e7      	ldr	r7, [r4, #12]
 8000a26:	3410      	adds	r4, #16
 8000a28:	60df      	str	r7, [r3, #12]
 8000a2a:	3310      	adds	r3, #16
 8000a2c:	4565      	cmp	r5, ip
 8000a2e:	d1f2      	bne.n	8000a16 <memcpy+0x2a>
 8000a30:	4645      	mov	r5, r8
 8000a32:	230f      	movs	r3, #15
 8000a34:	240c      	movs	r4, #12
 8000a36:	3501      	adds	r5, #1
 8000a38:	012d      	lsls	r5, r5, #4
 8000a3a:	1949      	adds	r1, r1, r5
 8000a3c:	4013      	ands	r3, r2
 8000a3e:	1945      	adds	r5, r0, r5
 8000a40:	4214      	tst	r4, r2
 8000a42:	d022      	beq.n	8000a8a <memcpy+0x9e>
 8000a44:	598c      	ldr	r4, [r1, r6]
 8000a46:	51ac      	str	r4, [r5, r6]
 8000a48:	3604      	adds	r6, #4
 8000a4a:	1b9c      	subs	r4, r3, r6
 8000a4c:	2c03      	cmp	r4, #3
 8000a4e:	d8f9      	bhi.n	8000a44 <memcpy+0x58>
 8000a50:	3b04      	subs	r3, #4
 8000a52:	089b      	lsrs	r3, r3, #2
 8000a54:	3301      	adds	r3, #1
 8000a56:	009b      	lsls	r3, r3, #2
 8000a58:	18ed      	adds	r5, r5, r3
 8000a5a:	18c9      	adds	r1, r1, r3
 8000a5c:	2303      	movs	r3, #3
 8000a5e:	401a      	ands	r2, r3
 8000a60:	1e56      	subs	r6, r2, #1
 8000a62:	2a00      	cmp	r2, #0
 8000a64:	d006      	beq.n	8000a74 <memcpy+0x88>
 8000a66:	2300      	movs	r3, #0
 8000a68:	5ccc      	ldrb	r4, [r1, r3]
 8000a6a:	001a      	movs	r2, r3
 8000a6c:	54ec      	strb	r4, [r5, r3]
 8000a6e:	3301      	adds	r3, #1
 8000a70:	4296      	cmp	r6, r2
 8000a72:	d1f9      	bne.n	8000a68 <memcpy+0x7c>
 8000a74:	bc80      	pop	{r7}
 8000a76:	46b8      	mov	r8, r7
 8000a78:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a7a:	0005      	movs	r5, r0
 8000a7c:	1e56      	subs	r6, r2, #1
 8000a7e:	2a00      	cmp	r2, #0
 8000a80:	d1f1      	bne.n	8000a66 <memcpy+0x7a>
 8000a82:	e7f7      	b.n	8000a74 <memcpy+0x88>
 8000a84:	0005      	movs	r5, r0
 8000a86:	1e56      	subs	r6, r2, #1
 8000a88:	e7ed      	b.n	8000a66 <memcpy+0x7a>
 8000a8a:	001a      	movs	r2, r3
 8000a8c:	e7f6      	b.n	8000a7c <memcpy+0x90>
 8000a8e:	46c0      	nop			; (mov r8, r8)

08000a90 <register_fini>:
 8000a90:	4b03      	ldr	r3, [pc, #12]	; (8000aa0 <register_fini+0x10>)
 8000a92:	b510      	push	{r4, lr}
 8000a94:	2b00      	cmp	r3, #0
 8000a96:	d002      	beq.n	8000a9e <register_fini+0xe>
 8000a98:	4802      	ldr	r0, [pc, #8]	; (8000aa4 <register_fini+0x14>)
 8000a9a:	f000 f805 	bl	8000aa8 <atexit>
 8000a9e:	bd10      	pop	{r4, pc}
 8000aa0:	00000000 	.word	0x00000000
 8000aa4:	08000ab9 	.word	0x08000ab9

08000aa8 <atexit>:
 8000aa8:	b510      	push	{r4, lr}
 8000aaa:	0001      	movs	r1, r0
 8000aac:	2300      	movs	r3, #0
 8000aae:	2200      	movs	r2, #0
 8000ab0:	2000      	movs	r0, #0
 8000ab2:	f000 f819 	bl	8000ae8 <__register_exitproc>
 8000ab6:	bd10      	pop	{r4, pc}

08000ab8 <__libc_fini_array>:
 8000ab8:	b570      	push	{r4, r5, r6, lr}
 8000aba:	4d07      	ldr	r5, [pc, #28]	; (8000ad8 <__libc_fini_array+0x20>)
 8000abc:	4c07      	ldr	r4, [pc, #28]	; (8000adc <__libc_fini_array+0x24>)
 8000abe:	1b64      	subs	r4, r4, r5
 8000ac0:	10a4      	asrs	r4, r4, #2
 8000ac2:	d005      	beq.n	8000ad0 <__libc_fini_array+0x18>
 8000ac4:	3c01      	subs	r4, #1
 8000ac6:	00a3      	lsls	r3, r4, #2
 8000ac8:	58eb      	ldr	r3, [r5, r3]
 8000aca:	4798      	blx	r3
 8000acc:	2c00      	cmp	r4, #0
 8000ace:	d1f9      	bne.n	8000ac4 <__libc_fini_array+0xc>
 8000ad0:	f000 f866 	bl	8000ba0 <_fini>
 8000ad4:	bd70      	pop	{r4, r5, r6, pc}
 8000ad6:	46c0      	nop			; (mov r8, r8)
 8000ad8:	08000dbc 	.word	0x08000dbc
 8000adc:	08000dc0 	.word	0x08000dc0

08000ae0 <__retarget_lock_acquire_recursive>:
 8000ae0:	4770      	bx	lr
 8000ae2:	46c0      	nop			; (mov r8, r8)

08000ae4 <__retarget_lock_release_recursive>:
 8000ae4:	4770      	bx	lr
 8000ae6:	46c0      	nop			; (mov r8, r8)

08000ae8 <__register_exitproc>:
 8000ae8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000aea:	46d6      	mov	lr, sl
 8000aec:	464f      	mov	r7, r9
 8000aee:	4646      	mov	r6, r8
 8000af0:	b5c0      	push	{r6, r7, lr}
 8000af2:	4f26      	ldr	r7, [pc, #152]	; (8000b8c <__register_exitproc+0xa4>)
 8000af4:	b082      	sub	sp, #8
 8000af6:	0006      	movs	r6, r0
 8000af8:	6838      	ldr	r0, [r7, #0]
 8000afa:	4692      	mov	sl, r2
 8000afc:	4698      	mov	r8, r3
 8000afe:	4689      	mov	r9, r1
 8000b00:	f7ff ffee 	bl	8000ae0 <__retarget_lock_acquire_recursive>
 8000b04:	4b22      	ldr	r3, [pc, #136]	; (8000b90 <__register_exitproc+0xa8>)
 8000b06:	681b      	ldr	r3, [r3, #0]
 8000b08:	9301      	str	r3, [sp, #4]
 8000b0a:	23a4      	movs	r3, #164	; 0xa4
 8000b0c:	9a01      	ldr	r2, [sp, #4]
 8000b0e:	005b      	lsls	r3, r3, #1
 8000b10:	58d5      	ldr	r5, [r2, r3]
 8000b12:	2d00      	cmp	r5, #0
 8000b14:	d02e      	beq.n	8000b74 <__register_exitproc+0x8c>
 8000b16:	686c      	ldr	r4, [r5, #4]
 8000b18:	2c1f      	cmp	r4, #31
 8000b1a:	dc30      	bgt.n	8000b7e <__register_exitproc+0x96>
 8000b1c:	2e00      	cmp	r6, #0
 8000b1e:	d10f      	bne.n	8000b40 <__register_exitproc+0x58>
 8000b20:	1c63      	adds	r3, r4, #1
 8000b22:	606b      	str	r3, [r5, #4]
 8000b24:	464b      	mov	r3, r9
 8000b26:	3402      	adds	r4, #2
 8000b28:	00a4      	lsls	r4, r4, #2
 8000b2a:	6838      	ldr	r0, [r7, #0]
 8000b2c:	5163      	str	r3, [r4, r5]
 8000b2e:	f7ff ffd9 	bl	8000ae4 <__retarget_lock_release_recursive>
 8000b32:	2000      	movs	r0, #0
 8000b34:	b002      	add	sp, #8
 8000b36:	bce0      	pop	{r5, r6, r7}
 8000b38:	46ba      	mov	sl, r7
 8000b3a:	46b1      	mov	r9, r6
 8000b3c:	46a8      	mov	r8, r5
 8000b3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b40:	2288      	movs	r2, #136	; 0x88
 8000b42:	4651      	mov	r1, sl
 8000b44:	0028      	movs	r0, r5
 8000b46:	00a3      	lsls	r3, r4, #2
 8000b48:	18eb      	adds	r3, r5, r3
 8000b4a:	5099      	str	r1, [r3, r2]
 8000b4c:	3a87      	subs	r2, #135	; 0x87
 8000b4e:	40a2      	lsls	r2, r4
 8000b50:	3089      	adds	r0, #137	; 0x89
 8000b52:	30ff      	adds	r0, #255	; 0xff
 8000b54:	6801      	ldr	r1, [r0, #0]
 8000b56:	4311      	orrs	r1, r2
 8000b58:	6001      	str	r1, [r0, #0]
 8000b5a:	2184      	movs	r1, #132	; 0x84
 8000b5c:	4640      	mov	r0, r8
 8000b5e:	0049      	lsls	r1, r1, #1
 8000b60:	5058      	str	r0, [r3, r1]
 8000b62:	2e02      	cmp	r6, #2
 8000b64:	d1dc      	bne.n	8000b20 <__register_exitproc+0x38>
 8000b66:	002b      	movs	r3, r5
 8000b68:	338d      	adds	r3, #141	; 0x8d
 8000b6a:	33ff      	adds	r3, #255	; 0xff
 8000b6c:	6819      	ldr	r1, [r3, #0]
 8000b6e:	430a      	orrs	r2, r1
 8000b70:	601a      	str	r2, [r3, #0]
 8000b72:	e7d5      	b.n	8000b20 <__register_exitproc+0x38>
 8000b74:	0015      	movs	r5, r2
 8000b76:	354d      	adds	r5, #77	; 0x4d
 8000b78:	35ff      	adds	r5, #255	; 0xff
 8000b7a:	50d5      	str	r5, [r2, r3]
 8000b7c:	e7cb      	b.n	8000b16 <__register_exitproc+0x2e>
 8000b7e:	6838      	ldr	r0, [r7, #0]
 8000b80:	f7ff ffb0 	bl	8000ae4 <__retarget_lock_release_recursive>
 8000b84:	2001      	movs	r0, #1
 8000b86:	4240      	negs	r0, r0
 8000b88:	e7d4      	b.n	8000b34 <__register_exitproc+0x4c>
 8000b8a:	46c0      	nop			; (mov r8, r8)
 8000b8c:	20000430 	.word	0x20000430
 8000b90:	08000db0 	.word	0x08000db0

08000b94 <_init>:
 8000b94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b96:	46c0      	nop			; (mov r8, r8)
 8000b98:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000b9a:	bc08      	pop	{r3}
 8000b9c:	469e      	mov	lr, r3
 8000b9e:	4770      	bx	lr

08000ba0 <_fini>:
 8000ba0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000ba2:	46c0      	nop			; (mov r8, r8)
 8000ba4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000ba6:	bc08      	pop	{r3}
 8000ba8:	469e      	mov	lr, r3
 8000baa:	4770      	bx	lr
