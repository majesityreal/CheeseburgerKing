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
	mov	r5, #0
	ldr	r1, .L4
	ldr	r2, .L4+4
	ldr	r3, .L4+8
	mov	r6, #67108864
	str	r5, [r1]
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #5120
	mov	r2, #6144
	ldr	r4, .L4+12
	strh	r3, [r6]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #12]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #6080
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r4
	mov	r2, #20
	mov	r1, #50
	mov	r0, #3
	ldr	r3, .L4+48
	ldrh	r3, [r3]
	strh	r3, [r6, #26]	@ movhi
	ldr	r3, .L4+52
	ldr	ip, .L4+56
	ldrh	r3, [r3]
	strh	r3, [r6, #24]	@ movhi
	str	r2, [ip, #8]
	str	r1, [ip, #12]
	mov	r2, #117440512
	ldr	r1, .L4+60
	mov	r3, #512
	str	r5, [ip]
	str	r0, [ip, #4]
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+68
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+72
	ldr	r3, .L4+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+80
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	time_s
	.word	time_m
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
	str	r0, [r1]
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
	ldr	r3, [r4, #4]
	ldr	r1, .L23+12
	add	r3, r3, #1
	smull	r0, r2, r1, r3
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	cmp	r3, r2, lsl #1
	str	r3, [r4, #4]
	bne	.L14
	ldr	r3, [r4, #8]
	add	r3, r3, #1
	smull	r2, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1, lsl #1
	str	r1, [r4, #8]
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
	ldr	r1, [r4, #8]
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
	str	ip, [r4]
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
	ldr	r6, [r2, #12]
	smull	r1, r7, r3, r6
	ldr	r4, .L28+8
	ldr	r5, .L28+12
	ldr	r3, [r2]
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
	ldr	r0, [r8, #4]
	smull	r3, r5, r0, r5
	ldr	r3, .L44+8
	ldr	r4, [r3]
	ldr	fp, .L44+12
	ldr	r7, [r8, #8]
	ldr	r9, [r3, #4]
	lsl	r3, r4, #16
	ldr	r1, [fp]
	ldr	lr, .L44+16
	sub	sp, sp, #12
	lsr	r3, r3, #16
	ldr	r6, [r8, #16]
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
	str	r3, [r8, #8]
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
	str	r3, [r8, #16]
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
	ldr	r0, [r1, #12]
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
	ldr	r4, .L87
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #4]
	ldr	r1, .L87+4
	add	r2, r2, #1
	ldr	r5, .L87+8
	add	r3, r3, #1
	str	r2, [r4, #12]
	ldr	r2, .L87+12
	str	r3, [r4, #4]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #64
	beq	.L52
	ldr	r2, .L87+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L84
.L52:
	tst	r3, #128
	beq	.L56
	ldr	r2, .L87+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L85
.L56:
	tst	r3, #256
	beq	.L59
	ldr	r2, .L87+16
	ldrh	r2, [r2]
	ands	r2, r2, #256
	beq	.L86
.L59:
	tst	r3, #1
	beq	.L83
	ldr	r3, .L87+16
	ldrh	r3, [r3]
	ands	r3, r3, #1
	beq	.L77
.L83:
	ldr	r5, .L87+20
.L60:
	ldr	r3, .L87+24
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #6
	beq	.L63
	bl	drawSelector
	bl	drawButtons
.L63:
	bl	drawWaterfall
	ldr	r4, .L87+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L87+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	ldr	r2, .L87+36
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L83
	ldr	r5, [r4]
	cmp	r5, #1
	beq	.L61
	cmp	r5, #2
	beq	.L62
	cmp	r5, #0
	bne	.L83
	bl	startGame
	ldr	r2, .L87+40
	ldr	r3, .L87+44
	str	r5, [r2]
	ldr	r5, .L87+20
	mov	lr, pc
	bx	r3
	b	.L60
.L85:
	ldr	r1, [r4]
	add	r1, r1, #1
	cmp	r1, #2
	movle	r2, r1
	str	r2, [r4]
	b	.L56
.L84:
	ldr	r2, [r4]
	subs	r2, r2, #1
	movmi	r2, #2
	str	r2, [r4]
	b	.L52
.L86:
	ldr	r3, .L87+48
	ldr	r0, .L87+52
	ldr	r1, [r3]
	ldr	r3, .L87+56
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L59
.L62:
	mov	r2, #5
	ldr	r5, .L87+20
	str	r3, [r4]
	str	r2, [r5]
	b	.L60
.L61:
	bl	setupCredits
	b	.L83
.L88:
	.align	2
.L87:
	.word	.LANCHOR0
	.word	shadowOAMIndex
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	67109120
	.word	currMap
	.word	initGame
	.word	sfx_jump1_length
	.word	sfx_jump1_data
	.word	playSoundB
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
	ldr	r4, .L114
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #4]
	ldr	r1, .L114+4
	add	r2, r2, #1
	ldr	r5, .L114+8
	add	r3, r3, #1
	str	r2, [r4, #12]
	ldr	r2, .L114+12
	str	r3, [r4, #4]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #64
	beq	.L91
	ldr	r2, .L114+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L111
.L91:
	tst	r3, #128
	beq	.L95
	ldr	r2, .L114+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L112
.L95:
	tst	r3, #1
	beq	.L98
	ldr	r2, .L114+16
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L113
.L98:
	tst	r3, #2
	beq	.L99
	ldr	r3, .L114+16
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L99
	mov	lr, #3
	mov	ip, #20
	mov	r0, #50
	ldr	r2, .L114+20
	ldr	r1, .L114+24
	stm	r2, {r3, lr}
	str	r3, [r4]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r3, [r1]
.L99:
	ldr	r3, .L114+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L114+32
	bl	drawSelector
	bl	drawButtons
	bl	drawWaterfall
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L114+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	ldr	r2, .L114+40
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L98
	bl	startGame
	ldr	r2, .L114+44
	ldr	r1, [r4]
	ldr	r3, .L114+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L98
.L112:
	ldr	r1, [r4]
	add	r1, r1, #1
	cmp	r1, #4
	movle	r2, r1
	str	r2, [r4]
	b	.L95
.L111:
	ldr	r2, [r4]
	subs	r2, r2, #1
	movmi	r2, #4
	str	r2, [r4]
	b	.L91
.L115:
	.align	2
.L114:
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
	.word	currMap
	.word	initGame
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
	ldr	r2, .L118
	ldr	r3, .L118+4
	str	r1, [r2]
	ldr	r4, .L118+8
	mov	lr, pc
	bx	r3
	bl	drawButtons
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L118+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L119:
	.align	2
.L118:
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
	ldr	r3, .L148
	ldrh	r2, [r3]
	ands	r3, r2, #1
	ldrne	r3, .L148+4
	ldrhne	r3, [r3]
	andne	r3, r3, #1
	rsbne	r3, r3, #1
	tst	r2, #2
	beq	.L122
	ldr	r1, .L148+4
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r3, #1
.L122:
	tst	r2, #8
	beq	.L123
	ldr	r1, .L148+4
	ldrh	r1, [r1]
	tst	r1, #8
	bne	.L123
.L124:
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L148+8
	ldr	r3, .L148+12
	str	r0, [r1]
	str	r2, [r3]
	bx	lr
.L123:
	tst	r2, #4
	bne	.L147
	cmp	r3, #0
	bxeq	lr
	b	.L124
.L147:
	ldr	r2, .L148+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L124
	cmp	r3, #0
	bxeq	lr
	b	.L124
.L149:
	.align	2
.L148:
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
	ldr	r3, .L152
	mov	lr, pc
	bx	r3
	ldr	r4, .L152+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L152+8
	mov	lr, pc
	bx	r4
	mov	r3, #2256
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L152+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L152+16
	ldr	r1, .L152+20
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L152+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L152+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L153:
	.align	2
.L152:
	.word	hideSprites
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
	ldr	r3, .L163
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L160
	ldr	r3, .L163+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L161
	ldr	r2, .L163+8
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L162
	push	{r4, lr}
	ldr	r3, .L163+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L163+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L162:
	ldr	ip, .L163+20
	ldr	r0, .L163+24
	ldr	r1, .L163+28
	str	r3, [r2]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	b	setupTitleScreen
.L160:
	b	goToWin
.L161:
	b	goToPause
.L164:
	.align	2
.L163:
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
	mov	r1, #0
	ldr	r3, .L224
	ldrh	r0, [r3]
	ands	r3, r0, #1
	ldrne	r3, .L224+4
	ldrhne	r3, [r3]
	ldr	r2, .L224+8
	andne	r3, r3, #1
	rsbne	r3, r3, #1
	tst	r0, #2
	push	{r4, lr}
	str	r1, [r2]
	beq	.L167
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #2
	moveq	r3, #1
.L167:
	tst	r0, #8
	beq	.L168
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r3, #1
.L168:
	tst	r0, #4
	beq	.L169
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #4
	moveq	r3, #1
.L169:
	tst	r0, #64
	beq	.L170
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #64
	moveq	r3, #1
.L170:
	tst	r0, #128
	beq	.L171
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #128
	moveq	r3, #1
.L171:
	tst	r0, #32
	beq	.L172
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #32
	moveq	r3, #1
.L172:
	tst	r0, #16
	beq	.L173
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #16
	moveq	r3, #1
.L173:
	tst	r0, #256
	beq	.L174
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #256
	bne	.L174
.L175:
	bl	setupTitleScreen
	b	.L177
.L174:
	tst	r0, #512
	bne	.L223
.L176:
	cmp	r3, #0
	bne	.L175
.L177:
	ldr	r3, .L224+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L224+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L224+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L223:
	ldr	r2, .L224+4
	ldrh	r2, [r2]
	tst	r2, #512
	bne	.L176
	b	.L175
.L225:
	.align	2
.L224:
	.word	oldButtons
	.word	buttons
	.word	shadowOAMIndex
	.word	drawTimer
	.word	DMANow
	.word	shadowOAM
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
	ldr	r4, .L239
	ldr	r0, .L239+4
	ldrh	ip, [r4, #48]
	ldr	r7, .L239+8
	ldr	r5, .L239+12
	ldr	r2, .L239+16
	str	r3, [r0, #12]
	strh	ip, [r7]	@ movhi
	strh	r3, [r5]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L239+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L239+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L239+28
	ldr	fp, .L239+32
	ldr	r10, .L239+36
	ldr	r9, .L239+40
	ldr	r8, .L239+44
.L227:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L228:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L228
.L230:
	.word	.L235
	.word	.L234
	.word	.L233
	.word	.L232
	.word	.L228
	.word	.L231
	.word	.L229
.L229:
	mov	lr, pc
	bx	r9
	b	.L227
.L231:
	mov	lr, pc
	bx	r10
	b	.L227
.L232:
	ldr	r3, .L239+48
	mov	lr, pc
	bx	r3
	b	.L227
.L233:
	ldr	r3, .L239+52
	mov	lr, pc
	bx	r3
	b	.L227
.L234:
	mov	lr, pc
	bx	r8
	b	.L227
.L235:
	mov	lr, pc
	bx	fp
	b	.L227
.L240:
	.align	2
.L239:
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
	ldr	r0, .L243
	ldr	r2, .L243+4
	strh	r0, [r3]	@ movhi
	mov	r0, #31
	ldr	r3, .L243+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L244:
	.align	2
.L243:
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
