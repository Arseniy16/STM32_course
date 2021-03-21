
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000007d8  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000044  08000898  08000898  00010898  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080008dc  080008dc  000108dc  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080008e4  080008e4  000108e4  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080008e8  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000d1c  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000d1c  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000935  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     0000034a  00000000  00000000  00020d91  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000004b0  00000000  00000000  000210db  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000110  00000000  00000000  0002158b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000e0  00000000  00000000  0002169b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       000005de  00000000  00000000  0002177b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000567  00000000  00000000  00021d59  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  000222c0  2**0  CONTENTS, READONLY
 17 .debug_frame      000004d0  00000000  00000000  0002238c  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000880 	.word	0x08000880

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
 8000104:	08000880 	.word	0x08000880

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
 8000132:	f000 faab 	bl	800068c <SystemInit>
 8000136:	f000 faff 	bl	8000738 <__libc_init_array>
 800013a:	f000 fa79 	bl	8000630 <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	080008e8 	.word	0x080008e8
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

080004a8 <delay_10ms>:
 80004a8:	b580      	push	{r7, lr}
 80004aa:	4e02      	ldr	r6, [pc, #8]	; (80004b4 <delay_10ms+0xc>)
 80004ac:	3e01      	subs	r6, #1
 80004ae:	2e00      	cmp	r6, #0
 80004b0:	d1fc      	bne.n	80004ac <delay_10ms+0x4>
 80004b2:	bd80      	pop	{r7, pc}
 80004b4:	005b8d80 	.word	0x005b8d80
 80004b8:	46c0      	nop			; (mov r8, r8)
	...

080004bc <show_display>:
 80004bc:	b580      	push	{r7, lr}
 80004be:	b082      	sub	sp, #8
 80004c0:	af00      	add	r7, sp, #0
 80004c2:	0002      	movs	r2, r0
 80004c4:	1dbb      	adds	r3, r7, #6
 80004c6:	801a      	strh	r2, [r3, #0]
 80004c8:	1d3b      	adds	r3, r7, #4
 80004ca:	1c0a      	adds	r2, r1, #0
 80004cc:	801a      	strh	r2, [r3, #0]
 80004ce:	4b1a      	ldr	r3, [pc, #104]	; (8000538 <show_display+0x7c>)
 80004d0:	2100      	movs	r1, #0
 80004d2:	0018      	movs	r0, r3
 80004d4:	f7ff ff38 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80004d8:	1dbb      	adds	r3, r7, #6
 80004da:	881b      	ldrh	r3, [r3, #0]
 80004dc:	2b03      	cmp	r3, #3
 80004de:	d01a      	beq.n	8000516 <show_display+0x5a>
 80004e0:	dc1f      	bgt.n	8000522 <show_display+0x66>
 80004e2:	2b02      	cmp	r3, #2
 80004e4:	d011      	beq.n	800050a <show_display+0x4e>
 80004e6:	dc1c      	bgt.n	8000522 <show_display+0x66>
 80004e8:	2b00      	cmp	r3, #0
 80004ea:	d002      	beq.n	80004f2 <show_display+0x36>
 80004ec:	2b01      	cmp	r3, #1
 80004ee:	d006      	beq.n	80004fe <show_display+0x42>
 80004f0:	e017      	b.n	8000522 <show_display+0x66>
 80004f2:	4b12      	ldr	r3, [pc, #72]	; (800053c <show_display+0x80>)
 80004f4:	2107      	movs	r1, #7
 80004f6:	0018      	movs	r0, r3
 80004f8:	f7ff ff26 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80004fc:	e012      	b.n	8000524 <show_display+0x68>
 80004fe:	4b0f      	ldr	r3, [pc, #60]	; (800053c <show_display+0x80>)
 8000500:	210b      	movs	r1, #11
 8000502:	0018      	movs	r0, r3
 8000504:	f7ff ff20 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000508:	e00c      	b.n	8000524 <show_display+0x68>
 800050a:	4b0c      	ldr	r3, [pc, #48]	; (800053c <show_display+0x80>)
 800050c:	210d      	movs	r1, #13
 800050e:	0018      	movs	r0, r3
 8000510:	f7ff ff1a 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000514:	e006      	b.n	8000524 <show_display+0x68>
 8000516:	4b09      	ldr	r3, [pc, #36]	; (800053c <show_display+0x80>)
 8000518:	210e      	movs	r1, #14
 800051a:	0018      	movs	r0, r3
 800051c:	f7ff ff14 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000520:	e000      	b.n	8000524 <show_display+0x68>
 8000522:	46c0      	nop			; (mov r8, r8)
 8000524:	1d3b      	adds	r3, r7, #4
 8000526:	881b      	ldrh	r3, [r3, #0]
 8000528:	0018      	movs	r0, r3
 800052a:	f000 f809 	bl	8000540 <show_digit>
 800052e:	46c0      	nop			; (mov r8, r8)
 8000530:	46bd      	mov	sp, r7
 8000532:	b002      	add	sp, #8
 8000534:	bd80      	pop	{r7, pc}
 8000536:	46c0      	nop			; (mov r8, r8)
 8000538:	48000400 	.word	0x48000400
 800053c:	48000800 	.word	0x48000800

08000540 <show_digit>:
 8000540:	b580      	push	{r7, lr}
 8000542:	b082      	sub	sp, #8
 8000544:	af00      	add	r7, sp, #0
 8000546:	0002      	movs	r2, r0
 8000548:	1dbb      	adds	r3, r7, #6
 800054a:	801a      	strh	r2, [r3, #0]
 800054c:	1dbb      	adds	r3, r7, #6
 800054e:	881b      	ldrh	r3, [r3, #0]
 8000550:	2b0f      	cmp	r3, #15
 8000552:	d864      	bhi.n	800061e <show_digit+0xde>
 8000554:	009a      	lsls	r2, r3, #2
 8000556:	4b34      	ldr	r3, [pc, #208]	; (8000628 <show_digit+0xe8>)
 8000558:	18d3      	adds	r3, r2, r3
 800055a:	681b      	ldr	r3, [r3, #0]
 800055c:	469f      	mov	pc, r3
 800055e:	4b33      	ldr	r3, [pc, #204]	; (800062c <show_digit+0xec>)
 8000560:	213f      	movs	r1, #63	; 0x3f
 8000562:	0018      	movs	r0, r3
 8000564:	f7ff fef0 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000568:	e05a      	b.n	8000620 <show_digit+0xe0>
 800056a:	4b30      	ldr	r3, [pc, #192]	; (800062c <show_digit+0xec>)
 800056c:	2106      	movs	r1, #6
 800056e:	0018      	movs	r0, r3
 8000570:	f7ff feea 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000574:	e054      	b.n	8000620 <show_digit+0xe0>
 8000576:	4b2d      	ldr	r3, [pc, #180]	; (800062c <show_digit+0xec>)
 8000578:	215b      	movs	r1, #91	; 0x5b
 800057a:	0018      	movs	r0, r3
 800057c:	f7ff fee4 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000580:	e04e      	b.n	8000620 <show_digit+0xe0>
 8000582:	4b2a      	ldr	r3, [pc, #168]	; (800062c <show_digit+0xec>)
 8000584:	214f      	movs	r1, #79	; 0x4f
 8000586:	0018      	movs	r0, r3
 8000588:	f7ff fede 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800058c:	e048      	b.n	8000620 <show_digit+0xe0>
 800058e:	4b27      	ldr	r3, [pc, #156]	; (800062c <show_digit+0xec>)
 8000590:	2166      	movs	r1, #102	; 0x66
 8000592:	0018      	movs	r0, r3
 8000594:	f7ff fed8 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000598:	e042      	b.n	8000620 <show_digit+0xe0>
 800059a:	4b24      	ldr	r3, [pc, #144]	; (800062c <show_digit+0xec>)
 800059c:	216d      	movs	r1, #109	; 0x6d
 800059e:	0018      	movs	r0, r3
 80005a0:	f7ff fed2 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005a4:	e03c      	b.n	8000620 <show_digit+0xe0>
 80005a6:	4b21      	ldr	r3, [pc, #132]	; (800062c <show_digit+0xec>)
 80005a8:	217d      	movs	r1, #125	; 0x7d
 80005aa:	0018      	movs	r0, r3
 80005ac:	f7ff fecc 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005b0:	e036      	b.n	8000620 <show_digit+0xe0>
 80005b2:	4b1e      	ldr	r3, [pc, #120]	; (800062c <show_digit+0xec>)
 80005b4:	2107      	movs	r1, #7
 80005b6:	0018      	movs	r0, r3
 80005b8:	f7ff fec6 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005bc:	e030      	b.n	8000620 <show_digit+0xe0>
 80005be:	4b1b      	ldr	r3, [pc, #108]	; (800062c <show_digit+0xec>)
 80005c0:	217f      	movs	r1, #127	; 0x7f
 80005c2:	0018      	movs	r0, r3
 80005c4:	f7ff fec0 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005c8:	e02a      	b.n	8000620 <show_digit+0xe0>
 80005ca:	4b18      	ldr	r3, [pc, #96]	; (800062c <show_digit+0xec>)
 80005cc:	216f      	movs	r1, #111	; 0x6f
 80005ce:	0018      	movs	r0, r3
 80005d0:	f7ff feba 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005d4:	e024      	b.n	8000620 <show_digit+0xe0>
 80005d6:	4b15      	ldr	r3, [pc, #84]	; (800062c <show_digit+0xec>)
 80005d8:	2177      	movs	r1, #119	; 0x77
 80005da:	0018      	movs	r0, r3
 80005dc:	f7ff feb4 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005e0:	e01e      	b.n	8000620 <show_digit+0xe0>
 80005e2:	4b12      	ldr	r3, [pc, #72]	; (800062c <show_digit+0xec>)
 80005e4:	217c      	movs	r1, #124	; 0x7c
 80005e6:	0018      	movs	r0, r3
 80005e8:	f7ff feae 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005ec:	e018      	b.n	8000620 <show_digit+0xe0>
 80005ee:	4b0f      	ldr	r3, [pc, #60]	; (800062c <show_digit+0xec>)
 80005f0:	2139      	movs	r1, #57	; 0x39
 80005f2:	0018      	movs	r0, r3
 80005f4:	f7ff fea8 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005f8:	e012      	b.n	8000620 <show_digit+0xe0>
 80005fa:	4b0c      	ldr	r3, [pc, #48]	; (800062c <show_digit+0xec>)
 80005fc:	215e      	movs	r1, #94	; 0x5e
 80005fe:	0018      	movs	r0, r3
 8000600:	f7ff fea2 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000604:	e00c      	b.n	8000620 <show_digit+0xe0>
 8000606:	4b09      	ldr	r3, [pc, #36]	; (800062c <show_digit+0xec>)
 8000608:	2179      	movs	r1, #121	; 0x79
 800060a:	0018      	movs	r0, r3
 800060c:	f7ff fe9c 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000610:	e006      	b.n	8000620 <show_digit+0xe0>
 8000612:	4b06      	ldr	r3, [pc, #24]	; (800062c <show_digit+0xec>)
 8000614:	2171      	movs	r1, #113	; 0x71
 8000616:	0018      	movs	r0, r3
 8000618:	f7ff fe96 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800061c:	e000      	b.n	8000620 <show_digit+0xe0>
 800061e:	46c0      	nop			; (mov r8, r8)
 8000620:	46c0      	nop			; (mov r8, r8)
 8000622:	46bd      	mov	sp, r7
 8000624:	b002      	add	sp, #8
 8000626:	bd80      	pop	{r7, pc}
 8000628:	08000898 	.word	0x08000898
 800062c:	48000400 	.word	0x48000400

08000630 <main>:
 8000630:	b580      	push	{r7, lr}
 8000632:	b082      	sub	sp, #8
 8000634:	af00      	add	r7, sp, #0
 8000636:	f7ff fe93 	bl	8000360 <rcc_config>
 800063a:	f7ff fec5 	bl	80003c8 <gpio_config>
 800063e:	1dbb      	adds	r3, r7, #6
 8000640:	2200      	movs	r2, #0
 8000642:	801a      	strh	r2, [r3, #0]
 8000644:	1dbb      	adds	r3, r7, #6
 8000646:	881b      	ldrh	r3, [r3, #0]
 8000648:	2b0f      	cmp	r3, #15
 800064a:	d902      	bls.n	8000652 <main+0x22>
 800064c:	1dbb      	adds	r3, r7, #6
 800064e:	2200      	movs	r2, #0
 8000650:	801a      	strh	r2, [r3, #0]
 8000652:	1d3b      	adds	r3, r7, #4
 8000654:	2200      	movs	r2, #0
 8000656:	801a      	strh	r2, [r3, #0]
 8000658:	e013      	b.n	8000682 <main+0x52>
 800065a:	1dbb      	adds	r3, r7, #6
 800065c:	881a      	ldrh	r2, [r3, #0]
 800065e:	1d3b      	adds	r3, r7, #4
 8000660:	881b      	ldrh	r3, [r3, #0]
 8000662:	0011      	movs	r1, r2
 8000664:	0018      	movs	r0, r3
 8000666:	f7ff ff29 	bl	80004bc <show_display>
 800066a:	f7ff ff1d 	bl	80004a8 <delay_10ms>
 800066e:	1d3b      	adds	r3, r7, #4
 8000670:	881a      	ldrh	r2, [r3, #0]
 8000672:	1d3b      	adds	r3, r7, #4
 8000674:	3201      	adds	r2, #1
 8000676:	801a      	strh	r2, [r3, #0]
 8000678:	1dbb      	adds	r3, r7, #6
 800067a:	881a      	ldrh	r2, [r3, #0]
 800067c:	1dbb      	adds	r3, r7, #6
 800067e:	3201      	adds	r2, #1
 8000680:	801a      	strh	r2, [r3, #0]
 8000682:	1d3b      	adds	r3, r7, #4
 8000684:	881b      	ldrh	r3, [r3, #0]
 8000686:	2b03      	cmp	r3, #3
 8000688:	d9e7      	bls.n	800065a <main+0x2a>
 800068a:	e7db      	b.n	8000644 <main+0x14>

0800068c <SystemInit>:
 800068c:	b580      	push	{r7, lr}
 800068e:	af00      	add	r7, sp, #0
 8000690:	4b1a      	ldr	r3, [pc, #104]	; (80006fc <SystemInit+0x70>)
 8000692:	681a      	ldr	r2, [r3, #0]
 8000694:	4b19      	ldr	r3, [pc, #100]	; (80006fc <SystemInit+0x70>)
 8000696:	2101      	movs	r1, #1
 8000698:	430a      	orrs	r2, r1
 800069a:	601a      	str	r2, [r3, #0]
 800069c:	4b17      	ldr	r3, [pc, #92]	; (80006fc <SystemInit+0x70>)
 800069e:	685a      	ldr	r2, [r3, #4]
 80006a0:	4b16      	ldr	r3, [pc, #88]	; (80006fc <SystemInit+0x70>)
 80006a2:	4917      	ldr	r1, [pc, #92]	; (8000700 <SystemInit+0x74>)
 80006a4:	400a      	ands	r2, r1
 80006a6:	605a      	str	r2, [r3, #4]
 80006a8:	4b14      	ldr	r3, [pc, #80]	; (80006fc <SystemInit+0x70>)
 80006aa:	681a      	ldr	r2, [r3, #0]
 80006ac:	4b13      	ldr	r3, [pc, #76]	; (80006fc <SystemInit+0x70>)
 80006ae:	4915      	ldr	r1, [pc, #84]	; (8000704 <SystemInit+0x78>)
 80006b0:	400a      	ands	r2, r1
 80006b2:	601a      	str	r2, [r3, #0]
 80006b4:	4b11      	ldr	r3, [pc, #68]	; (80006fc <SystemInit+0x70>)
 80006b6:	681a      	ldr	r2, [r3, #0]
 80006b8:	4b10      	ldr	r3, [pc, #64]	; (80006fc <SystemInit+0x70>)
 80006ba:	4913      	ldr	r1, [pc, #76]	; (8000708 <SystemInit+0x7c>)
 80006bc:	400a      	ands	r2, r1
 80006be:	601a      	str	r2, [r3, #0]
 80006c0:	4b0e      	ldr	r3, [pc, #56]	; (80006fc <SystemInit+0x70>)
 80006c2:	685a      	ldr	r2, [r3, #4]
 80006c4:	4b0d      	ldr	r3, [pc, #52]	; (80006fc <SystemInit+0x70>)
 80006c6:	4911      	ldr	r1, [pc, #68]	; (800070c <SystemInit+0x80>)
 80006c8:	400a      	ands	r2, r1
 80006ca:	605a      	str	r2, [r3, #4]
 80006cc:	4b0b      	ldr	r3, [pc, #44]	; (80006fc <SystemInit+0x70>)
 80006ce:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80006d0:	4b0a      	ldr	r3, [pc, #40]	; (80006fc <SystemInit+0x70>)
 80006d2:	210f      	movs	r1, #15
 80006d4:	438a      	bics	r2, r1
 80006d6:	62da      	str	r2, [r3, #44]	; 0x2c
 80006d8:	4b08      	ldr	r3, [pc, #32]	; (80006fc <SystemInit+0x70>)
 80006da:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80006dc:	4b07      	ldr	r3, [pc, #28]	; (80006fc <SystemInit+0x70>)
 80006de:	490c      	ldr	r1, [pc, #48]	; (8000710 <SystemInit+0x84>)
 80006e0:	400a      	ands	r2, r1
 80006e2:	631a      	str	r2, [r3, #48]	; 0x30
 80006e4:	4b05      	ldr	r3, [pc, #20]	; (80006fc <SystemInit+0x70>)
 80006e6:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80006e8:	4b04      	ldr	r3, [pc, #16]	; (80006fc <SystemInit+0x70>)
 80006ea:	2101      	movs	r1, #1
 80006ec:	438a      	bics	r2, r1
 80006ee:	635a      	str	r2, [r3, #52]	; 0x34
 80006f0:	4b02      	ldr	r3, [pc, #8]	; (80006fc <SystemInit+0x70>)
 80006f2:	2200      	movs	r2, #0
 80006f4:	609a      	str	r2, [r3, #8]
 80006f6:	46c0      	nop			; (mov r8, r8)
 80006f8:	46bd      	mov	sp, r7
 80006fa:	bd80      	pop	{r7, pc}
 80006fc:	40021000 	.word	0x40021000
 8000700:	f8ffb80c 	.word	0xf8ffb80c
 8000704:	fef6ffff 	.word	0xfef6ffff
 8000708:	fffbffff 	.word	0xfffbffff
 800070c:	ffc0ffff 	.word	0xffc0ffff
 8000710:	fffffeac 	.word	0xfffffeac

08000714 <NMI_Handler>:
 8000714:	b580      	push	{r7, lr}
 8000716:	af00      	add	r7, sp, #0
 8000718:	46c0      	nop			; (mov r8, r8)
 800071a:	46bd      	mov	sp, r7
 800071c:	bd80      	pop	{r7, pc}

0800071e <HardFault_Handler>:
 800071e:	b580      	push	{r7, lr}
 8000720:	af00      	add	r7, sp, #0
 8000722:	e7fe      	b.n	8000722 <HardFault_Handler+0x4>

08000724 <SVC_Handler>:
 8000724:	b580      	push	{r7, lr}
 8000726:	af00      	add	r7, sp, #0
 8000728:	46c0      	nop			; (mov r8, r8)
 800072a:	46bd      	mov	sp, r7
 800072c:	bd80      	pop	{r7, pc}

0800072e <PendSV_Handler>:
 800072e:	b580      	push	{r7, lr}
 8000730:	af00      	add	r7, sp, #0
 8000732:	46c0      	nop			; (mov r8, r8)
 8000734:	46bd      	mov	sp, r7
 8000736:	bd80      	pop	{r7, pc}

08000738 <__libc_init_array>:
 8000738:	b570      	push	{r4, r5, r6, lr}
 800073a:	4d0c      	ldr	r5, [pc, #48]	; (800076c <__libc_init_array+0x34>)
 800073c:	4e0c      	ldr	r6, [pc, #48]	; (8000770 <__libc_init_array+0x38>)
 800073e:	1b76      	subs	r6, r6, r5
 8000740:	10b6      	asrs	r6, r6, #2
 8000742:	d005      	beq.n	8000750 <__libc_init_array+0x18>
 8000744:	2400      	movs	r4, #0
 8000746:	cd08      	ldmia	r5!, {r3}
 8000748:	3401      	adds	r4, #1
 800074a:	4798      	blx	r3
 800074c:	42a6      	cmp	r6, r4
 800074e:	d1fa      	bne.n	8000746 <__libc_init_array+0xe>
 8000750:	f000 f896 	bl	8000880 <_init>
 8000754:	4d07      	ldr	r5, [pc, #28]	; (8000774 <__libc_init_array+0x3c>)
 8000756:	4e08      	ldr	r6, [pc, #32]	; (8000778 <__libc_init_array+0x40>)
 8000758:	1b76      	subs	r6, r6, r5
 800075a:	10b6      	asrs	r6, r6, #2
 800075c:	d005      	beq.n	800076a <__libc_init_array+0x32>
 800075e:	2400      	movs	r4, #0
 8000760:	cd08      	ldmia	r5!, {r3}
 8000762:	3401      	adds	r4, #1
 8000764:	4798      	blx	r3
 8000766:	42a6      	cmp	r6, r4
 8000768:	d1fa      	bne.n	8000760 <__libc_init_array+0x28>
 800076a:	bd70      	pop	{r4, r5, r6, pc}
 800076c:	080008dc 	.word	0x080008dc
 8000770:	080008dc 	.word	0x080008dc
 8000774:	080008dc 	.word	0x080008dc
 8000778:	080008e4 	.word	0x080008e4

0800077c <register_fini>:
 800077c:	4b03      	ldr	r3, [pc, #12]	; (800078c <register_fini+0x10>)
 800077e:	b510      	push	{r4, lr}
 8000780:	2b00      	cmp	r3, #0
 8000782:	d002      	beq.n	800078a <register_fini+0xe>
 8000784:	4802      	ldr	r0, [pc, #8]	; (8000790 <register_fini+0x14>)
 8000786:	f000 f805 	bl	8000794 <atexit>
 800078a:	bd10      	pop	{r4, pc}
 800078c:	00000000 	.word	0x00000000
 8000790:	080007a5 	.word	0x080007a5

08000794 <atexit>:
 8000794:	b510      	push	{r4, lr}
 8000796:	0001      	movs	r1, r0
 8000798:	2300      	movs	r3, #0
 800079a:	2200      	movs	r2, #0
 800079c:	2000      	movs	r0, #0
 800079e:	f000 f819 	bl	80007d4 <__register_exitproc>
 80007a2:	bd10      	pop	{r4, pc}

080007a4 <__libc_fini_array>:
 80007a4:	b570      	push	{r4, r5, r6, lr}
 80007a6:	4d07      	ldr	r5, [pc, #28]	; (80007c4 <__libc_fini_array+0x20>)
 80007a8:	4c07      	ldr	r4, [pc, #28]	; (80007c8 <__libc_fini_array+0x24>)
 80007aa:	1b64      	subs	r4, r4, r5
 80007ac:	10a4      	asrs	r4, r4, #2
 80007ae:	d005      	beq.n	80007bc <__libc_fini_array+0x18>
 80007b0:	3c01      	subs	r4, #1
 80007b2:	00a3      	lsls	r3, r4, #2
 80007b4:	58eb      	ldr	r3, [r5, r3]
 80007b6:	4798      	blx	r3
 80007b8:	2c00      	cmp	r4, #0
 80007ba:	d1f9      	bne.n	80007b0 <__libc_fini_array+0xc>
 80007bc:	f000 f866 	bl	800088c <_fini>
 80007c0:	bd70      	pop	{r4, r5, r6, pc}
 80007c2:	46c0      	nop			; (mov r8, r8)
 80007c4:	080008e4 	.word	0x080008e4
 80007c8:	080008e8 	.word	0x080008e8

080007cc <__retarget_lock_acquire_recursive>:
 80007cc:	4770      	bx	lr
 80007ce:	46c0      	nop			; (mov r8, r8)

080007d0 <__retarget_lock_release_recursive>:
 80007d0:	4770      	bx	lr
 80007d2:	46c0      	nop			; (mov r8, r8)

080007d4 <__register_exitproc>:
 80007d4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007d6:	46d6      	mov	lr, sl
 80007d8:	464f      	mov	r7, r9
 80007da:	4646      	mov	r6, r8
 80007dc:	b5c0      	push	{r6, r7, lr}
 80007de:	4f26      	ldr	r7, [pc, #152]	; (8000878 <__register_exitproc+0xa4>)
 80007e0:	b082      	sub	sp, #8
 80007e2:	0006      	movs	r6, r0
 80007e4:	6838      	ldr	r0, [r7, #0]
 80007e6:	4692      	mov	sl, r2
 80007e8:	4698      	mov	r8, r3
 80007ea:	4689      	mov	r9, r1
 80007ec:	f7ff ffee 	bl	80007cc <__retarget_lock_acquire_recursive>
 80007f0:	4b22      	ldr	r3, [pc, #136]	; (800087c <__register_exitproc+0xa8>)
 80007f2:	681b      	ldr	r3, [r3, #0]
 80007f4:	9301      	str	r3, [sp, #4]
 80007f6:	23a4      	movs	r3, #164	; 0xa4
 80007f8:	9a01      	ldr	r2, [sp, #4]
 80007fa:	005b      	lsls	r3, r3, #1
 80007fc:	58d5      	ldr	r5, [r2, r3]
 80007fe:	2d00      	cmp	r5, #0
 8000800:	d02e      	beq.n	8000860 <__register_exitproc+0x8c>
 8000802:	686c      	ldr	r4, [r5, #4]
 8000804:	2c1f      	cmp	r4, #31
 8000806:	dc30      	bgt.n	800086a <__register_exitproc+0x96>
 8000808:	2e00      	cmp	r6, #0
 800080a:	d10f      	bne.n	800082c <__register_exitproc+0x58>
 800080c:	1c63      	adds	r3, r4, #1
 800080e:	606b      	str	r3, [r5, #4]
 8000810:	464b      	mov	r3, r9
 8000812:	3402      	adds	r4, #2
 8000814:	00a4      	lsls	r4, r4, #2
 8000816:	6838      	ldr	r0, [r7, #0]
 8000818:	5163      	str	r3, [r4, r5]
 800081a:	f7ff ffd9 	bl	80007d0 <__retarget_lock_release_recursive>
 800081e:	2000      	movs	r0, #0
 8000820:	b002      	add	sp, #8
 8000822:	bce0      	pop	{r5, r6, r7}
 8000824:	46ba      	mov	sl, r7
 8000826:	46b1      	mov	r9, r6
 8000828:	46a8      	mov	r8, r5
 800082a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800082c:	2288      	movs	r2, #136	; 0x88
 800082e:	4651      	mov	r1, sl
 8000830:	0028      	movs	r0, r5
 8000832:	00a3      	lsls	r3, r4, #2
 8000834:	18eb      	adds	r3, r5, r3
 8000836:	5099      	str	r1, [r3, r2]
 8000838:	3a87      	subs	r2, #135	; 0x87
 800083a:	40a2      	lsls	r2, r4
 800083c:	3089      	adds	r0, #137	; 0x89
 800083e:	30ff      	adds	r0, #255	; 0xff
 8000840:	6801      	ldr	r1, [r0, #0]
 8000842:	4311      	orrs	r1, r2
 8000844:	6001      	str	r1, [r0, #0]
 8000846:	2184      	movs	r1, #132	; 0x84
 8000848:	4640      	mov	r0, r8
 800084a:	0049      	lsls	r1, r1, #1
 800084c:	5058      	str	r0, [r3, r1]
 800084e:	2e02      	cmp	r6, #2
 8000850:	d1dc      	bne.n	800080c <__register_exitproc+0x38>
 8000852:	002b      	movs	r3, r5
 8000854:	338d      	adds	r3, #141	; 0x8d
 8000856:	33ff      	adds	r3, #255	; 0xff
 8000858:	6819      	ldr	r1, [r3, #0]
 800085a:	430a      	orrs	r2, r1
 800085c:	601a      	str	r2, [r3, #0]
 800085e:	e7d5      	b.n	800080c <__register_exitproc+0x38>
 8000860:	0015      	movs	r5, r2
 8000862:	354d      	adds	r5, #77	; 0x4d
 8000864:	35ff      	adds	r5, #255	; 0xff
 8000866:	50d5      	str	r5, [r2, r3]
 8000868:	e7cb      	b.n	8000802 <__register_exitproc+0x2e>
 800086a:	6838      	ldr	r0, [r7, #0]
 800086c:	f7ff ffb0 	bl	80007d0 <__retarget_lock_release_recursive>
 8000870:	2001      	movs	r0, #1
 8000872:	4240      	negs	r0, r0
 8000874:	e7d4      	b.n	8000820 <__register_exitproc+0x4c>
 8000876:	46c0      	nop			; (mov r8, r8)
 8000878:	20000430 	.word	0x20000430
 800087c:	080008d8 	.word	0x080008d8

08000880 <_init>:
 8000880:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000882:	46c0      	nop			; (mov r8, r8)
 8000884:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000886:	bc08      	pop	{r3}
 8000888:	469e      	mov	lr, r3
 800088a:	4770      	bx	lr

0800088c <_fini>:
 800088c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800088e:	46c0      	nop			; (mov r8, r8)
 8000890:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000892:	bc08      	pop	{r3}
 8000894:	469e      	mov	lr, r3
 8000896:	4770      	bx	lr
