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
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #1
	mov	lr, #12
	mov	ip, #11
	mov	r0, #15
	mov	r1, #4
	ldr	r3, .L8
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
.L9:
	.align	2
.L8:
	.word	slash
	.size	initSlash, .-initSlash
	.align	2
	.global	initGoblinLocations
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGoblinLocations, %function
initGoblinLocations:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #96
	mov	lr, #120
	mov	r1, #20
	mov	ip, #176
	mov	r0, #460
	ldr	r3, .L12
	stm	r3, {r4, lr}
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	ip, [r3, #12]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	goblinLocations
	.size	initGoblinLocations, .-initGoblinLocations
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r0, #1
	mov	r10, #13
	mov	r9, #16
	mov	r2, #0
	mov	r8, #4
	mov	r7, #128
	mov	r6, #96
	mov	r5, #2
	ldr	r3, .L18
	ldr	r1, .L18+4
	add	r4, r3, #360
.L15:
	ldr	lr, [r1]
	ldr	ip, [r1, #4]
	str	r0, [r3]
	str	r10, [r3, #16]
	str	r9, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r8, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #56]
	str	r7, [r3, #64]
	str	r6, [r3, #68]
	str	r0, [r3, #60]
	str	r5, [r3, #48]
	str	r2, [r3, #44]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	add	r3, r3, #72
	cmp	r3, r4
	add	r1, r1, #8
	bne	.L15
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	goblins
	.word	goblinLocations
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	mov	r9, #1
	mov	r8, #12
	mov	r7, #11
	mov	r6, #15
	mov	r5, #4
	bl	initPlayer
	mov	r2, #20
	mov	lr, #96
	mov	ip, #120
	mov	r0, #176
	mov	r1, #460
	ldr	r3, .L22
	str	r9, [r3, #36]
	str	r8, [r3, #16]
	str	r7, [r3, #20]
	str	r6, [r3, #12]
	str	r5, [r3, #32]
	str	r4, [r3, #8]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r4, [r3, #24]
	str	r4, [r3, #28]
	str	r4, [r3, #40]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	ldr	r3, .L22+4
	str	r4, [r3, #24]
	str	r4, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #16]
	bl	initEnemies
	ldr	r3, .L22+8
	ldr	lr, .L22+12
	ldr	ip, .L22+16
	ldr	r0, .L22+20
	ldr	r1, .L22+24
	ldr	r2, .L22+28
	str	r4, [lr]
	str	r4, [lr, #4]
	str	ip, [r3, #4]
	str	ip, [r3, #28]
	str	r0, [r3, #8]
	str	r0, [r3, #32]
	str	r1, [r3, #16]
	str	r1, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #44]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	slash
	.word	goblinLocations
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
	@ link register save eliminated.
	ldr	r3, .L25
	ldr	ip, .L25+4
	ldr	r0, .L25+8
	ldr	r1, .L25+12
	ldr	r2, .L25+16
	str	ip, [r3, #4]
	str	ip, [r3, #28]
	str	r0, [r3, #8]
	str	r0, [r3, #32]
	str	r1, [r3, #16]
	str	r1, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #44]
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L69
	push	{r4, r5, r6, lr}
	ldr	r4, .L69+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L28
	cmp	r2, #0
	beq	.L67
	ldrh	r3, [r3, #48]
.L31:
	ldr	r3, .L69+8
	ldr	r1, [r3, #8]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L34
	movne	r1, #2
	strne	r1, [r4, #36]
.L34:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	movne	r3, #6
	strne	r3, [r4, #36]
	cmp	r2, #0
	movne	r3, #4
	strne	r3, [r4, #36]
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L37
	mov	r1, #5
	ldr	r5, [r4, #32]
	ldr	r3, .L69+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	bne	.L39
.L40:
	ldr	r3, .L69+12
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	beq	.L47
.L48:
	ldr	r0, [r4, #44]
	ldr	r3, .L69+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L41:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L31
.L39:
	ldr	r1, .L69+12
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L41
	ldr	r1, [r4, #36]
.L47:
	cmp	r1, #1
	beq	.L48
	cmp	r1, #6
	beq	.L48
	cmp	r1, #5
	beq	.L68
	cmp	r3, #0
	beq	.L48
	b	.L41
.L28:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L31
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L31
.L37:
	ldr	r5, [r4, #32]
	ldr	r3, .L69+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L39
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L48
	b	.L40
.L68:
	ldr	r0, [r4, #44]
	ldr	r3, .L69+16
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
	b	.L41
.L70:
	.align	2
.L69:
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
	ldr	r1, .L90
	ldr	r3, [r1, #52]
	ldr	r0, .L90+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L72
	ldr	ip, .L90+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L72:
	ldr	ip, .L90+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [ip]
	ldr	ip, .L90+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L90+8
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
	b	.L75
.L77:
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L76
.L76:
	ldr	r1, .L90+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L73:
	add	r2, r2, #1
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L83:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L73
.L82:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L73
.L81:
	ldr	r1, .L90+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L73
.L80:
	ldr	r1, .L90+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L73
.L79:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L73
.L78:
	ldr	r1, .L90+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L73
.L75:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L73
.L91:
	.align	2
.L90:
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
	ldr	r4, .L97
	ldr	r8, .L97+4
	ldr	r6, .L97+8
	add	r7, r4, #360
.L94:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L93
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L93:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L94
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	goblins
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L115
	ldr	r1, .L115+4
	ldr	r0, .L115+8
	ldr	ip, [lr, #4]
	ldr	r2, .L115+12
	ldr	r3, .L115+16
	ldrh	r5, [r1]
	ldr	r4, .L115+20
	ldrh	r6, [r0]
	add	r2, r2, ip, lsl #3
	add	r0, r3, #360
.L105:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L100
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L100
	ldr	r1, [r3, #12]
	ldr	r8, [r3, #56]
	sub	r1, r1, r5
	and	r1, r1, r4
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
	bne	.L102
	cmp	r1, #0
	and	r1, r1, #1
	rsblt	r1, r1, #0
	add	r1, r1, #137
	lsl	r1, r1, #1
	strh	r1, [r2, #4]	@ movhi
.L102:
	add	r3, r3, #72
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L105
.L114:
	add	ip, ip, #5
	str	ip, [lr, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L100:
	ldrh	r1, [r2]
	add	r3, r3, #72
	orr	r1, r1, #512
	cmp	r3, r0
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L105
	b	.L114
.L116:
	.align	2
.L115:
	.word	.LANCHOR0
	.word	hOff
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
	ldr	r2, .L127
	ldr	r3, [r2, #24]
	cmp	r3, #6
	beq	.L120
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L120
	cmp	r3, #18
	bne	.L119
.L120:
	ldr	r1, [r2, #28]
	add	r1, r1, #1
	str	r1, [r2, #28]
.L119:
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L128:
	.align	2
.L127:
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
	ldr	r1, .L139
	ldr	r3, [r1, #36]
	ldr	r0, .L139+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L130
	ldr	ip, .L139+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L130:
	ldr	ip, .L139+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L139+16
	ldr	ip, .L139+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L139+8
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
.L140:
	.align	2
.L139:
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
	ldr	r3, .L144
	ldr	r2, [r3, #16]
	ldr	r3, .L144+4
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
.L145:
	.align	2
.L144:
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
	bne	.L146
	mov	r1, r4
	add	r0, r6, r5
	bl	checkCollision
	subs	r0, r0, #0
	movne	r0, #1
.L146:
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
	ldr	r5, .L246
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
	ldrne	r6, .L246+4
	strne	r3, [r6, #20]
	strne	r3, [r6, #12]
	ldr	r3, .L246+8
	ldrh	r3, [r3]
	ldr	r2, .L246+12
	ldreq	r6, .L246+4
	tst	r3, #64
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	beq	.L152
	ldr	r3, .L246+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L238
.L152:
	ldr	r8, [r6, #8]
	cmp	r8, #0
	bge	.L161
.L160:
	ldr	r3, [sp, #16]
	mov	fp, #0
	add	r9, r4, r3
	b	.L164
.L239:
	mov	r1, r10
	mov	r0, r9
	bl	checkCollision
	cmp	r0, #0
	bne	.L162
	sub	fp, fp, #1
	cmp	fp, r8
	ble	.L161
.L164:
	add	r10, fp, r7
	mov	r1, r10
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L239
.L162:
	mov	r0, #1
	mov	r1, #0
	ldr	r8, .L246+20
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
.L161:
	ldr	r3, .L246+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L165
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L165
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ble	.L166
	mov	r9, r4
	ldr	r7, [r5, #8]
	add	r3, r4, #2
	str	r3, [sp, #28]
	add	r10, r7, r4
.L169:
	sub	fp, r10, r9
	mov	r0, r9
	mov	r1, fp
	bl	checkCollision
	mov	r3, r0
	ldr	r2, [sp, #16]
	cmp	r3, #0
	add	r0, r2, r9
	add	r9, r9, #1
	bne	.L167
	mov	r1, fp
	bl	checkCollision
	cmp	r0, #0
	bne	.L167
	ldr	r3, [sp, #28]
	cmp	r3, r9
	bne	.L169
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L196
	b	.L198
.L165:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L234
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ldrgt	r7, [r5, #8]
	ble	.L236
.L198:
	ldr	r3, [sp, #24]
	add	r9, r3, r7
	ldr	r3, [sp, #16]
	mov	fp, #0
	str	r7, [sp, #16]
	add	r10, r4, r3
	b	.L176
.L240:
	mov	r1, r7
	mov	r0, r10
	bl	checkCollision
	cmp	r0, #0
	bne	.L174
	add	fp, fp, #1
	cmp	fp, r8
	bge	.L236
.L176:
	add	r7, fp, r9
	mov	r1, r7
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L240
.L174:
	mov	r2, #1
	ldr	r8, .L246+20
	ldr	r7, [sp, #16]
	ldr	r3, [r8]
	sub	fp, fp, #1
	add	r7, fp, r7
	add	fp, r3, fp
	ldr	r3, .L246+12
	str	r7, [r5, #8]
	str	fp, [r8]
	str	r2, [r3, #4]
.L173:
	ldr	r3, .L246+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r6, #28]
	ldr	r3, [r6, #24]
	bne	.L178
	cmp	r3, #0
	bne	.L241
.L179:
	ldr	r3, .L246+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L246+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L246+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L246+40
	mov	lr, pc
	bx	r3
	mov	r3, r0
	ldr	r0, [r6]
	tst	r0, #3
	ldreq	r2, [r6, #28]
	addeq	r2, r2, #1
	streq	r2, [r6, #28]
	ldr	r2, .L246+12
	ldr	r2, [r2, #4]
	cmp	r2, #0
	str	r3, [r6, #8]
	ldr	r7, [r5, #8]
	ldr	r2, [r8]
	bne	.L196
	add	r7, r7, r3
	cmp	r2, #255
	str	r7, [r5, #8]
	sub	r1, r7, r2
	ble	.L233
.L184:
	lsr	ip, r3, #31
	cmp	r1, #80
	movgt	r1, #0
	andle	r1, ip, #1
	cmp	r1, #0
	beq	.L183
.L237:
	add	r3, r3, r2
	str	r3, [r8]
	b	.L183
.L167:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #8]
	str	r3, [r6, #24]
	str	r2, [r6, #20]
.L166:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L236
.L234:
	ldr	r7, [r5, #8]
.L196:
	mov	r3, #0
	ldr	r0, [r6]
	str	r3, [r6, #8]
	str	r3, [r6, #28]
	str	r3, [r6, #24]
.L183:
	ldr	r3, .L246+44
	ldr	r1, [r5, #68]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r4, [r5, #12]
	bne	.L186
	ldr	r3, .L246+24
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L187
	ldr	r9, [r5, #20]
	sub	r8, r4, r9
	mov	r0, r8
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L242
.L187:
	ldr	r3, .L246+24
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L186
	ldr	r8, [r5, #24]
	ldr	r9, [r5, #20]
	add	r8, r4, r8
	add	r8, r8, r9
	mov	r0, r8
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L243
.L186:
	ldr	r3, [r5, #56]
	ldr	r8, .L246+48
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r8, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r2, r3, r4
	str	r7, [r8]
	str	r3, [r8, #4]
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	ble	.L188
	mov	r10, #1
	ldr	r4, .L246+52
	ldr	r9, .L246+56
	add	r7, r4, #360
.L192:
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L190
	ldr	r2, [r4, #44]
	cmp	r2, #0
	bne	.L190
	ldr	r3, [r4, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r10, [r4, #44]
	str	r3, [r4, #48]
	strlt	r2, [r4]
.L190:
	add	r4, r4, #72
	cmp	r7, r4
	bne	.L192
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
.L193:
	ldr	r3, .L246+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L194
	ldr	r3, .L246+16
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L194
	ldr	r3, [r5, #60]
	cmp	r3, #0
	bne	.L194
	mov	r1, #1
	mov	r2, #20
	str	r3, [r5, #44]
	str	r3, [r8, #36]
	str	r3, [r8, #28]
	str	r3, [r8, #24]
	str	r1, [r5, #60]
	str	r2, [r5, #64]
.L194:
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L238:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L244
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L152
.L195:
	sub	r8, r7, #1
	mov	r1, r8
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	bne	.L152
	ldr	r3, [sp, #16]
	mov	r1, r8
	add	r0, r4, r3
	bl	checkCollision
	cmp	r0, #0
	bne	.L152
	mvn	r8, #4
	mov	r3, #1
	ldr	r2, .L246+12
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	str	r8, [r6, #8]
	str	r3, [r6, #24]
	b	.L160
.L188:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r8, #36]
	b	.L193
.L233:
	cmp	r1, #79
	cmpgt	r3, #0
	bgt	.L237
	cmp	r2, #0
	ble	.L183
	b	.L184
.L178:
	cmp	r3, #0
	beq	.L179
.L180:
	mov	r3, #1
	sub	r0, r0, #3
	str	r3, [r6, #20]
	b	.L179
.L242:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r8
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r4, #0
	cmpge	r0, #0
	bne	.L187
	ldr	r1, .L246+60
	ldr	r0, .L246+64
	ldr	r3, [r1]
	ldr	r2, [r0]
	sub	r3, r3, r9
	cmp	r2, #0
	str	r8, [r5, #12]
	str	r3, [r1]
	blt	.L200
	sub	r3, r8, r2
	cmp	r3, #119
	bgt	.L200
	sub	r2, r2, r9
	mov	r4, r8
	str	r2, [r0]
	b	.L187
.L243:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r8
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r0, #0
	bne	.L186
	ldr	r2, .L246+60
	ldr	r0, .L246+64
	ldr	r3, [r2]
	ldr	r1, [r0]
	add	r4, r4, r9
	add	r3, r3, r9
	cmp	r1, #512
	str	r4, [r5, #12]
	str	r3, [r2]
	bgt	.L186
	sub	r3, r4, r1
	cmp	r3, #120
	addgt	r9, r9, r1
	strgt	r9, [r0]
	b	.L186
.L241:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L179
	b	.L180
.L244:
	ldr	r2, [r6, #24]
	cmp	r2, #0
	beq	.L245
	mov	r2, #1
	mvn	r8, #1
	ldr	r1, [sp, #20]
	cmp	r1, #0
	str	r3, [r6, #28]
	str	r3, [r6, #20]
	str	r2, [r6, #12]
	str	r8, [r6, #8]
	bne	.L195
	b	.L160
.L236:
	ldr	r8, .L246+20
	b	.L173
.L245:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L195
	mov	r3, #1
	mvn	r8, #1
	ldr	r2, [sp, #20]
	str	r3, [r6, #12]
	str	r2, [r6, #28]
	str	r2, [r6, #20]
	str	r3, [r6, #24]
	str	r8, [r6, #8]
	b	.L160
.L200:
	mov	r4, r8
	b	.L187
.L247:
	.align	2
.L246:
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
	.word	goblins
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
	beq	.L248
	mov	r1, r4
	add	r0, r6, r5
	bl	checkCollision
	subs	r0, r0, #0
	movne	r0, #1
.L248:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L296
	ldr	r7, .L296+4
	ldr	r10, .L296+8
	ldr	fp, .L296+12
	ldr	r5, .L296+16
	sub	sp, sp, #36
	add	r9, r4, #360
.L264:
	add	r0, r4, #12
	ldr	r3, [r7]
	ldm	r0, {r0, r2}
	sub	ip, r3, #119
	add	r1, r0, r2
	cmp	ip, r1
	bgt	.L293
	add	r1, r3, #119
	cmp	r0, r1
	bgt	.L293
	mov	r1, #1
	ldr	ip, [r4]
	cmp	ip, #0
	str	r1, [r4, #4]
	beq	.L259
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L260
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L260:
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
	bx	r10
	cmp	r0, #0
	beq	.L261
	ldr	r3, [r5, #76]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	streq	r3, [r5, #72]
	streq	r2, [r5, #76]
.L261:
	ldr	r8, [r4, #12]
	ldr	r3, [r7]
	sub	r3, r3, r8
	ldr	r2, [r4, #64]
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	cmp	r1, r2
	ldr	r6, [r4, #8]
	bge	.L292
	ldr	r2, [r5, #8]
	sub	r2, r2, r6
	cmp	r2, #0
	ldr	r1, [r4, #68]
	rsblt	r2, r2, #0
	cmp	r2, r1
	bge	.L292
	ldr	r2, [fp]
	tst	r2, #1
	beq	.L286
.L292:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
.L262:
	mov	r1, r6
	mov	r0, r8
	bl	groundCheck
	cmp	r0, #0
	addeq	r6, r6, #1
	streq	r6, [r4, #8]
.L259:
	add	r4, r4, #72
	cmp	r4, r9
	bne	.L264
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L293:
	mov	r3, #0
	str	r3, [r4, #4]
	b	.L259
.L286:
	cmp	r3, #0
	blt	.L294
	beq	.L292
	ldr	r3, [r4, #60]
	ldr	r2, [r4, #16]
	add	r3, r8, r3
	str	r3, [sp, #24]
	add	r3, r3, r2
	mov	r0, r3
	mov	r1, r6
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	bl	checkCollision
	cmp	r0, #0
	ldr	r2, [sp, #16]
	bne	.L295
	ldr	r3, [r4, #20]
	ldr	r0, [sp, #20]
	add	r1, r6, r3
	str	r2, [sp, #28]
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #28]
	bne	.L262
	mov	r1, r6
	ldr	r0, [sp, #24]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bl	goblinGroundCheck
	cmp	r0, #0
	ldrne	r1, [sp, #24]
	add	r2, sp, #16
	movne	r8, r1
	ldm	r2, {r2, r3}
	strne	r1, [r4, #12]
	b	.L262
.L294:
	ldr	r3, [r4, #60]
	sub	r3, r8, r3
	mov	r0, r3
	mov	r1, r6
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	bne	.L292
	ldr	r3, [r4, #20]
	ldr	r0, [sp, #16]
	add	r1, r6, r3
	str	r3, [sp, #20]
	bl	checkCollision
	cmp	r0, #0
	ldr	r2, [r4, #16]
	ldr	r3, [sp, #20]
	bne	.L262
	mov	r1, r6
	ldr	r0, [sp, #16]
	str	r3, [sp, #24]
	str	r2, [sp, #20]
	bl	goblinGroundCheck
	add	r2, sp, #20
	cmp	r0, #0
	ldm	r2, {r2, r3}
	ldrne	r1, [sp, #16]
	movne	r8, r1
	strne	r1, [r4, #12]
	b	.L262
.L295:
	ldr	r3, [r4, #20]
	b	.L262
.L297:
	.align	2
.L296:
	.word	goblins
	.word	pWorldPos
	.word	collision
	.word	.LANCHOR0
	.word	player
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
	ldr	r3, .L327
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L299
	ldr	r2, .L327+4
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r3, #1
	ldreq	r4, .L327+8
	streq	r3, [r4, #32]
	beq	.L301
.L299:
	cmp	r3, #0
	bne	.L306
.L325:
	ldr	r4, .L327+8
.L301:
	bl	updatePlayer
	bl	updateEnemies
	ldr	r3, .L327+12
	ldr	r3, [r3, #12]
	cmp	r3, #256
	bgt	.L302
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L298
	ldr	r2, .L327+16
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L304
	ldr	r2, [r4, #36]
	ldr	r1, .L327+20
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #2
	ldr	r1, [r2, #4]
	ldr	r2, .L327+24
	str	r1, [r2]
.L304:
	cmp	r3, #256
	beq	.L307
.L298:
	pop	{r4, lr}
	bx	lr
.L302:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L298
.L307:
	ldr	r3, .L327+28
	ldr	r3, [r3]
	cmp	r3, #20
	ble	.L298
	ldr	r3, .L327+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L298
	ldr	r3, [r4, #36]
	ldr	r2, .L327+20
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r2, [r3, #4]
	ldr	r3, .L327+24
	str	r2, [r3]
	b	.L298
.L306:
	ldr	r3, .L327+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L325
	mov	r3, #1
	ldr	r4, .L327+8
	str	r3, [r4, #32]
	b	.L301
.L328:
	.align	2
.L327:
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
	ldr	r1, .L331
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L331+4
	ldr	r9, [r1]
	ldr	r10, .L331+8
	ldr	r6, [r3]
	smull	r3, r7, r10, r9
	ldr	r2, .L331+12
	ldr	r4, .L331+16
	ldr	fp, [r2, #12]
	asr	r0, r9, #31
	smull	r3, r1, r10, fp
	smull	r3, r2, r10, r6
	smull	r3, r4, r6, r4
	rsb	r3, r0, r7, asr #5
	add	r8, r3, r3, lsl #2
	ldr	r7, .L331+20
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
	ldr	r2, .L331+24
	asr	r8, r8, #31
	rsb	r8, r8, r9, asr #2
	ldr	r3, .L331+28
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
	ldr	r3, .L331+24
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
.L332:
	.align	2
.L331:
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
	ldr	r2, [r6, #40]
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
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L370
	str	r3, [r4, #4]
	bl	drawHUD
	ldr	r2, [r4, #36]
	cmp	r2, #0
	beq	.L344
	ldr	r5, .L370+4
	ldr	r3, [r5]
	cmp	r3, #0
	blt	.L367
.L348:
	cmp	r3, #255
	ble	.L365
.L362:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	ldr	r6, .L370+8
	ldr	r7, .L370+12
	beq	.L351
.L350:
	ldr	r3, .L370+16
	ldrh	r3, [r3, #48]
	ands	r8, r3, #16
	beq	.L368
.L351:
	ldr	r3, .L370+16
	ldrh	r3, [r3, #48]
	ands	r8, r3, #16
	bne	.L357
	mov	lr, pc
	bx	r6
	mov	r1, #1
	mov	ip, #67108864
	ldr	r0, .L370+20
	ldr	r3, [r0, #8]
	add	r3, r3, r1
	str	r3, [r0, #8]
	lsl	r3, r3, #24
	ldr	r2, .L370+24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	strh	r3, [ip, #10]	@ movhi
	ldr	r3, [r2, #12]
	sub	r3, r3, #256
	str	r8, [r5]
	str	r3, [r2, #12]
	str	r1, [r4, #16]
	b	.L357
.L367:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L349
	ldr	r3, .L370+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L369
.L349:
	ldr	r3, .L370+16
	ldrh	r3, [r3, #48]
	ands	r7, r3, #32
	beq	.L358
.L365:
	ldr	r6, .L370+8
	ldr	r7, .L370+12
.L357:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawFont
	mov	lr, pc
	bx	r6
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L370+28
	mov	lr, pc
	bx	r7
	mov	r1, #67108864
	ldr	r3, [r5]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #20]	@ movhi
	ldr	r2, .L370+32
	ldr	r0, [r4, #16]
	ldrh	r2, [r2]
	cmp	r0, #0
	strh	r2, [r1, #22]	@ movhi
	beq	.L353
	ldr	r2, .L370+36
	add	r3, r3, #256
.L355:
	smull	r0, r2, r3, r2
	sub	r3, r2, r3, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L353:
	ldr	r2, [r4, #36]
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	cmp	r2, #1
	addeq	r3, r3, #512
	ldr	r2, .L370+36
	b	.L355
.L344:
	ldr	r3, [r4, #16]
	ldr	r5, .L370+4
	cmp	r3, #1
	ldr	r3, [r5]
	bne	.L348
	cmp	r3, #0
	blt	.L349
	cmp	r3, #255
	bgt	.L362
	b	.L365
.L358:
	ldr	r6, .L370+8
	mov	lr, pc
	bx	r6
	mov	ip, #67108864
	mov	r0, #256
	ldr	r1, .L370+20
	ldr	r3, [r1, #8]
	sub	r3, r3, #1
	str	r3, [r1, #8]
	lsl	r3, r3, #24
	ldr	r2, .L370+24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	str	r7, [r4, #16]
	strh	r3, [ip, #10]	@ movhi
	ldr	r3, [r2, #12]
	add	r3, r3, r0
	str	r3, [r2, #12]
	str	r0, [r5]
	ldr	r7, .L370+12
	b	.L351
.L368:
	mov	r1, #28
	ldr	r3, [r4, #36]
	ldr	r2, .L370+20
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
	ldr	r9, .L370+40
	add	r3, r3, r3, lsl #1
	add	r3, r9, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L370+44
	mov	lr, pc
	bx	r7
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r9, r3, lsl #2
	ldr	r1, [r3, #8]
	ldr	r2, .L370+48
	mov	r3, #2048
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r2, #120
	ldr	r3, .L370+24
	str	r8, [r5]
	str	r8, [r4, #16]
	str	r2, [r3, #12]
	b	.L357
.L369:
	mov	r1, #27
	ldr	r3, .L370+20
	sub	r2, r2, #1
	ldr	r6, .L370+8
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
	ldr	r8, .L370+40
	add	r3, r3, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L370+52
	ldr	r7, .L370+12
	mov	lr, pc
	bx	r7
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L370+44
	mov	lr, pc
	bx	r7
	mov	r0, #256
	mov	r1, #1
	mov	r2, #376
	ldr	r3, .L370+24
	str	r0, [r5]
	str	r1, [r4, #16]
	str	r2, [r3, #12]
	b	.L350
.L371:
	.align	2
.L370:
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
	.comm	goblinLocations,40,4
	.comm	goblins,360,4
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
