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
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #13
	mov	r6, #16
	mov	r5, #1
	mov	r4, #2
	mov	lr, #60
	mov	r1, #3
	mov	ip, #20
	mov	r0, #6
	ldr	r3, .L4
	str	r7, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r4, [r3, #68]
	str	lr, [r3, #8]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	ip, [r3, #12]
	str	r0, [r3, #48]
	str	r1, [r3, #20]
	str	r1, [r3, #72]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bl	initPlayer
	mov	r10, #12
	mov	r3, #0
	mov	r1, #1
	mov	r0, #4
	mov	r9, #11
	mov	r8, #15
	mov	r5, #96
	mov	r7, #13
	mov	r6, #16
	mov	r4, #120
	mov	lr, #128
	mov	ip, #2
	ldr	r2, .L8
	str	r1, [r2, #36]
	str	r10, [r2, #16]
	str	r9, [r2, #20]
	str	r8, [r2, #12]
	str	r0, [r2, #32]
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	str	r3, [r2, #28]
	str	r3, [r2, #48]
	ldr	r2, .L8+4
	str	r0, [r2, #36]
	str	r1, [r2]
	str	r1, [r2, #56]
	str	r7, [r2, #12]
	ldr	r1, .L8+8
	str	r6, [r2, #16]
	str	r4, [r2, #8]
	str	lr, [r2, #60]
	ldr	r4, .L8+12
	ldr	lr, .L8+16
	str	ip, [r2, #44]
	str	r5, [r2, #4]
	str	r5, [r2, #64]
	str	r3, [r2, #20]
	str	r3, [r2, #32]
	str	r3, [r2, #24]
	str	r3, [r2, #52]
	str	r3, [r2, #40]
	ldr	ip, .L8+20
	ldr	r0, .L8+24
	ldr	r2, .L8+28
	stmib	r1, {r4, lr}
	str	ip, [r1, #16]
	str	r0, [r1, #20]
	str	r4, [r1, #28]
	str	lr, [r1, #32]
	str	ip, [r1, #40]
	str	r0, [r1, #44]
	str	r3, [r2]
	str	r3, [r2, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	slash
	.word	goblin1
	.word	maps
	.word	map2CollisionBitmap
	.word	map2Map
	.word	map1CollisionBitmap
	.word	map1Map
	.word	.LANCHOR0
	.size	initGame, .-initGame
	.align	2
	.global	initSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSlash, %function
initSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #1
	mov	lr, #12
	mov	ip, #11
	mov	r0, #15
	mov	r1, #4
	ldr	r3, .L12
	str	r4, [r3, #36]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r1, [r3, #32]
	str	r2, [r3, #8]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	slash
	.size	initSlash, .-initSlash
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r0, #1
	mov	r7, #13
	mov	r6, #16
	mov	r5, #120
	mov	r4, #4
	mov	lr, #128
	mov	r1, #96
	mov	ip, #2
	ldr	r3, .L16
	str	r7, [r3, #12]
	str	r6, [r3, #16]
	str	r5, [r3, #8]
	str	r4, [r3, #36]
	str	lr, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #56]
	str	ip, [r3, #44]
	str	r1, [r3, #4]
	str	r1, [r3, #64]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #24]
	str	r2, [r3, #52]
	str	r2, [r3, #40]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	goblin1
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initMaps
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMaps, %function
initMaps:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19
	ldr	ip, .L19+4
	ldr	r0, .L19+8
	ldr	r1, .L19+12
	ldr	r2, .L19+16
	str	ip, [r3, #4]
	str	ip, [r3, #28]
	str	r0, [r3, #8]
	str	r0, [r3, #32]
	str	r1, [r3, #16]
	str	r1, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #44]
	bx	lr
.L20:
	.align	2
.L19:
	.word	maps
	.word	map2CollisionBitmap
	.word	map2Map
	.word	map1CollisionBitmap
	.word	map1Map
	.size	initMaps, .-initMaps
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L63
	push	{r4, r5, r6, lr}
	ldr	r4, .L63+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L22
	cmp	r2, #0
	beq	.L61
	ldrh	r3, [r3, #48]
.L25:
	ldr	r3, .L63+8
	ldr	r1, [r3, #8]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L28
	movne	r1, #2
	strne	r1, [r4, #36]
.L28:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	movne	r3, #6
	strne	r3, [r4, #36]
	cmp	r2, #0
	movne	r3, #4
	strne	r3, [r4, #36]
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L31
	mov	r1, #5
	ldr	r5, [r4, #32]
	ldr	r3, .L63+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	bne	.L33
.L34:
	ldr	r3, .L63+12
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	beq	.L41
.L42:
	ldr	r0, [r4, #44]
	ldr	r3, .L63+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L35:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L25
.L33:
	ldr	r1, .L63+12
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L35
	ldr	r1, [r4, #36]
.L41:
	cmp	r1, #1
	beq	.L42
	cmp	r1, #6
	beq	.L42
	cmp	r1, #5
	beq	.L62
	cmp	r3, #0
	beq	.L42
	b	.L35
.L22:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L25
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L25
.L31:
	ldr	r5, [r4, #32]
	ldr	r3, .L63+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L33
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L42
	b	.L34
.L62:
	ldr	r0, [r4, #44]
	ldr	r3, .L63+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	str	r1, [r4, #44]
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L35
.L64:
	.align	2
.L63:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L84
	ldr	r3, [r1, #52]
	ldr	r0, .L84+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L66
	ldr	ip, .L84+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L66:
	ldr	ip, .L84+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [ip]
	ldr	ip, .L84+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L84+8
	sub	ip, ip, lr
	ldr	r6, [r1, #56]
	lsl	r3, r3, #23
	and	ip, ip, #255
	lsr	r3, r3, #23
	lsl	lr, r2, #3
	orr	r3, r3, #16384
	add	r5, r4, r2, lsl #3
	cmp	r6, #0
	strh	ip, [r4, lr]	@ movhi
	ldr	ip, [r1, #36]
	strh	r3, [r5, #2]	@ movhi
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #44]
	cmp	ip, #6
	ldrls	pc, [pc, ip, asl #2]
	b	.L69
.L71:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L70
.L70:
	ldr	r1, .L84+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L67:
	add	r2, r2, #1
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L67
.L76:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L67
.L75:
	ldr	r1, .L84+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L67
.L74:
	ldr	r1, .L84+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L67
.L73:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L67
.L72:
	ldr	r1, .L84+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L67
.L69:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L67
.L85:
	.align	2
.L84:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawPlayer, .-drawPlayer
	.global	__aeabi_fmul
	.global	__aeabi_fsub
	.align	2
	.global	Q_rsqrt
	.syntax unified
	.arm
	.fpu softvfp
	.type	Q_rsqrt, %function
Q_rsqrt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L88
	ldr	r5, .L88+4
	sub	r4, r4, r0, asr #1
	mov	r1, #1056964608
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L88+8
	mov	r1, r0
	mov	r0, #1069547520
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	1597463007
	.word	__aeabi_fmul
	.word	__aeabi_fsub
	.size	Q_rsqrt, .-Q_rsqrt
	.align	2
	.global	animateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateEnemies, %function
animateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L93
	ldr	r3, .L93+4
	ldr	r4, [r5, #20]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L91
	ldr	r0, [r5, #32]
	ldr	r3, .L93+8
	ldr	r1, [r5, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #32]
.L91:
	add	r4, r4, #1
	str	r4, [r5, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	goblin1
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateEnemies, .-animateEnemies
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L105
	ldr	r3, [r1]
	ldr	r0, .L105+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	bne	.L96
	ldr	ip, .L105+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L96:
	ldr	ip, .L105+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #8]
	ldr	lr, [ip]
	ldr	ip, .L105+16
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r1, #52]
	ldr	ip, .L105+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r5, ip, r2, lsl #3
	orr	r3, r3, #16384
	cmp	r6, #0
	strh	r3, [r5, #2]	@ movhi
	ldr	lr, [r1, #4]
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #32]
	sub	lr, lr, r4
	and	lr, lr, #255
	lsl	r4, r2, #3
	add	r3, r3, #73
	strh	lr, [ip, r4]	@ movhi
	lsl	r3, r3, #1
	add	ip, ip, r4
	add	r2, r2, #1
	strh	r3, [ip, #4]	@ movhi
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	goblin1
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	animateSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateSlash, %function
animateSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L117
	ldr	r3, [r2, #24]
	cmp	r3, #6
	beq	.L110
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L110
	cmp	r3, #18
	bne	.L109
.L110:
	ldr	r1, [r2, #28]
	add	r1, r1, #1
	str	r1, [r2, #28]
.L109:
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L118:
	.align	2
.L117:
	.word	slash
	.size	animateSlash, .-animateSlash
	.align	2
	.global	drawSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSlash, %function
drawSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L129
	ldr	r3, [r1, #36]
	ldr	r0, .L129+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L120
	ldr	ip, .L129+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L120:
	ldr	ip, .L129+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L129+16
	ldr	ip, .L129+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L129+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r5, ip, r2, lsl #3
	orr	r3, r3, #16384
	cmp	r6, #0
	strh	r3, [r5, #2]	@ movhi
	ldr	lr, [r1]
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #28]
	sub	lr, lr, r4
	and	lr, lr, #255
	lsl	r4, r2, #3
	add	r3, r3, #132
	strh	lr, [ip, r4]	@ movhi
	lsl	r3, r3, #1
	add	ip, ip, r4
	add	r2, r2, #1
	strh	r3, [ip, #4]	@ movhi
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L130:
	.align	2
.L129:
	.word	slash
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	player
	.word	vOff
	.size	drawSlash, .-drawSlash
	.align	2
	.global	checkCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollision, %function
checkCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L134
	ldr	r2, [r3, #16]
	ldr	r3, .L134+4
	ldr	r3, [r3]
	lsl	r1, r1, #9
	cmp	r2, #0
	add	r3, r3, r1
	addne	r3, r3, r0
	ldrbne	r0, [r3, #256]	@ zero_extendqisi2
	ldrbeq	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L135:
	.align	2
.L134:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	checkCollision, .-checkCollision
	.align	2
	.global	groundCheck
	.syntax unified
	.arm
	.fpu softvfp
	.type	groundCheck, %function
groundCheck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r1, r3
	push	{r4, r5, r6, lr}
	add	r4, r1, #1
	mov	r1, r4
	mov	r5, r2
	mov	r6, r0
	bl	checkCollision
	cmp	r0, #0
	movne	r0, #1
	bne	.L136
	mov	r1, r4
	add	r0, r6, r5
	bl	checkCollision
	subs	r0, r0, #0
	movne	r0, #1
.L136:
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	groundCheck, .-groundCheck
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L235
	ldr	r4, [r5, #12]
	ldr	r7, [r5, #8]
	ldr	r3, [r5, #28]
	ldr	r2, [r5, #24]
	sub	sp, sp, #36
	mov	r0, r4
	mov	r1, r7
	str	r3, [sp, #24]
	str	r2, [sp, #16]
	bl	groundCheck
	cmp	r0, #0
	movne	r3, #0
	ldrne	r6, .L235+4
	strne	r3, [r6, #20]
	strne	r3, [r6, #12]
	ldr	r3, .L235+8
	ldrh	r3, [r3]
	ldr	r2, .L235+12
	ldreq	r6, .L235+4
	tst	r3, #64
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	beq	.L142
	ldr	r3, .L235+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L226
.L142:
	ldr	r8, [r6, #8]
	cmp	r8, #0
	bge	.L151
.L150:
	ldr	r3, [sp, #16]
	mov	fp, #0
	add	r9, r4, r3
	b	.L154
.L227:
	mov	r1, r10
	mov	r0, r9
	bl	checkCollision
	cmp	r0, #0
	bne	.L152
	sub	fp, fp, #1
	cmp	fp, r8
	ble	.L151
.L154:
	add	r10, fp, r7
	mov	r1, r10
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L227
.L152:
	mov	r0, #1
	mov	r1, #0
	ldr	r8, .L235+20
	ldr	r2, [r8]
	add	r3, fp, r0
	add	r7, r7, r3
	add	r3, r2, r3
	str	r7, [r5, #8]
	str	r3, [r8]
	str	r1, [r6, #8]
	str	r1, [r6, #24]
	str	r1, [r6, #28]
	str	r0, [r6, #20]
.L151:
	ldr	r3, .L235+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L155
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L155
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ble	.L156
	mov	r9, r4
	ldr	r7, [r5, #8]
	add	r3, r4, #2
	str	r3, [sp, #28]
	add	r10, r7, r4
.L159:
	sub	fp, r10, r9
	mov	r0, r9
	mov	r1, fp
	bl	checkCollision
	mov	r3, r0
	ldr	r2, [sp, #16]
	cmp	r3, #0
	add	r0, r2, r9
	add	r9, r9, #1
	bne	.L157
	mov	r1, fp
	bl	checkCollision
	cmp	r0, #0
	bne	.L157
	ldr	r3, [sp, #28]
	cmp	r3, r9
	bne	.L159
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L185
	b	.L187
.L155:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L222
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ldrgt	r7, [r5, #8]
	ble	.L224
.L187:
	ldr	r3, [sp, #24]
	add	r9, r3, r7
	ldr	r3, [sp, #16]
	mov	fp, #0
	str	r7, [sp, #16]
	add	r10, r4, r3
	b	.L166
.L228:
	mov	r1, r7
	mov	r0, r10
	bl	checkCollision
	cmp	r0, #0
	bne	.L164
	add	fp, fp, #1
	cmp	fp, r8
	bge	.L224
.L166:
	add	r7, fp, r9
	mov	r1, r7
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L228
.L164:
	mov	r2, #1
	ldr	r8, .L235+20
	ldr	r7, [sp, #16]
	ldr	r3, [r8]
	sub	fp, fp, #1
	add	r7, fp, r7
	add	fp, r3, fp
	ldr	r3, .L235+12
	str	r7, [r5, #8]
	str	fp, [r8]
	str	r2, [r3, #4]
.L163:
	ldr	r3, .L235+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r6, #28]
	ldr	r3, [r6, #24]
	bne	.L168
	cmp	r3, #0
	bne	.L229
.L169:
	ldr	r3, .L235+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L235+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L235+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L235+40
	mov	lr, pc
	bx	r3
	mov	r3, r0
	ldr	r0, [r6]
	tst	r0, #3
	ldreq	r2, [r6, #28]
	addeq	r2, r2, #1
	streq	r2, [r6, #28]
	ldr	r2, .L235+12
	ldr	r2, [r2, #4]
	cmp	r2, #0
	str	r3, [r6, #8]
	ldr	r7, [r5, #8]
	ldr	r2, [r8]
	bne	.L185
	add	r7, r7, r3
	cmp	r2, #255
	str	r7, [r5, #8]
	sub	r1, r7, r2
	ble	.L221
.L174:
	lsr	ip, r3, #31
	cmp	r1, #80
	movgt	r1, #0
	andle	r1, ip, #1
	cmp	r1, #0
	beq	.L173
.L225:
	add	r3, r3, r2
	str	r3, [r8]
	b	.L173
.L157:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #8]
	str	r3, [r6, #24]
	str	r2, [r6, #20]
.L156:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L224
.L222:
	ldr	r7, [r5, #8]
.L185:
	mov	r3, #0
	ldr	r0, [r6]
	str	r3, [r6, #8]
	str	r3, [r6, #28]
	str	r3, [r6, #24]
.L173:
	ldr	r3, .L235+44
	ldr	r1, [r5, #68]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r8, [r5, #12]
	bne	.L176
	ldr	r3, .L235+24
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L177
	ldr	r9, [r5, #20]
	sub	r4, r8, r9
	mov	r0, r4
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L230
.L177:
	ldr	r3, .L235+24
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L176
	ldr	r4, [r5, #24]
	ldr	r9, [r5, #20]
	add	r4, r8, r4
	add	r4, r4, r9
	mov	r0, r4
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L231
.L176:
	ldr	r3, [r5, #56]
	ldr	r4, .L235+48
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r4, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r2, r3, r8
	str	r7, [r4]
	str	r3, [r4, #4]
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	bgt	.L232
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r4, #36]
.L182:
	ldr	r3, .L235+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L183
	ldr	r3, .L235+16
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L183
	ldr	r3, [r5, #60]
	cmp	r3, #0
	bne	.L183
	mov	r1, #1
	mov	r2, #20
	str	r3, [r5, #44]
	str	r3, [r4, #36]
	str	r3, [r4, #28]
	str	r3, [r4, #24]
	str	r1, [r5, #60]
	str	r2, [r5, #64]
.L183:
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L226:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L233
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L142
.L184:
	sub	r8, r7, #1
	mov	r1, r8
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	bne	.L142
	ldr	r3, [sp, #16]
	mov	r1, r8
	add	r0, r4, r3
	bl	checkCollision
	cmp	r0, #0
	bne	.L142
	mvn	r8, #4
	mov	r3, #1
	ldr	r2, .L235+12
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	str	r8, [r6, #8]
	str	r3, [r6, #24]
	b	.L150
.L232:
	ldr	r7, .L235+52
	ldmib	r7, {r2, r3}
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r8, .L235+56
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L180
	ldr	r2, [r7, #40]
	cmp	r2, #0
	bne	.L180
	mov	r1, #1
	ldr	r3, [r7, #44]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r7, #44]
	str	r1, [r7, #40]
	strlt	r2, [r7]
.L180:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
	b	.L182
.L221:
	cmp	r1, #79
	cmpgt	r3, #0
	bgt	.L225
	cmp	r2, #0
	ble	.L173
	b	.L174
.L168:
	cmp	r3, #0
	beq	.L169
.L170:
	mov	r3, #1
	sub	r0, r0, #3
	str	r3, [r6, #20]
	b	.L169
.L230:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r4
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r8, #0
	cmpge	r0, #0
	bne	.L177
	ldr	r2, .L235+60
	ldr	r3, [r2]
	cmp	r3, #0
	str	r4, [r5, #12]
	blt	.L189
	sub	r1, r4, r3
	cmp	r1, #119
	bgt	.L189
	sub	r3, r3, r9
	mov	r8, r4
	str	r3, [r2]
	b	.L177
.L231:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r4
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r0, #0
	bne	.L176
	ldr	r2, .L235+60
	ldr	r3, [r2]
	add	r8, r8, r9
	cmp	r3, #512
	str	r8, [r5, #12]
	bgt	.L176
	sub	r1, r8, r3
	cmp	r1, #120
	addgt	r9, r9, r3
	strgt	r9, [r2]
	b	.L176
.L229:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L169
	b	.L170
.L233:
	ldr	r2, [r6, #24]
	cmp	r2, #0
	beq	.L234
	mov	r2, #1
	mvn	r8, #1
	ldr	r1, [sp, #20]
	cmp	r1, #0
	str	r3, [r6, #28]
	str	r3, [r6, #20]
	str	r2, [r6, #12]
	str	r8, [r6, #8]
	bne	.L184
	b	.L150
.L224:
	ldr	r8, .L235+20
	b	.L163
.L234:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L184
	mov	r3, #1
	mvn	r8, #1
	ldr	r2, [sp, #20]
	str	r3, [r6, #12]
	str	r2, [r6, #28]
	str	r2, [r6, #20]
	str	r3, [r6, #24]
	str	r8, [r6, #8]
	b	.L150
.L189:
	mov	r8, r4
	b	.L177
.L236:
	.align	2
.L235:
	.word	player
	.word	.LANCHOR0
	.word	oldButtons
	.word	.LANCHOR1
	.word	buttons
	.word	vOff
	.word	67109120
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	__aeabi_idivmod
	.word	slash
	.word	goblin1
	.word	collision
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	goblinGroundCheck
	.syntax unified
	.arm
	.fpu softvfp
	.type	goblinGroundCheck, %function
goblinGroundCheck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r1, r3
	push	{r4, r5, r6, lr}
	add	r4, r1, #1
	mov	r1, r4
	mov	r5, r2
	mov	r6, r0
	bl	checkCollision
	cmp	r0, #0
	beq	.L237
	mov	r1, r4
	add	r0, r6, r5
	bl	checkCollision
	subs	r0, r0, #0
	movne	r0, #1
.L237:
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	goblinGroundCheck, .-goblinGroundCheck
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L265
	ldr	r3, [r4, #40]
	cmp	r3, #0
	ldr	r5, .L265+4
	sub	sp, sp, #24
	beq	.L244
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #40]
.L244:
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	ldr	r6, .L265+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L245
	ldr	r3, [r5, #76]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	streq	r3, [r5, #72]
	streq	r2, [r5, #76]
.L245:
	ldr	r7, [r4, #8]
	ldr	r1, [r5, #12]
	sub	r1, r1, r7
	ldr	r3, [r4, #60]
	eor	r2, r1, r1, asr #31
	sub	r2, r2, r1, asr #31
	cmp	r2, r3
	add	r2, r4, #12
	ldr	r6, [r4, #4]
	ldm	r2, {r2, r3}
	bge	.L246
	ldr	r0, [r5, #8]
	sub	r0, r0, r6
	cmp	r0, #0
	ldr	ip, [r4, #64]
	rsblt	r0, r0, #0
	cmp	r0, ip
	blt	.L263
.L246:
	mov	r1, r6
	mov	r0, r7
	bl	groundCheck
	ldr	r5, [r4, #20]
	ldr	r3, .L265+12
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	cmp	r0, #0
	rsb	r3, r3, r2, asr #2
	addeq	r6, r6, #1
	add	r3, r3, r3, lsl #2
	streq	r6, [r4, #4]
	cmp	r5, r3, lsl #1
	bne	.L249
	ldr	r0, [r4, #32]
	ldr	r3, .L265+16
	ldr	r1, [r4, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L249:
	add	r5, r5, #1
	str	r5, [r4, #20]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L263:
	ldr	r0, .L265+20
	ldr	r0, [r0]
	tst	r0, #1
	bne	.L246
	cmp	r1, #0
	blt	.L264
	beq	.L246
	ldr	r5, [r4, #56]
	add	r5, r7, r5
	add	r8, r5, r2
	mov	r0, r8
	mov	r1, r6
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	checkCollision
	add	r2, sp, #16
	cmp	r0, #0
	ldm	r2, {r2, r3}
	bne	.L246
	add	r1, r6, r3
	mov	r0, r8
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	bne	.L246
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	goblinGroundCheck
	add	r2, sp, #16
	cmp	r0, #0
	movne	r7, r5
	ldm	r2, {r2, r3}
	strne	r5, [r4, #8]
	b	.L246
.L264:
	ldr	r5, [r4, #56]
	sub	r5, r7, r5
	mov	r0, r5
	mov	r1, r6
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	checkCollision
	add	r2, sp, #16
	cmp	r0, #0
	ldm	r2, {r2, r3}
	bne	.L246
	add	r1, r6, r3
	mov	r0, r5
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	bne	.L246
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	goblinGroundCheck
	add	r2, sp, #16
	cmp	r0, #0
	movne	r7, r5
	ldm	r2, {r2, r3}
	strne	r5, [r4, #8]
	b	.L246
.L266:
	.align	2
.L265:
	.word	goblin1
	.word	player
	.word	collision
	.word	1717986919
	.word	__aeabi_idivmod
	.word	.LANCHOR0
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L296
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L268
	ldr	r2, .L296+4
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r3, #1
	ldreq	r4, .L296+8
	streq	r3, [r4, #32]
	beq	.L270
.L268:
	cmp	r3, #0
	bne	.L275
.L294:
	ldr	r4, .L296+8
.L270:
	bl	updatePlayer
	bl	updateEnemies
	ldr	r3, .L296+12
	ldr	r3, [r3, #12]
	cmp	r3, #256
	bgt	.L271
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L267
	ldr	r2, .L296+16
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L273
	ldr	r2, [r4, #36]
	ldr	r1, .L296+20
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #2
	ldr	r1, [r2, #4]
	ldr	r2, .L296+24
	str	r1, [r2]
.L273:
	cmp	r3, #256
	beq	.L276
.L267:
	pop	{r4, lr}
	bx	lr
.L271:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L267
.L276:
	ldr	r3, .L296+28
	ldr	r3, [r3]
	cmp	r3, #20
	ble	.L267
	ldr	r3, .L296+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L267
	ldr	r3, [r4, #36]
	ldr	r2, .L296+20
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r2, [r3, #4]
	ldr	r3, .L296+24
	str	r2, [r3]
	b	.L267
.L275:
	ldr	r3, .L296+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L294
	mov	r3, #1
	ldr	r4, .L296+8
	str	r3, [r4, #32]
	b	.L270
.L297:
	.align	2
.L296:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	player
	.word	67109120
	.word	maps
	.word	.LANCHOR1
	.word	hOff
	.size	updateGame, .-updateGame
	.align	2
	.global	drawFont
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFont, %function
drawFont:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L300
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L300+4
	ldr	r9, [r2]
	ldr	r4, .L300+8
	ldr	r8, [r3, #12]
	smull	r3, r5, r4, r9
	smull	r3, r4, r8, r4
	mov	r6, #0
	asr	ip, r9, #31
	rsb	r5, ip, r5, asr #5
	add	r2, r5, r5, lsl #2
	ldr	r7, .L300+12
	asr	r0, r8, #31
	add	r2, r2, r2, lsl #2
	sub	r2, r9, r2, lsl #2
	rsb	r4, r0, r4, asr #5
	smull	r3, lr, r7, r9
	smull	r3, fp, r7, r2
	add	r3, r4, r4, lsl #2
	smull	r10, r1, r7, r8
	add	r3, r3, r3, lsl #2
	sub	r3, r8, r3, lsl #2
	smull	r10, r7, r3, r7
	ldr	r10, .L300+16
	rsb	ip, ip, lr, asr #2
	rsb	r0, r0, r1, asr #2
	ldr	lr, [r10, #4]
	ldr	r1, .L300+20
	asr	r2, r2, #31
	asr	r3, r3, #31
	rsb	r2, r2, fp, asr #2
	rsb	r3, r3, r7, asr #2
	add	fp, lr, #1
	add	r7, r5, #111
	add	ip, ip, ip, lsl #2
	add	r5, r1, lr, lsl #3
	strh	r7, [r5, #4]	@ movhi
	sub	ip, r9, ip, lsl #1
	add	r7, r1, fp, lsl #3
	add	r9, lr, #2
	add	r2, r2, #111
	strh	r2, [r7, #4]	@ movhi
	add	ip, ip, #111
	add	r2, r1, r9, lsl #3
	strh	ip, [r2, #4]	@ movhi
	lsl	ip, lr, #3
	strh	r6, [r1, ip]	@ movhi
	mov	ip, #48	@ movhi
	strh	ip, [r5, #2]	@ movhi
	mov	ip, #56	@ movhi
	strh	ip, [r7, #2]	@ movhi
	add	ip, lr, #3
	lsl	r7, ip, #3
	mov	r5, #64	@ movhi
	lsl	fp, fp, #3
	lsl	r9, r9, #3
	strh	r6, [r1, fp]	@ movhi
	strh	r6, [r1, r9]	@ movhi
	strh	r6, [r1, r7]	@ movhi
	mov	r7, #148	@ movhi
	strh	r5, [r2, #2]	@ movhi
	add	r2, r1, ip, lsl #3
	add	r5, lr, #4
	strh	r7, [r2, #2]	@ movhi
	add	r4, r4, #111
	add	r7, r1, r5, lsl #3
	add	r3, r3, #111
	strh	r4, [r2, #4]	@ movhi
	strh	r3, [r7, #4]	@ movhi
	mov	r3, #156	@ movhi
	strh	r3, [r7, #2]	@ movhi
	mov	r3, #164	@ movhi
	add	r0, r0, r0, lsl #2
	add	ip, lr, #5
	sub	r0, r8, r0, lsl #1
	add	r2, r1, ip, lsl #3
	add	lr, lr, #6
	lsl	r5, r5, #3
	add	r0, r0, #111
	lsl	ip, ip, #3
	strh	r6, [r1, r5]	@ movhi
	str	lr, [r10, #4]
	strh	r6, [r1, ip]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L301:
	.align	2
.L300:
	.word	hOff
	.word	player
	.word	1374389535
	.word	1717986919
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawFont, .-drawFont
	.align	2
	.global	drawHUD
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHUD, %function
drawHUD:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L310
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L310+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #4]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L309
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L310+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L303
	ldr	lr, .L310+12
	cmp	r3, #2
	add	r3, ip, r4, lsl #3
	strh	lr, [r3, #2]	@ movhi
	lsl	r4, r4, #3
	strh	r1, [r3, #4]	@ movhi
	add	r3, r0, #2
	strh	r2, [ip, r4]	@ movhi
	addeq	r4, r0, #3
	moveq	r0, r3
	addne	lr, ip, r3, lsl #3
	ldrne	r4, .L310+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L303:
	ldr	r2, [r6, #40]
	ldr	lr, .L310+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L310+24
	rsb	lr, r10, lr, asr #5
	smull	r3, fp, r1, r2
	add	r3, lr, lr, lsl #2
	mov	r5, #0
	mov	r9, #200
	mov	r8, #208
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	smull	r7, r1, r3, r1
	mov	r7, #216	@ movhi
	rsb	r10, r10, fp, asr #2
	add	r10, r10, r10, lsl #2
	asr	r3, r3, #31
	sub	r2, r2, r10, lsl #1
	rsb	r1, r3, r1, asr #2
	add	r10, ip, r0, lsl #3
	add	lr, lr, #111
	strh	lr, [r10, #4]	@ movhi
	add	r3, r0, #2
	add	lr, ip, r4, lsl #3
	add	r1, r1, #111
	strh	r1, [lr, #4]	@ movhi
	lsl	fp, r3, #3
	add	r1, ip, r3, lsl #3
	add	r2, r2, #111
	lsl	r3, r0, #3
	strh	r5, [ip, r3]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	r8, [lr, #2]	@ movhi
	add	r2, r0, #3
	ldr	lr, .L310+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L310+32
	strh	r5, [ip, r4]	@ movhi
	lsl	r4, r2, #3
	add	r2, ip, r2, lsl #3
	strh	r5, [ip, fp]	@ movhi
	strh	r7, [r1, #2]	@ movhi
	str	r3, [r6, #4]
	strh	r5, [ip, r4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L309:
	ldr	ip, .L310+8
	b	.L303
.L311:
	.align	2
.L310:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	16400
	.word	16416
	.word	1374389535
	.word	1717986919
	.word	16608
	.word	8326
	.size	drawHUD, .-drawHUD
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L337
	str	r3, [r4, #4]
	bl	drawHUD
	ldr	r2, [r4, #36]
	cmp	r2, #0
	beq	.L313
	ldr	r5, .L337+4
	ldr	r3, [r5]
	cmp	r3, #0
	blt	.L334
.L317:
	cmp	r3, #255
	bgt	.L328
.L332:
	ldr	r7, .L337+8
	ldr	r6, .L337+12
.L323:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawFont
	mov	lr, pc
	bx	r7
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L337+16
	mov	lr, pc
	bx	r6
	mov	r2, #67108864
	ldr	r1, [r5]
	ldr	r3, .L337+20
	smull	r0, r3, r1, r3
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	strh	r0, [r2, #20]	@ movhi
	ldr	r0, .L337+24
	sub	r3, r3, r1, asr #31
	lsl	r3, r3, #16
	ldrh	r1, [r0]
	lsr	r3, r3, #16
	strh	r1, [r2, #22]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	strh	r3, [r2, #24]	@ movhi
	bx	lr
.L328:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	ldr	r7, .L337+8
	ldr	r6, .L337+12
	beq	.L320
.L319:
	ldr	r3, .L337+28
	ldrh	r3, [r3, #48]
	ands	r8, r3, #16
	beq	.L335
.L320:
	ldr	r3, .L337+28
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L323
	mov	ip, #67108864
	mov	lr, #23808
	mov	r0, #1
	ldr	r1, .L337+32
	ldr	r2, [r1, #12]
	sub	r2, r2, #256
	str	r2, [r1, #12]
	strh	lr, [ip, #10]	@ movhi
	str	r0, [r4, #16]
	str	r3, [r5]
	b	.L323
.L334:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L318
	ldr	r3, .L337+28
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L336
.L318:
	ldr	r3, .L337+28
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	bne	.L332
	mov	r0, #67108864
	mov	ip, #23552
	mov	r1, #256
	mov	r2, #376
	str	r3, [r4, #16]
	ldr	r3, .L337+32
	strh	ip, [r0, #10]	@ movhi
	ldr	r7, .L337+8
	str	r1, [r5]
	str	r2, [r3, #12]
	ldr	r6, .L337+12
	b	.L320
.L313:
	ldr	r3, [r4, #16]
	ldr	r5, .L337+4
	cmp	r3, #1
	ldr	r3, [r5]
	bne	.L317
	cmp	r3, #0
	blt	.L318
	cmp	r3, #255
	ble	.L332
	b	.L328
.L335:
	mov	r2, #67108864
	mov	r1, #23552
	ldr	r3, [r4, #36]
	strh	r1, [r2, #10]	@ movhi
	add	r3, r3, #1
	str	r3, [r4, #36]
	mov	lr, pc
	bx	r7
	ldr	r3, [r4, #36]
	ldr	r9, .L337+36
	add	r3, r3, r3, lsl #1
	add	r3, r9, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L337+40
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r9, r3, lsl #2
	ldr	r1, [r3, #8]
	ldr	r2, .L337+44
	mov	r3, #2048
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #120
	ldr	r3, .L337+32
	str	r8, [r5]
	str	r8, [r4, #16]
	str	r2, [r3, #12]
	b	.L323
.L336:
	mov	r3, #67108864
	mov	r1, #23296
	sub	r2, r2, #1
	strh	r1, [r3, #10]	@ movhi
	ldr	r7, .L337+8
	str	r2, [r4, #36]
	mov	lr, pc
	bx	r7
	ldr	r3, [r4, #36]
	ldr	r8, .L337+36
	add	r3, r3, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L337+48
	ldr	r6, .L337+12
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L337+40
	mov	lr, pc
	bx	r6
	mov	r0, #256
	mov	r1, #1
	mov	r2, #376
	ldr	r3, .L337+32
	str	r0, [r5]
	str	r1, [r4, #16]
	str	r2, [r3, #12]
	b	.L319
.L338:
	.align	2
.L337:
	.word	.LANCHOR0
	.word	hOff
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	1431655766
	.word	vOff
	.word	67109120
	.word	player
	.word	maps
	.word	100720640
	.word	100724736
	.word	100716544
	.size	drawGame, .-drawGame
	.align	2
	.global	gameOver
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameOver, %function
gameOver:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	gameOver, .-gameOver
	.comm	maps,48,4
	.global	offSet
	.global	hScreenCounter
	.global	gTimer
	.global	framesInAir
	.global	yVel
	.global	jumpThud
	.global	doubleJumping
	.global	jumping
	.global	grounded
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	pauseVar
	.global	score
	.global	collisionMap
	.global	shadowOAMIndex
	.comm	goblin1,68,4
	.comm	slash,52,4
	.comm	player,84,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	map2CollisionBitmap
	.type	grounded, %object
	.size	grounded, 4
grounded:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gTimer, %object
	.size	gTimer, 4
gTimer:
	.space	4
	.type	shadowOAMIndex, %object
	.size	shadowOAMIndex, 4
shadowOAMIndex:
	.space	4
	.type	yVel, %object
	.size	yVel, 4
yVel:
	.space	4
	.type	doubleJumping, %object
	.size	doubleJumping, 4
doubleJumping:
	.space	4
	.type	offSet, %object
	.size	offSet, 4
offSet:
	.space	4
	.type	jumpThud, %object
	.size	jumpThud, 4
jumpThud:
	.space	4
	.type	jumping, %object
	.size	jumping, 4
jumping:
	.space	4
	.type	framesInAir, %object
	.size	framesInAir, 4
framesInAir:
	.space	4
	.type	pauseVar, %object
	.size	pauseVar, 4
pauseVar:
	.space	4
	.type	hScreenCounter, %object
	.size	hScreenCounter, 4
hScreenCounter:
	.space	4
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
