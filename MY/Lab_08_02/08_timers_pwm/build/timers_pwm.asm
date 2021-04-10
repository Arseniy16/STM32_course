
build/timers_pwm.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             0000097c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000001c  08000a3c  08000a3c  00010a3c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000a58  08000a58  00010a58  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000a60  08000a60  00010a60  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000a64  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000e98  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000e98  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00001096  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000367  00000000  00000000  000214f2  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000764  00000000  00000000  00021859  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000170  00000000  00000000  00021fbd  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000140  00000000  00000000  0002212d  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000088e  00000000  00000000  0002226d  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        0000086d  00000000  00000000  00022afb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00023368  2**0  CONTENTS, READONLY
 17 .debug_frame      00000658  00000000  00000000  000233b8  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000a24 	.word	0x08000a24

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
 8000104:	08000a24 	.word	0x08000a24

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
 8000132:	f000 fb7d 	bl	8000830 <SystemInit>
 8000136:	f000 fbd1 	bl	80008dc <__libc_init_array>
 800013a:	f000 fb6f 	bl	800081c <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000a64 	.word	0x08000a64
 8000150:	20000434 	.word	0x20000434
 8000154:	20000454 	.word	0x20000454

08000158 <ADC1_COMP_IRQHandler>:
 8000158:	e7fe      	b.n	8000158 <ADC1_COMP_IRQHandler>
	...

0800015c <NVIC_EnableIRQ>:
 800015c:	b580      	push	{r7, lr}
 800015e:	b082      	sub	sp, #8
 8000160:	af00      	add	r7, sp, #0
 8000162:	0002      	movs	r2, r0
 8000164:	1dfb      	adds	r3, r7, #7
 8000166:	701a      	strb	r2, [r3, #0]
 8000168:	1dfb      	adds	r3, r7, #7
 800016a:	781b      	ldrb	r3, [r3, #0]
 800016c:	001a      	movs	r2, r3
 800016e:	231f      	movs	r3, #31
 8000170:	401a      	ands	r2, r3
 8000172:	4b04      	ldr	r3, [pc, #16]	; (8000184 <NVIC_EnableIRQ+0x28>)
 8000174:	2101      	movs	r1, #1
 8000176:	4091      	lsls	r1, r2
 8000178:	000a      	movs	r2, r1
 800017a:	601a      	str	r2, [r3, #0]
 800017c:	46c0      	nop			; (mov r8, r8)
 800017e:	46bd      	mov	sp, r7
 8000180:	b002      	add	sp, #8
 8000182:	bd80      	pop	{r7, pc}
 8000184:	e000e100 	.word	0xe000e100

08000188 <NVIC_SetPriority>:
 8000188:	b590      	push	{r4, r7, lr}
 800018a:	b083      	sub	sp, #12
 800018c:	af00      	add	r7, sp, #0
 800018e:	0002      	movs	r2, r0
 8000190:	6039      	str	r1, [r7, #0]
 8000192:	1dfb      	adds	r3, r7, #7
 8000194:	701a      	strb	r2, [r3, #0]
 8000196:	1dfb      	adds	r3, r7, #7
 8000198:	781b      	ldrb	r3, [r3, #0]
 800019a:	2b7f      	cmp	r3, #127	; 0x7f
 800019c:	d932      	bls.n	8000204 <NVIC_SetPriority+0x7c>
 800019e:	4a2f      	ldr	r2, [pc, #188]	; (800025c <NVIC_SetPriority+0xd4>)
 80001a0:	1dfb      	adds	r3, r7, #7
 80001a2:	781b      	ldrb	r3, [r3, #0]
 80001a4:	0019      	movs	r1, r3
 80001a6:	230f      	movs	r3, #15
 80001a8:	400b      	ands	r3, r1
 80001aa:	3b08      	subs	r3, #8
 80001ac:	089b      	lsrs	r3, r3, #2
 80001ae:	3306      	adds	r3, #6
 80001b0:	009b      	lsls	r3, r3, #2
 80001b2:	18d3      	adds	r3, r2, r3
 80001b4:	3304      	adds	r3, #4
 80001b6:	681b      	ldr	r3, [r3, #0]
 80001b8:	1dfa      	adds	r2, r7, #7
 80001ba:	7812      	ldrb	r2, [r2, #0]
 80001bc:	0011      	movs	r1, r2
 80001be:	2203      	movs	r2, #3
 80001c0:	400a      	ands	r2, r1
 80001c2:	00d2      	lsls	r2, r2, #3
 80001c4:	21ff      	movs	r1, #255	; 0xff
 80001c6:	4091      	lsls	r1, r2
 80001c8:	000a      	movs	r2, r1
 80001ca:	43d2      	mvns	r2, r2
 80001cc:	401a      	ands	r2, r3
 80001ce:	0011      	movs	r1, r2
 80001d0:	683b      	ldr	r3, [r7, #0]
 80001d2:	019b      	lsls	r3, r3, #6
 80001d4:	22ff      	movs	r2, #255	; 0xff
 80001d6:	401a      	ands	r2, r3
 80001d8:	1dfb      	adds	r3, r7, #7
 80001da:	781b      	ldrb	r3, [r3, #0]
 80001dc:	0018      	movs	r0, r3
 80001de:	2303      	movs	r3, #3
 80001e0:	4003      	ands	r3, r0
 80001e2:	00db      	lsls	r3, r3, #3
 80001e4:	409a      	lsls	r2, r3
 80001e6:	481d      	ldr	r0, [pc, #116]	; (800025c <NVIC_SetPriority+0xd4>)
 80001e8:	1dfb      	adds	r3, r7, #7
 80001ea:	781b      	ldrb	r3, [r3, #0]
 80001ec:	001c      	movs	r4, r3
 80001ee:	230f      	movs	r3, #15
 80001f0:	4023      	ands	r3, r4
 80001f2:	3b08      	subs	r3, #8
 80001f4:	089b      	lsrs	r3, r3, #2
 80001f6:	430a      	orrs	r2, r1
 80001f8:	3306      	adds	r3, #6
 80001fa:	009b      	lsls	r3, r3, #2
 80001fc:	18c3      	adds	r3, r0, r3
 80001fe:	3304      	adds	r3, #4
 8000200:	601a      	str	r2, [r3, #0]
 8000202:	e027      	b.n	8000254 <NVIC_SetPriority+0xcc>
 8000204:	4a16      	ldr	r2, [pc, #88]	; (8000260 <NVIC_SetPriority+0xd8>)
 8000206:	1dfb      	adds	r3, r7, #7
 8000208:	781b      	ldrb	r3, [r3, #0]
 800020a:	b25b      	sxtb	r3, r3
 800020c:	089b      	lsrs	r3, r3, #2
 800020e:	33c0      	adds	r3, #192	; 0xc0
 8000210:	009b      	lsls	r3, r3, #2
 8000212:	589b      	ldr	r3, [r3, r2]
 8000214:	1dfa      	adds	r2, r7, #7
 8000216:	7812      	ldrb	r2, [r2, #0]
 8000218:	0011      	movs	r1, r2
 800021a:	2203      	movs	r2, #3
 800021c:	400a      	ands	r2, r1
 800021e:	00d2      	lsls	r2, r2, #3
 8000220:	21ff      	movs	r1, #255	; 0xff
 8000222:	4091      	lsls	r1, r2
 8000224:	000a      	movs	r2, r1
 8000226:	43d2      	mvns	r2, r2
 8000228:	401a      	ands	r2, r3
 800022a:	0011      	movs	r1, r2
 800022c:	683b      	ldr	r3, [r7, #0]
 800022e:	019b      	lsls	r3, r3, #6
 8000230:	22ff      	movs	r2, #255	; 0xff
 8000232:	401a      	ands	r2, r3
 8000234:	1dfb      	adds	r3, r7, #7
 8000236:	781b      	ldrb	r3, [r3, #0]
 8000238:	0018      	movs	r0, r3
 800023a:	2303      	movs	r3, #3
 800023c:	4003      	ands	r3, r0
 800023e:	00db      	lsls	r3, r3, #3
 8000240:	409a      	lsls	r2, r3
 8000242:	4807      	ldr	r0, [pc, #28]	; (8000260 <NVIC_SetPriority+0xd8>)
 8000244:	1dfb      	adds	r3, r7, #7
 8000246:	781b      	ldrb	r3, [r3, #0]
 8000248:	b25b      	sxtb	r3, r3
 800024a:	089b      	lsrs	r3, r3, #2
 800024c:	430a      	orrs	r2, r1
 800024e:	33c0      	adds	r3, #192	; 0xc0
 8000250:	009b      	lsls	r3, r3, #2
 8000252:	501a      	str	r2, [r3, r0]
 8000254:	46c0      	nop			; (mov r8, r8)
 8000256:	46bd      	mov	sp, r7
 8000258:	b003      	add	sp, #12
 800025a:	bd90      	pop	{r4, r7, pc}
 800025c:	e000ed00 	.word	0xe000ed00
 8000260:	e000e100 	.word	0xe000e100

08000264 <LL_RCC_HSI_Enable>:
 8000264:	b580      	push	{r7, lr}
 8000266:	af00      	add	r7, sp, #0
 8000268:	4b04      	ldr	r3, [pc, #16]	; (800027c <LL_RCC_HSI_Enable+0x18>)
 800026a:	681a      	ldr	r2, [r3, #0]
 800026c:	4b03      	ldr	r3, [pc, #12]	; (800027c <LL_RCC_HSI_Enable+0x18>)
 800026e:	2101      	movs	r1, #1
 8000270:	430a      	orrs	r2, r1
 8000272:	601a      	str	r2, [r3, #0]
 8000274:	46c0      	nop			; (mov r8, r8)
 8000276:	46bd      	mov	sp, r7
 8000278:	bd80      	pop	{r7, pc}
 800027a:	46c0      	nop			; (mov r8, r8)
 800027c:	40021000 	.word	0x40021000

08000280 <LL_RCC_HSI_IsReady>:
 8000280:	b580      	push	{r7, lr}
 8000282:	af00      	add	r7, sp, #0
 8000284:	4b05      	ldr	r3, [pc, #20]	; (800029c <LL_RCC_HSI_IsReady+0x1c>)
 8000286:	681b      	ldr	r3, [r3, #0]
 8000288:	2202      	movs	r2, #2
 800028a:	4013      	ands	r3, r2
 800028c:	3b02      	subs	r3, #2
 800028e:	425a      	negs	r2, r3
 8000290:	4153      	adcs	r3, r2
 8000292:	b2db      	uxtb	r3, r3
 8000294:	0018      	movs	r0, r3
 8000296:	46bd      	mov	sp, r7
 8000298:	bd80      	pop	{r7, pc}
 800029a:	46c0      	nop			; (mov r8, r8)
 800029c:	40021000 	.word	0x40021000

080002a0 <LL_RCC_SetSysClkSource>:
 80002a0:	b580      	push	{r7, lr}
 80002a2:	b082      	sub	sp, #8
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	6078      	str	r0, [r7, #4]
 80002a8:	4b06      	ldr	r3, [pc, #24]	; (80002c4 <LL_RCC_SetSysClkSource+0x24>)
 80002aa:	685b      	ldr	r3, [r3, #4]
 80002ac:	2203      	movs	r2, #3
 80002ae:	4393      	bics	r3, r2
 80002b0:	0019      	movs	r1, r3
 80002b2:	4b04      	ldr	r3, [pc, #16]	; (80002c4 <LL_RCC_SetSysClkSource+0x24>)
 80002b4:	687a      	ldr	r2, [r7, #4]
 80002b6:	430a      	orrs	r2, r1
 80002b8:	605a      	str	r2, [r3, #4]
 80002ba:	46c0      	nop			; (mov r8, r8)
 80002bc:	46bd      	mov	sp, r7
 80002be:	b002      	add	sp, #8
 80002c0:	bd80      	pop	{r7, pc}
 80002c2:	46c0      	nop			; (mov r8, r8)
 80002c4:	40021000 	.word	0x40021000

080002c8 <LL_RCC_GetSysClkSource>:
 80002c8:	b580      	push	{r7, lr}
 80002ca:	af00      	add	r7, sp, #0
 80002cc:	4b03      	ldr	r3, [pc, #12]	; (80002dc <LL_RCC_GetSysClkSource+0x14>)
 80002ce:	685b      	ldr	r3, [r3, #4]
 80002d0:	220c      	movs	r2, #12
 80002d2:	4013      	ands	r3, r2
 80002d4:	0018      	movs	r0, r3
 80002d6:	46bd      	mov	sp, r7
 80002d8:	bd80      	pop	{r7, pc}
 80002da:	46c0      	nop			; (mov r8, r8)
 80002dc:	40021000 	.word	0x40021000

080002e0 <LL_RCC_SetAHBPrescaler>:
 80002e0:	b580      	push	{r7, lr}
 80002e2:	b082      	sub	sp, #8
 80002e4:	af00      	add	r7, sp, #0
 80002e6:	6078      	str	r0, [r7, #4]
 80002e8:	4b06      	ldr	r3, [pc, #24]	; (8000304 <LL_RCC_SetAHBPrescaler+0x24>)
 80002ea:	685b      	ldr	r3, [r3, #4]
 80002ec:	22f0      	movs	r2, #240	; 0xf0
 80002ee:	4393      	bics	r3, r2
 80002f0:	0019      	movs	r1, r3
 80002f2:	4b04      	ldr	r3, [pc, #16]	; (8000304 <LL_RCC_SetAHBPrescaler+0x24>)
 80002f4:	687a      	ldr	r2, [r7, #4]
 80002f6:	430a      	orrs	r2, r1
 80002f8:	605a      	str	r2, [r3, #4]
 80002fa:	46c0      	nop			; (mov r8, r8)
 80002fc:	46bd      	mov	sp, r7
 80002fe:	b002      	add	sp, #8
 8000300:	bd80      	pop	{r7, pc}
 8000302:	46c0      	nop			; (mov r8, r8)
 8000304:	40021000 	.word	0x40021000

08000308 <LL_RCC_SetAPB1Prescaler>:
 8000308:	b580      	push	{r7, lr}
 800030a:	b082      	sub	sp, #8
 800030c:	af00      	add	r7, sp, #0
 800030e:	6078      	str	r0, [r7, #4]
 8000310:	4b06      	ldr	r3, [pc, #24]	; (800032c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000312:	685b      	ldr	r3, [r3, #4]
 8000314:	4a06      	ldr	r2, [pc, #24]	; (8000330 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000316:	4013      	ands	r3, r2
 8000318:	0019      	movs	r1, r3
 800031a:	4b04      	ldr	r3, [pc, #16]	; (800032c <LL_RCC_SetAPB1Prescaler+0x24>)
 800031c:	687a      	ldr	r2, [r7, #4]
 800031e:	430a      	orrs	r2, r1
 8000320:	605a      	str	r2, [r3, #4]
 8000322:	46c0      	nop			; (mov r8, r8)
 8000324:	46bd      	mov	sp, r7
 8000326:	b002      	add	sp, #8
 8000328:	bd80      	pop	{r7, pc}
 800032a:	46c0      	nop			; (mov r8, r8)
 800032c:	40021000 	.word	0x40021000
 8000330:	fffff8ff 	.word	0xfffff8ff

08000334 <LL_RCC_PLL_Enable>:
 8000334:	b580      	push	{r7, lr}
 8000336:	af00      	add	r7, sp, #0
 8000338:	4b04      	ldr	r3, [pc, #16]	; (800034c <LL_RCC_PLL_Enable+0x18>)
 800033a:	681a      	ldr	r2, [r3, #0]
 800033c:	4b03      	ldr	r3, [pc, #12]	; (800034c <LL_RCC_PLL_Enable+0x18>)
 800033e:	2180      	movs	r1, #128	; 0x80
 8000340:	0449      	lsls	r1, r1, #17
 8000342:	430a      	orrs	r2, r1
 8000344:	601a      	str	r2, [r3, #0]
 8000346:	46c0      	nop			; (mov r8, r8)
 8000348:	46bd      	mov	sp, r7
 800034a:	bd80      	pop	{r7, pc}
 800034c:	40021000 	.word	0x40021000

08000350 <LL_RCC_PLL_IsReady>:
 8000350:	b580      	push	{r7, lr}
 8000352:	af00      	add	r7, sp, #0
 8000354:	4b07      	ldr	r3, [pc, #28]	; (8000374 <LL_RCC_PLL_IsReady+0x24>)
 8000356:	681a      	ldr	r2, [r3, #0]
 8000358:	2380      	movs	r3, #128	; 0x80
 800035a:	049b      	lsls	r3, r3, #18
 800035c:	4013      	ands	r3, r2
 800035e:	22fe      	movs	r2, #254	; 0xfe
 8000360:	0612      	lsls	r2, r2, #24
 8000362:	4694      	mov	ip, r2
 8000364:	4463      	add	r3, ip
 8000366:	425a      	negs	r2, r3
 8000368:	4153      	adcs	r3, r2
 800036a:	b2db      	uxtb	r3, r3
 800036c:	0018      	movs	r0, r3
 800036e:	46bd      	mov	sp, r7
 8000370:	bd80      	pop	{r7, pc}
 8000372:	46c0      	nop			; (mov r8, r8)
 8000374:	40021000 	.word	0x40021000

08000378 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000378:	b580      	push	{r7, lr}
 800037a:	b082      	sub	sp, #8
 800037c:	af00      	add	r7, sp, #0
 800037e:	6078      	str	r0, [r7, #4]
 8000380:	6039      	str	r1, [r7, #0]
 8000382:	4b0e      	ldr	r3, [pc, #56]	; (80003bc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000384:	685b      	ldr	r3, [r3, #4]
 8000386:	4a0e      	ldr	r2, [pc, #56]	; (80003c0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000388:	4013      	ands	r3, r2
 800038a:	0019      	movs	r1, r3
 800038c:	687a      	ldr	r2, [r7, #4]
 800038e:	2380      	movs	r3, #128	; 0x80
 8000390:	025b      	lsls	r3, r3, #9
 8000392:	401a      	ands	r2, r3
 8000394:	683b      	ldr	r3, [r7, #0]
 8000396:	431a      	orrs	r2, r3
 8000398:	4b08      	ldr	r3, [pc, #32]	; (80003bc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800039a:	430a      	orrs	r2, r1
 800039c:	605a      	str	r2, [r3, #4]
 800039e:	4b07      	ldr	r3, [pc, #28]	; (80003bc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003a0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003a2:	220f      	movs	r2, #15
 80003a4:	4393      	bics	r3, r2
 80003a6:	0019      	movs	r1, r3
 80003a8:	687b      	ldr	r3, [r7, #4]
 80003aa:	220f      	movs	r2, #15
 80003ac:	401a      	ands	r2, r3
 80003ae:	4b03      	ldr	r3, [pc, #12]	; (80003bc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003b0:	430a      	orrs	r2, r1
 80003b2:	62da      	str	r2, [r3, #44]	; 0x2c
 80003b4:	46c0      	nop			; (mov r8, r8)
 80003b6:	46bd      	mov	sp, r7
 80003b8:	b002      	add	sp, #8
 80003ba:	bd80      	pop	{r7, pc}
 80003bc:	40021000 	.word	0x40021000
 80003c0:	ffc2ffff 	.word	0xffc2ffff

080003c4 <LL_FLASH_SetLatency>:
 80003c4:	b580      	push	{r7, lr}
 80003c6:	b082      	sub	sp, #8
 80003c8:	af00      	add	r7, sp, #0
 80003ca:	6078      	str	r0, [r7, #4]
 80003cc:	4b06      	ldr	r3, [pc, #24]	; (80003e8 <LL_FLASH_SetLatency+0x24>)
 80003ce:	681b      	ldr	r3, [r3, #0]
 80003d0:	2201      	movs	r2, #1
 80003d2:	4393      	bics	r3, r2
 80003d4:	0019      	movs	r1, r3
 80003d6:	4b04      	ldr	r3, [pc, #16]	; (80003e8 <LL_FLASH_SetLatency+0x24>)
 80003d8:	687a      	ldr	r2, [r7, #4]
 80003da:	430a      	orrs	r2, r1
 80003dc:	601a      	str	r2, [r3, #0]
 80003de:	46c0      	nop			; (mov r8, r8)
 80003e0:	46bd      	mov	sp, r7
 80003e2:	b002      	add	sp, #8
 80003e4:	bd80      	pop	{r7, pc}
 80003e6:	46c0      	nop			; (mov r8, r8)
 80003e8:	40022000 	.word	0x40022000

080003ec <LL_AHB1_GRP1_EnableClock>:
 80003ec:	b580      	push	{r7, lr}
 80003ee:	b084      	sub	sp, #16
 80003f0:	af00      	add	r7, sp, #0
 80003f2:	6078      	str	r0, [r7, #4]
 80003f4:	4b07      	ldr	r3, [pc, #28]	; (8000414 <LL_AHB1_GRP1_EnableClock+0x28>)
 80003f6:	6959      	ldr	r1, [r3, #20]
 80003f8:	4b06      	ldr	r3, [pc, #24]	; (8000414 <LL_AHB1_GRP1_EnableClock+0x28>)
 80003fa:	687a      	ldr	r2, [r7, #4]
 80003fc:	430a      	orrs	r2, r1
 80003fe:	615a      	str	r2, [r3, #20]
 8000400:	4b04      	ldr	r3, [pc, #16]	; (8000414 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000402:	695b      	ldr	r3, [r3, #20]
 8000404:	687a      	ldr	r2, [r7, #4]
 8000406:	4013      	ands	r3, r2
 8000408:	60fb      	str	r3, [r7, #12]
 800040a:	68fb      	ldr	r3, [r7, #12]
 800040c:	46c0      	nop			; (mov r8, r8)
 800040e:	46bd      	mov	sp, r7
 8000410:	b004      	add	sp, #16
 8000412:	bd80      	pop	{r7, pc}
 8000414:	40021000 	.word	0x40021000

08000418 <LL_APB1_GRP1_EnableClock>:
 8000418:	b580      	push	{r7, lr}
 800041a:	b084      	sub	sp, #16
 800041c:	af00      	add	r7, sp, #0
 800041e:	6078      	str	r0, [r7, #4]
 8000420:	4b07      	ldr	r3, [pc, #28]	; (8000440 <LL_APB1_GRP1_EnableClock+0x28>)
 8000422:	69d9      	ldr	r1, [r3, #28]
 8000424:	4b06      	ldr	r3, [pc, #24]	; (8000440 <LL_APB1_GRP1_EnableClock+0x28>)
 8000426:	687a      	ldr	r2, [r7, #4]
 8000428:	430a      	orrs	r2, r1
 800042a:	61da      	str	r2, [r3, #28]
 800042c:	4b04      	ldr	r3, [pc, #16]	; (8000440 <LL_APB1_GRP1_EnableClock+0x28>)
 800042e:	69db      	ldr	r3, [r3, #28]
 8000430:	687a      	ldr	r2, [r7, #4]
 8000432:	4013      	ands	r3, r2
 8000434:	60fb      	str	r3, [r7, #12]
 8000436:	68fb      	ldr	r3, [r7, #12]
 8000438:	46c0      	nop			; (mov r8, r8)
 800043a:	46bd      	mov	sp, r7
 800043c:	b004      	add	sp, #16
 800043e:	bd80      	pop	{r7, pc}
 8000440:	40021000 	.word	0x40021000

08000444 <LL_GPIO_SetPinMode>:
 8000444:	b580      	push	{r7, lr}
 8000446:	b084      	sub	sp, #16
 8000448:	af00      	add	r7, sp, #0
 800044a:	60f8      	str	r0, [r7, #12]
 800044c:	60b9      	str	r1, [r7, #8]
 800044e:	607a      	str	r2, [r7, #4]
 8000450:	68fb      	ldr	r3, [r7, #12]
 8000452:	6819      	ldr	r1, [r3, #0]
 8000454:	68bb      	ldr	r3, [r7, #8]
 8000456:	435b      	muls	r3, r3
 8000458:	001a      	movs	r2, r3
 800045a:	0013      	movs	r3, r2
 800045c:	005b      	lsls	r3, r3, #1
 800045e:	189b      	adds	r3, r3, r2
 8000460:	43db      	mvns	r3, r3
 8000462:	400b      	ands	r3, r1
 8000464:	001a      	movs	r2, r3
 8000466:	68bb      	ldr	r3, [r7, #8]
 8000468:	435b      	muls	r3, r3
 800046a:	6879      	ldr	r1, [r7, #4]
 800046c:	434b      	muls	r3, r1
 800046e:	431a      	orrs	r2, r3
 8000470:	68fb      	ldr	r3, [r7, #12]
 8000472:	601a      	str	r2, [r3, #0]
 8000474:	46c0      	nop			; (mov r8, r8)
 8000476:	46bd      	mov	sp, r7
 8000478:	b004      	add	sp, #16
 800047a:	bd80      	pop	{r7, pc}

0800047c <LL_GPIO_SetAFPin_0_7>:
 800047c:	b580      	push	{r7, lr}
 800047e:	b084      	sub	sp, #16
 8000480:	af00      	add	r7, sp, #0
 8000482:	60f8      	str	r0, [r7, #12]
 8000484:	60b9      	str	r1, [r7, #8]
 8000486:	607a      	str	r2, [r7, #4]
 8000488:	68fb      	ldr	r3, [r7, #12]
 800048a:	6a19      	ldr	r1, [r3, #32]
 800048c:	68bb      	ldr	r3, [r7, #8]
 800048e:	435b      	muls	r3, r3
 8000490:	68ba      	ldr	r2, [r7, #8]
 8000492:	4353      	muls	r3, r2
 8000494:	68ba      	ldr	r2, [r7, #8]
 8000496:	435a      	muls	r2, r3
 8000498:	0013      	movs	r3, r2
 800049a:	011b      	lsls	r3, r3, #4
 800049c:	1a9b      	subs	r3, r3, r2
 800049e:	43db      	mvns	r3, r3
 80004a0:	400b      	ands	r3, r1
 80004a2:	001a      	movs	r2, r3
 80004a4:	68bb      	ldr	r3, [r7, #8]
 80004a6:	435b      	muls	r3, r3
 80004a8:	68b9      	ldr	r1, [r7, #8]
 80004aa:	434b      	muls	r3, r1
 80004ac:	68b9      	ldr	r1, [r7, #8]
 80004ae:	434b      	muls	r3, r1
 80004b0:	6879      	ldr	r1, [r7, #4]
 80004b2:	434b      	muls	r3, r1
 80004b4:	431a      	orrs	r2, r3
 80004b6:	68fb      	ldr	r3, [r7, #12]
 80004b8:	621a      	str	r2, [r3, #32]
 80004ba:	46c0      	nop			; (mov r8, r8)
 80004bc:	46bd      	mov	sp, r7
 80004be:	b004      	add	sp, #16
 80004c0:	bd80      	pop	{r7, pc}

080004c2 <LL_TIM_EnableCounter>:
 80004c2:	b580      	push	{r7, lr}
 80004c4:	b082      	sub	sp, #8
 80004c6:	af00      	add	r7, sp, #0
 80004c8:	6078      	str	r0, [r7, #4]
 80004ca:	687b      	ldr	r3, [r7, #4]
 80004cc:	681b      	ldr	r3, [r3, #0]
 80004ce:	2201      	movs	r2, #1
 80004d0:	431a      	orrs	r2, r3
 80004d2:	687b      	ldr	r3, [r7, #4]
 80004d4:	601a      	str	r2, [r3, #0]
 80004d6:	46c0      	nop			; (mov r8, r8)
 80004d8:	46bd      	mov	sp, r7
 80004da:	b002      	add	sp, #8
 80004dc:	bd80      	pop	{r7, pc}

080004de <LL_TIM_SetCounterMode>:
 80004de:	b580      	push	{r7, lr}
 80004e0:	b082      	sub	sp, #8
 80004e2:	af00      	add	r7, sp, #0
 80004e4:	6078      	str	r0, [r7, #4]
 80004e6:	6039      	str	r1, [r7, #0]
 80004e8:	687b      	ldr	r3, [r7, #4]
 80004ea:	681b      	ldr	r3, [r3, #0]
 80004ec:	2270      	movs	r2, #112	; 0x70
 80004ee:	4393      	bics	r3, r2
 80004f0:	001a      	movs	r2, r3
 80004f2:	683b      	ldr	r3, [r7, #0]
 80004f4:	431a      	orrs	r2, r3
 80004f6:	687b      	ldr	r3, [r7, #4]
 80004f8:	601a      	str	r2, [r3, #0]
 80004fa:	46c0      	nop			; (mov r8, r8)
 80004fc:	46bd      	mov	sp, r7
 80004fe:	b002      	add	sp, #8
 8000500:	bd80      	pop	{r7, pc}

08000502 <LL_TIM_SetPrescaler>:
 8000502:	b580      	push	{r7, lr}
 8000504:	b082      	sub	sp, #8
 8000506:	af00      	add	r7, sp, #0
 8000508:	6078      	str	r0, [r7, #4]
 800050a:	6039      	str	r1, [r7, #0]
 800050c:	687b      	ldr	r3, [r7, #4]
 800050e:	683a      	ldr	r2, [r7, #0]
 8000510:	629a      	str	r2, [r3, #40]	; 0x28
 8000512:	46c0      	nop			; (mov r8, r8)
 8000514:	46bd      	mov	sp, r7
 8000516:	b002      	add	sp, #8
 8000518:	bd80      	pop	{r7, pc}

0800051a <LL_TIM_SetAutoReload>:
 800051a:	b580      	push	{r7, lr}
 800051c:	b082      	sub	sp, #8
 800051e:	af00      	add	r7, sp, #0
 8000520:	6078      	str	r0, [r7, #4]
 8000522:	6039      	str	r1, [r7, #0]
 8000524:	687b      	ldr	r3, [r7, #4]
 8000526:	683a      	ldr	r2, [r7, #0]
 8000528:	62da      	str	r2, [r3, #44]	; 0x2c
 800052a:	46c0      	nop			; (mov r8, r8)
 800052c:	46bd      	mov	sp, r7
 800052e:	b002      	add	sp, #8
 8000530:	bd80      	pop	{r7, pc}

08000532 <LL_TIM_CC_EnableChannel>:
 8000532:	b580      	push	{r7, lr}
 8000534:	b082      	sub	sp, #8
 8000536:	af00      	add	r7, sp, #0
 8000538:	6078      	str	r0, [r7, #4]
 800053a:	6039      	str	r1, [r7, #0]
 800053c:	687b      	ldr	r3, [r7, #4]
 800053e:	6a1a      	ldr	r2, [r3, #32]
 8000540:	683b      	ldr	r3, [r7, #0]
 8000542:	431a      	orrs	r2, r3
 8000544:	687b      	ldr	r3, [r7, #4]
 8000546:	621a      	str	r2, [r3, #32]
 8000548:	46c0      	nop			; (mov r8, r8)
 800054a:	46bd      	mov	sp, r7
 800054c:	b002      	add	sp, #8
 800054e:	bd80      	pop	{r7, pc}

08000550 <LL_TIM_OC_SetMode>:
 8000550:	b5b0      	push	{r4, r5, r7, lr}
 8000552:	b084      	sub	sp, #16
 8000554:	af00      	add	r7, sp, #0
 8000556:	60f8      	str	r0, [r7, #12]
 8000558:	60b9      	str	r1, [r7, #8]
 800055a:	607a      	str	r2, [r7, #4]
 800055c:	68bb      	ldr	r3, [r7, #8]
 800055e:	2b01      	cmp	r3, #1
 8000560:	d01e      	beq.n	80005a0 <LL_TIM_OC_SetMode+0x50>
 8000562:	68bb      	ldr	r3, [r7, #8]
 8000564:	2b04      	cmp	r3, #4
 8000566:	d019      	beq.n	800059c <LL_TIM_OC_SetMode+0x4c>
 8000568:	68bb      	ldr	r3, [r7, #8]
 800056a:	2b10      	cmp	r3, #16
 800056c:	d014      	beq.n	8000598 <LL_TIM_OC_SetMode+0x48>
 800056e:	68bb      	ldr	r3, [r7, #8]
 8000570:	2b40      	cmp	r3, #64	; 0x40
 8000572:	d00f      	beq.n	8000594 <LL_TIM_OC_SetMode+0x44>
 8000574:	68ba      	ldr	r2, [r7, #8]
 8000576:	2380      	movs	r3, #128	; 0x80
 8000578:	005b      	lsls	r3, r3, #1
 800057a:	429a      	cmp	r2, r3
 800057c:	d008      	beq.n	8000590 <LL_TIM_OC_SetMode+0x40>
 800057e:	68ba      	ldr	r2, [r7, #8]
 8000580:	2380      	movs	r3, #128	; 0x80
 8000582:	00db      	lsls	r3, r3, #3
 8000584:	429a      	cmp	r2, r3
 8000586:	d101      	bne.n	800058c <LL_TIM_OC_SetMode+0x3c>
 8000588:	2305      	movs	r3, #5
 800058a:	e00a      	b.n	80005a2 <LL_TIM_OC_SetMode+0x52>
 800058c:	2306      	movs	r3, #6
 800058e:	e008      	b.n	80005a2 <LL_TIM_OC_SetMode+0x52>
 8000590:	2304      	movs	r3, #4
 8000592:	e006      	b.n	80005a2 <LL_TIM_OC_SetMode+0x52>
 8000594:	2303      	movs	r3, #3
 8000596:	e004      	b.n	80005a2 <LL_TIM_OC_SetMode+0x52>
 8000598:	2302      	movs	r3, #2
 800059a:	e002      	b.n	80005a2 <LL_TIM_OC_SetMode+0x52>
 800059c:	2301      	movs	r3, #1
 800059e:	e000      	b.n	80005a2 <LL_TIM_OC_SetMode+0x52>
 80005a0:	2300      	movs	r3, #0
 80005a2:	001d      	movs	r5, r3
 80005a4:	68fb      	ldr	r3, [r7, #12]
 80005a6:	3318      	adds	r3, #24
 80005a8:	001a      	movs	r2, r3
 80005aa:	0029      	movs	r1, r5
 80005ac:	4b0c      	ldr	r3, [pc, #48]	; (80005e0 <LL_TIM_OC_SetMode+0x90>)
 80005ae:	5c5b      	ldrb	r3, [r3, r1]
 80005b0:	18d3      	adds	r3, r2, r3
 80005b2:	001c      	movs	r4, r3
 80005b4:	6823      	ldr	r3, [r4, #0]
 80005b6:	0029      	movs	r1, r5
 80005b8:	4a0a      	ldr	r2, [pc, #40]	; (80005e4 <LL_TIM_OC_SetMode+0x94>)
 80005ba:	5c52      	ldrb	r2, [r2, r1]
 80005bc:	0011      	movs	r1, r2
 80005be:	2273      	movs	r2, #115	; 0x73
 80005c0:	408a      	lsls	r2, r1
 80005c2:	43d2      	mvns	r2, r2
 80005c4:	401a      	ands	r2, r3
 80005c6:	0029      	movs	r1, r5
 80005c8:	4b06      	ldr	r3, [pc, #24]	; (80005e4 <LL_TIM_OC_SetMode+0x94>)
 80005ca:	5c5b      	ldrb	r3, [r3, r1]
 80005cc:	0019      	movs	r1, r3
 80005ce:	687b      	ldr	r3, [r7, #4]
 80005d0:	408b      	lsls	r3, r1
 80005d2:	4313      	orrs	r3, r2
 80005d4:	6023      	str	r3, [r4, #0]
 80005d6:	46c0      	nop			; (mov r8, r8)
 80005d8:	46bd      	mov	sp, r7
 80005da:	b004      	add	sp, #16
 80005dc:	bdb0      	pop	{r4, r5, r7, pc}
 80005de:	46c0      	nop			; (mov r8, r8)
 80005e0:	08000a3c 	.word	0x08000a3c
 80005e4:	08000a44 	.word	0x08000a44

080005e8 <LL_TIM_OC_SetPolarity>:
 80005e8:	b590      	push	{r4, r7, lr}
 80005ea:	b085      	sub	sp, #20
 80005ec:	af00      	add	r7, sp, #0
 80005ee:	60f8      	str	r0, [r7, #12]
 80005f0:	60b9      	str	r1, [r7, #8]
 80005f2:	607a      	str	r2, [r7, #4]
 80005f4:	68bb      	ldr	r3, [r7, #8]
 80005f6:	2b01      	cmp	r3, #1
 80005f8:	d01e      	beq.n	8000638 <LL_TIM_OC_SetPolarity+0x50>
 80005fa:	68bb      	ldr	r3, [r7, #8]
 80005fc:	2b04      	cmp	r3, #4
 80005fe:	d019      	beq.n	8000634 <LL_TIM_OC_SetPolarity+0x4c>
 8000600:	68bb      	ldr	r3, [r7, #8]
 8000602:	2b10      	cmp	r3, #16
 8000604:	d014      	beq.n	8000630 <LL_TIM_OC_SetPolarity+0x48>
 8000606:	68bb      	ldr	r3, [r7, #8]
 8000608:	2b40      	cmp	r3, #64	; 0x40
 800060a:	d00f      	beq.n	800062c <LL_TIM_OC_SetPolarity+0x44>
 800060c:	68ba      	ldr	r2, [r7, #8]
 800060e:	2380      	movs	r3, #128	; 0x80
 8000610:	005b      	lsls	r3, r3, #1
 8000612:	429a      	cmp	r2, r3
 8000614:	d008      	beq.n	8000628 <LL_TIM_OC_SetPolarity+0x40>
 8000616:	68ba      	ldr	r2, [r7, #8]
 8000618:	2380      	movs	r3, #128	; 0x80
 800061a:	00db      	lsls	r3, r3, #3
 800061c:	429a      	cmp	r2, r3
 800061e:	d101      	bne.n	8000624 <LL_TIM_OC_SetPolarity+0x3c>
 8000620:	2305      	movs	r3, #5
 8000622:	e00a      	b.n	800063a <LL_TIM_OC_SetPolarity+0x52>
 8000624:	2306      	movs	r3, #6
 8000626:	e008      	b.n	800063a <LL_TIM_OC_SetPolarity+0x52>
 8000628:	2304      	movs	r3, #4
 800062a:	e006      	b.n	800063a <LL_TIM_OC_SetPolarity+0x52>
 800062c:	2303      	movs	r3, #3
 800062e:	e004      	b.n	800063a <LL_TIM_OC_SetPolarity+0x52>
 8000630:	2302      	movs	r3, #2
 8000632:	e002      	b.n	800063a <LL_TIM_OC_SetPolarity+0x52>
 8000634:	2301      	movs	r3, #1
 8000636:	e000      	b.n	800063a <LL_TIM_OC_SetPolarity+0x52>
 8000638:	2300      	movs	r3, #0
 800063a:	001c      	movs	r4, r3
 800063c:	68fb      	ldr	r3, [r7, #12]
 800063e:	6a1b      	ldr	r3, [r3, #32]
 8000640:	0021      	movs	r1, r4
 8000642:	4a0a      	ldr	r2, [pc, #40]	; (800066c <LL_TIM_OC_SetPolarity+0x84>)
 8000644:	5c52      	ldrb	r2, [r2, r1]
 8000646:	0011      	movs	r1, r2
 8000648:	2202      	movs	r2, #2
 800064a:	408a      	lsls	r2, r1
 800064c:	43d2      	mvns	r2, r2
 800064e:	401a      	ands	r2, r3
 8000650:	0021      	movs	r1, r4
 8000652:	4b06      	ldr	r3, [pc, #24]	; (800066c <LL_TIM_OC_SetPolarity+0x84>)
 8000654:	5c5b      	ldrb	r3, [r3, r1]
 8000656:	0019      	movs	r1, r3
 8000658:	687b      	ldr	r3, [r7, #4]
 800065a:	408b      	lsls	r3, r1
 800065c:	431a      	orrs	r2, r3
 800065e:	68fb      	ldr	r3, [r7, #12]
 8000660:	621a      	str	r2, [r3, #32]
 8000662:	46c0      	nop			; (mov r8, r8)
 8000664:	46bd      	mov	sp, r7
 8000666:	b005      	add	sp, #20
 8000668:	bd90      	pop	{r4, r7, pc}
 800066a:	46c0      	nop			; (mov r8, r8)
 800066c:	08000a4c 	.word	0x08000a4c

08000670 <LL_TIM_OC_SetCompareCH1>:
 8000670:	b580      	push	{r7, lr}
 8000672:	b082      	sub	sp, #8
 8000674:	af00      	add	r7, sp, #0
 8000676:	6078      	str	r0, [r7, #4]
 8000678:	6039      	str	r1, [r7, #0]
 800067a:	687b      	ldr	r3, [r7, #4]
 800067c:	683a      	ldr	r2, [r7, #0]
 800067e:	635a      	str	r2, [r3, #52]	; 0x34
 8000680:	46c0      	nop			; (mov r8, r8)
 8000682:	46bd      	mov	sp, r7
 8000684:	b002      	add	sp, #8
 8000686:	bd80      	pop	{r7, pc}

08000688 <LL_TIM_ClearFlag_CC1>:
 8000688:	b580      	push	{r7, lr}
 800068a:	b082      	sub	sp, #8
 800068c:	af00      	add	r7, sp, #0
 800068e:	6078      	str	r0, [r7, #4]
 8000690:	687b      	ldr	r3, [r7, #4]
 8000692:	2203      	movs	r2, #3
 8000694:	4252      	negs	r2, r2
 8000696:	611a      	str	r2, [r3, #16]
 8000698:	46c0      	nop			; (mov r8, r8)
 800069a:	46bd      	mov	sp, r7
 800069c:	b002      	add	sp, #8
 800069e:	bd80      	pop	{r7, pc}

080006a0 <LL_TIM_EnableIT_CC1>:
 80006a0:	b580      	push	{r7, lr}
 80006a2:	b082      	sub	sp, #8
 80006a4:	af00      	add	r7, sp, #0
 80006a6:	6078      	str	r0, [r7, #4]
 80006a8:	687b      	ldr	r3, [r7, #4]
 80006aa:	68db      	ldr	r3, [r3, #12]
 80006ac:	2202      	movs	r2, #2
 80006ae:	431a      	orrs	r2, r3
 80006b0:	687b      	ldr	r3, [r7, #4]
 80006b2:	60da      	str	r2, [r3, #12]
 80006b4:	46c0      	nop			; (mov r8, r8)
 80006b6:	46bd      	mov	sp, r7
 80006b8:	b002      	add	sp, #8
 80006ba:	bd80      	pop	{r7, pc}

080006bc <rcc_config>:
 80006bc:	b580      	push	{r7, lr}
 80006be:	af00      	add	r7, sp, #0
 80006c0:	2001      	movs	r0, #1
 80006c2:	f7ff fe7f 	bl	80003c4 <LL_FLASH_SetLatency>
 80006c6:	f7ff fdcd 	bl	8000264 <LL_RCC_HSI_Enable>
 80006ca:	46c0      	nop			; (mov r8, r8)
 80006cc:	f7ff fdd8 	bl	8000280 <LL_RCC_HSI_IsReady>
 80006d0:	0003      	movs	r3, r0
 80006d2:	2b01      	cmp	r3, #1
 80006d4:	d1fa      	bne.n	80006cc <rcc_config+0x10>
 80006d6:	23a0      	movs	r3, #160	; 0xa0
 80006d8:	039b      	lsls	r3, r3, #14
 80006da:	0019      	movs	r1, r3
 80006dc:	2000      	movs	r0, #0
 80006de:	f7ff fe4b 	bl	8000378 <LL_RCC_PLL_ConfigDomain_SYS>
 80006e2:	f7ff fe27 	bl	8000334 <LL_RCC_PLL_Enable>
 80006e6:	46c0      	nop			; (mov r8, r8)
 80006e8:	f7ff fe32 	bl	8000350 <LL_RCC_PLL_IsReady>
 80006ec:	0003      	movs	r3, r0
 80006ee:	2b01      	cmp	r3, #1
 80006f0:	d1fa      	bne.n	80006e8 <rcc_config+0x2c>
 80006f2:	2000      	movs	r0, #0
 80006f4:	f7ff fdf4 	bl	80002e0 <LL_RCC_SetAHBPrescaler>
 80006f8:	2002      	movs	r0, #2
 80006fa:	f7ff fdd1 	bl	80002a0 <LL_RCC_SetSysClkSource>
 80006fe:	46c0      	nop			; (mov r8, r8)
 8000700:	f7ff fde2 	bl	80002c8 <LL_RCC_GetSysClkSource>
 8000704:	0003      	movs	r3, r0
 8000706:	2b08      	cmp	r3, #8
 8000708:	d1fa      	bne.n	8000700 <rcc_config+0x44>
 800070a:	2000      	movs	r0, #0
 800070c:	f7ff fdfc 	bl	8000308 <LL_RCC_SetAPB1Prescaler>
 8000710:	4b02      	ldr	r3, [pc, #8]	; (800071c <rcc_config+0x60>)
 8000712:	4a03      	ldr	r2, [pc, #12]	; (8000720 <rcc_config+0x64>)
 8000714:	601a      	str	r2, [r3, #0]
 8000716:	46c0      	nop			; (mov r8, r8)
 8000718:	46bd      	mov	sp, r7
 800071a:	bd80      	pop	{r7, pc}
 800071c:	20000000 	.word	0x20000000
 8000720:	02dc6c00 	.word	0x02dc6c00

08000724 <gpio_config>:
 8000724:	b580      	push	{r7, lr}
 8000726:	af00      	add	r7, sp, #0
 8000728:	2380      	movs	r3, #128	; 0x80
 800072a:	031b      	lsls	r3, r3, #12
 800072c:	0018      	movs	r0, r3
 800072e:	f7ff fe5d 	bl	80003ec <LL_AHB1_GRP1_EnableClock>
 8000732:	2380      	movs	r3, #128	; 0x80
 8000734:	005b      	lsls	r3, r3, #1
 8000736:	4804      	ldr	r0, [pc, #16]	; (8000748 <gpio_config+0x24>)
 8000738:	2201      	movs	r2, #1
 800073a:	0019      	movs	r1, r3
 800073c:	f7ff fe82 	bl	8000444 <LL_GPIO_SetPinMode>
 8000740:	46c0      	nop			; (mov r8, r8)
 8000742:	46bd      	mov	sp, r7
 8000744:	bd80      	pop	{r7, pc}
 8000746:	46c0      	nop			; (mov r8, r8)
 8000748:	48000800 	.word	0x48000800

0800074c <timers_config>:
 800074c:	b580      	push	{r7, lr}
 800074e:	af00      	add	r7, sp, #0
 8000750:	2380      	movs	r3, #128	; 0x80
 8000752:	029b      	lsls	r3, r3, #10
 8000754:	0018      	movs	r0, r3
 8000756:	f7ff fe49 	bl	80003ec <LL_AHB1_GRP1_EnableClock>
 800075a:	2390      	movs	r3, #144	; 0x90
 800075c:	05db      	lsls	r3, r3, #23
 800075e:	2202      	movs	r2, #2
 8000760:	2120      	movs	r1, #32
 8000762:	0018      	movs	r0, r3
 8000764:	f7ff fe6e 	bl	8000444 <LL_GPIO_SetPinMode>
 8000768:	2390      	movs	r3, #144	; 0x90
 800076a:	05db      	lsls	r3, r3, #23
 800076c:	2202      	movs	r2, #2
 800076e:	2120      	movs	r1, #32
 8000770:	0018      	movs	r0, r3
 8000772:	f7ff fe83 	bl	800047c <LL_GPIO_SetAFPin_0_7>
 8000776:	2001      	movs	r0, #1
 8000778:	f7ff fe4e 	bl	8000418 <LL_APB1_GRP1_EnableClock>
 800077c:	23e0      	movs	r3, #224	; 0xe0
 800077e:	33ff      	adds	r3, #255	; 0xff
 8000780:	001a      	movs	r2, r3
 8000782:	2380      	movs	r3, #128	; 0x80
 8000784:	05db      	lsls	r3, r3, #23
 8000786:	0011      	movs	r1, r2
 8000788:	0018      	movs	r0, r3
 800078a:	f7ff feba 	bl	8000502 <LL_TIM_SetPrescaler>
 800078e:	4a1d      	ldr	r2, [pc, #116]	; (8000804 <timers_config+0xb8>)
 8000790:	2380      	movs	r3, #128	; 0x80
 8000792:	05db      	lsls	r3, r3, #23
 8000794:	0011      	movs	r1, r2
 8000796:	0018      	movs	r0, r3
 8000798:	f7ff febf 	bl	800051a <LL_TIM_SetAutoReload>
 800079c:	2380      	movs	r3, #128	; 0x80
 800079e:	05db      	lsls	r3, r3, #23
 80007a0:	2164      	movs	r1, #100	; 0x64
 80007a2:	0018      	movs	r0, r3
 80007a4:	f7ff ff64 	bl	8000670 <LL_TIM_OC_SetCompareCH1>
 80007a8:	2380      	movs	r3, #128	; 0x80
 80007aa:	05db      	lsls	r3, r3, #23
 80007ac:	2101      	movs	r1, #1
 80007ae:	0018      	movs	r0, r3
 80007b0:	f7ff febf 	bl	8000532 <LL_TIM_CC_EnableChannel>
 80007b4:	2380      	movs	r3, #128	; 0x80
 80007b6:	05db      	lsls	r3, r3, #23
 80007b8:	2200      	movs	r2, #0
 80007ba:	2101      	movs	r1, #1
 80007bc:	0018      	movs	r0, r3
 80007be:	f7ff ff13 	bl	80005e8 <LL_TIM_OC_SetPolarity>
 80007c2:	2380      	movs	r3, #128	; 0x80
 80007c4:	05db      	lsls	r3, r3, #23
 80007c6:	2260      	movs	r2, #96	; 0x60
 80007c8:	2101      	movs	r1, #1
 80007ca:	0018      	movs	r0, r3
 80007cc:	f7ff fec0 	bl	8000550 <LL_TIM_OC_SetMode>
 80007d0:	2380      	movs	r3, #128	; 0x80
 80007d2:	05db      	lsls	r3, r3, #23
 80007d4:	2100      	movs	r1, #0
 80007d6:	0018      	movs	r0, r3
 80007d8:	f7ff fe81 	bl	80004de <LL_TIM_SetCounterMode>
 80007dc:	2380      	movs	r3, #128	; 0x80
 80007de:	05db      	lsls	r3, r3, #23
 80007e0:	0018      	movs	r0, r3
 80007e2:	f7ff ff5d 	bl	80006a0 <LL_TIM_EnableIT_CC1>
 80007e6:	2380      	movs	r3, #128	; 0x80
 80007e8:	05db      	lsls	r3, r3, #23
 80007ea:	0018      	movs	r0, r3
 80007ec:	f7ff fe69 	bl	80004c2 <LL_TIM_EnableCounter>
 80007f0:	200f      	movs	r0, #15
 80007f2:	f7ff fcb3 	bl	800015c <NVIC_EnableIRQ>
 80007f6:	2101      	movs	r1, #1
 80007f8:	200f      	movs	r0, #15
 80007fa:	f7ff fcc5 	bl	8000188 <NVIC_SetPriority>
 80007fe:	46c0      	nop			; (mov r8, r8)
 8000800:	46bd      	mov	sp, r7
 8000802:	bd80      	pop	{r7, pc}
 8000804:	000003e7 	.word	0x000003e7

08000808 <TIM2_IRQHandler>:
 8000808:	b580      	push	{r7, lr}
 800080a:	af00      	add	r7, sp, #0
 800080c:	2380      	movs	r3, #128	; 0x80
 800080e:	05db      	lsls	r3, r3, #23
 8000810:	0018      	movs	r0, r3
 8000812:	f7ff ff39 	bl	8000688 <LL_TIM_ClearFlag_CC1>
 8000816:	46c0      	nop			; (mov r8, r8)
 8000818:	46bd      	mov	sp, r7
 800081a:	bd80      	pop	{r7, pc}

0800081c <main>:
 800081c:	b580      	push	{r7, lr}
 800081e:	af00      	add	r7, sp, #0
 8000820:	f7ff ff4c 	bl	80006bc <rcc_config>
 8000824:	f7ff ff7e 	bl	8000724 <gpio_config>
 8000828:	f7ff ff90 	bl	800074c <timers_config>
 800082c:	e7fe      	b.n	800082c <main+0x10>
	...

08000830 <SystemInit>:
 8000830:	b580      	push	{r7, lr}
 8000832:	af00      	add	r7, sp, #0
 8000834:	4b1a      	ldr	r3, [pc, #104]	; (80008a0 <SystemInit+0x70>)
 8000836:	681a      	ldr	r2, [r3, #0]
 8000838:	4b19      	ldr	r3, [pc, #100]	; (80008a0 <SystemInit+0x70>)
 800083a:	2101      	movs	r1, #1
 800083c:	430a      	orrs	r2, r1
 800083e:	601a      	str	r2, [r3, #0]
 8000840:	4b17      	ldr	r3, [pc, #92]	; (80008a0 <SystemInit+0x70>)
 8000842:	685a      	ldr	r2, [r3, #4]
 8000844:	4b16      	ldr	r3, [pc, #88]	; (80008a0 <SystemInit+0x70>)
 8000846:	4917      	ldr	r1, [pc, #92]	; (80008a4 <SystemInit+0x74>)
 8000848:	400a      	ands	r2, r1
 800084a:	605a      	str	r2, [r3, #4]
 800084c:	4b14      	ldr	r3, [pc, #80]	; (80008a0 <SystemInit+0x70>)
 800084e:	681a      	ldr	r2, [r3, #0]
 8000850:	4b13      	ldr	r3, [pc, #76]	; (80008a0 <SystemInit+0x70>)
 8000852:	4915      	ldr	r1, [pc, #84]	; (80008a8 <SystemInit+0x78>)
 8000854:	400a      	ands	r2, r1
 8000856:	601a      	str	r2, [r3, #0]
 8000858:	4b11      	ldr	r3, [pc, #68]	; (80008a0 <SystemInit+0x70>)
 800085a:	681a      	ldr	r2, [r3, #0]
 800085c:	4b10      	ldr	r3, [pc, #64]	; (80008a0 <SystemInit+0x70>)
 800085e:	4913      	ldr	r1, [pc, #76]	; (80008ac <SystemInit+0x7c>)
 8000860:	400a      	ands	r2, r1
 8000862:	601a      	str	r2, [r3, #0]
 8000864:	4b0e      	ldr	r3, [pc, #56]	; (80008a0 <SystemInit+0x70>)
 8000866:	685a      	ldr	r2, [r3, #4]
 8000868:	4b0d      	ldr	r3, [pc, #52]	; (80008a0 <SystemInit+0x70>)
 800086a:	4911      	ldr	r1, [pc, #68]	; (80008b0 <SystemInit+0x80>)
 800086c:	400a      	ands	r2, r1
 800086e:	605a      	str	r2, [r3, #4]
 8000870:	4b0b      	ldr	r3, [pc, #44]	; (80008a0 <SystemInit+0x70>)
 8000872:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000874:	4b0a      	ldr	r3, [pc, #40]	; (80008a0 <SystemInit+0x70>)
 8000876:	210f      	movs	r1, #15
 8000878:	438a      	bics	r2, r1
 800087a:	62da      	str	r2, [r3, #44]	; 0x2c
 800087c:	4b08      	ldr	r3, [pc, #32]	; (80008a0 <SystemInit+0x70>)
 800087e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000880:	4b07      	ldr	r3, [pc, #28]	; (80008a0 <SystemInit+0x70>)
 8000882:	490c      	ldr	r1, [pc, #48]	; (80008b4 <SystemInit+0x84>)
 8000884:	400a      	ands	r2, r1
 8000886:	631a      	str	r2, [r3, #48]	; 0x30
 8000888:	4b05      	ldr	r3, [pc, #20]	; (80008a0 <SystemInit+0x70>)
 800088a:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 800088c:	4b04      	ldr	r3, [pc, #16]	; (80008a0 <SystemInit+0x70>)
 800088e:	2101      	movs	r1, #1
 8000890:	438a      	bics	r2, r1
 8000892:	635a      	str	r2, [r3, #52]	; 0x34
 8000894:	4b02      	ldr	r3, [pc, #8]	; (80008a0 <SystemInit+0x70>)
 8000896:	2200      	movs	r2, #0
 8000898:	609a      	str	r2, [r3, #8]
 800089a:	46c0      	nop			; (mov r8, r8)
 800089c:	46bd      	mov	sp, r7
 800089e:	bd80      	pop	{r7, pc}
 80008a0:	40021000 	.word	0x40021000
 80008a4:	f8ffb80c 	.word	0xf8ffb80c
 80008a8:	fef6ffff 	.word	0xfef6ffff
 80008ac:	fffbffff 	.word	0xfffbffff
 80008b0:	ffc0ffff 	.word	0xffc0ffff
 80008b4:	fffffeac 	.word	0xfffffeac

080008b8 <NMI_Handler>:
 80008b8:	b580      	push	{r7, lr}
 80008ba:	af00      	add	r7, sp, #0
 80008bc:	46c0      	nop			; (mov r8, r8)
 80008be:	46bd      	mov	sp, r7
 80008c0:	bd80      	pop	{r7, pc}

080008c2 <HardFault_Handler>:
 80008c2:	b580      	push	{r7, lr}
 80008c4:	af00      	add	r7, sp, #0
 80008c6:	e7fe      	b.n	80008c6 <HardFault_Handler+0x4>

080008c8 <SVC_Handler>:
 80008c8:	b580      	push	{r7, lr}
 80008ca:	af00      	add	r7, sp, #0
 80008cc:	46c0      	nop			; (mov r8, r8)
 80008ce:	46bd      	mov	sp, r7
 80008d0:	bd80      	pop	{r7, pc}

080008d2 <PendSV_Handler>:
 80008d2:	b580      	push	{r7, lr}
 80008d4:	af00      	add	r7, sp, #0
 80008d6:	46c0      	nop			; (mov r8, r8)
 80008d8:	46bd      	mov	sp, r7
 80008da:	bd80      	pop	{r7, pc}

080008dc <__libc_init_array>:
 80008dc:	b570      	push	{r4, r5, r6, lr}
 80008de:	4d0c      	ldr	r5, [pc, #48]	; (8000910 <__libc_init_array+0x34>)
 80008e0:	4e0c      	ldr	r6, [pc, #48]	; (8000914 <__libc_init_array+0x38>)
 80008e2:	1b76      	subs	r6, r6, r5
 80008e4:	10b6      	asrs	r6, r6, #2
 80008e6:	d005      	beq.n	80008f4 <__libc_init_array+0x18>
 80008e8:	2400      	movs	r4, #0
 80008ea:	cd08      	ldmia	r5!, {r3}
 80008ec:	3401      	adds	r4, #1
 80008ee:	4798      	blx	r3
 80008f0:	42a6      	cmp	r6, r4
 80008f2:	d1fa      	bne.n	80008ea <__libc_init_array+0xe>
 80008f4:	f000 f896 	bl	8000a24 <_init>
 80008f8:	4d07      	ldr	r5, [pc, #28]	; (8000918 <__libc_init_array+0x3c>)
 80008fa:	4e08      	ldr	r6, [pc, #32]	; (800091c <__libc_init_array+0x40>)
 80008fc:	1b76      	subs	r6, r6, r5
 80008fe:	10b6      	asrs	r6, r6, #2
 8000900:	d005      	beq.n	800090e <__libc_init_array+0x32>
 8000902:	2400      	movs	r4, #0
 8000904:	cd08      	ldmia	r5!, {r3}
 8000906:	3401      	adds	r4, #1
 8000908:	4798      	blx	r3
 800090a:	42a6      	cmp	r6, r4
 800090c:	d1fa      	bne.n	8000904 <__libc_init_array+0x28>
 800090e:	bd70      	pop	{r4, r5, r6, pc}
 8000910:	08000a58 	.word	0x08000a58
 8000914:	08000a58 	.word	0x08000a58
 8000918:	08000a58 	.word	0x08000a58
 800091c:	08000a60 	.word	0x08000a60

08000920 <register_fini>:
 8000920:	4b03      	ldr	r3, [pc, #12]	; (8000930 <register_fini+0x10>)
 8000922:	b510      	push	{r4, lr}
 8000924:	2b00      	cmp	r3, #0
 8000926:	d002      	beq.n	800092e <register_fini+0xe>
 8000928:	4802      	ldr	r0, [pc, #8]	; (8000934 <register_fini+0x14>)
 800092a:	f000 f805 	bl	8000938 <atexit>
 800092e:	bd10      	pop	{r4, pc}
 8000930:	00000000 	.word	0x00000000
 8000934:	08000949 	.word	0x08000949

08000938 <atexit>:
 8000938:	b510      	push	{r4, lr}
 800093a:	0001      	movs	r1, r0
 800093c:	2300      	movs	r3, #0
 800093e:	2200      	movs	r2, #0
 8000940:	2000      	movs	r0, #0
 8000942:	f000 f819 	bl	8000978 <__register_exitproc>
 8000946:	bd10      	pop	{r4, pc}

08000948 <__libc_fini_array>:
 8000948:	b570      	push	{r4, r5, r6, lr}
 800094a:	4d07      	ldr	r5, [pc, #28]	; (8000968 <__libc_fini_array+0x20>)
 800094c:	4c07      	ldr	r4, [pc, #28]	; (800096c <__libc_fini_array+0x24>)
 800094e:	1b64      	subs	r4, r4, r5
 8000950:	10a4      	asrs	r4, r4, #2
 8000952:	d005      	beq.n	8000960 <__libc_fini_array+0x18>
 8000954:	3c01      	subs	r4, #1
 8000956:	00a3      	lsls	r3, r4, #2
 8000958:	58eb      	ldr	r3, [r5, r3]
 800095a:	4798      	blx	r3
 800095c:	2c00      	cmp	r4, #0
 800095e:	d1f9      	bne.n	8000954 <__libc_fini_array+0xc>
 8000960:	f000 f866 	bl	8000a30 <_fini>
 8000964:	bd70      	pop	{r4, r5, r6, pc}
 8000966:	46c0      	nop			; (mov r8, r8)
 8000968:	08000a60 	.word	0x08000a60
 800096c:	08000a64 	.word	0x08000a64

08000970 <__retarget_lock_acquire_recursive>:
 8000970:	4770      	bx	lr
 8000972:	46c0      	nop			; (mov r8, r8)

08000974 <__retarget_lock_release_recursive>:
 8000974:	4770      	bx	lr
 8000976:	46c0      	nop			; (mov r8, r8)

08000978 <__register_exitproc>:
 8000978:	b5f0      	push	{r4, r5, r6, r7, lr}
 800097a:	46d6      	mov	lr, sl
 800097c:	464f      	mov	r7, r9
 800097e:	4646      	mov	r6, r8
 8000980:	b5c0      	push	{r6, r7, lr}
 8000982:	4f26      	ldr	r7, [pc, #152]	; (8000a1c <__register_exitproc+0xa4>)
 8000984:	b082      	sub	sp, #8
 8000986:	0006      	movs	r6, r0
 8000988:	6838      	ldr	r0, [r7, #0]
 800098a:	4692      	mov	sl, r2
 800098c:	4698      	mov	r8, r3
 800098e:	4689      	mov	r9, r1
 8000990:	f7ff ffee 	bl	8000970 <__retarget_lock_acquire_recursive>
 8000994:	4b22      	ldr	r3, [pc, #136]	; (8000a20 <__register_exitproc+0xa8>)
 8000996:	681b      	ldr	r3, [r3, #0]
 8000998:	9301      	str	r3, [sp, #4]
 800099a:	23a4      	movs	r3, #164	; 0xa4
 800099c:	9a01      	ldr	r2, [sp, #4]
 800099e:	005b      	lsls	r3, r3, #1
 80009a0:	58d5      	ldr	r5, [r2, r3]
 80009a2:	2d00      	cmp	r5, #0
 80009a4:	d02e      	beq.n	8000a04 <__register_exitproc+0x8c>
 80009a6:	686c      	ldr	r4, [r5, #4]
 80009a8:	2c1f      	cmp	r4, #31
 80009aa:	dc30      	bgt.n	8000a0e <__register_exitproc+0x96>
 80009ac:	2e00      	cmp	r6, #0
 80009ae:	d10f      	bne.n	80009d0 <__register_exitproc+0x58>
 80009b0:	1c63      	adds	r3, r4, #1
 80009b2:	606b      	str	r3, [r5, #4]
 80009b4:	464b      	mov	r3, r9
 80009b6:	3402      	adds	r4, #2
 80009b8:	00a4      	lsls	r4, r4, #2
 80009ba:	6838      	ldr	r0, [r7, #0]
 80009bc:	5163      	str	r3, [r4, r5]
 80009be:	f7ff ffd9 	bl	8000974 <__retarget_lock_release_recursive>
 80009c2:	2000      	movs	r0, #0
 80009c4:	b002      	add	sp, #8
 80009c6:	bce0      	pop	{r5, r6, r7}
 80009c8:	46ba      	mov	sl, r7
 80009ca:	46b1      	mov	r9, r6
 80009cc:	46a8      	mov	r8, r5
 80009ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80009d0:	2288      	movs	r2, #136	; 0x88
 80009d2:	4651      	mov	r1, sl
 80009d4:	0028      	movs	r0, r5
 80009d6:	00a3      	lsls	r3, r4, #2
 80009d8:	18eb      	adds	r3, r5, r3
 80009da:	5099      	str	r1, [r3, r2]
 80009dc:	3a87      	subs	r2, #135	; 0x87
 80009de:	40a2      	lsls	r2, r4
 80009e0:	3089      	adds	r0, #137	; 0x89
 80009e2:	30ff      	adds	r0, #255	; 0xff
 80009e4:	6801      	ldr	r1, [r0, #0]
 80009e6:	4311      	orrs	r1, r2
 80009e8:	6001      	str	r1, [r0, #0]
 80009ea:	2184      	movs	r1, #132	; 0x84
 80009ec:	4640      	mov	r0, r8
 80009ee:	0049      	lsls	r1, r1, #1
 80009f0:	5058      	str	r0, [r3, r1]
 80009f2:	2e02      	cmp	r6, #2
 80009f4:	d1dc      	bne.n	80009b0 <__register_exitproc+0x38>
 80009f6:	002b      	movs	r3, r5
 80009f8:	338d      	adds	r3, #141	; 0x8d
 80009fa:	33ff      	adds	r3, #255	; 0xff
 80009fc:	6819      	ldr	r1, [r3, #0]
 80009fe:	430a      	orrs	r2, r1
 8000a00:	601a      	str	r2, [r3, #0]
 8000a02:	e7d5      	b.n	80009b0 <__register_exitproc+0x38>
 8000a04:	0015      	movs	r5, r2
 8000a06:	354d      	adds	r5, #77	; 0x4d
 8000a08:	35ff      	adds	r5, #255	; 0xff
 8000a0a:	50d5      	str	r5, [r2, r3]
 8000a0c:	e7cb      	b.n	80009a6 <__register_exitproc+0x2e>
 8000a0e:	6838      	ldr	r0, [r7, #0]
 8000a10:	f7ff ffb0 	bl	8000974 <__retarget_lock_release_recursive>
 8000a14:	2001      	movs	r0, #1
 8000a16:	4240      	negs	r0, r0
 8000a18:	e7d4      	b.n	80009c4 <__register_exitproc+0x4c>
 8000a1a:	46c0      	nop			; (mov r8, r8)
 8000a1c:	20000430 	.word	0x20000430
 8000a20:	08000a54 	.word	0x08000a54

08000a24 <_init>:
 8000a24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000a26:	46c0      	nop			; (mov r8, r8)
 8000a28:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000a2a:	bc08      	pop	{r3}
 8000a2c:	469e      	mov	lr, r3
 8000a2e:	4770      	bx	lr

08000a30 <_fini>:
 8000a30:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000a32:	46c0      	nop			; (mov r8, r8)
 8000a34:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000a36:	bc08      	pop	{r3}
 8000a38:	469e      	mov	lr, r3
 8000a3a:	4770      	bx	lr
