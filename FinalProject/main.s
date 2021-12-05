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
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	r0, #3
	mov	r3, #20
	mov	r2, #50
	ldr	r1, .L4+40
	ldrh	r1, [r1]
	strh	r1, [r5, #26]	@ movhi
	ldr	r1, .L4+44
	ldrh	r1, [r1]
	strh	r1, [r5, #24]	@ movhi
	ldr	r1, .L4+48
	ldr	lr, .L4+52
	str	r3, [r1, #8]
	str	r2, [r1, #12]
	str	r0, [r1, #4]
	str	ip, [r1]
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+56
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	TitleScreenPal
	.word	6288
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
	.word	state
	.word	shadowOAM
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
	ldr	r3, .L24
	ldr	r1, .L24+4
	ldr	r0, [r3, #8]
	ldrh	r2, [r3, #12]
	ldr	r1, [r1]
	push	{r4, r5, r6, r7, lr}
	add	r0, r0, #8
	ldr	r5, .L24+8
	sub	r3, r2, #4
	lsl	r0, r0, #23
	lsl	r3, r3, #16
	cmp	r1, #0
	ldr	ip, [r5]
	ldr	r1, .L24+12
	lsr	r0, r0, #23
	lsr	r3, r3, #16
	bne	.L19
	add	r6, r2, #12
	and	r3, r3, #255
	add	r4, ip, #1
	lsl	lr, ip, #3
	orr	r3, r3, #16384
	add	r2, r2, #28
	and	r6, r6, #255
	strh	r3, [r1, lr]	@ movhi
	orr	r6, r6, #16384
	add	lr, ip, #2
	lsl	r3, r4, #3
	and	r2, r2, #255
	strh	r6, [r1, r3]	@ movhi
	orr	r2, r2, #16384
	lsl	r3, lr, #3
	ldr	r7, .L24+16
	strh	r2, [r1, r3]	@ movhi
	ldr	r6, .L24+20
	ldr	r2, .L24+24
	orr	r0, r0, #32768
	add	r4, r1, r4, lsl #3
	add	lr, r1, lr, lsl #3
	add	r3, r1, ip, lsl #3
	add	ip, ip, #3
	strh	r7, [r3, #4]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r6, [r4, #4]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	str	ip, [r5]
	strh	r0, [lr, #2]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L19:
	ldr	r2, .L24+28
	ldr	r6, .L24+32
	orr	r0, r0, #16384
	add	r1, r1, ip, lsl #3
.L21:
	add	lr, r2, #64
	strh	r2, [r1, #4]	@ movhi
	lsl	r2, lr, #16
	lsr	r2, r2, #16
	add	r4, r3, #16
	and	lr, r3, #255
	cmp	r2, r6
	lsl	r3, r4, #16
	strh	r0, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	lsr	r3, r3, #16
	add	r1, r1, #8
	bne	.L21
	add	ip, ip, #5
	str	ip, [r5]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	selector
	.word	state
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	390
	.word	454
	.word	518
	.word	582
	.word	902
	.size	drawButtons, .-drawButtons
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
	ldr	r1, .L28
	strh	r2, [r3]	@ movhi
	ldr	r2, .L28+4
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L28+8
	strh	r1, [r3, #22]	@ movhi
	ldrh	r2, [r2]
	ldr	r1, .L28+12
	ldr	r0, [r1, #4]
	strh	r2, [r3, #20]	@ movhi
	ldr	r1, .L28+16
	strh	r2, [r3, #24]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L28+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L28+24
	mov	r3, #3904
	mov	r0, #3
	ldr	r2, .L28+28
	ldr	r1, .L28+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L28+36
	ldr	r1, .L28+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L28+44
	ldr	r1, .L28+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L28+52
	ldr	r1, .L28+56
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+60
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L28+64
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L28+68
	ldr	r3, .L28+72
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r4, .L53
	ldr	r3, [r4, #4]
	ldr	r1, .L53+4
	add	r3, r3, #1
	ldr	r2, .L53+8
	str	r3, [r4, #4]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L53+12
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L32
	ldr	r2, .L53+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L50
.L32:
	tst	r3, #128
	beq	.L36
	ldr	r2, .L53+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L51
.L36:
	tst	r3, #1
	beq	.L39
	ldr	r3, .L53+16
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bne	.L39
	ldr	r2, .L53+20
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L39
	ldr	r5, [r4]
	cmp	r5, #1
	beq	.L40
	cmp	r5, #2
	beq	.L41
	cmp	r5, #0
	beq	.L52
.L39:
	ldr	r3, .L53+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+28
	bl	drawSelector
	bl	drawButtons
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L53+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r1, [r4]
	add	r1, r1, #1
	cmp	r1, #2
	movle	r2, r1
	str	r2, [r4]
	b	.L36
.L50:
	ldr	r2, [r4]
	subs	r2, r2, #1
	movmi	r2, #2
	str	r2, [r4]
	b	.L32
.L52:
	bl	startGame
	ldr	r2, .L53+36
	ldr	r3, .L53+40
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	b	.L39
.L41:
	mov	r1, #5
	ldr	r2, .L53+44
	str	r3, [r4]
	str	r1, [r2]
	b	.L39
.L40:
	mov	r2, #6
	ldr	r3, .L53+44
	str	r2, [r3]
	b	.L39
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.word	shadowOAMIndex
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	currMap
	.word	initGame
	.word	state
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
	ldr	r4, .L80
	ldr	r3, [r4, #4]
	ldr	r1, .L80+4
	ldr	r5, .L80+8
	add	r3, r3, #1
	ldr	r2, .L80+12
	str	r3, [r4, #4]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #64
	beq	.L57
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L77
.L57:
	tst	r3, #128
	beq	.L61
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L78
.L61:
	tst	r3, #1
	beq	.L64
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L79
.L64:
	tst	r3, #2
	beq	.L65
	ldr	r3, .L80+16
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L65
	mov	lr, #3
	mov	ip, #20
	mov	r0, #50
	ldr	r2, .L80+20
	ldr	r1, .L80+24
	stm	r2, {r3, lr}
	str	r3, [r4]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r3, [r1]
.L65:
	ldr	r3, .L80+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L80+32
	bl	drawSelector
	bl	drawButtons
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L80+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	ldr	r2, .L80+40
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L64
	bl	startGame
	ldr	r2, .L80+44
	ldr	r1, [r4]
	ldr	r3, .L80+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L64
.L78:
	ldr	r1, [r4]
	add	r1, r1, #1
	cmp	r1, #4
	movle	r2, r1
	str	r2, [r4]
	b	.L61
.L77:
	ldr	r2, [r4]
	subs	r2, r2, #1
	movmi	r2, #4
	str	r2, [r4]
	b	.L57
.L81:
	.align	2
.L80:
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
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L91
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L90
	ldr	r3, .L91+4
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #2
	push	{r4, lr}
	ldrne	r3, .L91+8
	strne	r2, [r3]
	ldr	r3, .L91+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L90:
	mov	r3, #0
	ldr	r1, .L91+20
	ldr	r2, .L91+24
	str	r3, [r1]
	str	r3, [r2]
	b	setupTitleScreen
.L92:
	.align	2
.L91:
	.word	dead
	.word	pauseVar
	.word	state
	.word	updateGame
	.word	drawGame
	.word	hOff
	.word	vOff
	.size	game, .-game
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
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L94
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	state
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
	ldr	r3, .L123
	ldrh	r2, [r3]
	ands	r3, r2, #1
	ldrne	r3, .L123+4
	ldrhne	r3, [r3]
	andne	r3, r3, #1
	rsbne	r3, r3, #1
	tst	r2, #2
	beq	.L98
	ldr	r1, .L123+4
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r3, #1
.L98:
	tst	r2, #8
	beq	.L99
	ldr	r1, .L123+4
	ldrh	r1, [r1]
	tst	r1, #8
	bne	.L99
.L100:
	mov	r1, #67108864
	mov	r2, #1
	ldr	r0, .L123+8
	ldr	r3, .L123+12
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L99:
	tst	r2, #4
	beq	.L101
	ldr	r2, .L123+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L100
.L101:
	cmp	r3, #0
	bxeq	lr
	b	.L100
.L124:
	.align	2
.L123:
	.word	oldButtons
	.word	buttons
	.word	1028
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
	ldr	r4, .L136
	ldr	r1, .L136+4
	ldrh	r0, [r4, #48]
	ldr	fp, .L136+8
	ldr	r5, .L136+12
	ldr	r2, .L136+16
	strh	r0, [fp]	@ movhi
	str	r3, [r1, #4]
	strh	r3, [r5]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r6, .L136+20
	ldr	r10, .L136+24
	ldr	r9, .L136+28
	ldr	r8, .L136+32
	ldr	r7, .L136+36
.L126:
	ldr	r2, [r6]
	ldrh	r3, [fp]
.L127:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L127
.L129:
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L127
	.word	.L127
	.word	.L128
.L128:
	mov	lr, pc
	bx	r9
	b	.L126
.L130:
	mov	lr, pc
	bx	r7
	b	.L126
.L131:
	mov	lr, pc
	bx	r8
	b	.L126
.L132:
	mov	lr, pc
	bx	r10
	b	.L126
.L137:
	.align	2
.L136:
	.word	67109120
	.word	.LANCHOR0
	.word	buttons
	.word	oldButtons
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
	ldr	r3, .L139
	str	r2, [r3]
	bx	lr
.L140:
	.align	2
.L139:
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
	ldr	r0, .L144
	ldr	r2, .L144+4
	strh	r0, [r3]	@ movhi
	mov	r0, #31
	ldr	r3, .L144+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L145:
	.align	2
.L144:
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
	.comm	selector,16,4
	.global	currSelection
	.global	timer
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
