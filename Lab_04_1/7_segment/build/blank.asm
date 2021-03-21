
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000820  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000044  080008e0  080008e0  000108e0  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000924  08000924  00010924  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  0800092c  0800092c  0001092c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000930  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000040  20000434  08000d64  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000474  08000d64  00020474  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       0000099c  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     0000030f  00000000  00000000  00020df8  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00000520  00000000  00000000  00021107  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000120  00000000  00000000  00021627  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     000000f0  00000000  00000000  00021747  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00000486  00000000  00000000  00021837  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000004ed  00000000  00000000  00021cbd  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  000221aa  2**0  CONTENTS, READONLY
 17 .debug_frame      00000510  00000000  00000000  0002222c  2**2  CONTENTS, READONLY, DEBUGGING

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
 8000132:	f000 faa3 	bl	800067c <SystemInit>
 8000136:	f000 faf7 	bl	8000728 <__libc_init_array>
 800013a:	f000 fa51 	bl	80005e0 <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000930 	.word	0x08000930
 8000150:	20000434 	.word	0x20000434
 8000154:	20000474 	.word	0x20000474

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
 8000322:	68ba      	ldr	r2, [r7, #8]
 8000324:	435a      	muls	r2, r3
 8000326:	0013      	movs	r3, r2
 8000328:	005b      	lsls	r3, r3, #1
 800032a:	189b      	adds	r3, r3, r2
 800032c:	43db      	mvns	r3, r3
 800032e:	400b      	ands	r3, r1
 8000330:	001a      	movs	r2, r3
 8000332:	68bb      	ldr	r3, [r7, #8]
 8000334:	68b9      	ldr	r1, [r7, #8]
 8000336:	434b      	muls	r3, r1
 8000338:	6879      	ldr	r1, [r7, #4]
 800033a:	434b      	muls	r3, r1
 800033c:	431a      	orrs	r2, r3
 800033e:	68fb      	ldr	r3, [r7, #12]
 8000340:	601a      	str	r2, [r3, #0]
 8000342:	46c0      	nop			; (mov r8, r8)
 8000344:	46bd      	mov	sp, r7
 8000346:	b004      	add	sp, #16
 8000348:	bd80      	pop	{r7, pc}

0800034a <LL_GPIO_IsInputPinSet>:
 800034a:	b580      	push	{r7, lr}
 800034c:	b082      	sub	sp, #8
 800034e:	af00      	add	r7, sp, #0
 8000350:	6078      	str	r0, [r7, #4]
 8000352:	6039      	str	r1, [r7, #0]
 8000354:	687b      	ldr	r3, [r7, #4]
 8000356:	691b      	ldr	r3, [r3, #16]
 8000358:	683a      	ldr	r2, [r7, #0]
 800035a:	4013      	ands	r3, r2
 800035c:	683a      	ldr	r2, [r7, #0]
 800035e:	1ad3      	subs	r3, r2, r3
 8000360:	425a      	negs	r2, r3
 8000362:	4153      	adcs	r3, r2
 8000364:	b2db      	uxtb	r3, r3
 8000366:	0018      	movs	r0, r3
 8000368:	46bd      	mov	sp, r7
 800036a:	b002      	add	sp, #8
 800036c:	bd80      	pop	{r7, pc}

0800036e <LL_GPIO_WriteOutputPort>:
 800036e:	b580      	push	{r7, lr}
 8000370:	b082      	sub	sp, #8
 8000372:	af00      	add	r7, sp, #0
 8000374:	6078      	str	r0, [r7, #4]
 8000376:	6039      	str	r1, [r7, #0]
 8000378:	687b      	ldr	r3, [r7, #4]
 800037a:	683a      	ldr	r2, [r7, #0]
 800037c:	615a      	str	r2, [r3, #20]
 800037e:	46c0      	nop			; (mov r8, r8)
 8000380:	46bd      	mov	sp, r7
 8000382:	b002      	add	sp, #8
 8000384:	bd80      	pop	{r7, pc}

08000386 <LL_GPIO_ResetOutputPin>:
 8000386:	b580      	push	{r7, lr}
 8000388:	b082      	sub	sp, #8
 800038a:	af00      	add	r7, sp, #0
 800038c:	6078      	str	r0, [r7, #4]
 800038e:	6039      	str	r1, [r7, #0]
 8000390:	687b      	ldr	r3, [r7, #4]
 8000392:	683a      	ldr	r2, [r7, #0]
 8000394:	629a      	str	r2, [r3, #40]	; 0x28
 8000396:	46c0      	nop			; (mov r8, r8)
 8000398:	46bd      	mov	sp, r7
 800039a:	b002      	add	sp, #8
 800039c:	bd80      	pop	{r7, pc}

0800039e <LL_GPIO_TogglePin>:
 800039e:	b580      	push	{r7, lr}
 80003a0:	b082      	sub	sp, #8
 80003a2:	af00      	add	r7, sp, #0
 80003a4:	6078      	str	r0, [r7, #4]
 80003a6:	6039      	str	r1, [r7, #0]
 80003a8:	687b      	ldr	r3, [r7, #4]
 80003aa:	695a      	ldr	r2, [r3, #20]
 80003ac:	683b      	ldr	r3, [r7, #0]
 80003ae:	405a      	eors	r2, r3
 80003b0:	687b      	ldr	r3, [r7, #4]
 80003b2:	615a      	str	r2, [r3, #20]
 80003b4:	46c0      	nop			; (mov r8, r8)
 80003b6:	46bd      	mov	sp, r7
 80003b8:	b002      	add	sp, #8
 80003ba:	bd80      	pop	{r7, pc}

080003bc <rcc_config>:
 80003bc:	b580      	push	{r7, lr}
 80003be:	af00      	add	r7, sp, #0
 80003c0:	2000      	movs	r0, #0
 80003c2:	f7ff ff7b 	bl	80002bc <LL_FLASH_SetLatency>
 80003c6:	f7ff fec9 	bl	800015c <LL_RCC_HSI_Enable>
 80003ca:	46c0      	nop			; (mov r8, r8)
 80003cc:	f7ff fed4 	bl	8000178 <LL_RCC_HSI_IsReady>
 80003d0:	0003      	movs	r3, r0
 80003d2:	2b01      	cmp	r3, #1
 80003d4:	d1fa      	bne.n	80003cc <rcc_config+0x10>
 80003d6:	23a0      	movs	r3, #160	; 0xa0
 80003d8:	039b      	lsls	r3, r3, #14
 80003da:	0019      	movs	r1, r3
 80003dc:	2000      	movs	r0, #0
 80003de:	f7ff ff47 	bl	8000270 <LL_RCC_PLL_ConfigDomain_SYS>
 80003e2:	f7ff ff23 	bl	800022c <LL_RCC_PLL_Enable>
 80003e6:	46c0      	nop			; (mov r8, r8)
 80003e8:	f7ff ff2e 	bl	8000248 <LL_RCC_PLL_IsReady>
 80003ec:	0003      	movs	r3, r0
 80003ee:	2b01      	cmp	r3, #1
 80003f0:	d1fa      	bne.n	80003e8 <rcc_config+0x2c>
 80003f2:	2000      	movs	r0, #0
 80003f4:	f7ff fef0 	bl	80001d8 <LL_RCC_SetAHBPrescaler>
 80003f8:	2002      	movs	r0, #2
 80003fa:	f7ff fecd 	bl	8000198 <LL_RCC_SetSysClkSource>
 80003fe:	46c0      	nop			; (mov r8, r8)
 8000400:	f7ff fede 	bl	80001c0 <LL_RCC_GetSysClkSource>
 8000404:	0003      	movs	r3, r0
 8000406:	2b08      	cmp	r3, #8
 8000408:	d1fa      	bne.n	8000400 <rcc_config+0x44>
 800040a:	2000      	movs	r0, #0
 800040c:	f7ff fef8 	bl	8000200 <LL_RCC_SetAPB1Prescaler>
 8000410:	4b02      	ldr	r3, [pc, #8]	; (800041c <rcc_config+0x60>)
 8000412:	4a03      	ldr	r2, [pc, #12]	; (8000420 <rcc_config+0x64>)
 8000414:	601a      	str	r2, [r3, #0]
 8000416:	46c0      	nop			; (mov r8, r8)
 8000418:	46bd      	mov	sp, r7
 800041a:	bd80      	pop	{r7, pc}
 800041c:	20000000 	.word	0x20000000
 8000420:	02dc6c00 	.word	0x02dc6c00

08000424 <gpio_config>:
 8000424:	b580      	push	{r7, lr}
 8000426:	af00      	add	r7, sp, #0
 8000428:	2380      	movs	r3, #128	; 0x80
 800042a:	031b      	lsls	r3, r3, #12
 800042c:	0018      	movs	r0, r3
 800042e:	f7ff ff59 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000432:	2380      	movs	r3, #128	; 0x80
 8000434:	005b      	lsls	r3, r3, #1
 8000436:	4828      	ldr	r0, [pc, #160]	; (80004d8 <gpio_config+0xb4>)
 8000438:	2201      	movs	r2, #1
 800043a:	0019      	movs	r1, r3
 800043c:	f7ff ff68 	bl	8000310 <LL_GPIO_SetPinMode>
 8000440:	2380      	movs	r3, #128	; 0x80
 8000442:	009b      	lsls	r3, r3, #2
 8000444:	4824      	ldr	r0, [pc, #144]	; (80004d8 <gpio_config+0xb4>)
 8000446:	2201      	movs	r2, #1
 8000448:	0019      	movs	r1, r3
 800044a:	f7ff ff61 	bl	8000310 <LL_GPIO_SetPinMode>
 800044e:	2380      	movs	r3, #128	; 0x80
 8000450:	029b      	lsls	r3, r3, #10
 8000452:	0018      	movs	r0, r3
 8000454:	f7ff ff46 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000458:	2390      	movs	r3, #144	; 0x90
 800045a:	05db      	lsls	r3, r3, #23
 800045c:	2200      	movs	r2, #0
 800045e:	2101      	movs	r1, #1
 8000460:	0018      	movs	r0, r3
 8000462:	f7ff ff55 	bl	8000310 <LL_GPIO_SetPinMode>
 8000466:	2380      	movs	r3, #128	; 0x80
 8000468:	02db      	lsls	r3, r3, #11
 800046a:	0018      	movs	r0, r3
 800046c:	f7ff ff3a 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000470:	4b1a      	ldr	r3, [pc, #104]	; (80004dc <gpio_config+0xb8>)
 8000472:	2201      	movs	r2, #1
 8000474:	2101      	movs	r1, #1
 8000476:	0018      	movs	r0, r3
 8000478:	f7ff ff4a 	bl	8000310 <LL_GPIO_SetPinMode>
 800047c:	4b17      	ldr	r3, [pc, #92]	; (80004dc <gpio_config+0xb8>)
 800047e:	2201      	movs	r2, #1
 8000480:	2102      	movs	r1, #2
 8000482:	0018      	movs	r0, r3
 8000484:	f7ff ff44 	bl	8000310 <LL_GPIO_SetPinMode>
 8000488:	4b14      	ldr	r3, [pc, #80]	; (80004dc <gpio_config+0xb8>)
 800048a:	2201      	movs	r2, #1
 800048c:	2104      	movs	r1, #4
 800048e:	0018      	movs	r0, r3
 8000490:	f7ff ff3e 	bl	8000310 <LL_GPIO_SetPinMode>
 8000494:	4b11      	ldr	r3, [pc, #68]	; (80004dc <gpio_config+0xb8>)
 8000496:	2201      	movs	r2, #1
 8000498:	2108      	movs	r1, #8
 800049a:	0018      	movs	r0, r3
 800049c:	f7ff ff38 	bl	8000310 <LL_GPIO_SetPinMode>
 80004a0:	4b0e      	ldr	r3, [pc, #56]	; (80004dc <gpio_config+0xb8>)
 80004a2:	2201      	movs	r2, #1
 80004a4:	2110      	movs	r1, #16
 80004a6:	0018      	movs	r0, r3
 80004a8:	f7ff ff32 	bl	8000310 <LL_GPIO_SetPinMode>
 80004ac:	4b0b      	ldr	r3, [pc, #44]	; (80004dc <gpio_config+0xb8>)
 80004ae:	2201      	movs	r2, #1
 80004b0:	2120      	movs	r1, #32
 80004b2:	0018      	movs	r0, r3
 80004b4:	f7ff ff2c 	bl	8000310 <LL_GPIO_SetPinMode>
 80004b8:	4b08      	ldr	r3, [pc, #32]	; (80004dc <gpio_config+0xb8>)
 80004ba:	2201      	movs	r2, #1
 80004bc:	2140      	movs	r1, #64	; 0x40
 80004be:	0018      	movs	r0, r3
 80004c0:	f7ff ff26 	bl	8000310 <LL_GPIO_SetPinMode>
 80004c4:	4b05      	ldr	r3, [pc, #20]	; (80004dc <gpio_config+0xb8>)
 80004c6:	2201      	movs	r2, #1
 80004c8:	2180      	movs	r1, #128	; 0x80
 80004ca:	0018      	movs	r0, r3
 80004cc:	f7ff ff20 	bl	8000310 <LL_GPIO_SetPinMode>
 80004d0:	46c0      	nop			; (mov r8, r8)
 80004d2:	46bd      	mov	sp, r7
 80004d4:	bd80      	pop	{r7, pc}
 80004d6:	46c0      	nop			; (mov r8, r8)
 80004d8:	48000800 	.word	0x48000800
 80004dc:	48000400 	.word	0x48000400

080004e0 <delay_10ms>:
 80004e0:	b580      	push	{r7, lr}
 80004e2:	4e02      	ldr	r6, [pc, #8]	; (80004ec <delay_10ms+0xc>)
 80004e4:	3e01      	subs	r6, #1
 80004e6:	2e00      	cmp	r6, #0
 80004e8:	d1fc      	bne.n	80004e4 <delay_10ms+0x4>
 80004ea:	bd80      	pop	{r7, pc}
 80004ec:	0000ea60 	.word	0x0000ea60
 80004f0:	46c0      	nop			; (mov r8, r8)
	...

080004f4 <show_digit>:
 80004f4:	b580      	push	{r7, lr}
 80004f6:	b082      	sub	sp, #8
 80004f8:	af00      	add	r7, sp, #0
 80004fa:	6078      	str	r0, [r7, #4]
 80004fc:	687b      	ldr	r3, [r7, #4]
 80004fe:	2b0f      	cmp	r3, #15
 8000500:	d865      	bhi.n	80005ce <show_digit+0xda>
 8000502:	687b      	ldr	r3, [r7, #4]
 8000504:	009a      	lsls	r2, r3, #2
 8000506:	4b34      	ldr	r3, [pc, #208]	; (80005d8 <show_digit+0xe4>)
 8000508:	18d3      	adds	r3, r2, r3
 800050a:	681b      	ldr	r3, [r3, #0]
 800050c:	469f      	mov	pc, r3
 800050e:	4b33      	ldr	r3, [pc, #204]	; (80005dc <show_digit+0xe8>)
 8000510:	213f      	movs	r1, #63	; 0x3f
 8000512:	0018      	movs	r0, r3
 8000514:	f7ff ff2b 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000518:	e05a      	b.n	80005d0 <show_digit+0xdc>
 800051a:	4b30      	ldr	r3, [pc, #192]	; (80005dc <show_digit+0xe8>)
 800051c:	2106      	movs	r1, #6
 800051e:	0018      	movs	r0, r3
 8000520:	f7ff ff25 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000524:	e054      	b.n	80005d0 <show_digit+0xdc>
 8000526:	4b2d      	ldr	r3, [pc, #180]	; (80005dc <show_digit+0xe8>)
 8000528:	215b      	movs	r1, #91	; 0x5b
 800052a:	0018      	movs	r0, r3
 800052c:	f7ff ff1f 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000530:	e04e      	b.n	80005d0 <show_digit+0xdc>
 8000532:	4b2a      	ldr	r3, [pc, #168]	; (80005dc <show_digit+0xe8>)
 8000534:	214f      	movs	r1, #79	; 0x4f
 8000536:	0018      	movs	r0, r3
 8000538:	f7ff ff19 	bl	800036e <LL_GPIO_WriteOutputPort>
 800053c:	e048      	b.n	80005d0 <show_digit+0xdc>
 800053e:	4b27      	ldr	r3, [pc, #156]	; (80005dc <show_digit+0xe8>)
 8000540:	2166      	movs	r1, #102	; 0x66
 8000542:	0018      	movs	r0, r3
 8000544:	f7ff ff13 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000548:	e042      	b.n	80005d0 <show_digit+0xdc>
 800054a:	4b24      	ldr	r3, [pc, #144]	; (80005dc <show_digit+0xe8>)
 800054c:	216d      	movs	r1, #109	; 0x6d
 800054e:	0018      	movs	r0, r3
 8000550:	f7ff ff0d 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000554:	e03c      	b.n	80005d0 <show_digit+0xdc>
 8000556:	4b21      	ldr	r3, [pc, #132]	; (80005dc <show_digit+0xe8>)
 8000558:	217d      	movs	r1, #125	; 0x7d
 800055a:	0018      	movs	r0, r3
 800055c:	f7ff ff07 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000560:	e036      	b.n	80005d0 <show_digit+0xdc>
 8000562:	4b1e      	ldr	r3, [pc, #120]	; (80005dc <show_digit+0xe8>)
 8000564:	2107      	movs	r1, #7
 8000566:	0018      	movs	r0, r3
 8000568:	f7ff ff01 	bl	800036e <LL_GPIO_WriteOutputPort>
 800056c:	e030      	b.n	80005d0 <show_digit+0xdc>
 800056e:	4b1b      	ldr	r3, [pc, #108]	; (80005dc <show_digit+0xe8>)
 8000570:	217f      	movs	r1, #127	; 0x7f
 8000572:	0018      	movs	r0, r3
 8000574:	f7ff fefb 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000578:	e02a      	b.n	80005d0 <show_digit+0xdc>
 800057a:	4b18      	ldr	r3, [pc, #96]	; (80005dc <show_digit+0xe8>)
 800057c:	216f      	movs	r1, #111	; 0x6f
 800057e:	0018      	movs	r0, r3
 8000580:	f7ff fef5 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000584:	e024      	b.n	80005d0 <show_digit+0xdc>
 8000586:	4b15      	ldr	r3, [pc, #84]	; (80005dc <show_digit+0xe8>)
 8000588:	2177      	movs	r1, #119	; 0x77
 800058a:	0018      	movs	r0, r3
 800058c:	f7ff feef 	bl	800036e <LL_GPIO_WriteOutputPort>
 8000590:	e01e      	b.n	80005d0 <show_digit+0xdc>
 8000592:	4b12      	ldr	r3, [pc, #72]	; (80005dc <show_digit+0xe8>)
 8000594:	217c      	movs	r1, #124	; 0x7c
 8000596:	0018      	movs	r0, r3
 8000598:	f7ff fee9 	bl	800036e <LL_GPIO_WriteOutputPort>
 800059c:	e018      	b.n	80005d0 <show_digit+0xdc>
 800059e:	4b0f      	ldr	r3, [pc, #60]	; (80005dc <show_digit+0xe8>)
 80005a0:	2139      	movs	r1, #57	; 0x39
 80005a2:	0018      	movs	r0, r3
 80005a4:	f7ff fee3 	bl	800036e <LL_GPIO_WriteOutputPort>
 80005a8:	e012      	b.n	80005d0 <show_digit+0xdc>
 80005aa:	4b0c      	ldr	r3, [pc, #48]	; (80005dc <show_digit+0xe8>)
 80005ac:	215e      	movs	r1, #94	; 0x5e
 80005ae:	0018      	movs	r0, r3
 80005b0:	f7ff fedd 	bl	800036e <LL_GPIO_WriteOutputPort>
 80005b4:	e00c      	b.n	80005d0 <show_digit+0xdc>
 80005b6:	4b09      	ldr	r3, [pc, #36]	; (80005dc <show_digit+0xe8>)
 80005b8:	2179      	movs	r1, #121	; 0x79
 80005ba:	0018      	movs	r0, r3
 80005bc:	f7ff fed7 	bl	800036e <LL_GPIO_WriteOutputPort>
 80005c0:	e006      	b.n	80005d0 <show_digit+0xdc>
 80005c2:	4b06      	ldr	r3, [pc, #24]	; (80005dc <show_digit+0xe8>)
 80005c4:	2171      	movs	r1, #113	; 0x71
 80005c6:	0018      	movs	r0, r3
 80005c8:	f7ff fed1 	bl	800036e <LL_GPIO_WriteOutputPort>
 80005cc:	e000      	b.n	80005d0 <show_digit+0xdc>
 80005ce:	46c0      	nop			; (mov r8, r8)
 80005d0:	46c0      	nop			; (mov r8, r8)
 80005d2:	46bd      	mov	sp, r7
 80005d4:	b002      	add	sp, #8
 80005d6:	bd80      	pop	{r7, pc}
 80005d8:	080008e0 	.word	0x080008e0
 80005dc:	48000400 	.word	0x48000400

080005e0 <main>:
 80005e0:	b580      	push	{r7, lr}
 80005e2:	b084      	sub	sp, #16
 80005e4:	af00      	add	r7, sp, #0
 80005e6:	f7ff fee9 	bl	80003bc <rcc_config>
 80005ea:	f7ff ff1b 	bl	8000424 <gpio_config>
 80005ee:	4b21      	ldr	r3, [pc, #132]	; (8000674 <main+0x94>)
 80005f0:	2180      	movs	r1, #128	; 0x80
 80005f2:	0018      	movs	r0, r3
 80005f4:	f7ff fec7 	bl	8000386 <LL_GPIO_ResetOutputPin>
 80005f8:	2300      	movs	r3, #0
 80005fa:	60fb      	str	r3, [r7, #12]
 80005fc:	2300      	movs	r3, #0
 80005fe:	60bb      	str	r3, [r7, #8]
 8000600:	2300      	movs	r3, #0
 8000602:	607b      	str	r3, [r7, #4]
 8000604:	68bb      	ldr	r3, [r7, #8]
 8000606:	2b0f      	cmp	r3, #15
 8000608:	d901      	bls.n	800060e <main+0x2e>
 800060a:	2300      	movs	r3, #0
 800060c:	60bb      	str	r3, [r7, #8]
 800060e:	2300      	movs	r3, #0
 8000610:	60fb      	str	r3, [r7, #12]
 8000612:	e004      	b.n	800061e <main+0x3e>
 8000614:	f7ff ff64 	bl	80004e0 <delay_10ms>
 8000618:	68fb      	ldr	r3, [r7, #12]
 800061a:	3301      	adds	r3, #1
 800061c:	60fb      	str	r3, [r7, #12]
 800061e:	68fb      	ldr	r3, [r7, #12]
 8000620:	2b04      	cmp	r3, #4
 8000622:	d807      	bhi.n	8000634 <main+0x54>
 8000624:	2390      	movs	r3, #144	; 0x90
 8000626:	05db      	lsls	r3, r3, #23
 8000628:	2101      	movs	r1, #1
 800062a:	0018      	movs	r0, r3
 800062c:	f7ff fe8d 	bl	800034a <LL_GPIO_IsInputPinSet>
 8000630:	1e03      	subs	r3, r0, #0
 8000632:	d1ef      	bne.n	8000614 <main+0x34>
 8000634:	68fb      	ldr	r3, [r7, #12]
 8000636:	2b04      	cmp	r3, #4
 8000638:	d918      	bls.n	800066c <main+0x8c>
 800063a:	687b      	ldr	r3, [r7, #4]
 800063c:	2b00      	cmp	r3, #0
 800063e:	d1e1      	bne.n	8000604 <main+0x24>
 8000640:	68bb      	ldr	r3, [r7, #8]
 8000642:	3301      	adds	r3, #1
 8000644:	60bb      	str	r3, [r7, #8]
 8000646:	4b0b      	ldr	r3, [pc, #44]	; (8000674 <main+0x94>)
 8000648:	217f      	movs	r1, #127	; 0x7f
 800064a:	0018      	movs	r0, r3
 800064c:	f7ff fe9b 	bl	8000386 <LL_GPIO_ResetOutputPin>
 8000650:	68bb      	ldr	r3, [r7, #8]
 8000652:	0018      	movs	r0, r3
 8000654:	f7ff ff4e 	bl	80004f4 <show_digit>
 8000658:	2380      	movs	r3, #128	; 0x80
 800065a:	009b      	lsls	r3, r3, #2
 800065c:	4a06      	ldr	r2, [pc, #24]	; (8000678 <main+0x98>)
 800065e:	0019      	movs	r1, r3
 8000660:	0010      	movs	r0, r2
 8000662:	f7ff fe9c 	bl	800039e <LL_GPIO_TogglePin>
 8000666:	2301      	movs	r3, #1
 8000668:	607b      	str	r3, [r7, #4]
 800066a:	e7cb      	b.n	8000604 <main+0x24>
 800066c:	2300      	movs	r3, #0
 800066e:	607b      	str	r3, [r7, #4]
 8000670:	e7c8      	b.n	8000604 <main+0x24>
 8000672:	46c0      	nop			; (mov r8, r8)
 8000674:	48000400 	.word	0x48000400
 8000678:	48000800 	.word	0x48000800

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
 800072a:	4e0d      	ldr	r6, [pc, #52]	; (8000760 <__libc_init_array+0x38>)
 800072c:	4d0d      	ldr	r5, [pc, #52]	; (8000764 <__libc_init_array+0x3c>)
 800072e:	1bad      	subs	r5, r5, r6
 8000730:	10ad      	asrs	r5, r5, #2
 8000732:	d006      	beq.n	8000742 <__libc_init_array+0x1a>
 8000734:	2400      	movs	r4, #0
 8000736:	00a3      	lsls	r3, r4, #2
 8000738:	58f3      	ldr	r3, [r6, r3]
 800073a:	3401      	adds	r4, #1
 800073c:	4798      	blx	r3
 800073e:	42a5      	cmp	r5, r4
 8000740:	d1f9      	bne.n	8000736 <__libc_init_array+0xe>
 8000742:	f000 f8c1 	bl	80008c8 <_init>
 8000746:	4e08      	ldr	r6, [pc, #32]	; (8000768 <__libc_init_array+0x40>)
 8000748:	4d08      	ldr	r5, [pc, #32]	; (800076c <__libc_init_array+0x44>)
 800074a:	1bad      	subs	r5, r5, r6
 800074c:	10ad      	asrs	r5, r5, #2
 800074e:	d006      	beq.n	800075e <__libc_init_array+0x36>
 8000750:	2400      	movs	r4, #0
 8000752:	00a3      	lsls	r3, r4, #2
 8000754:	58f3      	ldr	r3, [r6, r3]
 8000756:	3401      	adds	r4, #1
 8000758:	4798      	blx	r3
 800075a:	42a5      	cmp	r5, r4
 800075c:	d1f9      	bne.n	8000752 <__libc_init_array+0x2a>
 800075e:	bd70      	pop	{r4, r5, r6, pc}
 8000760:	08000924 	.word	0x08000924
 8000764:	08000924 	.word	0x08000924
 8000768:	08000924 	.word	0x08000924
 800076c:	0800092c 	.word	0x0800092c

08000770 <register_fini>:
 8000770:	4b03      	ldr	r3, [pc, #12]	; (8000780 <register_fini+0x10>)
 8000772:	b510      	push	{r4, lr}
 8000774:	2b00      	cmp	r3, #0
 8000776:	d002      	beq.n	800077e <register_fini+0xe>
 8000778:	4802      	ldr	r0, [pc, #8]	; (8000784 <register_fini+0x14>)
 800077a:	f000 f805 	bl	8000788 <atexit>
 800077e:	bd10      	pop	{r4, pc}
 8000780:	00000000 	.word	0x00000000
 8000784:	08000799 	.word	0x08000799

08000788 <atexit>:
 8000788:	b510      	push	{r4, lr}
 800078a:	0001      	movs	r1, r0
 800078c:	2300      	movs	r3, #0
 800078e:	2200      	movs	r2, #0
 8000790:	2000      	movs	r0, #0
 8000792:	f000 f81f 	bl	80007d4 <__register_exitproc>
 8000796:	bd10      	pop	{r4, pc}

08000798 <__libc_fini_array>:
 8000798:	b570      	push	{r4, r5, r6, lr}
 800079a:	4b09      	ldr	r3, [pc, #36]	; (80007c0 <__libc_fini_array+0x28>)
 800079c:	4c09      	ldr	r4, [pc, #36]	; (80007c4 <__libc_fini_array+0x2c>)
 800079e:	1ae4      	subs	r4, r4, r3
 80007a0:	10a4      	asrs	r4, r4, #2
 80007a2:	d009      	beq.n	80007b8 <__libc_fini_array+0x20>
 80007a4:	4a08      	ldr	r2, [pc, #32]	; (80007c8 <__libc_fini_array+0x30>)
 80007a6:	18a5      	adds	r5, r4, r2
 80007a8:	00ad      	lsls	r5, r5, #2
 80007aa:	18ed      	adds	r5, r5, r3
 80007ac:	682b      	ldr	r3, [r5, #0]
 80007ae:	3c01      	subs	r4, #1
 80007b0:	4798      	blx	r3
 80007b2:	3d04      	subs	r5, #4
 80007b4:	2c00      	cmp	r4, #0
 80007b6:	d1f9      	bne.n	80007ac <__libc_fini_array+0x14>
 80007b8:	f000 f88c 	bl	80008d4 <_fini>
 80007bc:	bd70      	pop	{r4, r5, r6, pc}
 80007be:	46c0      	nop			; (mov r8, r8)
 80007c0:	0800092c 	.word	0x0800092c
 80007c4:	08000930 	.word	0x08000930
 80007c8:	3fffffff 	.word	0x3fffffff

080007cc <__retarget_lock_acquire_recursive>:
 80007cc:	4770      	bx	lr
 80007ce:	46c0      	nop			; (mov r8, r8)

080007d0 <__retarget_lock_release_recursive>:
 80007d0:	4770      	bx	lr
 80007d2:	46c0      	nop			; (mov r8, r8)

080007d4 <__register_exitproc>:
 80007d4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007d6:	464e      	mov	r6, r9
 80007d8:	4645      	mov	r5, r8
 80007da:	46de      	mov	lr, fp
 80007dc:	4657      	mov	r7, sl
 80007de:	b5e0      	push	{r5, r6, r7, lr}
 80007e0:	4d36      	ldr	r5, [pc, #216]	; (80008bc <__register_exitproc+0xe8>)
 80007e2:	b083      	sub	sp, #12
 80007e4:	0006      	movs	r6, r0
 80007e6:	6828      	ldr	r0, [r5, #0]
 80007e8:	4698      	mov	r8, r3
 80007ea:	000f      	movs	r7, r1
 80007ec:	4691      	mov	r9, r2
 80007ee:	f7ff ffed 	bl	80007cc <__retarget_lock_acquire_recursive>
 80007f2:	4b33      	ldr	r3, [pc, #204]	; (80008c0 <__register_exitproc+0xec>)
 80007f4:	681c      	ldr	r4, [r3, #0]
 80007f6:	23a4      	movs	r3, #164	; 0xa4
 80007f8:	005b      	lsls	r3, r3, #1
 80007fa:	58e0      	ldr	r0, [r4, r3]
 80007fc:	2800      	cmp	r0, #0
 80007fe:	d052      	beq.n	80008a6 <__register_exitproc+0xd2>
 8000800:	6843      	ldr	r3, [r0, #4]
 8000802:	2b1f      	cmp	r3, #31
 8000804:	dc13      	bgt.n	800082e <__register_exitproc+0x5a>
 8000806:	1c5a      	adds	r2, r3, #1
 8000808:	9201      	str	r2, [sp, #4]
 800080a:	2e00      	cmp	r6, #0
 800080c:	d128      	bne.n	8000860 <__register_exitproc+0x8c>
 800080e:	9a01      	ldr	r2, [sp, #4]
 8000810:	3302      	adds	r3, #2
 8000812:	009b      	lsls	r3, r3, #2
 8000814:	6042      	str	r2, [r0, #4]
 8000816:	501f      	str	r7, [r3, r0]
 8000818:	6828      	ldr	r0, [r5, #0]
 800081a:	f7ff ffd9 	bl	80007d0 <__retarget_lock_release_recursive>
 800081e:	2000      	movs	r0, #0
 8000820:	b003      	add	sp, #12
 8000822:	bc3c      	pop	{r2, r3, r4, r5}
 8000824:	4690      	mov	r8, r2
 8000826:	4699      	mov	r9, r3
 8000828:	46a2      	mov	sl, r4
 800082a:	46ab      	mov	fp, r5
 800082c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800082e:	4b25      	ldr	r3, [pc, #148]	; (80008c4 <__register_exitproc+0xf0>)
 8000830:	2b00      	cmp	r3, #0
 8000832:	d03d      	beq.n	80008b0 <__register_exitproc+0xdc>
 8000834:	20c8      	movs	r0, #200	; 0xc8
 8000836:	0040      	lsls	r0, r0, #1
 8000838:	e000      	b.n	800083c <__register_exitproc+0x68>
 800083a:	bf00      	nop
 800083c:	2800      	cmp	r0, #0
 800083e:	d037      	beq.n	80008b0 <__register_exitproc+0xdc>
 8000840:	22a4      	movs	r2, #164	; 0xa4
 8000842:	2300      	movs	r3, #0
 8000844:	0052      	lsls	r2, r2, #1
 8000846:	58a1      	ldr	r1, [r4, r2]
 8000848:	6043      	str	r3, [r0, #4]
 800084a:	6001      	str	r1, [r0, #0]
 800084c:	50a0      	str	r0, [r4, r2]
 800084e:	3240      	adds	r2, #64	; 0x40
 8000850:	5083      	str	r3, [r0, r2]
 8000852:	3204      	adds	r2, #4
 8000854:	5083      	str	r3, [r0, r2]
 8000856:	3301      	adds	r3, #1
 8000858:	9301      	str	r3, [sp, #4]
 800085a:	2300      	movs	r3, #0
 800085c:	2e00      	cmp	r6, #0
 800085e:	d0d6      	beq.n	800080e <__register_exitproc+0x3a>
 8000860:	009a      	lsls	r2, r3, #2
 8000862:	4692      	mov	sl, r2
 8000864:	4482      	add	sl, r0
 8000866:	464a      	mov	r2, r9
 8000868:	2188      	movs	r1, #136	; 0x88
 800086a:	4654      	mov	r4, sl
 800086c:	5062      	str	r2, [r4, r1]
 800086e:	22c4      	movs	r2, #196	; 0xc4
 8000870:	0052      	lsls	r2, r2, #1
 8000872:	4691      	mov	r9, r2
 8000874:	4481      	add	r9, r0
 8000876:	464a      	mov	r2, r9
 8000878:	3987      	subs	r1, #135	; 0x87
 800087a:	4099      	lsls	r1, r3
 800087c:	6812      	ldr	r2, [r2, #0]
 800087e:	468b      	mov	fp, r1
 8000880:	430a      	orrs	r2, r1
 8000882:	4694      	mov	ip, r2
 8000884:	464a      	mov	r2, r9
 8000886:	4661      	mov	r1, ip
 8000888:	6011      	str	r1, [r2, #0]
 800088a:	2284      	movs	r2, #132	; 0x84
 800088c:	4641      	mov	r1, r8
 800088e:	0052      	lsls	r2, r2, #1
 8000890:	50a1      	str	r1, [r4, r2]
 8000892:	2e02      	cmp	r6, #2
 8000894:	d1bb      	bne.n	800080e <__register_exitproc+0x3a>
 8000896:	0002      	movs	r2, r0
 8000898:	465c      	mov	r4, fp
 800089a:	328d      	adds	r2, #141	; 0x8d
 800089c:	32ff      	adds	r2, #255	; 0xff
 800089e:	6811      	ldr	r1, [r2, #0]
 80008a0:	430c      	orrs	r4, r1
 80008a2:	6014      	str	r4, [r2, #0]
 80008a4:	e7b3      	b.n	800080e <__register_exitproc+0x3a>
 80008a6:	0020      	movs	r0, r4
 80008a8:	304d      	adds	r0, #77	; 0x4d
 80008aa:	30ff      	adds	r0, #255	; 0xff
 80008ac:	50e0      	str	r0, [r4, r3]
 80008ae:	e7a7      	b.n	8000800 <__register_exitproc+0x2c>
 80008b0:	6828      	ldr	r0, [r5, #0]
 80008b2:	f7ff ff8d 	bl	80007d0 <__retarget_lock_release_recursive>
 80008b6:	2001      	movs	r0, #1
 80008b8:	4240      	negs	r0, r0
 80008ba:	e7b1      	b.n	8000820 <__register_exitproc+0x4c>
 80008bc:	20000430 	.word	0x20000430
 80008c0:	08000920 	.word	0x08000920
 80008c4:	00000000 	.word	0x00000000

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
