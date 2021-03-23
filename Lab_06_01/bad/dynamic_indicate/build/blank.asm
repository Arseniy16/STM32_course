
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000820  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000044  080008e0  080008e0  000108e0  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000924  08000924  00010924  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  0800092c  0800092c  0001092c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000930  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000d64  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000d64  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       0000097f  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000330  00000000  00000000  00020ddb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000004b0  00000000  00000000  0002110b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000110  00000000  00000000  000215bb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000e0  00000000  00000000  000216cb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000062d  00000000  00000000  000217ab  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        0000056c  00000000  00000000  00021dd8  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  00022344  2**0  CONTENTS, READONLY
 17 .debug_frame      000004d0  00000000  00000000  00022410  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	080008c8 	.word	0x080008c8

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
 8000104:	080008c8 	.word	0x080008c8

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
 8000132:	f000 facf 	bl	80006d4 <SystemInit>
 8000136:	f000 fb23 	bl	8000780 <__libc_init_array>
 800013a:	f000 fa79 	bl	8000630 <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000930 	.word	0x08000930
 8000150:	20000434 	.word	0x20000434
 8000154:	20000454 	.word	0x20000454

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

08000360 <rcc_config>:
 8000360:	b580      	push	{r7, lr}
 8000362:	af00      	add	r7, sp, #0
 8000364:	2000      	movs	r0, #0
 8000366:	f7ff ffa9 	bl	80002bc <LL_FLASH_SetLatency>
 800036a:	f7ff fef7 	bl	800015c <LL_RCC_HSI_Enable>
 800036e:	46c0      	nop			; (mov r8, r8)
 8000370:	f7ff ff02 	bl	8000178 <LL_RCC_HSI_IsReady>
 8000374:	0003      	movs	r3, r0
 8000376:	2b01      	cmp	r3, #1
 8000378:	d1fa      	bne.n	8000370 <rcc_config+0x10>
 800037a:	23a0      	movs	r3, #160	; 0xa0
 800037c:	039b      	lsls	r3, r3, #14
 800037e:	0019      	movs	r1, r3
 8000380:	2000      	movs	r0, #0
 8000382:	f7ff ff75 	bl	8000270 <LL_RCC_PLL_ConfigDomain_SYS>
 8000386:	f7ff ff51 	bl	800022c <LL_RCC_PLL_Enable>
 800038a:	46c0      	nop			; (mov r8, r8)
 800038c:	f7ff ff5c 	bl	8000248 <LL_RCC_PLL_IsReady>
 8000390:	0003      	movs	r3, r0
 8000392:	2b01      	cmp	r3, #1
 8000394:	d1fa      	bne.n	800038c <rcc_config+0x2c>
 8000396:	2000      	movs	r0, #0
 8000398:	f7ff ff1e 	bl	80001d8 <LL_RCC_SetAHBPrescaler>
 800039c:	2002      	movs	r0, #2
 800039e:	f7ff fefb 	bl	8000198 <LL_RCC_SetSysClkSource>
 80003a2:	46c0      	nop			; (mov r8, r8)
 80003a4:	f7ff ff0c 	bl	80001c0 <LL_RCC_GetSysClkSource>
 80003a8:	0003      	movs	r3, r0
 80003aa:	2b08      	cmp	r3, #8
 80003ac:	d1fa      	bne.n	80003a4 <rcc_config+0x44>
 80003ae:	2000      	movs	r0, #0
 80003b0:	f7ff ff26 	bl	8000200 <LL_RCC_SetAPB1Prescaler>
 80003b4:	4b02      	ldr	r3, [pc, #8]	; (80003c0 <rcc_config+0x60>)
 80003b6:	4a03      	ldr	r2, [pc, #12]	; (80003c4 <rcc_config+0x64>)
 80003b8:	601a      	str	r2, [r3, #0]
 80003ba:	46c0      	nop			; (mov r8, r8)
 80003bc:	46bd      	mov	sp, r7
 80003be:	bd80      	pop	{r7, pc}
 80003c0:	20000000 	.word	0x20000000
 80003c4:	02dc6c00 	.word	0x02dc6c00

080003c8 <gpio_config>:
 80003c8:	b580      	push	{r7, lr}
 80003ca:	af00      	add	r7, sp, #0
 80003cc:	2380      	movs	r3, #128	; 0x80
 80003ce:	031b      	lsls	r3, r3, #12
 80003d0:	0018      	movs	r0, r3
 80003d2:	f7ff ff87 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 80003d6:	2380      	movs	r3, #128	; 0x80
 80003d8:	005b      	lsls	r3, r3, #1
 80003da:	4831      	ldr	r0, [pc, #196]	; (80004a0 <gpio_config+0xd8>)
 80003dc:	2201      	movs	r2, #1
 80003de:	0019      	movs	r1, r3
 80003e0:	f7ff ff96 	bl	8000310 <LL_GPIO_SetPinMode>
 80003e4:	2380      	movs	r3, #128	; 0x80
 80003e6:	009b      	lsls	r3, r3, #2
 80003e8:	482d      	ldr	r0, [pc, #180]	; (80004a0 <gpio_config+0xd8>)
 80003ea:	2201      	movs	r2, #1
 80003ec:	0019      	movs	r1, r3
 80003ee:	f7ff ff8f 	bl	8000310 <LL_GPIO_SetPinMode>
 80003f2:	4b2b      	ldr	r3, [pc, #172]	; (80004a0 <gpio_config+0xd8>)
 80003f4:	2201      	movs	r2, #1
 80003f6:	2101      	movs	r1, #1
 80003f8:	0018      	movs	r0, r3
 80003fa:	f7ff ff89 	bl	8000310 <LL_GPIO_SetPinMode>
 80003fe:	4b28      	ldr	r3, [pc, #160]	; (80004a0 <gpio_config+0xd8>)
 8000400:	2201      	movs	r2, #1
 8000402:	2102      	movs	r1, #2
 8000404:	0018      	movs	r0, r3
 8000406:	f7ff ff83 	bl	8000310 <LL_GPIO_SetPinMode>
 800040a:	4b25      	ldr	r3, [pc, #148]	; (80004a0 <gpio_config+0xd8>)
 800040c:	2201      	movs	r2, #1
 800040e:	2104      	movs	r1, #4
 8000410:	0018      	movs	r0, r3
 8000412:	f7ff ff7d 	bl	8000310 <LL_GPIO_SetPinMode>
 8000416:	4b22      	ldr	r3, [pc, #136]	; (80004a0 <gpio_config+0xd8>)
 8000418:	2201      	movs	r2, #1
 800041a:	2108      	movs	r1, #8
 800041c:	0018      	movs	r0, r3
 800041e:	f7ff ff77 	bl	8000310 <LL_GPIO_SetPinMode>
 8000422:	2380      	movs	r3, #128	; 0x80
 8000424:	029b      	lsls	r3, r3, #10
 8000426:	0018      	movs	r0, r3
 8000428:	f7ff ff5c 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 800042c:	2390      	movs	r3, #144	; 0x90
 800042e:	05db      	lsls	r3, r3, #23
 8000430:	2200      	movs	r2, #0
 8000432:	2101      	movs	r1, #1
 8000434:	0018      	movs	r0, r3
 8000436:	f7ff ff6b 	bl	8000310 <LL_GPIO_SetPinMode>
 800043a:	2380      	movs	r3, #128	; 0x80
 800043c:	02db      	lsls	r3, r3, #11
 800043e:	0018      	movs	r0, r3
 8000440:	f7ff ff50 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000444:	4b17      	ldr	r3, [pc, #92]	; (80004a4 <gpio_config+0xdc>)
 8000446:	2201      	movs	r2, #1
 8000448:	2101      	movs	r1, #1
 800044a:	0018      	movs	r0, r3
 800044c:	f7ff ff60 	bl	8000310 <LL_GPIO_SetPinMode>
 8000450:	4b14      	ldr	r3, [pc, #80]	; (80004a4 <gpio_config+0xdc>)
 8000452:	2201      	movs	r2, #1
 8000454:	2102      	movs	r1, #2
 8000456:	0018      	movs	r0, r3
 8000458:	f7ff ff5a 	bl	8000310 <LL_GPIO_SetPinMode>
 800045c:	4b11      	ldr	r3, [pc, #68]	; (80004a4 <gpio_config+0xdc>)
 800045e:	2201      	movs	r2, #1
 8000460:	2104      	movs	r1, #4
 8000462:	0018      	movs	r0, r3
 8000464:	f7ff ff54 	bl	8000310 <LL_GPIO_SetPinMode>
 8000468:	4b0e      	ldr	r3, [pc, #56]	; (80004a4 <gpio_config+0xdc>)
 800046a:	2201      	movs	r2, #1
 800046c:	2108      	movs	r1, #8
 800046e:	0018      	movs	r0, r3
 8000470:	f7ff ff4e 	bl	8000310 <LL_GPIO_SetPinMode>
 8000474:	4b0b      	ldr	r3, [pc, #44]	; (80004a4 <gpio_config+0xdc>)
 8000476:	2201      	movs	r2, #1
 8000478:	2110      	movs	r1, #16
 800047a:	0018      	movs	r0, r3
 800047c:	f7ff ff48 	bl	8000310 <LL_GPIO_SetPinMode>
 8000480:	4b08      	ldr	r3, [pc, #32]	; (80004a4 <gpio_config+0xdc>)
 8000482:	2201      	movs	r2, #1
 8000484:	2120      	movs	r1, #32
 8000486:	0018      	movs	r0, r3
 8000488:	f7ff ff42 	bl	8000310 <LL_GPIO_SetPinMode>
 800048c:	4b05      	ldr	r3, [pc, #20]	; (80004a4 <gpio_config+0xdc>)
 800048e:	2201      	movs	r2, #1
 8000490:	2140      	movs	r1, #64	; 0x40
 8000492:	0018      	movs	r0, r3
 8000494:	f7ff ff3c 	bl	8000310 <LL_GPIO_SetPinMode>
 8000498:	46c0      	nop			; (mov r8, r8)
 800049a:	46bd      	mov	sp, r7
 800049c:	bd80      	pop	{r7, pc}
 800049e:	46c0      	nop			; (mov r8, r8)
 80004a0:	48000800 	.word	0x48000800
 80004a4:	48000400 	.word	0x48000400

080004a8 <delay>:
 80004a8:	b580      	push	{r7, lr}
 80004aa:	4e02      	ldr	r6, [pc, #8]	; (80004b4 <delay+0xc>)
 80004ac:	3e01      	subs	r6, #1
 80004ae:	2e00      	cmp	r6, #0
 80004b0:	d1fc      	bne.n	80004ac <delay+0x4>
 80004b2:	bd80      	pop	{r7, pc}
 80004b4:	0000ea60 	.word	0x0000ea60
 80004b8:	46c0      	nop			; (mov r8, r8)
	...

080004bc <show_digit>:
 80004bc:	b580      	push	{r7, lr}
 80004be:	b082      	sub	sp, #8
 80004c0:	af00      	add	r7, sp, #0
 80004c2:	0002      	movs	r2, r0
 80004c4:	1dbb      	adds	r3, r7, #6
 80004c6:	801a      	strh	r2, [r3, #0]
 80004c8:	1dbb      	adds	r3, r7, #6
 80004ca:	881b      	ldrh	r3, [r3, #0]
 80004cc:	2b0f      	cmp	r3, #15
 80004ce:	d864      	bhi.n	800059a <show_digit+0xde>
 80004d0:	009a      	lsls	r2, r3, #2
 80004d2:	4b34      	ldr	r3, [pc, #208]	; (80005a4 <show_digit+0xe8>)
 80004d4:	18d3      	adds	r3, r2, r3
 80004d6:	681b      	ldr	r3, [r3, #0]
 80004d8:	469f      	mov	pc, r3
 80004da:	4b33      	ldr	r3, [pc, #204]	; (80005a8 <show_digit+0xec>)
 80004dc:	213f      	movs	r1, #63	; 0x3f
 80004de:	0018      	movs	r0, r3
 80004e0:	f7ff ff32 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80004e4:	e05a      	b.n	800059c <show_digit+0xe0>
 80004e6:	4b30      	ldr	r3, [pc, #192]	; (80005a8 <show_digit+0xec>)
 80004e8:	2106      	movs	r1, #6
 80004ea:	0018      	movs	r0, r3
 80004ec:	f7ff ff2c 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80004f0:	e054      	b.n	800059c <show_digit+0xe0>
 80004f2:	4b2d      	ldr	r3, [pc, #180]	; (80005a8 <show_digit+0xec>)
 80004f4:	215b      	movs	r1, #91	; 0x5b
 80004f6:	0018      	movs	r0, r3
 80004f8:	f7ff ff26 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80004fc:	e04e      	b.n	800059c <show_digit+0xe0>
 80004fe:	4b2a      	ldr	r3, [pc, #168]	; (80005a8 <show_digit+0xec>)
 8000500:	214f      	movs	r1, #79	; 0x4f
 8000502:	0018      	movs	r0, r3
 8000504:	f7ff ff20 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000508:	e048      	b.n	800059c <show_digit+0xe0>
 800050a:	4b27      	ldr	r3, [pc, #156]	; (80005a8 <show_digit+0xec>)
 800050c:	2166      	movs	r1, #102	; 0x66
 800050e:	0018      	movs	r0, r3
 8000510:	f7ff ff1a 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000514:	e042      	b.n	800059c <show_digit+0xe0>
 8000516:	4b24      	ldr	r3, [pc, #144]	; (80005a8 <show_digit+0xec>)
 8000518:	216d      	movs	r1, #109	; 0x6d
 800051a:	0018      	movs	r0, r3
 800051c:	f7ff ff14 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000520:	e03c      	b.n	800059c <show_digit+0xe0>
 8000522:	4b21      	ldr	r3, [pc, #132]	; (80005a8 <show_digit+0xec>)
 8000524:	217d      	movs	r1, #125	; 0x7d
 8000526:	0018      	movs	r0, r3
 8000528:	f7ff ff0e 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800052c:	e036      	b.n	800059c <show_digit+0xe0>
 800052e:	4b1e      	ldr	r3, [pc, #120]	; (80005a8 <show_digit+0xec>)
 8000530:	2107      	movs	r1, #7
 8000532:	0018      	movs	r0, r3
 8000534:	f7ff ff08 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000538:	e030      	b.n	800059c <show_digit+0xe0>
 800053a:	4b1b      	ldr	r3, [pc, #108]	; (80005a8 <show_digit+0xec>)
 800053c:	217f      	movs	r1, #127	; 0x7f
 800053e:	0018      	movs	r0, r3
 8000540:	f7ff ff02 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000544:	e02a      	b.n	800059c <show_digit+0xe0>
 8000546:	4b18      	ldr	r3, [pc, #96]	; (80005a8 <show_digit+0xec>)
 8000548:	216f      	movs	r1, #111	; 0x6f
 800054a:	0018      	movs	r0, r3
 800054c:	f7ff fefc 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000550:	e024      	b.n	800059c <show_digit+0xe0>
 8000552:	4b15      	ldr	r3, [pc, #84]	; (80005a8 <show_digit+0xec>)
 8000554:	2177      	movs	r1, #119	; 0x77
 8000556:	0018      	movs	r0, r3
 8000558:	f7ff fef6 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800055c:	e01e      	b.n	800059c <show_digit+0xe0>
 800055e:	4b12      	ldr	r3, [pc, #72]	; (80005a8 <show_digit+0xec>)
 8000560:	217c      	movs	r1, #124	; 0x7c
 8000562:	0018      	movs	r0, r3
 8000564:	f7ff fef0 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000568:	e018      	b.n	800059c <show_digit+0xe0>
 800056a:	4b0f      	ldr	r3, [pc, #60]	; (80005a8 <show_digit+0xec>)
 800056c:	2139      	movs	r1, #57	; 0x39
 800056e:	0018      	movs	r0, r3
 8000570:	f7ff feea 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000574:	e012      	b.n	800059c <show_digit+0xe0>
 8000576:	4b0c      	ldr	r3, [pc, #48]	; (80005a8 <show_digit+0xec>)
 8000578:	215e      	movs	r1, #94	; 0x5e
 800057a:	0018      	movs	r0, r3
 800057c:	f7ff fee4 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000580:	e00c      	b.n	800059c <show_digit+0xe0>
 8000582:	4b09      	ldr	r3, [pc, #36]	; (80005a8 <show_digit+0xec>)
 8000584:	2179      	movs	r1, #121	; 0x79
 8000586:	0018      	movs	r0, r3
 8000588:	f7ff fede 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800058c:	e006      	b.n	800059c <show_digit+0xe0>
 800058e:	4b06      	ldr	r3, [pc, #24]	; (80005a8 <show_digit+0xec>)
 8000590:	2171      	movs	r1, #113	; 0x71
 8000592:	0018      	movs	r0, r3
 8000594:	f7ff fed8 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000598:	e000      	b.n	800059c <show_digit+0xe0>
 800059a:	46c0      	nop			; (mov r8, r8)
 800059c:	46c0      	nop			; (mov r8, r8)
 800059e:	46bd      	mov	sp, r7
 80005a0:	b002      	add	sp, #8
 80005a2:	bd80      	pop	{r7, pc}
 80005a4:	080008e0 	.word	0x080008e0
 80005a8:	48000400 	.word	0x48000400

080005ac <show_display>:
 80005ac:	b580      	push	{r7, lr}
 80005ae:	b082      	sub	sp, #8
 80005b0:	af00      	add	r7, sp, #0
 80005b2:	0002      	movs	r2, r0
 80005b4:	1dbb      	adds	r3, r7, #6
 80005b6:	801a      	strh	r2, [r3, #0]
 80005b8:	1d3b      	adds	r3, r7, #4
 80005ba:	1c0a      	adds	r2, r1, #0
 80005bc:	801a      	strh	r2, [r3, #0]
 80005be:	4b1a      	ldr	r3, [pc, #104]	; (8000628 <show_display+0x7c>)
 80005c0:	2100      	movs	r1, #0
 80005c2:	0018      	movs	r0, r3
 80005c4:	f7ff fec0 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005c8:	1dbb      	adds	r3, r7, #6
 80005ca:	881b      	ldrh	r3, [r3, #0]
 80005cc:	2b03      	cmp	r3, #3
 80005ce:	d01a      	beq.n	8000606 <show_display+0x5a>
 80005d0:	dc1f      	bgt.n	8000612 <show_display+0x66>
 80005d2:	2b02      	cmp	r3, #2
 80005d4:	d011      	beq.n	80005fa <show_display+0x4e>
 80005d6:	dc1c      	bgt.n	8000612 <show_display+0x66>
 80005d8:	2b00      	cmp	r3, #0
 80005da:	d002      	beq.n	80005e2 <show_display+0x36>
 80005dc:	2b01      	cmp	r3, #1
 80005de:	d006      	beq.n	80005ee <show_display+0x42>
 80005e0:	e017      	b.n	8000612 <show_display+0x66>
 80005e2:	4b12      	ldr	r3, [pc, #72]	; (800062c <show_display+0x80>)
 80005e4:	2107      	movs	r1, #7
 80005e6:	0018      	movs	r0, r3
 80005e8:	f7ff feae 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005ec:	e012      	b.n	8000614 <show_display+0x68>
 80005ee:	4b0f      	ldr	r3, [pc, #60]	; (800062c <show_display+0x80>)
 80005f0:	210b      	movs	r1, #11
 80005f2:	0018      	movs	r0, r3
 80005f4:	f7ff fea8 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005f8:	e00c      	b.n	8000614 <show_display+0x68>
 80005fa:	4b0c      	ldr	r3, [pc, #48]	; (800062c <show_display+0x80>)
 80005fc:	210d      	movs	r1, #13
 80005fe:	0018      	movs	r0, r3
 8000600:	f7ff fea2 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000604:	e006      	b.n	8000614 <show_display+0x68>
 8000606:	4b09      	ldr	r3, [pc, #36]	; (800062c <show_display+0x80>)
 8000608:	210e      	movs	r1, #14
 800060a:	0018      	movs	r0, r3
 800060c:	f7ff fe9c 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000610:	e000      	b.n	8000614 <show_display+0x68>
 8000612:	46c0      	nop			; (mov r8, r8)
 8000614:	1d3b      	adds	r3, r7, #4
 8000616:	881b      	ldrh	r3, [r3, #0]
 8000618:	0018      	movs	r0, r3
 800061a:	f7ff ff4f 	bl	80004bc <show_digit>
 800061e:	46c0      	nop			; (mov r8, r8)
 8000620:	46bd      	mov	sp, r7
 8000622:	b002      	add	sp, #8
 8000624:	bd80      	pop	{r7, pc}
 8000626:	46c0      	nop			; (mov r8, r8)
 8000628:	48000400 	.word	0x48000400
 800062c:	48000800 	.word	0x48000800

08000630 <main>:
 8000630:	b580      	push	{r7, lr}
 8000632:	b086      	sub	sp, #24
 8000634:	af00      	add	r7, sp, #0
 8000636:	f7ff fe93 	bl	8000360 <rcc_config>
 800063a:	f7ff fec5 	bl	80003c8 <gpio_config>
 800063e:	1cbb      	adds	r3, r7, #2
 8000640:	2200      	movs	r2, #0
 8000642:	801a      	strh	r2, [r3, #0]
 8000644:	2300      	movs	r3, #0
 8000646:	617b      	str	r3, [r7, #20]
 8000648:	e040      	b.n	80006cc <main+0x9c>
 800064a:	2300      	movs	r3, #0
 800064c:	613b      	str	r3, [r7, #16]
 800064e:	e037      	b.n	80006c0 <main+0x90>
 8000650:	2300      	movs	r3, #0
 8000652:	60fb      	str	r3, [r7, #12]
 8000654:	e02e      	b.n	80006b4 <main+0x84>
 8000656:	2300      	movs	r3, #0
 8000658:	60bb      	str	r3, [r7, #8]
 800065a:	e025      	b.n	80006a8 <main+0x78>
 800065c:	2300      	movs	r3, #0
 800065e:	607b      	str	r3, [r7, #4]
 8000660:	e01c      	b.n	800069c <main+0x6c>
 8000662:	68bb      	ldr	r3, [r7, #8]
 8000664:	b29b      	uxth	r3, r3
 8000666:	0019      	movs	r1, r3
 8000668:	2000      	movs	r0, #0
 800066a:	f7ff ff9f 	bl	80005ac <show_display>
 800066e:	68fb      	ldr	r3, [r7, #12]
 8000670:	b29b      	uxth	r3, r3
 8000672:	0019      	movs	r1, r3
 8000674:	2001      	movs	r0, #1
 8000676:	f7ff ff99 	bl	80005ac <show_display>
 800067a:	693b      	ldr	r3, [r7, #16]
 800067c:	b29b      	uxth	r3, r3
 800067e:	0019      	movs	r1, r3
 8000680:	2002      	movs	r0, #2
 8000682:	f7ff ff93 	bl	80005ac <show_display>
 8000686:	697b      	ldr	r3, [r7, #20]
 8000688:	b29b      	uxth	r3, r3
 800068a:	0019      	movs	r1, r3
 800068c:	2003      	movs	r0, #3
 800068e:	f7ff ff8d 	bl	80005ac <show_display>
 8000692:	f7ff ff09 	bl	80004a8 <delay>
 8000696:	687b      	ldr	r3, [r7, #4]
 8000698:	3301      	adds	r3, #1
 800069a:	607b      	str	r3, [r7, #4]
 800069c:	687b      	ldr	r3, [r7, #4]
 800069e:	2b63      	cmp	r3, #99	; 0x63
 80006a0:	dddf      	ble.n	8000662 <main+0x32>
 80006a2:	68bb      	ldr	r3, [r7, #8]
 80006a4:	3301      	adds	r3, #1
 80006a6:	60bb      	str	r3, [r7, #8]
 80006a8:	68bb      	ldr	r3, [r7, #8]
 80006aa:	2b08      	cmp	r3, #8
 80006ac:	ddd6      	ble.n	800065c <main+0x2c>
 80006ae:	68fb      	ldr	r3, [r7, #12]
 80006b0:	3301      	adds	r3, #1
 80006b2:	60fb      	str	r3, [r7, #12]
 80006b4:	68fb      	ldr	r3, [r7, #12]
 80006b6:	2b08      	cmp	r3, #8
 80006b8:	ddcd      	ble.n	8000656 <main+0x26>
 80006ba:	693b      	ldr	r3, [r7, #16]
 80006bc:	3301      	adds	r3, #1
 80006be:	613b      	str	r3, [r7, #16]
 80006c0:	693b      	ldr	r3, [r7, #16]
 80006c2:	2b08      	cmp	r3, #8
 80006c4:	ddc4      	ble.n	8000650 <main+0x20>
 80006c6:	697b      	ldr	r3, [r7, #20]
 80006c8:	3301      	adds	r3, #1
 80006ca:	617b      	str	r3, [r7, #20]
 80006cc:	697b      	ldr	r3, [r7, #20]
 80006ce:	2b08      	cmp	r3, #8
 80006d0:	ddbb      	ble.n	800064a <main+0x1a>
 80006d2:	e7b7      	b.n	8000644 <main+0x14>

080006d4 <SystemInit>:
 80006d4:	b580      	push	{r7, lr}
 80006d6:	af00      	add	r7, sp, #0
 80006d8:	4b1a      	ldr	r3, [pc, #104]	; (8000744 <SystemInit+0x70>)
 80006da:	681a      	ldr	r2, [r3, #0]
 80006dc:	4b19      	ldr	r3, [pc, #100]	; (8000744 <SystemInit+0x70>)
 80006de:	2101      	movs	r1, #1
 80006e0:	430a      	orrs	r2, r1
 80006e2:	601a      	str	r2, [r3, #0]
 80006e4:	4b17      	ldr	r3, [pc, #92]	; (8000744 <SystemInit+0x70>)
 80006e6:	685a      	ldr	r2, [r3, #4]
 80006e8:	4b16      	ldr	r3, [pc, #88]	; (8000744 <SystemInit+0x70>)
 80006ea:	4917      	ldr	r1, [pc, #92]	; (8000748 <SystemInit+0x74>)
 80006ec:	400a      	ands	r2, r1
 80006ee:	605a      	str	r2, [r3, #4]
 80006f0:	4b14      	ldr	r3, [pc, #80]	; (8000744 <SystemInit+0x70>)
 80006f2:	681a      	ldr	r2, [r3, #0]
 80006f4:	4b13      	ldr	r3, [pc, #76]	; (8000744 <SystemInit+0x70>)
 80006f6:	4915      	ldr	r1, [pc, #84]	; (800074c <SystemInit+0x78>)
 80006f8:	400a      	ands	r2, r1
 80006fa:	601a      	str	r2, [r3, #0]
 80006fc:	4b11      	ldr	r3, [pc, #68]	; (8000744 <SystemInit+0x70>)
 80006fe:	681a      	ldr	r2, [r3, #0]
 8000700:	4b10      	ldr	r3, [pc, #64]	; (8000744 <SystemInit+0x70>)
 8000702:	4913      	ldr	r1, [pc, #76]	; (8000750 <SystemInit+0x7c>)
 8000704:	400a      	ands	r2, r1
 8000706:	601a      	str	r2, [r3, #0]
 8000708:	4b0e      	ldr	r3, [pc, #56]	; (8000744 <SystemInit+0x70>)
 800070a:	685a      	ldr	r2, [r3, #4]
 800070c:	4b0d      	ldr	r3, [pc, #52]	; (8000744 <SystemInit+0x70>)
 800070e:	4911      	ldr	r1, [pc, #68]	; (8000754 <SystemInit+0x80>)
 8000710:	400a      	ands	r2, r1
 8000712:	605a      	str	r2, [r3, #4]
 8000714:	4b0b      	ldr	r3, [pc, #44]	; (8000744 <SystemInit+0x70>)
 8000716:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000718:	4b0a      	ldr	r3, [pc, #40]	; (8000744 <SystemInit+0x70>)
 800071a:	210f      	movs	r1, #15
 800071c:	438a      	bics	r2, r1
 800071e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000720:	4b08      	ldr	r3, [pc, #32]	; (8000744 <SystemInit+0x70>)
 8000722:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000724:	4b07      	ldr	r3, [pc, #28]	; (8000744 <SystemInit+0x70>)
 8000726:	490c      	ldr	r1, [pc, #48]	; (8000758 <SystemInit+0x84>)
 8000728:	400a      	ands	r2, r1
 800072a:	631a      	str	r2, [r3, #48]	; 0x30
 800072c:	4b05      	ldr	r3, [pc, #20]	; (8000744 <SystemInit+0x70>)
 800072e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000730:	4b04      	ldr	r3, [pc, #16]	; (8000744 <SystemInit+0x70>)
 8000732:	2101      	movs	r1, #1
 8000734:	438a      	bics	r2, r1
 8000736:	635a      	str	r2, [r3, #52]	; 0x34
 8000738:	4b02      	ldr	r3, [pc, #8]	; (8000744 <SystemInit+0x70>)
 800073a:	2200      	movs	r2, #0
 800073c:	609a      	str	r2, [r3, #8]
 800073e:	46c0      	nop			; (mov r8, r8)
 8000740:	46bd      	mov	sp, r7
 8000742:	bd80      	pop	{r7, pc}
 8000744:	40021000 	.word	0x40021000
 8000748:	f8ffb80c 	.word	0xf8ffb80c
 800074c:	fef6ffff 	.word	0xfef6ffff
 8000750:	fffbffff 	.word	0xfffbffff
 8000754:	ffc0ffff 	.word	0xffc0ffff
 8000758:	fffffeac 	.word	0xfffffeac

0800075c <NMI_Handler>:
 800075c:	b580      	push	{r7, lr}
 800075e:	af00      	add	r7, sp, #0
 8000760:	46c0      	nop			; (mov r8, r8)
 8000762:	46bd      	mov	sp, r7
 8000764:	bd80      	pop	{r7, pc}

08000766 <HardFault_Handler>:
 8000766:	b580      	push	{r7, lr}
 8000768:	af00      	add	r7, sp, #0
 800076a:	e7fe      	b.n	800076a <HardFault_Handler+0x4>

0800076c <SVC_Handler>:
 800076c:	b580      	push	{r7, lr}
 800076e:	af00      	add	r7, sp, #0
 8000770:	46c0      	nop			; (mov r8, r8)
 8000772:	46bd      	mov	sp, r7
 8000774:	bd80      	pop	{r7, pc}

08000776 <PendSV_Handler>:
 8000776:	b580      	push	{r7, lr}
 8000778:	af00      	add	r7, sp, #0
 800077a:	46c0      	nop			; (mov r8, r8)
 800077c:	46bd      	mov	sp, r7
 800077e:	bd80      	pop	{r7, pc}

08000780 <__libc_init_array>:
 8000780:	b570      	push	{r4, r5, r6, lr}
 8000782:	4d0c      	ldr	r5, [pc, #48]	; (80007b4 <__libc_init_array+0x34>)
 8000784:	4e0c      	ldr	r6, [pc, #48]	; (80007b8 <__libc_init_array+0x38>)
 8000786:	1b76      	subs	r6, r6, r5
 8000788:	10b6      	asrs	r6, r6, #2
 800078a:	d005      	beq.n	8000798 <__libc_init_array+0x18>
 800078c:	2400      	movs	r4, #0
 800078e:	cd08      	ldmia	r5!, {r3}
 8000790:	3401      	adds	r4, #1
 8000792:	4798      	blx	r3
 8000794:	42a6      	cmp	r6, r4
 8000796:	d1fa      	bne.n	800078e <__libc_init_array+0xe>
 8000798:	f000 f896 	bl	80008c8 <_init>
 800079c:	4d07      	ldr	r5, [pc, #28]	; (80007bc <__libc_init_array+0x3c>)
 800079e:	4e08      	ldr	r6, [pc, #32]	; (80007c0 <__libc_init_array+0x40>)
 80007a0:	1b76      	subs	r6, r6, r5
 80007a2:	10b6      	asrs	r6, r6, #2
 80007a4:	d005      	beq.n	80007b2 <__libc_init_array+0x32>
 80007a6:	2400      	movs	r4, #0
 80007a8:	cd08      	ldmia	r5!, {r3}
 80007aa:	3401      	adds	r4, #1
 80007ac:	4798      	blx	r3
 80007ae:	42a6      	cmp	r6, r4
 80007b0:	d1fa      	bne.n	80007a8 <__libc_init_array+0x28>
 80007b2:	bd70      	pop	{r4, r5, r6, pc}
 80007b4:	08000924 	.word	0x08000924
 80007b8:	08000924 	.word	0x08000924
 80007bc:	08000924 	.word	0x08000924
 80007c0:	0800092c 	.word	0x0800092c

080007c4 <register_fini>:
 80007c4:	4b03      	ldr	r3, [pc, #12]	; (80007d4 <register_fini+0x10>)
 80007c6:	b510      	push	{r4, lr}
 80007c8:	2b00      	cmp	r3, #0
 80007ca:	d002      	beq.n	80007d2 <register_fini+0xe>
 80007cc:	4802      	ldr	r0, [pc, #8]	; (80007d8 <register_fini+0x14>)
 80007ce:	f000 f805 	bl	80007dc <atexit>
 80007d2:	bd10      	pop	{r4, pc}
 80007d4:	00000000 	.word	0x00000000
 80007d8:	080007ed 	.word	0x080007ed

080007dc <atexit>:
 80007dc:	b510      	push	{r4, lr}
 80007de:	0001      	movs	r1, r0
 80007e0:	2300      	movs	r3, #0
 80007e2:	2200      	movs	r2, #0
 80007e4:	2000      	movs	r0, #0
 80007e6:	f000 f819 	bl	800081c <__register_exitproc>
 80007ea:	bd10      	pop	{r4, pc}

080007ec <__libc_fini_array>:
 80007ec:	b570      	push	{r4, r5, r6, lr}
 80007ee:	4d07      	ldr	r5, [pc, #28]	; (800080c <__libc_fini_array+0x20>)
 80007f0:	4c07      	ldr	r4, [pc, #28]	; (8000810 <__libc_fini_array+0x24>)
 80007f2:	1b64      	subs	r4, r4, r5
 80007f4:	10a4      	asrs	r4, r4, #2
 80007f6:	d005      	beq.n	8000804 <__libc_fini_array+0x18>
 80007f8:	3c01      	subs	r4, #1
 80007fa:	00a3      	lsls	r3, r4, #2
 80007fc:	58eb      	ldr	r3, [r5, r3]
 80007fe:	4798      	blx	r3
 8000800:	2c00      	cmp	r4, #0
 8000802:	d1f9      	bne.n	80007f8 <__libc_fini_array+0xc>
 8000804:	f000 f866 	bl	80008d4 <_fini>
 8000808:	bd70      	pop	{r4, r5, r6, pc}
 800080a:	46c0      	nop			; (mov r8, r8)
 800080c:	0800092c 	.word	0x0800092c
 8000810:	08000930 	.word	0x08000930

08000814 <__retarget_lock_acquire_recursive>:
 8000814:	4770      	bx	lr
 8000816:	46c0      	nop			; (mov r8, r8)

08000818 <__retarget_lock_release_recursive>:
 8000818:	4770      	bx	lr
 800081a:	46c0      	nop			; (mov r8, r8)

0800081c <__register_exitproc>:
 800081c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800081e:	46d6      	mov	lr, sl
 8000820:	464f      	mov	r7, r9
 8000822:	4646      	mov	r6, r8
 8000824:	b5c0      	push	{r6, r7, lr}
 8000826:	4f26      	ldr	r7, [pc, #152]	; (80008c0 <__register_exitproc+0xa4>)
 8000828:	b082      	sub	sp, #8
 800082a:	0006      	movs	r6, r0
 800082c:	6838      	ldr	r0, [r7, #0]
 800082e:	4692      	mov	sl, r2
 8000830:	4698      	mov	r8, r3
 8000832:	4689      	mov	r9, r1
 8000834:	f7ff ffee 	bl	8000814 <__retarget_lock_acquire_recursive>
 8000838:	4b22      	ldr	r3, [pc, #136]	; (80008c4 <__register_exitproc+0xa8>)
 800083a:	681b      	ldr	r3, [r3, #0]
 800083c:	9301      	str	r3, [sp, #4]
 800083e:	23a4      	movs	r3, #164	; 0xa4
 8000840:	9a01      	ldr	r2, [sp, #4]
 8000842:	005b      	lsls	r3, r3, #1
 8000844:	58d5      	ldr	r5, [r2, r3]
 8000846:	2d00      	cmp	r5, #0
 8000848:	d02e      	beq.n	80008a8 <__register_exitproc+0x8c>
 800084a:	686c      	ldr	r4, [r5, #4]
 800084c:	2c1f      	cmp	r4, #31
 800084e:	dc30      	bgt.n	80008b2 <__register_exitproc+0x96>
 8000850:	2e00      	cmp	r6, #0
 8000852:	d10f      	bne.n	8000874 <__register_exitproc+0x58>
 8000854:	1c63      	adds	r3, r4, #1
 8000856:	606b      	str	r3, [r5, #4]
 8000858:	464b      	mov	r3, r9
 800085a:	3402      	adds	r4, #2
 800085c:	00a4      	lsls	r4, r4, #2
 800085e:	6838      	ldr	r0, [r7, #0]
 8000860:	5163      	str	r3, [r4, r5]
 8000862:	f7ff ffd9 	bl	8000818 <__retarget_lock_release_recursive>
 8000866:	2000      	movs	r0, #0
 8000868:	b002      	add	sp, #8
 800086a:	bce0      	pop	{r5, r6, r7}
 800086c:	46ba      	mov	sl, r7
 800086e:	46b1      	mov	r9, r6
 8000870:	46a8      	mov	r8, r5
 8000872:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000874:	2288      	movs	r2, #136	; 0x88
 8000876:	4651      	mov	r1, sl
 8000878:	0028      	movs	r0, r5
 800087a:	00a3      	lsls	r3, r4, #2
 800087c:	18eb      	adds	r3, r5, r3
 800087e:	5099      	str	r1, [r3, r2]
 8000880:	3a87      	subs	r2, #135	; 0x87
 8000882:	40a2      	lsls	r2, r4
 8000884:	3089      	adds	r0, #137	; 0x89
 8000886:	30ff      	adds	r0, #255	; 0xff
 8000888:	6801      	ldr	r1, [r0, #0]
 800088a:	4311      	orrs	r1, r2
 800088c:	6001      	str	r1, [r0, #0]
 800088e:	2184      	movs	r1, #132	; 0x84
 8000890:	4640      	mov	r0, r8
 8000892:	0049      	lsls	r1, r1, #1
 8000894:	5058      	str	r0, [r3, r1]
 8000896:	2e02      	cmp	r6, #2
 8000898:	d1dc      	bne.n	8000854 <__register_exitproc+0x38>
 800089a:	002b      	movs	r3, r5
 800089c:	338d      	adds	r3, #141	; 0x8d
 800089e:	33ff      	adds	r3, #255	; 0xff
 80008a0:	6819      	ldr	r1, [r3, #0]
 80008a2:	430a      	orrs	r2, r1
 80008a4:	601a      	str	r2, [r3, #0]
 80008a6:	e7d5      	b.n	8000854 <__register_exitproc+0x38>
 80008a8:	0015      	movs	r5, r2
 80008aa:	354d      	adds	r5, #77	; 0x4d
 80008ac:	35ff      	adds	r5, #255	; 0xff
 80008ae:	50d5      	str	r5, [r2, r3]
 80008b0:	e7cb      	b.n	800084a <__register_exitproc+0x2e>
 80008b2:	6838      	ldr	r0, [r7, #0]
 80008b4:	f7ff ffb0 	bl	8000818 <__retarget_lock_release_recursive>
 80008b8:	2001      	movs	r0, #1
 80008ba:	4240      	negs	r0, r0
 80008bc:	e7d4      	b.n	8000868 <__register_exitproc+0x4c>
 80008be:	46c0      	nop			; (mov r8, r8)
 80008c0:	20000430 	.word	0x20000430
 80008c4:	08000920 	.word	0x08000920

080008c8 <_init>:
 80008c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008ca:	46c0      	nop			; (mov r8, r8)
 80008cc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008ce:	bc08      	pop	{r3}
 80008d0:	469e      	mov	lr, r3
 80008d2:	4770      	bx	lr

080008d4 <_fini>:
 80008d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008d6:	46c0      	nop			; (mov r8, r8)
 80008d8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008da:	bc08      	pop	{r3}
 80008dc:	469e      	mov	lr, r3
 80008de:	4770      	bx	lr
