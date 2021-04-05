
build/timers_counter.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000007c8  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  08000888  08000888  00010888  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  0800088c  0800088c  0001088c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000894  08000894  00010894  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000898  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000ccc  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000ccc  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000f43  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000367  00000000  00000000  0002139f  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000684  00000000  00000000  00021706  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000150  00000000  00000000  00021d8a  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000120  00000000  00000000  00021eda  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000075f  00000000  00000000  00021ffa  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000007f6  00000000  00000000  00022759  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00022f4f  2**0  CONTENTS, READONLY
 17 .debug_frame      000005d4  00000000  00000000  00022f9c  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000870 	.word	0x08000870

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
 8000104:	08000870 	.word	0x08000870

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
 8000132:	f000 faa3 	bl	800067c <SystemInit>
 8000136:	f000 faf7 	bl	8000728 <__libc_init_array>
 800013a:	f000 fa95 	bl	8000668 <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000898 	.word	0x08000898
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

0800047c <LL_GPIO_TogglePin>:
 800047c:	b580      	push	{r7, lr}
 800047e:	b082      	sub	sp, #8
 8000480:	af00      	add	r7, sp, #0
 8000482:	6078      	str	r0, [r7, #4]
 8000484:	6039      	str	r1, [r7, #0]
 8000486:	687b      	ldr	r3, [r7, #4]
 8000488:	695a      	ldr	r2, [r3, #20]
 800048a:	683b      	ldr	r3, [r7, #0]
 800048c:	405a      	eors	r2, r3
 800048e:	687b      	ldr	r3, [r7, #4]
 8000490:	615a      	str	r2, [r3, #20]
 8000492:	46c0      	nop			; (mov r8, r8)
 8000494:	46bd      	mov	sp, r7
 8000496:	b002      	add	sp, #8
 8000498:	bd80      	pop	{r7, pc}

0800049a <LL_TIM_EnableCounter>:
 800049a:	b580      	push	{r7, lr}
 800049c:	b082      	sub	sp, #8
 800049e:	af00      	add	r7, sp, #0
 80004a0:	6078      	str	r0, [r7, #4]
 80004a2:	687b      	ldr	r3, [r7, #4]
 80004a4:	681b      	ldr	r3, [r3, #0]
 80004a6:	2201      	movs	r2, #1
 80004a8:	431a      	orrs	r2, r3
 80004aa:	687b      	ldr	r3, [r7, #4]
 80004ac:	601a      	str	r2, [r3, #0]
 80004ae:	46c0      	nop			; (mov r8, r8)
 80004b0:	46bd      	mov	sp, r7
 80004b2:	b002      	add	sp, #8
 80004b4:	bd80      	pop	{r7, pc}

080004b6 <LL_TIM_SetCounterMode>:
 80004b6:	b580      	push	{r7, lr}
 80004b8:	b082      	sub	sp, #8
 80004ba:	af00      	add	r7, sp, #0
 80004bc:	6078      	str	r0, [r7, #4]
 80004be:	6039      	str	r1, [r7, #0]
 80004c0:	687b      	ldr	r3, [r7, #4]
 80004c2:	681b      	ldr	r3, [r3, #0]
 80004c4:	2270      	movs	r2, #112	; 0x70
 80004c6:	4393      	bics	r3, r2
 80004c8:	001a      	movs	r2, r3
 80004ca:	683b      	ldr	r3, [r7, #0]
 80004cc:	431a      	orrs	r2, r3
 80004ce:	687b      	ldr	r3, [r7, #4]
 80004d0:	601a      	str	r2, [r3, #0]
 80004d2:	46c0      	nop			; (mov r8, r8)
 80004d4:	46bd      	mov	sp, r7
 80004d6:	b002      	add	sp, #8
 80004d8:	bd80      	pop	{r7, pc}

080004da <LL_TIM_SetPrescaler>:
 80004da:	b580      	push	{r7, lr}
 80004dc:	b082      	sub	sp, #8
 80004de:	af00      	add	r7, sp, #0
 80004e0:	6078      	str	r0, [r7, #4]
 80004e2:	6039      	str	r1, [r7, #0]
 80004e4:	687b      	ldr	r3, [r7, #4]
 80004e6:	683a      	ldr	r2, [r7, #0]
 80004e8:	629a      	str	r2, [r3, #40]	; 0x28
 80004ea:	46c0      	nop			; (mov r8, r8)
 80004ec:	46bd      	mov	sp, r7
 80004ee:	b002      	add	sp, #8
 80004f0:	bd80      	pop	{r7, pc}

080004f2 <LL_TIM_SetAutoReload>:
 80004f2:	b580      	push	{r7, lr}
 80004f4:	b082      	sub	sp, #8
 80004f6:	af00      	add	r7, sp, #0
 80004f8:	6078      	str	r0, [r7, #4]
 80004fa:	6039      	str	r1, [r7, #0]
 80004fc:	687b      	ldr	r3, [r7, #4]
 80004fe:	683a      	ldr	r2, [r7, #0]
 8000500:	62da      	str	r2, [r3, #44]	; 0x2c
 8000502:	46c0      	nop			; (mov r8, r8)
 8000504:	46bd      	mov	sp, r7
 8000506:	b002      	add	sp, #8
 8000508:	bd80      	pop	{r7, pc}

0800050a <LL_TIM_ClearFlag_UPDATE>:
 800050a:	b580      	push	{r7, lr}
 800050c:	b082      	sub	sp, #8
 800050e:	af00      	add	r7, sp, #0
 8000510:	6078      	str	r0, [r7, #4]
 8000512:	687b      	ldr	r3, [r7, #4]
 8000514:	2202      	movs	r2, #2
 8000516:	4252      	negs	r2, r2
 8000518:	611a      	str	r2, [r3, #16]
 800051a:	46c0      	nop			; (mov r8, r8)
 800051c:	46bd      	mov	sp, r7
 800051e:	b002      	add	sp, #8
 8000520:	bd80      	pop	{r7, pc}

08000522 <LL_TIM_EnableIT_UPDATE>:
 8000522:	b580      	push	{r7, lr}
 8000524:	b082      	sub	sp, #8
 8000526:	af00      	add	r7, sp, #0
 8000528:	6078      	str	r0, [r7, #4]
 800052a:	687b      	ldr	r3, [r7, #4]
 800052c:	68db      	ldr	r3, [r3, #12]
 800052e:	2201      	movs	r2, #1
 8000530:	431a      	orrs	r2, r3
 8000532:	687b      	ldr	r3, [r7, #4]
 8000534:	60da      	str	r2, [r3, #12]
 8000536:	46c0      	nop			; (mov r8, r8)
 8000538:	46bd      	mov	sp, r7
 800053a:	b002      	add	sp, #8
 800053c:	bd80      	pop	{r7, pc}
	...

08000540 <rcc_config>:
 8000540:	b580      	push	{r7, lr}
 8000542:	af00      	add	r7, sp, #0
 8000544:	2001      	movs	r0, #1
 8000546:	f7ff ff3d 	bl	80003c4 <LL_FLASH_SetLatency>
 800054a:	f7ff fe8b 	bl	8000264 <LL_RCC_HSI_Enable>
 800054e:	46c0      	nop			; (mov r8, r8)
 8000550:	f7ff fe96 	bl	8000280 <LL_RCC_HSI_IsReady>
 8000554:	0003      	movs	r3, r0
 8000556:	2b01      	cmp	r3, #1
 8000558:	d1fa      	bne.n	8000550 <rcc_config+0x10>
 800055a:	23a0      	movs	r3, #160	; 0xa0
 800055c:	039b      	lsls	r3, r3, #14
 800055e:	0019      	movs	r1, r3
 8000560:	2000      	movs	r0, #0
 8000562:	f7ff ff09 	bl	8000378 <LL_RCC_PLL_ConfigDomain_SYS>
 8000566:	f7ff fee5 	bl	8000334 <LL_RCC_PLL_Enable>
 800056a:	46c0      	nop			; (mov r8, r8)
 800056c:	f7ff fef0 	bl	8000350 <LL_RCC_PLL_IsReady>
 8000570:	0003      	movs	r3, r0
 8000572:	2b01      	cmp	r3, #1
 8000574:	d1fa      	bne.n	800056c <rcc_config+0x2c>
 8000576:	2000      	movs	r0, #0
 8000578:	f7ff feb2 	bl	80002e0 <LL_RCC_SetAHBPrescaler>
 800057c:	2002      	movs	r0, #2
 800057e:	f7ff fe8f 	bl	80002a0 <LL_RCC_SetSysClkSource>
 8000582:	46c0      	nop			; (mov r8, r8)
 8000584:	f7ff fea0 	bl	80002c8 <LL_RCC_GetSysClkSource>
 8000588:	0003      	movs	r3, r0
 800058a:	2b08      	cmp	r3, #8
 800058c:	d1fa      	bne.n	8000584 <rcc_config+0x44>
 800058e:	2000      	movs	r0, #0
 8000590:	f7ff feba 	bl	8000308 <LL_RCC_SetAPB1Prescaler>
 8000594:	4b02      	ldr	r3, [pc, #8]	; (80005a0 <rcc_config+0x60>)
 8000596:	4a03      	ldr	r2, [pc, #12]	; (80005a4 <rcc_config+0x64>)
 8000598:	601a      	str	r2, [r3, #0]
 800059a:	46c0      	nop			; (mov r8, r8)
 800059c:	46bd      	mov	sp, r7
 800059e:	bd80      	pop	{r7, pc}
 80005a0:	20000000 	.word	0x20000000
 80005a4:	02dc6c00 	.word	0x02dc6c00

080005a8 <gpio_config>:
 80005a8:	b580      	push	{r7, lr}
 80005aa:	af00      	add	r7, sp, #0
 80005ac:	2380      	movs	r3, #128	; 0x80
 80005ae:	031b      	lsls	r3, r3, #12
 80005b0:	0018      	movs	r0, r3
 80005b2:	f7ff ff1b 	bl	80003ec <LL_AHB1_GRP1_EnableClock>
 80005b6:	2380      	movs	r3, #128	; 0x80
 80005b8:	005b      	lsls	r3, r3, #1
 80005ba:	4807      	ldr	r0, [pc, #28]	; (80005d8 <gpio_config+0x30>)
 80005bc:	2201      	movs	r2, #1
 80005be:	0019      	movs	r1, r3
 80005c0:	f7ff ff40 	bl	8000444 <LL_GPIO_SetPinMode>
 80005c4:	2380      	movs	r3, #128	; 0x80
 80005c6:	009b      	lsls	r3, r3, #2
 80005c8:	4803      	ldr	r0, [pc, #12]	; (80005d8 <gpio_config+0x30>)
 80005ca:	2201      	movs	r2, #1
 80005cc:	0019      	movs	r1, r3
 80005ce:	f7ff ff39 	bl	8000444 <LL_GPIO_SetPinMode>
 80005d2:	46c0      	nop			; (mov r8, r8)
 80005d4:	46bd      	mov	sp, r7
 80005d6:	bd80      	pop	{r7, pc}
 80005d8:	48000800 	.word	0x48000800

080005dc <timers_config>:
 80005dc:	b580      	push	{r7, lr}
 80005de:	af00      	add	r7, sp, #0
 80005e0:	2001      	movs	r0, #1
 80005e2:	f7ff ff19 	bl	8000418 <LL_APB1_GRP1_EnableClock>
 80005e6:	4a14      	ldr	r2, [pc, #80]	; (8000638 <timers_config+0x5c>)
 80005e8:	2380      	movs	r3, #128	; 0x80
 80005ea:	05db      	lsls	r3, r3, #23
 80005ec:	0011      	movs	r1, r2
 80005ee:	0018      	movs	r0, r3
 80005f0:	f7ff ff73 	bl	80004da <LL_TIM_SetPrescaler>
 80005f4:	4a11      	ldr	r2, [pc, #68]	; (800063c <timers_config+0x60>)
 80005f6:	2380      	movs	r3, #128	; 0x80
 80005f8:	05db      	lsls	r3, r3, #23
 80005fa:	0011      	movs	r1, r2
 80005fc:	0018      	movs	r0, r3
 80005fe:	f7ff ff78 	bl	80004f2 <LL_TIM_SetAutoReload>
 8000602:	2380      	movs	r3, #128	; 0x80
 8000604:	05db      	lsls	r3, r3, #23
 8000606:	2100      	movs	r1, #0
 8000608:	0018      	movs	r0, r3
 800060a:	f7ff ff54 	bl	80004b6 <LL_TIM_SetCounterMode>
 800060e:	2380      	movs	r3, #128	; 0x80
 8000610:	05db      	lsls	r3, r3, #23
 8000612:	0018      	movs	r0, r3
 8000614:	f7ff ff85 	bl	8000522 <LL_TIM_EnableIT_UPDATE>
 8000618:	2380      	movs	r3, #128	; 0x80
 800061a:	05db      	lsls	r3, r3, #23
 800061c:	0018      	movs	r0, r3
 800061e:	f7ff ff3c 	bl	800049a <LL_TIM_EnableCounter>
 8000622:	200f      	movs	r0, #15
 8000624:	f7ff fd9a 	bl	800015c <NVIC_EnableIRQ>
 8000628:	2100      	movs	r1, #0
 800062a:	200f      	movs	r0, #15
 800062c:	f7ff fdac 	bl	8000188 <NVIC_SetPriority>
 8000630:	46c0      	nop			; (mov r8, r8)
 8000632:	46bd      	mov	sp, r7
 8000634:	bd80      	pop	{r7, pc}
 8000636:	46c0      	nop			; (mov r8, r8)
 8000638:	0000bb7f 	.word	0x0000bb7f
 800063c:	000007cf 	.word	0x000007cf

08000640 <TIM2_IRQHandler>:
 8000640:	b580      	push	{r7, lr}
 8000642:	af00      	add	r7, sp, #0
 8000644:	2380      	movs	r3, #128	; 0x80
 8000646:	005b      	lsls	r3, r3, #1
 8000648:	4a06      	ldr	r2, [pc, #24]	; (8000664 <TIM2_IRQHandler+0x24>)
 800064a:	0019      	movs	r1, r3
 800064c:	0010      	movs	r0, r2
 800064e:	f7ff ff15 	bl	800047c <LL_GPIO_TogglePin>
 8000652:	2380      	movs	r3, #128	; 0x80
 8000654:	05db      	lsls	r3, r3, #23
 8000656:	0018      	movs	r0, r3
 8000658:	f7ff ff57 	bl	800050a <LL_TIM_ClearFlag_UPDATE>
 800065c:	46c0      	nop			; (mov r8, r8)
 800065e:	46bd      	mov	sp, r7
 8000660:	bd80      	pop	{r7, pc}
 8000662:	46c0      	nop			; (mov r8, r8)
 8000664:	48000800 	.word	0x48000800

08000668 <main>:
 8000668:	b580      	push	{r7, lr}
 800066a:	af00      	add	r7, sp, #0
 800066c:	f7ff ff68 	bl	8000540 <rcc_config>
 8000670:	f7ff ff9a 	bl	80005a8 <gpio_config>
 8000674:	f7ff ffb2 	bl	80005dc <timers_config>
 8000678:	e7fe      	b.n	8000678 <main+0x10>
	...

0800067c <SystemInit>:
 800067c:	b580      	push	{r7, lr}
 800067e:	af00      	add	r7, sp, #0
 8000680:	4b1a      	ldr	r3, [pc, #104]	; (80006ec <SystemInit+0x70>)
 8000682:	681a      	ldr	r2, [r3, #0]
 8000684:	4b19      	ldr	r3, [pc, #100]	; (80006ec <SystemInit+0x70>)
 8000686:	2101      	movs	r1, #1
 8000688:	430a      	orrs	r2, r1
 800068a:	601a      	str	r2, [r3, #0]
 800068c:	4b17      	ldr	r3, [pc, #92]	; (80006ec <SystemInit+0x70>)
 800068e:	685a      	ldr	r2, [r3, #4]
 8000690:	4b16      	ldr	r3, [pc, #88]	; (80006ec <SystemInit+0x70>)
 8000692:	4917      	ldr	r1, [pc, #92]	; (80006f0 <SystemInit+0x74>)
 8000694:	400a      	ands	r2, r1
 8000696:	605a      	str	r2, [r3, #4]
 8000698:	4b14      	ldr	r3, [pc, #80]	; (80006ec <SystemInit+0x70>)
 800069a:	681a      	ldr	r2, [r3, #0]
 800069c:	4b13      	ldr	r3, [pc, #76]	; (80006ec <SystemInit+0x70>)
 800069e:	4915      	ldr	r1, [pc, #84]	; (80006f4 <SystemInit+0x78>)
 80006a0:	400a      	ands	r2, r1
 80006a2:	601a      	str	r2, [r3, #0]
 80006a4:	4b11      	ldr	r3, [pc, #68]	; (80006ec <SystemInit+0x70>)
 80006a6:	681a      	ldr	r2, [r3, #0]
 80006a8:	4b10      	ldr	r3, [pc, #64]	; (80006ec <SystemInit+0x70>)
 80006aa:	4913      	ldr	r1, [pc, #76]	; (80006f8 <SystemInit+0x7c>)
 80006ac:	400a      	ands	r2, r1
 80006ae:	601a      	str	r2, [r3, #0]
 80006b0:	4b0e      	ldr	r3, [pc, #56]	; (80006ec <SystemInit+0x70>)
 80006b2:	685a      	ldr	r2, [r3, #4]
 80006b4:	4b0d      	ldr	r3, [pc, #52]	; (80006ec <SystemInit+0x70>)
 80006b6:	4911      	ldr	r1, [pc, #68]	; (80006fc <SystemInit+0x80>)
 80006b8:	400a      	ands	r2, r1
 80006ba:	605a      	str	r2, [r3, #4]
 80006bc:	4b0b      	ldr	r3, [pc, #44]	; (80006ec <SystemInit+0x70>)
 80006be:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80006c0:	4b0a      	ldr	r3, [pc, #40]	; (80006ec <SystemInit+0x70>)
 80006c2:	210f      	movs	r1, #15
 80006c4:	438a      	bics	r2, r1
 80006c6:	62da      	str	r2, [r3, #44]	; 0x2c
 80006c8:	4b08      	ldr	r3, [pc, #32]	; (80006ec <SystemInit+0x70>)
 80006ca:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80006cc:	4b07      	ldr	r3, [pc, #28]	; (80006ec <SystemInit+0x70>)
 80006ce:	490c      	ldr	r1, [pc, #48]	; (8000700 <SystemInit+0x84>)
 80006d0:	400a      	ands	r2, r1
 80006d2:	631a      	str	r2, [r3, #48]	; 0x30
 80006d4:	4b05      	ldr	r3, [pc, #20]	; (80006ec <SystemInit+0x70>)
 80006d6:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80006d8:	4b04      	ldr	r3, [pc, #16]	; (80006ec <SystemInit+0x70>)
 80006da:	2101      	movs	r1, #1
 80006dc:	438a      	bics	r2, r1
 80006de:	635a      	str	r2, [r3, #52]	; 0x34
 80006e0:	4b02      	ldr	r3, [pc, #8]	; (80006ec <SystemInit+0x70>)
 80006e2:	2200      	movs	r2, #0
 80006e4:	609a      	str	r2, [r3, #8]
 80006e6:	46c0      	nop			; (mov r8, r8)
 80006e8:	46bd      	mov	sp, r7
 80006ea:	bd80      	pop	{r7, pc}
 80006ec:	40021000 	.word	0x40021000
 80006f0:	f8ffb80c 	.word	0xf8ffb80c
 80006f4:	fef6ffff 	.word	0xfef6ffff
 80006f8:	fffbffff 	.word	0xfffbffff
 80006fc:	ffc0ffff 	.word	0xffc0ffff
 8000700:	fffffeac 	.word	0xfffffeac

08000704 <NMI_Handler>:
 8000704:	b580      	push	{r7, lr}
 8000706:	af00      	add	r7, sp, #0
 8000708:	46c0      	nop			; (mov r8, r8)
 800070a:	46bd      	mov	sp, r7
 800070c:	bd80      	pop	{r7, pc}

0800070e <HardFault_Handler>:
 800070e:	b580      	push	{r7, lr}
 8000710:	af00      	add	r7, sp, #0
 8000712:	e7fe      	b.n	8000712 <HardFault_Handler+0x4>

08000714 <SVC_Handler>:
 8000714:	b580      	push	{r7, lr}
 8000716:	af00      	add	r7, sp, #0
 8000718:	46c0      	nop			; (mov r8, r8)
 800071a:	46bd      	mov	sp, r7
 800071c:	bd80      	pop	{r7, pc}

0800071e <PendSV_Handler>:
 800071e:	b580      	push	{r7, lr}
 8000720:	af00      	add	r7, sp, #0
 8000722:	46c0      	nop			; (mov r8, r8)
 8000724:	46bd      	mov	sp, r7
 8000726:	bd80      	pop	{r7, pc}

08000728 <__libc_init_array>:
 8000728:	b570      	push	{r4, r5, r6, lr}
 800072a:	4d0c      	ldr	r5, [pc, #48]	; (800075c <__libc_init_array+0x34>)
 800072c:	4e0c      	ldr	r6, [pc, #48]	; (8000760 <__libc_init_array+0x38>)
 800072e:	1b76      	subs	r6, r6, r5
 8000730:	10b6      	asrs	r6, r6, #2
 8000732:	d005      	beq.n	8000740 <__libc_init_array+0x18>
 8000734:	2400      	movs	r4, #0
 8000736:	cd08      	ldmia	r5!, {r3}
 8000738:	3401      	adds	r4, #1
 800073a:	4798      	blx	r3
 800073c:	42a6      	cmp	r6, r4
 800073e:	d1fa      	bne.n	8000736 <__libc_init_array+0xe>
 8000740:	f000 f896 	bl	8000870 <_init>
 8000744:	4d07      	ldr	r5, [pc, #28]	; (8000764 <__libc_init_array+0x3c>)
 8000746:	4e08      	ldr	r6, [pc, #32]	; (8000768 <__libc_init_array+0x40>)
 8000748:	1b76      	subs	r6, r6, r5
 800074a:	10b6      	asrs	r6, r6, #2
 800074c:	d005      	beq.n	800075a <__libc_init_array+0x32>
 800074e:	2400      	movs	r4, #0
 8000750:	cd08      	ldmia	r5!, {r3}
 8000752:	3401      	adds	r4, #1
 8000754:	4798      	blx	r3
 8000756:	42a6      	cmp	r6, r4
 8000758:	d1fa      	bne.n	8000750 <__libc_init_array+0x28>
 800075a:	bd70      	pop	{r4, r5, r6, pc}
 800075c:	0800088c 	.word	0x0800088c
 8000760:	0800088c 	.word	0x0800088c
 8000764:	0800088c 	.word	0x0800088c
 8000768:	08000894 	.word	0x08000894

0800076c <register_fini>:
 800076c:	4b03      	ldr	r3, [pc, #12]	; (800077c <register_fini+0x10>)
 800076e:	b510      	push	{r4, lr}
 8000770:	2b00      	cmp	r3, #0
 8000772:	d002      	beq.n	800077a <register_fini+0xe>
 8000774:	4802      	ldr	r0, [pc, #8]	; (8000780 <register_fini+0x14>)
 8000776:	f000 f805 	bl	8000784 <atexit>
 800077a:	bd10      	pop	{r4, pc}
 800077c:	00000000 	.word	0x00000000
 8000780:	08000795 	.word	0x08000795

08000784 <atexit>:
 8000784:	b510      	push	{r4, lr}
 8000786:	0001      	movs	r1, r0
 8000788:	2300      	movs	r3, #0
 800078a:	2200      	movs	r2, #0
 800078c:	2000      	movs	r0, #0
 800078e:	f000 f819 	bl	80007c4 <__register_exitproc>
 8000792:	bd10      	pop	{r4, pc}

08000794 <__libc_fini_array>:
 8000794:	b570      	push	{r4, r5, r6, lr}
 8000796:	4d07      	ldr	r5, [pc, #28]	; (80007b4 <__libc_fini_array+0x20>)
 8000798:	4c07      	ldr	r4, [pc, #28]	; (80007b8 <__libc_fini_array+0x24>)
 800079a:	1b64      	subs	r4, r4, r5
 800079c:	10a4      	asrs	r4, r4, #2
 800079e:	d005      	beq.n	80007ac <__libc_fini_array+0x18>
 80007a0:	3c01      	subs	r4, #1
 80007a2:	00a3      	lsls	r3, r4, #2
 80007a4:	58eb      	ldr	r3, [r5, r3]
 80007a6:	4798      	blx	r3
 80007a8:	2c00      	cmp	r4, #0
 80007aa:	d1f9      	bne.n	80007a0 <__libc_fini_array+0xc>
 80007ac:	f000 f866 	bl	800087c <_fini>
 80007b0:	bd70      	pop	{r4, r5, r6, pc}
 80007b2:	46c0      	nop			; (mov r8, r8)
 80007b4:	08000894 	.word	0x08000894
 80007b8:	08000898 	.word	0x08000898

080007bc <__retarget_lock_acquire_recursive>:
 80007bc:	4770      	bx	lr
 80007be:	46c0      	nop			; (mov r8, r8)

080007c0 <__retarget_lock_release_recursive>:
 80007c0:	4770      	bx	lr
 80007c2:	46c0      	nop			; (mov r8, r8)

080007c4 <__register_exitproc>:
 80007c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007c6:	46d6      	mov	lr, sl
 80007c8:	464f      	mov	r7, r9
 80007ca:	4646      	mov	r6, r8
 80007cc:	b5c0      	push	{r6, r7, lr}
 80007ce:	4f26      	ldr	r7, [pc, #152]	; (8000868 <__register_exitproc+0xa4>)
 80007d0:	b082      	sub	sp, #8
 80007d2:	0006      	movs	r6, r0
 80007d4:	6838      	ldr	r0, [r7, #0]
 80007d6:	4692      	mov	sl, r2
 80007d8:	4698      	mov	r8, r3
 80007da:	4689      	mov	r9, r1
 80007dc:	f7ff ffee 	bl	80007bc <__retarget_lock_acquire_recursive>
 80007e0:	4b22      	ldr	r3, [pc, #136]	; (800086c <__register_exitproc+0xa8>)
 80007e2:	681b      	ldr	r3, [r3, #0]
 80007e4:	9301      	str	r3, [sp, #4]
 80007e6:	23a4      	movs	r3, #164	; 0xa4
 80007e8:	9a01      	ldr	r2, [sp, #4]
 80007ea:	005b      	lsls	r3, r3, #1
 80007ec:	58d5      	ldr	r5, [r2, r3]
 80007ee:	2d00      	cmp	r5, #0
 80007f0:	d02e      	beq.n	8000850 <__register_exitproc+0x8c>
 80007f2:	686c      	ldr	r4, [r5, #4]
 80007f4:	2c1f      	cmp	r4, #31
 80007f6:	dc30      	bgt.n	800085a <__register_exitproc+0x96>
 80007f8:	2e00      	cmp	r6, #0
 80007fa:	d10f      	bne.n	800081c <__register_exitproc+0x58>
 80007fc:	1c63      	adds	r3, r4, #1
 80007fe:	606b      	str	r3, [r5, #4]
 8000800:	464b      	mov	r3, r9
 8000802:	3402      	adds	r4, #2
 8000804:	00a4      	lsls	r4, r4, #2
 8000806:	6838      	ldr	r0, [r7, #0]
 8000808:	5163      	str	r3, [r4, r5]
 800080a:	f7ff ffd9 	bl	80007c0 <__retarget_lock_release_recursive>
 800080e:	2000      	movs	r0, #0
 8000810:	b002      	add	sp, #8
 8000812:	bce0      	pop	{r5, r6, r7}
 8000814:	46ba      	mov	sl, r7
 8000816:	46b1      	mov	r9, r6
 8000818:	46a8      	mov	r8, r5
 800081a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800081c:	2288      	movs	r2, #136	; 0x88
 800081e:	4651      	mov	r1, sl
 8000820:	0028      	movs	r0, r5
 8000822:	00a3      	lsls	r3, r4, #2
 8000824:	18eb      	adds	r3, r5, r3
 8000826:	5099      	str	r1, [r3, r2]
 8000828:	3a87      	subs	r2, #135	; 0x87
 800082a:	40a2      	lsls	r2, r4
 800082c:	3089      	adds	r0, #137	; 0x89
 800082e:	30ff      	adds	r0, #255	; 0xff
 8000830:	6801      	ldr	r1, [r0, #0]
 8000832:	4311      	orrs	r1, r2
 8000834:	6001      	str	r1, [r0, #0]
 8000836:	2184      	movs	r1, #132	; 0x84
 8000838:	4640      	mov	r0, r8
 800083a:	0049      	lsls	r1, r1, #1
 800083c:	5058      	str	r0, [r3, r1]
 800083e:	2e02      	cmp	r6, #2
 8000840:	d1dc      	bne.n	80007fc <__register_exitproc+0x38>
 8000842:	002b      	movs	r3, r5
 8000844:	338d      	adds	r3, #141	; 0x8d
 8000846:	33ff      	adds	r3, #255	; 0xff
 8000848:	6819      	ldr	r1, [r3, #0]
 800084a:	430a      	orrs	r2, r1
 800084c:	601a      	str	r2, [r3, #0]
 800084e:	e7d5      	b.n	80007fc <__register_exitproc+0x38>
 8000850:	0015      	movs	r5, r2
 8000852:	354d      	adds	r5, #77	; 0x4d
 8000854:	35ff      	adds	r5, #255	; 0xff
 8000856:	50d5      	str	r5, [r2, r3]
 8000858:	e7cb      	b.n	80007f2 <__register_exitproc+0x2e>
 800085a:	6838      	ldr	r0, [r7, #0]
 800085c:	f7ff ffb0 	bl	80007c0 <__retarget_lock_release_recursive>
 8000860:	2001      	movs	r0, #1
 8000862:	4240      	negs	r0, r0
 8000864:	e7d4      	b.n	8000810 <__register_exitproc+0x4c>
 8000866:	46c0      	nop			; (mov r8, r8)
 8000868:	20000430 	.word	0x20000430
 800086c:	08000888 	.word	0x08000888

08000870 <_init>:
 8000870:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000872:	46c0      	nop			; (mov r8, r8)
 8000874:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000876:	bc08      	pop	{r3}
 8000878:	469e      	mov	lr, r3
 800087a:	4770      	bx	lr

0800087c <_fini>:
 800087c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800087e:	46c0      	nop			; (mov r8, r8)
 8000880:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000882:	bc08      	pop	{r3}
 8000884:	469e      	mov	lr, r3
 8000886:	4770      	bx	lr
