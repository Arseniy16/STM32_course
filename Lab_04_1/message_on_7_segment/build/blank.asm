
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000adc  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000001e4  08000b9c  08000b9c  00010b9c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000d80  08000d80  00010d80  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000d88  08000d88  00010d88  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000d8c  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000024  20000434  080011c0  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000458  080011c0  00020458  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000a9f  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000375  00000000  00000000  00020efb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000522  00000000  00000000  00021270  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000120  00000000  00000000  00021792  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000f0  00000000  00000000  000218b2  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000791  00000000  00000000  000219a2  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000598  00000000  00000000  00022133  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  000226cb  2**0  CONTENTS, READONLY
 17 .debug_frame      00000544  00000000  00000000  00022798  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000b84 	.word	0x08000b84

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
 8000104:	08000b84 	.word	0x08000b84

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
 8000132:	f000 fbdb 	bl	80008ec <SystemInit>
 8000136:	f000 fc2f 	bl	8000998 <__libc_init_array>
 800013a:	f000 fb7f 	bl	800083c <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000d8c 	.word	0x08000d8c
 8000150:	20000434 	.word	0x20000434
 8000154:	20000458 	.word	0x20000458

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
 80003da:	4834      	ldr	r0, [pc, #208]	; (80004ac <gpio_config+0xe4>)
 80003dc:	2201      	movs	r2, #1
 80003de:	0019      	movs	r1, r3
 80003e0:	f7ff ff96 	bl	8000310 <LL_GPIO_SetPinMode>
 80003e4:	2380      	movs	r3, #128	; 0x80
 80003e6:	009b      	lsls	r3, r3, #2
 80003e8:	4830      	ldr	r0, [pc, #192]	; (80004ac <gpio_config+0xe4>)
 80003ea:	2201      	movs	r2, #1
 80003ec:	0019      	movs	r1, r3
 80003ee:	f7ff ff8f 	bl	8000310 <LL_GPIO_SetPinMode>
 80003f2:	4b2e      	ldr	r3, [pc, #184]	; (80004ac <gpio_config+0xe4>)
 80003f4:	2201      	movs	r2, #1
 80003f6:	2101      	movs	r1, #1
 80003f8:	0018      	movs	r0, r3
 80003fa:	f7ff ff89 	bl	8000310 <LL_GPIO_SetPinMode>
 80003fe:	4b2b      	ldr	r3, [pc, #172]	; (80004ac <gpio_config+0xe4>)
 8000400:	2201      	movs	r2, #1
 8000402:	2102      	movs	r1, #2
 8000404:	0018      	movs	r0, r3
 8000406:	f7ff ff83 	bl	8000310 <LL_GPIO_SetPinMode>
 800040a:	4b28      	ldr	r3, [pc, #160]	; (80004ac <gpio_config+0xe4>)
 800040c:	2201      	movs	r2, #1
 800040e:	2104      	movs	r1, #4
 8000410:	0018      	movs	r0, r3
 8000412:	f7ff ff7d 	bl	8000310 <LL_GPIO_SetPinMode>
 8000416:	4b25      	ldr	r3, [pc, #148]	; (80004ac <gpio_config+0xe4>)
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
 8000444:	4b1a      	ldr	r3, [pc, #104]	; (80004b0 <gpio_config+0xe8>)
 8000446:	2201      	movs	r2, #1
 8000448:	2101      	movs	r1, #1
 800044a:	0018      	movs	r0, r3
 800044c:	f7ff ff60 	bl	8000310 <LL_GPIO_SetPinMode>
 8000450:	4b17      	ldr	r3, [pc, #92]	; (80004b0 <gpio_config+0xe8>)
 8000452:	2201      	movs	r2, #1
 8000454:	2102      	movs	r1, #2
 8000456:	0018      	movs	r0, r3
 8000458:	f7ff ff5a 	bl	8000310 <LL_GPIO_SetPinMode>
 800045c:	4b14      	ldr	r3, [pc, #80]	; (80004b0 <gpio_config+0xe8>)
 800045e:	2201      	movs	r2, #1
 8000460:	2104      	movs	r1, #4
 8000462:	0018      	movs	r0, r3
 8000464:	f7ff ff54 	bl	8000310 <LL_GPIO_SetPinMode>
 8000468:	4b11      	ldr	r3, [pc, #68]	; (80004b0 <gpio_config+0xe8>)
 800046a:	2201      	movs	r2, #1
 800046c:	2108      	movs	r1, #8
 800046e:	0018      	movs	r0, r3
 8000470:	f7ff ff4e 	bl	8000310 <LL_GPIO_SetPinMode>
 8000474:	4b0e      	ldr	r3, [pc, #56]	; (80004b0 <gpio_config+0xe8>)
 8000476:	2201      	movs	r2, #1
 8000478:	2110      	movs	r1, #16
 800047a:	0018      	movs	r0, r3
 800047c:	f7ff ff48 	bl	8000310 <LL_GPIO_SetPinMode>
 8000480:	4b0b      	ldr	r3, [pc, #44]	; (80004b0 <gpio_config+0xe8>)
 8000482:	2201      	movs	r2, #1
 8000484:	2120      	movs	r1, #32
 8000486:	0018      	movs	r0, r3
 8000488:	f7ff ff42 	bl	8000310 <LL_GPIO_SetPinMode>
 800048c:	4b08      	ldr	r3, [pc, #32]	; (80004b0 <gpio_config+0xe8>)
 800048e:	2201      	movs	r2, #1
 8000490:	2140      	movs	r1, #64	; 0x40
 8000492:	0018      	movs	r0, r3
 8000494:	f7ff ff3c 	bl	8000310 <LL_GPIO_SetPinMode>
 8000498:	4b05      	ldr	r3, [pc, #20]	; (80004b0 <gpio_config+0xe8>)
 800049a:	2201      	movs	r2, #1
 800049c:	2180      	movs	r1, #128	; 0x80
 800049e:	0018      	movs	r0, r3
 80004a0:	f7ff ff36 	bl	8000310 <LL_GPIO_SetPinMode>
 80004a4:	46c0      	nop			; (mov r8, r8)
 80004a6:	46bd      	mov	sp, r7
 80004a8:	bd80      	pop	{r7, pc}
 80004aa:	46c0      	nop			; (mov r8, r8)
 80004ac:	48000800 	.word	0x48000800
 80004b0:	48000400 	.word	0x48000400

080004b4 <delay>:
 80004b4:	b580      	push	{r7, lr}
 80004b6:	4e02      	ldr	r6, [pc, #8]	; (80004c0 <delay+0xc>)
 80004b8:	3e01      	subs	r6, #1
 80004ba:	2e00      	cmp	r6, #0
 80004bc:	d1fc      	bne.n	80004b8 <delay+0x4>
 80004be:	bd80      	pop	{r7, pc}
 80004c0:	00000bb8 	.word	0x00000bb8
 80004c4:	46c0      	nop			; (mov r8, r8)
	...

080004c8 <symbols>:
 80004c8:	b580      	push	{r7, lr}
 80004ca:	b084      	sub	sp, #16
 80004cc:	af00      	add	r7, sp, #0
 80004ce:	0002      	movs	r2, r0
 80004d0:	1dfb      	adds	r3, r7, #7
 80004d2:	701a      	strb	r2, [r3, #0]
 80004d4:	2300      	movs	r3, #0
 80004d6:	60fb      	str	r3, [r7, #12]
 80004d8:	1dfb      	adds	r3, r7, #7
 80004da:	781b      	ldrb	r3, [r3, #0]
 80004dc:	3b21      	subs	r3, #33	; 0x21
 80004de:	2b59      	cmp	r3, #89	; 0x59
 80004e0:	d852      	bhi.n	8000588 <symbols+0xc0>
 80004e2:	009a      	lsls	r2, r3, #2
 80004e4:	4b2c      	ldr	r3, [pc, #176]	; (8000598 <symbols+0xd0>)
 80004e6:	18d3      	adds	r3, r2, r3
 80004e8:	681b      	ldr	r3, [r3, #0]
 80004ea:	469f      	mov	pc, r3
 80004ec:	2377      	movs	r3, #119	; 0x77
 80004ee:	60fb      	str	r3, [r7, #12]
 80004f0:	e04d      	b.n	800058e <symbols+0xc6>
 80004f2:	237c      	movs	r3, #124	; 0x7c
 80004f4:	60fb      	str	r3, [r7, #12]
 80004f6:	e04a      	b.n	800058e <symbols+0xc6>
 80004f8:	2339      	movs	r3, #57	; 0x39
 80004fa:	60fb      	str	r3, [r7, #12]
 80004fc:	e047      	b.n	800058e <symbols+0xc6>
 80004fe:	235e      	movs	r3, #94	; 0x5e
 8000500:	60fb      	str	r3, [r7, #12]
 8000502:	e044      	b.n	800058e <symbols+0xc6>
 8000504:	2379      	movs	r3, #121	; 0x79
 8000506:	60fb      	str	r3, [r7, #12]
 8000508:	e041      	b.n	800058e <symbols+0xc6>
 800050a:	2371      	movs	r3, #113	; 0x71
 800050c:	60fb      	str	r3, [r7, #12]
 800050e:	e03e      	b.n	800058e <symbols+0xc6>
 8000510:	237d      	movs	r3, #125	; 0x7d
 8000512:	60fb      	str	r3, [r7, #12]
 8000514:	e03b      	b.n	800058e <symbols+0xc6>
 8000516:	2376      	movs	r3, #118	; 0x76
 8000518:	60fb      	str	r3, [r7, #12]
 800051a:	e038      	b.n	800058e <symbols+0xc6>
 800051c:	2306      	movs	r3, #6
 800051e:	60fb      	str	r3, [r7, #12]
 8000520:	e035      	b.n	800058e <symbols+0xc6>
 8000522:	230e      	movs	r3, #14
 8000524:	60fb      	str	r3, [r7, #12]
 8000526:	e032      	b.n	800058e <symbols+0xc6>
 8000528:	2338      	movs	r3, #56	; 0x38
 800052a:	60fb      	str	r3, [r7, #12]
 800052c:	e02f      	b.n	800058e <symbols+0xc6>
 800052e:	2354      	movs	r3, #84	; 0x54
 8000530:	60fb      	str	r3, [r7, #12]
 8000532:	e02c      	b.n	800058e <symbols+0xc6>
 8000534:	233f      	movs	r3, #63	; 0x3f
 8000536:	60fb      	str	r3, [r7, #12]
 8000538:	e029      	b.n	800058e <symbols+0xc6>
 800053a:	2373      	movs	r3, #115	; 0x73
 800053c:	60fb      	str	r3, [r7, #12]
 800053e:	e026      	b.n	800058e <symbols+0xc6>
 8000540:	236d      	movs	r3, #109	; 0x6d
 8000542:	60fb      	str	r3, [r7, #12]
 8000544:	e023      	b.n	800058e <symbols+0xc6>
 8000546:	233e      	movs	r3, #62	; 0x3e
 8000548:	60fb      	str	r3, [r7, #12]
 800054a:	e020      	b.n	800058e <symbols+0xc6>
 800054c:	235b      	movs	r3, #91	; 0x5b
 800054e:	60fb      	str	r3, [r7, #12]
 8000550:	e01d      	b.n	800058e <symbols+0xc6>
 8000552:	2367      	movs	r3, #103	; 0x67
 8000554:	60fb      	str	r3, [r7, #12]
 8000556:	e01a      	b.n	800058e <symbols+0xc6>
 8000558:	2350      	movs	r3, #80	; 0x50
 800055a:	60fb      	str	r3, [r7, #12]
 800055c:	e017      	b.n	800058e <symbols+0xc6>
 800055e:	2378      	movs	r3, #120	; 0x78
 8000560:	60fb      	str	r3, [r7, #12]
 8000562:	e014      	b.n	800058e <symbols+0xc6>
 8000564:	236e      	movs	r3, #110	; 0x6e
 8000566:	60fb      	str	r3, [r7, #12]
 8000568:	e011      	b.n	800058e <symbols+0xc6>
 800056a:	2380      	movs	r3, #128	; 0x80
 800056c:	60fb      	str	r3, [r7, #12]
 800056e:	e00e      	b.n	800058e <symbols+0xc6>
 8000570:	2386      	movs	r3, #134	; 0x86
 8000572:	60fb      	str	r3, [r7, #12]
 8000574:	e00b      	b.n	800058e <symbols+0xc6>
 8000576:	23a7      	movs	r3, #167	; 0xa7
 8000578:	60fb      	str	r3, [r7, #12]
 800057a:	e008      	b.n	800058e <symbols+0xc6>
 800057c:	2308      	movs	r3, #8
 800057e:	60fb      	str	r3, [r7, #12]
 8000580:	e005      	b.n	800058e <symbols+0xc6>
 8000582:	2340      	movs	r3, #64	; 0x40
 8000584:	60fb      	str	r3, [r7, #12]
 8000586:	e002      	b.n	800058e <symbols+0xc6>
 8000588:	2300      	movs	r3, #0
 800058a:	60fb      	str	r3, [r7, #12]
 800058c:	46c0      	nop			; (mov r8, r8)
 800058e:	68fb      	ldr	r3, [r7, #12]
 8000590:	0018      	movs	r0, r3
 8000592:	46bd      	mov	sp, r7
 8000594:	b004      	add	sp, #16
 8000596:	bd80      	pop	{r7, pc}
 8000598:	08000c14 	.word	0x08000c14

0800059c <dynamic_text>:
 800059c:	b590      	push	{r4, r7, lr}
 800059e:	b089      	sub	sp, #36	; 0x24
 80005a0:	af00      	add	r7, sp, #0
 80005a2:	6078      	str	r0, [r7, #4]
 80005a4:	211f      	movs	r1, #31
 80005a6:	187b      	adds	r3, r7, r1
 80005a8:	687a      	ldr	r2, [r7, #4]
 80005aa:	7812      	ldrb	r2, [r2, #0]
 80005ac:	701a      	strb	r2, [r3, #0]
 80005ae:	2300      	movs	r3, #0
 80005b0:	61bb      	str	r3, [r7, #24]
 80005b2:	2300      	movs	r3, #0
 80005b4:	617b      	str	r3, [r7, #20]
 80005b6:	2300      	movs	r3, #0
 80005b8:	61bb      	str	r3, [r7, #24]
 80005ba:	2300      	movs	r3, #0
 80005bc:	617b      	str	r3, [r7, #20]
 80005be:	187b      	adds	r3, r7, r1
 80005c0:	687a      	ldr	r2, [r7, #4]
 80005c2:	7812      	ldrb	r2, [r2, #0]
 80005c4:	701a      	strb	r2, [r3, #0]
 80005c6:	e05c      	b.n	8000682 <dynamic_text+0xe6>
 80005c8:	2300      	movs	r3, #0
 80005ca:	613b      	str	r3, [r7, #16]
 80005cc:	e035      	b.n	800063a <dynamic_text+0x9e>
 80005ce:	69bb      	ldr	r3, [r7, #24]
 80005d0:	60fb      	str	r3, [r7, #12]
 80005d2:	2300      	movs	r3, #0
 80005d4:	60bb      	str	r3, [r7, #8]
 80005d6:	e02a      	b.n	800062e <dynamic_text+0x92>
 80005d8:	687a      	ldr	r2, [r7, #4]
 80005da:	68fb      	ldr	r3, [r7, #12]
 80005dc:	18d2      	adds	r2, r2, r3
 80005de:	241f      	movs	r4, #31
 80005e0:	193b      	adds	r3, r7, r4
 80005e2:	7812      	ldrb	r2, [r2, #0]
 80005e4:	701a      	strb	r2, [r3, #0]
 80005e6:	4b2b      	ldr	r3, [pc, #172]	; (8000694 <dynamic_text+0xf8>)
 80005e8:	210f      	movs	r1, #15
 80005ea:	0018      	movs	r0, r3
 80005ec:	f7ff feac 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80005f0:	2201      	movs	r2, #1
 80005f2:	68bb      	ldr	r3, [r7, #8]
 80005f4:	409a      	lsls	r2, r3
 80005f6:	0013      	movs	r3, r2
 80005f8:	43db      	mvns	r3, r3
 80005fa:	001a      	movs	r2, r3
 80005fc:	4b25      	ldr	r3, [pc, #148]	; (8000694 <dynamic_text+0xf8>)
 80005fe:	0011      	movs	r1, r2
 8000600:	0018      	movs	r0, r3
 8000602:	f7ff fea1 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000606:	193b      	adds	r3, r7, r4
 8000608:	781b      	ldrb	r3, [r3, #0]
 800060a:	0018      	movs	r0, r3
 800060c:	f7ff ff5c 	bl	80004c8 <symbols>
 8000610:	0003      	movs	r3, r0
 8000612:	001a      	movs	r2, r3
 8000614:	4b20      	ldr	r3, [pc, #128]	; (8000698 <dynamic_text+0xfc>)
 8000616:	0011      	movs	r1, r2
 8000618:	0018      	movs	r0, r3
 800061a:	f7ff fe95 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800061e:	f7ff ff49 	bl	80004b4 <delay>
 8000622:	68fb      	ldr	r3, [r7, #12]
 8000624:	3b01      	subs	r3, #1
 8000626:	60fb      	str	r3, [r7, #12]
 8000628:	68bb      	ldr	r3, [r7, #8]
 800062a:	3301      	adds	r3, #1
 800062c:	60bb      	str	r3, [r7, #8]
 800062e:	68bb      	ldr	r3, [r7, #8]
 8000630:	2b03      	cmp	r3, #3
 8000632:	d9d1      	bls.n	80005d8 <dynamic_text+0x3c>
 8000634:	693b      	ldr	r3, [r7, #16]
 8000636:	3301      	adds	r3, #1
 8000638:	613b      	str	r3, [r7, #16]
 800063a:	693a      	ldr	r2, [r7, #16]
 800063c:	2396      	movs	r3, #150	; 0x96
 800063e:	005b      	lsls	r3, r3, #1
 8000640:	429a      	cmp	r2, r3
 8000642:	dbc4      	blt.n	80005ce <dynamic_text+0x32>
 8000644:	69bb      	ldr	r3, [r7, #24]
 8000646:	1c5a      	adds	r2, r3, #1
 8000648:	61ba      	str	r2, [r7, #24]
 800064a:	687a      	ldr	r2, [r7, #4]
 800064c:	18d2      	adds	r2, r2, r3
 800064e:	211f      	movs	r1, #31
 8000650:	187b      	adds	r3, r7, r1
 8000652:	7812      	ldrb	r2, [r2, #0]
 8000654:	701a      	strb	r2, [r3, #0]
 8000656:	187b      	adds	r3, r7, r1
 8000658:	781b      	ldrb	r3, [r3, #0]
 800065a:	2b00      	cmp	r3, #0
 800065c:	d002      	beq.n	8000664 <dynamic_text+0xc8>
 800065e:	697b      	ldr	r3, [r7, #20]
 8000660:	2b00      	cmp	r3, #0
 8000662:	d00e      	beq.n	8000682 <dynamic_text+0xe6>
 8000664:	697b      	ldr	r3, [r7, #20]
 8000666:	2b01      	cmp	r3, #1
 8000668:	d807      	bhi.n	800067a <dynamic_text+0xde>
 800066a:	231f      	movs	r3, #31
 800066c:	18fb      	adds	r3, r7, r3
 800066e:	2220      	movs	r2, #32
 8000670:	701a      	strb	r2, [r3, #0]
 8000672:	697b      	ldr	r3, [r7, #20]
 8000674:	3301      	adds	r3, #1
 8000676:	617b      	str	r3, [r7, #20]
 8000678:	e003      	b.n	8000682 <dynamic_text+0xe6>
 800067a:	231f      	movs	r3, #31
 800067c:	18fb      	adds	r3, r7, r3
 800067e:	2200      	movs	r2, #0
 8000680:	701a      	strb	r2, [r3, #0]
 8000682:	231f      	movs	r3, #31
 8000684:	18fb      	adds	r3, r7, r3
 8000686:	781b      	ldrb	r3, [r3, #0]
 8000688:	2b00      	cmp	r3, #0
 800068a:	d19d      	bne.n	80005c8 <dynamic_text+0x2c>
 800068c:	46c0      	nop			; (mov r8, r8)
 800068e:	46bd      	mov	sp, r7
 8000690:	b009      	add	sp, #36	; 0x24
 8000692:	bd90      	pop	{r4, r7, pc}
 8000694:	48000800 	.word	0x48000800
 8000698:	48000400 	.word	0x48000400

0800069c <text>:
 800069c:	b580      	push	{r7, lr}
 800069e:	b086      	sub	sp, #24
 80006a0:	af00      	add	r7, sp, #0
 80006a2:	6078      	str	r0, [r7, #4]
 80006a4:	2317      	movs	r3, #23
 80006a6:	18fb      	adds	r3, r7, r3
 80006a8:	687a      	ldr	r2, [r7, #4]
 80006aa:	7812      	ldrb	r2, [r2, #0]
 80006ac:	701a      	strb	r2, [r3, #0]
 80006ae:	2300      	movs	r3, #0
 80006b0:	613b      	str	r3, [r7, #16]
 80006b2:	2300      	movs	r3, #0
 80006b4:	60bb      	str	r3, [r7, #8]
 80006b6:	2303      	movs	r3, #3
 80006b8:	60fb      	str	r3, [r7, #12]
 80006ba:	e02a      	b.n	8000712 <text+0x76>
 80006bc:	693b      	ldr	r3, [r7, #16]
 80006be:	1c5a      	adds	r2, r3, #1
 80006c0:	613a      	str	r2, [r7, #16]
 80006c2:	687a      	ldr	r2, [r7, #4]
 80006c4:	18d2      	adds	r2, r2, r3
 80006c6:	2117      	movs	r1, #23
 80006c8:	187b      	adds	r3, r7, r1
 80006ca:	7812      	ldrb	r2, [r2, #0]
 80006cc:	701a      	strb	r2, [r3, #0]
 80006ce:	187b      	adds	r3, r7, r1
 80006d0:	781b      	ldrb	r3, [r3, #0]
 80006d2:	0018      	movs	r0, r3
 80006d4:	f7ff fef8 	bl	80004c8 <symbols>
 80006d8:	0003      	movs	r3, r0
 80006da:	60bb      	str	r3, [r7, #8]
 80006dc:	4b11      	ldr	r3, [pc, #68]	; (8000724 <text+0x88>)
 80006de:	210f      	movs	r1, #15
 80006e0:	0018      	movs	r0, r3
 80006e2:	f7ff fe31 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80006e6:	2201      	movs	r2, #1
 80006e8:	68fb      	ldr	r3, [r7, #12]
 80006ea:	409a      	lsls	r2, r3
 80006ec:	0013      	movs	r3, r2
 80006ee:	43db      	mvns	r3, r3
 80006f0:	001a      	movs	r2, r3
 80006f2:	4b0c      	ldr	r3, [pc, #48]	; (8000724 <text+0x88>)
 80006f4:	0011      	movs	r1, r2
 80006f6:	0018      	movs	r0, r3
 80006f8:	f7ff fe26 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80006fc:	68fb      	ldr	r3, [r7, #12]
 80006fe:	3b01      	subs	r3, #1
 8000700:	60fb      	str	r3, [r7, #12]
 8000702:	68bb      	ldr	r3, [r7, #8]
 8000704:	4a08      	ldr	r2, [pc, #32]	; (8000728 <text+0x8c>)
 8000706:	0019      	movs	r1, r3
 8000708:	0010      	movs	r0, r2
 800070a:	f7ff fe1d 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800070e:	f7ff fed1 	bl	80004b4 <delay>
 8000712:	2317      	movs	r3, #23
 8000714:	18fb      	adds	r3, r7, r3
 8000716:	781b      	ldrb	r3, [r3, #0]
 8000718:	2b00      	cmp	r3, #0
 800071a:	d1cf      	bne.n	80006bc <text+0x20>
 800071c:	46c0      	nop			; (mov r8, r8)
 800071e:	46bd      	mov	sp, r7
 8000720:	b006      	add	sp, #24
 8000722:	bd80      	pop	{r7, pc}
 8000724:	48000800 	.word	0x48000800
 8000728:	48000400 	.word	0x48000400

0800072c <dyn_display>:
 800072c:	b580      	push	{r7, lr}
 800072e:	b094      	sub	sp, #80	; 0x50
 8000730:	af00      	add	r7, sp, #0
 8000732:	6078      	str	r0, [r7, #4]
 8000734:	2300      	movs	r3, #0
 8000736:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000738:	230c      	movs	r3, #12
 800073a:	18fa      	adds	r2, r7, r3
 800073c:	4b3a      	ldr	r3, [pc, #232]	; (8000828 <dyn_display+0xfc>)
 800073e:	0010      	movs	r0, r2
 8000740:	0019      	movs	r1, r3
 8000742:	2340      	movs	r3, #64	; 0x40
 8000744:	001a      	movs	r2, r3
 8000746:	f000 f949 	bl	80009dc <memcpy>
 800074a:	4b38      	ldr	r3, [pc, #224]	; (800082c <dyn_display+0x100>)
 800074c:	210f      	movs	r1, #15
 800074e:	0018      	movs	r0, r3
 8000750:	f7ff fdfa 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000754:	4b36      	ldr	r3, [pc, #216]	; (8000830 <dyn_display+0x104>)
 8000756:	881b      	ldrh	r3, [r3, #0]
 8000758:	2b03      	cmp	r3, #3
 800075a:	d03a      	beq.n	80007d2 <dyn_display+0xa6>
 800075c:	dc4a      	bgt.n	80007f4 <dyn_display+0xc8>
 800075e:	2b02      	cmp	r3, #2
 8000760:	d026      	beq.n	80007b0 <dyn_display+0x84>
 8000762:	dc47      	bgt.n	80007f4 <dyn_display+0xc8>
 8000764:	2b00      	cmp	r3, #0
 8000766:	d002      	beq.n	800076e <dyn_display+0x42>
 8000768:	2b01      	cmp	r3, #1
 800076a:	d010      	beq.n	800078e <dyn_display+0x62>
 800076c:	e042      	b.n	80007f4 <dyn_display+0xc8>
 800076e:	2302      	movs	r3, #2
 8000770:	425b      	negs	r3, r3
 8000772:	4a2e      	ldr	r2, [pc, #184]	; (800082c <dyn_display+0x100>)
 8000774:	0019      	movs	r1, r3
 8000776:	0010      	movs	r0, r2
 8000778:	f7ff fde6 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800077c:	687b      	ldr	r3, [r7, #4]
 800077e:	220f      	movs	r2, #15
 8000780:	401a      	ands	r2, r3
 8000782:	230c      	movs	r3, #12
 8000784:	18fb      	adds	r3, r7, r3
 8000786:	0092      	lsls	r2, r2, #2
 8000788:	58d3      	ldr	r3, [r2, r3]
 800078a:	64fb      	str	r3, [r7, #76]	; 0x4c
 800078c:	e033      	b.n	80007f6 <dyn_display+0xca>
 800078e:	2303      	movs	r3, #3
 8000790:	425b      	negs	r3, r3
 8000792:	4a26      	ldr	r2, [pc, #152]	; (800082c <dyn_display+0x100>)
 8000794:	0019      	movs	r1, r3
 8000796:	0010      	movs	r0, r2
 8000798:	f7ff fdd6 	bl	8000348 <LL_GPIO_WriteOutputPort>
 800079c:	687b      	ldr	r3, [r7, #4]
 800079e:	091b      	lsrs	r3, r3, #4
 80007a0:	220f      	movs	r2, #15
 80007a2:	401a      	ands	r2, r3
 80007a4:	230c      	movs	r3, #12
 80007a6:	18fb      	adds	r3, r7, r3
 80007a8:	0092      	lsls	r2, r2, #2
 80007aa:	58d3      	ldr	r3, [r2, r3]
 80007ac:	64fb      	str	r3, [r7, #76]	; 0x4c
 80007ae:	e022      	b.n	80007f6 <dyn_display+0xca>
 80007b0:	2305      	movs	r3, #5
 80007b2:	425b      	negs	r3, r3
 80007b4:	4a1d      	ldr	r2, [pc, #116]	; (800082c <dyn_display+0x100>)
 80007b6:	0019      	movs	r1, r3
 80007b8:	0010      	movs	r0, r2
 80007ba:	f7ff fdc5 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80007be:	687b      	ldr	r3, [r7, #4]
 80007c0:	0a1b      	lsrs	r3, r3, #8
 80007c2:	220f      	movs	r2, #15
 80007c4:	401a      	ands	r2, r3
 80007c6:	230c      	movs	r3, #12
 80007c8:	18fb      	adds	r3, r7, r3
 80007ca:	0092      	lsls	r2, r2, #2
 80007cc:	58d3      	ldr	r3, [r2, r3]
 80007ce:	64fb      	str	r3, [r7, #76]	; 0x4c
 80007d0:	e011      	b.n	80007f6 <dyn_display+0xca>
 80007d2:	2309      	movs	r3, #9
 80007d4:	425b      	negs	r3, r3
 80007d6:	4a15      	ldr	r2, [pc, #84]	; (800082c <dyn_display+0x100>)
 80007d8:	0019      	movs	r1, r3
 80007da:	0010      	movs	r0, r2
 80007dc:	f7ff fdb4 	bl	8000348 <LL_GPIO_WriteOutputPort>
 80007e0:	687b      	ldr	r3, [r7, #4]
 80007e2:	0b1b      	lsrs	r3, r3, #12
 80007e4:	220f      	movs	r2, #15
 80007e6:	401a      	ands	r2, r3
 80007e8:	230c      	movs	r3, #12
 80007ea:	18fb      	adds	r3, r7, r3
 80007ec:	0092      	lsls	r2, r2, #2
 80007ee:	58d3      	ldr	r3, [r2, r3]
 80007f0:	64fb      	str	r3, [r7, #76]	; 0x4c
 80007f2:	e000      	b.n	80007f6 <dyn_display+0xca>
 80007f4:	46c0      	nop			; (mov r8, r8)
 80007f6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80007f8:	4a0e      	ldr	r2, [pc, #56]	; (8000834 <dyn_display+0x108>)
 80007fa:	0019      	movs	r1, r3
 80007fc:	0010      	movs	r0, r2
 80007fe:	f7ff fda3 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000802:	4b0b      	ldr	r3, [pc, #44]	; (8000830 <dyn_display+0x104>)
 8000804:	881b      	ldrh	r3, [r3, #0]
 8000806:	3301      	adds	r3, #1
 8000808:	4a0b      	ldr	r2, [pc, #44]	; (8000838 <dyn_display+0x10c>)
 800080a:	4013      	ands	r3, r2
 800080c:	d504      	bpl.n	8000818 <dyn_display+0xec>
 800080e:	3b01      	subs	r3, #1
 8000810:	2204      	movs	r2, #4
 8000812:	4252      	negs	r2, r2
 8000814:	4313      	orrs	r3, r2
 8000816:	3301      	adds	r3, #1
 8000818:	b29a      	uxth	r2, r3
 800081a:	4b05      	ldr	r3, [pc, #20]	; (8000830 <dyn_display+0x104>)
 800081c:	801a      	strh	r2, [r3, #0]
 800081e:	46c0      	nop			; (mov r8, r8)
 8000820:	46bd      	mov	sp, r7
 8000822:	b014      	add	sp, #80	; 0x50
 8000824:	bd80      	pop	{r7, pc}
 8000826:	46c0      	nop			; (mov r8, r8)
 8000828:	08000b9c 	.word	0x08000b9c
 800082c:	48000800 	.word	0x48000800
 8000830:	20000450 	.word	0x20000450
 8000834:	48000400 	.word	0x48000400
 8000838:	80000003 	.word	0x80000003

0800083c <main>:
 800083c:	b580      	push	{r7, lr}
 800083e:	b084      	sub	sp, #16
 8000840:	af00      	add	r7, sp, #0
 8000842:	f7ff fd8d 	bl	8000360 <rcc_config>
 8000846:	f7ff fdbf 	bl	80003c8 <gpio_config>
 800084a:	2300      	movs	r3, #0
 800084c:	60fb      	str	r3, [r7, #12]
 800084e:	e008      	b.n	8000862 <main+0x26>
 8000850:	4b1e      	ldr	r3, [pc, #120]	; (80008cc <main+0x90>)
 8000852:	0018      	movs	r0, r3
 8000854:	f7ff ff6a 	bl	800072c <dyn_display>
 8000858:	f7ff fe2c 	bl	80004b4 <delay>
 800085c:	68fb      	ldr	r3, [r7, #12]
 800085e:	3301      	adds	r3, #1
 8000860:	60fb      	str	r3, [r7, #12]
 8000862:	68fb      	ldr	r3, [r7, #12]
 8000864:	4a1a      	ldr	r2, [pc, #104]	; (80008d0 <main+0x94>)
 8000866:	4293      	cmp	r3, r2
 8000868:	ddf2      	ble.n	8000850 <main+0x14>
 800086a:	4b1a      	ldr	r3, [pc, #104]	; (80008d4 <main+0x98>)
 800086c:	0018      	movs	r0, r3
 800086e:	f7ff fe95 	bl	800059c <dynamic_text>
 8000872:	4b19      	ldr	r3, [pc, #100]	; (80008d8 <main+0x9c>)
 8000874:	0018      	movs	r0, r3
 8000876:	f7ff ff11 	bl	800069c <text>
 800087a:	4b18      	ldr	r3, [pc, #96]	; (80008dc <main+0xa0>)
 800087c:	0018      	movs	r0, r3
 800087e:	f7ff fe8d 	bl	800059c <dynamic_text>
 8000882:	2300      	movs	r3, #0
 8000884:	60bb      	str	r3, [r7, #8]
 8000886:	e008      	b.n	800089a <main+0x5e>
 8000888:	68bb      	ldr	r3, [r7, #8]
 800088a:	0018      	movs	r0, r3
 800088c:	f7ff ff4e 	bl	800072c <dyn_display>
 8000890:	f7ff fe10 	bl	80004b4 <delay>
 8000894:	68bb      	ldr	r3, [r7, #8]
 8000896:	3301      	adds	r3, #1
 8000898:	60bb      	str	r3, [r7, #8]
 800089a:	68bb      	ldr	r3, [r7, #8]
 800089c:	4a10      	ldr	r2, [pc, #64]	; (80008e0 <main+0xa4>)
 800089e:	4293      	cmp	r3, r2
 80008a0:	ddf2      	ble.n	8000888 <main+0x4c>
 80008a2:	2300      	movs	r3, #0
 80008a4:	607b      	str	r3, [r7, #4]
 80008a6:	e006      	b.n	80008b6 <main+0x7a>
 80008a8:	4b0e      	ldr	r3, [pc, #56]	; (80008e4 <main+0xa8>)
 80008aa:	0018      	movs	r0, r3
 80008ac:	f7ff fef6 	bl	800069c <text>
 80008b0:	687b      	ldr	r3, [r7, #4]
 80008b2:	3301      	adds	r3, #1
 80008b4:	607b      	str	r3, [r7, #4]
 80008b6:	687a      	ldr	r2, [r7, #4]
 80008b8:	23fa      	movs	r3, #250	; 0xfa
 80008ba:	009b      	lsls	r3, r3, #2
 80008bc:	429a      	cmp	r2, r3
 80008be:	dbf3      	blt.n	80008a8 <main+0x6c>
 80008c0:	4b09      	ldr	r3, [pc, #36]	; (80008e8 <main+0xac>)
 80008c2:	0018      	movs	r0, r3
 80008c4:	f7ff fe6a 	bl	800059c <dynamic_text>
 80008c8:	e7bf      	b.n	800084a <main+0xe>
 80008ca:	46c0      	nop			; (mov r8, r8)
 80008cc:	00002021 	.word	0x00002021
 80008d0:	00000bb7 	.word	0x00000bb7
 80008d4:	08000bdc 	.word	0x08000bdc
 80008d8:	08000bf4 	.word	0x08000bf4
 80008dc:	08000bf8 	.word	0x08000bf8
 80008e0:	0000fffe 	.word	0x0000fffe
 80008e4:	08000c04 	.word	0x08000c04
 80008e8:	08000c0c 	.word	0x08000c0c

080008ec <SystemInit>:
 80008ec:	b580      	push	{r7, lr}
 80008ee:	af00      	add	r7, sp, #0
 80008f0:	4b1a      	ldr	r3, [pc, #104]	; (800095c <SystemInit+0x70>)
 80008f2:	681a      	ldr	r2, [r3, #0]
 80008f4:	4b19      	ldr	r3, [pc, #100]	; (800095c <SystemInit+0x70>)
 80008f6:	2101      	movs	r1, #1
 80008f8:	430a      	orrs	r2, r1
 80008fa:	601a      	str	r2, [r3, #0]
 80008fc:	4b17      	ldr	r3, [pc, #92]	; (800095c <SystemInit+0x70>)
 80008fe:	685a      	ldr	r2, [r3, #4]
 8000900:	4b16      	ldr	r3, [pc, #88]	; (800095c <SystemInit+0x70>)
 8000902:	4917      	ldr	r1, [pc, #92]	; (8000960 <SystemInit+0x74>)
 8000904:	400a      	ands	r2, r1
 8000906:	605a      	str	r2, [r3, #4]
 8000908:	4b14      	ldr	r3, [pc, #80]	; (800095c <SystemInit+0x70>)
 800090a:	681a      	ldr	r2, [r3, #0]
 800090c:	4b13      	ldr	r3, [pc, #76]	; (800095c <SystemInit+0x70>)
 800090e:	4915      	ldr	r1, [pc, #84]	; (8000964 <SystemInit+0x78>)
 8000910:	400a      	ands	r2, r1
 8000912:	601a      	str	r2, [r3, #0]
 8000914:	4b11      	ldr	r3, [pc, #68]	; (800095c <SystemInit+0x70>)
 8000916:	681a      	ldr	r2, [r3, #0]
 8000918:	4b10      	ldr	r3, [pc, #64]	; (800095c <SystemInit+0x70>)
 800091a:	4913      	ldr	r1, [pc, #76]	; (8000968 <SystemInit+0x7c>)
 800091c:	400a      	ands	r2, r1
 800091e:	601a      	str	r2, [r3, #0]
 8000920:	4b0e      	ldr	r3, [pc, #56]	; (800095c <SystemInit+0x70>)
 8000922:	685a      	ldr	r2, [r3, #4]
 8000924:	4b0d      	ldr	r3, [pc, #52]	; (800095c <SystemInit+0x70>)
 8000926:	4911      	ldr	r1, [pc, #68]	; (800096c <SystemInit+0x80>)
 8000928:	400a      	ands	r2, r1
 800092a:	605a      	str	r2, [r3, #4]
 800092c:	4b0b      	ldr	r3, [pc, #44]	; (800095c <SystemInit+0x70>)
 800092e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000930:	4b0a      	ldr	r3, [pc, #40]	; (800095c <SystemInit+0x70>)
 8000932:	210f      	movs	r1, #15
 8000934:	438a      	bics	r2, r1
 8000936:	62da      	str	r2, [r3, #44]	; 0x2c
 8000938:	4b08      	ldr	r3, [pc, #32]	; (800095c <SystemInit+0x70>)
 800093a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800093c:	4b07      	ldr	r3, [pc, #28]	; (800095c <SystemInit+0x70>)
 800093e:	490c      	ldr	r1, [pc, #48]	; (8000970 <SystemInit+0x84>)
 8000940:	400a      	ands	r2, r1
 8000942:	631a      	str	r2, [r3, #48]	; 0x30
 8000944:	4b05      	ldr	r3, [pc, #20]	; (800095c <SystemInit+0x70>)
 8000946:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000948:	4b04      	ldr	r3, [pc, #16]	; (800095c <SystemInit+0x70>)
 800094a:	2101      	movs	r1, #1
 800094c:	438a      	bics	r2, r1
 800094e:	635a      	str	r2, [r3, #52]	; 0x34
 8000950:	4b02      	ldr	r3, [pc, #8]	; (800095c <SystemInit+0x70>)
 8000952:	2200      	movs	r2, #0
 8000954:	609a      	str	r2, [r3, #8]
 8000956:	46c0      	nop			; (mov r8, r8)
 8000958:	46bd      	mov	sp, r7
 800095a:	bd80      	pop	{r7, pc}
 800095c:	40021000 	.word	0x40021000
 8000960:	f8ffb80c 	.word	0xf8ffb80c
 8000964:	fef6ffff 	.word	0xfef6ffff
 8000968:	fffbffff 	.word	0xfffbffff
 800096c:	ffc0ffff 	.word	0xffc0ffff
 8000970:	fffffeac 	.word	0xfffffeac

08000974 <NMI_Handler>:
 8000974:	b580      	push	{r7, lr}
 8000976:	af00      	add	r7, sp, #0
 8000978:	46c0      	nop			; (mov r8, r8)
 800097a:	46bd      	mov	sp, r7
 800097c:	bd80      	pop	{r7, pc}

0800097e <HardFault_Handler>:
 800097e:	b580      	push	{r7, lr}
 8000980:	af00      	add	r7, sp, #0
 8000982:	e7fe      	b.n	8000982 <HardFault_Handler+0x4>

08000984 <SVC_Handler>:
 8000984:	b580      	push	{r7, lr}
 8000986:	af00      	add	r7, sp, #0
 8000988:	46c0      	nop			; (mov r8, r8)
 800098a:	46bd      	mov	sp, r7
 800098c:	bd80      	pop	{r7, pc}

0800098e <PendSV_Handler>:
 800098e:	b580      	push	{r7, lr}
 8000990:	af00      	add	r7, sp, #0
 8000992:	46c0      	nop			; (mov r8, r8)
 8000994:	46bd      	mov	sp, r7
 8000996:	bd80      	pop	{r7, pc}

08000998 <__libc_init_array>:
 8000998:	b570      	push	{r4, r5, r6, lr}
 800099a:	4d0c      	ldr	r5, [pc, #48]	; (80009cc <__libc_init_array+0x34>)
 800099c:	4e0c      	ldr	r6, [pc, #48]	; (80009d0 <__libc_init_array+0x38>)
 800099e:	1b76      	subs	r6, r6, r5
 80009a0:	10b6      	asrs	r6, r6, #2
 80009a2:	d005      	beq.n	80009b0 <__libc_init_array+0x18>
 80009a4:	2400      	movs	r4, #0
 80009a6:	cd08      	ldmia	r5!, {r3}
 80009a8:	3401      	adds	r4, #1
 80009aa:	4798      	blx	r3
 80009ac:	42a6      	cmp	r6, r4
 80009ae:	d1fa      	bne.n	80009a6 <__libc_init_array+0xe>
 80009b0:	f000 f8e8 	bl	8000b84 <_init>
 80009b4:	4d07      	ldr	r5, [pc, #28]	; (80009d4 <__libc_init_array+0x3c>)
 80009b6:	4e08      	ldr	r6, [pc, #32]	; (80009d8 <__libc_init_array+0x40>)
 80009b8:	1b76      	subs	r6, r6, r5
 80009ba:	10b6      	asrs	r6, r6, #2
 80009bc:	d005      	beq.n	80009ca <__libc_init_array+0x32>
 80009be:	2400      	movs	r4, #0
 80009c0:	cd08      	ldmia	r5!, {r3}
 80009c2:	3401      	adds	r4, #1
 80009c4:	4798      	blx	r3
 80009c6:	42a6      	cmp	r6, r4
 80009c8:	d1fa      	bne.n	80009c0 <__libc_init_array+0x28>
 80009ca:	bd70      	pop	{r4, r5, r6, pc}
 80009cc:	08000d80 	.word	0x08000d80
 80009d0:	08000d80 	.word	0x08000d80
 80009d4:	08000d80 	.word	0x08000d80
 80009d8:	08000d88 	.word	0x08000d88

080009dc <memcpy>:
 80009dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80009de:	46c6      	mov	lr, r8
 80009e0:	b500      	push	{lr}
 80009e2:	2a0f      	cmp	r2, #15
 80009e4:	d941      	bls.n	8000a6a <memcpy+0x8e>
 80009e6:	2703      	movs	r7, #3
 80009e8:	000d      	movs	r5, r1
 80009ea:	003e      	movs	r6, r7
 80009ec:	4305      	orrs	r5, r0
 80009ee:	000c      	movs	r4, r1
 80009f0:	0003      	movs	r3, r0
 80009f2:	402e      	ands	r6, r5
 80009f4:	422f      	tst	r7, r5
 80009f6:	d13d      	bne.n	8000a74 <memcpy+0x98>
 80009f8:	0015      	movs	r5, r2
 80009fa:	3d10      	subs	r5, #16
 80009fc:	092d      	lsrs	r5, r5, #4
 80009fe:	46a8      	mov	r8, r5
 8000a00:	012d      	lsls	r5, r5, #4
 8000a02:	46ac      	mov	ip, r5
 8000a04:	4484      	add	ip, r0
 8000a06:	6827      	ldr	r7, [r4, #0]
 8000a08:	001d      	movs	r5, r3
 8000a0a:	601f      	str	r7, [r3, #0]
 8000a0c:	6867      	ldr	r7, [r4, #4]
 8000a0e:	605f      	str	r7, [r3, #4]
 8000a10:	68a7      	ldr	r7, [r4, #8]
 8000a12:	609f      	str	r7, [r3, #8]
 8000a14:	68e7      	ldr	r7, [r4, #12]
 8000a16:	3410      	adds	r4, #16
 8000a18:	60df      	str	r7, [r3, #12]
 8000a1a:	3310      	adds	r3, #16
 8000a1c:	4565      	cmp	r5, ip
 8000a1e:	d1f2      	bne.n	8000a06 <memcpy+0x2a>
 8000a20:	4645      	mov	r5, r8
 8000a22:	230f      	movs	r3, #15
 8000a24:	240c      	movs	r4, #12
 8000a26:	3501      	adds	r5, #1
 8000a28:	012d      	lsls	r5, r5, #4
 8000a2a:	1949      	adds	r1, r1, r5
 8000a2c:	4013      	ands	r3, r2
 8000a2e:	1945      	adds	r5, r0, r5
 8000a30:	4214      	tst	r4, r2
 8000a32:	d022      	beq.n	8000a7a <memcpy+0x9e>
 8000a34:	598c      	ldr	r4, [r1, r6]
 8000a36:	51ac      	str	r4, [r5, r6]
 8000a38:	3604      	adds	r6, #4
 8000a3a:	1b9c      	subs	r4, r3, r6
 8000a3c:	2c03      	cmp	r4, #3
 8000a3e:	d8f9      	bhi.n	8000a34 <memcpy+0x58>
 8000a40:	3b04      	subs	r3, #4
 8000a42:	089b      	lsrs	r3, r3, #2
 8000a44:	3301      	adds	r3, #1
 8000a46:	009b      	lsls	r3, r3, #2
 8000a48:	18ed      	adds	r5, r5, r3
 8000a4a:	18c9      	adds	r1, r1, r3
 8000a4c:	2303      	movs	r3, #3
 8000a4e:	401a      	ands	r2, r3
 8000a50:	1e56      	subs	r6, r2, #1
 8000a52:	2a00      	cmp	r2, #0
 8000a54:	d006      	beq.n	8000a64 <memcpy+0x88>
 8000a56:	2300      	movs	r3, #0
 8000a58:	5ccc      	ldrb	r4, [r1, r3]
 8000a5a:	001a      	movs	r2, r3
 8000a5c:	54ec      	strb	r4, [r5, r3]
 8000a5e:	3301      	adds	r3, #1
 8000a60:	4296      	cmp	r6, r2
 8000a62:	d1f9      	bne.n	8000a58 <memcpy+0x7c>
 8000a64:	bc80      	pop	{r7}
 8000a66:	46b8      	mov	r8, r7
 8000a68:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a6a:	0005      	movs	r5, r0
 8000a6c:	1e56      	subs	r6, r2, #1
 8000a6e:	2a00      	cmp	r2, #0
 8000a70:	d1f1      	bne.n	8000a56 <memcpy+0x7a>
 8000a72:	e7f7      	b.n	8000a64 <memcpy+0x88>
 8000a74:	0005      	movs	r5, r0
 8000a76:	1e56      	subs	r6, r2, #1
 8000a78:	e7ed      	b.n	8000a56 <memcpy+0x7a>
 8000a7a:	001a      	movs	r2, r3
 8000a7c:	e7f6      	b.n	8000a6c <memcpy+0x90>
 8000a7e:	46c0      	nop			; (mov r8, r8)

08000a80 <register_fini>:
 8000a80:	4b03      	ldr	r3, [pc, #12]	; (8000a90 <register_fini+0x10>)
 8000a82:	b510      	push	{r4, lr}
 8000a84:	2b00      	cmp	r3, #0
 8000a86:	d002      	beq.n	8000a8e <register_fini+0xe>
 8000a88:	4802      	ldr	r0, [pc, #8]	; (8000a94 <register_fini+0x14>)
 8000a8a:	f000 f805 	bl	8000a98 <atexit>
 8000a8e:	bd10      	pop	{r4, pc}
 8000a90:	00000000 	.word	0x00000000
 8000a94:	08000aa9 	.word	0x08000aa9

08000a98 <atexit>:
 8000a98:	b510      	push	{r4, lr}
 8000a9a:	0001      	movs	r1, r0
 8000a9c:	2300      	movs	r3, #0
 8000a9e:	2200      	movs	r2, #0
 8000aa0:	2000      	movs	r0, #0
 8000aa2:	f000 f819 	bl	8000ad8 <__register_exitproc>
 8000aa6:	bd10      	pop	{r4, pc}

08000aa8 <__libc_fini_array>:
 8000aa8:	b570      	push	{r4, r5, r6, lr}
 8000aaa:	4d07      	ldr	r5, [pc, #28]	; (8000ac8 <__libc_fini_array+0x20>)
 8000aac:	4c07      	ldr	r4, [pc, #28]	; (8000acc <__libc_fini_array+0x24>)
 8000aae:	1b64      	subs	r4, r4, r5
 8000ab0:	10a4      	asrs	r4, r4, #2
 8000ab2:	d005      	beq.n	8000ac0 <__libc_fini_array+0x18>
 8000ab4:	3c01      	subs	r4, #1
 8000ab6:	00a3      	lsls	r3, r4, #2
 8000ab8:	58eb      	ldr	r3, [r5, r3]
 8000aba:	4798      	blx	r3
 8000abc:	2c00      	cmp	r4, #0
 8000abe:	d1f9      	bne.n	8000ab4 <__libc_fini_array+0xc>
 8000ac0:	f000 f866 	bl	8000b90 <_fini>
 8000ac4:	bd70      	pop	{r4, r5, r6, pc}
 8000ac6:	46c0      	nop			; (mov r8, r8)
 8000ac8:	08000d88 	.word	0x08000d88
 8000acc:	08000d8c 	.word	0x08000d8c

08000ad0 <__retarget_lock_acquire_recursive>:
 8000ad0:	4770      	bx	lr
 8000ad2:	46c0      	nop			; (mov r8, r8)

08000ad4 <__retarget_lock_release_recursive>:
 8000ad4:	4770      	bx	lr
 8000ad6:	46c0      	nop			; (mov r8, r8)

08000ad8 <__register_exitproc>:
 8000ad8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000ada:	46d6      	mov	lr, sl
 8000adc:	464f      	mov	r7, r9
 8000ade:	4646      	mov	r6, r8
 8000ae0:	b5c0      	push	{r6, r7, lr}
 8000ae2:	4f26      	ldr	r7, [pc, #152]	; (8000b7c <__register_exitproc+0xa4>)
 8000ae4:	b082      	sub	sp, #8
 8000ae6:	0006      	movs	r6, r0
 8000ae8:	6838      	ldr	r0, [r7, #0]
 8000aea:	4692      	mov	sl, r2
 8000aec:	4698      	mov	r8, r3
 8000aee:	4689      	mov	r9, r1
 8000af0:	f7ff ffee 	bl	8000ad0 <__retarget_lock_acquire_recursive>
 8000af4:	4b22      	ldr	r3, [pc, #136]	; (8000b80 <__register_exitproc+0xa8>)
 8000af6:	681b      	ldr	r3, [r3, #0]
 8000af8:	9301      	str	r3, [sp, #4]
 8000afa:	23a4      	movs	r3, #164	; 0xa4
 8000afc:	9a01      	ldr	r2, [sp, #4]
 8000afe:	005b      	lsls	r3, r3, #1
 8000b00:	58d5      	ldr	r5, [r2, r3]
 8000b02:	2d00      	cmp	r5, #0
 8000b04:	d02e      	beq.n	8000b64 <__register_exitproc+0x8c>
 8000b06:	686c      	ldr	r4, [r5, #4]
 8000b08:	2c1f      	cmp	r4, #31
 8000b0a:	dc30      	bgt.n	8000b6e <__register_exitproc+0x96>
 8000b0c:	2e00      	cmp	r6, #0
 8000b0e:	d10f      	bne.n	8000b30 <__register_exitproc+0x58>
 8000b10:	1c63      	adds	r3, r4, #1
 8000b12:	606b      	str	r3, [r5, #4]
 8000b14:	464b      	mov	r3, r9
 8000b16:	3402      	adds	r4, #2
 8000b18:	00a4      	lsls	r4, r4, #2
 8000b1a:	6838      	ldr	r0, [r7, #0]
 8000b1c:	5163      	str	r3, [r4, r5]
 8000b1e:	f7ff ffd9 	bl	8000ad4 <__retarget_lock_release_recursive>
 8000b22:	2000      	movs	r0, #0
 8000b24:	b002      	add	sp, #8
 8000b26:	bce0      	pop	{r5, r6, r7}
 8000b28:	46ba      	mov	sl, r7
 8000b2a:	46b1      	mov	r9, r6
 8000b2c:	46a8      	mov	r8, r5
 8000b2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b30:	2288      	movs	r2, #136	; 0x88
 8000b32:	4651      	mov	r1, sl
 8000b34:	0028      	movs	r0, r5
 8000b36:	00a3      	lsls	r3, r4, #2
 8000b38:	18eb      	adds	r3, r5, r3
 8000b3a:	5099      	str	r1, [r3, r2]
 8000b3c:	3a87      	subs	r2, #135	; 0x87
 8000b3e:	40a2      	lsls	r2, r4
 8000b40:	3089      	adds	r0, #137	; 0x89
 8000b42:	30ff      	adds	r0, #255	; 0xff
 8000b44:	6801      	ldr	r1, [r0, #0]
 8000b46:	4311      	orrs	r1, r2
 8000b48:	6001      	str	r1, [r0, #0]
 8000b4a:	2184      	movs	r1, #132	; 0x84
 8000b4c:	4640      	mov	r0, r8
 8000b4e:	0049      	lsls	r1, r1, #1
 8000b50:	5058      	str	r0, [r3, r1]
 8000b52:	2e02      	cmp	r6, #2
 8000b54:	d1dc      	bne.n	8000b10 <__register_exitproc+0x38>
 8000b56:	002b      	movs	r3, r5
 8000b58:	338d      	adds	r3, #141	; 0x8d
 8000b5a:	33ff      	adds	r3, #255	; 0xff
 8000b5c:	6819      	ldr	r1, [r3, #0]
 8000b5e:	430a      	orrs	r2, r1
 8000b60:	601a      	str	r2, [r3, #0]
 8000b62:	e7d5      	b.n	8000b10 <__register_exitproc+0x38>
 8000b64:	0015      	movs	r5, r2
 8000b66:	354d      	adds	r5, #77	; 0x4d
 8000b68:	35ff      	adds	r5, #255	; 0xff
 8000b6a:	50d5      	str	r5, [r2, r3]
 8000b6c:	e7cb      	b.n	8000b06 <__register_exitproc+0x2e>
 8000b6e:	6838      	ldr	r0, [r7, #0]
 8000b70:	f7ff ffb0 	bl	8000ad4 <__retarget_lock_release_recursive>
 8000b74:	2001      	movs	r0, #1
 8000b76:	4240      	negs	r0, r0
 8000b78:	e7d4      	b.n	8000b24 <__register_exitproc+0x4c>
 8000b7a:	46c0      	nop			; (mov r8, r8)
 8000b7c:	20000430 	.word	0x20000430
 8000b80:	08000d7c 	.word	0x08000d7c

08000b84 <_init>:
 8000b84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b86:	46c0      	nop			; (mov r8, r8)
 8000b88:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000b8a:	bc08      	pop	{r3}
 8000b8c:	469e      	mov	lr, r3
 8000b8e:	4770      	bx	lr

08000b90 <_fini>:
 8000b90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b92:	46c0      	nop			; (mov r8, r8)
 8000b94:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000b96:	bc08      	pop	{r3}
 8000b98:	469e      	mov	lr, r3
 8000b9a:	4770      	bx	lr
