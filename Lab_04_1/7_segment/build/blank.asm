
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000007c4  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000044  08000884  08000884  00010884  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080008c8  080008c8  000108c8  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080008d0  080008d0  000108d0  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080008d4  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000d08  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000d08  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000993  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000332  00000000  00000000  00020def  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000520  00000000  00000000  00021121  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000120  00000000  00000000  00021641  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000f0  00000000  00000000  00021761  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000607  00000000  00000000  00021851  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000005a3  00000000  00000000  00021e58  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  000223fb  2**0  CONTENTS, READONLY
 17 .debug_frame      00000510  00000000  00000000  000224c8  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	0800086c 	.word	0x0800086c

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
 8000104:	0800086c 	.word	0x0800086c

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
 8000132:	f000 faa1 	bl	8000678 <SystemInit>
 8000136:	f000 faf5 	bl	8000724 <__libc_init_array>
 800013a:	f000 fa57 	bl	80005ec <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	080008d4 	.word	0x080008d4
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

0800036c <LL_GPIO_WriteOutputPort>:
 800036c:	b580      	push	{r7, lr}
 800036e:	b082      	sub	sp, #8
 8000370:	af00      	add	r7, sp, #0
 8000372:	6078      	str	r0, [r7, #4]
 8000374:	6039      	str	r1, [r7, #0]
 8000376:	687b      	ldr	r3, [r7, #4]
 8000378:	683a      	ldr	r2, [r7, #0]
 800037a:	615a      	str	r2, [r3, #20]
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

0800039c <LL_GPIO_TogglePin>:
 800039c:	b580      	push	{r7, lr}
 800039e:	b082      	sub	sp, #8
 80003a0:	af00      	add	r7, sp, #0
 80003a2:	6078      	str	r0, [r7, #4]
 80003a4:	6039      	str	r1, [r7, #0]
 80003a6:	687b      	ldr	r3, [r7, #4]
 80003a8:	695a      	ldr	r2, [r3, #20]
 80003aa:	683b      	ldr	r3, [r7, #0]
 80003ac:	405a      	eors	r2, r3
 80003ae:	687b      	ldr	r3, [r7, #4]
 80003b0:	615a      	str	r2, [r3, #20]
 80003b2:	46c0      	nop			; (mov r8, r8)
 80003b4:	46bd      	mov	sp, r7
 80003b6:	b002      	add	sp, #8
 80003b8:	bd80      	pop	{r7, pc}
	...

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
 8000436:	482b      	ldr	r0, [pc, #172]	; (80004e4 <gpio_config+0xc0>)
 8000438:	2201      	movs	r2, #1
 800043a:	0019      	movs	r1, r3
 800043c:	f7ff ff68 	bl	8000310 <LL_GPIO_SetPinMode>
 8000440:	2380      	movs	r3, #128	; 0x80
 8000442:	009b      	lsls	r3, r3, #2
 8000444:	4827      	ldr	r0, [pc, #156]	; (80004e4 <gpio_config+0xc0>)
 8000446:	2201      	movs	r2, #1
 8000448:	0019      	movs	r1, r3
 800044a:	f7ff ff61 	bl	8000310 <LL_GPIO_SetPinMode>
 800044e:	4b25      	ldr	r3, [pc, #148]	; (80004e4 <gpio_config+0xc0>)
 8000450:	2201      	movs	r2, #1
 8000452:	2101      	movs	r1, #1
 8000454:	0018      	movs	r0, r3
 8000456:	f7ff ff5b 	bl	8000310 <LL_GPIO_SetPinMode>
 800045a:	2380      	movs	r3, #128	; 0x80
 800045c:	029b      	lsls	r3, r3, #10
 800045e:	0018      	movs	r0, r3
 8000460:	f7ff ff40 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000464:	2390      	movs	r3, #144	; 0x90
 8000466:	05db      	lsls	r3, r3, #23
 8000468:	2200      	movs	r2, #0
 800046a:	2101      	movs	r1, #1
 800046c:	0018      	movs	r0, r3
 800046e:	f7ff ff4f 	bl	8000310 <LL_GPIO_SetPinMode>
 8000472:	2380      	movs	r3, #128	; 0x80
 8000474:	02db      	lsls	r3, r3, #11
 8000476:	0018      	movs	r0, r3
 8000478:	f7ff ff34 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 800047c:	4b1a      	ldr	r3, [pc, #104]	; (80004e8 <gpio_config+0xc4>)
 800047e:	2201      	movs	r2, #1
 8000480:	2101      	movs	r1, #1
 8000482:	0018      	movs	r0, r3
 8000484:	f7ff ff44 	bl	8000310 <LL_GPIO_SetPinMode>
 8000488:	4b17      	ldr	r3, [pc, #92]	; (80004e8 <gpio_config+0xc4>)
 800048a:	2201      	movs	r2, #1
 800048c:	2102      	movs	r1, #2
 800048e:	0018      	movs	r0, r3
 8000490:	f7ff ff3e 	bl	8000310 <LL_GPIO_SetPinMode>
 8000494:	4b14      	ldr	r3, [pc, #80]	; (80004e8 <gpio_config+0xc4>)
 8000496:	2201      	movs	r2, #1
 8000498:	2104      	movs	r1, #4
 800049a:	0018      	movs	r0, r3
 800049c:	f7ff ff38 	bl	8000310 <LL_GPIO_SetPinMode>
 80004a0:	4b11      	ldr	r3, [pc, #68]	; (80004e8 <gpio_config+0xc4>)
 80004a2:	2201      	movs	r2, #1
 80004a4:	2108      	movs	r1, #8
 80004a6:	0018      	movs	r0, r3
 80004a8:	f7ff ff32 	bl	8000310 <LL_GPIO_SetPinMode>
 80004ac:	4b0e      	ldr	r3, [pc, #56]	; (80004e8 <gpio_config+0xc4>)
 80004ae:	2201      	movs	r2, #1
 80004b0:	2110      	movs	r1, #16
 80004b2:	0018      	movs	r0, r3
 80004b4:	f7ff ff2c 	bl	8000310 <LL_GPIO_SetPinMode>
 80004b8:	4b0b      	ldr	r3, [pc, #44]	; (80004e8 <gpio_config+0xc4>)
 80004ba:	2201      	movs	r2, #1
 80004bc:	2120      	movs	r1, #32
 80004be:	0018      	movs	r0, r3
 80004c0:	f7ff ff26 	bl	8000310 <LL_GPIO_SetPinMode>
 80004c4:	4b08      	ldr	r3, [pc, #32]	; (80004e8 <gpio_config+0xc4>)
 80004c6:	2201      	movs	r2, #1
 80004c8:	2140      	movs	r1, #64	; 0x40
 80004ca:	0018      	movs	r0, r3
 80004cc:	f7ff ff20 	bl	8000310 <LL_GPIO_SetPinMode>
 80004d0:	4b05      	ldr	r3, [pc, #20]	; (80004e8 <gpio_config+0xc4>)
 80004d2:	2201      	movs	r2, #1
 80004d4:	2180      	movs	r1, #128	; 0x80
 80004d6:	0018      	movs	r0, r3
 80004d8:	f7ff ff1a 	bl	8000310 <LL_GPIO_SetPinMode>
 80004dc:	46c0      	nop			; (mov r8, r8)
 80004de:	46bd      	mov	sp, r7
 80004e0:	bd80      	pop	{r7, pc}
 80004e2:	46c0      	nop			; (mov r8, r8)
 80004e4:	48000800 	.word	0x48000800
 80004e8:	48000400 	.word	0x48000400

080004ec <delay_10ms>:
 80004ec:	b580      	push	{r7, lr}
 80004ee:	4e02      	ldr	r6, [pc, #8]	; (80004f8 <delay_10ms+0xc>)
 80004f0:	3e01      	subs	r6, #1
 80004f2:	2e00      	cmp	r6, #0
 80004f4:	d1fc      	bne.n	80004f0 <delay_10ms+0x4>
 80004f6:	bd80      	pop	{r7, pc}
 80004f8:	0000ea60 	.word	0x0000ea60
 80004fc:	46c0      	nop			; (mov r8, r8)
	...

08000500 <show_digit>:
 8000500:	b580      	push	{r7, lr}
 8000502:	b082      	sub	sp, #8
 8000504:	af00      	add	r7, sp, #0
 8000506:	6078      	str	r0, [r7, #4]
 8000508:	687b      	ldr	r3, [r7, #4]
 800050a:	2b0f      	cmp	r3, #15
 800050c:	d865      	bhi.n	80005da <show_digit+0xda>
 800050e:	687b      	ldr	r3, [r7, #4]
 8000510:	009a      	lsls	r2, r3, #2
 8000512:	4b34      	ldr	r3, [pc, #208]	; (80005e4 <show_digit+0xe4>)
 8000514:	18d3      	adds	r3, r2, r3
 8000516:	681b      	ldr	r3, [r3, #0]
 8000518:	469f      	mov	pc, r3
 800051a:	4b33      	ldr	r3, [pc, #204]	; (80005e8 <show_digit+0xe8>)
 800051c:	213f      	movs	r1, #63	; 0x3f
 800051e:	0018      	movs	r0, r3
 8000520:	f7ff ff24 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000524:	e05a      	b.n	80005dc <show_digit+0xdc>
 8000526:	4b30      	ldr	r3, [pc, #192]	; (80005e8 <show_digit+0xe8>)
 8000528:	2106      	movs	r1, #6
 800052a:	0018      	movs	r0, r3
 800052c:	f7ff ff1e 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000530:	e054      	b.n	80005dc <show_digit+0xdc>
 8000532:	4b2d      	ldr	r3, [pc, #180]	; (80005e8 <show_digit+0xe8>)
 8000534:	215b      	movs	r1, #91	; 0x5b
 8000536:	0018      	movs	r0, r3
 8000538:	f7ff ff18 	bl	800036c <LL_GPIO_WriteOutputPort>
 800053c:	e04e      	b.n	80005dc <show_digit+0xdc>
 800053e:	4b2a      	ldr	r3, [pc, #168]	; (80005e8 <show_digit+0xe8>)
 8000540:	214f      	movs	r1, #79	; 0x4f
 8000542:	0018      	movs	r0, r3
 8000544:	f7ff ff12 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000548:	e048      	b.n	80005dc <show_digit+0xdc>
 800054a:	4b27      	ldr	r3, [pc, #156]	; (80005e8 <show_digit+0xe8>)
 800054c:	2166      	movs	r1, #102	; 0x66
 800054e:	0018      	movs	r0, r3
 8000550:	f7ff ff0c 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000554:	e042      	b.n	80005dc <show_digit+0xdc>
 8000556:	4b24      	ldr	r3, [pc, #144]	; (80005e8 <show_digit+0xe8>)
 8000558:	216d      	movs	r1, #109	; 0x6d
 800055a:	0018      	movs	r0, r3
 800055c:	f7ff ff06 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000560:	e03c      	b.n	80005dc <show_digit+0xdc>
 8000562:	4b21      	ldr	r3, [pc, #132]	; (80005e8 <show_digit+0xe8>)
 8000564:	217d      	movs	r1, #125	; 0x7d
 8000566:	0018      	movs	r0, r3
 8000568:	f7ff ff00 	bl	800036c <LL_GPIO_WriteOutputPort>
 800056c:	e036      	b.n	80005dc <show_digit+0xdc>
 800056e:	4b1e      	ldr	r3, [pc, #120]	; (80005e8 <show_digit+0xe8>)
 8000570:	2107      	movs	r1, #7
 8000572:	0018      	movs	r0, r3
 8000574:	f7ff fefa 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000578:	e030      	b.n	80005dc <show_digit+0xdc>
 800057a:	4b1b      	ldr	r3, [pc, #108]	; (80005e8 <show_digit+0xe8>)
 800057c:	217f      	movs	r1, #127	; 0x7f
 800057e:	0018      	movs	r0, r3
 8000580:	f7ff fef4 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000584:	e02a      	b.n	80005dc <show_digit+0xdc>
 8000586:	4b18      	ldr	r3, [pc, #96]	; (80005e8 <show_digit+0xe8>)
 8000588:	216f      	movs	r1, #111	; 0x6f
 800058a:	0018      	movs	r0, r3
 800058c:	f7ff feee 	bl	800036c <LL_GPIO_WriteOutputPort>
 8000590:	e024      	b.n	80005dc <show_digit+0xdc>
 8000592:	4b15      	ldr	r3, [pc, #84]	; (80005e8 <show_digit+0xe8>)
 8000594:	2177      	movs	r1, #119	; 0x77
 8000596:	0018      	movs	r0, r3
 8000598:	f7ff fee8 	bl	800036c <LL_GPIO_WriteOutputPort>
 800059c:	e01e      	b.n	80005dc <show_digit+0xdc>
 800059e:	4b12      	ldr	r3, [pc, #72]	; (80005e8 <show_digit+0xe8>)
 80005a0:	217c      	movs	r1, #124	; 0x7c
 80005a2:	0018      	movs	r0, r3
 80005a4:	f7ff fee2 	bl	800036c <LL_GPIO_WriteOutputPort>
 80005a8:	e018      	b.n	80005dc <show_digit+0xdc>
 80005aa:	4b0f      	ldr	r3, [pc, #60]	; (80005e8 <show_digit+0xe8>)
 80005ac:	2139      	movs	r1, #57	; 0x39
 80005ae:	0018      	movs	r0, r3
 80005b0:	f7ff fedc 	bl	800036c <LL_GPIO_WriteOutputPort>
 80005b4:	e012      	b.n	80005dc <show_digit+0xdc>
 80005b6:	4b0c      	ldr	r3, [pc, #48]	; (80005e8 <show_digit+0xe8>)
 80005b8:	215e      	movs	r1, #94	; 0x5e
 80005ba:	0018      	movs	r0, r3
 80005bc:	f7ff fed6 	bl	800036c <LL_GPIO_WriteOutputPort>
 80005c0:	e00c      	b.n	80005dc <show_digit+0xdc>
 80005c2:	4b09      	ldr	r3, [pc, #36]	; (80005e8 <show_digit+0xe8>)
 80005c4:	2179      	movs	r1, #121	; 0x79
 80005c6:	0018      	movs	r0, r3
 80005c8:	f7ff fed0 	bl	800036c <LL_GPIO_WriteOutputPort>
 80005cc:	e006      	b.n	80005dc <show_digit+0xdc>
 80005ce:	4b06      	ldr	r3, [pc, #24]	; (80005e8 <show_digit+0xe8>)
 80005d0:	2171      	movs	r1, #113	; 0x71
 80005d2:	0018      	movs	r0, r3
 80005d4:	f7ff feca 	bl	800036c <LL_GPIO_WriteOutputPort>
 80005d8:	e000      	b.n	80005dc <show_digit+0xdc>
 80005da:	46c0      	nop			; (mov r8, r8)
 80005dc:	46c0      	nop			; (mov r8, r8)
 80005de:	46bd      	mov	sp, r7
 80005e0:	b002      	add	sp, #8
 80005e2:	bd80      	pop	{r7, pc}
 80005e4:	08000884 	.word	0x08000884
 80005e8:	48000400 	.word	0x48000400

080005ec <main>:
 80005ec:	b580      	push	{r7, lr}
 80005ee:	b084      	sub	sp, #16
 80005f0:	af00      	add	r7, sp, #0
 80005f2:	f7ff fee3 	bl	80003bc <rcc_config>
 80005f6:	f7ff ff15 	bl	8000424 <gpio_config>
 80005fa:	4b1e      	ldr	r3, [pc, #120]	; (8000674 <main+0x88>)
 80005fc:	2101      	movs	r1, #1
 80005fe:	0018      	movs	r0, r3
 8000600:	f7ff fec0 	bl	8000384 <LL_GPIO_ResetOutputPin>
 8000604:	2300      	movs	r3, #0
 8000606:	60fb      	str	r3, [r7, #12]
 8000608:	2300      	movs	r3, #0
 800060a:	60bb      	str	r3, [r7, #8]
 800060c:	2300      	movs	r3, #0
 800060e:	607b      	str	r3, [r7, #4]
 8000610:	68bb      	ldr	r3, [r7, #8]
 8000612:	2b0f      	cmp	r3, #15
 8000614:	d901      	bls.n	800061a <main+0x2e>
 8000616:	2300      	movs	r3, #0
 8000618:	60bb      	str	r3, [r7, #8]
 800061a:	2300      	movs	r3, #0
 800061c:	60fb      	str	r3, [r7, #12]
 800061e:	e004      	b.n	800062a <main+0x3e>
 8000620:	f7ff ff64 	bl	80004ec <delay_10ms>
 8000624:	68fb      	ldr	r3, [r7, #12]
 8000626:	3301      	adds	r3, #1
 8000628:	60fb      	str	r3, [r7, #12]
 800062a:	68fb      	ldr	r3, [r7, #12]
 800062c:	2b04      	cmp	r3, #4
 800062e:	d807      	bhi.n	8000640 <main+0x54>
 8000630:	2390      	movs	r3, #144	; 0x90
 8000632:	05db      	lsls	r3, r3, #23
 8000634:	2101      	movs	r1, #1
 8000636:	0018      	movs	r0, r3
 8000638:	f7ff fe86 	bl	8000348 <LL_GPIO_IsInputPinSet>
 800063c:	1e03      	subs	r3, r0, #0
 800063e:	d1ef      	bne.n	8000620 <main+0x34>
 8000640:	68fb      	ldr	r3, [r7, #12]
 8000642:	2b04      	cmp	r3, #4
 8000644:	d913      	bls.n	800066e <main+0x82>
 8000646:	687b      	ldr	r3, [r7, #4]
 8000648:	2b00      	cmp	r3, #0
 800064a:	d1e1      	bne.n	8000610 <main+0x24>
 800064c:	68bb      	ldr	r3, [r7, #8]
 800064e:	0018      	movs	r0, r3
 8000650:	f7ff ff56 	bl	8000500 <show_digit>
 8000654:	68bb      	ldr	r3, [r7, #8]
 8000656:	3301      	adds	r3, #1
 8000658:	60bb      	str	r3, [r7, #8]
 800065a:	2380      	movs	r3, #128	; 0x80
 800065c:	009b      	lsls	r3, r3, #2
 800065e:	4a05      	ldr	r2, [pc, #20]	; (8000674 <main+0x88>)
 8000660:	0019      	movs	r1, r3
 8000662:	0010      	movs	r0, r2
 8000664:	f7ff fe9a 	bl	800039c <LL_GPIO_TogglePin>
 8000668:	2301      	movs	r3, #1
 800066a:	607b      	str	r3, [r7, #4]
 800066c:	e7d0      	b.n	8000610 <main+0x24>
 800066e:	2300      	movs	r3, #0
 8000670:	607b      	str	r3, [r7, #4]
 8000672:	e7cd      	b.n	8000610 <main+0x24>
 8000674:	48000800 	.word	0x48000800

08000678 <SystemInit>:
 8000678:	b580      	push	{r7, lr}
 800067a:	af00      	add	r7, sp, #0
 800067c:	4b1a      	ldr	r3, [pc, #104]	; (80006e8 <SystemInit+0x70>)
 800067e:	681a      	ldr	r2, [r3, #0]
 8000680:	4b19      	ldr	r3, [pc, #100]	; (80006e8 <SystemInit+0x70>)
 8000682:	2101      	movs	r1, #1
 8000684:	430a      	orrs	r2, r1
 8000686:	601a      	str	r2, [r3, #0]
 8000688:	4b17      	ldr	r3, [pc, #92]	; (80006e8 <SystemInit+0x70>)
 800068a:	685a      	ldr	r2, [r3, #4]
 800068c:	4b16      	ldr	r3, [pc, #88]	; (80006e8 <SystemInit+0x70>)
 800068e:	4917      	ldr	r1, [pc, #92]	; (80006ec <SystemInit+0x74>)
 8000690:	400a      	ands	r2, r1
 8000692:	605a      	str	r2, [r3, #4]
 8000694:	4b14      	ldr	r3, [pc, #80]	; (80006e8 <SystemInit+0x70>)
 8000696:	681a      	ldr	r2, [r3, #0]
 8000698:	4b13      	ldr	r3, [pc, #76]	; (80006e8 <SystemInit+0x70>)
 800069a:	4915      	ldr	r1, [pc, #84]	; (80006f0 <SystemInit+0x78>)
 800069c:	400a      	ands	r2, r1
 800069e:	601a      	str	r2, [r3, #0]
 80006a0:	4b11      	ldr	r3, [pc, #68]	; (80006e8 <SystemInit+0x70>)
 80006a2:	681a      	ldr	r2, [r3, #0]
 80006a4:	4b10      	ldr	r3, [pc, #64]	; (80006e8 <SystemInit+0x70>)
 80006a6:	4913      	ldr	r1, [pc, #76]	; (80006f4 <SystemInit+0x7c>)
 80006a8:	400a      	ands	r2, r1
 80006aa:	601a      	str	r2, [r3, #0]
 80006ac:	4b0e      	ldr	r3, [pc, #56]	; (80006e8 <SystemInit+0x70>)
 80006ae:	685a      	ldr	r2, [r3, #4]
 80006b0:	4b0d      	ldr	r3, [pc, #52]	; (80006e8 <SystemInit+0x70>)
 80006b2:	4911      	ldr	r1, [pc, #68]	; (80006f8 <SystemInit+0x80>)
 80006b4:	400a      	ands	r2, r1
 80006b6:	605a      	str	r2, [r3, #4]
 80006b8:	4b0b      	ldr	r3, [pc, #44]	; (80006e8 <SystemInit+0x70>)
 80006ba:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80006bc:	4b0a      	ldr	r3, [pc, #40]	; (80006e8 <SystemInit+0x70>)
 80006be:	210f      	movs	r1, #15
 80006c0:	438a      	bics	r2, r1
 80006c2:	62da      	str	r2, [r3, #44]	; 0x2c
 80006c4:	4b08      	ldr	r3, [pc, #32]	; (80006e8 <SystemInit+0x70>)
 80006c6:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80006c8:	4b07      	ldr	r3, [pc, #28]	; (80006e8 <SystemInit+0x70>)
 80006ca:	490c      	ldr	r1, [pc, #48]	; (80006fc <SystemInit+0x84>)
 80006cc:	400a      	ands	r2, r1
 80006ce:	631a      	str	r2, [r3, #48]	; 0x30
 80006d0:	4b05      	ldr	r3, [pc, #20]	; (80006e8 <SystemInit+0x70>)
 80006d2:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80006d4:	4b04      	ldr	r3, [pc, #16]	; (80006e8 <SystemInit+0x70>)
 80006d6:	2101      	movs	r1, #1
 80006d8:	438a      	bics	r2, r1
 80006da:	635a      	str	r2, [r3, #52]	; 0x34
 80006dc:	4b02      	ldr	r3, [pc, #8]	; (80006e8 <SystemInit+0x70>)
 80006de:	2200      	movs	r2, #0
 80006e0:	609a      	str	r2, [r3, #8]
 80006e2:	46c0      	nop			; (mov r8, r8)
 80006e4:	46bd      	mov	sp, r7
 80006e6:	bd80      	pop	{r7, pc}
 80006e8:	40021000 	.word	0x40021000
 80006ec:	f8ffb80c 	.word	0xf8ffb80c
 80006f0:	fef6ffff 	.word	0xfef6ffff
 80006f4:	fffbffff 	.word	0xfffbffff
 80006f8:	ffc0ffff 	.word	0xffc0ffff
 80006fc:	fffffeac 	.word	0xfffffeac

08000700 <NMI_Handler>:
 8000700:	b580      	push	{r7, lr}
 8000702:	af00      	add	r7, sp, #0
 8000704:	46c0      	nop			; (mov r8, r8)
 8000706:	46bd      	mov	sp, r7
 8000708:	bd80      	pop	{r7, pc}

0800070a <HardFault_Handler>:
 800070a:	b580      	push	{r7, lr}
 800070c:	af00      	add	r7, sp, #0
 800070e:	e7fe      	b.n	800070e <HardFault_Handler+0x4>

08000710 <SVC_Handler>:
 8000710:	b580      	push	{r7, lr}
 8000712:	af00      	add	r7, sp, #0
 8000714:	46c0      	nop			; (mov r8, r8)
 8000716:	46bd      	mov	sp, r7
 8000718:	bd80      	pop	{r7, pc}

0800071a <PendSV_Handler>:
 800071a:	b580      	push	{r7, lr}
 800071c:	af00      	add	r7, sp, #0
 800071e:	46c0      	nop			; (mov r8, r8)
 8000720:	46bd      	mov	sp, r7
 8000722:	bd80      	pop	{r7, pc}

08000724 <__libc_init_array>:
 8000724:	b570      	push	{r4, r5, r6, lr}
 8000726:	4d0c      	ldr	r5, [pc, #48]	; (8000758 <__libc_init_array+0x34>)
 8000728:	4e0c      	ldr	r6, [pc, #48]	; (800075c <__libc_init_array+0x38>)
 800072a:	1b76      	subs	r6, r6, r5
 800072c:	10b6      	asrs	r6, r6, #2
 800072e:	d005      	beq.n	800073c <__libc_init_array+0x18>
 8000730:	2400      	movs	r4, #0
 8000732:	cd08      	ldmia	r5!, {r3}
 8000734:	3401      	adds	r4, #1
 8000736:	4798      	blx	r3
 8000738:	42a6      	cmp	r6, r4
 800073a:	d1fa      	bne.n	8000732 <__libc_init_array+0xe>
 800073c:	f000 f896 	bl	800086c <_init>
 8000740:	4d07      	ldr	r5, [pc, #28]	; (8000760 <__libc_init_array+0x3c>)
 8000742:	4e08      	ldr	r6, [pc, #32]	; (8000764 <__libc_init_array+0x40>)
 8000744:	1b76      	subs	r6, r6, r5
 8000746:	10b6      	asrs	r6, r6, #2
 8000748:	d005      	beq.n	8000756 <__libc_init_array+0x32>
 800074a:	2400      	movs	r4, #0
 800074c:	cd08      	ldmia	r5!, {r3}
 800074e:	3401      	adds	r4, #1
 8000750:	4798      	blx	r3
 8000752:	42a6      	cmp	r6, r4
 8000754:	d1fa      	bne.n	800074c <__libc_init_array+0x28>
 8000756:	bd70      	pop	{r4, r5, r6, pc}
 8000758:	080008c8 	.word	0x080008c8
 800075c:	080008c8 	.word	0x080008c8
 8000760:	080008c8 	.word	0x080008c8
 8000764:	080008d0 	.word	0x080008d0

08000768 <register_fini>:
 8000768:	4b03      	ldr	r3, [pc, #12]	; (8000778 <register_fini+0x10>)
 800076a:	b510      	push	{r4, lr}
 800076c:	2b00      	cmp	r3, #0
 800076e:	d002      	beq.n	8000776 <register_fini+0xe>
 8000770:	4802      	ldr	r0, [pc, #8]	; (800077c <register_fini+0x14>)
 8000772:	f000 f805 	bl	8000780 <atexit>
 8000776:	bd10      	pop	{r4, pc}
 8000778:	00000000 	.word	0x00000000
 800077c:	08000791 	.word	0x08000791

08000780 <atexit>:
 8000780:	b510      	push	{r4, lr}
 8000782:	0001      	movs	r1, r0
 8000784:	2300      	movs	r3, #0
 8000786:	2200      	movs	r2, #0
 8000788:	2000      	movs	r0, #0
 800078a:	f000 f819 	bl	80007c0 <__register_exitproc>
 800078e:	bd10      	pop	{r4, pc}

08000790 <__libc_fini_array>:
 8000790:	b570      	push	{r4, r5, r6, lr}
 8000792:	4d07      	ldr	r5, [pc, #28]	; (80007b0 <__libc_fini_array+0x20>)
 8000794:	4c07      	ldr	r4, [pc, #28]	; (80007b4 <__libc_fini_array+0x24>)
 8000796:	1b64      	subs	r4, r4, r5
 8000798:	10a4      	asrs	r4, r4, #2
 800079a:	d005      	beq.n	80007a8 <__libc_fini_array+0x18>
 800079c:	3c01      	subs	r4, #1
 800079e:	00a3      	lsls	r3, r4, #2
 80007a0:	58eb      	ldr	r3, [r5, r3]
 80007a2:	4798      	blx	r3
 80007a4:	2c00      	cmp	r4, #0
 80007a6:	d1f9      	bne.n	800079c <__libc_fini_array+0xc>
 80007a8:	f000 f866 	bl	8000878 <_fini>
 80007ac:	bd70      	pop	{r4, r5, r6, pc}
 80007ae:	46c0      	nop			; (mov r8, r8)
 80007b0:	080008d0 	.word	0x080008d0
 80007b4:	080008d4 	.word	0x080008d4

080007b8 <__retarget_lock_acquire_recursive>:
 80007b8:	4770      	bx	lr
 80007ba:	46c0      	nop			; (mov r8, r8)

080007bc <__retarget_lock_release_recursive>:
 80007bc:	4770      	bx	lr
 80007be:	46c0      	nop			; (mov r8, r8)

080007c0 <__register_exitproc>:
 80007c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007c2:	46d6      	mov	lr, sl
 80007c4:	464f      	mov	r7, r9
 80007c6:	4646      	mov	r6, r8
 80007c8:	b5c0      	push	{r6, r7, lr}
 80007ca:	4f26      	ldr	r7, [pc, #152]	; (8000864 <__register_exitproc+0xa4>)
 80007cc:	b082      	sub	sp, #8
 80007ce:	0006      	movs	r6, r0
 80007d0:	6838      	ldr	r0, [r7, #0]
 80007d2:	4692      	mov	sl, r2
 80007d4:	4698      	mov	r8, r3
 80007d6:	4689      	mov	r9, r1
 80007d8:	f7ff ffee 	bl	80007b8 <__retarget_lock_acquire_recursive>
 80007dc:	4b22      	ldr	r3, [pc, #136]	; (8000868 <__register_exitproc+0xa8>)
 80007de:	681b      	ldr	r3, [r3, #0]
 80007e0:	9301      	str	r3, [sp, #4]
 80007e2:	23a4      	movs	r3, #164	; 0xa4
 80007e4:	9a01      	ldr	r2, [sp, #4]
 80007e6:	005b      	lsls	r3, r3, #1
 80007e8:	58d5      	ldr	r5, [r2, r3]
 80007ea:	2d00      	cmp	r5, #0
 80007ec:	d02e      	beq.n	800084c <__register_exitproc+0x8c>
 80007ee:	686c      	ldr	r4, [r5, #4]
 80007f0:	2c1f      	cmp	r4, #31
 80007f2:	dc30      	bgt.n	8000856 <__register_exitproc+0x96>
 80007f4:	2e00      	cmp	r6, #0
 80007f6:	d10f      	bne.n	8000818 <__register_exitproc+0x58>
 80007f8:	1c63      	adds	r3, r4, #1
 80007fa:	606b      	str	r3, [r5, #4]
 80007fc:	464b      	mov	r3, r9
 80007fe:	3402      	adds	r4, #2
 8000800:	00a4      	lsls	r4, r4, #2
 8000802:	6838      	ldr	r0, [r7, #0]
 8000804:	5163      	str	r3, [r4, r5]
 8000806:	f7ff ffd9 	bl	80007bc <__retarget_lock_release_recursive>
 800080a:	2000      	movs	r0, #0
 800080c:	b002      	add	sp, #8
 800080e:	bce0      	pop	{r5, r6, r7}
 8000810:	46ba      	mov	sl, r7
 8000812:	46b1      	mov	r9, r6
 8000814:	46a8      	mov	r8, r5
 8000816:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000818:	2288      	movs	r2, #136	; 0x88
 800081a:	4651      	mov	r1, sl
 800081c:	0028      	movs	r0, r5
 800081e:	00a3      	lsls	r3, r4, #2
 8000820:	18eb      	adds	r3, r5, r3
 8000822:	5099      	str	r1, [r3, r2]
 8000824:	3a87      	subs	r2, #135	; 0x87
 8000826:	40a2      	lsls	r2, r4
 8000828:	3089      	adds	r0, #137	; 0x89
 800082a:	30ff      	adds	r0, #255	; 0xff
 800082c:	6801      	ldr	r1, [r0, #0]
 800082e:	4311      	orrs	r1, r2
 8000830:	6001      	str	r1, [r0, #0]
 8000832:	2184      	movs	r1, #132	; 0x84
 8000834:	4640      	mov	r0, r8
 8000836:	0049      	lsls	r1, r1, #1
 8000838:	5058      	str	r0, [r3, r1]
 800083a:	2e02      	cmp	r6, #2
 800083c:	d1dc      	bne.n	80007f8 <__register_exitproc+0x38>
 800083e:	002b      	movs	r3, r5
 8000840:	338d      	adds	r3, #141	; 0x8d
 8000842:	33ff      	adds	r3, #255	; 0xff
 8000844:	6819      	ldr	r1, [r3, #0]
 8000846:	430a      	orrs	r2, r1
 8000848:	601a      	str	r2, [r3, #0]
 800084a:	e7d5      	b.n	80007f8 <__register_exitproc+0x38>
 800084c:	0015      	movs	r5, r2
 800084e:	354d      	adds	r5, #77	; 0x4d
 8000850:	35ff      	adds	r5, #255	; 0xff
 8000852:	50d5      	str	r5, [r2, r3]
 8000854:	e7cb      	b.n	80007ee <__register_exitproc+0x2e>
 8000856:	6838      	ldr	r0, [r7, #0]
 8000858:	f7ff ffb0 	bl	80007bc <__retarget_lock_release_recursive>
 800085c:	2001      	movs	r0, #1
 800085e:	4240      	negs	r0, r0
 8000860:	e7d4      	b.n	800080c <__register_exitproc+0x4c>
 8000862:	46c0      	nop			; (mov r8, r8)
 8000864:	20000430 	.word	0x20000430
 8000868:	080008c4 	.word	0x080008c4

0800086c <_init>:
 800086c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800086e:	46c0      	nop			; (mov r8, r8)
 8000870:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000872:	bc08      	pop	{r3}
 8000874:	469e      	mov	lr, r3
 8000876:	4770      	bx	lr

08000878 <_fini>:
 8000878:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800087a:	46c0      	nop			; (mov r8, r8)
 800087c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800087e:	bc08      	pop	{r3}
 8000880:	469e      	mov	lr, r3
 8000882:	4770      	bx	lr
