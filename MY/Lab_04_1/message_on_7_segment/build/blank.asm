
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000db4  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000001f0  08000e74  08000e74  00010e74  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08001064  08001064  00011064  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  0800106c  0800106c  0001106c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08001070  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000024  20000434  080014a4  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000458  080014a4  00020458  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000bd3  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000395  00000000  00000000  0002102f  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000005ca  00000000  00000000  000213c4  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000138  00000000  00000000  0002198e  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000108  00000000  00000000  00021ac6  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000089f  00000000  00000000  00021bce  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000005eb  00000000  00000000  0002246d  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  00022a58  2**0  CONTENTS, READONLY
 17 .debug_frame      000005c8  00000000  00000000  00022b24  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000e5c 	.word	0x08000e5c

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
 8000104:	08000e5c 	.word	0x08000e5c

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
 800024a:	f000 fcbb 	bl	8000bc4 <SystemInit>
 800024e:	f000 fd0f 	bl	8000c70 <__libc_init_array>
 8000252:	f000 fc7f 	bl	8000b54 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08001070 	.word	0x08001070
 8000268:	20000434 	.word	0x20000434
 800026c:	20000458 	.word	0x20000458

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
 800043a:	435b      	muls	r3, r3
 800043c:	001a      	movs	r2, r3
 800043e:	0013      	movs	r3, r2
 8000440:	005b      	lsls	r3, r3, #1
 8000442:	189b      	adds	r3, r3, r2
 8000444:	43db      	mvns	r3, r3
 8000446:	400b      	ands	r3, r1
 8000448:	001a      	movs	r2, r3
 800044a:	68bb      	ldr	r3, [r7, #8]
 800044c:	435b      	muls	r3, r3
 800044e:	6879      	ldr	r1, [r7, #4]
 8000450:	434b      	muls	r3, r1
 8000452:	431a      	orrs	r2, r3
 8000454:	68fb      	ldr	r3, [r7, #12]
 8000456:	601a      	str	r2, [r3, #0]
 8000458:	46c0      	nop			; (mov r8, r8)
 800045a:	46bd      	mov	sp, r7
 800045c:	b004      	add	sp, #16
 800045e:	bd80      	pop	{r7, pc}

08000460 <LL_GPIO_WriteOutputPort>:
 8000460:	b580      	push	{r7, lr}
 8000462:	b082      	sub	sp, #8
 8000464:	af00      	add	r7, sp, #0
 8000466:	6078      	str	r0, [r7, #4]
 8000468:	6039      	str	r1, [r7, #0]
 800046a:	687b      	ldr	r3, [r7, #4]
 800046c:	683a      	ldr	r2, [r7, #0]
 800046e:	615a      	str	r2, [r3, #20]
 8000470:	46c0      	nop			; (mov r8, r8)
 8000472:	46bd      	mov	sp, r7
 8000474:	b002      	add	sp, #8
 8000476:	bd80      	pop	{r7, pc}

08000478 <LL_GPIO_ResetOutputPin>:
 8000478:	b580      	push	{r7, lr}
 800047a:	b082      	sub	sp, #8
 800047c:	af00      	add	r7, sp, #0
 800047e:	6078      	str	r0, [r7, #4]
 8000480:	6039      	str	r1, [r7, #0]
 8000482:	687b      	ldr	r3, [r7, #4]
 8000484:	683a      	ldr	r2, [r7, #0]
 8000486:	629a      	str	r2, [r3, #40]	; 0x28
 8000488:	46c0      	nop			; (mov r8, r8)
 800048a:	46bd      	mov	sp, r7
 800048c:	b002      	add	sp, #8
 800048e:	bd80      	pop	{r7, pc}

08000490 <rcc_config>:
 8000490:	b580      	push	{r7, lr}
 8000492:	af00      	add	r7, sp, #0
 8000494:	2001      	movs	r0, #1
 8000496:	f7ff ff9d 	bl	80003d4 <LL_FLASH_SetLatency>
 800049a:	f7ff feeb 	bl	8000274 <LL_RCC_HSI_Enable>
 800049e:	46c0      	nop			; (mov r8, r8)
 80004a0:	f7ff fef6 	bl	8000290 <LL_RCC_HSI_IsReady>
 80004a4:	0003      	movs	r3, r0
 80004a6:	2b01      	cmp	r3, #1
 80004a8:	d1fa      	bne.n	80004a0 <rcc_config+0x10>
 80004aa:	23a0      	movs	r3, #160	; 0xa0
 80004ac:	039b      	lsls	r3, r3, #14
 80004ae:	0019      	movs	r1, r3
 80004b0:	2000      	movs	r0, #0
 80004b2:	f7ff ff69 	bl	8000388 <LL_RCC_PLL_ConfigDomain_SYS>
 80004b6:	f7ff ff45 	bl	8000344 <LL_RCC_PLL_Enable>
 80004ba:	46c0      	nop			; (mov r8, r8)
 80004bc:	f7ff ff50 	bl	8000360 <LL_RCC_PLL_IsReady>
 80004c0:	0003      	movs	r3, r0
 80004c2:	2b01      	cmp	r3, #1
 80004c4:	d1fa      	bne.n	80004bc <rcc_config+0x2c>
 80004c6:	2000      	movs	r0, #0
 80004c8:	f7ff ff12 	bl	80002f0 <LL_RCC_SetAHBPrescaler>
 80004cc:	2002      	movs	r0, #2
 80004ce:	f7ff feef 	bl	80002b0 <LL_RCC_SetSysClkSource>
 80004d2:	46c0      	nop			; (mov r8, r8)
 80004d4:	f7ff ff00 	bl	80002d8 <LL_RCC_GetSysClkSource>
 80004d8:	0003      	movs	r3, r0
 80004da:	2b08      	cmp	r3, #8
 80004dc:	d1fa      	bne.n	80004d4 <rcc_config+0x44>
 80004de:	2000      	movs	r0, #0
 80004e0:	f7ff ff1a 	bl	8000318 <LL_RCC_SetAPB1Prescaler>
 80004e4:	4b02      	ldr	r3, [pc, #8]	; (80004f0 <rcc_config+0x60>)
 80004e6:	4a03      	ldr	r2, [pc, #12]	; (80004f4 <rcc_config+0x64>)
 80004e8:	601a      	str	r2, [r3, #0]
 80004ea:	46c0      	nop			; (mov r8, r8)
 80004ec:	46bd      	mov	sp, r7
 80004ee:	bd80      	pop	{r7, pc}
 80004f0:	20000000 	.word	0x20000000
 80004f4:	02dc6c00 	.word	0x02dc6c00

080004f8 <gpio_config>:
 80004f8:	b580      	push	{r7, lr}
 80004fa:	af00      	add	r7, sp, #0
 80004fc:	2380      	movs	r3, #128	; 0x80
 80004fe:	031b      	lsls	r3, r3, #12
 8000500:	0018      	movs	r0, r3
 8000502:	f7ff ff7b 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000506:	2380      	movs	r3, #128	; 0x80
 8000508:	005b      	lsls	r3, r3, #1
 800050a:	4834      	ldr	r0, [pc, #208]	; (80005dc <gpio_config+0xe4>)
 800050c:	2201      	movs	r2, #1
 800050e:	0019      	movs	r1, r3
 8000510:	f7ff ff8a 	bl	8000428 <LL_GPIO_SetPinMode>
 8000514:	2380      	movs	r3, #128	; 0x80
 8000516:	009b      	lsls	r3, r3, #2
 8000518:	4830      	ldr	r0, [pc, #192]	; (80005dc <gpio_config+0xe4>)
 800051a:	2201      	movs	r2, #1
 800051c:	0019      	movs	r1, r3
 800051e:	f7ff ff83 	bl	8000428 <LL_GPIO_SetPinMode>
 8000522:	4b2e      	ldr	r3, [pc, #184]	; (80005dc <gpio_config+0xe4>)
 8000524:	2201      	movs	r2, #1
 8000526:	2101      	movs	r1, #1
 8000528:	0018      	movs	r0, r3
 800052a:	f7ff ff7d 	bl	8000428 <LL_GPIO_SetPinMode>
 800052e:	4b2b      	ldr	r3, [pc, #172]	; (80005dc <gpio_config+0xe4>)
 8000530:	2201      	movs	r2, #1
 8000532:	2102      	movs	r1, #2
 8000534:	0018      	movs	r0, r3
 8000536:	f7ff ff77 	bl	8000428 <LL_GPIO_SetPinMode>
 800053a:	4b28      	ldr	r3, [pc, #160]	; (80005dc <gpio_config+0xe4>)
 800053c:	2201      	movs	r2, #1
 800053e:	2104      	movs	r1, #4
 8000540:	0018      	movs	r0, r3
 8000542:	f7ff ff71 	bl	8000428 <LL_GPIO_SetPinMode>
 8000546:	4b25      	ldr	r3, [pc, #148]	; (80005dc <gpio_config+0xe4>)
 8000548:	2201      	movs	r2, #1
 800054a:	2108      	movs	r1, #8
 800054c:	0018      	movs	r0, r3
 800054e:	f7ff ff6b 	bl	8000428 <LL_GPIO_SetPinMode>
 8000552:	2380      	movs	r3, #128	; 0x80
 8000554:	029b      	lsls	r3, r3, #10
 8000556:	0018      	movs	r0, r3
 8000558:	f7ff ff50 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 800055c:	2390      	movs	r3, #144	; 0x90
 800055e:	05db      	lsls	r3, r3, #23
 8000560:	2200      	movs	r2, #0
 8000562:	2101      	movs	r1, #1
 8000564:	0018      	movs	r0, r3
 8000566:	f7ff ff5f 	bl	8000428 <LL_GPIO_SetPinMode>
 800056a:	2380      	movs	r3, #128	; 0x80
 800056c:	02db      	lsls	r3, r3, #11
 800056e:	0018      	movs	r0, r3
 8000570:	f7ff ff44 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000574:	4b1a      	ldr	r3, [pc, #104]	; (80005e0 <gpio_config+0xe8>)
 8000576:	2201      	movs	r2, #1
 8000578:	2101      	movs	r1, #1
 800057a:	0018      	movs	r0, r3
 800057c:	f7ff ff54 	bl	8000428 <LL_GPIO_SetPinMode>
 8000580:	4b17      	ldr	r3, [pc, #92]	; (80005e0 <gpio_config+0xe8>)
 8000582:	2201      	movs	r2, #1
 8000584:	2102      	movs	r1, #2
 8000586:	0018      	movs	r0, r3
 8000588:	f7ff ff4e 	bl	8000428 <LL_GPIO_SetPinMode>
 800058c:	4b14      	ldr	r3, [pc, #80]	; (80005e0 <gpio_config+0xe8>)
 800058e:	2201      	movs	r2, #1
 8000590:	2104      	movs	r1, #4
 8000592:	0018      	movs	r0, r3
 8000594:	f7ff ff48 	bl	8000428 <LL_GPIO_SetPinMode>
 8000598:	4b11      	ldr	r3, [pc, #68]	; (80005e0 <gpio_config+0xe8>)
 800059a:	2201      	movs	r2, #1
 800059c:	2108      	movs	r1, #8
 800059e:	0018      	movs	r0, r3
 80005a0:	f7ff ff42 	bl	8000428 <LL_GPIO_SetPinMode>
 80005a4:	4b0e      	ldr	r3, [pc, #56]	; (80005e0 <gpio_config+0xe8>)
 80005a6:	2201      	movs	r2, #1
 80005a8:	2110      	movs	r1, #16
 80005aa:	0018      	movs	r0, r3
 80005ac:	f7ff ff3c 	bl	8000428 <LL_GPIO_SetPinMode>
 80005b0:	4b0b      	ldr	r3, [pc, #44]	; (80005e0 <gpio_config+0xe8>)
 80005b2:	2201      	movs	r2, #1
 80005b4:	2120      	movs	r1, #32
 80005b6:	0018      	movs	r0, r3
 80005b8:	f7ff ff36 	bl	8000428 <LL_GPIO_SetPinMode>
 80005bc:	4b08      	ldr	r3, [pc, #32]	; (80005e0 <gpio_config+0xe8>)
 80005be:	2201      	movs	r2, #1
 80005c0:	2140      	movs	r1, #64	; 0x40
 80005c2:	0018      	movs	r0, r3
 80005c4:	f7ff ff30 	bl	8000428 <LL_GPIO_SetPinMode>
 80005c8:	4b05      	ldr	r3, [pc, #20]	; (80005e0 <gpio_config+0xe8>)
 80005ca:	2201      	movs	r2, #1
 80005cc:	2180      	movs	r1, #128	; 0x80
 80005ce:	0018      	movs	r0, r3
 80005d0:	f7ff ff2a 	bl	8000428 <LL_GPIO_SetPinMode>
 80005d4:	46c0      	nop			; (mov r8, r8)
 80005d6:	46bd      	mov	sp, r7
 80005d8:	bd80      	pop	{r7, pc}
 80005da:	46c0      	nop			; (mov r8, r8)
 80005dc:	48000800 	.word	0x48000800
 80005e0:	48000400 	.word	0x48000400

080005e4 <delay>:
 80005e4:	b580      	push	{r7, lr}
 80005e6:	4e02      	ldr	r6, [pc, #8]	; (80005f0 <delay+0xc>)
 80005e8:	3e01      	subs	r6, #1
 80005ea:	2e00      	cmp	r6, #0
 80005ec:	d1fc      	bne.n	80005e8 <delay+0x4>
 80005ee:	bd80      	pop	{r7, pc}
 80005f0:	00002ee0 	.word	0x00002ee0
 80005f4:	46c0      	nop			; (mov r8, r8)
	...

080005f8 <symbols>:
 80005f8:	b580      	push	{r7, lr}
 80005fa:	b084      	sub	sp, #16
 80005fc:	af00      	add	r7, sp, #0
 80005fe:	0002      	movs	r2, r0
 8000600:	1dfb      	adds	r3, r7, #7
 8000602:	701a      	strb	r2, [r3, #0]
 8000604:	2300      	movs	r3, #0
 8000606:	60fb      	str	r3, [r7, #12]
 8000608:	1dfb      	adds	r3, r7, #7
 800060a:	781b      	ldrb	r3, [r3, #0]
 800060c:	3b21      	subs	r3, #33	; 0x21
 800060e:	2b59      	cmp	r3, #89	; 0x59
 8000610:	d852      	bhi.n	80006b8 <symbols+0xc0>
 8000612:	009a      	lsls	r2, r3, #2
 8000614:	4b2c      	ldr	r3, [pc, #176]	; (80006c8 <symbols+0xd0>)
 8000616:	18d3      	adds	r3, r2, r3
 8000618:	681b      	ldr	r3, [r3, #0]
 800061a:	469f      	mov	pc, r3
 800061c:	2377      	movs	r3, #119	; 0x77
 800061e:	60fb      	str	r3, [r7, #12]
 8000620:	e04d      	b.n	80006be <symbols+0xc6>
 8000622:	237c      	movs	r3, #124	; 0x7c
 8000624:	60fb      	str	r3, [r7, #12]
 8000626:	e04a      	b.n	80006be <symbols+0xc6>
 8000628:	2339      	movs	r3, #57	; 0x39
 800062a:	60fb      	str	r3, [r7, #12]
 800062c:	e047      	b.n	80006be <symbols+0xc6>
 800062e:	235e      	movs	r3, #94	; 0x5e
 8000630:	60fb      	str	r3, [r7, #12]
 8000632:	e044      	b.n	80006be <symbols+0xc6>
 8000634:	2379      	movs	r3, #121	; 0x79
 8000636:	60fb      	str	r3, [r7, #12]
 8000638:	e041      	b.n	80006be <symbols+0xc6>
 800063a:	2371      	movs	r3, #113	; 0x71
 800063c:	60fb      	str	r3, [r7, #12]
 800063e:	e03e      	b.n	80006be <symbols+0xc6>
 8000640:	237d      	movs	r3, #125	; 0x7d
 8000642:	60fb      	str	r3, [r7, #12]
 8000644:	e03b      	b.n	80006be <symbols+0xc6>
 8000646:	2376      	movs	r3, #118	; 0x76
 8000648:	60fb      	str	r3, [r7, #12]
 800064a:	e038      	b.n	80006be <symbols+0xc6>
 800064c:	2306      	movs	r3, #6
 800064e:	60fb      	str	r3, [r7, #12]
 8000650:	e035      	b.n	80006be <symbols+0xc6>
 8000652:	230e      	movs	r3, #14
 8000654:	60fb      	str	r3, [r7, #12]
 8000656:	e032      	b.n	80006be <symbols+0xc6>
 8000658:	2338      	movs	r3, #56	; 0x38
 800065a:	60fb      	str	r3, [r7, #12]
 800065c:	e02f      	b.n	80006be <symbols+0xc6>
 800065e:	2354      	movs	r3, #84	; 0x54
 8000660:	60fb      	str	r3, [r7, #12]
 8000662:	e02c      	b.n	80006be <symbols+0xc6>
 8000664:	233f      	movs	r3, #63	; 0x3f
 8000666:	60fb      	str	r3, [r7, #12]
 8000668:	e029      	b.n	80006be <symbols+0xc6>
 800066a:	2373      	movs	r3, #115	; 0x73
 800066c:	60fb      	str	r3, [r7, #12]
 800066e:	e026      	b.n	80006be <symbols+0xc6>
 8000670:	236d      	movs	r3, #109	; 0x6d
 8000672:	60fb      	str	r3, [r7, #12]
 8000674:	e023      	b.n	80006be <symbols+0xc6>
 8000676:	233e      	movs	r3, #62	; 0x3e
 8000678:	60fb      	str	r3, [r7, #12]
 800067a:	e020      	b.n	80006be <symbols+0xc6>
 800067c:	235b      	movs	r3, #91	; 0x5b
 800067e:	60fb      	str	r3, [r7, #12]
 8000680:	e01d      	b.n	80006be <symbols+0xc6>
 8000682:	2367      	movs	r3, #103	; 0x67
 8000684:	60fb      	str	r3, [r7, #12]
 8000686:	e01a      	b.n	80006be <symbols+0xc6>
 8000688:	2350      	movs	r3, #80	; 0x50
 800068a:	60fb      	str	r3, [r7, #12]
 800068c:	e017      	b.n	80006be <symbols+0xc6>
 800068e:	2378      	movs	r3, #120	; 0x78
 8000690:	60fb      	str	r3, [r7, #12]
 8000692:	e014      	b.n	80006be <symbols+0xc6>
 8000694:	236e      	movs	r3, #110	; 0x6e
 8000696:	60fb      	str	r3, [r7, #12]
 8000698:	e011      	b.n	80006be <symbols+0xc6>
 800069a:	2380      	movs	r3, #128	; 0x80
 800069c:	60fb      	str	r3, [r7, #12]
 800069e:	e00e      	b.n	80006be <symbols+0xc6>
 80006a0:	2386      	movs	r3, #134	; 0x86
 80006a2:	60fb      	str	r3, [r7, #12]
 80006a4:	e00b      	b.n	80006be <symbols+0xc6>
 80006a6:	23a7      	movs	r3, #167	; 0xa7
 80006a8:	60fb      	str	r3, [r7, #12]
 80006aa:	e008      	b.n	80006be <symbols+0xc6>
 80006ac:	2308      	movs	r3, #8
 80006ae:	60fb      	str	r3, [r7, #12]
 80006b0:	e005      	b.n	80006be <symbols+0xc6>
 80006b2:	2340      	movs	r3, #64	; 0x40
 80006b4:	60fb      	str	r3, [r7, #12]
 80006b6:	e002      	b.n	80006be <symbols+0xc6>
 80006b8:	2300      	movs	r3, #0
 80006ba:	60fb      	str	r3, [r7, #12]
 80006bc:	46c0      	nop			; (mov r8, r8)
 80006be:	68fb      	ldr	r3, [r7, #12]
 80006c0:	0018      	movs	r0, r3
 80006c2:	46bd      	mov	sp, r7
 80006c4:	b004      	add	sp, #16
 80006c6:	bd80      	pop	{r7, pc}
 80006c8:	08000ef8 	.word	0x08000ef8

080006cc <mask_indicator>:
 80006cc:	b580      	push	{r7, lr}
 80006ce:	b082      	sub	sp, #8
 80006d0:	af00      	add	r7, sp, #0
 80006d2:	6078      	str	r0, [r7, #4]
 80006d4:	687b      	ldr	r3, [r7, #4]
 80006d6:	09db      	lsrs	r3, r3, #7
 80006d8:	2201      	movs	r2, #1
 80006da:	4013      	ands	r3, r2
 80006dc:	01da      	lsls	r2, r3, #7
 80006de:	687b      	ldr	r3, [r7, #4]
 80006e0:	099b      	lsrs	r3, r3, #6
 80006e2:	2101      	movs	r1, #1
 80006e4:	400b      	ands	r3, r1
 80006e6:	019b      	lsls	r3, r3, #6
 80006e8:	431a      	orrs	r2, r3
 80006ea:	687b      	ldr	r3, [r7, #4]
 80006ec:	095b      	lsrs	r3, r3, #5
 80006ee:	2101      	movs	r1, #1
 80006f0:	400b      	ands	r3, r1
 80006f2:	015b      	lsls	r3, r3, #5
 80006f4:	431a      	orrs	r2, r3
 80006f6:	687b      	ldr	r3, [r7, #4]
 80006f8:	091b      	lsrs	r3, r3, #4
 80006fa:	2101      	movs	r1, #1
 80006fc:	400b      	ands	r3, r1
 80006fe:	011b      	lsls	r3, r3, #4
 8000700:	431a      	orrs	r2, r3
 8000702:	687b      	ldr	r3, [r7, #4]
 8000704:	08db      	lsrs	r3, r3, #3
 8000706:	2101      	movs	r1, #1
 8000708:	400b      	ands	r3, r1
 800070a:	00db      	lsls	r3, r3, #3
 800070c:	431a      	orrs	r2, r3
 800070e:	687b      	ldr	r3, [r7, #4]
 8000710:	089b      	lsrs	r3, r3, #2
 8000712:	2101      	movs	r1, #1
 8000714:	400b      	ands	r3, r1
 8000716:	009b      	lsls	r3, r3, #2
 8000718:	431a      	orrs	r2, r3
 800071a:	687b      	ldr	r3, [r7, #4]
 800071c:	085b      	lsrs	r3, r3, #1
 800071e:	2101      	movs	r1, #1
 8000720:	400b      	ands	r3, r1
 8000722:	005b      	lsls	r3, r3, #1
 8000724:	431a      	orrs	r2, r3
 8000726:	687b      	ldr	r3, [r7, #4]
 8000728:	2101      	movs	r1, #1
 800072a:	400b      	ands	r3, r1
 800072c:	4313      	orrs	r3, r2
 800072e:	0018      	movs	r0, r3
 8000730:	46bd      	mov	sp, r7
 8000732:	b002      	add	sp, #8
 8000734:	bd80      	pop	{r7, pc}
	...

08000738 <dynamic_text>:
 8000738:	b590      	push	{r4, r7, lr}
 800073a:	b089      	sub	sp, #36	; 0x24
 800073c:	af00      	add	r7, sp, #0
 800073e:	6078      	str	r0, [r7, #4]
 8000740:	231f      	movs	r3, #31
 8000742:	18fb      	adds	r3, r7, r3
 8000744:	687a      	ldr	r2, [r7, #4]
 8000746:	7812      	ldrb	r2, [r2, #0]
 8000748:	701a      	strb	r2, [r3, #0]
 800074a:	2300      	movs	r3, #0
 800074c:	61bb      	str	r3, [r7, #24]
 800074e:	2300      	movs	r3, #0
 8000750:	617b      	str	r3, [r7, #20]
 8000752:	e05f      	b.n	8000814 <dynamic_text+0xdc>
 8000754:	2300      	movs	r3, #0
 8000756:	613b      	str	r3, [r7, #16]
 8000758:	e03a      	b.n	80007d0 <dynamic_text+0x98>
 800075a:	69bb      	ldr	r3, [r7, #24]
 800075c:	60fb      	str	r3, [r7, #12]
 800075e:	2300      	movs	r3, #0
 8000760:	60bb      	str	r3, [r7, #8]
 8000762:	e02f      	b.n	80007c4 <dynamic_text+0x8c>
 8000764:	687a      	ldr	r2, [r7, #4]
 8000766:	68fb      	ldr	r3, [r7, #12]
 8000768:	18d2      	adds	r2, r2, r3
 800076a:	241f      	movs	r4, #31
 800076c:	193b      	adds	r3, r7, r4
 800076e:	7812      	ldrb	r2, [r2, #0]
 8000770:	701a      	strb	r2, [r3, #0]
 8000772:	200f      	movs	r0, #15
 8000774:	f7ff ffaa 	bl	80006cc <mask_indicator>
 8000778:	0003      	movs	r3, r0
 800077a:	4a2b      	ldr	r2, [pc, #172]	; (8000828 <dynamic_text+0xf0>)
 800077c:	0019      	movs	r1, r3
 800077e:	0010      	movs	r0, r2
 8000780:	f7ff fe6e 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000784:	2201      	movs	r2, #1
 8000786:	68bb      	ldr	r3, [r7, #8]
 8000788:	409a      	lsls	r2, r3
 800078a:	0013      	movs	r3, r2
 800078c:	0018      	movs	r0, r3
 800078e:	f7ff ff9d 	bl	80006cc <mask_indicator>
 8000792:	0003      	movs	r3, r0
 8000794:	4a24      	ldr	r2, [pc, #144]	; (8000828 <dynamic_text+0xf0>)
 8000796:	0019      	movs	r1, r3
 8000798:	0010      	movs	r0, r2
 800079a:	f7ff fe6d 	bl	8000478 <LL_GPIO_ResetOutputPin>
 800079e:	193b      	adds	r3, r7, r4
 80007a0:	781b      	ldrb	r3, [r3, #0]
 80007a2:	0018      	movs	r0, r3
 80007a4:	f7ff ff28 	bl	80005f8 <symbols>
 80007a8:	0003      	movs	r3, r0
 80007aa:	4a20      	ldr	r2, [pc, #128]	; (800082c <dynamic_text+0xf4>)
 80007ac:	0019      	movs	r1, r3
 80007ae:	0010      	movs	r0, r2
 80007b0:	f7ff fe56 	bl	8000460 <LL_GPIO_WriteOutputPort>
 80007b4:	f7ff ff16 	bl	80005e4 <delay>
 80007b8:	68fb      	ldr	r3, [r7, #12]
 80007ba:	3b01      	subs	r3, #1
 80007bc:	60fb      	str	r3, [r7, #12]
 80007be:	68bb      	ldr	r3, [r7, #8]
 80007c0:	3301      	adds	r3, #1
 80007c2:	60bb      	str	r3, [r7, #8]
 80007c4:	68bb      	ldr	r3, [r7, #8]
 80007c6:	2b03      	cmp	r3, #3
 80007c8:	d9cc      	bls.n	8000764 <dynamic_text+0x2c>
 80007ca:	693b      	ldr	r3, [r7, #16]
 80007cc:	3301      	adds	r3, #1
 80007ce:	613b      	str	r3, [r7, #16]
 80007d0:	693b      	ldr	r3, [r7, #16]
 80007d2:	2b31      	cmp	r3, #49	; 0x31
 80007d4:	ddc1      	ble.n	800075a <dynamic_text+0x22>
 80007d6:	69bb      	ldr	r3, [r7, #24]
 80007d8:	1c5a      	adds	r2, r3, #1
 80007da:	61ba      	str	r2, [r7, #24]
 80007dc:	687a      	ldr	r2, [r7, #4]
 80007de:	18d2      	adds	r2, r2, r3
 80007e0:	211f      	movs	r1, #31
 80007e2:	187b      	adds	r3, r7, r1
 80007e4:	7812      	ldrb	r2, [r2, #0]
 80007e6:	701a      	strb	r2, [r3, #0]
 80007e8:	187b      	adds	r3, r7, r1
 80007ea:	781b      	ldrb	r3, [r3, #0]
 80007ec:	2b00      	cmp	r3, #0
 80007ee:	d002      	beq.n	80007f6 <dynamic_text+0xbe>
 80007f0:	697b      	ldr	r3, [r7, #20]
 80007f2:	2b00      	cmp	r3, #0
 80007f4:	d00e      	beq.n	8000814 <dynamic_text+0xdc>
 80007f6:	697b      	ldr	r3, [r7, #20]
 80007f8:	2b01      	cmp	r3, #1
 80007fa:	d807      	bhi.n	800080c <dynamic_text+0xd4>
 80007fc:	231f      	movs	r3, #31
 80007fe:	18fb      	adds	r3, r7, r3
 8000800:	2220      	movs	r2, #32
 8000802:	701a      	strb	r2, [r3, #0]
 8000804:	697b      	ldr	r3, [r7, #20]
 8000806:	3301      	adds	r3, #1
 8000808:	617b      	str	r3, [r7, #20]
 800080a:	e003      	b.n	8000814 <dynamic_text+0xdc>
 800080c:	231f      	movs	r3, #31
 800080e:	18fb      	adds	r3, r7, r3
 8000810:	2200      	movs	r2, #0
 8000812:	701a      	strb	r2, [r3, #0]
 8000814:	231f      	movs	r3, #31
 8000816:	18fb      	adds	r3, r7, r3
 8000818:	781b      	ldrb	r3, [r3, #0]
 800081a:	2b00      	cmp	r3, #0
 800081c:	d19a      	bne.n	8000754 <dynamic_text+0x1c>
 800081e:	46c0      	nop			; (mov r8, r8)
 8000820:	46bd      	mov	sp, r7
 8000822:	b009      	add	sp, #36	; 0x24
 8000824:	bd90      	pop	{r4, r7, pc}
 8000826:	46c0      	nop			; (mov r8, r8)
 8000828:	48000800 	.word	0x48000800
 800082c:	48000400 	.word	0x48000400

08000830 <text>:
 8000830:	b5b0      	push	{r4, r5, r7, lr}
 8000832:	b086      	sub	sp, #24
 8000834:	af00      	add	r7, sp, #0
 8000836:	6078      	str	r0, [r7, #4]
 8000838:	2300      	movs	r3, #0
 800083a:	60fb      	str	r3, [r7, #12]
 800083c:	2300      	movs	r3, #0
 800083e:	617b      	str	r3, [r7, #20]
 8000840:	e051      	b.n	80008e6 <text+0xb6>
 8000842:	2313      	movs	r3, #19
 8000844:	18fb      	adds	r3, r7, r3
 8000846:	687a      	ldr	r2, [r7, #4]
 8000848:	7812      	ldrb	r2, [r2, #0]
 800084a:	701a      	strb	r2, [r3, #0]
 800084c:	2312      	movs	r3, #18
 800084e:	18fb      	adds	r3, r7, r3
 8000850:	2203      	movs	r2, #3
 8000852:	701a      	strb	r2, [r3, #0]
 8000854:	2311      	movs	r3, #17
 8000856:	18fb      	adds	r3, r7, r3
 8000858:	2200      	movs	r2, #0
 800085a:	701a      	strb	r2, [r3, #0]
 800085c:	e039      	b.n	80008d2 <text+0xa2>
 800085e:	2411      	movs	r4, #17
 8000860:	193b      	adds	r3, r7, r4
 8000862:	781b      	ldrb	r3, [r3, #0]
 8000864:	687a      	ldr	r2, [r7, #4]
 8000866:	18d2      	adds	r2, r2, r3
 8000868:	2113      	movs	r1, #19
 800086a:	187b      	adds	r3, r7, r1
 800086c:	7812      	ldrb	r2, [r2, #0]
 800086e:	701a      	strb	r2, [r3, #0]
 8000870:	187b      	adds	r3, r7, r1
 8000872:	781b      	ldrb	r3, [r3, #0]
 8000874:	0018      	movs	r0, r3
 8000876:	f7ff febf 	bl	80005f8 <symbols>
 800087a:	0003      	movs	r3, r0
 800087c:	60fb      	str	r3, [r7, #12]
 800087e:	200f      	movs	r0, #15
 8000880:	f7ff ff24 	bl	80006cc <mask_indicator>
 8000884:	0003      	movs	r3, r0
 8000886:	4a1b      	ldr	r2, [pc, #108]	; (80008f4 <text+0xc4>)
 8000888:	0019      	movs	r1, r3
 800088a:	0010      	movs	r0, r2
 800088c:	f7ff fde8 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000890:	2512      	movs	r5, #18
 8000892:	197b      	adds	r3, r7, r5
 8000894:	781b      	ldrb	r3, [r3, #0]
 8000896:	2201      	movs	r2, #1
 8000898:	409a      	lsls	r2, r3
 800089a:	0013      	movs	r3, r2
 800089c:	0018      	movs	r0, r3
 800089e:	f7ff ff15 	bl	80006cc <mask_indicator>
 80008a2:	0003      	movs	r3, r0
 80008a4:	4a13      	ldr	r2, [pc, #76]	; (80008f4 <text+0xc4>)
 80008a6:	0019      	movs	r1, r3
 80008a8:	0010      	movs	r0, r2
 80008aa:	f7ff fde5 	bl	8000478 <LL_GPIO_ResetOutputPin>
 80008ae:	68fb      	ldr	r3, [r7, #12]
 80008b0:	4a11      	ldr	r2, [pc, #68]	; (80008f8 <text+0xc8>)
 80008b2:	0019      	movs	r1, r3
 80008b4:	0010      	movs	r0, r2
 80008b6:	f7ff fdd3 	bl	8000460 <LL_GPIO_WriteOutputPort>
 80008ba:	f7ff fe93 	bl	80005e4 <delay>
 80008be:	197b      	adds	r3, r7, r5
 80008c0:	781a      	ldrb	r2, [r3, #0]
 80008c2:	197b      	adds	r3, r7, r5
 80008c4:	3a01      	subs	r2, #1
 80008c6:	701a      	strb	r2, [r3, #0]
 80008c8:	193b      	adds	r3, r7, r4
 80008ca:	781a      	ldrb	r2, [r3, #0]
 80008cc:	193b      	adds	r3, r7, r4
 80008ce:	3201      	adds	r2, #1
 80008d0:	701a      	strb	r2, [r3, #0]
 80008d2:	2313      	movs	r3, #19
 80008d4:	18fb      	adds	r3, r7, r3
 80008d6:	781b      	ldrb	r3, [r3, #0]
 80008d8:	2b00      	cmp	r3, #0
 80008da:	d1c0      	bne.n	800085e <text+0x2e>
 80008dc:	f7ff fe82 	bl	80005e4 <delay>
 80008e0:	697b      	ldr	r3, [r7, #20]
 80008e2:	3301      	adds	r3, #1
 80008e4:	617b      	str	r3, [r7, #20]
 80008e6:	697b      	ldr	r3, [r7, #20]
 80008e8:	2b63      	cmp	r3, #99	; 0x63
 80008ea:	d9aa      	bls.n	8000842 <text+0x12>
 80008ec:	46c0      	nop			; (mov r8, r8)
 80008ee:	46bd      	mov	sp, r7
 80008f0:	b006      	add	sp, #24
 80008f2:	bdb0      	pop	{r4, r5, r7, pc}
 80008f4:	48000800 	.word	0x48000800
 80008f8:	48000400 	.word	0x48000400

080008fc <dec_display>:
 80008fc:	b590      	push	{r4, r7, lr}
 80008fe:	b08b      	sub	sp, #44	; 0x2c
 8000900:	af00      	add	r7, sp, #0
 8000902:	0002      	movs	r2, r0
 8000904:	1dbb      	adds	r3, r7, #6
 8000906:	801a      	strh	r2, [r3, #0]
 8000908:	2326      	movs	r3, #38	; 0x26
 800090a:	18fb      	adds	r3, r7, r3
 800090c:	2200      	movs	r2, #0
 800090e:	801a      	strh	r2, [r3, #0]
 8000910:	230c      	movs	r3, #12
 8000912:	18fb      	adds	r3, r7, r3
 8000914:	4a54      	ldr	r2, [pc, #336]	; (8000a68 <dec_display+0x16c>)
 8000916:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000918:	c313      	stmia	r3!, {r0, r1, r4}
 800091a:	ca03      	ldmia	r2!, {r0, r1}
 800091c:	c303      	stmia	r3!, {r0, r1}
 800091e:	2300      	movs	r3, #0
 8000920:	623b      	str	r3, [r7, #32]
 8000922:	e098      	b.n	8000a56 <dec_display+0x15a>
 8000924:	200f      	movs	r0, #15
 8000926:	f7ff fed1 	bl	80006cc <mask_indicator>
 800092a:	0003      	movs	r3, r0
 800092c:	4a4f      	ldr	r2, [pc, #316]	; (8000a6c <dec_display+0x170>)
 800092e:	0019      	movs	r1, r3
 8000930:	0010      	movs	r0, r2
 8000932:	f7ff fd95 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000936:	4b4e      	ldr	r3, [pc, #312]	; (8000a70 <dec_display+0x174>)
 8000938:	881b      	ldrh	r3, [r3, #0]
 800093a:	001a      	movs	r2, r3
 800093c:	2301      	movs	r3, #1
 800093e:	4093      	lsls	r3, r2
 8000940:	0018      	movs	r0, r3
 8000942:	f7ff fec3 	bl	80006cc <mask_indicator>
 8000946:	0003      	movs	r3, r0
 8000948:	4a48      	ldr	r2, [pc, #288]	; (8000a6c <dec_display+0x170>)
 800094a:	0019      	movs	r1, r3
 800094c:	0010      	movs	r0, r2
 800094e:	f7ff fd93 	bl	8000478 <LL_GPIO_ResetOutputPin>
 8000952:	4b47      	ldr	r3, [pc, #284]	; (8000a70 <dec_display+0x174>)
 8000954:	881b      	ldrh	r3, [r3, #0]
 8000956:	2b00      	cmp	r3, #0
 8000958:	d10f      	bne.n	800097a <dec_display+0x7e>
 800095a:	1dbb      	adds	r3, r7, #6
 800095c:	881b      	ldrh	r3, [r3, #0]
 800095e:	210a      	movs	r1, #10
 8000960:	0018      	movs	r0, r3
 8000962:	f7ff fc57 	bl	8000214 <__aeabi_uidivmod>
 8000966:	000b      	movs	r3, r1
 8000968:	b29b      	uxth	r3, r3
 800096a:	0019      	movs	r1, r3
 800096c:	2326      	movs	r3, #38	; 0x26
 800096e:	18fb      	adds	r3, r7, r3
 8000970:	220c      	movs	r2, #12
 8000972:	18ba      	adds	r2, r7, r2
 8000974:	0049      	lsls	r1, r1, #1
 8000976:	5a8a      	ldrh	r2, [r1, r2]
 8000978:	801a      	strh	r2, [r3, #0]
 800097a:	4b3d      	ldr	r3, [pc, #244]	; (8000a70 <dec_display+0x174>)
 800097c:	881b      	ldrh	r3, [r3, #0]
 800097e:	2b01      	cmp	r3, #1
 8000980:	d115      	bne.n	80009ae <dec_display+0xb2>
 8000982:	1dbb      	adds	r3, r7, #6
 8000984:	881b      	ldrh	r3, [r3, #0]
 8000986:	210a      	movs	r1, #10
 8000988:	0018      	movs	r0, r3
 800098a:	f7ff fbbd 	bl	8000108 <__udivsi3>
 800098e:	0003      	movs	r3, r0
 8000990:	b29b      	uxth	r3, r3
 8000992:	210a      	movs	r1, #10
 8000994:	0018      	movs	r0, r3
 8000996:	f7ff fc3d 	bl	8000214 <__aeabi_uidivmod>
 800099a:	000b      	movs	r3, r1
 800099c:	b29b      	uxth	r3, r3
 800099e:	0019      	movs	r1, r3
 80009a0:	2326      	movs	r3, #38	; 0x26
 80009a2:	18fb      	adds	r3, r7, r3
 80009a4:	220c      	movs	r2, #12
 80009a6:	18ba      	adds	r2, r7, r2
 80009a8:	0049      	lsls	r1, r1, #1
 80009aa:	5a8a      	ldrh	r2, [r1, r2]
 80009ac:	801a      	strh	r2, [r3, #0]
 80009ae:	4b30      	ldr	r3, [pc, #192]	; (8000a70 <dec_display+0x174>)
 80009b0:	881b      	ldrh	r3, [r3, #0]
 80009b2:	2b02      	cmp	r3, #2
 80009b4:	d115      	bne.n	80009e2 <dec_display+0xe6>
 80009b6:	1dbb      	adds	r3, r7, #6
 80009b8:	881b      	ldrh	r3, [r3, #0]
 80009ba:	2164      	movs	r1, #100	; 0x64
 80009bc:	0018      	movs	r0, r3
 80009be:	f7ff fba3 	bl	8000108 <__udivsi3>
 80009c2:	0003      	movs	r3, r0
 80009c4:	b29b      	uxth	r3, r3
 80009c6:	210a      	movs	r1, #10
 80009c8:	0018      	movs	r0, r3
 80009ca:	f7ff fc23 	bl	8000214 <__aeabi_uidivmod>
 80009ce:	000b      	movs	r3, r1
 80009d0:	b29b      	uxth	r3, r3
 80009d2:	0019      	movs	r1, r3
 80009d4:	2326      	movs	r3, #38	; 0x26
 80009d6:	18fb      	adds	r3, r7, r3
 80009d8:	220c      	movs	r2, #12
 80009da:	18ba      	adds	r2, r7, r2
 80009dc:	0049      	lsls	r1, r1, #1
 80009de:	5a8a      	ldrh	r2, [r1, r2]
 80009e0:	801a      	strh	r2, [r3, #0]
 80009e2:	4b23      	ldr	r3, [pc, #140]	; (8000a70 <dec_display+0x174>)
 80009e4:	881b      	ldrh	r3, [r3, #0]
 80009e6:	2b03      	cmp	r3, #3
 80009e8:	d116      	bne.n	8000a18 <dec_display+0x11c>
 80009ea:	1dbb      	adds	r3, r7, #6
 80009ec:	881b      	ldrh	r3, [r3, #0]
 80009ee:	22fa      	movs	r2, #250	; 0xfa
 80009f0:	0091      	lsls	r1, r2, #2
 80009f2:	0018      	movs	r0, r3
 80009f4:	f7ff fb88 	bl	8000108 <__udivsi3>
 80009f8:	0003      	movs	r3, r0
 80009fa:	b29b      	uxth	r3, r3
 80009fc:	210a      	movs	r1, #10
 80009fe:	0018      	movs	r0, r3
 8000a00:	f7ff fc08 	bl	8000214 <__aeabi_uidivmod>
 8000a04:	000b      	movs	r3, r1
 8000a06:	b29b      	uxth	r3, r3
 8000a08:	0019      	movs	r1, r3
 8000a0a:	2326      	movs	r3, #38	; 0x26
 8000a0c:	18fb      	adds	r3, r7, r3
 8000a0e:	220c      	movs	r2, #12
 8000a10:	18ba      	adds	r2, r7, r2
 8000a12:	0049      	lsls	r1, r1, #1
 8000a14:	5a8a      	ldrh	r2, [r1, r2]
 8000a16:	801a      	strh	r2, [r3, #0]
 8000a18:	2326      	movs	r3, #38	; 0x26
 8000a1a:	18fb      	adds	r3, r7, r3
 8000a1c:	881b      	ldrh	r3, [r3, #0]
 8000a1e:	0018      	movs	r0, r3
 8000a20:	f7ff fe54 	bl	80006cc <mask_indicator>
 8000a24:	0003      	movs	r3, r0
 8000a26:	4a13      	ldr	r2, [pc, #76]	; (8000a74 <dec_display+0x178>)
 8000a28:	0019      	movs	r1, r3
 8000a2a:	0010      	movs	r0, r2
 8000a2c:	f7ff fd18 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000a30:	4b0f      	ldr	r3, [pc, #60]	; (8000a70 <dec_display+0x174>)
 8000a32:	881b      	ldrh	r3, [r3, #0]
 8000a34:	3301      	adds	r3, #1
 8000a36:	4a10      	ldr	r2, [pc, #64]	; (8000a78 <dec_display+0x17c>)
 8000a38:	4013      	ands	r3, r2
 8000a3a:	d504      	bpl.n	8000a46 <dec_display+0x14a>
 8000a3c:	3b01      	subs	r3, #1
 8000a3e:	2204      	movs	r2, #4
 8000a40:	4252      	negs	r2, r2
 8000a42:	4313      	orrs	r3, r2
 8000a44:	3301      	adds	r3, #1
 8000a46:	b29a      	uxth	r2, r3
 8000a48:	4b09      	ldr	r3, [pc, #36]	; (8000a70 <dec_display+0x174>)
 8000a4a:	801a      	strh	r2, [r3, #0]
 8000a4c:	f7ff fdca 	bl	80005e4 <delay>
 8000a50:	6a3b      	ldr	r3, [r7, #32]
 8000a52:	3301      	adds	r3, #1
 8000a54:	623b      	str	r3, [r7, #32]
 8000a56:	6a3b      	ldr	r3, [r7, #32]
 8000a58:	2b01      	cmp	r3, #1
 8000a5a:	d800      	bhi.n	8000a5e <dec_display+0x162>
 8000a5c:	e762      	b.n	8000924 <dec_display+0x28>
 8000a5e:	46c0      	nop			; (mov r8, r8)
 8000a60:	46bd      	mov	sp, r7
 8000a62:	b00b      	add	sp, #44	; 0x2c
 8000a64:	bd90      	pop	{r4, r7, pc}
 8000a66:	46c0      	nop			; (mov r8, r8)
 8000a68:	08000e74 	.word	0x08000e74
 8000a6c:	48000800 	.word	0x48000800
 8000a70:	20000450 	.word	0x20000450
 8000a74:	48000400 	.word	0x48000400
 8000a78:	80000003 	.word	0x80000003

08000a7c <dyn_display>:
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	b094      	sub	sp, #80	; 0x50
 8000a80:	af00      	add	r7, sp, #0
 8000a82:	6078      	str	r0, [r7, #4]
 8000a84:	2300      	movs	r3, #0
 8000a86:	64bb      	str	r3, [r7, #72]	; 0x48
 8000a88:	2308      	movs	r3, #8
 8000a8a:	18fa      	adds	r2, r7, r3
 8000a8c:	4b2c      	ldr	r3, [pc, #176]	; (8000b40 <dyn_display+0xc4>)
 8000a8e:	0010      	movs	r0, r2
 8000a90:	0019      	movs	r1, r3
 8000a92:	2340      	movs	r3, #64	; 0x40
 8000a94:	001a      	movs	r2, r3
 8000a96:	f000 f90d 	bl	8000cb4 <memcpy>
 8000a9a:	2300      	movs	r3, #0
 8000a9c:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000a9e:	e045      	b.n	8000b2c <dyn_display+0xb0>
 8000aa0:	200f      	movs	r0, #15
 8000aa2:	f7ff fe13 	bl	80006cc <mask_indicator>
 8000aa6:	0003      	movs	r3, r0
 8000aa8:	4a26      	ldr	r2, [pc, #152]	; (8000b44 <dyn_display+0xc8>)
 8000aaa:	0019      	movs	r1, r3
 8000aac:	0010      	movs	r0, r2
 8000aae:	f7ff fcd7 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000ab2:	4b25      	ldr	r3, [pc, #148]	; (8000b48 <dyn_display+0xcc>)
 8000ab4:	881b      	ldrh	r3, [r3, #0]
 8000ab6:	001a      	movs	r2, r3
 8000ab8:	2301      	movs	r3, #1
 8000aba:	4093      	lsls	r3, r2
 8000abc:	0018      	movs	r0, r3
 8000abe:	f7ff fe05 	bl	80006cc <mask_indicator>
 8000ac2:	0003      	movs	r3, r0
 8000ac4:	4a1f      	ldr	r2, [pc, #124]	; (8000b44 <dyn_display+0xc8>)
 8000ac6:	0019      	movs	r1, r3
 8000ac8:	0010      	movs	r0, r2
 8000aca:	f7ff fcd5 	bl	8000478 <LL_GPIO_ResetOutputPin>
 8000ace:	4b1e      	ldr	r3, [pc, #120]	; (8000b48 <dyn_display+0xcc>)
 8000ad0:	881b      	ldrh	r3, [r3, #0]
 8000ad2:	009b      	lsls	r3, r3, #2
 8000ad4:	220f      	movs	r2, #15
 8000ad6:	409a      	lsls	r2, r3
 8000ad8:	0013      	movs	r3, r2
 8000ada:	001a      	movs	r2, r3
 8000adc:	687b      	ldr	r3, [r7, #4]
 8000ade:	401a      	ands	r2, r3
 8000ae0:	4b19      	ldr	r3, [pc, #100]	; (8000b48 <dyn_display+0xcc>)
 8000ae2:	881b      	ldrh	r3, [r3, #0]
 8000ae4:	009b      	lsls	r3, r3, #2
 8000ae6:	40da      	lsrs	r2, r3
 8000ae8:	2308      	movs	r3, #8
 8000aea:	18fb      	adds	r3, r7, r3
 8000aec:	0092      	lsls	r2, r2, #2
 8000aee:	58d3      	ldr	r3, [r2, r3]
 8000af0:	64bb      	str	r3, [r7, #72]	; 0x48
 8000af2:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8000af4:	0018      	movs	r0, r3
 8000af6:	f7ff fde9 	bl	80006cc <mask_indicator>
 8000afa:	0003      	movs	r3, r0
 8000afc:	4a13      	ldr	r2, [pc, #76]	; (8000b4c <dyn_display+0xd0>)
 8000afe:	0019      	movs	r1, r3
 8000b00:	0010      	movs	r0, r2
 8000b02:	f7ff fcad 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000b06:	4b10      	ldr	r3, [pc, #64]	; (8000b48 <dyn_display+0xcc>)
 8000b08:	881b      	ldrh	r3, [r3, #0]
 8000b0a:	3301      	adds	r3, #1
 8000b0c:	4a10      	ldr	r2, [pc, #64]	; (8000b50 <dyn_display+0xd4>)
 8000b0e:	4013      	ands	r3, r2
 8000b10:	d504      	bpl.n	8000b1c <dyn_display+0xa0>
 8000b12:	3b01      	subs	r3, #1
 8000b14:	2204      	movs	r2, #4
 8000b16:	4252      	negs	r2, r2
 8000b18:	4313      	orrs	r3, r2
 8000b1a:	3301      	adds	r3, #1
 8000b1c:	b29a      	uxth	r2, r3
 8000b1e:	4b0a      	ldr	r3, [pc, #40]	; (8000b48 <dyn_display+0xcc>)
 8000b20:	801a      	strh	r2, [r3, #0]
 8000b22:	f7ff fd5f 	bl	80005e4 <delay>
 8000b26:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8000b28:	3301      	adds	r3, #1
 8000b2a:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000b2c:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8000b2e:	23fa      	movs	r3, #250	; 0xfa
 8000b30:	005b      	lsls	r3, r3, #1
 8000b32:	429a      	cmp	r2, r3
 8000b34:	d3b4      	bcc.n	8000aa0 <dyn_display+0x24>
 8000b36:	46c0      	nop			; (mov r8, r8)
 8000b38:	46bd      	mov	sp, r7
 8000b3a:	b014      	add	sp, #80	; 0x50
 8000b3c:	bd80      	pop	{r7, pc}
 8000b3e:	46c0      	nop			; (mov r8, r8)
 8000b40:	08000e88 	.word	0x08000e88
 8000b44:	48000800 	.word	0x48000800
 8000b48:	20000452 	.word	0x20000452
 8000b4c:	48000400 	.word	0x48000400
 8000b50:	80000003 	.word	0x80000003

08000b54 <main>:
 8000b54:	b580      	push	{r7, lr}
 8000b56:	b082      	sub	sp, #8
 8000b58:	af00      	add	r7, sp, #0
 8000b5a:	f7ff fc99 	bl	8000490 <rcc_config>
 8000b5e:	f7ff fccb 	bl	80004f8 <gpio_config>
 8000b62:	4b12      	ldr	r3, [pc, #72]	; (8000bac <main+0x58>)
 8000b64:	0018      	movs	r0, r3
 8000b66:	f7ff ff89 	bl	8000a7c <dyn_display>
 8000b6a:	4b11      	ldr	r3, [pc, #68]	; (8000bb0 <main+0x5c>)
 8000b6c:	0018      	movs	r0, r3
 8000b6e:	f7ff fde3 	bl	8000738 <dynamic_text>
 8000b72:	4b10      	ldr	r3, [pc, #64]	; (8000bb4 <main+0x60>)
 8000b74:	0018      	movs	r0, r3
 8000b76:	f7ff fe5b 	bl	8000830 <text>
 8000b7a:	4b0f      	ldr	r3, [pc, #60]	; (8000bb8 <main+0x64>)
 8000b7c:	0018      	movs	r0, r3
 8000b7e:	f7ff fddb 	bl	8000738 <dynamic_text>
 8000b82:	2300      	movs	r3, #0
 8000b84:	607b      	str	r3, [r7, #4]
 8000b86:	e007      	b.n	8000b98 <main+0x44>
 8000b88:	687b      	ldr	r3, [r7, #4]
 8000b8a:	b29b      	uxth	r3, r3
 8000b8c:	0018      	movs	r0, r3
 8000b8e:	f7ff feb5 	bl	80008fc <dec_display>
 8000b92:	687b      	ldr	r3, [r7, #4]
 8000b94:	3301      	adds	r3, #1
 8000b96:	607b      	str	r3, [r7, #4]
 8000b98:	687b      	ldr	r3, [r7, #4]
 8000b9a:	4a08      	ldr	r2, [pc, #32]	; (8000bbc <main+0x68>)
 8000b9c:	4293      	cmp	r3, r2
 8000b9e:	ddf3      	ble.n	8000b88 <main+0x34>
 8000ba0:	4b07      	ldr	r3, [pc, #28]	; (8000bc0 <main+0x6c>)
 8000ba2:	0018      	movs	r0, r3
 8000ba4:	f7ff fe44 	bl	8000830 <text>
 8000ba8:	e7db      	b.n	8000b62 <main+0xe>
 8000baa:	46c0      	nop			; (mov r8, r8)
 8000bac:	00002021 	.word	0x00002021
 8000bb0:	08000ec8 	.word	0x08000ec8
 8000bb4:	08000ee0 	.word	0x08000ee0
 8000bb8:	08000ee4 	.word	0x08000ee4
 8000bbc:	0000270e 	.word	0x0000270e
 8000bc0:	08000ef0 	.word	0x08000ef0

08000bc4 <SystemInit>:
 8000bc4:	b580      	push	{r7, lr}
 8000bc6:	af00      	add	r7, sp, #0
 8000bc8:	4b1a      	ldr	r3, [pc, #104]	; (8000c34 <SystemInit+0x70>)
 8000bca:	681a      	ldr	r2, [r3, #0]
 8000bcc:	4b19      	ldr	r3, [pc, #100]	; (8000c34 <SystemInit+0x70>)
 8000bce:	2101      	movs	r1, #1
 8000bd0:	430a      	orrs	r2, r1
 8000bd2:	601a      	str	r2, [r3, #0]
 8000bd4:	4b17      	ldr	r3, [pc, #92]	; (8000c34 <SystemInit+0x70>)
 8000bd6:	685a      	ldr	r2, [r3, #4]
 8000bd8:	4b16      	ldr	r3, [pc, #88]	; (8000c34 <SystemInit+0x70>)
 8000bda:	4917      	ldr	r1, [pc, #92]	; (8000c38 <SystemInit+0x74>)
 8000bdc:	400a      	ands	r2, r1
 8000bde:	605a      	str	r2, [r3, #4]
 8000be0:	4b14      	ldr	r3, [pc, #80]	; (8000c34 <SystemInit+0x70>)
 8000be2:	681a      	ldr	r2, [r3, #0]
 8000be4:	4b13      	ldr	r3, [pc, #76]	; (8000c34 <SystemInit+0x70>)
 8000be6:	4915      	ldr	r1, [pc, #84]	; (8000c3c <SystemInit+0x78>)
 8000be8:	400a      	ands	r2, r1
 8000bea:	601a      	str	r2, [r3, #0]
 8000bec:	4b11      	ldr	r3, [pc, #68]	; (8000c34 <SystemInit+0x70>)
 8000bee:	681a      	ldr	r2, [r3, #0]
 8000bf0:	4b10      	ldr	r3, [pc, #64]	; (8000c34 <SystemInit+0x70>)
 8000bf2:	4913      	ldr	r1, [pc, #76]	; (8000c40 <SystemInit+0x7c>)
 8000bf4:	400a      	ands	r2, r1
 8000bf6:	601a      	str	r2, [r3, #0]
 8000bf8:	4b0e      	ldr	r3, [pc, #56]	; (8000c34 <SystemInit+0x70>)
 8000bfa:	685a      	ldr	r2, [r3, #4]
 8000bfc:	4b0d      	ldr	r3, [pc, #52]	; (8000c34 <SystemInit+0x70>)
 8000bfe:	4911      	ldr	r1, [pc, #68]	; (8000c44 <SystemInit+0x80>)
 8000c00:	400a      	ands	r2, r1
 8000c02:	605a      	str	r2, [r3, #4]
 8000c04:	4b0b      	ldr	r3, [pc, #44]	; (8000c34 <SystemInit+0x70>)
 8000c06:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000c08:	4b0a      	ldr	r3, [pc, #40]	; (8000c34 <SystemInit+0x70>)
 8000c0a:	210f      	movs	r1, #15
 8000c0c:	438a      	bics	r2, r1
 8000c0e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000c10:	4b08      	ldr	r3, [pc, #32]	; (8000c34 <SystemInit+0x70>)
 8000c12:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000c14:	4b07      	ldr	r3, [pc, #28]	; (8000c34 <SystemInit+0x70>)
 8000c16:	490c      	ldr	r1, [pc, #48]	; (8000c48 <SystemInit+0x84>)
 8000c18:	400a      	ands	r2, r1
 8000c1a:	631a      	str	r2, [r3, #48]	; 0x30
 8000c1c:	4b05      	ldr	r3, [pc, #20]	; (8000c34 <SystemInit+0x70>)
 8000c1e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000c20:	4b04      	ldr	r3, [pc, #16]	; (8000c34 <SystemInit+0x70>)
 8000c22:	2101      	movs	r1, #1
 8000c24:	438a      	bics	r2, r1
 8000c26:	635a      	str	r2, [r3, #52]	; 0x34
 8000c28:	4b02      	ldr	r3, [pc, #8]	; (8000c34 <SystemInit+0x70>)
 8000c2a:	2200      	movs	r2, #0
 8000c2c:	609a      	str	r2, [r3, #8]
 8000c2e:	46c0      	nop			; (mov r8, r8)
 8000c30:	46bd      	mov	sp, r7
 8000c32:	bd80      	pop	{r7, pc}
 8000c34:	40021000 	.word	0x40021000
 8000c38:	f8ffb80c 	.word	0xf8ffb80c
 8000c3c:	fef6ffff 	.word	0xfef6ffff
 8000c40:	fffbffff 	.word	0xfffbffff
 8000c44:	ffc0ffff 	.word	0xffc0ffff
 8000c48:	fffffeac 	.word	0xfffffeac

08000c4c <NMI_Handler>:
 8000c4c:	b580      	push	{r7, lr}
 8000c4e:	af00      	add	r7, sp, #0
 8000c50:	46c0      	nop			; (mov r8, r8)
 8000c52:	46bd      	mov	sp, r7
 8000c54:	bd80      	pop	{r7, pc}

08000c56 <HardFault_Handler>:
 8000c56:	b580      	push	{r7, lr}
 8000c58:	af00      	add	r7, sp, #0
 8000c5a:	e7fe      	b.n	8000c5a <HardFault_Handler+0x4>

08000c5c <SVC_Handler>:
 8000c5c:	b580      	push	{r7, lr}
 8000c5e:	af00      	add	r7, sp, #0
 8000c60:	46c0      	nop			; (mov r8, r8)
 8000c62:	46bd      	mov	sp, r7
 8000c64:	bd80      	pop	{r7, pc}

08000c66 <PendSV_Handler>:
 8000c66:	b580      	push	{r7, lr}
 8000c68:	af00      	add	r7, sp, #0
 8000c6a:	46c0      	nop			; (mov r8, r8)
 8000c6c:	46bd      	mov	sp, r7
 8000c6e:	bd80      	pop	{r7, pc}

08000c70 <__libc_init_array>:
 8000c70:	b570      	push	{r4, r5, r6, lr}
 8000c72:	4d0c      	ldr	r5, [pc, #48]	; (8000ca4 <__libc_init_array+0x34>)
 8000c74:	4e0c      	ldr	r6, [pc, #48]	; (8000ca8 <__libc_init_array+0x38>)
 8000c76:	1b76      	subs	r6, r6, r5
 8000c78:	10b6      	asrs	r6, r6, #2
 8000c7a:	d005      	beq.n	8000c88 <__libc_init_array+0x18>
 8000c7c:	2400      	movs	r4, #0
 8000c7e:	cd08      	ldmia	r5!, {r3}
 8000c80:	3401      	adds	r4, #1
 8000c82:	4798      	blx	r3
 8000c84:	42a6      	cmp	r6, r4
 8000c86:	d1fa      	bne.n	8000c7e <__libc_init_array+0xe>
 8000c88:	f000 f8e8 	bl	8000e5c <_init>
 8000c8c:	4d07      	ldr	r5, [pc, #28]	; (8000cac <__libc_init_array+0x3c>)
 8000c8e:	4e08      	ldr	r6, [pc, #32]	; (8000cb0 <__libc_init_array+0x40>)
 8000c90:	1b76      	subs	r6, r6, r5
 8000c92:	10b6      	asrs	r6, r6, #2
 8000c94:	d005      	beq.n	8000ca2 <__libc_init_array+0x32>
 8000c96:	2400      	movs	r4, #0
 8000c98:	cd08      	ldmia	r5!, {r3}
 8000c9a:	3401      	adds	r4, #1
 8000c9c:	4798      	blx	r3
 8000c9e:	42a6      	cmp	r6, r4
 8000ca0:	d1fa      	bne.n	8000c98 <__libc_init_array+0x28>
 8000ca2:	bd70      	pop	{r4, r5, r6, pc}
 8000ca4:	08001064 	.word	0x08001064
 8000ca8:	08001064 	.word	0x08001064
 8000cac:	08001064 	.word	0x08001064
 8000cb0:	0800106c 	.word	0x0800106c

08000cb4 <memcpy>:
 8000cb4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000cb6:	46c6      	mov	lr, r8
 8000cb8:	b500      	push	{lr}
 8000cba:	2a0f      	cmp	r2, #15
 8000cbc:	d941      	bls.n	8000d42 <memcpy+0x8e>
 8000cbe:	2703      	movs	r7, #3
 8000cc0:	000d      	movs	r5, r1
 8000cc2:	003e      	movs	r6, r7
 8000cc4:	4305      	orrs	r5, r0
 8000cc6:	000c      	movs	r4, r1
 8000cc8:	0003      	movs	r3, r0
 8000cca:	402e      	ands	r6, r5
 8000ccc:	422f      	tst	r7, r5
 8000cce:	d13d      	bne.n	8000d4c <memcpy+0x98>
 8000cd0:	0015      	movs	r5, r2
 8000cd2:	3d10      	subs	r5, #16
 8000cd4:	092d      	lsrs	r5, r5, #4
 8000cd6:	46a8      	mov	r8, r5
 8000cd8:	012d      	lsls	r5, r5, #4
 8000cda:	46ac      	mov	ip, r5
 8000cdc:	4484      	add	ip, r0
 8000cde:	6827      	ldr	r7, [r4, #0]
 8000ce0:	001d      	movs	r5, r3
 8000ce2:	601f      	str	r7, [r3, #0]
 8000ce4:	6867      	ldr	r7, [r4, #4]
 8000ce6:	605f      	str	r7, [r3, #4]
 8000ce8:	68a7      	ldr	r7, [r4, #8]
 8000cea:	609f      	str	r7, [r3, #8]
 8000cec:	68e7      	ldr	r7, [r4, #12]
 8000cee:	3410      	adds	r4, #16
 8000cf0:	60df      	str	r7, [r3, #12]
 8000cf2:	3310      	adds	r3, #16
 8000cf4:	4565      	cmp	r5, ip
 8000cf6:	d1f2      	bne.n	8000cde <memcpy+0x2a>
 8000cf8:	4645      	mov	r5, r8
 8000cfa:	230f      	movs	r3, #15
 8000cfc:	240c      	movs	r4, #12
 8000cfe:	3501      	adds	r5, #1
 8000d00:	012d      	lsls	r5, r5, #4
 8000d02:	1949      	adds	r1, r1, r5
 8000d04:	4013      	ands	r3, r2
 8000d06:	1945      	adds	r5, r0, r5
 8000d08:	4214      	tst	r4, r2
 8000d0a:	d022      	beq.n	8000d52 <memcpy+0x9e>
 8000d0c:	598c      	ldr	r4, [r1, r6]
 8000d0e:	51ac      	str	r4, [r5, r6]
 8000d10:	3604      	adds	r6, #4
 8000d12:	1b9c      	subs	r4, r3, r6
 8000d14:	2c03      	cmp	r4, #3
 8000d16:	d8f9      	bhi.n	8000d0c <memcpy+0x58>
 8000d18:	3b04      	subs	r3, #4
 8000d1a:	089b      	lsrs	r3, r3, #2
 8000d1c:	3301      	adds	r3, #1
 8000d1e:	009b      	lsls	r3, r3, #2
 8000d20:	18ed      	adds	r5, r5, r3
 8000d22:	18c9      	adds	r1, r1, r3
 8000d24:	2303      	movs	r3, #3
 8000d26:	401a      	ands	r2, r3
 8000d28:	1e56      	subs	r6, r2, #1
 8000d2a:	2a00      	cmp	r2, #0
 8000d2c:	d006      	beq.n	8000d3c <memcpy+0x88>
 8000d2e:	2300      	movs	r3, #0
 8000d30:	5ccc      	ldrb	r4, [r1, r3]
 8000d32:	001a      	movs	r2, r3
 8000d34:	54ec      	strb	r4, [r5, r3]
 8000d36:	3301      	adds	r3, #1
 8000d38:	4296      	cmp	r6, r2
 8000d3a:	d1f9      	bne.n	8000d30 <memcpy+0x7c>
 8000d3c:	bc80      	pop	{r7}
 8000d3e:	46b8      	mov	r8, r7
 8000d40:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d42:	0005      	movs	r5, r0
 8000d44:	1e56      	subs	r6, r2, #1
 8000d46:	2a00      	cmp	r2, #0
 8000d48:	d1f1      	bne.n	8000d2e <memcpy+0x7a>
 8000d4a:	e7f7      	b.n	8000d3c <memcpy+0x88>
 8000d4c:	0005      	movs	r5, r0
 8000d4e:	1e56      	subs	r6, r2, #1
 8000d50:	e7ed      	b.n	8000d2e <memcpy+0x7a>
 8000d52:	001a      	movs	r2, r3
 8000d54:	e7f6      	b.n	8000d44 <memcpy+0x90>
 8000d56:	46c0      	nop			; (mov r8, r8)

08000d58 <register_fini>:
 8000d58:	4b03      	ldr	r3, [pc, #12]	; (8000d68 <register_fini+0x10>)
 8000d5a:	b510      	push	{r4, lr}
 8000d5c:	2b00      	cmp	r3, #0
 8000d5e:	d002      	beq.n	8000d66 <register_fini+0xe>
 8000d60:	4802      	ldr	r0, [pc, #8]	; (8000d6c <register_fini+0x14>)
 8000d62:	f000 f805 	bl	8000d70 <atexit>
 8000d66:	bd10      	pop	{r4, pc}
 8000d68:	00000000 	.word	0x00000000
 8000d6c:	08000d81 	.word	0x08000d81

08000d70 <atexit>:
 8000d70:	b510      	push	{r4, lr}
 8000d72:	0001      	movs	r1, r0
 8000d74:	2300      	movs	r3, #0
 8000d76:	2200      	movs	r2, #0
 8000d78:	2000      	movs	r0, #0
 8000d7a:	f000 f819 	bl	8000db0 <__register_exitproc>
 8000d7e:	bd10      	pop	{r4, pc}

08000d80 <__libc_fini_array>:
 8000d80:	b570      	push	{r4, r5, r6, lr}
 8000d82:	4d07      	ldr	r5, [pc, #28]	; (8000da0 <__libc_fini_array+0x20>)
 8000d84:	4c07      	ldr	r4, [pc, #28]	; (8000da4 <__libc_fini_array+0x24>)
 8000d86:	1b64      	subs	r4, r4, r5
 8000d88:	10a4      	asrs	r4, r4, #2
 8000d8a:	d005      	beq.n	8000d98 <__libc_fini_array+0x18>
 8000d8c:	3c01      	subs	r4, #1
 8000d8e:	00a3      	lsls	r3, r4, #2
 8000d90:	58eb      	ldr	r3, [r5, r3]
 8000d92:	4798      	blx	r3
 8000d94:	2c00      	cmp	r4, #0
 8000d96:	d1f9      	bne.n	8000d8c <__libc_fini_array+0xc>
 8000d98:	f000 f866 	bl	8000e68 <_fini>
 8000d9c:	bd70      	pop	{r4, r5, r6, pc}
 8000d9e:	46c0      	nop			; (mov r8, r8)
 8000da0:	0800106c 	.word	0x0800106c
 8000da4:	08001070 	.word	0x08001070

08000da8 <__retarget_lock_acquire_recursive>:
 8000da8:	4770      	bx	lr
 8000daa:	46c0      	nop			; (mov r8, r8)

08000dac <__retarget_lock_release_recursive>:
 8000dac:	4770      	bx	lr
 8000dae:	46c0      	nop			; (mov r8, r8)

08000db0 <__register_exitproc>:
 8000db0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000db2:	46d6      	mov	lr, sl
 8000db4:	464f      	mov	r7, r9
 8000db6:	4646      	mov	r6, r8
 8000db8:	b5c0      	push	{r6, r7, lr}
 8000dba:	4f26      	ldr	r7, [pc, #152]	; (8000e54 <__register_exitproc+0xa4>)
 8000dbc:	b082      	sub	sp, #8
 8000dbe:	0006      	movs	r6, r0
 8000dc0:	6838      	ldr	r0, [r7, #0]
 8000dc2:	4692      	mov	sl, r2
 8000dc4:	4698      	mov	r8, r3
 8000dc6:	4689      	mov	r9, r1
 8000dc8:	f7ff ffee 	bl	8000da8 <__retarget_lock_acquire_recursive>
 8000dcc:	4b22      	ldr	r3, [pc, #136]	; (8000e58 <__register_exitproc+0xa8>)
 8000dce:	681b      	ldr	r3, [r3, #0]
 8000dd0:	9301      	str	r3, [sp, #4]
 8000dd2:	23a4      	movs	r3, #164	; 0xa4
 8000dd4:	9a01      	ldr	r2, [sp, #4]
 8000dd6:	005b      	lsls	r3, r3, #1
 8000dd8:	58d5      	ldr	r5, [r2, r3]
 8000dda:	2d00      	cmp	r5, #0
 8000ddc:	d02e      	beq.n	8000e3c <__register_exitproc+0x8c>
 8000dde:	686c      	ldr	r4, [r5, #4]
 8000de0:	2c1f      	cmp	r4, #31
 8000de2:	dc30      	bgt.n	8000e46 <__register_exitproc+0x96>
 8000de4:	2e00      	cmp	r6, #0
 8000de6:	d10f      	bne.n	8000e08 <__register_exitproc+0x58>
 8000de8:	1c63      	adds	r3, r4, #1
 8000dea:	606b      	str	r3, [r5, #4]
 8000dec:	464b      	mov	r3, r9
 8000dee:	3402      	adds	r4, #2
 8000df0:	00a4      	lsls	r4, r4, #2
 8000df2:	6838      	ldr	r0, [r7, #0]
 8000df4:	5163      	str	r3, [r4, r5]
 8000df6:	f7ff ffd9 	bl	8000dac <__retarget_lock_release_recursive>
 8000dfa:	2000      	movs	r0, #0
 8000dfc:	b002      	add	sp, #8
 8000dfe:	bce0      	pop	{r5, r6, r7}
 8000e00:	46ba      	mov	sl, r7
 8000e02:	46b1      	mov	r9, r6
 8000e04:	46a8      	mov	r8, r5
 8000e06:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e08:	2288      	movs	r2, #136	; 0x88
 8000e0a:	4651      	mov	r1, sl
 8000e0c:	0028      	movs	r0, r5
 8000e0e:	00a3      	lsls	r3, r4, #2
 8000e10:	18eb      	adds	r3, r5, r3
 8000e12:	5099      	str	r1, [r3, r2]
 8000e14:	3a87      	subs	r2, #135	; 0x87
 8000e16:	40a2      	lsls	r2, r4
 8000e18:	3089      	adds	r0, #137	; 0x89
 8000e1a:	30ff      	adds	r0, #255	; 0xff
 8000e1c:	6801      	ldr	r1, [r0, #0]
 8000e1e:	4311      	orrs	r1, r2
 8000e20:	6001      	str	r1, [r0, #0]
 8000e22:	2184      	movs	r1, #132	; 0x84
 8000e24:	4640      	mov	r0, r8
 8000e26:	0049      	lsls	r1, r1, #1
 8000e28:	5058      	str	r0, [r3, r1]
 8000e2a:	2e02      	cmp	r6, #2
 8000e2c:	d1dc      	bne.n	8000de8 <__register_exitproc+0x38>
 8000e2e:	002b      	movs	r3, r5
 8000e30:	338d      	adds	r3, #141	; 0x8d
 8000e32:	33ff      	adds	r3, #255	; 0xff
 8000e34:	6819      	ldr	r1, [r3, #0]
 8000e36:	430a      	orrs	r2, r1
 8000e38:	601a      	str	r2, [r3, #0]
 8000e3a:	e7d5      	b.n	8000de8 <__register_exitproc+0x38>
 8000e3c:	0015      	movs	r5, r2
 8000e3e:	354d      	adds	r5, #77	; 0x4d
 8000e40:	35ff      	adds	r5, #255	; 0xff
 8000e42:	50d5      	str	r5, [r2, r3]
 8000e44:	e7cb      	b.n	8000dde <__register_exitproc+0x2e>
 8000e46:	6838      	ldr	r0, [r7, #0]
 8000e48:	f7ff ffb0 	bl	8000dac <__retarget_lock_release_recursive>
 8000e4c:	2001      	movs	r0, #1
 8000e4e:	4240      	negs	r0, r0
 8000e50:	e7d4      	b.n	8000dfc <__register_exitproc+0x4c>
 8000e52:	46c0      	nop			; (mov r8, r8)
 8000e54:	20000430 	.word	0x20000430
 8000e58:	08001060 	.word	0x08001060

08000e5c <_init>:
 8000e5c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e5e:	46c0      	nop			; (mov r8, r8)
 8000e60:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000e62:	bc08      	pop	{r3}
 8000e64:	469e      	mov	lr, r3
 8000e66:	4770      	bx	lr

08000e68 <_fini>:
 8000e68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e6a:	46c0      	nop			; (mov r8, r8)
 8000e6c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000e6e:	bc08      	pop	{r3}
 8000e70:	469e      	mov	lr, r3
 8000e72:	4770      	bx	lr
