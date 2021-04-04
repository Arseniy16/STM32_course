
build/clock_control.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000006b8  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  08000778  08000778  00010778  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  0800077c  0800077c  0001077c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000784  08000784  00010784  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000788  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000bbc  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000bbc  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       0000092f  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000307  00000000  00000000  00020d8b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000004b0  00000000  00000000  00021092  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000110  00000000  00000000  00021542  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000e0  00000000  00000000  00021652  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000589  00000000  00000000  00021732  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000571  00000000  00000000  00021cbb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  0002222c  2**0  CONTENTS, READONLY
 17 .debug_frame      000004d0  00000000  00000000  000222f8  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000760 	.word	0x08000760

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
 8000104:	08000760 	.word	0x08000760

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
 8000132:	f000 fa1b 	bl	800056c <SystemInit>
 8000136:	f000 fa6f 	bl	8000618 <__libc_init_array>
 800013a:	f000 f995 	bl	8000468 <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000788 	.word	0x08000788
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

08000348 <LL_GPIO_IsInputPinSet>:
 8000348:	b580      	push	{r7, lr}
 800034a:	b082      	sub	sp, #8
 800034c:	af00      	add	r7, sp, #0
 800034e:	6078      	str	r0, [r7, #4]
 8000350:	6039      	str	r1, [r7, #0]
 8000352:	687b      	ldr	r3, [r7, #4]
 8000354:	691b      	ldr	r3, [r3, #16]
 8000356:	683a      	ldr	r2, [r7, #0]
 8000358:	4013      	ands	r3, r2
 800035a:	683a      	ldr	r2, [r7, #0]
 800035c:	1ad3      	subs	r3, r2, r3
 800035e:	425a      	negs	r2, r3
 8000360:	4153      	adcs	r3, r2
 8000362:	b2db      	uxtb	r3, r3
 8000364:	0018      	movs	r0, r3
 8000366:	46bd      	mov	sp, r7
 8000368:	b002      	add	sp, #8
 800036a:	bd80      	pop	{r7, pc}

0800036c <LL_GPIO_SetOutputPin>:
 800036c:	b580      	push	{r7, lr}
 800036e:	b082      	sub	sp, #8
 8000370:	af00      	add	r7, sp, #0
 8000372:	6078      	str	r0, [r7, #4]
 8000374:	6039      	str	r1, [r7, #0]
 8000376:	687b      	ldr	r3, [r7, #4]
 8000378:	683a      	ldr	r2, [r7, #0]
 800037a:	619a      	str	r2, [r3, #24]
 800037c:	46c0      	nop			; (mov r8, r8)
 800037e:	46bd      	mov	sp, r7
 8000380:	b002      	add	sp, #8
 8000382:	bd80      	pop	{r7, pc}

08000384 <LL_GPIO_ResetOutputPin>:
 8000384:	b580      	push	{r7, lr}
 8000386:	b082      	sub	sp, #8
 8000388:	af00      	add	r7, sp, #0
 800038a:	6078      	str	r0, [r7, #4]
 800038c:	6039      	str	r1, [r7, #0]
 800038e:	687b      	ldr	r3, [r7, #4]
 8000390:	683a      	ldr	r2, [r7, #0]
 8000392:	629a      	str	r2, [r3, #40]	; 0x28
 8000394:	46c0      	nop			; (mov r8, r8)
 8000396:	46bd      	mov	sp, r7
 8000398:	b002      	add	sp, #8
 800039a:	bd80      	pop	{r7, pc}

0800039c <rcc_config>:
 800039c:	b580      	push	{r7, lr}
 800039e:	af00      	add	r7, sp, #0
 80003a0:	2000      	movs	r0, #0
 80003a2:	f7ff ff8b 	bl	80002bc <LL_FLASH_SetLatency>
 80003a6:	f7ff fed9 	bl	800015c <LL_RCC_HSI_Enable>
 80003aa:	46c0      	nop			; (mov r8, r8)
 80003ac:	f7ff fee4 	bl	8000178 <LL_RCC_HSI_IsReady>
 80003b0:	0003      	movs	r3, r0
 80003b2:	2b01      	cmp	r3, #1
 80003b4:	d1fa      	bne.n	80003ac <rcc_config+0x10>
 80003b6:	23a0      	movs	r3, #160	; 0xa0
 80003b8:	039b      	lsls	r3, r3, #14
 80003ba:	0019      	movs	r1, r3
 80003bc:	2000      	movs	r0, #0
 80003be:	f7ff ff57 	bl	8000270 <LL_RCC_PLL_ConfigDomain_SYS>
 80003c2:	f7ff ff33 	bl	800022c <LL_RCC_PLL_Enable>
 80003c6:	46c0      	nop			; (mov r8, r8)
 80003c8:	f7ff ff3e 	bl	8000248 <LL_RCC_PLL_IsReady>
 80003cc:	0003      	movs	r3, r0
 80003ce:	2b01      	cmp	r3, #1
 80003d0:	d1fa      	bne.n	80003c8 <rcc_config+0x2c>
 80003d2:	2000      	movs	r0, #0
 80003d4:	f7ff ff00 	bl	80001d8 <LL_RCC_SetAHBPrescaler>
 80003d8:	2002      	movs	r0, #2
 80003da:	f7ff fedd 	bl	8000198 <LL_RCC_SetSysClkSource>
 80003de:	46c0      	nop			; (mov r8, r8)
 80003e0:	f7ff feee 	bl	80001c0 <LL_RCC_GetSysClkSource>
 80003e4:	0003      	movs	r3, r0
 80003e6:	2b08      	cmp	r3, #8
 80003e8:	d1fa      	bne.n	80003e0 <rcc_config+0x44>
 80003ea:	2000      	movs	r0, #0
 80003ec:	f7ff ff08 	bl	8000200 <LL_RCC_SetAPB1Prescaler>
 80003f0:	4b02      	ldr	r3, [pc, #8]	; (80003fc <rcc_config+0x60>)
 80003f2:	4a03      	ldr	r2, [pc, #12]	; (8000400 <rcc_config+0x64>)
 80003f4:	601a      	str	r2, [r3, #0]
 80003f6:	46c0      	nop			; (mov r8, r8)
 80003f8:	46bd      	mov	sp, r7
 80003fa:	bd80      	pop	{r7, pc}
 80003fc:	20000000 	.word	0x20000000
 8000400:	02dc6c00 	.word	0x02dc6c00

08000404 <gpio_config>:
 8000404:	b580      	push	{r7, lr}
 8000406:	af00      	add	r7, sp, #0
 8000408:	2380      	movs	r3, #128	; 0x80
 800040a:	031b      	lsls	r3, r3, #12
 800040c:	0018      	movs	r0, r3
 800040e:	f7ff ff69 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000412:	2380      	movs	r3, #128	; 0x80
 8000414:	005b      	lsls	r3, r3, #1
 8000416:	480d      	ldr	r0, [pc, #52]	; (800044c <gpio_config+0x48>)
 8000418:	2201      	movs	r2, #1
 800041a:	0019      	movs	r1, r3
 800041c:	f7ff ff78 	bl	8000310 <LL_GPIO_SetPinMode>
 8000420:	2380      	movs	r3, #128	; 0x80
 8000422:	009b      	lsls	r3, r3, #2
 8000424:	4809      	ldr	r0, [pc, #36]	; (800044c <gpio_config+0x48>)
 8000426:	2201      	movs	r2, #1
 8000428:	0019      	movs	r1, r3
 800042a:	f7ff ff71 	bl	8000310 <LL_GPIO_SetPinMode>
 800042e:	2380      	movs	r3, #128	; 0x80
 8000430:	029b      	lsls	r3, r3, #10
 8000432:	0018      	movs	r0, r3
 8000434:	f7ff ff56 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000438:	2390      	movs	r3, #144	; 0x90
 800043a:	05db      	lsls	r3, r3, #23
 800043c:	2200      	movs	r2, #0
 800043e:	2101      	movs	r1, #1
 8000440:	0018      	movs	r0, r3
 8000442:	f7ff ff65 	bl	8000310 <LL_GPIO_SetPinMode>
 8000446:	46c0      	nop			; (mov r8, r8)
 8000448:	46bd      	mov	sp, r7
 800044a:	bd80      	pop	{r7, pc}
 800044c:	48000800 	.word	0x48000800

08000450 <delay>:
 8000450:	b580      	push	{r7, lr}
 8000452:	4e02      	ldr	r6, [pc, #8]	; (800045c <delay+0xc>)
 8000454:	3e01      	subs	r6, #1
 8000456:	2e00      	cmp	r6, #0
 8000458:	d1fc      	bne.n	8000454 <delay+0x4>
 800045a:	bd80      	pop	{r7, pc}
 800045c:	0000ea60 	.word	0x0000ea60
 8000460:	00927c00 	.word	0x00927c00
 8000464:	46c0      	nop			; (mov r8, r8)
	...

08000468 <main>:
 8000468:	b580      	push	{r7, lr}
 800046a:	b084      	sub	sp, #16
 800046c:	af00      	add	r7, sp, #0
 800046e:	f7ff ff95 	bl	800039c <rcc_config>
 8000472:	f7ff ffc7 	bl	8000404 <gpio_config>
 8000476:	2300      	movs	r3, #0
 8000478:	60fb      	str	r3, [r7, #12]
 800047a:	2300      	movs	r3, #0
 800047c:	60bb      	str	r3, [r7, #8]
 800047e:	2300      	movs	r3, #0
 8000480:	607b      	str	r3, [r7, #4]
 8000482:	2300      	movs	r3, #0
 8000484:	60fb      	str	r3, [r7, #12]
 8000486:	e004      	b.n	8000492 <main+0x2a>
 8000488:	f7ff ffe2 	bl	8000450 <delay>
 800048c:	68fb      	ldr	r3, [r7, #12]
 800048e:	3301      	adds	r3, #1
 8000490:	60fb      	str	r3, [r7, #12]
 8000492:	68fb      	ldr	r3, [r7, #12]
 8000494:	2b02      	cmp	r3, #2
 8000496:	dc07      	bgt.n	80004a8 <main+0x40>
 8000498:	2390      	movs	r3, #144	; 0x90
 800049a:	05db      	lsls	r3, r3, #23
 800049c:	2101      	movs	r1, #1
 800049e:	0018      	movs	r0, r3
 80004a0:	f7ff ff52 	bl	8000348 <LL_GPIO_IsInputPinSet>
 80004a4:	1e03      	subs	r3, r0, #0
 80004a6:	d1ef      	bne.n	8000488 <main+0x20>
 80004a8:	68fb      	ldr	r3, [r7, #12]
 80004aa:	2b02      	cmp	r3, #2
 80004ac:	dd46      	ble.n	800053c <main+0xd4>
 80004ae:	68bb      	ldr	r3, [r7, #8]
 80004b0:	607b      	str	r3, [r7, #4]
 80004b2:	687b      	ldr	r3, [r7, #4]
 80004b4:	2b00      	cmp	r3, #0
 80004b6:	d10e      	bne.n	80004d6 <main+0x6e>
 80004b8:	2380      	movs	r3, #128	; 0x80
 80004ba:	009b      	lsls	r3, r3, #2
 80004bc:	4a2a      	ldr	r2, [pc, #168]	; (8000568 <main+0x100>)
 80004be:	0019      	movs	r1, r3
 80004c0:	0010      	movs	r0, r2
 80004c2:	f7ff ff53 	bl	800036c <LL_GPIO_SetOutputPin>
 80004c6:	2380      	movs	r3, #128	; 0x80
 80004c8:	005b      	lsls	r3, r3, #1
 80004ca:	4a27      	ldr	r2, [pc, #156]	; (8000568 <main+0x100>)
 80004cc:	0019      	movs	r1, r3
 80004ce:	0010      	movs	r0, r2
 80004d0:	f7ff ff58 	bl	8000384 <LL_GPIO_ResetOutputPin>
 80004d4:	e7d5      	b.n	8000482 <main+0x1a>
 80004d6:	687b      	ldr	r3, [r7, #4]
 80004d8:	2b01      	cmp	r3, #1
 80004da:	d10e      	bne.n	80004fa <main+0x92>
 80004dc:	2380      	movs	r3, #128	; 0x80
 80004de:	005b      	lsls	r3, r3, #1
 80004e0:	4a21      	ldr	r2, [pc, #132]	; (8000568 <main+0x100>)
 80004e2:	0019      	movs	r1, r3
 80004e4:	0010      	movs	r0, r2
 80004e6:	f7ff ff41 	bl	800036c <LL_GPIO_SetOutputPin>
 80004ea:	2380      	movs	r3, #128	; 0x80
 80004ec:	009b      	lsls	r3, r3, #2
 80004ee:	4a1e      	ldr	r2, [pc, #120]	; (8000568 <main+0x100>)
 80004f0:	0019      	movs	r1, r3
 80004f2:	0010      	movs	r0, r2
 80004f4:	f7ff ff46 	bl	8000384 <LL_GPIO_ResetOutputPin>
 80004f8:	e7c3      	b.n	8000482 <main+0x1a>
 80004fa:	687b      	ldr	r3, [r7, #4]
 80004fc:	2b02      	cmp	r3, #2
 80004fe:	d10e      	bne.n	800051e <main+0xb6>
 8000500:	2380      	movs	r3, #128	; 0x80
 8000502:	005b      	lsls	r3, r3, #1
 8000504:	4a18      	ldr	r2, [pc, #96]	; (8000568 <main+0x100>)
 8000506:	0019      	movs	r1, r3
 8000508:	0010      	movs	r0, r2
 800050a:	f7ff ff2f 	bl	800036c <LL_GPIO_SetOutputPin>
 800050e:	2380      	movs	r3, #128	; 0x80
 8000510:	009b      	lsls	r3, r3, #2
 8000512:	4a15      	ldr	r2, [pc, #84]	; (8000568 <main+0x100>)
 8000514:	0019      	movs	r1, r3
 8000516:	0010      	movs	r0, r2
 8000518:	f7ff ff28 	bl	800036c <LL_GPIO_SetOutputPin>
 800051c:	e7b1      	b.n	8000482 <main+0x1a>
 800051e:	2380      	movs	r3, #128	; 0x80
 8000520:	005b      	lsls	r3, r3, #1
 8000522:	4a11      	ldr	r2, [pc, #68]	; (8000568 <main+0x100>)
 8000524:	0019      	movs	r1, r3
 8000526:	0010      	movs	r0, r2
 8000528:	f7ff ff2c 	bl	8000384 <LL_GPIO_ResetOutputPin>
 800052c:	2380      	movs	r3, #128	; 0x80
 800052e:	009b      	lsls	r3, r3, #2
 8000530:	4a0d      	ldr	r2, [pc, #52]	; (8000568 <main+0x100>)
 8000532:	0019      	movs	r1, r3
 8000534:	0010      	movs	r0, r2
 8000536:	f7ff ff25 	bl	8000384 <LL_GPIO_ResetOutputPin>
 800053a:	e7a2      	b.n	8000482 <main+0x1a>
 800053c:	687b      	ldr	r3, [r7, #4]
 800053e:	2b00      	cmp	r3, #0
 8000540:	d102      	bne.n	8000548 <main+0xe0>
 8000542:	2301      	movs	r3, #1
 8000544:	60bb      	str	r3, [r7, #8]
 8000546:	e79c      	b.n	8000482 <main+0x1a>
 8000548:	687b      	ldr	r3, [r7, #4]
 800054a:	2b01      	cmp	r3, #1
 800054c:	d102      	bne.n	8000554 <main+0xec>
 800054e:	2302      	movs	r3, #2
 8000550:	60bb      	str	r3, [r7, #8]
 8000552:	e796      	b.n	8000482 <main+0x1a>
 8000554:	687b      	ldr	r3, [r7, #4]
 8000556:	2b02      	cmp	r3, #2
 8000558:	d102      	bne.n	8000560 <main+0xf8>
 800055a:	2303      	movs	r3, #3
 800055c:	60bb      	str	r3, [r7, #8]
 800055e:	e790      	b.n	8000482 <main+0x1a>
 8000560:	2300      	movs	r3, #0
 8000562:	60bb      	str	r3, [r7, #8]
 8000564:	e78d      	b.n	8000482 <main+0x1a>
 8000566:	46c0      	nop			; (mov r8, r8)
 8000568:	48000800 	.word	0x48000800

0800056c <SystemInit>:
 800056c:	b580      	push	{r7, lr}
 800056e:	af00      	add	r7, sp, #0
 8000570:	4b1a      	ldr	r3, [pc, #104]	; (80005dc <SystemInit+0x70>)
 8000572:	681a      	ldr	r2, [r3, #0]
 8000574:	4b19      	ldr	r3, [pc, #100]	; (80005dc <SystemInit+0x70>)
 8000576:	2101      	movs	r1, #1
 8000578:	430a      	orrs	r2, r1
 800057a:	601a      	str	r2, [r3, #0]
 800057c:	4b17      	ldr	r3, [pc, #92]	; (80005dc <SystemInit+0x70>)
 800057e:	685a      	ldr	r2, [r3, #4]
 8000580:	4b16      	ldr	r3, [pc, #88]	; (80005dc <SystemInit+0x70>)
 8000582:	4917      	ldr	r1, [pc, #92]	; (80005e0 <SystemInit+0x74>)
 8000584:	400a      	ands	r2, r1
 8000586:	605a      	str	r2, [r3, #4]
 8000588:	4b14      	ldr	r3, [pc, #80]	; (80005dc <SystemInit+0x70>)
 800058a:	681a      	ldr	r2, [r3, #0]
 800058c:	4b13      	ldr	r3, [pc, #76]	; (80005dc <SystemInit+0x70>)
 800058e:	4915      	ldr	r1, [pc, #84]	; (80005e4 <SystemInit+0x78>)
 8000590:	400a      	ands	r2, r1
 8000592:	601a      	str	r2, [r3, #0]
 8000594:	4b11      	ldr	r3, [pc, #68]	; (80005dc <SystemInit+0x70>)
 8000596:	681a      	ldr	r2, [r3, #0]
 8000598:	4b10      	ldr	r3, [pc, #64]	; (80005dc <SystemInit+0x70>)
 800059a:	4913      	ldr	r1, [pc, #76]	; (80005e8 <SystemInit+0x7c>)
 800059c:	400a      	ands	r2, r1
 800059e:	601a      	str	r2, [r3, #0]
 80005a0:	4b0e      	ldr	r3, [pc, #56]	; (80005dc <SystemInit+0x70>)
 80005a2:	685a      	ldr	r2, [r3, #4]
 80005a4:	4b0d      	ldr	r3, [pc, #52]	; (80005dc <SystemInit+0x70>)
 80005a6:	4911      	ldr	r1, [pc, #68]	; (80005ec <SystemInit+0x80>)
 80005a8:	400a      	ands	r2, r1
 80005aa:	605a      	str	r2, [r3, #4]
 80005ac:	4b0b      	ldr	r3, [pc, #44]	; (80005dc <SystemInit+0x70>)
 80005ae:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80005b0:	4b0a      	ldr	r3, [pc, #40]	; (80005dc <SystemInit+0x70>)
 80005b2:	210f      	movs	r1, #15
 80005b4:	438a      	bics	r2, r1
 80005b6:	62da      	str	r2, [r3, #44]	; 0x2c
 80005b8:	4b08      	ldr	r3, [pc, #32]	; (80005dc <SystemInit+0x70>)
 80005ba:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80005bc:	4b07      	ldr	r3, [pc, #28]	; (80005dc <SystemInit+0x70>)
 80005be:	490c      	ldr	r1, [pc, #48]	; (80005f0 <SystemInit+0x84>)
 80005c0:	400a      	ands	r2, r1
 80005c2:	631a      	str	r2, [r3, #48]	; 0x30
 80005c4:	4b05      	ldr	r3, [pc, #20]	; (80005dc <SystemInit+0x70>)
 80005c6:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80005c8:	4b04      	ldr	r3, [pc, #16]	; (80005dc <SystemInit+0x70>)
 80005ca:	2101      	movs	r1, #1
 80005cc:	438a      	bics	r2, r1
 80005ce:	635a      	str	r2, [r3, #52]	; 0x34
 80005d0:	4b02      	ldr	r3, [pc, #8]	; (80005dc <SystemInit+0x70>)
 80005d2:	2200      	movs	r2, #0
 80005d4:	609a      	str	r2, [r3, #8]
 80005d6:	46c0      	nop			; (mov r8, r8)
 80005d8:	46bd      	mov	sp, r7
 80005da:	bd80      	pop	{r7, pc}
 80005dc:	40021000 	.word	0x40021000
 80005e0:	f8ffb80c 	.word	0xf8ffb80c
 80005e4:	fef6ffff 	.word	0xfef6ffff
 80005e8:	fffbffff 	.word	0xfffbffff
 80005ec:	ffc0ffff 	.word	0xffc0ffff
 80005f0:	fffffeac 	.word	0xfffffeac

080005f4 <NMI_Handler>:
 80005f4:	b580      	push	{r7, lr}
 80005f6:	af00      	add	r7, sp, #0
 80005f8:	46c0      	nop			; (mov r8, r8)
 80005fa:	46bd      	mov	sp, r7
 80005fc:	bd80      	pop	{r7, pc}

080005fe <HardFault_Handler>:
 80005fe:	b580      	push	{r7, lr}
 8000600:	af00      	add	r7, sp, #0
 8000602:	e7fe      	b.n	8000602 <HardFault_Handler+0x4>

08000604 <SVC_Handler>:
 8000604:	b580      	push	{r7, lr}
 8000606:	af00      	add	r7, sp, #0
 8000608:	46c0      	nop			; (mov r8, r8)
 800060a:	46bd      	mov	sp, r7
 800060c:	bd80      	pop	{r7, pc}

0800060e <PendSV_Handler>:
 800060e:	b580      	push	{r7, lr}
 8000610:	af00      	add	r7, sp, #0
 8000612:	46c0      	nop			; (mov r8, r8)
 8000614:	46bd      	mov	sp, r7
 8000616:	bd80      	pop	{r7, pc}

08000618 <__libc_init_array>:
 8000618:	b570      	push	{r4, r5, r6, lr}
 800061a:	4d0c      	ldr	r5, [pc, #48]	; (800064c <__libc_init_array+0x34>)
 800061c:	4e0c      	ldr	r6, [pc, #48]	; (8000650 <__libc_init_array+0x38>)
 800061e:	1b76      	subs	r6, r6, r5
 8000620:	10b6      	asrs	r6, r6, #2
 8000622:	d005      	beq.n	8000630 <__libc_init_array+0x18>
 8000624:	2400      	movs	r4, #0
 8000626:	cd08      	ldmia	r5!, {r3}
 8000628:	3401      	adds	r4, #1
 800062a:	4798      	blx	r3
 800062c:	42a6      	cmp	r6, r4
 800062e:	d1fa      	bne.n	8000626 <__libc_init_array+0xe>
 8000630:	f000 f896 	bl	8000760 <_init>
 8000634:	4d07      	ldr	r5, [pc, #28]	; (8000654 <__libc_init_array+0x3c>)
 8000636:	4e08      	ldr	r6, [pc, #32]	; (8000658 <__libc_init_array+0x40>)
 8000638:	1b76      	subs	r6, r6, r5
 800063a:	10b6      	asrs	r6, r6, #2
 800063c:	d005      	beq.n	800064a <__libc_init_array+0x32>
 800063e:	2400      	movs	r4, #0
 8000640:	cd08      	ldmia	r5!, {r3}
 8000642:	3401      	adds	r4, #1
 8000644:	4798      	blx	r3
 8000646:	42a6      	cmp	r6, r4
 8000648:	d1fa      	bne.n	8000640 <__libc_init_array+0x28>
 800064a:	bd70      	pop	{r4, r5, r6, pc}
 800064c:	0800077c 	.word	0x0800077c
 8000650:	0800077c 	.word	0x0800077c
 8000654:	0800077c 	.word	0x0800077c
 8000658:	08000784 	.word	0x08000784

0800065c <register_fini>:
 800065c:	4b03      	ldr	r3, [pc, #12]	; (800066c <register_fini+0x10>)
 800065e:	b510      	push	{r4, lr}
 8000660:	2b00      	cmp	r3, #0
 8000662:	d002      	beq.n	800066a <register_fini+0xe>
 8000664:	4802      	ldr	r0, [pc, #8]	; (8000670 <register_fini+0x14>)
 8000666:	f000 f805 	bl	8000674 <atexit>
 800066a:	bd10      	pop	{r4, pc}
 800066c:	00000000 	.word	0x00000000
 8000670:	08000685 	.word	0x08000685

08000674 <atexit>:
 8000674:	b510      	push	{r4, lr}
 8000676:	0001      	movs	r1, r0
 8000678:	2300      	movs	r3, #0
 800067a:	2200      	movs	r2, #0
 800067c:	2000      	movs	r0, #0
 800067e:	f000 f819 	bl	80006b4 <__register_exitproc>
 8000682:	bd10      	pop	{r4, pc}

08000684 <__libc_fini_array>:
 8000684:	b570      	push	{r4, r5, r6, lr}
 8000686:	4d07      	ldr	r5, [pc, #28]	; (80006a4 <__libc_fini_array+0x20>)
 8000688:	4c07      	ldr	r4, [pc, #28]	; (80006a8 <__libc_fini_array+0x24>)
 800068a:	1b64      	subs	r4, r4, r5
 800068c:	10a4      	asrs	r4, r4, #2
 800068e:	d005      	beq.n	800069c <__libc_fini_array+0x18>
 8000690:	3c01      	subs	r4, #1
 8000692:	00a3      	lsls	r3, r4, #2
 8000694:	58eb      	ldr	r3, [r5, r3]
 8000696:	4798      	blx	r3
 8000698:	2c00      	cmp	r4, #0
 800069a:	d1f9      	bne.n	8000690 <__libc_fini_array+0xc>
 800069c:	f000 f866 	bl	800076c <_fini>
 80006a0:	bd70      	pop	{r4, r5, r6, pc}
 80006a2:	46c0      	nop			; (mov r8, r8)
 80006a4:	08000784 	.word	0x08000784
 80006a8:	08000788 	.word	0x08000788

080006ac <__retarget_lock_acquire_recursive>:
 80006ac:	4770      	bx	lr
 80006ae:	46c0      	nop			; (mov r8, r8)

080006b0 <__retarget_lock_release_recursive>:
 80006b0:	4770      	bx	lr
 80006b2:	46c0      	nop			; (mov r8, r8)

080006b4 <__register_exitproc>:
 80006b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80006b6:	46d6      	mov	lr, sl
 80006b8:	464f      	mov	r7, r9
 80006ba:	4646      	mov	r6, r8
 80006bc:	b5c0      	push	{r6, r7, lr}
 80006be:	4f26      	ldr	r7, [pc, #152]	; (8000758 <__register_exitproc+0xa4>)
 80006c0:	b082      	sub	sp, #8
 80006c2:	0006      	movs	r6, r0
 80006c4:	6838      	ldr	r0, [r7, #0]
 80006c6:	4692      	mov	sl, r2
 80006c8:	4698      	mov	r8, r3
 80006ca:	4689      	mov	r9, r1
 80006cc:	f7ff ffee 	bl	80006ac <__retarget_lock_acquire_recursive>
 80006d0:	4b22      	ldr	r3, [pc, #136]	; (800075c <__register_exitproc+0xa8>)
 80006d2:	681b      	ldr	r3, [r3, #0]
 80006d4:	9301      	str	r3, [sp, #4]
 80006d6:	23a4      	movs	r3, #164	; 0xa4
 80006d8:	9a01      	ldr	r2, [sp, #4]
 80006da:	005b      	lsls	r3, r3, #1
 80006dc:	58d5      	ldr	r5, [r2, r3]
 80006de:	2d00      	cmp	r5, #0
 80006e0:	d02e      	beq.n	8000740 <__register_exitproc+0x8c>
 80006e2:	686c      	ldr	r4, [r5, #4]
 80006e4:	2c1f      	cmp	r4, #31
 80006e6:	dc30      	bgt.n	800074a <__register_exitproc+0x96>
 80006e8:	2e00      	cmp	r6, #0
 80006ea:	d10f      	bne.n	800070c <__register_exitproc+0x58>
 80006ec:	1c63      	adds	r3, r4, #1
 80006ee:	606b      	str	r3, [r5, #4]
 80006f0:	464b      	mov	r3, r9
 80006f2:	3402      	adds	r4, #2
 80006f4:	00a4      	lsls	r4, r4, #2
 80006f6:	6838      	ldr	r0, [r7, #0]
 80006f8:	5163      	str	r3, [r4, r5]
 80006fa:	f7ff ffd9 	bl	80006b0 <__retarget_lock_release_recursive>
 80006fe:	2000      	movs	r0, #0
 8000700:	b002      	add	sp, #8
 8000702:	bce0      	pop	{r5, r6, r7}
 8000704:	46ba      	mov	sl, r7
 8000706:	46b1      	mov	r9, r6
 8000708:	46a8      	mov	r8, r5
 800070a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800070c:	2288      	movs	r2, #136	; 0x88
 800070e:	4651      	mov	r1, sl
 8000710:	0028      	movs	r0, r5
 8000712:	00a3      	lsls	r3, r4, #2
 8000714:	18eb      	adds	r3, r5, r3
 8000716:	5099      	str	r1, [r3, r2]
 8000718:	3a87      	subs	r2, #135	; 0x87
 800071a:	40a2      	lsls	r2, r4
 800071c:	3089      	adds	r0, #137	; 0x89
 800071e:	30ff      	adds	r0, #255	; 0xff
 8000720:	6801      	ldr	r1, [r0, #0]
 8000722:	4311      	orrs	r1, r2
 8000724:	6001      	str	r1, [r0, #0]
 8000726:	2184      	movs	r1, #132	; 0x84
 8000728:	4640      	mov	r0, r8
 800072a:	0049      	lsls	r1, r1, #1
 800072c:	5058      	str	r0, [r3, r1]
 800072e:	2e02      	cmp	r6, #2
 8000730:	d1dc      	bne.n	80006ec <__register_exitproc+0x38>
 8000732:	002b      	movs	r3, r5
 8000734:	338d      	adds	r3, #141	; 0x8d
 8000736:	33ff      	adds	r3, #255	; 0xff
 8000738:	6819      	ldr	r1, [r3, #0]
 800073a:	430a      	orrs	r2, r1
 800073c:	601a      	str	r2, [r3, #0]
 800073e:	e7d5      	b.n	80006ec <__register_exitproc+0x38>
 8000740:	0015      	movs	r5, r2
 8000742:	354d      	adds	r5, #77	; 0x4d
 8000744:	35ff      	adds	r5, #255	; 0xff
 8000746:	50d5      	str	r5, [r2, r3]
 8000748:	e7cb      	b.n	80006e2 <__register_exitproc+0x2e>
 800074a:	6838      	ldr	r0, [r7, #0]
 800074c:	f7ff ffb0 	bl	80006b0 <__retarget_lock_release_recursive>
 8000750:	2001      	movs	r0, #1
 8000752:	4240      	negs	r0, r0
 8000754:	e7d4      	b.n	8000700 <__register_exitproc+0x4c>
 8000756:	46c0      	nop			; (mov r8, r8)
 8000758:	20000430 	.word	0x20000430
 800075c:	08000778 	.word	0x08000778

08000760 <_init>:
 8000760:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000762:	46c0      	nop			; (mov r8, r8)
 8000764:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000766:	bc08      	pop	{r3}
 8000768:	469e      	mov	lr, r3
 800076a:	4770      	bx	lr

0800076c <_fini>:
 800076c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800076e:	46c0      	nop			; (mov r8, r8)
 8000770:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000772:	bc08      	pop	{r3}
 8000774:	469e      	mov	lr, r3
 8000776:	4770      	bx	lr
