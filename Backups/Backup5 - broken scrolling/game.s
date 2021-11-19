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
	mov	ip, #4
	mov	r9, #11
	mov	r8, #15
	mov	r0, #96
	mov	r7, #13
	mov	r6, #16
	mov	r5, #120
	mov	r4, #128
	mov	lr, #2
	ldr	r2, .L8
	str	r1, [r2, #36]
	str	r10, [r2, #16]
	str	r9, [r2, #20]
	str	r8, [r2, #12]
	str	ip, [r2, #32]
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	str	r3, [r2, #28]
	str	r3, [r2, #48]
	ldr	r2, .L8+4
	str	ip, [r2, #36]
	str	r1, [r2]
	str	r1, [r2, #56]
	str	r7, [r2, #12]
	ldr	r1, .L8+8
	str	r6, [r2, #16]
	str	r5, [r2, #8]
	str	r4, [r2, #60]
	str	lr, [r2, #44]
	str	r0, [r2, #4]
	str	r0, [r2, #64]
	str	r3, [r2, #20]
	str	r3, [r2, #32]
	str	r3, [r2, #24]
	str	r3, [r2, #52]
	str	r3, [r2, #40]
	ldr	r4, .L8+12
	ldr	lr, .L8+16
	ldr	r2, .L8+20
	ldr	ip, .L8+24
	ldr	r0, .L8+28
	str	r4, [r1, #4]
	str	lr, [r1, #8]
	str	ip, [r1, #16]
	str	r0, [r1, #20]
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
	.word	.LANCHOR0
	.word	map1CollisionBitmap
	.word	map1Map
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
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
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
	@ link register save eliminated.
	ldr	ip, .L24
	add	r1, r1, r3
	ldr	r3, [ip]
	add	r1, r1, #1
	add	r3, r3, r1, lsl #9
	ldrb	r1, [r3, r0]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r0
	bne	.L23
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L23:
	mov	r0, #1
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR1
	.size	groundCheck, .-groundCheck
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
	@ link register save eliminated.
	mov	ip, r0
	ldr	r0, .L29
	add	r1, r1, r3
	ldr	r3, [r0]
	add	r1, r1, #1
	add	r3, r3, r1, lsl #9
	ldrb	r0, [r3, ip]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, ip
	bxeq	lr
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR1
	.size	goblinGroundCheck, .-goblinGroundCheck
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
	ldr	r3, .L73
	push	{r4, r5, r6, lr}
	ldr	r4, .L73+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L32
	cmp	r2, #0
	beq	.L71
	ldrh	r3, [r3, #48]
.L35:
	ldr	r3, .L73+8
	ldr	r1, [r3, #8]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L38
	movne	r1, #2
	strne	r1, [r4, #36]
.L38:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	movne	r3, #6
	strne	r3, [r4, #36]
	cmp	r2, #0
	movne	r3, #4
	strne	r3, [r4, #36]
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L41
	mov	r1, #5
	ldr	r5, [r4, #32]
	ldr	r3, .L73+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	bne	.L43
.L44:
	ldr	r3, .L73+12
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	beq	.L51
.L52:
	ldr	r0, [r4, #44]
	ldr	r3, .L73+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L45:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L35
.L43:
	ldr	r1, .L73+12
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L45
	ldr	r1, [r4, #36]
.L51:
	cmp	r1, #1
	beq	.L52
	cmp	r1, #6
	beq	.L52
	cmp	r1, #5
	beq	.L72
	cmp	r3, #0
	beq	.L52
	b	.L45
.L32:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L35
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L35
.L41:
	ldr	r5, [r4, #32]
	ldr	r3, .L73+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L43
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L52
	b	.L44
.L72:
	ldr	r0, [r4, #44]
	ldr	r3, .L73+16
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
	b	.L45
.L74:
	.align	2
.L73:
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
	ldr	r1, .L94
	ldr	r3, [r1, #52]
	ldr	r0, .L94+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L76
	ldr	ip, .L94+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L76:
	ldr	ip, .L94+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [ip]
	ldr	ip, .L94+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L94+8
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
	b	.L79
.L81:
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L80
.L80:
	ldr	r1, .L94+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L77:
	add	r2, r2, #1
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L87:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L86:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L85:
	ldr	r1, .L94+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L84:
	ldr	r1, .L94+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L83:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L82:
	ldr	r1, .L94+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L79:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L77
.L95:
	.align	2
.L94:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L125
	ldr	r3, [r4, #40]
	cmp	r3, #0
	ldr	r5, .L125+4
	sub	sp, sp, #16
	beq	.L97
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #40]
.L97:
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
	ldr	r6, .L125+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L98
	ldr	r3, [r5, #76]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	streq	r3, [r5, #72]
	streq	r2, [r5, #76]
.L98:
	ldr	ip, [r4, #8]
	ldr	r1, [r5, #12]
	ldr	r0, [r4, #4]
	sub	r1, r1, ip
	ldr	r3, [r4, #16]
	ldr	lr, [r4, #60]
	eor	r6, r1, r1, asr #31
	sub	r6, r6, r1, asr #31
	ldr	r2, .L125+12
	add	r3, r0, r3
	cmp	r6, lr
	add	r3, r3, #1
	ldr	r2, [r2]
	ldr	r7, [r4, #12]
	lsl	r6, r3, #9
	bge	.L123
	ldr	lr, [r5, #8]
	sub	lr, lr, r0
	cmp	lr, #0
	ldr	r5, [r4, #64]
	rsblt	lr, lr, #0
	cmp	lr, r5
	blt	.L101
.L123:
	add	r1, ip, r6
	add	r1, r2, r1
.L100:
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L113
	add	r2, r2, ip
	add	r2, r2, r7
	ldrb	r3, [r2, r3, lsl #9]	@ zero_extendqisi2
	cmp	r3, #0
	addeq	r0, r0, #1
	streq	r0, [r4, #4]
.L113:
	ldr	r5, [r4, #20]
	ldr	r3, .L125+16
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L114
	ldr	r0, [r4, #32]
	ldr	r3, .L125+20
	ldr	r1, [r4, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L114:
	add	r5, r5, #1
	str	r5, [r4, #20]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L101:
	ldr	lr, .L125+24
	ldr	lr, [lr]
	tst	lr, #1
	bne	.L123
	cmp	r1, #0
	blt	.L124
	beq	.L123
	ldr	r1, [r4, #56]
	add	r8, ip, r1
	add	r1, r8, r7
	add	lr, r2, r0, lsl #9
	ldrb	lr, [lr, r1]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L123
	add	lr, r2, r1
	add	r1, lr, r6
	ldrb	r1, [r1, #-512]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L123
	add	r5, r8, r6
	ldrb	r1, [r2, r5]	@ zero_extendqisi2
	cmp	r1, #0
	add	r1, r2, r5
	beq	.L123
	ldrb	lr, [lr, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L123
	mov	ip, r8
	str	r8, [r4, #8]
	b	.L100
.L124:
	ldr	lr, [r4, #56]
	add	r1, r2, r0, lsl #9
	sub	lr, ip, lr
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L123
	add	r5, r2, lr
	add	r1, r5, r6
	ldrb	r1, [r1, #-512]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L123
	add	r1, lr, r6
	ldrb	r8, [r2, r1]	@ zero_extendqisi2
	cmp	r8, #0
	add	r1, r2, r1
	beq	.L123
	add	r5, r5, r7
	ldrb	r5, [r5, r3, lsl #9]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L123
	mov	ip, lr
	str	lr, [r4, #8]
	b	.L100
.L126:
	.align	2
.L125:
	.word	goblin1
	.word	player
	.word	collision
	.word	.LANCHOR1
	.word	1717986919
	.word	__aeabi_idivmod
	.word	.LANCHOR0
	.size	updateEnemies, .-updateEnemies
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
	ldr	r4, .L129
	ldr	r5, .L129+4
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
	ldr	r3, .L129+8
	mov	r1, r0
	mov	r0, #1069547520
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L130:
	.align	2
.L129:
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
	ldr	r5, .L134
	ldr	r3, .L134+4
	ldr	r4, [r5, #20]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L132
	ldr	r0, [r5, #32]
	ldr	r3, .L134+8
	ldr	r1, [r5, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #32]
.L132:
	add	r4, r4, #1
	str	r4, [r5, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L135:
	.align	2
.L134:
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
	ldr	r1, .L146
	ldr	r3, [r1]
	ldr	r0, .L146+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	bne	.L137
	ldr	ip, .L146+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L137:
	ldr	ip, .L146+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #8]
	ldr	lr, [ip]
	ldr	ip, .L146+16
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r1, #52]
	ldr	ip, .L146+8
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
.L147:
	.align	2
.L146:
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
	ldr	r2, .L158
	ldr	r3, [r2, #24]
	cmp	r3, #6
	beq	.L151
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L151
	cmp	r3, #18
	bne	.L150
.L151:
	ldr	r1, [r2, #28]
	add	r1, r1, #1
	str	r1, [r2, #28]
.L150:
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L159:
	.align	2
.L158:
	.word	slash
	.size	animateSlash, .-animateSlash
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L250
	ldr	r7, .L250+4
	ldr	r3, [r4, #28]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r10, [r7]
	sub	sp, sp, #28
	str	r3, [sp, #20]
	add	r3, r1, r3
	add	r3, r3, #1
	add	fp, r10, r2
	ldrb	r0, [fp, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	ldr	ip, [r4, #24]
	bne	.L161
	add	r0, fp, ip
	ldrb	r3, [r0, r3, lsl #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L161
	ldr	r9, .L250+8
	ldrh	r0, [r9]
	tst	r0, #64
	str	r3, [r7, #4]
	ldr	r5, .L250+12
	bne	.L245
.L163:
	ldr	r8, [r5, #8]
	ldr	r3, [r7, #4]
	cmp	r8, #0
	str	r3, [sp, #16]
	bge	.L172
.L171:
	mov	r3, #0
	add	lr, ip, r2
	add	lr, lr, r1, lsl #9
	add	r0, r2, r1, lsl #9
	add	lr, r10, lr
	add	r0, r10, r0
.L174:
	ldrb	r6, [r0, r3, lsl #9]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L173
	ldrb	r6, [lr, r3, lsl #9]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L173
	sub	r3, r3, #1
	cmp	r3, r8
	bgt	.L174
.L172:
	ldr	r3, .L250+16
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L175
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L175
	ldr	r1, [r5, #8]
	cmp	r1, #0
	ble	.L176
	ldr	r6, [r4, #8]
	sub	fp, fp, #1020
	sub	fp, fp, #2
	add	r3, r2, r6, lsl #9
	add	fp, fp, r6, lsl #9
	add	r3, r10, r3
.L178:
	ldrb	r0, [r3]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L177
	ldrb	r0, [r3, ip]	@ zero_extendqisi2
	sub	r3, r3, #508
	cmp	r0, #0
	sub	r3, r3, #3
	bne	.L177
	cmp	fp, r3
	bne	.L178
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L207
	b	.L205
.L161:
	mov	r0, #0
	mov	lr, #1
	ldr	r5, .L250+12
	ldr	r9, .L250+8
	str	r0, [r5, #16]
	str	r0, [r5, #12]
	ldrh	r0, [r9]
	tst	r0, #64
	mov	r3, lr
	str	lr, [r7, #4]
	beq	.L163
.L245:
	ldr	r0, .L250+20
	ldrh	r0, [r0]
	tst	r0, #64
	bne	.L163
	ldr	r0, [r5, #12]
	cmp	r0, #0
	beq	.L246
	cmp	r3, #0
	beq	.L163
.L203:
	sub	r3, r1, #1
	ldrb	r0, [fp, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L163
	add	r0, fp, ip
	ldrb	r3, [r0, r3, lsl #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L163
	mvn	r8, #4
	mov	r0, #1
	str	r3, [r7, #4]
	str	r3, [sp, #16]
	str	r8, [r5, #8]
	str	r0, [r5, #20]
	b	.L171
.L175:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L241
	ldr	r1, [r5, #8]
	cmp	r1, #0
	ldrgt	r6, [r4, #8]
	ble	.L243
.L207:
	mov	r3, #0
	ldr	r0, [sp, #20]
	add	ip, ip, r2
	add	r0, r0, r6
	add	r2, r2, r0, lsl #9
	add	ip, ip, r0, lsl #9
	add	r2, r10, r2
	add	r10, r10, ip
.L183:
	ldrb	r0, [r2, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L182
	ldrb	r0, [r10, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L182
	add	r3, r3, #1
	cmp	r3, r1
	blt	.L183
.L243:
	ldr	r8, .L250+24
	b	.L184
.L173:
	mov	lr, #1
	mov	r0, #0
	ldr	r8, .L250+24
	add	r3, r3, lr
	add	r1, r1, r3
	str	r1, [r4, #8]
	ldr	r1, [r8]
	add	r3, r1, r3
	str	r3, [r8]
	str	r0, [r5, #8]
	str	r0, [r5, #20]
	str	r0, [r5, #24]
	str	lr, [r5, #16]
	b	.L172
.L177:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r5, #8]
	str	r3, [r5, #20]
	str	r2, [r5, #16]
.L176:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L243
.L241:
	ldr	r6, [r4, #8]
.L205:
	mov	r3, #0
	ldr	r0, [r5]
	str	r3, [r5, #8]
	str	r3, [r5, #24]
	str	r3, [r5, #20]
.L192:
	ldr	r3, .L250+28
	ldr	r1, [r4, #68]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r2, [r4, #12]
	bne	.L195
	ldr	r3, .L250+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L196
	ldr	ip, [r4, #20]
	ldr	r3, [r7]
	sub	r0, r2, ip
	add	r1, r3, r6, lsl #9
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L196
	ldr	r1, [r4, #28]
	add	r1, r6, r1
	sub	r1, r1, #1
	add	r3, r3, r1, lsl #9
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r2, #0
	cmpge	r3, #0
	bne	.L196
	ldr	r2, .L250+32
	ldr	r3, [r2]
	cmp	r3, #0
	str	r0, [r4, #12]
	blt	.L209
	sub	r1, r0, r3
	cmp	r1, #119
	bgt	.L209
	sub	r3, r3, ip
	str	r3, [r2]
	mov	r2, r0
.L196:
	ldr	r3, .L250+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L195
	ldr	r3, [r4, #24]
	ldr	r1, [r7]
	ldr	ip, [r4, #20]
	add	r3, r2, r3
	add	r3, r3, ip
	add	r0, r1, r6, lsl #9
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L195
	ldr	r0, [r4, #28]
	add	r0, r6, r0
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #9
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L195
	ldr	r1, .L250+32
	ldr	r3, [r1]
	add	r2, r2, ip
	cmp	r3, #512
	str	r2, [r4, #12]
	bgt	.L195
	sub	r0, r2, r3
	cmp	r0, #120
	addgt	r3, ip, r3
	strgt	r3, [r1]
.L195:
	ldr	r3, [r4, #56]
	ldr	r7, .L250+36
	rsb	r3, r3, r3, lsl #31
	ldr	r1, [r7, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r1, r3, r2
	str	r6, [r7]
	str	r3, [r7, #4]
	bl	animateSlash
	ldr	r3, [r4, #64]
	cmp	r3, #0
	bgt	.L247
	mov	r2, #0
	mov	r3, #1
	str	r2, [r4, #60]
	str	r3, [r7, #36]
.L201:
	ldrh	r3, [r9]
	tst	r3, #2
	beq	.L202
	ldr	r3, .L250+20
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L202
	ldr	r3, [r4, #60]
	cmp	r3, #0
	bne	.L202
	mov	r1, #1
	mov	r2, #20
	str	r3, [r4, #44]
	str	r3, [r7, #36]
	str	r3, [r7, #28]
	str	r3, [r7, #24]
	str	r1, [r4, #60]
	str	r2, [r4, #64]
.L202:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L182:
	mov	r1, #1
	ldr	r8, .L250+24
	ldr	r2, [r8]
	sub	r3, r3, #1
	add	r6, r3, r6
	add	r3, r2, r3
	str	r6, [r4, #8]
	str	r3, [r8]
	str	r1, [r7, #4]
.L184:
	ldr	r3, .L250+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r5, #24]
	ldr	r3, [r5, #20]
	bne	.L187
	cmp	r3, #0
	bne	.L248
.L188:
	ldr	r3, .L250+40
	mov	lr, pc
	bx	r3
	ldr	r6, .L250+44
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L250+48
	mov	lr, pc
	bx	r6
	ldr	r3, .L250+52
	mov	lr, pc
	bx	r3
	mov	r3, r0
	ldr	r0, [r5]
	tst	r0, #3
	ldreq	r2, [r5, #24]
	addeq	r2, r2, #1
	streq	r2, [r5, #24]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	str	r3, [r5, #8]
	ldr	r6, [r4, #8]
	ldr	r2, [r8]
	bne	.L205
	add	r6, r6, r3
	cmp	r2, #255
	str	r6, [r4, #8]
	sub	r1, r6, r2
	ble	.L239
.L193:
	lsr	ip, r3, #31
	cmp	r1, #80
	movgt	r1, #0
	andle	r1, ip, #1
	cmp	r1, #0
	beq	.L192
.L244:
	add	r3, r3, r2
	str	r3, [r8]
	b	.L192
.L247:
	ldr	r6, .L250+56
	ldmib	r6, {r2, r3}
	ldr	r0, [r6, #16]
	ldr	r1, [r6, #12]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r8, .L250+60
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L199
	ldr	r2, [r6, #40]
	cmp	r2, #0
	bne	.L199
	mov	r1, #1
	ldr	r3, [r6, #44]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r6, #44]
	str	r1, [r6, #40]
	strlt	r2, [r6]
.L199:
	ldr	r3, [r4, #64]
	sub	r3, r3, #1
	str	r3, [r4, #64]
	b	.L201
.L239:
	cmp	r1, #79
	cmpgt	r3, #0
	bgt	.L244
	cmp	r2, #0
	ble	.L192
	b	.L193
.L187:
	cmp	r3, #0
	beq	.L188
.L189:
	mov	r3, #1
	sub	r0, r0, #3
	str	r3, [r5, #16]
	b	.L188
.L248:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L188
	b	.L189
.L246:
	ldr	lr, [r5, #20]
	cmp	lr, #0
	beq	.L249
	mov	lr, #1
	mvn	r8, #1
	cmp	r3, #0
	str	r0, [r5, #24]
	str	r0, [r5, #16]
	str	lr, [r5, #12]
	str	r8, [r5, #8]
	bne	.L203
	ldr	r3, [r7, #4]
	str	r3, [sp, #16]
	b	.L171
.L249:
	cmp	r3, #0
	bne	.L203
	mov	r0, #1
	mvn	r8, #1
	str	r3, [r5, #24]
	str	r3, [r5, #16]
	ldr	r3, [r7, #4]
	str	r0, [r5, #12]
	str	r0, [r5, #20]
	str	r8, [r5, #8]
	str	r3, [sp, #16]
	b	.L171
.L209:
	mov	r2, r0
	b	.L196
.L251:
	.align	2
.L250:
	.word	player
	.word	.LANCHOR1
	.word	oldButtons
	.word	.LANCHOR0
	.word	67109120
	.word	buttons
	.word	vOff
	.word	__aeabi_idivmod
	.word	hOff
	.word	slash
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	goblin1
	.word	collision
	.size	updatePlayer, .-updatePlayer
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
	ldr	r3, .L264
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L253
	ldr	r2, .L264+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L253
	mov	r2, #1
	ldr	r3, .L264+8
	str	r2, [r3, #28]
.L255:
	bl	updatePlayer
	pop	{r4, lr}
	b	updateEnemies
.L253:
	cmp	r3, #0
	beq	.L255
	ldr	r3, .L264+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L264+8
	streq	r2, [r3, #28]
	b	.L255
.L265:
	.align	2
.L264:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
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
	ldr	r1, .L276
	ldr	r3, [r1, #36]
	ldr	r0, .L276+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L267
	ldr	ip, .L276+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L267:
	ldr	ip, .L276+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L276+16
	ldr	ip, .L276+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L276+8
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
.L277:
	.align	2
.L276:
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
	ldr	r3, .L279
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L280:
	.align	2
.L279:
	.word	.LANCHOR1
	.size	checkCollision, .-checkCollision
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
	ldr	r3, .L283
	ldr	r0, .L283+4
	ldr	r3, [r3]
	smull	r1, r2, r0, r3
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #48
	mov	lr, #0
	mov	r6, #56
	mov	r5, #64
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	eor	ip, r3, r3, asr #31
	add	r2, r2, r2, lsl #2
	sub	ip, ip, r3, asr #31
	sub	r3, r3, r2, lsl #2
	ldr	r2, .L283+8
	umull	r1, r2, ip, r2
	ldr	r9, .L283+12
	smull	r1, r9, r3, r9
	ldr	r4, .L283+16
	ldr	r8, .L283+20
	ldr	r1, [r4, #4]
	lsr	r2, r2, #3
	add	r2, r2, r2, lsl #2
	sub	r2, ip, r2, lsl #1
	add	r0, r0, #111
	add	ip, r8, r1, lsl #3
	strh	r0, [ip, #4]	@ movhi
	strh	r7, [ip, #2]	@ movhi
	lsl	r0, r1, #3
	add	ip, r1, #1
	asr	r3, r3, #31
	strh	lr, [r8, r0]	@ movhi
	rsb	r3, r3, r9, asr #2
	lsl	r0, ip, #3
	strh	lr, [r8, r0]	@ movhi
	add	ip, r8, ip, lsl #3
	add	r0, r1, #2
	add	r3, r3, #111
	strh	r6, [ip, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	add	r2, r2, #111
	add	r3, r8, r0, lsl #3
	add	r1, r1, #3
	lsl	ip, r0, #3
	str	r1, [r4, #4]
	strh	lr, [r8, ip]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L284:
	.align	2
.L283:
	.word	hOff
	.word	1374389535
	.word	-858993459
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
	ldr	r3, .L293
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L293+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #4]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L292
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L293+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L286
	ldr	lr, .L293+12
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
	ldrne	r4, .L293+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L286:
	ldr	r2, [r6, #32]
	ldr	lr, .L293+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L293+24
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
	ldr	lr, .L293+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L293+32
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
.L292:
	ldr	ip, .L293+8
	b	.L286
.L294:
	.align	2
.L293:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L307
	ldr	r5, .L307+4
	str	r3, [r4, #4]
	bl	drawHUD
	ldr	r1, [r5]
	cmp	r1, #272
	bge	.L303
	ldr	r6, .L307+8
.L296:
	ldr	r2, .L307+12
	ldr	r0, [r2, #24]
	ldr	r3, [r2, #12]
	add	r3, r3, r0
	cmp	r3, #512
	ldrge	r0, .L307+16
	ldrge	r3, .L307+20
	ldrge	r0, [r0, #16]
	strge	r0, [r3]
	cmp	r1, #512
	blt	.L306
	mov	r1, #0
	mov	r0, #120
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	cmp	r3, #1
	str	r3, [r4, #36]
	str	r1, [r5]
	str	r0, [r2, #12]
	beq	.L304
.L306:
	ldr	r7, .L307+24
.L299:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawFont
	mov	lr, pc
	bx	r7
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L307+28
	mov	lr, pc
	bx	r6
	mov	r0, #67108864
	ldr	ip, [r5]
	ldr	r2, .L307+32
	smull	r3, r2, ip, r2
	ldr	r1, [r4, #44]
	lsl	r3, ip, #16
	lsr	r3, r3, #16
	add	r1, r3, r1
	lsl	r1, r1, #16
	ldr	lr, [r4, #40]
	lsr	r1, r1, #16
	strh	r1, [r0, #20]	@ movhi
	ldr	r1, .L307+36
	add	r3, r3, lr
	sub	r2, r2, ip, asr #31
	ldrh	r1, [r1]
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r1, [r0, #22]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	strh	r3, [r0, #16]	@ movhi
	strh	r1, [r0, #18]	@ movhi
	strh	r2, [r0, #24]	@ movhi
	bx	lr
.L303:
	ldr	r3, [r4, #36]
	ldr	r2, .L307+16
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L307+40
	ldr	r6, .L307+8
	mov	lr, pc
	bx	r6
	ldr	r3, .L307+44
	ldr	r1, [r5]
	str	r3, [r4, #40]
	b	.L296
.L304:
	mov	r3, #67108864
	mov	ip, #5376
	mov	r0, #23552
	mov	r2, #24064
	strh	r1, [r3]	@ movhi
	ldr	r7, .L307+24
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	mov	lr, pc
	bx	r7
	ldr	r2, .L307+16
	mov	r0, #3
	ldr	r1, [r2, #20]
	mov	r3, #2048
	ldr	r2, .L307+48
	mov	lr, pc
	bx	r6
	ldr	r3, .L307+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L307+28
	mov	lr, pc
	bx	r6
	b	.L299
.L308:
	.align	2
.L307:
	.word	.LANCHOR0
	.word	hOff
	.word	DMANow
	.word	player
	.word	maps
	.word	.LANCHOR1
	.word	waitForVBlank
	.word	shadowOAM
	.word	1431655766
	.word	vOff
	.word	100724736
	.word	-384
	.word	100720640
	.word	hideSprites
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
	.comm	maps,24,4
	.global	bg1hOff
	.global	bg0hOff
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
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	hScreenCounter, %object
	.size	hScreenCounter, 4
hScreenCounter:
	.space	4
	.type	bg0hOff, %object
	.size	bg0hOff, 4
bg0hOff:
	.space	4
	.type	bg1hOff, %object
	.size	bg1hOff, 4
bg1hOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
