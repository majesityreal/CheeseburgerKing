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
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	str	r3, [r2, #48]
	str	r0, [r2, #32]
	str	r3, [r2, #4]
	ldr	r2, .L8+4
	str	r0, [r2, #40]
	str	r1, [r2]
	str	r1, [r2, #60]
	str	r7, [r2, #16]
	ldr	r1, .L8+8
	str	r6, [r2, #20]
	str	r4, [r2, #12]
	str	lr, [r2, #64]
	ldr	r4, .L8+12
	ldr	lr, .L8+16
	str	ip, [r2, #48]
	str	r5, [r2, #8]
	str	r5, [r2, #68]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	str	r3, [r2, #28]
	str	r3, [r2, #56]
	str	r3, [r2, #44]
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
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r5, [r3, #12]
	str	r4, [r3, #40]
	str	lr, [r3, #64]
	str	r0, [r3]
	str	r0, [r3, #60]
	str	ip, [r3, #48]
	str	r1, [r3, #8]
	str	r1, [r3, #68]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #56]
	str	r2, [r3, #44]
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
	ldr	r5, .L89
	ldr	r3, .L89+4
	ldr	r4, [r5, #24]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L87
	ldr	r0, [r5, #36]
	ldr	r3, .L89+8
	ldr	r1, [r5, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L87:
	ldr	r3, [r5, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r4, r4, #1
	str	r4, [r5, #24]
	str	r3, [r5, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	r2, .L107
	ldr	r3, [r2]
	ldr	r1, .L107+4
	cmp	r3, #0
	ldr	r3, [r1, #4]
	beq	.L92
	ldr	r0, [r2, #4]
	cmp	r0, #0
	bne	.L93
.L92:
	ldr	ip, .L107+8
	lsl	r0, r3, #3
	ldrh	r2, [ip, r0]
	add	r3, r3, #1
	orr	r2, r2, #512
	strh	r2, [ip, r0]	@ movhi
	str	r3, [r1, #4]
	bx	lr
.L93:
	ldr	ip, .L107+12
	push	{r4, r5, r6, lr}
	ldr	r0, [r2, #12]
	ldr	lr, [ip]
	ldr	ip, .L107+16
	sub	r0, r0, lr
	ldr	r6, [r2, #56]
	ldr	lr, [ip]
	lsl	r0, r0, #23
	ldr	ip, .L107+8
	lsr	r0, r0, #23
	orr	r0, r0, #16384
	cmp	r6, #0
	add	r5, ip, r3, lsl #3
	strh	r0, [r5, #2]	@ movhi
	ldr	r4, [r2, #8]
	orrne	r0, r0, #4096
	strhne	r0, [r5, #2]	@ movhi
	ldr	r0, [r2, #28]
	sub	r4, r4, lr
	ldr	r2, [r2, #36]
	and	r4, r4, #255
	lsl	lr, r3, #3
	cmp	r0, #1
	strh	r4, [ip, lr]	@ movhi
	add	r2, r2, #9
	beq	.L106
	add	r0, r0, #1
	add	r2, r2, r0, lsl #6
	lsl	r2, r2, #1
	add	ip, ip, lr
	strh	r2, [ip, #4]	@ movhi
.L94:
	add	r3, r3, #1
	str	r3, [r1, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #128
	lsl	r2, r2, #1
	add	ip, ip, lr
	strh	r2, [ip, #4]	@ movhi
	b	.L94
.L108:
	.align	2
.L107:
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
	ldr	r2, .L119
	ldr	r3, [r2, #24]
	cmp	r3, #6
	beq	.L112
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L112
	cmp	r3, #18
	bne	.L111
.L112:
	ldr	r1, [r2, #28]
	add	r1, r1, #1
	str	r1, [r2, #28]
.L111:
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L120:
	.align	2
.L119:
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
	ldr	r1, .L131
	ldr	r3, [r1, #36]
	ldr	r0, .L131+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L122
	ldr	ip, .L131+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L122:
	ldr	ip, .L131+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L131+16
	ldr	ip, .L131+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L131+8
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
.L132:
	.align	2
.L131:
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
	ldr	r3, .L136
	ldr	r2, [r3, #16]
	ldr	r3, .L136+4
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
.L137:
	.align	2
.L136:
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
	bne	.L138
	mov	r1, r4
	add	r0, r6, r5
	bl	checkCollision
	subs	r0, r0, #0
	movne	r0, #1
.L138:
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
	ldr	r5, .L237
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
	ldrne	r6, .L237+4
	strne	r3, [r6, #20]
	strne	r3, [r6, #12]
	ldr	r3, .L237+8
	ldrh	r3, [r3]
	ldr	r2, .L237+12
	ldreq	r6, .L237+4
	tst	r3, #64
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	beq	.L144
	ldr	r3, .L237+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L228
.L144:
	ldr	r8, [r6, #8]
	cmp	r8, #0
	bge	.L153
.L152:
	ldr	r3, [sp, #16]
	mov	fp, #0
	add	r9, r4, r3
	b	.L156
.L229:
	mov	r1, r10
	mov	r0, r9
	bl	checkCollision
	cmp	r0, #0
	bne	.L154
	sub	fp, fp, #1
	cmp	fp, r8
	ble	.L153
.L156:
	add	r10, fp, r7
	mov	r1, r10
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L229
.L154:
	mov	r0, #1
	mov	r1, #0
	ldr	r8, .L237+20
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
.L153:
	ldr	r3, .L237+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L157
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L157
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ble	.L158
	mov	r9, r4
	ldr	r7, [r5, #8]
	add	r3, r4, #2
	str	r3, [sp, #28]
	add	r10, r7, r4
.L161:
	sub	fp, r10, r9
	mov	r0, r9
	mov	r1, fp
	bl	checkCollision
	mov	r3, r0
	ldr	r2, [sp, #16]
	cmp	r3, #0
	add	r0, r2, r9
	add	r9, r9, #1
	bne	.L159
	mov	r1, fp
	bl	checkCollision
	cmp	r0, #0
	bne	.L159
	ldr	r3, [sp, #28]
	cmp	r3, r9
	bne	.L161
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L187
	b	.L189
.L157:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L224
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ldrgt	r7, [r5, #8]
	ble	.L226
.L189:
	ldr	r3, [sp, #24]
	add	r9, r3, r7
	ldr	r3, [sp, #16]
	mov	fp, #0
	str	r7, [sp, #16]
	add	r10, r4, r3
	b	.L168
.L230:
	mov	r1, r7
	mov	r0, r10
	bl	checkCollision
	cmp	r0, #0
	bne	.L166
	add	fp, fp, #1
	cmp	fp, r8
	bge	.L226
.L168:
	add	r7, fp, r9
	mov	r1, r7
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L230
.L166:
	mov	r2, #1
	ldr	r8, .L237+20
	ldr	r7, [sp, #16]
	ldr	r3, [r8]
	sub	fp, fp, #1
	add	r7, fp, r7
	add	fp, r3, fp
	ldr	r3, .L237+12
	str	r7, [r5, #8]
	str	fp, [r8]
	str	r2, [r3, #4]
.L165:
	ldr	r3, .L237+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r6, #28]
	ldr	r3, [r6, #24]
	bne	.L170
	cmp	r3, #0
	bne	.L231
.L171:
	ldr	r3, .L237+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L237+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L237+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L237+40
	mov	lr, pc
	bx	r3
	mov	r3, r0
	ldr	r0, [r6]
	tst	r0, #3
	ldreq	r2, [r6, #28]
	addeq	r2, r2, #1
	streq	r2, [r6, #28]
	ldr	r2, .L237+12
	ldr	r2, [r2, #4]
	cmp	r2, #0
	str	r3, [r6, #8]
	ldr	r7, [r5, #8]
	ldr	r2, [r8]
	bne	.L187
	add	r7, r7, r3
	cmp	r2, #255
	str	r7, [r5, #8]
	sub	r1, r7, r2
	ble	.L223
.L176:
	lsr	ip, r3, #31
	cmp	r1, #80
	movgt	r1, #0
	andle	r1, ip, #1
	cmp	r1, #0
	beq	.L175
.L227:
	add	r3, r3, r2
	str	r3, [r8]
	b	.L175
.L159:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #8]
	str	r3, [r6, #24]
	str	r2, [r6, #20]
.L158:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L226
.L224:
	ldr	r7, [r5, #8]
.L187:
	mov	r3, #0
	ldr	r0, [r6]
	str	r3, [r6, #8]
	str	r3, [r6, #28]
	str	r3, [r6, #24]
.L175:
	ldr	r3, .L237+44
	ldr	r1, [r5, #68]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r8, [r5, #12]
	bne	.L178
	ldr	r3, .L237+24
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L179
	ldr	r9, [r5, #20]
	sub	r4, r8, r9
	mov	r0, r4
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L232
.L179:
	ldr	r3, .L237+24
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L178
	ldr	r4, [r5, #24]
	ldr	r9, [r5, #20]
	add	r4, r8, r4
	add	r4, r4, r9
	mov	r0, r4
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L233
.L178:
	ldr	r3, [r5, #56]
	ldr	r4, .L237+48
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
	bgt	.L234
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r4, #36]
.L184:
	ldr	r3, .L237+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L185
	ldr	r3, .L237+16
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L185
	ldr	r3, [r5, #60]
	cmp	r3, #0
	bne	.L185
	mov	r1, #1
	mov	r2, #20
	str	r3, [r5, #44]
	str	r3, [r4, #36]
	str	r3, [r4, #28]
	str	r3, [r4, #24]
	str	r1, [r5, #60]
	str	r2, [r5, #64]
.L185:
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L228:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L235
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L144
.L186:
	sub	r8, r7, #1
	mov	r1, r8
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	bne	.L144
	ldr	r3, [sp, #16]
	mov	r1, r8
	add	r0, r4, r3
	bl	checkCollision
	cmp	r0, #0
	bne	.L144
	mvn	r8, #4
	mov	r3, #1
	ldr	r2, .L237+12
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	str	r8, [r6, #8]
	str	r3, [r6, #24]
	b	.L152
.L234:
	ldr	r7, .L237+52
	add	r2, r7, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r8, .L237+56
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L182
	ldr	r2, [r7, #44]
	cmp	r2, #0
	bne	.L182
	mov	r1, #1
	ldr	r3, [r7, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r7, #48]
	str	r1, [r7, #44]
	strlt	r2, [r7]
.L182:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
	b	.L184
.L223:
	cmp	r1, #79
	cmpgt	r3, #0
	bgt	.L227
	cmp	r2, #0
	ble	.L175
	b	.L176
.L170:
	cmp	r3, #0
	beq	.L171
.L172:
	mov	r3, #1
	sub	r0, r0, #3
	str	r3, [r6, #20]
	b	.L171
.L232:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r4
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r8, #0
	cmpge	r0, #0
	bne	.L179
	ldr	r1, .L237+60
	ldr	r0, .L237+64
	ldr	r3, [r1]
	ldr	r2, [r0]
	sub	r3, r3, r9
	cmp	r2, #0
	str	r4, [r5, #12]
	str	r3, [r1]
	blt	.L191
	sub	r3, r4, r2
	cmp	r3, #119
	bgt	.L191
	sub	r2, r2, r9
	mov	r8, r4
	str	r2, [r0]
	b	.L179
.L233:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r4
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r0, #0
	bne	.L178
	ldr	r2, .L237+60
	ldr	r0, .L237+64
	ldr	r3, [r2]
	ldr	r1, [r0]
	add	r8, r8, r9
	add	r3, r3, r9
	cmp	r1, #512
	str	r8, [r5, #12]
	str	r3, [r2]
	bgt	.L178
	sub	r3, r8, r1
	cmp	r3, #120
	addgt	r9, r9, r1
	strgt	r9, [r0]
	b	.L178
.L231:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L171
	b	.L172
.L235:
	ldr	r2, [r6, #24]
	cmp	r2, #0
	beq	.L236
	mov	r2, #1
	mvn	r8, #1
	ldr	r1, [sp, #20]
	cmp	r1, #0
	str	r3, [r6, #28]
	str	r3, [r6, #20]
	str	r2, [r6, #12]
	str	r8, [r6, #8]
	bne	.L186
	b	.L152
.L226:
	ldr	r8, .L237+20
	b	.L165
.L236:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L186
	mov	r3, #1
	mvn	r8, #1
	ldr	r2, [sp, #20]
	str	r3, [r6, #12]
	str	r2, [r6, #28]
	str	r2, [r6, #20]
	str	r3, [r6, #24]
	str	r8, [r6, #8]
	b	.L152
.L191:
	mov	r8, r4
	b	.L179
.L238:
	.align	2
.L237:
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
	.word	pWorldPos
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
	beq	.L239
	mov	r1, r4
	add	r0, r6, r5
	bl	checkCollision
	subs	r0, r0, #0
	movne	r0, #1
.L239:
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
	ldr	r4, .L272
	ldr	r3, .L272+4
	add	r0, r4, #12
	ldr	r3, [r3]
	ldm	r0, {r0, r2}
	sub	ip, r3, #119
	add	r1, r0, r2
	cmp	ip, r1
	sub	sp, sp, #24
	bgt	.L270
	add	r3, r3, #119
	cmp	r0, r3
	ble	.L248
.L270:
	mov	r3, #0
	str	r3, [r4, #4]
.L245:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L248:
	mov	r3, #1
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L245
	ldr	r3, [r4, #44]
	cmp	r3, #0
	ldr	r5, .L272+8
	beq	.L249
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L249:
	add	ip, r5, #24
	add	r1, r5, #8
	ldm	r1, {r1, r3}
	ldm	ip, {ip, lr}
	ldr	r6, .L272+12
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #20]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L250
	ldr	r3, [r5, #76]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	streq	r3, [r5, #72]
	streq	r2, [r5, #76]
.L250:
	ldr	r7, [r4, #12]
	ldr	r1, [r5, #12]
	sub	r1, r1, r7
	ldr	r3, [r4, #64]
	eor	r2, r1, r1, asr #31
	sub	r2, r2, r1, asr #31
	cmp	r2, r3
	add	r2, r4, #16
	ldr	r6, [r4, #8]
	ldm	r2, {r2, r3}
	bge	.L251
	ldr	r0, [r5, #8]
	sub	r0, r0, r6
	cmp	r0, #0
	ldr	ip, [r4, #68]
	rsblt	r0, r0, #0
	cmp	r0, ip
	bge	.L251
	ldr	r0, .L272+16
	ldr	r0, [r0]
	tst	r0, #1
	bne	.L251
	cmp	r1, #0
	blt	.L271
	beq	.L251
	ldr	r5, [r4, #60]
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
	bne	.L251
	add	r1, r6, r3
	mov	r0, r8
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	bne	.L251
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	goblinGroundCheck
	cmp	r0, #0
	movne	r7, r5
	add	r2, sp, #16
	ldm	r2, {r2, r3}
	strne	r5, [r4, #12]
.L251:
	mov	r1, r6
	mov	r0, r7
	bl	groundCheck
	cmp	r0, #0
	addeq	r6, r6, #1
	streq	r6, [r4, #8]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	animateEnemies
.L271:
	ldr	r5, [r4, #60]
	sub	r5, r7, r5
	mov	r0, r5
	mov	r1, r6
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	checkCollision
	add	r2, sp, #16
	cmp	r0, #0
	ldm	r2, {r2, r3}
	bne	.L251
	add	r1, r6, r3
	mov	r0, r5
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	bne	.L251
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	goblinGroundCheck
	add	r2, sp, #16
	cmp	r0, #0
	movne	r7, r5
	ldm	r2, {r2, r3}
	strne	r5, [r4, #12]
	b	.L251
.L273:
	.align	2
.L272:
	.word	goblin1
	.word	pWorldPos
	.word	player
	.word	collision
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
	ldr	r3, .L303
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L275
	ldr	r2, .L303+4
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r3, #1
	ldreq	r4, .L303+8
	streq	r3, [r4, #32]
	beq	.L277
.L275:
	cmp	r3, #0
	bne	.L282
.L301:
	ldr	r4, .L303+8
.L277:
	bl	updatePlayer
	bl	updateEnemies
	ldr	r3, .L303+12
	ldr	r3, [r3, #12]
	cmp	r3, #256
	bgt	.L278
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L274
	ldr	r2, .L303+16
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L280
	ldr	r2, [r4, #36]
	ldr	r1, .L303+20
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #2
	ldr	r1, [r2, #4]
	ldr	r2, .L303+24
	str	r1, [r2]
.L280:
	cmp	r3, #256
	beq	.L283
.L274:
	pop	{r4, lr}
	bx	lr
.L278:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L274
.L283:
	ldr	r3, .L303+28
	ldr	r3, [r3]
	cmp	r3, #20
	ble	.L274
	ldr	r3, .L303+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L274
	ldr	r3, [r4, #36]
	ldr	r2, .L303+20
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r2, [r3, #4]
	ldr	r3, .L303+24
	str	r2, [r3]
	b	.L274
.L282:
	ldr	r3, .L303+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L301
	mov	r3, #1
	ldr	r4, .L303+8
	str	r3, [r4, #32]
	b	.L277
.L304:
	.align	2
.L303:
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L307
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L307+4
	ldr	r9, [r1]
	ldr	r10, .L307+8
	ldr	r6, [r3]
	smull	r3, r7, r10, r9
	ldr	r2, .L307+12
	ldr	r4, .L307+16
	ldr	fp, [r2, #12]
	asr	r0, r9, #31
	smull	r3, r1, r10, fp
	smull	r3, r2, r10, r6
	smull	r3, r4, r6, r4
	rsb	r3, r0, r7, asr #5
	add	r8, r3, r3, lsl #2
	ldr	r7, .L307+20
	add	r8, r8, r8, lsl #2
	sub	sp, sp, #28
	sub	r8, r9, r8, lsl #2
	str	r3, [sp]
	smull	ip, r3, r7, r9
	smull	r5, ip, r7, r8
	str	ip, [sp, #4]
	asr	ip, fp, #31
	rsb	r5, ip, r1, asr #5
	asr	r1, r6, #31
	rsb	r4, r1, r4, asr #6
	str	ip, [sp, #16]
	str	r5, [sp, #12]
	add	ip, r5, r5, lsl #2
	rsb	r5, r4, r4, lsl #5
	rsb	r0, r0, r3, asr #2
	add	r5, r4, r5, lsl #2
	sub	r5, r6, r5, lsl #3
	add	r0, r0, r0, lsl #2
	str	r0, [sp, #8]
	smull	r0, r10, r5, r10
	asr	r5, r5, #31
	rsb	r10, r5, r10, asr #5
	ldr	r0, [sp, #8]
	str	r10, [sp, #8]
	smull	r10, r5, r7, fp
	ldr	r10, [sp, #16]
	rsb	r5, r10, r5, asr #2
	add	ip, ip, ip, lsl #2
	add	r5, r5, r5, lsl #2
	sub	ip, fp, ip, lsl #2
	sub	r5, fp, r5, lsl #1
	smull	fp, r10, r7, r6
	rsb	r2, r1, r2, asr #5
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r2, r6, r2, lsl #2
	rsb	r1, r1, r10, asr #2
	str	r2, [sp, #20]
	add	r1, r1, r1, lsl #2
	sub	r1, r6, r1, lsl #1
	smull	r6, r10, r7, ip
	ldr	r6, [sp, #20]
	mov	fp, r6
	mov	lr, #0
	str	r1, [sp, #16]
	smull	r1, fp, r7, fp
	sub	r0, r9, r0, lsl #1
	ldr	r9, [sp, #4]
	ldr	r2, .L307+24
	asr	r8, r8, #31
	rsb	r8, r8, r9, asr #2
	ldr	r3, .L307+28
	ldr	r2, [r2, #4]
	str	r8, [sp, #4]
	ldr	r7, [sp]
	asr	r6, r6, #31
	rsb	r6, r6, fp, asr #2
	asr	ip, ip, #31
	ldr	fp, [sp, #4]
	add	r9, r2, #1
	add	r8, r2, #2
	rsb	ip, ip, r10, asr #2
	add	r7, r7, #111
	add	r10, r3, r2, lsl #3
	add	r4, r4, #111
	strh	r7, [r10, #4]	@ movhi
	str	r4, [sp, #4]
	add	r7, r3, r8, lsl #3
	add	r4, r3, r9, lsl #3
	add	r0, r0, #111
	add	fp, fp, #111
	strh	fp, [r4, #4]	@ movhi
	strh	r0, [r7, #4]	@ movhi
	lsl	r0, r2, #3
	strh	lr, [r3, r0]	@ movhi
	mov	r0, #48	@ movhi
	strh	r0, [r10, #2]	@ movhi
	mov	r0, #56	@ movhi
	ldr	r1, [sp, #12]
	add	r1, r1, #111
	str	r1, [sp]
	ldr	r1, [sp, #8]
	lsl	r9, r9, #3
	add	r1, r1, #111
	str	r1, [sp, #8]
	strh	lr, [r3, r9]	@ movhi
	ldr	r1, [sp, #16]
	strh	r0, [r4, #2]	@ movhi
	mov	r0, #64	@ movhi
	strh	r0, [r7, #2]	@ movhi
	mov	r7, #148	@ movhi
	add	r0, r2, #3
	lsl	r4, r0, #3
	lsl	r8, r8, #3
	strh	lr, [r3, r8]	@ movhi
	strh	lr, [r3, r4]	@ movhi
	ldr	r4, [sp]
	add	r0, r3, r0, lsl #3
	strh	r7, [r0, #2]	@ movhi
	strh	r4, [r0, #4]	@ movhi
	add	r0, r2, #4
	add	r4, r3, r0, lsl #3
	add	ip, ip, #111
	strh	ip, [r4, #4]	@ movhi
	lsl	r0, r0, #3
	add	ip, r2, #5
	strh	lr, [r3, r0]	@ movhi
	add	r0, r3, ip, lsl #3
	lsl	ip, ip, #3
	strh	lr, [r3, ip]	@ movhi
	mov	ip, #156	@ movhi
	strh	ip, [r4, #2]	@ movhi
	mov	ip, #164	@ movhi
	add	r5, r5, #111
	strh	r5, [r0, #4]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	add	r0, r2, #6
	lsl	ip, r0, #3
	strh	lr, [r3, ip]	@ movhi
	mov	ip, #70	@ movhi
	mov	r7, #78	@ movhi
	add	r0, r3, r0, lsl #3
	ldr	r4, [sp, #4]
	strh	ip, [r0, #2]	@ movhi
	add	ip, r2, #7
	strh	r4, [r0, #4]	@ movhi
	ldr	r5, [sp, #8]
	lsl	r0, ip, #3
	strh	lr, [r3, r0]	@ movhi
	add	ip, r3, ip, lsl #3
	add	r4, r2, #8
	add	r0, r2, #9
	strh	r7, [ip, #2]	@ movhi
	strh	r5, [ip, #4]	@ movhi
	add	r7, r3, r4, lsl #3
	lsl	ip, r0, #3
	lsl	r4, r4, #3
	strh	lr, [r3, r4]	@ movhi
	strh	lr, [r3, ip]	@ movhi
	mov	r4, #86	@ movhi
	mov	ip, #94	@ movhi
	add	r0, r3, r0, lsl #3
	ldr	r3, .L307+24
	add	r6, r6, #111
	add	r1, r1, #111
	add	r2, r2, #10
	strh	r6, [r7, #4]	@ movhi
	strh	r4, [r7, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	str	r2, [r3, #4]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L308:
	.align	2
.L307:
	.word	hOff
	.word	pWorldPos
	.word	1374389535
	.word	player
	.word	274877907
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
	ldr	r3, .L317
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L317+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #4]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L316
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L317+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L310
	ldr	lr, .L317+12
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
	ldrne	r4, .L317+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L310:
	ldr	r2, [r6, #40]
	ldr	lr, .L317+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L317+24
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
	ldr	lr, .L317+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L317+32
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
.L316:
	ldr	ip, .L317+8
	b	.L310
.L318:
	.align	2
.L317:
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
	ldr	r4, .L346
	str	r3, [r4, #4]
	bl	drawHUD
	ldr	r2, [r4, #36]
	cmp	r2, #0
	beq	.L320
	ldr	r5, .L346+4
	ldr	r3, [r5]
	cmp	r3, #0
	blt	.L343
.L324:
	cmp	r3, #255
	ble	.L341
.L338:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	ldr	r6, .L346+8
	ldr	r7, .L346+12
	beq	.L327
.L326:
	ldr	r3, .L346+16
	ldrh	r3, [r3, #48]
	ands	r8, r3, #16
	beq	.L344
.L327:
	ldr	r3, .L346+16
	ldrh	r3, [r3, #48]
	ands	r8, r3, #16
	bne	.L333
	mov	lr, pc
	bx	r6
	mov	r1, #1
	mov	ip, #67108864
	ldr	r0, .L346+20
	ldr	r3, [r0, #8]
	add	r3, r3, r1
	str	r3, [r0, #8]
	lsl	r3, r3, #24
	ldr	r2, .L346+24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	strh	r3, [ip, #10]	@ movhi
	ldr	r3, [r2, #12]
	sub	r3, r3, #256
	str	r8, [r5]
	str	r3, [r2, #12]
	str	r1, [r4, #16]
	b	.L333
.L343:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L325
	ldr	r3, .L346+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L345
.L325:
	ldr	r3, .L346+16
	ldrh	r3, [r3, #48]
	ands	r7, r3, #32
	beq	.L334
.L341:
	ldr	r6, .L346+8
	ldr	r7, .L346+12
.L333:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawFont
	mov	lr, pc
	bx	r6
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L346+28
	mov	lr, pc
	bx	r7
	mov	r1, #67108864
	ldr	r3, [r5]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #20]	@ movhi
	ldr	r2, .L346+32
	ldr	r0, [r4, #16]
	ldrh	r2, [r2]
	cmp	r0, #0
	strh	r2, [r1, #22]	@ movhi
	beq	.L329
	ldr	r2, .L346+36
	add	r3, r3, #256
.L331:
	smull	r0, r2, r3, r2
	sub	r3, r2, r3, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L329:
	ldr	r2, [r4, #36]
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	cmp	r2, #1
	addeq	r3, r3, #512
	ldr	r2, .L346+36
	b	.L331
.L320:
	ldr	r3, [r4, #16]
	ldr	r5, .L346+4
	cmp	r3, #1
	ldr	r3, [r5]
	bne	.L324
	cmp	r3, #0
	blt	.L325
	cmp	r3, #255
	bgt	.L338
	b	.L341
.L334:
	ldr	r6, .L346+8
	mov	lr, pc
	bx	r6
	mov	ip, #67108864
	mov	r0, #256
	ldr	r1, .L346+20
	ldr	r3, [r1, #8]
	sub	r3, r3, #1
	str	r3, [r1, #8]
	lsl	r3, r3, #24
	ldr	r2, .L346+24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	str	r7, [r4, #16]
	strh	r3, [ip, #10]	@ movhi
	ldr	r3, [r2, #12]
	add	r3, r3, r0
	str	r3, [r2, #12]
	str	r0, [r5]
	ldr	r7, .L346+12
	b	.L327
.L344:
	mov	r1, #28
	ldr	r3, [r4, #36]
	ldr	r2, .L346+20
	add	r3, r3, #1
	str	r1, [r2, #8]
	str	r3, [r4, #36]
	mov	lr, pc
	bx	r6
	mov	r3, #67108864
	mov	r2, #23552
	strh	r2, [r3, #10]	@ movhi
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	ldr	r9, .L346+40
	add	r3, r3, r3, lsl #1
	add	r3, r9, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L346+44
	mov	lr, pc
	bx	r7
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r9, r3, lsl #2
	ldr	r1, [r3, #8]
	ldr	r2, .L346+48
	mov	r3, #2048
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r2, #120
	ldr	r3, .L346+24
	str	r8, [r5]
	str	r8, [r4, #16]
	str	r2, [r3, #12]
	b	.L333
.L345:
	mov	r1, #27
	ldr	r3, .L346+20
	sub	r2, r2, #1
	ldr	r6, .L346+8
	str	r1, [r3, #8]
	str	r2, [r4, #36]
	mov	lr, pc
	bx	r6
	mov	r3, #67108864
	mov	r2, #23296
	strh	r2, [r3, #10]	@ movhi
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	ldr	r8, .L346+40
	add	r3, r3, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L346+52
	ldr	r7, .L346+12
	mov	lr, pc
	bx	r7
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L346+44
	mov	lr, pc
	bx	r7
	mov	r0, #256
	mov	r1, #1
	mov	r2, #376
	ldr	r3, .L346+24
	str	r0, [r5]
	str	r1, [r4, #16]
	str	r2, [r3, #12]
	b	.L326
.L347:
	.align	2
.L346:
	.word	.LANCHOR0
	.word	hOff
	.word	waitForVBlank
	.word	DMANow
	.word	67109120
	.word	.LANCHOR1
	.word	player
	.word	shadowOAM
	.word	vOff
	.word	1431655766
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
	.comm	pWorldPos,4,4
	.global	offSet
	.global	currentScreenblock
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
	.comm	goblin1,72,4
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
	.type	currentScreenblock, %object
	.size	currentScreenblock, 4
currentScreenblock:
	.word	28
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
