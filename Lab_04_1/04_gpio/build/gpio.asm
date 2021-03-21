
build/gpio.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000008c8  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000018  08000988  08000988  00010988  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080009a0  080009a0  000109a0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080009a8  080009a8  000109a8  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080009ac  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000040  20000434  08000de0  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000474  08000de0  00020474  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000a24  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000300  00000000  00000000  00020e80  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00000558  00000000  00000000  00021180  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000128  00000000  00000000  000216d8  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     000000f8  00000000  00000000  00021800  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00000489  00000000  00000000  000218f8  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00000502  00000000  00000000  00021d81  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00022283  2**0  CONTENTS, READONLY
 17 .debug_frame      00000554  00000000  00000000  00022304  2**2  CONTENTS, READONLY, DEBUGGING

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
 80000e4:	08000970 	.word	0x08000970

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
 8000104:	08000970 	.word	0x08000970

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
 8000264:	080009ac 	.word	0x080009ac
 8000268:	20000434 	.word	0x20000434
 800026c:	20000474 	.word	0x20000474

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
 8000688:	08000988 	.word	0x08000988

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
 80007d2:	4e0d      	ldr	r6, [pc, #52]	; (8000808 <__libc_init_array+0x38>)
 80007d4:	4d0d      	ldr	r5, [pc, #52]	; (800080c <__libc_init_array+0x3c>)
 80007d6:	1bad      	subs	r5, r5, r6
 80007d8:	10ad      	asrs	r5, r5, #2
 80007da:	d006      	beq.n	80007ea <__libc_init_array+0x1a>
 80007dc:	2400      	movs	r4, #0
 80007de:	00a3      	lsls	r3, r4, #2
 80007e0:	58f3      	ldr	r3, [r6, r3]
 80007e2:	3401      	adds	r4, #1
 80007e4:	4798      	blx	r3
 80007e6:	42a5      	cmp	r5, r4
 80007e8:	d1f9      	bne.n	80007de <__libc_init_array+0xe>
 80007ea:	f000 f8c1 	bl	8000970 <_init>
 80007ee:	4e08      	ldr	r6, [pc, #32]	; (8000810 <__libc_init_array+0x40>)
 80007f0:	4d08      	ldr	r5, [pc, #32]	; (8000814 <__libc_init_array+0x44>)
 80007f2:	1bad      	subs	r5, r5, r6
 80007f4:	10ad      	asrs	r5, r5, #2
 80007f6:	d006      	beq.n	8000806 <__libc_init_array+0x36>
 80007f8:	2400      	movs	r4, #0
 80007fa:	00a3      	lsls	r3, r4, #2
 80007fc:	58f3      	ldr	r3, [r6, r3]
 80007fe:	3401      	adds	r4, #1
 8000800:	4798      	blx	r3
 8000802:	42a5      	cmp	r5, r4
 8000804:	d1f9      	bne.n	80007fa <__libc_init_array+0x2a>
 8000806:	bd70      	pop	{r4, r5, r6, pc}
 8000808:	080009a0 	.word	0x080009a0
 800080c:	080009a0 	.word	0x080009a0
 8000810:	080009a0 	.word	0x080009a0
 8000814:	080009a8 	.word	0x080009a8

08000818 <register_fini>:
 8000818:	4b03      	ldr	r3, [pc, #12]	; (8000828 <register_fini+0x10>)
 800081a:	b510      	push	{r4, lr}
 800081c:	2b00      	cmp	r3, #0
 800081e:	d002      	beq.n	8000826 <register_fini+0xe>
 8000820:	4802      	ldr	r0, [pc, #8]	; (800082c <register_fini+0x14>)
 8000822:	f000 f805 	bl	8000830 <atexit>
 8000826:	bd10      	pop	{r4, pc}
 8000828:	00000000 	.word	0x00000000
 800082c:	08000841 	.word	0x08000841

08000830 <atexit>:
 8000830:	b510      	push	{r4, lr}
 8000832:	0001      	movs	r1, r0
 8000834:	2300      	movs	r3, #0
 8000836:	2200      	movs	r2, #0
 8000838:	2000      	movs	r0, #0
 800083a:	f000 f81f 	bl	800087c <__register_exitproc>
 800083e:	bd10      	pop	{r4, pc}

08000840 <__libc_fini_array>:
 8000840:	b570      	push	{r4, r5, r6, lr}
 8000842:	4b09      	ldr	r3, [pc, #36]	; (8000868 <__libc_fini_array+0x28>)
 8000844:	4c09      	ldr	r4, [pc, #36]	; (800086c <__libc_fini_array+0x2c>)
 8000846:	1ae4      	subs	r4, r4, r3
 8000848:	10a4      	asrs	r4, r4, #2
 800084a:	d009      	beq.n	8000860 <__libc_fini_array+0x20>
 800084c:	4a08      	ldr	r2, [pc, #32]	; (8000870 <__libc_fini_array+0x30>)
 800084e:	18a5      	adds	r5, r4, r2
 8000850:	00ad      	lsls	r5, r5, #2
 8000852:	18ed      	adds	r5, r5, r3
 8000854:	682b      	ldr	r3, [r5, #0]
 8000856:	3c01      	subs	r4, #1
 8000858:	4798      	blx	r3
 800085a:	3d04      	subs	r5, #4
 800085c:	2c00      	cmp	r4, #0
 800085e:	d1f9      	bne.n	8000854 <__libc_fini_array+0x14>
 8000860:	f000 f88c 	bl	800097c <_fini>
 8000864:	bd70      	pop	{r4, r5, r6, pc}
 8000866:	46c0      	nop			; (mov r8, r8)
 8000868:	080009a8 	.word	0x080009a8
 800086c:	080009ac 	.word	0x080009ac
 8000870:	3fffffff 	.word	0x3fffffff

08000874 <__retarget_lock_acquire_recursive>:
 8000874:	4770      	bx	lr
 8000876:	46c0      	nop			; (mov r8, r8)

08000878 <__retarget_lock_release_recursive>:
 8000878:	4770      	bx	lr
 800087a:	46c0      	nop			; (mov r8, r8)

0800087c <__register_exitproc>:
 800087c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800087e:	464e      	mov	r6, r9
 8000880:	4645      	mov	r5, r8
 8000882:	46de      	mov	lr, fp
 8000884:	4657      	mov	r7, sl
 8000886:	b5e0      	push	{r5, r6, r7, lr}
 8000888:	4d36      	ldr	r5, [pc, #216]	; (8000964 <__register_exitproc+0xe8>)
 800088a:	b083      	sub	sp, #12
 800088c:	0006      	movs	r6, r0
 800088e:	6828      	ldr	r0, [r5, #0]
 8000890:	4698      	mov	r8, r3
 8000892:	000f      	movs	r7, r1
 8000894:	4691      	mov	r9, r2
 8000896:	f7ff ffed 	bl	8000874 <__retarget_lock_acquire_recursive>
 800089a:	4b33      	ldr	r3, [pc, #204]	; (8000968 <__register_exitproc+0xec>)
 800089c:	681c      	ldr	r4, [r3, #0]
 800089e:	23a4      	movs	r3, #164	; 0xa4
 80008a0:	005b      	lsls	r3, r3, #1
 80008a2:	58e0      	ldr	r0, [r4, r3]
 80008a4:	2800      	cmp	r0, #0
 80008a6:	d052      	beq.n	800094e <__register_exitproc+0xd2>
 80008a8:	6843      	ldr	r3, [r0, #4]
 80008aa:	2b1f      	cmp	r3, #31
 80008ac:	dc13      	bgt.n	80008d6 <__register_exitproc+0x5a>
 80008ae:	1c5a      	adds	r2, r3, #1
 80008b0:	9201      	str	r2, [sp, #4]
 80008b2:	2e00      	cmp	r6, #0
 80008b4:	d128      	bne.n	8000908 <__register_exitproc+0x8c>
 80008b6:	9a01      	ldr	r2, [sp, #4]
 80008b8:	3302      	adds	r3, #2
 80008ba:	009b      	lsls	r3, r3, #2
 80008bc:	6042      	str	r2, [r0, #4]
 80008be:	501f      	str	r7, [r3, r0]
 80008c0:	6828      	ldr	r0, [r5, #0]
 80008c2:	f7ff ffd9 	bl	8000878 <__retarget_lock_release_recursive>
 80008c6:	2000      	movs	r0, #0
 80008c8:	b003      	add	sp, #12
 80008ca:	bc3c      	pop	{r2, r3, r4, r5}
 80008cc:	4690      	mov	r8, r2
 80008ce:	4699      	mov	r9, r3
 80008d0:	46a2      	mov	sl, r4
 80008d2:	46ab      	mov	fp, r5
 80008d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80008d6:	4b25      	ldr	r3, [pc, #148]	; (800096c <__register_exitproc+0xf0>)
 80008d8:	2b00      	cmp	r3, #0
 80008da:	d03d      	beq.n	8000958 <__register_exitproc+0xdc>
 80008dc:	20c8      	movs	r0, #200	; 0xc8
 80008de:	0040      	lsls	r0, r0, #1
 80008e0:	e000      	b.n	80008e4 <__register_exitproc+0x68>
 80008e2:	bf00      	nop
 80008e4:	2800      	cmp	r0, #0
 80008e6:	d037      	beq.n	8000958 <__register_exitproc+0xdc>
 80008e8:	22a4      	movs	r2, #164	; 0xa4
 80008ea:	2300      	movs	r3, #0
 80008ec:	0052      	lsls	r2, r2, #1
 80008ee:	58a1      	ldr	r1, [r4, r2]
 80008f0:	6043      	str	r3, [r0, #4]
 80008f2:	6001      	str	r1, [r0, #0]
 80008f4:	50a0      	str	r0, [r4, r2]
 80008f6:	3240      	adds	r2, #64	; 0x40
 80008f8:	5083      	str	r3, [r0, r2]
 80008fa:	3204      	adds	r2, #4
 80008fc:	5083      	str	r3, [r0, r2]
 80008fe:	3301      	adds	r3, #1
 8000900:	9301      	str	r3, [sp, #4]
 8000902:	2300      	movs	r3, #0
 8000904:	2e00      	cmp	r6, #0
 8000906:	d0d6      	beq.n	80008b6 <__register_exitproc+0x3a>
 8000908:	009a      	lsls	r2, r3, #2
 800090a:	4692      	mov	sl, r2
 800090c:	4482      	add	sl, r0
 800090e:	464a      	mov	r2, r9
 8000910:	2188      	movs	r1, #136	; 0x88
 8000912:	4654      	mov	r4, sl
 8000914:	5062      	str	r2, [r4, r1]
 8000916:	22c4      	movs	r2, #196	; 0xc4
 8000918:	0052      	lsls	r2, r2, #1
 800091a:	4691      	mov	r9, r2
 800091c:	4481      	add	r9, r0
 800091e:	464a      	mov	r2, r9
 8000920:	3987      	subs	r1, #135	; 0x87
 8000922:	4099      	lsls	r1, r3
 8000924:	6812      	ldr	r2, [r2, #0]
 8000926:	468b      	mov	fp, r1
 8000928:	430a      	orrs	r2, r1
 800092a:	4694      	mov	ip, r2
 800092c:	464a      	mov	r2, r9
 800092e:	4661      	mov	r1, ip
 8000930:	6011      	str	r1, [r2, #0]
 8000932:	2284      	movs	r2, #132	; 0x84
 8000934:	4641      	mov	r1, r8
 8000936:	0052      	lsls	r2, r2, #1
 8000938:	50a1      	str	r1, [r4, r2]
 800093a:	2e02      	cmp	r6, #2
 800093c:	d1bb      	bne.n	80008b6 <__register_exitproc+0x3a>
 800093e:	0002      	movs	r2, r0
 8000940:	465c      	mov	r4, fp
 8000942:	328d      	adds	r2, #141	; 0x8d
 8000944:	32ff      	adds	r2, #255	; 0xff
 8000946:	6811      	ldr	r1, [r2, #0]
 8000948:	430c      	orrs	r4, r1
 800094a:	6014      	str	r4, [r2, #0]
 800094c:	e7b3      	b.n	80008b6 <__register_exitproc+0x3a>
 800094e:	0020      	movs	r0, r4
 8000950:	304d      	adds	r0, #77	; 0x4d
 8000952:	30ff      	adds	r0, #255	; 0xff
 8000954:	50e0      	str	r0, [r4, r3]
 8000956:	e7a7      	b.n	80008a8 <__register_exitproc+0x2c>
 8000958:	6828      	ldr	r0, [r5, #0]
 800095a:	f7ff ff8d 	bl	8000878 <__retarget_lock_release_recursive>
 800095e:	2001      	movs	r0, #1
 8000960:	4240      	negs	r0, r0
 8000962:	e7b1      	b.n	80008c8 <__register_exitproc+0x4c>
 8000964:	20000430 	.word	0x20000430
 8000968:	0800099c 	.word	0x0800099c
 800096c:	00000000 	.word	0x00000000

08000970 <_init>:
 8000970:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000972:	46c0      	nop			; (mov r8, r8)
 8000974:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000976:	bc08      	pop	{r3}
 8000978:	469e      	mov	lr, r3
 800097a:	4770      	bx	lr

0800097c <_fini>:
 800097c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800097e:	46c0      	nop			; (mov r8, r8)
 8000980:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000982:	bc08      	pop	{r3}
 8000984:	469e      	mov	lr, r3
 8000986:	4770      	bx	lr
