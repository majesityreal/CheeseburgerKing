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
	mov	r1, #67108864
	mov	r4, #0
	ldr	r2, .L4
	mov	r3, #256
	strh	r2, [r1]	@ movhi
	mov	r0, #3
	strh	r4, [r1, #12]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L4+4
	ldr	r5, .L4+8
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+12
	ldr	r0, .L4+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+20
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1028
	.word	TitleScreenPal
	.word	DMANow
	.word	drawFullscreenImage4
	.word	TitleScreenBitmap
	.word	state
	.size	setupTitleScreen, .-setupTitleScreen
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
	ldr	r1, .L8
	strh	r2, [r3]	@ movhi
	ldr	r2, .L8+4
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L8+8
	strh	r1, [r3, #22]	@ movhi
	ldrh	r2, [r2]
	ldr	r1, .L8+12
	strh	r2, [r3, #20]	@ movhi
	ldr	r0, [r1]
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+20
	ldr	r4, .L8+24
	mov	lr, pc
	bx	r3
	mov	r3, #48
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+28
	mov	lr, pc
	bx	r4
	mov	r3, #560
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+32
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r0, #3
	ldr	r2, .L8+36
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r4
	mov	r3, #3904
	mov	r0, #3
	ldr	r2, .L8+44
	ldr	r1, .L8+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+52
	ldr	r1, .L8+56
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+60
	ldr	r1, .L8+64
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+68
	ldr	r1, .L8+72
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+76
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L8+80
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+84
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L8+88
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	5640
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	srand
	.word	waitForVBlank
	.word	DMANow
	.word	hugeMapPal
	.word	hugeMapTiles
	.word	100712448
	.word	hugeMapMap
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
	.word	initGame
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
	@ link register save eliminated.
	ldr	r2, .L23
	ldr	r1, .L23+4
	ldr	r3, [r2]
	ldrh	r1, [r1]
	add	r3, r3, #1
	tst	r1, #8
	str	r3, [r2]
	beq	.L11
	ldr	r3, .L23+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	startGame
.L11:
	tst	r1, #4
	bxeq	lr
	ldr	r3, .L23+8
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	startGame
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.size	titleScreen, .-titleScreen
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
	ldr	r3, .L31
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #2
	push	{r4, lr}
	ldrne	r3, .L31+4
	strne	r2, [r3]
	ldr	r3, .L31+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L31+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	pauseVar
	.word	state
	.word	updateGame
	.word	drawGame
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
	ldr	r3, .L34
	str	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L63
	ldrh	r2, [r3]
	ands	r3, r2, #1
	ldrne	r3, .L63+4
	ldrhne	r3, [r3]
	andne	r3, r3, #1
	rsbne	r3, r3, #1
	tst	r2, #2
	beq	.L38
	ldr	r1, .L63+4
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r3, #1
.L38:
	tst	r2, #8
	beq	.L39
	ldr	r1, .L63+4
	ldrh	r1, [r1]
	tst	r1, #8
	bne	.L39
.L40:
	mov	r1, #67108864
	mov	r2, #1
	ldr	r0, .L63+8
	ldr	r3, .L63+12
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L39:
	tst	r2, #4
	beq	.L41
	ldr	r2, .L63+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L40
.L41:
	cmp	r3, #0
	bxeq	lr
	b	.L40
.L64:
	.align	2
.L63:
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
	ldr	r4, .L73
	ldr	r2, .L73+4
	ldrh	r1, [r4, #48]
	ldr	r5, .L73+8
	ldr	r10, .L73+12
	push	{r7, lr}
	str	r3, [r2]
	ldr	r2, .L73+16
	strh	r3, [r5]	@ movhi
	strh	r1, [r10]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r6, .L73+20
	ldr	r9, .L73+24
	ldr	r8, .L73+28
	ldr	r7, .L73+32
.L66:
	ldr	r2, [r6]
	ldrh	r3, [r10]
.L69:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	cmp	r2, #1
	strh	r3, [r10]	@ movhi
	beq	.L67
	cmp	r2, #2
	beq	.L68
	cmp	r2, #0
	bne	.L69
	mov	lr, pc
	bx	r9
	b	.L66
.L68:
	mov	lr, pc
	bx	r7
	b	.L66
.L67:
	mov	lr, pc
	bx	r8
	b	.L66
.L74:
	.align	2
.L73:
	.word	67109120
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	setupTitleScreen
	.word	state
	.word	titleScreen
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
	ldr	r3, .L76
	str	r2, [r3]
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r0, .L81
	ldr	r2, .L81+4
	strh	r0, [r3]	@ movhi
	mov	r0, #31
	ldr	r3, .L81+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L82:
	.align	2
.L81:
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
	.global	timer
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	timer, %object
	.size	timer, 4
timer:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
