
build/gpio.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000870  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000018  08000930  08000930  00010930  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000948  08000948  00010948  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000950  08000950  00010950  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000954  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000d88  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000d88  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000a24  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000300  00000000  00000000  00020e80  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000558  00000000  00000000  00021180  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000128  00000000  00000000  000216d8  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000f8  00000000  00000000  00021800  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000489  00000000  00000000  000218f8  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000502  00000000  00000000  00021d81  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000007f  00000000  00000000  00022283  2**0  CONTENTS, READONLY
 17 .debug_frame      00000554  00000000  00000000  00022304  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000918 	.word	0x08000918

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
 8000104:	08000918 	.word	0x08000918

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f000 fa6b 	bl	8000724 <SystemInit>
 800024e:	f000 fabf 	bl	80007d0 <__libc_init_array>
 8000252:	f000 fa1b 	bl	800068c <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08000954 	.word	0x08000954
 8000268:	20000434 	.word	0x20000434
 800026c:	20000454 	.word	0x20000454

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <LL_RCC_HSI_Enable>:
 8000274:	b580      	push	{r7, lr}
 8000276:	af00      	add	r7, sp, #0
 8000278:	4b04      	ldr	r3, [pc, #16]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027a:	681a      	ldr	r2, [r3, #0]
 800027c:	4b03      	ldr	r3, [pc, #12]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027e:	2101      	movs	r1, #1
 8000280:	430a      	orrs	r2, r1
 8000282:	601a      	str	r2, [r3, #0]
 8000284:	46c0      	nop			; (mov r8, r8)
 8000286:	46bd      	mov	sp, r7
 8000288:	bd80      	pop	{r7, pc}
 800028a:	46c0      	nop			; (mov r8, r8)
 800028c:	40021000 	.word	0x40021000

08000290 <LL_RCC_HSI_IsReady>:
 8000290:	b580      	push	{r7, lr}
 8000292:	af00      	add	r7, sp, #0
 8000294:	4b05      	ldr	r3, [pc, #20]	; (80002ac <LL_RCC_HSI_IsReady+0x1c>)
 8000296:	681b      	ldr	r3, [r3, #0]
 8000298:	2202      	movs	r2, #2
 800029a:	4013      	ands	r3, r2
 800029c:	3b02      	subs	r3, #2
 800029e:	425a      	negs	r2, r3
 80002a0:	4153      	adcs	r3, r2
 80002a2:	b2db      	uxtb	r3, r3
 80002a4:	0018      	movs	r0, r3
 80002a6:	46bd      	mov	sp, r7
 80002a8:	bd80      	pop	{r7, pc}
 80002aa:	46c0      	nop			; (mov r8, r8)
 80002ac:	40021000 	.word	0x40021000

080002b0 <LL_RCC_SetSysClkSource>:
 80002b0:	b580      	push	{r7, lr}
 80002b2:	b082      	sub	sp, #8
 80002b4:	af00      	add	r7, sp, #0
 80002b6:	6078      	str	r0, [r7, #4]
 80002b8:	4b06      	ldr	r3, [pc, #24]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002ba:	685b      	ldr	r3, [r3, #4]
 80002bc:	2203      	movs	r2, #3
 80002be:	4393      	bics	r3, r2
 80002c0:	0019      	movs	r1, r3
 80002c2:	4b04      	ldr	r3, [pc, #16]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002c4:	687a      	ldr	r2, [r7, #4]
 80002c6:	430a      	orrs	r2, r1
 80002c8:	605a      	str	r2, [r3, #4]
 80002ca:	46c0      	nop			; (mov r8, r8)
 80002cc:	46bd      	mov	sp, r7
 80002ce:	b002      	add	sp, #8
 80002d0:	bd80      	pop	{r7, pc}
 80002d2:	46c0      	nop			; (mov r8, r8)
 80002d4:	40021000 	.word	0x40021000

080002d8 <LL_RCC_GetSysClkSource>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	4b03      	ldr	r3, [pc, #12]	; (80002ec <LL_RCC_GetSysClkSource+0x14>)
 80002de:	685b      	ldr	r3, [r3, #4]
 80002e0:	220c      	movs	r2, #12
 80002e2:	4013      	ands	r3, r2
 80002e4:	0018      	movs	r0, r3
 80002e6:	46bd      	mov	sp, r7
 80002e8:	bd80      	pop	{r7, pc}
 80002ea:	46c0      	nop			; (mov r8, r8)
 80002ec:	40021000 	.word	0x40021000

080002f0 <LL_RCC_SetAHBPrescaler>:
 80002f0:	b580      	push	{r7, lr}
 80002f2:	b082      	sub	sp, #8
 80002f4:	af00      	add	r7, sp, #0
 80002f6:	6078      	str	r0, [r7, #4]
 80002f8:	4b06      	ldr	r3, [pc, #24]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 80002fa:	685b      	ldr	r3, [r3, #4]
 80002fc:	22f0      	movs	r2, #240	; 0xf0
 80002fe:	4393      	bics	r3, r2
 8000300:	0019      	movs	r1, r3
 8000302:	4b04      	ldr	r3, [pc, #16]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 8000304:	687a      	ldr	r2, [r7, #4]
 8000306:	430a      	orrs	r2, r1
 8000308:	605a      	str	r2, [r3, #4]
 800030a:	46c0      	nop			; (mov r8, r8)
 800030c:	46bd      	mov	sp, r7
 800030e:	b002      	add	sp, #8
 8000310:	bd80      	pop	{r7, pc}
 8000312:	46c0      	nop			; (mov r8, r8)
 8000314:	40021000 	.word	0x40021000

08000318 <LL_RCC_SetAPB1Prescaler>:
 8000318:	b580      	push	{r7, lr}
 800031a:	b082      	sub	sp, #8
 800031c:	af00      	add	r7, sp, #0
 800031e:	6078      	str	r0, [r7, #4]
 8000320:	4b06      	ldr	r3, [pc, #24]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000322:	685b      	ldr	r3, [r3, #4]
 8000324:	4a06      	ldr	r2, [pc, #24]	; (8000340 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000326:	4013      	ands	r3, r2
 8000328:	0019      	movs	r1, r3
 800032a:	4b04      	ldr	r3, [pc, #16]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 800032c:	687a      	ldr	r2, [r7, #4]
 800032e:	430a      	orrs	r2, r1
 8000330:	605a      	str	r2, [r3, #4]
 8000332:	46c0      	nop			; (mov r8, r8)
 8000334:	46bd      	mov	sp, r7
 8000336:	b002      	add	sp, #8
 8000338:	bd80      	pop	{r7, pc}
 800033a:	46c0      	nop			; (mov r8, r8)
 800033c:	40021000 	.word	0x40021000
 8000340:	fffff8ff 	.word	0xfffff8ff

08000344 <LL_RCC_PLL_Enable>:
 8000344:	b580      	push	{r7, lr}
 8000346:	af00      	add	r7, sp, #0
 8000348:	4b04      	ldr	r3, [pc, #16]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034a:	681a      	ldr	r2, [r3, #0]
 800034c:	4b03      	ldr	r3, [pc, #12]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034e:	2180      	movs	r1, #128	; 0x80
 8000350:	0449      	lsls	r1, r1, #17
 8000352:	430a      	orrs	r2, r1
 8000354:	601a      	str	r2, [r3, #0]
 8000356:	46c0      	nop			; (mov r8, r8)
 8000358:	46bd      	mov	sp, r7
 800035a:	bd80      	pop	{r7, pc}
 800035c:	40021000 	.word	0x40021000

08000360 <LL_RCC_PLL_IsReady>:
 8000360:	b580      	push	{r7, lr}
 8000362:	af00      	add	r7, sp, #0
 8000364:	4b07      	ldr	r3, [pc, #28]	; (8000384 <LL_RCC_PLL_IsReady+0x24>)
 8000366:	681a      	ldr	r2, [r3, #0]
 8000368:	2380      	movs	r3, #128	; 0x80
 800036a:	049b      	lsls	r3, r3, #18
 800036c:	4013      	ands	r3, r2
 800036e:	22fe      	movs	r2, #254	; 0xfe
 8000370:	0612      	lsls	r2, r2, #24
 8000372:	4694      	mov	ip, r2
 8000374:	4463      	add	r3, ip
 8000376:	425a      	negs	r2, r3
 8000378:	4153      	adcs	r3, r2
 800037a:	b2db      	uxtb	r3, r3
 800037c:	0018      	movs	r0, r3
 800037e:	46bd      	mov	sp, r7
 8000380:	bd80      	pop	{r7, pc}
 8000382:	46c0      	nop			; (mov r8, r8)
 8000384:	40021000 	.word	0x40021000

08000388 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000388:	b580      	push	{r7, lr}
 800038a:	b082      	sub	sp, #8
 800038c:	af00      	add	r7, sp, #0
 800038e:	6078      	str	r0, [r7, #4]
 8000390:	6039      	str	r1, [r7, #0]
 8000392:	4b0e      	ldr	r3, [pc, #56]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000394:	685b      	ldr	r3, [r3, #4]
 8000396:	4a0e      	ldr	r2, [pc, #56]	; (80003d0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000398:	4013      	ands	r3, r2
 800039a:	0019      	movs	r1, r3
 800039c:	687a      	ldr	r2, [r7, #4]
 800039e:	2380      	movs	r3, #128	; 0x80
 80003a0:	025b      	lsls	r3, r3, #9
 80003a2:	401a      	ands	r2, r3
 80003a4:	683b      	ldr	r3, [r7, #0]
 80003a6:	431a      	orrs	r2, r3
 80003a8:	4b08      	ldr	r3, [pc, #32]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003aa:	430a      	orrs	r2, r1
 80003ac:	605a      	str	r2, [r3, #4]
 80003ae:	4b07      	ldr	r3, [pc, #28]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003b2:	220f      	movs	r2, #15
 80003b4:	4393      	bics	r3, r2
 80003b6:	0019      	movs	r1, r3
 80003b8:	687b      	ldr	r3, [r7, #4]
 80003ba:	220f      	movs	r2, #15
 80003bc:	401a      	ands	r2, r3
 80003be:	4b03      	ldr	r3, [pc, #12]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003c0:	430a      	orrs	r2, r1
 80003c2:	62da      	str	r2, [r3, #44]	; 0x2c
 80003c4:	46c0      	nop			; (mov r8, r8)
 80003c6:	46bd      	mov	sp, r7
 80003c8:	b002      	add	sp, #8
 80003ca:	bd80      	pop	{r7, pc}
 80003cc:	40021000 	.word	0x40021000
 80003d0:	ffc2ffff 	.word	0xffc2ffff

080003d4 <LL_FLASH_SetLatency>:
 80003d4:	b580      	push	{r7, lr}
 80003d6:	b082      	sub	sp, #8
 80003d8:	af00      	add	r7, sp, #0
 80003da:	6078      	str	r0, [r7, #4]
 80003dc:	4b06      	ldr	r3, [pc, #24]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003de:	681b      	ldr	r3, [r3, #0]
 80003e0:	2201      	movs	r2, #1
 80003e2:	4393      	bics	r3, r2
 80003e4:	0019      	movs	r1, r3
 80003e6:	4b04      	ldr	r3, [pc, #16]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003e8:	687a      	ldr	r2, [r7, #4]
 80003ea:	430a      	orrs	r2, r1
 80003ec:	601a      	str	r2, [r3, #0]
 80003ee:	46c0      	nop			; (mov r8, r8)
 80003f0:	46bd      	mov	sp, r7
 80003f2:	b002      	add	sp, #8
 80003f4:	bd80      	pop	{r7, pc}
 80003f6:	46c0      	nop			; (mov r8, r8)
 80003f8:	40022000 	.word	0x40022000

080003fc <LL_AHB1_GRP1_EnableClock>:
 80003fc:	b580      	push	{r7, lr}
 80003fe:	b084      	sub	sp, #16
 8000400:	af00      	add	r7, sp, #0
 8000402:	6078      	str	r0, [r7, #4]
 8000404:	4b07      	ldr	r3, [pc, #28]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000406:	6959      	ldr	r1, [r3, #20]
 8000408:	4b06      	ldr	r3, [pc, #24]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 800040a:	687a      	ldr	r2, [r7, #4]
 800040c:	430a      	orrs	r2, r1
 800040e:	615a      	str	r2, [r3, #20]
 8000410:	4b04      	ldr	r3, [pc, #16]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000412:	695b      	ldr	r3, [r3, #20]
 8000414:	687a      	ldr	r2, [r7, #4]
 8000416:	4013      	ands	r3, r2
 8000418:	60fb      	str	r3, [r7, #12]
 800041a:	68fb      	ldr	r3, [r7, #12]
 800041c:	46c0      	nop			; (mov r8, r8)
 800041e:	46bd      	mov	sp, r7
 8000420:	b004      	add	sp, #16
 8000422:	bd80      	pop	{r7, pc}
 8000424:	40021000 	.word	0x40021000

08000428 <LL_GPIO_SetPinMode>:
 8000428:	b580      	push	{r7, lr}
 800042a:	b084      	sub	sp, #16
 800042c:	af00      	add	r7, sp, #0
 800042e:	60f8      	str	r0, [r7, #12]
 8000430:	60b9      	str	r1, [r7, #8]
 8000432:	607a      	str	r2, [r7, #4]
 8000434:	68fb      	ldr	r3, [r7, #12]
 8000436:	6819      	ldr	r1, [r3, #0]
 8000438:	68bb      	ldr	r3, [r7, #8]
 800043a:	68ba      	ldr	r2, [r7, #8]
 800043c:	435a      	muls	r2, r3
 800043e:	0013      	movs	r3, r2
 8000440:	005b      	lsls	r3, r3, #1
 8000442:	189b      	adds	r3, r3, r2
 8000444:	43db      	mvns	r3, r3
 8000446:	400b      	ands	r3, r1
 8000448:	001a      	movs	r2, r3
 800044a:	68bb      	ldr	r3, [r7, #8]
 800044c:	68b9      	ldr	r1, [r7, #8]
 800044e:	434b      	muls	r3, r1
 8000450:	6879      	ldr	r1, [r7, #4]
 8000452:	434b      	muls	r3, r1
 8000454:	431a      	orrs	r2, r3
 8000456:	68fb      	ldr	r3, [r7, #12]
 8000458:	601a      	str	r2, [r3, #0]
 800045a:	46c0      	nop			; (mov r8, r8)
 800045c:	46bd      	mov	sp, r7
 800045e:	b004      	add	sp, #16
 8000460:	bd80      	pop	{r7, pc}

08000462 <LL_GPIO_IsInputPinSet>:
 8000462:	b580      	push	{r7, lr}
 8000464:	b082      	sub	sp, #8
 8000466:	af00      	add	r7, sp, #0
 8000468:	6078      	str	r0, [r7, #4]
 800046a:	6039      	str	r1, [r7, #0]
 800046c:	687b      	ldr	r3, [r7, #4]
 800046e:	691b      	ldr	r3, [r3, #16]
 8000470:	683a      	ldr	r2, [r7, #0]
 8000472:	4013      	ands	r3, r2
 8000474:	683a      	ldr	r2, [r7, #0]
 8000476:	1ad3      	subs	r3, r2, r3
 8000478:	425a      	negs	r2, r3
 800047a:	4153      	adcs	r3, r2
 800047c:	b2db      	uxtb	r3, r3
 800047e:	0018      	movs	r0, r3
 8000480:	46bd      	mov	sp, r7
 8000482:	b002      	add	sp, #8
 8000484:	bd80      	pop	{r7, pc}

08000486 <LL_GPIO_WriteOutputPort>:
 8000486:	b580      	push	{r7, lr}
 8000488:	b082      	sub	sp, #8
 800048a:	af00      	add	r7, sp, #0
 800048c:	6078      	str	r0, [r7, #4]
 800048e:	6039      	str	r1, [r7, #0]
 8000490:	687b      	ldr	r3, [r7, #4]
 8000492:	683a      	ldr	r2, [r7, #0]
 8000494:	615a      	str	r2, [r3, #20]
 8000496:	46c0      	nop			; (mov r8, r8)
 8000498:	46bd      	mov	sp, r7
 800049a:	b002      	add	sp, #8
 800049c:	bd80      	pop	{r7, pc}

0800049e <LL_GPIO_ReadOutputPort>:
 800049e:	b580      	push	{r7, lr}
 80004a0:	b082      	sub	sp, #8
 80004a2:	af00      	add	r7, sp, #0
 80004a4:	6078      	str	r0, [r7, #4]
 80004a6:	687b      	ldr	r3, [r7, #4]
 80004a8:	695b      	ldr	r3, [r3, #20]
 80004aa:	0018      	movs	r0, r3
 80004ac:	46bd      	mov	sp, r7
 80004ae:	b002      	add	sp, #8
 80004b0:	bd80      	pop	{r7, pc}

080004b2 <LL_GPIO_ResetOutputPin>:
 80004b2:	b580      	push	{r7, lr}
 80004b4:	b082      	sub	sp, #8
 80004b6:	af00      	add	r7, sp, #0
 80004b8:	6078      	str	r0, [r7, #4]
 80004ba:	6039      	str	r1, [r7, #0]
 80004bc:	687b      	ldr	r3, [r7, #4]
 80004be:	683a      	ldr	r2, [r7, #0]
 80004c0:	629a      	str	r2, [r3, #40]	; 0x28
 80004c2:	46c0      	nop			; (mov r8, r8)
 80004c4:	46bd      	mov	sp, r7
 80004c6:	b002      	add	sp, #8
 80004c8:	bd80      	pop	{r7, pc}

080004ca <LL_GPIO_TogglePin>:
 80004ca:	b580      	push	{r7, lr}
 80004cc:	b082      	sub	sp, #8
 80004ce:	af00      	add	r7, sp, #0
 80004d0:	6078      	str	r0, [r7, #4]
 80004d2:	6039      	str	r1, [r7, #0]
 80004d4:	687b      	ldr	r3, [r7, #4]
 80004d6:	695a      	ldr	r2, [r3, #20]
 80004d8:	683b      	ldr	r3, [r7, #0]
 80004da:	405a      	eors	r2, r3
 80004dc:	687b      	ldr	r3, [r7, #4]
 80004de:	615a      	str	r2, [r3, #20]
 80004e0:	46c0      	nop			; (mov r8, r8)
 80004e2:	46bd      	mov	sp, r7
 80004e4:	b002      	add	sp, #8
 80004e6:	bd80      	pop	{r7, pc}

080004e8 <rcc_config>:
 80004e8:	b580      	push	{r7, lr}
 80004ea:	af00      	add	r7, sp, #0
 80004ec:	2001      	movs	r0, #1
 80004ee:	f7ff ff71 	bl	80003d4 <LL_FLASH_SetLatency>
 80004f2:	f7ff febf 	bl	8000274 <LL_RCC_HSI_Enable>
 80004f6:	46c0      	nop			; (mov r8, r8)
 80004f8:	f7ff feca 	bl	8000290 <LL_RCC_HSI_IsReady>
 80004fc:	0003      	movs	r3, r0
 80004fe:	2b01      	cmp	r3, #1
 8000500:	d1fa      	bne.n	80004f8 <rcc_config+0x10>
 8000502:	23a0      	movs	r3, #160	; 0xa0
 8000504:	039b      	lsls	r3, r3, #14
 8000506:	0019      	movs	r1, r3
 8000508:	2000      	movs	r0, #0
 800050a:	f7ff ff3d 	bl	8000388 <LL_RCC_PLL_ConfigDomain_SYS>
 800050e:	f7ff ff19 	bl	8000344 <LL_RCC_PLL_Enable>
 8000512:	46c0      	nop			; (mov r8, r8)
 8000514:	f7ff ff24 	bl	8000360 <LL_RCC_PLL_IsReady>
 8000518:	0003      	movs	r3, r0
 800051a:	2b01      	cmp	r3, #1
 800051c:	d1fa      	bne.n	8000514 <rcc_config+0x2c>
 800051e:	2000      	movs	r0, #0
 8000520:	f7ff fee6 	bl	80002f0 <LL_RCC_SetAHBPrescaler>
 8000524:	2002      	movs	r0, #2
 8000526:	f7ff fec3 	bl	80002b0 <LL_RCC_SetSysClkSource>
 800052a:	46c0      	nop			; (mov r8, r8)
 800052c:	f7ff fed4 	bl	80002d8 <LL_RCC_GetSysClkSource>
 8000530:	0003      	movs	r3, r0
 8000532:	2b08      	cmp	r3, #8
 8000534:	d1fa      	bne.n	800052c <rcc_config+0x44>
 8000536:	2000      	movs	r0, #0
 8000538:	f7ff feee 	bl	8000318 <LL_RCC_SetAPB1Prescaler>
 800053c:	4b02      	ldr	r3, [pc, #8]	; (8000548 <rcc_config+0x60>)
 800053e:	4a03      	ldr	r2, [pc, #12]	; (800054c <rcc_config+0x64>)
 8000540:	601a      	str	r2, [r3, #0]
 8000542:	46c0      	nop			; (mov r8, r8)
 8000544:	46bd      	mov	sp, r7
 8000546:	bd80      	pop	{r7, pc}
 8000548:	20000004 	.word	0x20000004
 800054c:	02dc6c00 	.word	0x02dc6c00

08000550 <gpio_config>:
 8000550:	b580      	push	{r7, lr}
 8000552:	af00      	add	r7, sp, #0
 8000554:	2380      	movs	r3, #128	; 0x80
 8000556:	031b      	lsls	r3, r3, #12
 8000558:	0018      	movs	r0, r3
 800055a:	f7ff ff4f 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 800055e:	2380      	movs	r3, #128	; 0x80
 8000560:	005b      	lsls	r3, r3, #1
 8000562:	4827      	ldr	r0, [pc, #156]	; (8000600 <gpio_config+0xb0>)
 8000564:	2201      	movs	r2, #1
 8000566:	0019      	movs	r1, r3
 8000568:	f7ff ff5e 	bl	8000428 <LL_GPIO_SetPinMode>
 800056c:	2380      	movs	r3, #128	; 0x80
 800056e:	009b      	lsls	r3, r3, #2
 8000570:	4823      	ldr	r0, [pc, #140]	; (8000600 <gpio_config+0xb0>)
 8000572:	2201      	movs	r2, #1
 8000574:	0019      	movs	r1, r3
 8000576:	f7ff ff57 	bl	8000428 <LL_GPIO_SetPinMode>
 800057a:	2380      	movs	r3, #128	; 0x80
 800057c:	02db      	lsls	r3, r3, #11
 800057e:	0018      	movs	r0, r3
 8000580:	f7ff ff3c 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000584:	4b1f      	ldr	r3, [pc, #124]	; (8000604 <gpio_config+0xb4>)
 8000586:	2201      	movs	r2, #1
 8000588:	2101      	movs	r1, #1
 800058a:	0018      	movs	r0, r3
 800058c:	f7ff ff4c 	bl	8000428 <LL_GPIO_SetPinMode>
 8000590:	4b1c      	ldr	r3, [pc, #112]	; (8000604 <gpio_config+0xb4>)
 8000592:	2201      	movs	r2, #1
 8000594:	2102      	movs	r1, #2
 8000596:	0018      	movs	r0, r3
 8000598:	f7ff ff46 	bl	8000428 <LL_GPIO_SetPinMode>
 800059c:	4b19      	ldr	r3, [pc, #100]	; (8000604 <gpio_config+0xb4>)
 800059e:	2201      	movs	r2, #1
 80005a0:	2104      	movs	r1, #4
 80005a2:	0018      	movs	r0, r3
 80005a4:	f7ff ff40 	bl	8000428 <LL_GPIO_SetPinMode>
 80005a8:	4b16      	ldr	r3, [pc, #88]	; (8000604 <gpio_config+0xb4>)
 80005aa:	2201      	movs	r2, #1
 80005ac:	2108      	movs	r1, #8
 80005ae:	0018      	movs	r0, r3
 80005b0:	f7ff ff3a 	bl	8000428 <LL_GPIO_SetPinMode>
 80005b4:	4b13      	ldr	r3, [pc, #76]	; (8000604 <gpio_config+0xb4>)
 80005b6:	2201      	movs	r2, #1
 80005b8:	2110      	movs	r1, #16
 80005ba:	0018      	movs	r0, r3
 80005bc:	f7ff ff34 	bl	8000428 <LL_GPIO_SetPinMode>
 80005c0:	4b10      	ldr	r3, [pc, #64]	; (8000604 <gpio_config+0xb4>)
 80005c2:	2201      	movs	r2, #1
 80005c4:	2120      	movs	r1, #32
 80005c6:	0018      	movs	r0, r3
 80005c8:	f7ff ff2e 	bl	8000428 <LL_GPIO_SetPinMode>
 80005cc:	4b0d      	ldr	r3, [pc, #52]	; (8000604 <gpio_config+0xb4>)
 80005ce:	2201      	movs	r2, #1
 80005d0:	2140      	movs	r1, #64	; 0x40
 80005d2:	0018      	movs	r0, r3
 80005d4:	f7ff ff28 	bl	8000428 <LL_GPIO_SetPinMode>
 80005d8:	4b0a      	ldr	r3, [pc, #40]	; (8000604 <gpio_config+0xb4>)
 80005da:	2201      	movs	r2, #1
 80005dc:	2180      	movs	r1, #128	; 0x80
 80005de:	0018      	movs	r0, r3
 80005e0:	f7ff ff22 	bl	8000428 <LL_GPIO_SetPinMode>
 80005e4:	2380      	movs	r3, #128	; 0x80
 80005e6:	029b      	lsls	r3, r3, #10
 80005e8:	0018      	movs	r0, r3
 80005ea:	f7ff ff07 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 80005ee:	4b04      	ldr	r3, [pc, #16]	; (8000600 <gpio_config+0xb0>)
 80005f0:	2200      	movs	r2, #0
 80005f2:	2101      	movs	r1, #1
 80005f4:	0018      	movs	r0, r3
 80005f6:	f7ff ff17 	bl	8000428 <LL_GPIO_SetPinMode>
 80005fa:	46c0      	nop			; (mov r8, r8)
 80005fc:	46bd      	mov	sp, r7
 80005fe:	bd80      	pop	{r7, pc}
 8000600:	48000800 	.word	0x48000800
 8000604:	48000400 	.word	0x48000400

08000608 <delay_10ms>:
 8000608:	b580      	push	{r7, lr}
 800060a:	4e02      	ldr	r6, [pc, #8]	; (8000614 <delay_10ms+0xc>)
 800060c:	3e01      	subs	r6, #1
 800060e:	2e00      	cmp	r6, #0
 8000610:	d1fc      	bne.n	800060c <delay_10ms+0x4>
 8000612:	bd80      	pop	{r7, pc}
 8000614:	0000ea60 	.word	0x0000ea60
 8000618:	46c0      	nop			; (mov r8, r8)
	...

0800061c <set_indicator>:
 800061c:	b5b0      	push	{r4, r5, r7, lr}
 800061e:	b084      	sub	sp, #16
 8000620:	af00      	add	r7, sp, #0
 8000622:	0002      	movs	r2, r0
 8000624:	1dfb      	adds	r3, r7, #7
 8000626:	701a      	strb	r2, [r3, #0]
 8000628:	250f      	movs	r5, #15
 800062a:	197b      	adds	r3, r7, r5
 800062c:	2205      	movs	r2, #5
 800062e:	701a      	strb	r2, [r3, #0]
 8000630:	2300      	movs	r3, #0
 8000632:	60bb      	str	r3, [r7, #8]
 8000634:	4b12      	ldr	r3, [pc, #72]	; (8000680 <set_indicator+0x64>)
 8000636:	0018      	movs	r0, r3
 8000638:	f7ff ff31 	bl	800049e <LL_GPIO_ReadOutputPort>
 800063c:	0003      	movs	r3, r0
 800063e:	60bb      	str	r3, [r7, #8]
 8000640:	4b10      	ldr	r3, [pc, #64]	; (8000684 <set_indicator+0x68>)
 8000642:	681b      	ldr	r3, [r3, #0]
 8000644:	43db      	mvns	r3, r3
 8000646:	68ba      	ldr	r2, [r7, #8]
 8000648:	401a      	ands	r2, r3
 800064a:	0014      	movs	r4, r2
 800064c:	1dfa      	adds	r2, r7, #7
 800064e:	197b      	adds	r3, r7, r5
 8000650:	7812      	ldrb	r2, [r2, #0]
 8000652:	781b      	ldrb	r3, [r3, #0]
 8000654:	0019      	movs	r1, r3
 8000656:	0010      	movs	r0, r2
 8000658:	f7ff fddc 	bl	8000214 <__aeabi_uidivmod>
 800065c:	000b      	movs	r3, r1
 800065e:	b2db      	uxtb	r3, r3
 8000660:	001a      	movs	r2, r3
 8000662:	4b09      	ldr	r3, [pc, #36]	; (8000688 <set_indicator+0x6c>)
 8000664:	0092      	lsls	r2, r2, #2
 8000666:	58d3      	ldr	r3, [r2, r3]
 8000668:	4323      	orrs	r3, r4
 800066a:	60bb      	str	r3, [r7, #8]
 800066c:	68bb      	ldr	r3, [r7, #8]
 800066e:	4a04      	ldr	r2, [pc, #16]	; (8000680 <set_indicator+0x64>)
 8000670:	0019      	movs	r1, r3
 8000672:	0010      	movs	r0, r2
 8000674:	f7ff ff07 	bl	8000486 <LL_GPIO_WriteOutputPort>
 8000678:	46c0      	nop			; (mov r8, r8)
 800067a:	46bd      	mov	sp, r7
 800067c:	b004      	add	sp, #16
 800067e:	bdb0      	pop	{r4, r5, r7, pc}
 8000680:	48000400 	.word	0x48000400
 8000684:	20000000 	.word	0x20000000
 8000688:	08000930 	.word	0x08000930

0800068c <main>:
 800068c:	b590      	push	{r4, r7, lr}
 800068e:	b085      	sub	sp, #20
 8000690:	af00      	add	r7, sp, #0
 8000692:	240f      	movs	r4, #15
 8000694:	193b      	adds	r3, r7, r4
 8000696:	2200      	movs	r2, #0
 8000698:	701a      	strb	r2, [r3, #0]
 800069a:	2300      	movs	r3, #0
 800069c:	60bb      	str	r3, [r7, #8]
 800069e:	2300      	movs	r3, #0
 80006a0:	607b      	str	r3, [r7, #4]
 80006a2:	f7ff ff21 	bl	80004e8 <rcc_config>
 80006a6:	f7ff ff53 	bl	8000550 <gpio_config>
 80006aa:	4b1c      	ldr	r3, [pc, #112]	; (800071c <main+0x90>)
 80006ac:	2180      	movs	r1, #128	; 0x80
 80006ae:	0018      	movs	r0, r3
 80006b0:	f7ff feff 	bl	80004b2 <LL_GPIO_ResetOutputPin>
 80006b4:	193b      	adds	r3, r7, r4
 80006b6:	781b      	ldrb	r3, [r3, #0]
 80006b8:	0018      	movs	r0, r3
 80006ba:	f7ff ffaf 	bl	800061c <set_indicator>
 80006be:	2390      	movs	r3, #144	; 0x90
 80006c0:	05db      	lsls	r3, r3, #23
 80006c2:	2101      	movs	r1, #1
 80006c4:	0018      	movs	r0, r3
 80006c6:	f7ff fecc 	bl	8000462 <LL_GPIO_IsInputPinSet>
 80006ca:	1e03      	subs	r3, r0, #0
 80006cc:	d003      	beq.n	80006d6 <main+0x4a>
 80006ce:	2301      	movs	r3, #1
 80006d0:	607b      	str	r3, [r7, #4]
 80006d2:	2300      	movs	r3, #0
 80006d4:	60bb      	str	r3, [r7, #8]
 80006d6:	687b      	ldr	r3, [r7, #4]
 80006d8:	2b00      	cmp	r3, #0
 80006da:	d004      	beq.n	80006e6 <main+0x5a>
 80006dc:	68bb      	ldr	r3, [r7, #8]
 80006de:	3301      	adds	r3, #1
 80006e0:	60bb      	str	r3, [r7, #8]
 80006e2:	f7ff ff91 	bl	8000608 <delay_10ms>
 80006e6:	68bb      	ldr	r3, [r7, #8]
 80006e8:	2b04      	cmp	r3, #4
 80006ea:	d9e8      	bls.n	80006be <main+0x32>
 80006ec:	2380      	movs	r3, #128	; 0x80
 80006ee:	005b      	lsls	r3, r3, #1
 80006f0:	4a0b      	ldr	r2, [pc, #44]	; (8000720 <main+0x94>)
 80006f2:	0019      	movs	r1, r3
 80006f4:	0010      	movs	r0, r2
 80006f6:	f7ff fee8 	bl	80004ca <LL_GPIO_TogglePin>
 80006fa:	210f      	movs	r1, #15
 80006fc:	187b      	adds	r3, r7, r1
 80006fe:	781a      	ldrb	r2, [r3, #0]
 8000700:	187b      	adds	r3, r7, r1
 8000702:	3201      	adds	r2, #1
 8000704:	701a      	strb	r2, [r3, #0]
 8000706:	187b      	adds	r3, r7, r1
 8000708:	781b      	ldrb	r3, [r3, #0]
 800070a:	0018      	movs	r0, r3
 800070c:	f7ff ff86 	bl	800061c <set_indicator>
 8000710:	2300      	movs	r3, #0
 8000712:	607b      	str	r3, [r7, #4]
 8000714:	2300      	movs	r3, #0
 8000716:	60bb      	str	r3, [r7, #8]
 8000718:	e7d1      	b.n	80006be <main+0x32>
 800071a:	46c0      	nop			; (mov r8, r8)
 800071c:	48000400 	.word	0x48000400
 8000720:	48000800 	.word	0x48000800

08000724 <SystemInit>:
 8000724:	b580      	push	{r7, lr}
 8000726:	af00      	add	r7, sp, #0
 8000728:	4b1a      	ldr	r3, [pc, #104]	; (8000794 <SystemInit+0x70>)
 800072a:	681a      	ldr	r2, [r3, #0]
 800072c:	4b19      	ldr	r3, [pc, #100]	; (8000794 <SystemInit+0x70>)
 800072e:	2101      	movs	r1, #1
 8000730:	430a      	orrs	r2, r1
 8000732:	601a      	str	r2, [r3, #0]
 8000734:	4b17      	ldr	r3, [pc, #92]	; (8000794 <SystemInit+0x70>)
 8000736:	685a      	ldr	r2, [r3, #4]
 8000738:	4b16      	ldr	r3, [pc, #88]	; (8000794 <SystemInit+0x70>)
 800073a:	4917      	ldr	r1, [pc, #92]	; (8000798 <SystemInit+0x74>)
 800073c:	400a      	ands	r2, r1
 800073e:	605a      	str	r2, [r3, #4]
 8000740:	4b14      	ldr	r3, [pc, #80]	; (8000794 <SystemInit+0x70>)
 8000742:	681a      	ldr	r2, [r3, #0]
 8000744:	4b13      	ldr	r3, [pc, #76]	; (8000794 <SystemInit+0x70>)
 8000746:	4915      	ldr	r1, [pc, #84]	; (800079c <SystemInit+0x78>)
 8000748:	400a      	ands	r2, r1
 800074a:	601a      	str	r2, [r3, #0]
 800074c:	4b11      	ldr	r3, [pc, #68]	; (8000794 <SystemInit+0x70>)
 800074e:	681a      	ldr	r2, [r3, #0]
 8000750:	4b10      	ldr	r3, [pc, #64]	; (8000794 <SystemInit+0x70>)
 8000752:	4913      	ldr	r1, [pc, #76]	; (80007a0 <SystemInit+0x7c>)
 8000754:	400a      	ands	r2, r1
 8000756:	601a      	str	r2, [r3, #0]
 8000758:	4b0e      	ldr	r3, [pc, #56]	; (8000794 <SystemInit+0x70>)
 800075a:	685a      	ldr	r2, [r3, #4]
 800075c:	4b0d      	ldr	r3, [pc, #52]	; (8000794 <SystemInit+0x70>)
 800075e:	4911      	ldr	r1, [pc, #68]	; (80007a4 <SystemInit+0x80>)
 8000760:	400a      	ands	r2, r1
 8000762:	605a      	str	r2, [r3, #4]
 8000764:	4b0b      	ldr	r3, [pc, #44]	; (8000794 <SystemInit+0x70>)
 8000766:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000768:	4b0a      	ldr	r3, [pc, #40]	; (8000794 <SystemInit+0x70>)
 800076a:	210f      	movs	r1, #15
 800076c:	438a      	bics	r2, r1
 800076e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000770:	4b08      	ldr	r3, [pc, #32]	; (8000794 <SystemInit+0x70>)
 8000772:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000774:	4b07      	ldr	r3, [pc, #28]	; (8000794 <SystemInit+0x70>)
 8000776:	490c      	ldr	r1, [pc, #48]	; (80007a8 <SystemInit+0x84>)
 8000778:	400a      	ands	r2, r1
 800077a:	631a      	str	r2, [r3, #48]	; 0x30
 800077c:	4b05      	ldr	r3, [pc, #20]	; (8000794 <SystemInit+0x70>)
 800077e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000780:	4b04      	ldr	r3, [pc, #16]	; (8000794 <SystemInit+0x70>)
 8000782:	2101      	movs	r1, #1
 8000784:	438a      	bics	r2, r1
 8000786:	635a      	str	r2, [r3, #52]	; 0x34
 8000788:	4b02      	ldr	r3, [pc, #8]	; (8000794 <SystemInit+0x70>)
 800078a:	2200      	movs	r2, #0
 800078c:	609a      	str	r2, [r3, #8]
 800078e:	46c0      	nop			; (mov r8, r8)
 8000790:	46bd      	mov	sp, r7
 8000792:	bd80      	pop	{r7, pc}
 8000794:	40021000 	.word	0x40021000
 8000798:	f8ffb80c 	.word	0xf8ffb80c
 800079c:	fef6ffff 	.word	0xfef6ffff
 80007a0:	fffbffff 	.word	0xfffbffff
 80007a4:	ffc0ffff 	.word	0xffc0ffff
 80007a8:	fffffeac 	.word	0xfffffeac

080007ac <NMI_Handler>:
 80007ac:	b580      	push	{r7, lr}
 80007ae:	af00      	add	r7, sp, #0
 80007b0:	46c0      	nop			; (mov r8, r8)
 80007b2:	46bd      	mov	sp, r7
 80007b4:	bd80      	pop	{r7, pc}

080007b6 <HardFault_Handler>:
 80007b6:	b580      	push	{r7, lr}
 80007b8:	af00      	add	r7, sp, #0
 80007ba:	e7fe      	b.n	80007ba <HardFault_Handler+0x4>

080007bc <SVC_Handler>:
 80007bc:	b580      	push	{r7, lr}
 80007be:	af00      	add	r7, sp, #0
 80007c0:	46c0      	nop			; (mov r8, r8)
 80007c2:	46bd      	mov	sp, r7
 80007c4:	bd80      	pop	{r7, pc}

080007c6 <PendSV_Handler>:
 80007c6:	b580      	push	{r7, lr}
 80007c8:	af00      	add	r7, sp, #0
 80007ca:	46c0      	nop			; (mov r8, r8)
 80007cc:	46bd      	mov	sp, r7
 80007ce:	bd80      	pop	{r7, pc}

080007d0 <__libc_init_array>:
 80007d0:	b570      	push	{r4, r5, r6, lr}
 80007d2:	4d0c      	ldr	r5, [pc, #48]	; (8000804 <__libc_init_array+0x34>)
 80007d4:	4e0c      	ldr	r6, [pc, #48]	; (8000808 <__libc_init_array+0x38>)
 80007d6:	1b76      	subs	r6, r6, r5
 80007d8:	10b6      	asrs	r6, r6, #2
 80007da:	d005      	beq.n	80007e8 <__libc_init_array+0x18>
 80007dc:	2400      	movs	r4, #0
 80007de:	cd08      	ldmia	r5!, {r3}
 80007e0:	3401      	adds	r4, #1
 80007e2:	4798      	blx	r3
 80007e4:	42a6      	cmp	r6, r4
 80007e6:	d1fa      	bne.n	80007de <__libc_init_array+0xe>
 80007e8:	f000 f896 	bl	8000918 <_init>
 80007ec:	4d07      	ldr	r5, [pc, #28]	; (800080c <__libc_init_array+0x3c>)
 80007ee:	4e08      	ldr	r6, [pc, #32]	; (8000810 <__libc_init_array+0x40>)
 80007f0:	1b76      	subs	r6, r6, r5
 80007f2:	10b6      	asrs	r6, r6, #2
 80007f4:	d005      	beq.n	8000802 <__libc_init_array+0x32>
 80007f6:	2400      	movs	r4, #0
 80007f8:	cd08      	ldmia	r5!, {r3}
 80007fa:	3401      	adds	r4, #1
 80007fc:	4798      	blx	r3
 80007fe:	42a6      	cmp	r6, r4
 8000800:	d1fa      	bne.n	80007f8 <__libc_init_array+0x28>
 8000802:	bd70      	pop	{r4, r5, r6, pc}
 8000804:	08000948 	.word	0x08000948
 8000808:	08000948 	.word	0x08000948
 800080c:	08000948 	.word	0x08000948
 8000810:	08000950 	.word	0x08000950

08000814 <register_fini>:
 8000814:	4b03      	ldr	r3, [pc, #12]	; (8000824 <register_fini+0x10>)
 8000816:	b510      	push	{r4, lr}
 8000818:	2b00      	cmp	r3, #0
 800081a:	d002      	beq.n	8000822 <register_fini+0xe>
 800081c:	4802      	ldr	r0, [pc, #8]	; (8000828 <register_fini+0x14>)
 800081e:	f000 f805 	bl	800082c <atexit>
 8000822:	bd10      	pop	{r4, pc}
 8000824:	00000000 	.word	0x00000000
 8000828:	0800083d 	.word	0x0800083d

0800082c <atexit>:
 800082c:	b510      	push	{r4, lr}
 800082e:	0001      	movs	r1, r0
 8000830:	2300      	movs	r3, #0
 8000832:	2200      	movs	r2, #0
 8000834:	2000      	movs	r0, #0
 8000836:	f000 f819 	bl	800086c <__register_exitproc>
 800083a:	bd10      	pop	{r4, pc}

0800083c <__libc_fini_array>:
 800083c:	b570      	push	{r4, r5, r6, lr}
 800083e:	4d07      	ldr	r5, [pc, #28]	; (800085c <__libc_fini_array+0x20>)
 8000840:	4c07      	ldr	r4, [pc, #28]	; (8000860 <__libc_fini_array+0x24>)
 8000842:	1b64      	subs	r4, r4, r5
 8000844:	10a4      	asrs	r4, r4, #2
 8000846:	d005      	beq.n	8000854 <__libc_fini_array+0x18>
 8000848:	3c01      	subs	r4, #1
 800084a:	00a3      	lsls	r3, r4, #2
 800084c:	58eb      	ldr	r3, [r5, r3]
 800084e:	4798      	blx	r3
 8000850:	2c00      	cmp	r4, #0
 8000852:	d1f9      	bne.n	8000848 <__libc_fini_array+0xc>
 8000854:	f000 f866 	bl	8000924 <_fini>
 8000858:	bd70      	pop	{r4, r5, r6, pc}
 800085a:	46c0      	nop			; (mov r8, r8)
 800085c:	08000950 	.word	0x08000950
 8000860:	08000954 	.word	0x08000954

08000864 <__retarget_lock_acquire_recursive>:
 8000864:	4770      	bx	lr
 8000866:	46c0      	nop			; (mov r8, r8)

08000868 <__retarget_lock_release_recursive>:
 8000868:	4770      	bx	lr
 800086a:	46c0      	nop			; (mov r8, r8)

0800086c <__register_exitproc>:
 800086c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800086e:	46d6      	mov	lr, sl
 8000870:	464f      	mov	r7, r9
 8000872:	4646      	mov	r6, r8
 8000874:	b5c0      	push	{r6, r7, lr}
 8000876:	4f26      	ldr	r7, [pc, #152]	; (8000910 <__register_exitproc+0xa4>)
 8000878:	b082      	sub	sp, #8
 800087a:	0006      	movs	r6, r0
 800087c:	6838      	ldr	r0, [r7, #0]
 800087e:	4692      	mov	sl, r2
 8000880:	4698      	mov	r8, r3
 8000882:	4689      	mov	r9, r1
 8000884:	f7ff ffee 	bl	8000864 <__retarget_lock_acquire_recursive>
 8000888:	4b22      	ldr	r3, [pc, #136]	; (8000914 <__register_exitproc+0xa8>)
 800088a:	681b      	ldr	r3, [r3, #0]
 800088c:	9301      	str	r3, [sp, #4]
 800088e:	23a4      	movs	r3, #164	; 0xa4
 8000890:	9a01      	ldr	r2, [sp, #4]
 8000892:	005b      	lsls	r3, r3, #1
 8000894:	58d5      	ldr	r5, [r2, r3]
 8000896:	2d00      	cmp	r5, #0
 8000898:	d02e      	beq.n	80008f8 <__register_exitproc+0x8c>
 800089a:	686c      	ldr	r4, [r5, #4]
 800089c:	2c1f      	cmp	r4, #31
 800089e:	dc30      	bgt.n	8000902 <__register_exitproc+0x96>
 80008a0:	2e00      	cmp	r6, #0
 80008a2:	d10f      	bne.n	80008c4 <__register_exitproc+0x58>
 80008a4:	1c63      	adds	r3, r4, #1
 80008a6:	606b      	str	r3, [r5, #4]
 80008a8:	464b      	mov	r3, r9
 80008aa:	3402      	adds	r4, #2
 80008ac:	00a4      	lsls	r4, r4, #2
 80008ae:	6838      	ldr	r0, [r7, #0]
 80008b0:	5163      	str	r3, [r4, r5]
 80008b2:	f7ff ffd9 	bl	8000868 <__retarget_lock_release_recursive>
 80008b6:	2000      	movs	r0, #0
 80008b8:	b002      	add	sp, #8
 80008ba:	bce0      	pop	{r5, r6, r7}
 80008bc:	46ba      	mov	sl, r7
 80008be:	46b1      	mov	r9, r6
 80008c0:	46a8      	mov	r8, r5
 80008c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80008c4:	2288      	movs	r2, #136	; 0x88
 80008c6:	4651      	mov	r1, sl
 80008c8:	0028      	movs	r0, r5
 80008ca:	00a3      	lsls	r3, r4, #2
 80008cc:	18eb      	adds	r3, r5, r3
 80008ce:	5099      	str	r1, [r3, r2]
 80008d0:	3a87      	subs	r2, #135	; 0x87
 80008d2:	40a2      	lsls	r2, r4
 80008d4:	3089      	adds	r0, #137	; 0x89
 80008d6:	30ff      	adds	r0, #255	; 0xff
 80008d8:	6801      	ldr	r1, [r0, #0]
 80008da:	4311      	orrs	r1, r2
 80008dc:	6001      	str	r1, [r0, #0]
 80008de:	2184      	movs	r1, #132	; 0x84
 80008e0:	4640      	mov	r0, r8
 80008e2:	0049      	lsls	r1, r1, #1
 80008e4:	5058      	str	r0, [r3, r1]
 80008e6:	2e02      	cmp	r6, #2
 80008e8:	d1dc      	bne.n	80008a4 <__register_exitproc+0x38>
 80008ea:	002b      	movs	r3, r5
 80008ec:	338d      	adds	r3, #141	; 0x8d
 80008ee:	33ff      	adds	r3, #255	; 0xff
 80008f0:	6819      	ldr	r1, [r3, #0]
 80008f2:	430a      	orrs	r2, r1
 80008f4:	601a      	str	r2, [r3, #0]
 80008f6:	e7d5      	b.n	80008a4 <__register_exitproc+0x38>
 80008f8:	0015      	movs	r5, r2
 80008fa:	354d      	adds	r5, #77	; 0x4d
 80008fc:	35ff      	adds	r5, #255	; 0xff
 80008fe:	50d5      	str	r5, [r2, r3]
 8000900:	e7cb      	b.n	800089a <__register_exitproc+0x2e>
 8000902:	6838      	ldr	r0, [r7, #0]
 8000904:	f7ff ffb0 	bl	8000868 <__retarget_lock_release_recursive>
 8000908:	2001      	movs	r0, #1
 800090a:	4240      	negs	r0, r0
 800090c:	e7d4      	b.n	80008b8 <__register_exitproc+0x4c>
 800090e:	46c0      	nop			; (mov r8, r8)
 8000910:	20000430 	.word	0x20000430
 8000914:	08000944 	.word	0x08000944

08000918 <_init>:
 8000918:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800091a:	46c0      	nop			; (mov r8, r8)
 800091c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800091e:	bc08      	pop	{r3}
 8000920:	469e      	mov	lr, r3
 8000922:	4770      	bx	lr

08000924 <_fini>:
 8000924:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000926:	46c0      	nop			; (mov r8, r8)
 8000928:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800092a:	bc08      	pop	{r3}
 800092c:	469e      	mov	lr, r3
 800092e:	4770      	bx	lr
