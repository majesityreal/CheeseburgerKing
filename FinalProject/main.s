	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	setupTitleScreen
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupTitleScreen, %function
setupTitleScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	ip, .L4
	ldr	r0, .L4+4
	ldr	r1, .L4+8
	ldr	r2, .L4+12
	ldr	r3, .L4+16
	str	r4, [ip]
	mov	r6, #67108864
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #5120
	mov	r2, #6144
	ldr	r5, .L4+20
	strh	r3, [r6]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #12]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r5
	mov	r3, #6080
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	mov	lr, pc
	bx	r5
	mov	r2, #20
	mov	r1, #50
	mov	r0, #3
	ldr	r3, .L4+56
	ldrh	r3, [r3]
	strh	r3, [r6, #26]	@ movhi
	ldr	r3, .L4+60
	ldr	ip, .L4+64
	ldrh	r3, [r3]
	strh	r3, [r6, #24]	@ movhi
	str	r2, [ip, #8]
	str	r1, [ip, #12]
	mov	r2, #117440512
	ldr	r1, .L4+68
	mov	r3, #512
	str	r4, [ip]
	str	r0, [ip, #4]
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+76
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+80
	ldr	r3, .L4+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+88
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	time_s
	.word	time_m
	.word	.LANCHOR0
	.word	cheating
	.word	pauseTimer
	.word	DMANow
	.word	TitleScreenPal
	.word	TitleScreenTiles
	.word	100712448
	.word	TitleScreenMap
	.word	83886592
	.word	TitleSpritesheetPal
	.word	100728832
	.word	TitleSpritesheetTiles
	.word	vOff
	.word	hOff
	.word	selector
	.word	shadowOAM
	.word	stopSound
	.word	menuSong_length
	.word	menuSong_data
	.word	playSoundA
	.word	state
	.size	setupTitleScreen, .-setupTitleScreen
	.align	2
	.global	setupLevelSelect
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupLevelSelect, %function
setupLevelSelect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r2, #5
	ldr	r1, .L7
	ldr	r3, .L7+4
	str	r0, [r1, #4]
	str	r2, [r3]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	state
	.size	setupLevelSelect, .-setupLevelSelect
	.align	2
	.global	setupCredits
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupCredits, %function
setupCredits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L11
	mov	lr, pc
	bx	r3
	ldr	r3, .L11+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L11+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L11+16
	ldr	r1, .L11+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L11+24
	ldr	r1, .L11+28
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L11+32
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L11+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	HowToPlayScreenPal
	.word	4912
	.word	HowToPlayScreenTiles
	.word	100712448
	.word	HowToPlayScreenMap
	.word	shadowOAM
	.word	state
	.size	setupCredits, .-setupCredits
	.align	2
	.global	credits
	.syntax unified
	.arm
	.fpu softvfp
	.type	credits, %function
credits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L23
	ldr	r5, .L23+4
	ldr	r3, .L23+8
	str	r2, [r5]
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #8]
	ldr	r1, .L23+12
	add	r3, r3, #1
	smull	r0, r2, r1, r3
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	cmp	r3, r2, lsl #1
	str	r3, [r4, #8]
	bne	.L14
	ldr	r3, [r4, #12]
	add	r3, r3, #1
	smull	r2, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1, lsl #1
	str	r1, [r4, #12]
.L14:
	ldr	r3, .L23+16
	mov	lr, pc
	bx	r3
	ldr	r2, .L23+20
	ldr	r3, [r2, #4]
	sub	r3, r3, #9
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L23+24
	ldr	r2, [r2]
	ldr	r0, [r5]
	ldr	r6, .L23+28
	ldrh	lr, [r1]
	ldr	r1, [r4, #12]
	add	r2, r2, #88
	add	ip, r6, r0, lsl #3
	and	r2, r2, #255
	add	r1, r1, #146
	strh	r3, [ip, #2]	@ movhi
	orr	r2, r2, #16384
	lsl	r3, r0, #3
	lsl	r1, r1, #2
	add	r0, r0, #1
	tst	lr, #2
	strh	r2, [r6, r3]	@ movhi
	str	r0, [r5]
	strh	r1, [ip, #4]	@ movhi
	beq	.L22
	ldr	r3, .L23+32
	ldrh	r3, [r3]
	ands	ip, r3, #2
	beq	.L20
.L22:
	ldr	r4, .L23+36
.L15:
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L23+28
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L20:
	mov	r5, #3
	mov	r3, #20
	mov	r1, #50
	ldr	r2, .L23+40
	ldr	lr, .L23+44
	str	ip, [r4, #4]
	str	ip, [r2]
	ldr	r4, .L23+36
	mov	r0, r5
	str	r5, [r2, #4]
	str	r3, [r2, #8]
	str	r1, [r2, #12]
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L23+48
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r0, r5
	mov	r3, #6080
	mov	r2, #100663296
	ldr	r1, .L23+52
	mov	lr, pc
	bx	r4
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L23+56
	ldr	r1, .L23+60
	mov	lr, pc
	bx	r4
	mov	r0, r5
	mov	r1, r6
	mov	r3, #512
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	b	.L15
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	shadowOAMIndex
	.word	hideSprites
	.word	715827883
	.word	waitForVBlank
	.word	.LANCHOR1
	.word	oldButtons
	.word	shadowOAM
	.word	buttons
	.word	DMANow
	.word	selector
	.word	state
	.word	TitleScreenPal
	.word	TitleScreenTiles
	.word	100712448
	.word	TitleScreenMap
	.size	credits, .-credits
	.global	__aeabi_idivmod
	.align	2
	.global	drawSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSelector, %function
drawSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L28
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L28+4
	ldr	r6, [r2, #16]
	smull	r1, r7, r3, r6
	ldr	r4, .L28+8
	ldr	r5, .L28+12
	ldr	r3, [r2, #4]
	ldr	lr, [r4, #12]
	ldr	ip, [r5]
	ldr	r2, .L28+16
	add	lr, lr, r3, lsl #4
	and	lr, lr, #255
	lsl	r3, ip, #3
	strh	lr, [r2, r3]	@ movhi
	asr	r3, r6, #31
	ldr	r0, [r4]
	rsb	r3, r3, r7, asr #2
	add	r3, r3, r3, lsl #2
	ldr	r1, [r4, #8]
	cmp	r6, r3, lsl #1
	lsl	r3, r0, #5
	lsl	r1, r1, #23
	add	r3, r3, #392
	add	r2, r2, ip, lsl #3
	lsr	r1, r1, #23
	add	ip, ip, #1
	add	r3, r3, #2
	str	ip, [r5]
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	bne	.L25
	ldr	r3, .L28+20
	ldr	r1, [r4, #4]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4]
.L25:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.word	1717986919
	.word	selector
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	__aeabi_idivmod
	.size	drawSelector, .-drawSelector
	.align	2
	.global	drawButtons
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawButtons, %function
drawButtons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	ldr	r0, .L38+4
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [r3, #8]
	ldrh	r1, [r3, #12]
	ldr	lr, .L38+8
	ldr	ip, [r0]
	add	r2, r2, #8
	ldr	r0, [lr]
	sub	r3, r1, #4
	lsl	r2, r2, #23
	lsl	r3, r3, #16
	cmp	ip, #0
	lsr	r2, r2, #23
	lsr	r3, r3, #16
	add	r5, r0, #1
	bne	.L31
	ldr	r7, .L38+12
	add	r6, r1, #12
	and	r3, r3, #255
	add	r4, r1, #28
	orr	r3, r3, #16384
	lsl	r1, r0, #3
	and	r6, r6, #255
	strh	r3, [r7, r1]	@ movhi
	orr	r6, r6, #16384
	lsl	r3, r5, #3
	add	ip, r0, #2
	and	r4, r4, #255
	strh	r6, [r7, r3]	@ movhi
	orr	r4, r4, #16384
	lsl	r3, ip, #3
	strh	r4, [r7, r3]	@ movhi
	ldr	r8, .L38+16
	ldr	r6, .L38+20
	ldr	r4, .L38+24
	orr	r2, r2, #32768
	add	r5, r7, r5, lsl #3
	add	ip, r7, ip, lsl #3
	add	r1, r7, r0, lsl #3
	add	r3, r0, #3
	strh	r8, [r1, #4]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r6, [r5, #4]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	str	r3, [lr]
	strh	r4, [ip, #4]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L31:
	cmp	ip, #5
	ldr	ip, .L38+12
	beq	.L37
	add	r6, r1, #12
	and	r3, r3, #255
	orr	r3, r3, #16384
	lsl	r4, r0, #3
	add	r1, r1, #28
	and	r6, r6, #255
	strh	r3, [ip, r4]	@ movhi
	orr	r6, r6, #16384
	lsl	r3, r5, #3
	add	r4, r0, #2
	and	r1, r1, #255
	strh	r6, [ip, r3]	@ movhi
	orr	r1, r1, #16384
	lsl	r3, r4, #3
	strh	r1, [ip, r3]	@ movhi
	ldr	r7, .L38+28
	ldr	r6, .L38+32
	ldr	r1, .L38+36
	add	r5, ip, r5, lsl #3
	add	r4, ip, r4, lsl #3
	orr	r2, r2, #32768
	add	ip, ip, r0, lsl #3
	add	r3, r0, #3
	strh	r7, [ip, #4]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r6, [r5, #4]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	str	r3, [lr]
	strh	r2, [r4, #2]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L37:
	ldr	r1, .L38+40
	ldr	r6, .L38+44
	orr	r2, r2, #16384
	add	ip, ip, r0, lsl #3
.L34:
	add	r4, r1, #64
	strh	r1, [ip, #4]	@ movhi
	lsl	r1, r4, #16
	lsr	r1, r1, #16
	add	r5, r3, #16
	and	r4, r3, #255
	cmp	r1, r6
	lsl	r3, r5, #16
	strh	r2, [ip, #2]	@ movhi
	strh	r4, [ip]	@ movhi
	lsr	r3, r3, #16
	add	ip, ip, #8
	bne	.L34
	add	r3, r0, #5
	str	r3, [lr]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	selector
	.word	state
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	390
	.word	454
	.word	518
	.word	16774
	.word	16838
	.word	16902
	.word	582
	.word	902
	.size	drawButtons, .-drawButtons
	.align	2
	.global	drawWaterfall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWaterfall, %function
drawWaterfall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L44
	ldr	r5, .L44+4
	ldr	r0, [r8, #8]
	smull	r3, r5, r0, r5
	ldr	r3, .L44+8
	ldr	r4, [r3]
	ldr	fp, .L44+12
	ldr	r7, [r8, #12]
	ldr	r9, [r3, #4]
	lsl	r3, r4, #16
	ldr	r1, [fp]
	ldr	lr, .L44+16
	sub	sp, sp, #12
	lsr	r3, r3, #16
	ldr	r6, [r8, #20]
	ldr	r2, .L44+20
	str	r7, [sp, #4]
	lsl	ip, r7, #17
	sub	r5, r5, r0, asr #31
	add	r7, r3, #32
	and	r4, r4, #255
	add	r10, r5, r5, lsl #1
	orr	r4, r4, lr
	lsl	r5, r1, #3
	str	r6, [sp]
	and	r7, r7, #255
	add	r6, r1, #1
	strh	r4, [r2, r5]	@ movhi
	lsr	ip, ip, #16
	orr	r7, r7, lr
	lsl	r5, r6, #3
	strh	r7, [r2, r5]	@ movhi
	add	r5, r2, r1, lsl #3
	add	r7, ip, #17
	strh	r7, [r5, #4]	@ movhi
	add	r6, r2, r6, lsl #3
	add	r7, r1, #2
	add	r4, ip, #272
	add	ip, ip, #145
	strh	ip, [r6, #4]	@ movhi
	add	r4, r4, #1
	add	ip, r2, r7, lsl #3
	strh	r4, [ip, #4]	@ movhi
	sub	r4, r9, #9
	lsl	r9, r9, #23
	cmp	r0, r10, lsl #1
	lsr	r9, r9, #23
	lsl	r10, r4, #23
	and	r4, lr, #32768
	orr	r9, r4, r9
	strh	r9, [r5, #2]	@ movhi
	add	r5, r3, #64
	strh	r9, [r6, #2]	@ movhi
	ldr	r4, [sp]
	strh	r9, [ip, #2]	@ movhi
	lsr	r10, r10, #23
	and	ip, lr, #32768
	and	r5, r5, #255
	orr	r5, r5, lr
	orr	r10, ip, r10
	lsl	r7, r7, #3
	sub	ip, r3, #26
	add	r3, r3, #88
	strh	r5, [r2, r7]	@ movhi
	add	r6, r1, #3
	ldr	r7, [sp, #4]
	lsl	r4, r4, #1
	and	r3, r3, #255
	lsl	r5, r6, #3
	orr	r3, r3, #16384
	add	r4, r4, #432
	and	ip, ip, #255
	strh	r3, [r2, r5]	@ movhi
	orr	ip, ip, lr
	add	r4, r4, #1
	add	lr, r1, #4
	add	r3, r7, #146
	add	r6, r2, r6, lsl #3
	lsl	r5, lr, #3
	orr	r4, r4, #4096
	add	lr, r2, lr, lsl #3
	add	r1, r1, #5
	lsl	r3, r3, #2
	strh	r10, [r6, #2]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	str	r1, [fp]
	strh	ip, [r2, r5]	@ movhi
	strh	r10, [lr, #2]	@ movhi
	strh	r4, [lr, #4]	@ movhi
	bne	.L41
	ldr	r2, .L44+4
	add	r3, r7, #1
	smull	r1, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2, lsl #1
	str	r3, [r8, #12]
.L41:
	add	r3, r0, r0, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L44+24
	add	r3, r3, r3, lsl #16
	ldr	r1, .L44+28
	add	r3, r0, r3, lsl #1
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	bcc	.L40
	ldr	r3, [sp]
	add	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	str	r3, [r8, #20]
.L40:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.word	715827883
	.word	.LANCHOR1
	.word	shadowOAMIndex
	.word	-32768
	.word	shadowOAM
	.word	715827880
	.word	357913940
	.size	drawWaterfall, .-drawWaterfall
	.align	2
	.global	startGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	startGame, %function
startGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #5632
	mov	r0, #22528
	push	{r4, lr}
	ldr	r1, .L48
	strh	r2, [r3]	@ movhi
	ldr	r2, .L48+4
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L48+8
	strh	r1, [r3, #22]	@ movhi
	ldrh	r2, [r2]
	ldr	r1, .L48+12
	ldr	r0, [r1, #16]
	strh	r2, [r3, #20]	@ movhi
	ldr	r1, .L48+16
	strh	r2, [r3, #24]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L48+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L48+28
	mov	r3, #3904
	mov	r0, #3
	ldr	r2, .L48+32
	ldr	r1, .L48+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L48+40
	ldr	r1, .L48+44
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L48+48
	ldr	r1, .L48+52
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L48+56
	ldr	r1, .L48+60
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+64
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L48+68
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+72
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L48+76
	ldr	r3, .L48+80
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	5640
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	srand
	.word	waitForVBlank
	.word	startTimer
	.word	DMANow
	.word	100696064
	.word	parallaxBGTiles
	.word	100708352
	.word	parallaxBGMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	dead
	.word	state
	.size	startGame, .-startGame
	.align	2
	.global	titleScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	titleScreen, %function
titleScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L94
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #8]
	ldr	r1, .L94+4
	add	r2, r2, #1
	ldr	r5, .L94+8
	add	r3, r3, #1
	str	r2, [r4, #16]
	ldr	r2, .L94+12
	str	r3, [r4, #8]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #256
	bne	.L51
	ldr	r2, [r4, #24]
.L52:
	cmp	r2, #2
	movgt	r1, #1
	ldrgt	r2, .L94+16
	strgt	r1, [r2]
	tst	r3, #64
	beq	.L54
	ldr	r2, .L94+20
	ldrh	r2, [r2]
	ands	r2, r2, #64
	beq	.L91
.L54:
	tst	r3, #128
	beq	.L56
	ldr	r2, .L94+20
	ldrh	r2, [r2]
	ands	r6, r2, #128
	beq	.L92
.L56:
	tst	r3, #1
	beq	.L60
	ldr	r3, .L94+20
	ldrh	r2, [r3]
	ands	r2, r2, #1
	beq	.L93
.L60:
	ldr	r3, [r4]
.L59:
	cmp	r3, #0
	beq	.L90
	ldr	r2, [r4, #8]
	sub	r2, r2, #10
	cmp	r2, r3
	bgt	.L85
.L90:
	ldr	r5, .L94+24
.L61:
	ldr	r3, .L94+28
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #6
	beq	.L64
	bl	drawSelector
	bl	drawButtons
.L64:
	bl	drawWaterfall
	ldr	r4, .L94+32
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L94+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	mov	r3, #0
	ldr	r5, [r4, #4]
	cmp	r5, #1
	str	r3, [r4]
	beq	.L62
	cmp	r5, #2
	beq	.L63
	cmp	r5, r3
	bne	.L90
	bl	startGame
	ldr	r2, .L94+40
	ldr	r3, .L94+44
	str	r5, [r2]
	ldr	r5, .L94+24
	mov	lr, pc
	bx	r3
	b	.L61
.L93:
	ldr	r3, .L94+48
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L60
	ldr	r3, .L94+52
	ldr	r0, .L94+56
	ldr	r1, [r3]
	ldr	r3, .L94+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #8]
	str	r3, [r4]
	b	.L59
.L51:
	tst	r3, #512
	ldr	r2, [r4, #24]
	beq	.L52
	ldr	r1, .L94+20
	ldrh	r1, [r1]
	tst	r1, #768
	addeq	r2, r2, #1
	streq	r2, [r4, #24]
	b	.L52
.L92:
	ldr	r3, .L94+64
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L94+68
	ldr	r3, .L94+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #4]
	add	r3, r3, #1
	cmp	r3, #2
	str	r3, [r4, #4]
	strgt	r6, [r4, #4]
	ldrh	r3, [r5]
	b	.L56
.L91:
	ldr	r3, .L94+64
	ldr	r0, .L94+68
	ldr	r1, [r3]
	ldr	r3, .L94+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #4]
	sub	r3, r3, #1
	cmp	r3, #0
	movlt	r2, #2
	str	r3, [r4, #4]
	ldrhge	r3, [r5]
	ldrhlt	r3, [r5]
	strlt	r2, [r4, #4]
	b	.L54
.L63:
	mov	r2, #5
	ldr	r5, .L94+24
	str	r3, [r4, #4]
	str	r2, [r5]
	b	.L61
.L62:
	bl	setupCredits
	b	.L90
.L95:
	.align	2
.L94:
	.word	.LANCHOR0
	.word	shadowOAMIndex
	.word	oldButtons
	.word	hideSprites
	.word	cheating
	.word	buttons
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	currMap
	.word	initGame
	.word	67109120
	.word	sfxmenu_select_length
	.word	sfxmenu_select_data
	.word	playSoundB
	.word	sfxmenu_move_length
	.word	sfxmenu_move_data
	.size	titleScreen, .-titleScreen
	.align	2
	.global	levelSelect
	.syntax unified
	.arm
	.fpu softvfp
	.type	levelSelect, %function
levelSelect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L128
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #8]
	ldr	r1, .L128+4
	add	r2, r2, #1
	ldr	r5, .L128+8
	add	r3, r3, #1
	str	r2, [r4, #16]
	ldr	r2, .L128+12
	str	r3, [r4, #8]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #64
	beq	.L97
	ldr	r2, .L128+16
	ldrh	r2, [r2]
	ands	r2, r2, #64
	beq	.L124
.L97:
	tst	r3, #128
	beq	.L99
	ldr	r2, .L128+16
	ldrh	r2, [r2]
	ands	r6, r2, #128
	beq	.L125
.L99:
	tst	r3, #1
	beq	.L101
	ldr	r3, .L128+16
	ldrh	r2, [r3]
	ands	r2, r2, #1
	beq	.L126
.L101:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L102
	ldr	r2, [r4, #8]
	sub	r2, r2, #10
	cmp	r3, r2
	blt	.L127
.L102:
	ldrh	r3, [r5]
	tst	r3, #2
	beq	.L103
	ldr	r3, .L128+16
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L103
	mov	lr, #3
	mov	ip, #20
	mov	r0, #50
	ldr	r2, .L128+20
	ldr	r1, .L128+24
	stm	r2, {r3, lr}
	str	r3, [r4, #4]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r3, [r1]
.L103:
	ldr	r3, .L128+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L128+32
	bl	drawSelector
	bl	drawButtons
	bl	drawWaterfall
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L128+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L126:
	ldr	r3, .L128+40
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L101
	ldr	r3, .L128+44
	ldr	ip, [r4, #8]
	ldr	r1, [r3]
	ldr	r0, .L128+48
	ldr	r3, .L128+52
	str	ip, [r4]
	mov	lr, pc
	bx	r3
	b	.L101
.L127:
	bl	startGame
	ldr	r2, .L128+56
	ldr	r1, [r4, #4]
	ldr	r3, .L128+60
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	b	.L102
.L124:
	ldr	r3, .L128+64
	ldr	r0, .L128+68
	ldr	r1, [r3]
	ldr	r3, .L128+52
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #4]
	sub	r3, r3, #1
	cmp	r3, #0
	movlt	r2, #4
	str	r3, [r4, #4]
	ldrhge	r3, [r5]
	ldrhlt	r3, [r5]
	strlt	r2, [r4, #4]
	b	.L97
.L125:
	ldr	r3, .L128+64
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L128+68
	ldr	r3, .L128+52
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #4]
	add	r3, r3, #1
	cmp	r3, #4
	str	r3, [r4, #4]
	strgt	r6, [r4, #4]
	ldrh	r3, [r5]
	b	.L99
.L129:
	.align	2
.L128:
	.word	.LANCHOR0
	.word	shadowOAMIndex
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	selector
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	67109120
	.word	sfxmenu_select_length
	.word	sfxmenu_select_data
	.word	playSoundB
	.word	currMap
	.word	initGame
	.word	sfxmenu_move_length
	.word	sfxmenu_move_data
	.size	levelSelect, .-levelSelect
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	push	{r4, lr}
	ldr	r2, .L132
	ldr	r3, .L132+4
	str	r1, [r2]
	ldr	r4, .L132+8
	mov	lr, pc
	bx	r3
	bl	drawButtons
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L132+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L133:
	.align	2
.L132:
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L162
	ldrh	r2, [r3]
	ands	r3, r2, #1
	ldrne	r3, .L162+4
	ldrhne	r3, [r3]
	andne	r3, r3, #1
	rsbne	r3, r3, #1
	tst	r2, #2
	beq	.L136
	ldr	r1, .L162+4
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r3, #1
.L136:
	tst	r2, #8
	beq	.L137
	ldr	r1, .L162+4
	ldrh	r1, [r1]
	tst	r1, #8
	bne	.L137
.L138:
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L162+8
	ldr	r3, .L162+12
	str	r0, [r1]
	str	r2, [r3]
	bx	lr
.L137:
	tst	r2, #4
	bne	.L161
	cmp	r3, #0
	bxeq	lr
	b	.L138
.L161:
	ldr	r2, .L162+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L138
	cmp	r3, #0
	bxeq	lr
	b	.L138
.L163:
	.align	2
.L162:
	.word	oldButtons
	.word	buttons
	.word	pauseVar
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L166
	mov	lr, pc
	bx	r3
	mov	lr, #0
	ldr	ip, .L166+4
	ldr	r4, .L166+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L166+12
	str	lr, [ip, #8]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L166+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L166+20
	ldr	r1, .L166+24
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L166+28
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L166+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L167:
	.align	2
.L166:
	.word	hideSprites
	.word	.LANCHOR0
	.word	DMANow
	.word	victoryScreenPal
	.word	victoryScreenTiles
	.word	100712448
	.word	victoryScreenMap
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L177
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L174
	ldr	r3, .L177+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L175
	ldr	r2, .L177+8
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L176
	push	{r4, lr}
	ldr	r3, .L177+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L177+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L176:
	ldr	ip, .L177+20
	ldr	r0, .L177+24
	ldr	r1, .L177+28
	str	r3, [r2]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	b	setupTitleScreen
.L174:
	b	goToWin
.L175:
	b	goToPause
.L178:
	.align	2
.L177:
	.word	winning
	.word	pauseVar
	.word	dead
	.word	updateGame
	.word	drawGame
	.word	hOff
	.word	vOff
	.word	dying
	.size	game, .-game
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L239
	ldr	r3, [r4, #8]
	ldr	r1, .L239+4
	add	r3, r3, #1
	ldr	r2, .L239+8
	str	r0, [r1]
	str	r3, [r4, #8]
	ldr	r5, .L239+12
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L239+16
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #8]
	cmp	r3, #119
	ble	.L179
	ldr	r3, .L239+20
	ldrh	r3, [r3]
	ands	r2, r3, #1
	ldrne	r2, .L239+24
	ldrhne	r2, [r2]
	andne	r2, r2, #1
	rsbne	r2, r2, #1
	tst	r3, #2
	beq	.L182
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r2, #1
.L182:
	tst	r3, #8
	beq	.L183
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #8
	moveq	r2, #1
.L183:
	tst	r3, #4
	beq	.L184
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #4
	moveq	r2, #1
.L184:
	tst	r3, #64
	beq	.L185
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #64
	moveq	r2, #1
.L185:
	tst	r3, #128
	beq	.L186
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #128
	moveq	r2, #1
.L186:
	tst	r3, #32
	beq	.L187
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #32
	moveq	r2, #1
.L187:
	tst	r3, #16
	beq	.L188
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #16
	moveq	r2, #1
.L188:
	tst	r3, #256
	and	r3, r3, #512
	bne	.L237
.L189:
	cmp	r3, #0
	bne	.L238
.L191:
	cmp	r2, #0
	bne	.L190
.L179:
	pop	{r4, r5, r6, lr}
	bx	lr
.L237:
	ldr	r1, .L239+24
	ldrh	r1, [r1]
	tst	r1, #256
	bne	.L189
.L190:
	pop	{r4, r5, r6, lr}
	b	setupTitleScreen
.L238:
	ldr	r3, .L239+24
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L191
	b	.L190
.L240:
	.align	2
.L239:
	.word	.LANCHOR0
	.word	shadowOAMIndex
	.word	drawTimer
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r7, fp, lr}
	ldr	r4, .L254
	ldr	r0, .L254+4
	ldrh	ip, [r4, #48]
	ldr	r7, .L254+8
	ldr	r5, .L254+12
	ldr	r2, .L254+16
	str	r3, [r0, #16]
	strh	ip, [r7]	@ movhi
	strh	r3, [r5]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L254+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L254+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L254+28
	ldr	fp, .L254+32
	ldr	r10, .L254+36
	ldr	r9, .L254+40
	ldr	r8, .L254+44
.L242:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L243:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L243
.L245:
	.word	.L250
	.word	.L249
	.word	.L248
	.word	.L247
	.word	.L243
	.word	.L246
	.word	.L244
.L244:
	mov	lr, pc
	bx	r9
	b	.L242
.L246:
	mov	lr, pc
	bx	r10
	b	.L242
.L247:
	ldr	r3, .L254+48
	mov	lr, pc
	bx	r3
	b	.L242
.L248:
	ldr	r3, .L254+52
	mov	lr, pc
	bx	r3
	b	.L242
.L249:
	mov	lr, pc
	bx	r8
	b	.L242
.L250:
	mov	lr, pc
	bx	fp
	b	.L242
.L255:
	.align	2
.L254:
	.word	67109120
	.word	.LANCHOR0
	.word	buttons
	.word	oldButtons
	.word	setupSounds
	.word	setupInterrupts
	.word	setupTitleScreen
	.word	state
	.word	titleScreen
	.word	levelSelect
	.word	credits
	.word	game
	.word	win
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #4
	push	{r4, lr}
	ldr	r0, .L258
	ldr	r2, .L258+4
	strh	r0, [r3]	@ movhi
	mov	r0, #31
	ldr	r3, .L258+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L259:
	.align	2
.L258:
	.word	1027
	.word	state
	.word	fillScreen3
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	lose, .-lose
	.global	cheatingCounter
	.global	startTime
	.comm	shadowOAM,1024,4
	.global	kingFrames
	.global	waterfallFrames
	.global	waterfallY
	.global	waterfallX
	.global	waterfallTimer
	.comm	selector,16,4
	.global	currSelection
	.global	timer
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	menuSong,32,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	waterfallY, %object
	.size	waterfallY, 4
waterfallY:
	.word	55
	.type	waterfallX, %object
	.size	waterfallX, 4
waterfallX:
	.word	120
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	startTime, %object
	.size	startTime, 4
startTime:
	.space	4
	.type	currSelection, %object
	.size	currSelection, 4
currSelection:
	.space	4
	.type	waterfallTimer, %object
	.size	waterfallTimer, 4
waterfallTimer:
	.space	4
	.type	waterfallFrames, %object
	.size	waterfallFrames, 4
waterfallFrames:
	.space	4
	.type	timer, %object
	.size	timer, 4
timer:
	.space	4
	.type	kingFrames, %object
	.size	kingFrames, 4
kingFrames:
	.space	4
	.type	cheatingCounter, %object
	.size	cheatingCounter, 4
cheatingCounter:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
