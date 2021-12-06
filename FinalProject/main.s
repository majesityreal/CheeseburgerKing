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
	mov	r3, #5120
	mov	r5, #67108864
	mov	r2, #6144
	ldr	r4, .L4
	strh	r3, [r5]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #6080
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r2, #20
	mov	r1, #50
	mov	r0, #3
	mov	r6, #0
	ldr	r3, .L4+36
	ldrh	r3, [r3]
	strh	r3, [r5, #26]	@ movhi
	ldr	r3, .L4+40
	ldr	ip, .L4+44
	ldrh	r3, [r3]
	strh	r3, [r5, #24]	@ movhi
	str	r2, [ip, #8]
	str	r1, [ip, #12]
	mov	r2, #117440512
	ldr	r1, .L4+48
	mov	r3, #512
	str	r0, [ip, #4]
	str	r6, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+56
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+60
	ldr	r3, .L4+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+68
	str	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
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
	@ link register save eliminated.
	mov	r2, #6
	ldr	r3, .L10
	str	r2, [r3]
	bx	lr
.L11:
	.align	2
.L10:
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
	@ link register save eliminated.
	bx	lr
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
	ldr	r2, .L16
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L16+4
	ldr	r6, [r2, #4]
	smull	r1, r7, r3, r6
	ldr	r4, .L16+8
	ldr	r5, .L16+12
	ldr	r3, [r2]
	ldr	lr, [r4, #12]
	ldr	ip, [r5]
	ldr	r2, .L16+16
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
	bne	.L13
	ldr	r3, .L16+20
	ldr	r1, [r4, #4]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4]
.L13:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L17:
	.align	2
.L16:
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
	ldr	r3, .L26
	ldr	r0, .L26+4
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [r3, #8]
	ldrh	r1, [r3, #12]
	ldr	lr, .L26+8
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
	bne	.L19
	ldr	r7, .L26+12
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
	ldr	r8, .L26+16
	ldr	r6, .L26+20
	ldr	r4, .L26+24
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
.L19:
	cmp	ip, #5
	ldr	ip, .L26+12
	beq	.L25
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
	ldr	r7, .L26+28
	ldr	r6, .L26+32
	ldr	r1, .L26+36
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
.L25:
	ldr	r1, .L26+40
	ldr	r6, .L26+44
	orr	r2, r2, #16384
	add	ip, ip, r0, lsl #3
.L22:
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
	bne	.L22
	add	r3, r0, #5
	str	r3, [lr]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r8, .L32
	ldr	r5, .L32+4
	ldr	r0, [r8, #16]
	smull	r3, r5, r0, r5
	ldr	r3, .L32+8
	ldr	r4, [r3]
	ldr	fp, .L32+12
	ldr	r7, [r8, #8]
	ldr	r9, [r3, #4]
	lsl	r3, r4, #16
	ldr	r1, [fp]
	ldr	lr, .L32+16
	sub	sp, sp, #12
	lsr	r3, r3, #16
	ldr	r6, [r8, #12]
	ldr	r2, .L32+20
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
	bne	.L29
	ldr	r2, .L32+4
	add	r3, r7, #1
	smull	r1, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2, lsl #1
	str	r3, [r8, #8]
.L29:
	add	r3, r0, r0, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L32+24
	add	r3, r3, r3, lsl #16
	ldr	r1, .L32+28
	add	r3, r0, r3, lsl #1
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	bcc	.L28
	ldr	r3, [sp]
	add	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	str	r3, [r8, #12]
.L28:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r1, .L36
	strh	r2, [r3]	@ movhi
	ldr	r2, .L36+4
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L36+8
	strh	r1, [r3, #22]	@ movhi
	ldrh	r2, [r2]
	ldr	r1, .L36+12
	ldr	r0, [r1, #4]
	strh	r2, [r3, #20]	@ movhi
	ldr	r1, .L36+16
	strh	r2, [r3, #24]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L36+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+24
	mov	r3, #3904
	mov	r0, #3
	ldr	r2, .L36+28
	ldr	r1, .L36+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L36+36
	ldr	r1, .L36+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L36+44
	ldr	r1, .L36+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L36+52
	ldr	r1, .L36+56
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+60
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36+64
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+68
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L36+72
	ldr	r3, .L36+76
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	5640
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	srand
	.word	waitForVBlank
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
	ldr	r4, .L74
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #16]
	ldr	r1, .L74+4
	add	r2, r2, #1
	ldr	r5, .L74+8
	add	r3, r3, #1
	str	r2, [r4, #4]
	ldr	r2, .L74+12
	str	r3, [r4, #16]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #64
	beq	.L40
	ldr	r2, .L74+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L71
.L40:
	tst	r3, #128
	beq	.L44
	ldr	r2, .L74+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L72
.L44:
	tst	r3, #256
	beq	.L47
	ldr	r2, .L74+16
	ldrh	r2, [r2]
	ands	r2, r2, #256
	beq	.L73
.L47:
	tst	r3, #1
	beq	.L70
	ldr	r3, .L74+16
	ldrh	r3, [r3]
	ands	r3, r3, #1
	beq	.L65
.L70:
	ldr	r5, .L74+20
.L48:
	ldr	r3, .L74+24
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #6
	beq	.L51
	bl	drawSelector
	bl	drawButtons
.L51:
	bl	drawWaterfall
	ldr	r4, .L74+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L74+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	ldr	r2, .L74+36
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L70
	ldr	r5, [r4]
	cmp	r5, #1
	beq	.L49
	cmp	r5, #2
	beq	.L50
	cmp	r5, #0
	bne	.L70
	bl	startGame
	ldr	r2, .L74+40
	ldr	r3, .L74+44
	str	r5, [r2]
	ldr	r5, .L74+20
	mov	lr, pc
	bx	r3
	b	.L48
.L72:
	ldr	r1, [r4]
	add	r1, r1, #1
	cmp	r1, #2
	movle	r2, r1
	str	r2, [r4]
	b	.L44
.L71:
	ldr	r2, [r4]
	subs	r2, r2, #1
	movmi	r2, #2
	str	r2, [r4]
	b	.L40
.L73:
	ldr	r3, .L74+48
	ldr	r0, .L74+52
	ldr	r1, [r3]
	ldr	r3, .L74+56
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L47
.L50:
	mov	r2, #5
	ldr	r5, .L74+20
	str	r3, [r4]
	str	r2, [r5]
	b	.L48
.L49:
	mov	r3, #6
	ldr	r5, .L74+20
	str	r3, [r5]
	b	.L48
.L75:
	.align	2
.L74:
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
	ldr	r4, .L101
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #16]
	ldr	r1, .L101+4
	add	r2, r2, #1
	ldr	r5, .L101+8
	add	r3, r3, #1
	str	r2, [r4, #4]
	ldr	r2, .L101+12
	str	r3, [r4, #16]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #64
	beq	.L78
	ldr	r2, .L101+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L98
.L78:
	tst	r3, #128
	beq	.L82
	ldr	r2, .L101+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L99
.L82:
	tst	r3, #1
	beq	.L85
	ldr	r2, .L101+16
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L100
.L85:
	tst	r3, #2
	beq	.L86
	ldr	r3, .L101+16
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L86
	mov	lr, #3
	mov	ip, #20
	mov	r0, #50
	ldr	r2, .L101+20
	ldr	r1, .L101+24
	stm	r2, {r3, lr}
	str	r3, [r4]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r3, [r1]
.L86:
	ldr	r3, .L101+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L101+32
	bl	drawSelector
	bl	drawButtons
	bl	drawWaterfall
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L101+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	ldr	r2, .L101+40
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L85
	bl	startGame
	ldr	r2, .L101+44
	ldr	r1, [r4]
	ldr	r3, .L101+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L85
.L99:
	ldr	r1, [r4]
	add	r1, r1, #1
	cmp	r1, #4
	movle	r2, r1
	str	r2, [r4]
	b	.L82
.L98:
	ldr	r2, [r4]
	subs	r2, r2, #1
	movmi	r2, #4
	str	r2, [r4]
	b	.L78
.L102:
	.align	2
.L101:
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
	ldr	r2, .L105
	ldr	r3, .L105+4
	str	r1, [r2]
	ldr	r4, .L105+8
	mov	lr, pc
	bx	r3
	bl	drawButtons
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L105+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	goToPause, .-goToPause
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
	ldr	r3, .L114
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L112
	ldr	r2, .L114+4
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L113
	push	{r4, lr}
	ldr	r3, .L114+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L114+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L113:
	ldr	ip, .L114+16
	ldr	r0, .L114+20
	ldr	r1, .L114+24
	str	r3, [r2]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	b	setupTitleScreen
.L112:
	b	goToPause
.L115:
	.align	2
.L114:
	.word	pauseVar
	.word	dead
	.word	updateGame
	.word	drawGame
	.word	hOff
	.word	vOff
	.word	dying
	.size	game, .-game
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
	ldr	r3, .L144
	ldrh	r2, [r3]
	ands	r3, r2, #1
	ldrne	r3, .L144+4
	ldrhne	r3, [r3]
	andne	r3, r3, #1
	rsbne	r3, r3, #1
	tst	r2, #2
	beq	.L118
	ldr	r1, .L144+4
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r3, #1
.L118:
	tst	r2, #8
	beq	.L119
	ldr	r1, .L144+4
	ldrh	r1, [r1]
	tst	r1, #8
	bne	.L119
.L120:
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L144+8
	ldr	r3, .L144+12
	str	r0, [r1]
	str	r2, [r3]
	bx	lr
.L119:
	tst	r2, #4
	bne	.L143
	cmp	r3, #0
	bxeq	lr
	b	.L120
.L143:
	ldr	r2, .L144+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L120
	cmp	r3, #0
	bxeq	lr
	b	.L120
.L145:
	.align	2
.L144:
	.word	oldButtons
	.word	buttons
	.word	pauseVar
	.word	state
	.size	pause, .-pause
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
	ldr	r4, .L157
	ldr	r1, .L157+4
	ldrh	r0, [r4, #48]
	ldr	fp, .L157+8
	ldr	r5, .L157+12
	ldr	r2, .L157+16
	str	r3, [r1, #4]
	strh	r0, [fp]	@ movhi
	strh	r3, [r5]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L157+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L157+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L157+28
	ldr	r10, .L157+32
	ldr	r9, .L157+36
	ldr	r8, .L157+40
	ldr	r7, .L157+44
.L147:
	ldr	r2, [r6]
	ldrh	r3, [fp]
.L148:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L148
.L150:
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L148
	.word	.L148
	.word	.L149
.L149:
	mov	lr, pc
	bx	r9
	b	.L147
.L151:
	mov	lr, pc
	bx	r7
	b	.L147
.L152:
	mov	lr, pc
	bx	r8
	b	.L147
.L153:
	mov	lr, pc
	bx	r10
	b	.L147
.L158:
	.align	2
.L157:
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
	.word	game
	.word	pause
	.size	main, .-main
	.text
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
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L160
	str	r2, [r3]
	bx	lr
.L161:
	.align	2
.L160:
	.word	state
	.size	goToWin, .-goToWin
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
	@ link register save eliminated.
	bx	lr
	.size	win, .-win
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
	ldr	r0, .L165
	ldr	r2, .L165+4
	strh	r0, [r3]	@ movhi
	mov	r0, #31
	ldr	r3, .L165+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L166:
	.align	2
.L165:
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
	.type	timer, %object
	.size	timer, 4
timer:
	.space	4
	.type	waterfallFrames, %object
	.size	waterfallFrames, 4
waterfallFrames:
	.space	4
	.type	kingFrames, %object
	.size	kingFrames, 4
kingFrames:
	.space	4
	.type	waterfallTimer, %object
	.size	waterfallTimer, 4
waterfallTimer:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
