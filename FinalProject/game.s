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
	.word	lettuce
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
	ldr	r3, .L94
	push	{r4, r5, r6, lr}
	ldr	r4, .L94+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L43
	cmp	r2, #0
	beq	.L92
	ldrh	r3, [r3, #48]
.L46:
	ldr	r3, .L94+8
	ldr	r1, [r3, #8]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L49
	movne	r1, #2
	strne	r1, [r4, #36]
.L49:
	ldr	r1, [r3, #12]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	strne	r2, [r4, #36]
	ldr	r2, [r4, #76]
	cmp	r2, #0
	movne	r2, #5
	ldr	r3, [r3, #16]
	strne	r2, [r4, #36]
	cmp	r3, #0
	beq	.L53
	ldr	r3, .L94+12
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L53
	mov	r1, #6
	ldr	r5, [r4, #32]
	ldr	r3, .L94+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	beq	.L56
.L55:
	ldr	r1, .L94+16
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L57
	ldr	r1, [r4, #36]
.L63:
	cmp	r1, #1
	beq	.L64
	cmp	r1, #6
	beq	.L64
	cmp	r1, #5
	beq	.L93
	cmp	r3, #0
	bne	.L57
.L64:
	ldr	r0, [r4, #44]
	ldr	r3, .L94+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L57:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
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
.L53:
	ldr	r5, [r4, #32]
	ldr	r3, .L94+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L55
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L64
.L56:
	ldr	r3, .L94+16
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	bne	.L64
	b	.L63
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
.L93:
	ldr	r0, [r4, #44]
	ldr	r3, .L94+20
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
	b	.L57
.L95:
	.align	2
.L94:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	.LANCHOR1
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
	ldr	r1, .L115
	ldr	r3, [r1, #52]
	ldr	r0, .L115+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L97
	ldr	ip, .L115+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L97:
	ldr	ip, .L115+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [ip]
	ldr	ip, .L115+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L115+8
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
	b	.L100
.L102:
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L101
.L101:
	ldr	r1, .L115+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L98:
	add	r2, r2, #1
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L108:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L98
.L107:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L98
.L106:
	ldr	r1, .L115+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L98
.L105:
	ldr	r1, .L115+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L98
.L104:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L98
.L103:
	ldr	r1, .L115+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L98
.L100:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L98
.L116:
	.align	2
.L115:
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
	ldr	r4, .L122
	ldr	r8, .L122+4
	ldr	r6, .L122+8
	add	r7, r4, #360
.L119:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L118
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L118:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L119
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L123:
	.align	2
.L122:
	.word	lettuce
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
	ldr	r4, .L173
	ldr	r6, .L173+4
	ldr	r9, .L173+8
	ldr	r10, .L173+12
	ldr	r5, .L173+16
	sub	sp, sp, #28
	add	r7, r4, #360
.L137:
	add	r0, r4, #12
	ldr	r3, [r6]
	ldm	r0, {r0, r2}
	sub	ip, r3, #239
	add	r1, r0, r2
	cmp	ip, r1
	bgt	.L170
	add	r1, r3, #239
	cmp	r0, r1
	bgt	.L170
	ldr	r1, [r4]
	cmp	r1, #0
	str	fp, [r4, #4]
	beq	.L129
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L130
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L130:
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
	beq	.L132
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L132
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #72]
	ldrle	r3, .L173+20
	str	fp, [r5, #76]
	strle	fp, [r3, #20]
.L132:
	ldr	r0, [r4, #12]
	ldr	r3, [r6]
	sub	r3, r3, r0
	ldr	r2, [r4, #64]
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	cmp	r1, r2
	ldr	r1, [r4, #8]
	ldr	r2, [r10]
	bge	.L169
	ldr	ip, [r5, #8]
	sub	ip, ip, r1
	cmp	ip, #0
	ldr	lr, [r4, #68]
	rsblt	ip, ip, #0
	cmp	ip, lr
	bge	.L169
	ldr	ip, .L173+20
	ldr	ip, [ip]
	tst	ip, #1
	beq	.L164
.L169:
	ldr	r3, [r4, #20]
.L134:
	add	r3, r1, r3
	add	r3, r3, #1
	add	r2, r2, r0
	ldrb	r0, [r2, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r2, r2, r3, lsl #11
	bne	.L171
.L136:
	add	r1, r1, #1
	str	r1, [r4, #8]
.L129:
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L137
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L170:
	str	r8, [r4, #4]
	b	.L129
.L171:
	ldr	r3, [r4, #16]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L136
	b	.L129
.L164:
	cmp	r3, #0
	blt	.L172
	beq	.L169
	ldr	r3, [r4, #60]
	ldr	ip, [r4, #16]
	add	r3, r0, r3
	add	ip, r3, ip
	str	r3, [sp, #16]
	add	r3, r2, r1, lsl #11
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L134
	add	ip, r2, ip
	mov	lr, ip
	str	ip, [sp, #20]
	add	ip, r1, r3
	ldrb	lr, [lr, ip, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	lsl	ip, ip, #11
	bne	.L134
	ldr	lr, [sp, #16]
	add	ip, ip, #2048
	add	lr, r2, lr
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L134
	ldr	lr, [sp, #20]
	ldrb	ip, [lr, ip]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	ip, [sp, #16]
	movne	r0, ip
	strne	ip, [r4, #12]
	b	.L134
.L172:
	ldr	ip, [r4, #60]
	add	r3, r2, r1, lsl #11
	sub	ip, r0, ip
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r3, #0
	str	ip, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L134
	ldr	ip, [sp, #16]
	add	ip, r2, ip
	mov	lr, ip
	add	ip, r1, r3
	str	lr, [sp, #20]
	ldrb	lr, [lr, ip, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	lsl	ip, ip, #11
	bne	.L134
	ldr	lr, [sp, #20]
	add	ip, ip, #2048
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	ldr	lr, [sp, #20]
	add	ip, lr, ip
	beq	.L134
	ldr	lr, [r4, #16]
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	r0, [sp, #16]
	strne	r0, [r4, #12]
	b	.L134
.L174:
	.align	2
.L173:
	.word	lettuce
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
	ldr	r2, .L191
	ldr	r3, .L191+4
	ldr	r4, .L191+8
	ldr	r0, .L191+12
	ldr	r1, [r2]
	ldr	lr, [r3]
	ldr	ip, [r4, #4]
	ldr	r2, .L191+16
	ldr	r3, .L191+20
	ldr	r5, .L191+24
	ldrh	r6, [r0]
	add	lr, lr, r1, lsl #8
	add	r2, r2, ip, lsl #3
	add	r0, r3, #360
.L181:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L176
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L176
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
	bne	.L178
	cmp	r1, #0
	and	r1, r1, #1
	rsblt	r1, r1, #0
	add	r1, r1, #137
	lsl	r1, r1, #1
	strh	r1, [r2, #4]	@ movhi
.L178:
	add	r3, r3, #72
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L181
.L190:
	add	ip, ip, #5
	str	ip, [r4, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L176:
	ldrh	r1, [r2]
	add	r3, r3, #72
	orr	r1, r1, #512
	cmp	r3, r0
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L181
	b	.L190
.L192:
	.align	2
.L191:
	.word	bgIndex
	.word	hOff
	.word	.LANCHOR0
	.word	vOff
	.word	shadowOAM
	.word	lettuce
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
	ldr	r2, .L203
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L196
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L196
	cmp	r3, #18
	bne	.L195
.L196:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L195:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L204:
	.align	2
.L203:
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
	ldr	r7, .L343
	ldr	r8, .L343+4
	ldr	r4, .L343+8
	ldr	ip, [r8]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #8]
	sub	sp, sp, #36
	ldr	lr, [r4]
	add	fp, r2, ip, lsl #8
	str	r3, [sp, #28]
	add	r3, r0, r3
	add	r1, lr, fp
	add	r3, r3, #1
	ldrb	r5, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r5, #0
	lsl	r5, ip, #8
	ldr	ip, [r7, #24]
	str	r5, [sp, #24]
	str	ip, [sp, #20]
	bne	.L206
	mov	r6, ip
	add	ip, lr, r2
	add	ip, ip, r6
	add	ip, ip, r5
	ldrb	r3, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L206
	ldr	ip, .L343+12
	ldrh	ip, [ip]
	tst	ip, #64
	str	r3, [r4, #4]
	ldr	r5, .L343+16
	bne	.L336
.L208:
	ldr	r9, [r5, #8]
	cmp	r9, #0
	ldr	r10, [r4, #4]
	bge	.L217
.L216:
	mov	r3, #0
	ldr	r1, [sp, #20]
	ldr	ip, [sp, #24]
	add	r1, r1, r2
	add	r1, r1, r0, lsl #11
	add	r1, r1, ip
	add	ip, fp, r0, lsl #11
	add	r1, lr, r1
	add	ip, lr, ip
.L219:
	ldrb	r6, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L218
	ldrb	r6, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L218
	sub	r3, r3, #1
	cmp	r3, r9
	bgt	.L219
.L217:
	ldr	r3, .L343+20
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L220
	ldrh	r0, [r3, #48]
	ands	r0, r0, #16
	bne	.L220
	ldr	r3, [r5, #8]
	cmp	r3, #0
	ble	.L221
	ldr	r9, [r7, #8]
	add	r1, fp, r9, lsl #11
	add	ip, lr, r1
.L223:
	ldrb	r1, [ip]	@ zero_extendqisi2
	cmp	r1, #0
	sub	r0, r0, #1
	bne	.L222
	ldr	r1, [sp, #20]
	ldrb	r1, [ip, r1]	@ zero_extendqisi2
	cmp	r1, #0
	sub	ip, ip, #2032
	bne	.L222
	cmn	r0, #2
	sub	ip, ip, #15
	mvn	r0, #0
	bne	.L223
	cmp	r10, #0
	beq	.L276
	b	.L273
.L206:
	mov	ip, #0
	mov	r6, #1
	ldr	r5, .L343+16
	str	ip, [r5, #24]
	str	ip, [r5, #12]
	str	ip, [r5, #28]
	ldr	ip, .L343+12
	ldrh	ip, [ip]
	tst	ip, #64
	mov	r3, r6
	str	r6, [r4, #4]
	beq	.L208
.L336:
	ldr	ip, .L343+24
	ldrh	ip, [ip]
	tst	ip, #64
	bne	.L208
	ldr	ip, [r5, #12]
	cmp	ip, #0
	beq	.L337
	cmp	r3, #0
	beq	.L208
.L271:
	ldr	r10, [r5, #16]
	cmp	r10, #0
	bne	.L208
	sub	ip, r0, #1
	ldrb	r3, [r1, ip, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L208
	ldr	r1, [sp, #20]
	add	r3, lr, r2
	add	r3, r3, r1
	ldr	r1, [sp, #24]
	add	r3, r3, r1
	ldrb	r3, [r3, ip, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L208
	mvn	r9, #4
	mov	r3, #1
	str	r10, [r4, #4]
	str	r9, [r5, #8]
	str	r3, [r5, #32]
	b	.L216
.L220:
	cmp	r10, #0
	bne	.L333
	ldr	r3, [r5, #8]
	cmp	r3, #0
	ldrgt	r9, [r7, #8]
	ble	.L335
.L276:
	mov	r1, #0
	ldr	r0, [sp, #20]
	add	r2, r0, r2
	ldr	r0, [sp, #24]
	add	r2, r2, r0
	ldr	r0, [sp, #28]
	add	r0, r0, r9
	add	r2, r2, r0, lsl #11
	add	fp, fp, r0, lsl #11
	add	r2, lr, r2
	add	lr, lr, fp
.L228:
	ldrb	r0, [lr, r1, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L227
	ldrb	r0, [r2, r1, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L227
	add	r1, r1, #1
	cmp	r1, r3
	blt	.L228
.L335:
	ldr	r6, .L343+28
	b	.L229
.L218:
	mov	ip, #1
	mov	r1, #0
	ldr	r6, .L343+28
	add	r3, r3, ip
	add	r0, r0, r3
	str	r0, [r7, #8]
	ldr	r0, [r6]
	add	r3, r0, r3
	str	r3, [r6]
	str	r1, [r5, #8]
	str	r1, [r5, #32]
	str	r1, [r5, #36]
	str	ip, [r5, #24]
	b	.L217
.L222:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	str	r2, [r5, #24]
.L221:
	cmp	r10, #0
	beq	.L335
.L333:
	ldr	r9, [r7, #8]
.L273:
	mov	r3, #0
	ldr	r2, [r5, #16]
	cmp	r2, r3
	str	r3, [r5, #8]
	str	r3, [r5, #36]
	str	r3, [r5, #32]
	beq	.L248
	ldr	r1, [r5, #40]
	add	r1, r1, #1
	cmp	r1, #15
	movle	r2, #0
	movgt	r2, #1
	cmp	r10, #0
	cmpne	r1, #15
	str	r1, [r5, #40]
	ble	.L249
	mov	r1, #2
	mov	r2, #3
	str	r3, [r5, #16]
	str	r3, [r5, #40]
	ldr	r3, .L343+12
	ldrh	r3, [r3]
	tst	r3, #256
	str	r1, [r7, #68]
	str	r2, [r7, #20]
	bne	.L338
.L250:
	tst	r3, #512
	beq	.L252
	ldr	r3, .L343+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L253
.L252:
	ldr	r1, [r7, #68]
	ldr	r10, [r7, #12]
.L254:
	ldr	r3, .L343+32
	ldr	r0, [r5]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L257
.L258:
	ldr	r3, [r7, #56]
	ldr	r6, .L343+36
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r6, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r2, r3, r10
	str	r9, [r6]
	str	r3, [r6, #4]
	bl	animateSlash
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L264
	mov	fp, #1
	ldr	r4, .L343+40
	ldr	r10, .L343+44
	add	r9, r4, #360
.L268:
	ldr	r0, [r6, #4]
	ldr	ip, [r4, #20]
	ldr	r1, [r8]
	ldr	r3, [r6, #24]
	ldr	r2, [r6, #16]
	ldr	lr, [r4, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r4, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r4, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r6, #20]
	ldr	r1, [r6]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L266
	ldr	r2, [r4, #44]
	cmp	r2, #0
	bne	.L266
	ldr	r3, [r4, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r4, #44]
	str	r3, [r4, #48]
	strlt	r2, [r4]
.L266:
	add	r4, r4, #72
	cmp	r9, r4
	bne	.L268
	ldr	r3, [r7, #64]
	sub	r3, r3, #1
	str	r3, [r7, #64]
.L269:
	ldr	r3, .L343+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L270
	ldr	r3, .L343+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L270
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L270
	mov	r1, #1
	mov	r2, #20
	str	r3, [r7, #44]
	str	r3, [r6, #40]
	str	r3, [r6, #32]
	str	r3, [r6, #28]
	str	r1, [r7, #60]
	str	r2, [r7, #64]
.L270:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L331:
	cmp	r2, #79
	cmpgt	r0, #0
	ble	.L245
	ldr	r10, [r5, #16]
	add	r0, r0, r3
	cmp	r10, #0
	str	r0, [r6]
	beq	.L248
	ldr	r2, [r5, #40]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r5, #40]
	mov	r10, r1
	movle	r2, #0
	movgt	r2, #1
.L249:
	cmp	r2, #0
	movne	r3, #0
	movne	r2, #2
	strne	r3, [r5, #16]
	strne	r3, [r5, #40]
	strne	r2, [r7, #68]
.L248:
	ldr	r3, .L343+12
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L250
.L338:
	ldr	r2, .L343+24
	ldrh	r2, [r2]
	tst	r2, #256
	bne	.L250
.L251:
	mov	r3, #1
	cmp	r10, #0
	str	r3, [r5, #16]
	ldr	r10, [r7, #12]
	bne	.L339
	ldr	r2, [r5, #28]
	cmp	r2, #0
	ldrne	r1, [r7, #68]
	bne	.L254
.L256:
	str	r3, [r5, #28]
	str	r3, [r7, #68]
.L257:
	ldr	r3, .L343+20
	ldrh	r3, [r3, #48]
	ldr	r1, [r8]
	tst	r3, #32
	lsl	r3, r1, #8
	bne	.L259
	ldr	lr, [r7, #20]
	ldr	r2, [r4]
	sub	ip, r10, lr
	add	r0, ip, r3
	add	r6, r2, r9, lsl #11
	ldrb	r6, [r6, r0]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L259
	ldr	r6, [r7, #28]
	add	r6, r9, r6
	sub	r6, r6, #1
	add	r2, r2, r6, lsl #11
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r10, #0
	cmpge	r2, #0
	bne	.L259
	ldr	r2, .L343+48
	ldr	r0, [r2]
	cmp	r0, #0
	str	ip, [r7, #12]
	blt	.L260
	sub	r6, ip, r0
	cmp	r6, #119
	suble	r0, r0, lr
	strle	r0, [r2]
.L260:
	cmp	r0, #0
	movgt	r0, #0
	movle	r0, #1
	cmp	r1, #0
	moveq	r0, #0
	cmp	r0, #0
	moveq	r10, ip
	bne	.L340
.L259:
	ldr	r2, .L343+20
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L261
	add	r0, r7, #20
	ldm	r0, {r0, r2}
	ldr	ip, [r4]
	add	r2, r10, r2
	add	r2, r2, r0
	add	r2, r2, r3
	add	lr, ip, r9, lsl #11
	ldrb	lr, [lr, r2]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L261
	ldr	lr, [r7, #28]
	add	lr, r9, lr
	sub	lr, lr, #1
	add	ip, ip, lr, lsl #11
	ldrb	r2, [ip, r2]	@ zero_extendqisi2
	cmp	r10, #2288
	cmple	r2, #0
	bne	.L261
	ldr	r2, .L343+48
	ldr	ip, [r2]
	add	r10, r10, r0
	cmp	ip, #512
	str	r10, [r7, #12]
	bgt	.L262
	sub	lr, r10, ip
	cmp	lr, #120
	addgt	ip, ip, r0
	strgt	ip, [r2]
	cmp	ip, #256
	bgt	.L262
.L261:
	ldr	r2, .L343+52
	add	r3, r10, r3
	str	r3, [r2]
	b	.L258
.L227:
	mov	r2, #1
	ldr	r6, .L343+28
	ldr	r3, [r6]
	sub	r1, r1, #1
	add	r9, r1, r9
	add	r1, r3, r1
	str	r9, [r7, #8]
	str	r1, [r6]
	str	r2, [r4, #4]
.L229:
	ldr	r3, .L343+20
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r5, #36]
	bne	.L232
	ldr	r2, [r5, #32]
	cmp	r2, #0
	beq	.L233
	ldr	r2, [r5, #24]
	cmp	r2, #0
	bne	.L234
	ldr	r2, [r5, #12]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L236
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L275
.L239:
	mov	r3, #1
	str	r3, [r5, #24]
	sub	r0, r0, #3
.L236:
	ldr	r3, .L343+56
	mov	lr, pc
	bx	r3
	ldr	r9, .L343+60
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L343+64
	mov	lr, pc
	bx	r9
	ldr	r3, .L343+68
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	tst	r3, #3
	ldreq	r3, [r5, #36]
	ldr	r1, [r4, #4]
	addeq	r3, r3, #1
	streq	r3, [r5, #36]
	cmp	r1, #0
	str	r0, [r5, #8]
	ldr	r9, [r7, #8]
	ldr	r3, [r6]
	bne	.L341
	add	r9, r9, r0
	cmp	r3, #255
	str	r9, [r7, #8]
	sub	r2, r9, r3
	ble	.L331
.L244:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	addne	r0, r0, r3
	strne	r0, [r6]
.L247:
	ldr	r10, [r5, #16]
	cmp	r10, #0
	beq	.L248
	ldr	r2, [r5, #40]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r5, #40]
	mov	r10, #0
	movle	r2, #0
	movgt	r2, #1
	b	.L249
.L264:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r7, #60]
	str	r3, [r6, #40]
	b	.L269
.L232:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L237
.L274:
	ldr	r3, [r5, #12]
	cmp	r3, #0
	bne	.L238
.L237:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L239
	b	.L236
.L253:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	bne	.L252
	b	.L251
.L339:
	mov	r1, #2
	mov	r3, #3
	str	r1, [r7, #68]
	str	r3, [r7, #20]
	b	.L254
.L233:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L274
	b	.L236
.L337:
	ldr	r6, [r5, #32]
	cmp	r6, #0
	beq	.L342
	mov	r6, #1
	mvn	r9, #4
	cmp	r3, #0
	str	ip, [r5, #36]
	str	ip, [r5, #24]
	str	r6, [r5, #12]
	str	r9, [r5, #8]
	bne	.L271
	ldr	r10, [r4, #4]
	b	.L216
.L245:
	cmp	r3, #0
	ble	.L247
	b	.L244
.L238:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L237
.L275:
	sub	r0, r0, #4
	b	.L236
.L342:
	cmp	r3, #0
	bne	.L271
	mov	r1, #1
	mvn	r9, #4
	str	r3, [r5, #36]
	str	r3, [r5, #24]
	str	r1, [r5, #12]
	str	r1, [r5, #32]
	str	r9, [r5, #8]
	ldr	r10, [r4, #4]
	b	.L216
.L234:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L274
	b	.L239
.L262:
	mov	ip, #120
	mov	r4, #67108864
	mov	lr, #0
	add	r0, r1, #25
	lsl	r0, r0, #24
	orr	r0, r0, #1073741824
	add	r3, r1, #1
	lsr	r0, r0, #16
	str	r3, [r8]
	str	ip, [r7, #12]
	mov	r10, ip
	strh	r0, [r4, #10]	@ movhi
	lsl	r3, r3, #8
	str	lr, [r2]
	b	.L261
.L340:
	mov	lr, #67108864
	mov	ip, #256
	mov	r10, #376
	add	r0, r1, #23
	lsl	r0, r0, #24
	orr	r0, r0, #1073741824
	lsr	r0, r0, #16
	sub	r1, r1, #1
	str	r1, [r8]
	sub	r3, r3, #256
	strh	r0, [lr, #10]	@ movhi
	str	r10, [r7, #12]
	str	ip, [r2]
	b	.L259
.L341:
	mov	r10, r1
	b	.L273
.L344:
	.align	2
.L343:
	.word	player
	.word	bgIndex
	.word	.LANCHOR1
	.word	oldButtons
	.word	.LANCHOR0
	.word	67109120
	.word	buttons
	.word	vOff
	.word	__aeabi_idivmod
	.word	slash
	.word	lettuce
	.word	collision
	.word	hOff
	.word	pMapPos
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
	ldr	r3, .L359
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L346
	ldr	r2, .L359+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L346
	mov	r2, #1
	ldr	r3, .L359+8
	str	r2, [r3, #44]
.L348:
	bl	updatePlayer
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L359+12
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L349
	ldr	r3, [r3, #8]
	cmp	r3, #240
	ble	.L345
.L349:
	mov	r2, #1
	ldr	r3, .L359+8
	str	r2, [r3, #20]
.L345:
	pop	{r4, lr}
	bx	lr
.L346:
	cmp	r3, #0
	beq	.L348
	ldr	r3, .L359+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L359+8
	streq	r2, [r3, #44]
	b	.L348
.L360:
	.align	2
.L359:
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
	ldr	r1, .L371
	ldr	r3, [r1, #40]
	ldr	r0, .L371+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L362
	ldr	ip, .L371+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L362:
	ldr	ip, .L371+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L371+16
	ldr	ip, .L371+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L371+8
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
.L372:
	.align	2
.L371:
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
	ldr	r2, .L374
	ldr	r3, .L374+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L375:
	.align	2
.L374:
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
	ldr	r3, .L377
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L378:
	.align	2
.L377:
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
	ldr	r2, .L381
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L381+4
	ldr	r9, [r2]
	ldr	r3, .L381+8
	ldr	r2, .L381+12
	ldr	fp, [r1, #8]
	ldr	r10, [r3]
	smull	r1, r3, r2, r9
	smull	r1, r7, r2, fp
	ldr	r8, .L381+16
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
	ldr	r2, .L381+20
	asr	r5, r5, #31
	ldr	r3, .L381+24
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
	ldr	r1, .L381+20
	add	lr, lr, #111
	add	r2, r2, #9
	str	r2, [r1, #4]
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L382:
	.align	2
.L381:
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
	ldr	r3, .L391
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L391+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #4]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L390
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L391+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L384
	ldr	lr, .L391+12
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
	ldrne	r4, .L391+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L384:
	ldr	r2, [r6, #48]
	ldr	lr, .L391+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L391+24
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
	ldr	lr, .L391+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L391+32
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
.L390:
	ldr	ip, .L391+8
	b	.L384
.L392:
	.align	2
.L391:
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
	ldr	r3, .L395
	push	{r4, lr}
	str	r2, [r3, #4]
	bl	drawHUD
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawFont
	ldr	r3, .L395+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L395+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L395+12
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L395+16
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, .L395+20
	ldrh	r0, [r3]
	ldr	r3, .L395+24
	strh	r0, [r1, #22]	@ movhi
	ldr	r0, [r3]
	ldr	r3, .L395+28
	add	r2, r2, r0, lsl #8
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, lr}
	bx	lr
.L396:
	.align	2
.L395:
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
	ldr	r3, .L398
	str	r2, [r3, #20]
	bx	lr
.L399:
	.align	2
.L398:
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
	.global	dashed
	.global	dashingTimer
	.global	dashing
	.global	doubleJumping
	.global	jumping
	.global	grounded
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	pauseVar
	.global	score
	.global	collisionMap
	.global	shadowOAMIndex
	.comm	lettuce,360,4
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
	.type	dashing, %object
	.size	dashing, 4
dashing:
	.space	4
	.type	dead, %object
	.size	dead, 4
dead:
	.space	4
	.type	jumpThud, %object
	.size	jumpThud, 4
jumpThud:
	.space	4
	.type	dashed, %object
	.size	dashed, 4
dashed:
	.space	4
	.type	jumping, %object
	.size	jumping, 4
jumping:
	.space	4
	.type	framesInAir, %object
	.size	framesInAir, 4
framesInAir:
	.space	4
	.type	dashingTimer, %object
	.size	dashingTimer, 4
dashingTimer:
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
