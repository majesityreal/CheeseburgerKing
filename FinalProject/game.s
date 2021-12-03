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
	.global	initSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSlash, %function
initSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #1
	mov	r4, #14
	mov	lr, #12
	mov	ip, #15
	mvn	r0, #1
	mov	r1, #4
	ldr	r3, .L8
	str	r5, [r3, #40]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #12]
	str	r0, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #8]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
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
	ldr	r7, .L15
	mov	r2, #0
	mov	r3, r7
	mov	r6, #13
	mov	r5, #15
	mov	r4, #4
	mov	lr, #128
	mov	ip, #96
	mov	r1, #1
	add	r0, r7, #360
.L11:
	str	r2, [r3]
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r4, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #56]
	str	lr, [r3, #64]
	str	ip, [r3, #68]
	str	r1, [r3, #60]
	str	r1, [r3, #48]
	str	r2, [r3, #44]
	add	r3, r3, #72
	cmp	r3, r0
	bne	.L11
	ldr	r3, .L15+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L10
	mov	ip, #160
	mov	r0, #185
	mov	r2, #125
	ldr	r3, .L15+8
	str	r1, [r7]
	str	r1, [r7, #72]
	str	ip, [r7, #8]
	str	r0, [r7, #12]
	str	r2, [r7, #80]
	str	r3, [r7, #84]
.L10:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	goblins
	.word	currMap
	.word	425
	.size	initEnemies, .-initEnemies
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
	push	{r4, r5, r6, lr}
	bl	initPlayer
	mov	r4, #0
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #1
	mov	r2, #4
	mov	r5, #1
	ldr	r3, .L19
	str	r5, [r3, #40]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r2, [r3, #36]
	str	r4, [r3, #8]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r4, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	bl	initEnemies
	ldr	r1, .L19+4
	ldr	r2, .L19+8
	ldr	r3, .L19+12
	ldr	lr, .L19+16
	ldr	ip, .L19+20
	str	r4, [r1]
	ldr	r0, .L19+24
	str	r4, [r2]
	ldr	r1, .L19+28
	ldr	r2, .L19+32
	str	r4, [lr]
	str	r4, [lr, #4]
	str	ip, [r3, #4]
	str	ip, [r3, #796]
	str	r0, [r3, #8]
	str	r0, [r3, #800]
	str	r1, [r3, #400]
	str	r1, [r3, #1192]
	str	r2, [r3, #404]
	str	r2, [r3, #1196]
	pop	{r4, r5, r6, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	slash
	.word	currMap
	.word	bgIndex
	.word	maps
	.word	.LANCHOR0
	.word	map2CollisionBitmap
	.word	map2Map
	.word	map1CollisionBitmap
	.word	map1Map
	.size	initGame, .-initGame
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
	mov	r2, #0
	str	lr, [sp, #-4]!
	ldr	r1, .L23
	ldr	lr, .L23+4
	ldr	r3, .L23+8
	ldr	ip, .L23+12
	ldr	r0, .L23+16
	str	r2, [r1]
	str	r2, [lr]
	ldr	r1, .L23+20
	ldr	r2, .L23+24
	str	ip, [r3, #4]
	str	ip, [r3, #796]
	str	r0, [r3, #8]
	str	r0, [r3, #800]
	str	r1, [r3, #400]
	str	r1, [r3, #1192]
	str	r2, [r3, #404]
	str	r2, [r3, #1196]
	ldr	lr, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
	.word	currMap
	.word	bgIndex
	.word	maps
	.word	map2CollisionBitmap
	.word	map2Map
	.word	map1CollisionBitmap
	.word	map1Map
	.size	initMaps, .-initMaps
	.align	2
	.global	updateMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMap, %function
updateMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r6, .L29
	ldr	ip, [r6]
	ldr	r5, .L29+4
	add	ip, ip, ip, lsl #1
	add	ip, ip, ip, lsl #5
	add	ip, r5, ip, lsl #2
	add	r1, ip, #28
	ldm	r1, {r1, lr}
	ldr	r2, [ip, #24]
	ldr	r3, [ip, #20]
	sub	sp, sp, #20
	ldr	r4, .L29+8
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	lr, [sp, #12]
	str	r3, [sp]
	ldr	r0, .L29+12
	add	r2, r4, #24
	add	r7, ip, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r0]
	ldr	r9, .L29+16
	ldm	r7, {r7, r8}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L28
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L28:
	ldr	ip, [r6]
	add	ip, ip, #1
	add	r3, ip, ip, lsl #1
	add	r3, r3, r3, lsl #5
	add	r3, r5, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L29+20
	ldr	r9, .L29+24
	str	ip, [r6]
	mov	lr, pc
	bx	r9
	mov	r2, #0
	ldr	r3, [r6]
	add	r3, r3, r3, lsl #1
	add	r3, r3, r3, lsl #5
	add	r5, r5, r3, lsl #2
	ldr	ip, [r5, #4]
	ldr	r0, .L29+28
	ldr	r1, .L29+32
	ldr	r3, .L29+36
	str	r7, [r4, #12]
	str	r8, [r4, #8]
	str	ip, [r0]
	str	r2, [r1]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	initEnemies
.L30:
	.align	2
.L29:
	.word	currMap
	.word	maps
	.word	player
	.word	pMapPos
	.word	collision
	.word	100712448
	.word	DMANow
	.word	.LANCHOR1
	.word	hOff
	.word	vOff
	.size	updateMap, .-updateMap
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
	str	lr, [sp, #-4]!
	ldr	lr, .L35
	ldr	ip, .L35+4
	add	r1, r1, r3
	ldr	r3, [lr]
	add	r1, r1, #1
	ldr	ip, [ip]
	add	r3, r3, r1, lsl #11
	add	r3, r3, ip, lsl #8
	ldrb	r1, [r3, r0]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r0
	movne	r0, #1
	bne	.L31
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L31:
	ldr	lr, [sp], #4
	bx	lr
.L36:
	.align	2
.L35:
	.word	.LANCHOR1
	.word	bgIndex
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
	ldr	r0, .L40
	add	r1, r1, r3
	ldr	r3, [r0]
	add	r1, r1, #1
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, ip]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, ip
	bxeq	lr
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L84
	push	{r4, r5, r6, lr}
	ldr	r4, .L84+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L43
	cmp	r2, #0
	beq	.L82
	ldrh	r3, [r3, #48]
.L46:
	ldr	r3, .L84+8
	ldr	r1, [r3, #8]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L49
	movne	r1, #2
	strne	r1, [r4, #36]
.L49:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	movne	r3, #6
	strne	r3, [r4, #36]
	cmp	r2, #0
	movne	r3, #4
	strne	r3, [r4, #36]
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L52
	mov	r1, #5
	ldr	r5, [r4, #32]
	ldr	r3, .L84+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	bne	.L54
.L55:
	ldr	r3, .L84+12
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	beq	.L62
.L63:
	ldr	r0, [r4, #44]
	ldr	r3, .L84+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L56:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L46
.L54:
	ldr	r1, .L84+12
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L56
	ldr	r1, [r4, #36]
.L62:
	cmp	r1, #1
	beq	.L63
	cmp	r1, #6
	beq	.L63
	cmp	r1, #5
	beq	.L83
	cmp	r3, #0
	beq	.L63
	b	.L56
.L43:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L46
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L46
.L52:
	ldr	r5, [r4, #32]
	ldr	r3, .L84+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L54
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L63
	b	.L55
.L83:
	ldr	r0, [r4, #44]
	ldr	r3, .L84+16
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
	b	.L56
.L85:
	.align	2
.L84:
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
	ldr	r1, .L105
	ldr	r3, [r1, #52]
	ldr	r0, .L105+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L87
	ldr	ip, .L105+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L87:
	ldr	ip, .L105+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [ip]
	ldr	ip, .L105+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L105+8
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
	b	.L90
.L92:
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L91
.L91:
	ldr	r1, .L105+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L88:
	add	r2, r2, #1
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L98:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L88
.L97:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L88
.L96:
	ldr	r1, .L105+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L88
.L95:
	ldr	r1, .L105+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L88
.L94:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L88
.L93:
	ldr	r1, .L105+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L88
.L90:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L88
.L106:
	.align	2
.L105:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L112
	ldr	r8, .L112+4
	ldr	r6, .L112+8
	add	r7, r4, #360
.L109:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L108
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L108:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L109
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	goblins
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateEnemies, .-animateEnemies
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #1
	mov	r8, #0
	ldr	r4, .L163
	ldr	r6, .L163+4
	ldr	r9, .L163+8
	ldr	r10, .L163+12
	ldr	r5, .L163+16
	sub	sp, sp, #28
	add	r7, r4, #360
.L127:
	add	r0, r4, #12
	ldr	r3, [r6]
	ldm	r0, {r0, r2}
	sub	ip, r3, #239
	add	r1, r0, r2
	cmp	ip, r1
	bgt	.L160
	add	r1, r3, #239
	cmp	r0, r1
	bgt	.L160
	ldr	r1, [r4]
	cmp	r1, #0
	str	fp, [r4, #4]
	beq	.L119
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L120
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L120:
	add	r1, r5, #24
	ldm	r1, {r1, ip}
	str	r3, [sp]
	ldr	r3, [r5, #8]
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	str	ip, [sp, #12]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L122
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L122
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #72]
	ldrle	r3, .L163+20
	str	fp, [r5, #76]
	strle	fp, [r3, #16]
.L122:
	ldr	r0, [r4, #12]
	ldr	r3, [r6]
	sub	r3, r3, r0
	ldr	r2, [r4, #64]
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	cmp	r1, r2
	ldr	r1, [r4, #8]
	ldr	r2, [r10]
	bge	.L159
	ldr	ip, [r5, #8]
	sub	ip, ip, r1
	cmp	ip, #0
	ldr	lr, [r4, #68]
	rsblt	ip, ip, #0
	cmp	ip, lr
	bge	.L159
	ldr	ip, .L163+20
	ldr	ip, [ip]
	tst	ip, #1
	beq	.L154
.L159:
	ldr	r3, [r4, #20]
.L124:
	add	r3, r1, r3
	add	r3, r3, #1
	add	r2, r2, r0
	ldrb	r0, [r2, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r2, r2, r3, lsl #11
	bne	.L161
.L126:
	add	r1, r1, #1
	str	r1, [r4, #8]
.L119:
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L127
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L160:
	str	r8, [r4, #4]
	b	.L119
.L161:
	ldr	r3, [r4, #16]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L126
	b	.L119
.L154:
	cmp	r3, #0
	blt	.L162
	beq	.L159
	ldr	r3, [r4, #60]
	ldr	ip, [r4, #16]
	add	r3, r0, r3
	add	ip, r3, ip
	str	r3, [sp, #16]
	add	r3, r2, r1, lsl #11
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L124
	add	ip, r2, ip
	mov	lr, ip
	str	ip, [sp, #20]
	add	ip, r1, r3
	ldrb	lr, [lr, ip, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	lsl	ip, ip, #11
	bne	.L124
	ldr	lr, [sp, #16]
	add	ip, ip, #2048
	add	lr, r2, lr
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L124
	ldr	lr, [sp, #20]
	ldrb	ip, [lr, ip]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	ip, [sp, #16]
	movne	r0, ip
	strne	ip, [r4, #12]
	b	.L124
.L162:
	ldr	ip, [r4, #60]
	add	r3, r2, r1, lsl #11
	sub	ip, r0, ip
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r3, #0
	str	ip, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L124
	ldr	ip, [sp, #16]
	add	ip, r2, ip
	mov	lr, ip
	add	ip, r1, r3
	str	lr, [sp, #20]
	ldrb	lr, [lr, ip, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	lsl	ip, ip, #11
	bne	.L124
	ldr	lr, [sp, #20]
	add	ip, ip, #2048
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	ldr	lr, [sp, #20]
	add	ip, lr, ip
	beq	.L124
	ldr	lr, [r4, #16]
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	r0, [sp, #16]
	strne	r0, [r4, #12]
	b	.L124
.L164:
	.align	2
.L163:
	.word	goblins
	.word	pMapPos
	.word	collision
	.word	.LANCHOR1
	.word	player
	.word	.LANCHOR0
	.size	updateEnemies, .-updateEnemies
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L181
	ldr	r3, .L181+4
	ldr	r4, .L181+8
	ldr	r0, .L181+12
	ldr	r1, [r2]
	ldr	lr, [r3]
	ldr	ip, [r4, #4]
	ldr	r2, .L181+16
	ldr	r3, .L181+20
	ldr	r5, .L181+24
	ldrh	r6, [r0]
	add	lr, lr, r1, lsl #8
	add	r2, r2, ip, lsl #3
	add	r0, r3, #360
.L171:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L166
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L166
	ldr	r1, [r3, #12]
	ldr	r8, [r3, #56]
	sub	r1, r1, lr
	and	r1, r1, r5
	orr	r1, r1, #16384
	cmp	r8, #0
	strh	r1, [r2, #2]	@ movhi
	orrne	r1, r1, #4096
	strhne	r1, [r2, #2]	@ movhi
	ldr	r1, [r3, #44]
	ldr	r7, [r3, #8]
	cmp	r1, #1
	ldr	r1, [r3, #36]
	sub	r7, r7, r6
	addne	r1, r1, #73
	and	r7, r7, #255
	lslne	r1, r1, #1
	strh	r7, [r2]	@ movhi
	strhne	r1, [r2, #4]	@ movhi
	bne	.L168
	cmp	r1, #0
	and	r1, r1, #1
	rsblt	r1, r1, #0
	add	r1, r1, #137
	lsl	r1, r1, #1
	strh	r1, [r2, #4]	@ movhi
.L168:
	add	r3, r3, #72
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L171
.L180:
	add	ip, ip, #5
	str	ip, [r4, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L166:
	ldrh	r1, [r2]
	add	r3, r3, #72
	orr	r1, r1, #512
	cmp	r3, r0
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L171
	b	.L180
.L182:
	.align	2
.L181:
	.word	bgIndex
	.word	hOff
	.word	.LANCHOR0
	.word	vOff
	.word	shadowOAM
	.word	goblins
	.word	511
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
	ldr	r2, .L193
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L186
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L186
	cmp	r3, #18
	bne	.L185
.L186:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L185:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L194:
	.align	2
.L193:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L293
	ldr	r7, .L293+4
	ldr	r8, .L293+8
	ldr	fp, [r7]
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #12]
	ldr	r0, [r4, #8]
	sub	sp, sp, #36
	ldr	lr, [r8]
	add	r10, r2, fp, lsl #8
	str	r3, [sp, #28]
	add	r3, r0, r3
	add	r1, lr, r10
	add	r3, r3, #1
	ldrb	ip, [r1, r3, lsl #11]	@ zero_extendqisi2
	lsl	r5, fp, #8
	cmp	ip, #0
	str	r5, [sp, #20]
	ldr	fp, [r4, #24]
	bne	.L196
	add	ip, lr, r2
	add	ip, ip, fp
	add	ip, ip, r5
	ldrb	r3, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L196
	ldr	ip, .L293+12
	ldrh	ip, [ip]
	tst	ip, #64
	str	r3, [r8, #4]
	ldr	r5, .L293+16
	bne	.L288
.L198:
	ldr	r9, [r5, #8]
	ldr	r3, [r8, #4]
	cmp	r9, #0
	str	r3, [sp, #24]
	bge	.L207
.L206:
	mov	r3, #0
	ldr	ip, [sp, #20]
	add	r1, fp, r2
	add	r1, r1, r0, lsl #11
	add	r1, r1, ip
	add	ip, r10, r0, lsl #11
	add	r1, lr, r1
	add	ip, lr, ip
.L209:
	ldrb	r6, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L208
	ldrb	r6, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L208
	sub	r3, r3, #1
	cmp	r3, r9
	bgt	.L209
.L207:
	ldr	r3, .L293+20
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L210
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L210
	ldr	r1, [r5, #8]
	cmp	r1, #0
	ble	.L211
	ldr	r6, [r4, #8]
	add	r0, r10, r6, lsl #11
	add	ip, lr, r0
.L213:
	ldrb	r0, [ip]	@ zero_extendqisi2
	cmp	r0, #0
	sub	r3, r3, #1
	bne	.L212
	ldrb	r0, [ip, fp]	@ zero_extendqisi2
	cmp	r0, #0
	sub	ip, ip, #2032
	bne	.L212
	cmn	r3, #2
	sub	ip, ip, #15
	mvn	r3, #0
	bne	.L213
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L245
	b	.L247
.L196:
	mov	ip, #0
	mov	r6, #1
	ldr	r5, .L293+16
	str	ip, [r5, #20]
	str	ip, [r5, #12]
	ldr	ip, .L293+12
	ldrh	ip, [ip]
	tst	ip, #64
	mov	r3, r6
	str	r6, [r8, #4]
	beq	.L198
.L288:
	ldr	ip, .L293+24
	ldrh	ip, [ip]
	tst	ip, #64
	bne	.L198
	ldr	ip, [r5, #12]
	cmp	ip, #0
	beq	.L289
	cmp	r3, #0
	beq	.L198
.L243:
	sub	r3, r0, #1
	ldrb	r1, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L198
	ldr	ip, [sp, #20]
	add	r1, lr, r2
	add	r1, r1, fp
	add	r1, r1, ip
	ldrb	r3, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L198
	mvn	r9, #4
	mov	r1, #1
	str	r3, [r8, #4]
	str	r3, [sp, #24]
	str	r9, [r5, #8]
	str	r1, [r5, #24]
	b	.L206
.L210:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L284
	ldr	r1, [r5, #8]
	cmp	r1, #0
	ldrgt	r6, [r4, #8]
	ble	.L286
.L247:
	mov	r3, #0
	ldr	r0, [sp, #20]
	add	r2, fp, r2
	add	r2, r2, r0
	ldr	r0, [sp, #28]
	add	r0, r0, r6
	add	r2, r2, r0, lsl #11
	add	r10, r10, r0, lsl #11
	add	r2, lr, r2
	add	lr, lr, r10
.L218:
	ldrb	r0, [lr, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L217
	ldrb	r0, [r2, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L217
	add	r3, r3, #1
	cmp	r3, r1
	blt	.L218
.L286:
	ldr	r9, .L293+28
	b	.L219
.L208:
	mov	ip, #1
	mov	r1, #0
	ldr	r9, .L293+28
	add	r3, r3, ip
	add	r0, r0, r3
	str	r0, [r4, #8]
	ldr	r0, [r9]
	add	r3, r0, r3
	str	r3, [r9]
	str	r1, [r5, #8]
	str	r1, [r5, #24]
	str	r1, [r5, #28]
	str	ip, [r5, #20]
	b	.L207
.L212:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r5, #8]
	str	r3, [r5, #24]
	str	r2, [r5, #20]
.L211:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L286
.L284:
	ldr	r6, [r4, #8]
.L245:
	mov	r3, #0
	ldr	r0, [r5]
	str	r3, [r5, #8]
	str	r3, [r5, #28]
	str	r3, [r5, #24]
.L227:
	ldr	r3, .L293+32
	ldr	r1, [r4, #68]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r2, [r4, #12]
	bne	.L230
	ldr	r3, .L293+20
	ldrh	r3, [r3, #48]
	ldr	r0, [r7]
	tst	r3, #32
	lsl	r3, r0, #8
	bne	.L231
	ldr	r9, [r4, #20]
	ldr	r1, [r8]
	sub	lr, r2, r9
	add	ip, lr, r3
	add	r10, r1, r6, lsl #11
	ldrb	r10, [r10, ip]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L231
	ldr	r10, [r4, #28]
	add	r10, r6, r10
	sub	r10, r10, #1
	add	r1, r1, r10, lsl #11
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r2, #0
	cmpge	r1, #0
	bne	.L231
	ldr	r1, .L293+36
	ldr	r2, [r1]
	cmp	r2, #0
	str	lr, [r4, #12]
	blt	.L232
	sub	ip, lr, r2
	cmp	ip, #119
	suble	r2, r2, r9
	strle	r2, [r1]
.L232:
	cmp	r2, #0
	movgt	r2, #0
	movle	r2, #1
	cmp	r0, #0
	moveq	r2, #0
	cmp	r2, #0
	moveq	r2, lr
	bne	.L290
.L231:
	ldr	r1, .L293+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L233
	ldr	r1, [r4, #24]
	ldr	ip, [r4, #20]
	ldr	lr, [r8]
	add	r1, r2, r1
	add	r1, r1, ip
	add	r1, r1, r3
	add	r8, lr, r6, lsl #11
	ldrb	r8, [r8, r1]	@ zero_extendqisi2
	cmp	r8, #0
	bne	.L233
	ldr	r8, [r4, #28]
	add	r8, r6, r8
	sub	r8, r8, #1
	add	lr, lr, r8, lsl #11
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	cmp	r2, #2288
	cmple	r1, #0
	bne	.L233
	ldr	r1, .L293+36
	ldr	lr, [r1]
	add	r2, r2, ip
	cmp	lr, #512
	str	r2, [r4, #12]
	bgt	.L234
	sub	r8, r2, lr
	cmp	r8, #120
	addgt	lr, lr, ip
	strgt	lr, [r1]
	cmp	lr, #256
	bgt	.L234
.L233:
	ldr	r1, .L293+40
	add	r3, r2, r3
	str	r3, [r1]
.L230:
	ldr	r3, [r4, #56]
	ldr	r8, .L293+44
	rsb	r3, r3, r3, lsl #31
	ldr	r1, [r8, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r1, r3, r2
	str	r6, [r8]
	str	r3, [r8, #4]
	bl	animateSlash
	ldr	r3, [r4, #64]
	cmp	r3, #0
	ble	.L236
	mov	fp, #1
	ldr	r6, .L293+48
	ldr	r10, .L293+52
	add	r9, r6, #360
.L240:
	ldr	r0, [r8, #4]
	ldr	ip, [r6, #20]
	ldr	r1, [r7]
	ldr	r3, [r8, #24]
	ldr	r2, [r8, #16]
	ldr	lr, [r6, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r6, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r6, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r8, #20]
	ldr	r1, [r8]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L238
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L238
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L238:
	add	r6, r6, #72
	cmp	r9, r6
	bne	.L240
	ldr	r3, [r4, #64]
	sub	r3, r3, #1
	str	r3, [r4, #64]
.L241:
	ldr	r3, .L293+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L242
	ldr	r3, .L293+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L242
	ldr	r3, [r4, #60]
	cmp	r3, #0
	bne	.L242
	mov	r1, #1
	mov	r2, #20
	str	r3, [r4, #44]
	str	r3, [r8, #40]
	str	r3, [r8, #32]
	str	r3, [r8, #28]
	str	r1, [r4, #60]
	str	r2, [r4, #64]
.L242:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L217:
	mov	r1, #1
	ldr	r9, .L293+28
	ldr	r2, [r9]
	sub	r3, r3, #1
	add	r6, r3, r6
	add	r3, r2, r3
	str	r6, [r4, #8]
	str	r3, [r9]
	str	r1, [r8, #4]
.L219:
	ldr	r3, .L293+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r5, #28]
	ldr	r3, [r5, #24]
	bne	.L222
	cmp	r3, #0
	bne	.L291
.L223:
	ldr	r3, .L293+56
	mov	lr, pc
	bx	r3
	ldr	r6, .L293+60
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L293+64
	mov	lr, pc
	bx	r6
	ldr	r3, .L293+68
	mov	lr, pc
	bx	r3
	mov	r3, r0
	ldr	r0, [r5]
	tst	r0, #3
	ldreq	r2, [r5, #28]
	addeq	r2, r2, #1
	streq	r2, [r5, #28]
	ldr	r2, [r8, #4]
	cmp	r2, #0
	str	r3, [r5, #8]
	ldr	r6, [r4, #8]
	ldr	r2, [r9]
	bne	.L245
	add	r6, r6, r3
	cmp	r2, #255
	str	r6, [r4, #8]
	sub	r1, r6, r2
	ble	.L282
.L228:
	lsr	ip, r3, #31
	cmp	r1, #80
	movgt	r1, #0
	andle	r1, ip, #1
	cmp	r1, #0
	beq	.L227
.L287:
	add	r3, r3, r2
	str	r3, [r9]
	b	.L227
.L236:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r4, #60]
	str	r3, [r8, #40]
	b	.L241
.L282:
	cmp	r1, #79
	cmpgt	r3, #0
	bgt	.L287
	cmp	r2, #0
	ble	.L227
	b	.L228
.L222:
	cmp	r3, #0
	beq	.L223
.L224:
	mov	r3, #1
	sub	r0, r0, #3
	str	r3, [r5, #20]
	b	.L223
.L291:
	ldr	r3, [r5, #20]
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L223
	b	.L224
.L289:
	ldr	r6, [r5, #24]
	cmp	r6, #0
	beq	.L292
	mov	r6, #1
	mvn	r9, #1
	cmp	r3, #0
	str	ip, [r5, #28]
	str	ip, [r5, #20]
	str	r6, [r5, #12]
	str	r9, [r5, #8]
	bne	.L243
	ldr	r3, [r8, #4]
	str	r3, [sp, #24]
	b	.L206
.L292:
	cmp	r3, #0
	bne	.L243
	mov	r1, #1
	mvn	r9, #1
	str	r3, [r5, #28]
	str	r3, [r5, #20]
	ldr	r3, [r8, #4]
	str	r1, [r5, #12]
	str	r1, [r5, #24]
	str	r9, [r5, #8]
	str	r3, [sp, #24]
	b	.L206
.L234:
	mov	lr, #120
	mov	r9, #67108864
	mov	r8, #0
	add	ip, r0, #25
	lsl	ip, ip, #24
	orr	ip, ip, #1073741824
	add	r3, r0, #1
	lsr	ip, ip, #16
	str	r3, [r7]
	str	lr, [r4, #12]
	mov	r2, lr
	strh	ip, [r9, #10]	@ movhi
	lsl	r3, r3, #8
	str	r8, [r1]
	b	.L233
.L290:
	mov	r9, #67108864
	mov	lr, #256
	mov	r2, #376
	add	ip, r0, #23
	lsl	ip, ip, #24
	orr	ip, ip, #1073741824
	lsr	ip, ip, #16
	sub	r0, r0, #1
	str	r0, [r7]
	sub	r3, r3, #256
	strh	ip, [r9, #10]	@ movhi
	str	r2, [r4, #12]
	str	lr, [r1]
	b	.L231
.L294:
	.align	2
.L293:
	.word	player
	.word	bgIndex
	.word	.LANCHOR1
	.word	oldButtons
	.word	.LANCHOR0
	.word	67109120
	.word	buttons
	.word	vOff
	.word	__aeabi_idivmod
	.word	hOff
	.word	pMapPos
	.word	slash
	.word	goblins
	.word	collision
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
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
	ldr	r3, .L309
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L296
	ldr	r2, .L309+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L296
	mov	r2, #1
	ldr	r3, .L309+8
	str	r2, [r3, #32]
.L298:
	bl	updatePlayer
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L309+12
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L299
	ldr	r3, [r3, #8]
	cmp	r3, #240
	ble	.L295
.L299:
	mov	r2, #1
	ldr	r3, .L309+8
	str	r2, [r3, #16]
.L295:
	pop	{r4, lr}
	bx	lr
.L296:
	cmp	r3, #0
	beq	.L298
	ldr	r3, .L309+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L309+8
	streq	r2, [r3, #32]
	b	.L298
.L310:
	.align	2
.L309:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	player
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
	ldr	r1, .L321
	ldr	r3, [r1, #40]
	ldr	r0, .L321+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L312
	ldr	ip, .L321+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L312:
	ldr	ip, .L321+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L321+16
	ldr	ip, .L321+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L321+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r5, ip, r2, lsl #3
	orr	r3, r3, #16384
	cmp	r6, #0
	strh	r3, [r5, #2]	@ movhi
	ldr	lr, [r1]
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #32]
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
.L322:
	.align	2
.L321:
	.word	slash
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	player
	.word	vOff
	.size	drawSlash, .-drawSlash
	.align	2
	.global	pCheckCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	pCheckCollision, %function
pCheckCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L324
	ldr	r3, .L324+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L325:
	.align	2
.L324:
	.word	bgIndex
	.word	.LANCHOR1
	.size	pCheckCollision, .-pCheckCollision
	.align	2
	.global	eCheckCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	eCheckCollision, %function
eCheckCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L327
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L328:
	.align	2
.L327:
	.word	.LANCHOR1
	.size	eCheckCollision, .-eCheckCollision
	.align	2
	.global	drawFont
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFont, %function
drawFont:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L331
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L331+4
	ldr	r9, [r2]
	ldr	r3, .L331+8
	ldr	r2, .L331+12
	ldr	fp, [r1, #8]
	ldr	r10, [r3]
	smull	r1, r3, r2, r9
	smull	r1, r7, r2, fp
	ldr	r8, .L331+16
	asr	r0, r9, #31
	sub	sp, sp, #20
	rsb	r3, r0, r3, asr #5
	str	r3, [sp, #4]
	add	r6, r3, r3, lsl #2
	smull	r1, r3, r8, r9
	asr	r4, fp, #31
	rsb	r7, r4, r7, asr #5
	add	r5, r7, r7, lsl #2
	add	r5, r5, r5, lsl #2
	sub	r5, fp, r5, lsl #2
	str	r5, [sp]
	rsb	r0, r0, r3, asr #2
	smull	r5, r3, r8, fp
	add	r6, r6, r6, lsl #2
	smull	r1, r2, r10, r2
	sub	r6, r9, r6, lsl #2
	smull	lr, r1, r8, r6
	rsb	r4, r4, r3, asr #2
	smull	r5, r3, r8, r10
	mov	ip, #0
	asr	lr, r10, #31
	rsb	r2, lr, r2, asr #5
	add	r4, r4, r4, lsl #2
	str	r1, [sp, #8]
	rsb	lr, lr, r3, asr #2
	add	r1, r2, r2, lsl #2
	sub	r4, fp, r4, lsl #1
	ldr	fp, [sp]
	add	r1, r1, r1, lsl #2
	add	lr, lr, lr, lsl #2
	ldr	r5, [sp, #8]
	sub	r1, r10, r1, lsl #2
	sub	lr, r10, lr, lsl #1
	smull	r10, fp, r8, fp
	asr	r6, r6, #31
	rsb	r6, r6, r5, asr #2
	smull	r5, r10, r8, r1
	ldr	r5, [sp]
	str	r2, [sp, #12]
	ldr	r8, [sp, #4]
	ldr	r2, .L331+20
	asr	r5, r5, #31
	ldr	r3, .L331+24
	ldr	r2, [r2, #4]
	rsb	r5, r5, fp, asr #2
	add	fp, r8, #111
	ldr	r8, [sp, #12]
	add	r0, r0, r0, lsl #2
	asr	r1, r1, #31
	sub	r0, r9, r0, lsl #1
	rsb	r1, r1, r10, asr #2
	add	r9, r2, #1
	add	r10, r3, r2, lsl #3
	add	r8, r8, #111
	strh	fp, [r10, #4]	@ movhi
	str	r8, [sp]
	add	fp, r3, r9, lsl #3
	add	r8, r2, #2
	add	r6, r6, #111
	strh	r6, [fp, #4]	@ movhi
	add	r0, r0, #111
	add	r6, r3, r8, lsl #3
	strh	r0, [r6, #4]	@ movhi
	lsl	r0, r2, #3
	strh	ip, [r3, r0]	@ movhi
	mov	r0, #48	@ movhi
	strh	r0, [r10, #2]	@ movhi
	mov	r0, #56	@ movhi
	strh	r0, [fp, #2]	@ movhi
	mov	r0, #64	@ movhi
	strh	r0, [r6, #2]	@ movhi
	add	r0, r2, #3
	lsl	r6, r0, #3
	lsl	r9, r9, #3
	lsl	r8, r8, #3
	strh	ip, [r3, r9]	@ movhi
	strh	ip, [r3, r8]	@ movhi
	strh	ip, [r3, r6]	@ movhi
	mov	r6, #148	@ movhi
	add	r0, r3, r0, lsl #3
	add	r7, r7, #111
	strh	r7, [r0, #4]	@ movhi
	strh	r6, [r0, #2]	@ movhi
	add	r0, r2, #4
	add	r6, r3, r0, lsl #3
	add	r5, r5, #111
	strh	r5, [r6, #4]	@ movhi
	lsl	r0, r0, #3
	add	r5, r2, #5
	strh	ip, [r3, r0]	@ movhi
	add	r4, r4, #111
	add	r0, r3, r5, lsl #3
	strh	r4, [r0, #4]	@ movhi
	mov	r4, #156	@ movhi
	strh	r4, [r6, #2]	@ movhi
	mov	r4, #164	@ movhi
	lsl	r5, r5, #3
	strh	ip, [r3, r5]	@ movhi
	strh	r4, [r0, #2]	@ movhi
	mov	r4, #82	@ movhi
	add	r5, r2, #6
	ldr	r8, [sp]
	add	r0, r3, r5, lsl #3
	add	r6, r2, #7
	lsl	r7, r5, #3
	add	r5, r2, #8
	strh	ip, [r3, r7]	@ movhi
	strh	r4, [r0, #2]	@ movhi
	add	r7, r3, r6, lsl #3
	strh	r8, [r0, #4]	@ movhi
	lsl	r6, r6, #3
	add	r0, r3, r5, lsl #3
	lsl	r5, r5, #3
	strh	ip, [r3, r6]	@ movhi
	strh	ip, [r3, r5]	@ movhi
	mov	r3, #90	@ movhi
	strh	r3, [r7, #2]	@ movhi
	mov	r3, #98	@ movhi
	add	r1, r1, #111
	strh	r1, [r7, #4]	@ movhi
	ldr	r1, .L331+20
	add	lr, lr, #111
	add	r2, r2, #9
	str	r2, [r1, #4]
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L332:
	.align	2
.L331:
	.word	hOff
	.word	player
	.word	pMapPos
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
	ldr	r3, .L341
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L341+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #4]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L340
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L341+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L334
	ldr	lr, .L341+12
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
	ldrne	r4, .L341+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L334:
	ldr	r2, [r6, #36]
	ldr	lr, .L341+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L341+24
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
	ldr	lr, .L341+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L341+32
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
.L340:
	ldr	ip, .L341+8
	b	.L334
.L342:
	.align	2
.L341:
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
	mov	r2, #0
	ldr	r3, .L345
	push	{r4, lr}
	str	r2, [r3, #4]
	bl	drawHUD
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawFont
	ldr	r3, .L345+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L345+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L345+12
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L345+16
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, .L345+20
	ldrh	r0, [r3]
	ldr	r3, .L345+24
	strh	r0, [r1, #22]	@ movhi
	ldr	r0, [r3]
	ldr	r3, .L345+28
	add	r2, r2, r0, lsl #8
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, lr}
	bx	lr
.L346:
	.align	2
.L345:
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	bgIndex
	.word	1431655766
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
	mov	r2, #1
	ldr	r3, .L348
	str	r2, [r3, #16]
	bx	lr
.L349:
	.align	2
.L348:
	.word	.LANCHOR0
	.size	gameOver, .-gameOver
	.global	dead
	.comm	maps,1584,4
	.comm	bgIndex,4,4
	.comm	pMapPos,4,4
	.comm	currMap,4,4
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
	.comm	goblins,360,4
	.comm	slash,56,4
	.comm	player,84,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	hugeMapCollisionBitmap
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
	.type	dead, %object
	.size	dead, 4
dead:
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
