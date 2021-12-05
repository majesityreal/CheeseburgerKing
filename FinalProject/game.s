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
	mov	lr, #159
	mov	r1, #3
	mov	ip, #35
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
	ldr	r1, .L19
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0
	mov	r3, r1
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mov	r4, #128
	mov	lr, #96
	mov	r0, #1
	add	ip, r1, #504
.L11:
	str	r2, [r3]
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r5, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #56]
	str	r4, [r3, #64]
	str	lr, [r3, #68]
	str	r0, [r3, #60]
	str	r0, [r3, #48]
	str	r2, [r3, #44]
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L11
	ldr	r2, .L19+4
	mov	r0, #0
	mov	r3, r2
	mov	r8, #13
	mov	r7, #15
	mov	r6, #4
	mov	r5, #240
	mov	ip, #60
	mov	r4, #2
	add	lr, r2, #480
.L12:
	str	r0, [r3]
	str	r8, [r3, #16]
	str	r7, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	str	r6, [r3, #40]
	str	r0, [r3, #28]
	str	r0, [r3, #56]
	str	r5, [r3, #60]
	str	ip, [r3, #64]
	str	ip, [r3, #68]
	str	r4, [r3, #48]
	str	r0, [r3, #44]
	add	r3, r3, #80
	cmp	r3, lr
	bne	.L12
	mov	ip, #0
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mvn	r4, #0
	mov	r3, #1
	ldr	r0, .L19+8
	add	lr, r0, #528
.L13:
	str	ip, [r0]
	str	r7, [r0, #16]
	str	r6, [r0, #20]
	str	ip, [r0, #24]
	str	ip, [r0, #28]
	str	r5, [r0, #32]
	str	r4, [r0, #36]
	str	r3, [r0, #40]
	add	r0, r0, #44
	cmp	r0, lr
	bne	.L13
	ldr	r0, .L19+12
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.L10
	mov	lr, #160
	str	lr, [r1, #8]
	str	lr, [r1, #152]
	str	lr, [r1, #440]
	mov	lr, #920
	str	lr, [r1, #300]
	mov	lr, #96
	str	lr, [r1, #368]
	mov	lr, #1600
	str	lr, [r1, #444]
	mov	lr, #55
	str	lr, [r2, #8]
	mov	lr, #119
	mov	r4, #64
	mov	fp, #136
	mov	r10, #672
	mov	r9, #800
	mov	r8, #112
	mov	ip, #135
	mov	r7, #87
	mov	r6, #2016
	mov	r5, #1936
	str	lr, [r2, #88]
	ldr	lr, .L19+16
	str	lr, [r1, #228]
	ldr	lr, .L19+20
	str	r3, [r1]
	str	r3, [r1, #72]
	str	r3, [r1, #144]
	str	r3, [r1, #216]
	str	r3, [r1, #288]
	str	r3, [r1, #360]
	str	r3, [r1, #432]
	str	fp, [r1, #12]
	str	r4, [r1, #80]
	str	r4, [r1, #224]
	str	r10, [r1, #84]
	str	r9, [r1, #156]
	str	r8, [r1, #296]
	str	lr, [r1, #372]
	ldr	r1, .L19+24
	str	r1, [r2, #12]
	ldr	r1, .L19+28
	str	r1, [r2, #92]
	ldr	r1, .L19+32
	str	r1, [r2, #172]
	add	r1, r1, #272
	str	r3, [r2]
	str	r0, [r2, #56]
	str	r3, [r2, #80]
	str	r0, [r2, #136]
	str	r3, [r2, #160]
	str	r7, [r2, #168]
	str	r0, [r2, #216]
	str	r3, [r2, #240]
	str	r0, [r2, #296]
	str	r3, [r2, #320]
	str	r0, [r2, #376]
	str	r3, [r2, #400]
	str	r0, [r2, #456]
	str	ip, [r2, #248]
	str	ip, [r2, #328]
	str	ip, [r2, #408]
	str	r6, [r2, #332]
	str	r5, [r2, #412]
	str	r1, [r2, #252]
.L10:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	lettuce
	.word	big_lettuce
	.word	bl_bullets
	.word	currMap
	.word	769
	.word	1304
	.word	963
	.word	350
	.word	1417
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
	ldr	r3, .L23
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
	mov	r1, #60
	ldr	r2, .L23+4
	ldr	r3, .L23+8
	str	r4, [r2]
	ldr	ip, .L23+12
	ldr	r0, .L23+16
	ldr	r2, .L23+20
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	slash
	.word	currMap
	.word	.LANCHOR0
	.word	bgIndex
	.word	hOff
	.word	vOff
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
	mov	r3, #0
	ldr	r1, .L26
	ldr	r2, .L26+4
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L27:
	.align	2
.L26:
	.word	currMap
	.word	bgIndex
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
	ldr	r6, .L32
	ldr	ip, [r6]
	ldr	r5, .L32+4
	add	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #4
	add	ip, r5, ip, lsl #2
	add	r1, ip, #28
	ldm	r1, {r1, lr}
	ldr	r2, [ip, #24]
	ldr	r3, [ip, #20]
	sub	sp, sp, #20
	ldr	r4, .L32+8
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	lr, [sp, #12]
	str	r3, [sp]
	ldr	r0, .L32+12
	add	r2, r4, #24
	add	r7, ip, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r0]
	ldr	r9, .L32+16
	ldm	r7, {r7, r8}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L31
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L31:
	ldr	ip, [r6]
	add	ip, ip, #1
	add	r3, ip, ip, lsl #3
	rsb	r3, r3, r3, lsl #4
	add	r3, r5, r3, lsl #2
	ldr	r1, [r3, #8]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L32+20
	ldr	r9, .L32+24
	str	ip, [r6]
	mov	lr, pc
	bx	r9
	mov	r2, #0
	ldr	r3, [r6]
	add	r3, r3, r3, lsl #3
	rsb	r3, r3, r3, lsl #4
	add	r5, r5, r3, lsl #2
	ldr	ip, [r5, #4]
	ldr	r0, .L32+28
	ldr	r1, .L32+32
	ldr	r3, .L32+36
	str	r7, [r4, #12]
	str	r8, [r4, #8]
	str	ip, [r0]
	str	r2, [r1]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	initEnemies
.L33:
	.align	2
.L32:
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
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, .L55
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L55+4
	ldr	r5, .L55+8
	ldr	r8, .L55+12
	sub	sp, sp, #20
.L42:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L34
	ldr	ip, [r7]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, ip, #239
	add	r1, r3, r2
	cmp	r0, r1
	movgt	lr, #0
	bgt	.L36
	add	lr, ip, #239
	cmp	r3, lr
	movgt	lr, #0
	movle	lr, #1
.L36:
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	mla	r0, r1, r0, r3
	sub	r3, ip, #476
	add	r1, r2, r0
	sub	r3, r3, #3
	cmp	r3, r1
	str	lr, [r4, #4]
	str	r0, [r4, #12]
	bgt	.L39
	add	r3, ip, #476
	add	r3, r3, #3
	cmp	r0, r3
	bgt	.L39
	add	r1, r5, #24
	ldm	r1, {r1, lr}
	ldr	r3, [r5, #8]
	str	ip, [sp]
	str	lr, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L40
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r5, #76]
	cmp	r3, #0
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	moveq	r2, #1
	streq	r3, [r5, #72]
	mov	r3, #0
	streq	r2, [r5, #76]
	str	r3, [r4]
.L40:
	add	r6, r6, #1
	cmp	r6, #12
	add	r4, r4, #44
	bne	.L42
.L34:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L39:
	mov	r3, #0
	add	r2, r6, r6, lsl #2
	add	r6, r6, r2, lsl #1
	lsl	r6, r6, #2
	str	r3, [r9, r6]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	bl_bullets
	.word	pMapPos
	.word	player
	.word	collision
	.size	updateBullets, .-updateBullets
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
	ldr	r1, .L76
	ldr	r3, [r1, #52]
	ldr	r0, .L76+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L58
	ldr	ip, .L76+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L58:
	ldr	ip, .L76+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [ip]
	ldr	ip, .L76+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L76+8
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
	b	.L61
.L63:
	.word	.L69
	.word	.L68
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L64
	.word	.L62
.L62:
	ldr	r1, .L76+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L59:
	add	r2, r2, #1
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L59
.L68:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L59
.L67:
	ldr	r1, .L76+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L59
.L66:
	ldr	r1, .L76+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L59
.L65:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L59
.L64:
	ldr	r1, .L76+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L59
.L61:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L59
.L77:
	.align	2
.L76:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawPlayer, .-drawPlayer
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L109
	ldr	r8, .L109+4
	ldr	r7, .L109+8
	ldr	r1, .L109+12
	ldr	r4, [r6, #4]
	ldr	r9, .L109+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L109+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L84
.L106:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L79
	ldr	r0, [r3, #12]
	sub	r0, r0, r5
	ldr	r10, [r3, #56]
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #16384
	cmp	r10, #0
	strh	r0, [r2, #2]	@ movhi
	ldr	ip, [r3, #8]
	orrne	r0, r0, #4096
	strhne	r0, [r2, #2]	@ movhi
	ldr	r0, [r3, #44]
	sub	ip, ip, fp
	and	ip, ip, #255
	cmp	r0, #1
	strh	ip, [r2]	@ movhi
	ldr	r0, [r3, #36]
	beq	.L104
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L81:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L105
.L84:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L106
.L79:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L84
.L105:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L109+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L109+28
	ldr	r5, .L109+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L91
.L108:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L85
	ldr	r2, [r3, #12]
	sub	r2, r2, lr
	ldr	r10, [r3, #56]
	sub	r2, r2, #6
	and	r8, r5, #32768
	and	r2, r2, r7
	orr	r2, r8, r2
	cmp	r10, #0
	strh	r2, [r1, #58]	@ movhi
	ldr	r9, [r3, #8]
	orreq	r2, r2, #4096
	strheq	r2, [r1, #58]	@ movhi
	ldr	r2, [r3, #44]
	add	r9, r0, r9
	and	r8, r9, #255
	cmp	r2, #0
	strh	r8, [r1, #56]	@ movhi
	ldr	r2, [r3, #36]
	beq	.L89
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L87:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L107
.L91:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L108
.L85:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L91
.L107:
	add	r4, r4, #13
	str	r4, [r6, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L89:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L90
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L87
.L104:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L81
.L90:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L87
.L110:
	.align	2
.L109:
	.word	.LANCHOR0
	.word	bgIndex
	.word	hOff
	.word	shadowOAM
	.word	vOff
	.word	lettuce
	.word	big_lettuce
	.word	511
	.word	-32768
	.size	drawEnemies, .-drawEnemies
	.global	__aeabi_idivmod
	.align	2
	.global	drawBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullets, %function
drawBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L131
	ldr	r3, .L131+4
	ldr	r8, [r1]
	ldr	r2, .L131+8
	ldr	r3, [r3]
	ldr	r4, .L131+12
	ldr	r1, .L131+16
	mov	r0, #0
	ldrh	r2, [r2]
	ldr	r6, [r1, #4]
	ldr	r5, .L131+20
	ldr	fp, .L131+24
	ldr	r10, .L131+28
	ldr	r9, .L131+32
	sub	sp, sp, #12
	add	r8, r8, r3, lsl #8
	add	r7, r4, #528
	b	.L118
.L130:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L112
	add	r1, r4, #8
	ldm	r1, {r1, r3}
	ldr	r0, [r4, #28]
	sub	r3, r3, r8
	and	r3, r3, fp
	sub	r1, r1, r2
	orr	r3, r3, #16384
	add	lr, r5, r6, lsl #3
	and	r1, r1, #255
	lsl	ip, r6, #3
	cmp	r0, #2
	strh	r3, [lr, #2]	@ movhi
	strh	r1, [r5, ip]	@ movhi
	beq	.L115
	cmp	r0, #3
	beq	.L116
	cmp	r0, #1
	orreq	r3, r3, #4096
	strheq	r3, [lr, #2]	@ movhi
.L117:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	smull	r1, lr, r9, r3
	asr	r1, r3, #31
	rsb	r1, r1, lr, asr #2
	add	r1, r1, r1, lsl #2
	add	ip, r5, ip
	cmp	r3, r1, lsl #1
	movne	r0, #1
	strh	r10, [ip, #4]	@ movhi
	str	r3, [r4, #24]
	add	r6, r6, #1
	bne	.L114
	str	r2, [sp, #4]
	ldr	r1, [r4, #32]
	ldr	r3, .L131+36
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r0, #1
	str	r1, [r4, #28]
	ldr	r2, [sp, #4]
.L114:
	add	r4, r4, #44
	cmp	r4, r7
	beq	.L129
.L118:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L130
.L112:
	lsl	r1, r6, #3
	ldrh	r3, [r5, r1]
	add	r4, r4, #44
	orr	r3, r3, #512
	cmp	r4, r7
	strh	r3, [r5, r1]	@ movhi
	bne	.L118
.L129:
	cmp	r0, #0
	ldrne	r3, .L131+16
	strne	r6, [r3, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L116:
	orr	r3, r3, #8192
	strh	r3, [lr, #2]	@ movhi
	b	.L117
.L115:
	orr	r3, r3, #12288
	strh	r3, [lr, #2]	@ movhi
	b	.L117
.L132:
	.align	2
.L131:
	.word	hOff
	.word	bgIndex
	.word	vOff
	.word	bl_bullets
	.word	.LANCHOR0
	.word	shadowOAM
	.word	511
	.word	4500
	.word	1717986919
	.word	__aeabi_idivmod
	.size	drawBullets, .-drawBullets
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
	ldr	r1, .L143
	ldr	r3, [r1, #40]
	ldr	r0, .L143+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L134
	ldr	ip, .L143+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L134:
	ldr	ip, .L143+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L143+16
	ldr	ip, .L143+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L143+8
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
.L144:
	.align	2
.L143:
	.word	slash
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	player
	.word	vOff
	.size	drawSlash, .-drawSlash
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
	ldr	r3, .L197
	push	{r4, r5, r6, lr}
	ldr	r4, .L197+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L146
	cmp	r2, #0
	beq	.L195
	ldrh	r3, [r3, #48]
.L149:
	ldr	r3, .L197+8
	ldr	r1, [r3, #8]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L152
	movne	r1, #2
	strne	r1, [r4, #36]
.L152:
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
	beq	.L156
	ldr	r3, .L197+12
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L156
	mov	r1, #6
	ldr	r5, [r4, #32]
	ldr	r3, .L197+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	beq	.L159
.L158:
	ldr	r1, .L197+16
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L160
	ldr	r1, [r4, #36]
.L166:
	cmp	r1, #1
	beq	.L167
	cmp	r1, #6
	beq	.L167
	cmp	r1, #5
	beq	.L196
	cmp	r3, #0
	bne	.L160
.L167:
	ldr	r0, [r4, #44]
	ldr	r3, .L197+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L160:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L195:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L149
.L156:
	ldr	r5, [r4, #32]
	ldr	r3, .L197+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L158
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L167
.L159:
	ldr	r3, .L197+16
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	bne	.L167
	b	.L166
.L146:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L149
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L149
.L196:
	ldr	r0, [r4, #44]
	ldr	r3, .L197+20
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
	b	.L160
.L198:
	.align	2
.L197:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
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
	ldr	r4, .L207
	ldr	r8, .L207+4
	ldr	r6, .L207+8
	add	r7, r4, #504
.L201:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L200
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L200:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L201
	ldr	r4, .L207+12
	ldr	r8, .L207+4
	ldr	r6, .L207+8
	add	r7, r4, #480
.L203:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L202
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L202:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #80
	cmp	r4, r7
	bne	.L203
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L208:
	.align	2
.L207:
	.word	lettuce
	.word	1717986919
	.word	__aeabi_idivmod
	.word	big_lettuce
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
	mov	r7, #0
	ldr	r10, .L283
	ldr	r4, .L283+4
	ldr	r3, [r10]
	ldr	fp, .L283+8
	ldr	r8, .L283+12
	ldr	r5, .L283+16
	sub	sp, sp, #28
	sub	r1, r3, #239
	add	r6, r4, #504
.L220:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	ip, r0, r2
	cmp	r1, ip
	bgt	.L277
	add	ip, r3, #239
	cmp	r0, ip
	bgt	.L277
	ldr	ip, [r4]
	cmp	ip, #0
	mov	ip, #1
	str	ip, [r4, #4]
	beq	.L211
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L213
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L213:
	add	r1, r5, #24
	ldm	r1, {r1, ip}
	str	r3, [sp]
	ldr	r3, [r5, #8]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L215
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L215
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #72]
	ldrle	r3, .L283+20
	str	r2, [r5, #76]
	strle	r2, [r3, #20]
.L215:
	ldr	r3, [r10]
	ldr	r0, [r4, #12]
	sub	ip, r3, r0
	ldr	r2, [r4, #64]
	eor	r1, ip, ip, asr #31
	sub	r1, r1, ip, asr #31
	cmp	r1, r2
	ldr	lr, [r8]
	ldr	r1, [r4, #8]
	bge	.L276
	ldr	r2, [r5, #8]
	sub	r2, r2, r1
	cmp	r2, #0
	ldr	r9, [r4, #68]
	rsblt	r2, r2, #0
	cmp	r2, r9
	bge	.L276
	ldr	r2, .L283+20
	ldr	r2, [r2]
	tst	r2, #1
	beq	.L271
.L276:
	ldr	r2, [r4, #20]
.L217:
	add	r2, r1, r2
	add	r2, r2, #1
	add	r0, lr, r0
	ldrb	ip, [r0, r2, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	add	r0, r0, r2, lsl #11
	bne	.L279
.L219:
	add	r1, r1, #1
	str	r1, [r4, #8]
.L278:
	sub	r1, r3, #239
.L211:
	add	r4, r4, #72
	cmp	r4, r6
	bne	.L220
	mov	r8, #1
	ldr	r4, .L283+24
	ldr	r7, .L283+8
	ldr	r9, .L283+20
	ldr	fp, .L283+28
	ldr	r5, .L283+16
	add	r6, r4, #480
.L235:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	ip, r0, r2
	cmp	r1, ip
	movgt	r1, #0
	bgt	.L221
	add	r1, r3, #239
	cmp	r0, r1
	movgt	r1, #0
	movle	r1, #1
.L221:
	ldr	ip, [r4]
	cmp	ip, #0
	str	r1, [r4, #4]
	beq	.L223
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L224
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L224:
	add	r1, r5, #24
	ldm	r1, {r1, ip}
	str	r3, [sp]
	ldr	r3, [r5, #8]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L226
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L226
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r8, [r5, #76]
	str	r3, [r5, #72]
	strle	r8, [r9, #20]
.L226:
	ldr	r1, [r4, #12]
	ldr	r3, [r10]
	sub	r3, r3, r1
	ldr	r2, [r4, #60]
	eor	r0, r3, r3, asr #31
	sub	r0, r0, r3, asr #31
	cmp	r0, r2
	bge	.L223
	ldr	r0, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r0
	cmp	r2, #0
	ldr	ip, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, ip
	bge	.L223
	ldr	r2, [r9]
	ands	r2, r2, #1
	bne	.L223
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L230
	strne	r8, [r4, #56]
.L230:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	beq	.L280
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L223
	mov	r3, #0
	ldr	r2, .L283+28
	str	r3, [r4, #76]
	str	r3, [r4, #72]
.L233:
	ldr	ip, [r2]
	cmp	ip, #0
	beq	.L281
	add	r3, r3, #1
	cmp	r3, #12
	add	r2, r2, #44
	bne	.L233
.L223:
	add	r4, r4, #80
	cmp	r4, r6
	beq	.L234
	ldr	r3, [r10]
	sub	r1, r3, #239
	b	.L235
.L277:
	str	r7, [r4, #4]
	b	.L211
.L279:
	ldr	r2, [r4, #16]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L219
	b	.L278
.L234:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L271:
	cmp	ip, #0
	blt	.L282
	beq	.L276
	ldr	r2, [r4, #60]
	ldr	ip, [r4, #16]
	add	r2, r0, r2
	add	ip, r2, ip
	str	r2, [sp, #16]
	add	r2, lr, r1, lsl #11
	ldrb	r2, [r2, ip]	@ zero_extendqisi2
	cmp	r2, #0
	ldr	r2, [r4, #20]
	bne	.L217
	add	ip, lr, ip
	mov	r9, ip
	str	ip, [sp, #20]
	add	ip, r1, r2
	ldrb	r9, [r9, ip, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #11
	bne	.L217
	add	r9, ip, #2048
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L217
	ldr	ip, [sp, #20]
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	ip, [sp, #16]
	movne	r0, ip
	strne	ip, [r4, #12]
	b	.L217
.L280:
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	strgt	r8, [r4, #76]
	strgt	r2, [r4, #36]
	strgt	r8, [r4, #72]
	b	.L223
.L282:
	ldr	ip, [r4, #60]
	add	r2, lr, r1, lsl #11
	sub	ip, r0, ip
	ldrb	r2, [r2, ip]	@ zero_extendqisi2
	cmp	r2, #0
	str	ip, [sp, #16]
	ldr	r2, [r4, #20]
	bne	.L217
	ldr	ip, [sp, #16]
	add	r9, lr, ip
	add	ip, r1, r2
	str	r9, [sp, #20]
	ldrb	r9, [r9, ip, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #11
	bne	.L217
	ldr	r9, [sp, #20]
	add	ip, ip, #2048
	ldrb	r9, [r9, ip]	@ zero_extendqisi2
	cmp	r9, #0
	ldr	r9, [sp, #20]
	add	ip, r9, ip
	beq	.L217
	ldr	r9, [r4, #16]
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	r0, [sp, #16]
	strne	r0, [r4, #12]
	b	.L217
.L281:
	ldr	r2, [r4, #56]
	add	ip, r3, r3, lsl #2
	add	r3, r3, ip, lsl #1
	lsl	r2, r2, #1
	add	ip, fp, r3, lsl #2
	add	r0, r0, #8
	sub	r2, r2, #1
	str	r8, [fp, r3, lsl #2]
	str	r0, [ip, #8]
	str	r1, [ip, #12]
	str	r2, [ip, #36]
	b	.L223
.L284:
	.align	2
.L283:
	.word	pMapPos
	.word	lettuce
	.word	collision
	.word	.LANCHOR1
	.word	player
	.word	.LANCHOR0
	.word	big_lettuce
	.word	bl_bullets
	.size	updateEnemies, .-updateEnemies
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
	ldr	r2, .L295
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L288
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L288
	cmp	r3, #18
	bne	.L287
.L288:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L287:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L296:
	.align	2
.L295:
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
	ldr	r7, .L450
	ldr	r8, .L450+4
	ldr	r4, .L450+8
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
	bne	.L298
	mov	r6, ip
	add	ip, lr, r2
	add	ip, ip, r6
	add	ip, ip, r5
	ldrb	r3, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L298
	ldr	ip, .L450+12
	ldrh	ip, [ip]
	tst	ip, #64
	str	r3, [r4, #4]
	ldr	r6, .L450+16
	bne	.L443
.L300:
	ldr	r9, [r6, #8]
	cmp	r9, #0
	ldr	r10, [r4, #4]
	bge	.L309
.L308:
	mov	r3, #0
	ldr	r1, [sp, #20]
	ldr	ip, [sp, #24]
	add	r1, r1, r2
	add	r1, r1, r0, lsl #11
	add	r1, r1, ip
	add	ip, fp, r0, lsl #11
	add	r1, lr, r1
	add	ip, lr, ip
.L311:
	ldrb	r5, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L310
	ldrb	r5, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L310
	sub	r3, r3, #1
	cmp	r3, r9
	bgt	.L311
.L309:
	ldr	r3, .L450+20
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L312
	ldrh	r0, [r3, #48]
	ands	r0, r0, #16
	bne	.L312
	ldr	r3, [r6, #8]
	cmp	r3, #0
	ble	.L313
	ldr	r9, [r7, #8]
	add	r1, fp, r9, lsl #11
	add	ip, lr, r1
.L315:
	ldrb	r1, [ip]	@ zero_extendqisi2
	cmp	r1, #0
	sub	r0, r0, #1
	bne	.L314
	ldr	r1, [sp, #20]
	ldrb	r1, [ip, r1]	@ zero_extendqisi2
	cmp	r1, #0
	sub	ip, ip, #2032
	bne	.L314
	cmn	r0, #2
	sub	ip, ip, #15
	mvn	r0, #0
	bne	.L315
	cmp	r10, #0
	beq	.L372
	b	.L369
.L298:
	mov	ip, #0
	mov	r5, #1
	ldr	r6, .L450+16
	str	ip, [r6, #24]
	str	ip, [r6, #12]
	str	ip, [r6, #28]
	ldr	ip, .L450+12
	ldrh	ip, [ip]
	tst	ip, #64
	mov	r3, r5
	str	r5, [r4, #4]
	beq	.L300
.L443:
	ldr	ip, .L450+24
	ldrh	ip, [ip]
	tst	ip, #64
	bne	.L300
	ldr	ip, [r6, #12]
	cmp	ip, #0
	beq	.L444
	cmp	r3, #0
	beq	.L300
.L367:
	ldr	r10, [r6, #16]
	cmp	r10, #0
	bne	.L300
	sub	ip, r0, #1
	ldrb	r3, [r1, ip, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L300
	ldr	r1, [sp, #20]
	add	r3, lr, r2
	add	r3, r3, r1
	ldr	r1, [sp, #24]
	add	r3, r3, r1
	ldrb	r3, [r3, ip, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L300
	mvn	r9, #4
	mov	r3, #1
	str	r10, [r4, #4]
	str	r9, [r6, #8]
	str	r3, [r6, #32]
	b	.L308
.L312:
	cmp	r10, #0
	bne	.L439
	ldr	r3, [r6, #8]
	cmp	r3, #0
	ldrgt	r9, [r7, #8]
	ble	.L441
.L372:
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
.L320:
	ldrb	r0, [lr, r1, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L319
	ldrb	r0, [r2, r1, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L319
	add	r1, r1, #1
	cmp	r1, r3
	blt	.L320
.L441:
	ldr	r5, .L450+28
	b	.L321
.L310:
	mov	ip, #1
	mov	r1, #0
	ldr	r5, .L450+28
	add	r3, r3, ip
	add	r0, r0, r3
	str	r0, [r7, #8]
	ldr	r0, [r5]
	add	r3, r0, r3
	str	r3, [r5]
	str	r1, [r6, #8]
	str	r1, [r6, #32]
	str	r1, [r6, #36]
	str	ip, [r6, #24]
	b	.L309
.L314:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #8]
	str	r3, [r6, #32]
	str	r2, [r6, #24]
.L313:
	cmp	r10, #0
	beq	.L441
.L439:
	ldr	r9, [r7, #8]
.L369:
	mov	r3, #0
	ldr	r2, [r6, #16]
	cmp	r2, r3
	str	r3, [r6, #8]
	str	r3, [r6, #36]
	str	r3, [r6, #32]
	beq	.L340
	ldr	r1, [r6, #40]
	add	r1, r1, #1
	cmp	r1, #15
	movle	r2, #0
	movgt	r2, #1
	cmp	r10, #0
	cmpne	r1, #15
	str	r1, [r6, #40]
	bgt	.L445
.L341:
	cmp	r2, #0
	movne	r3, #0
	movne	r2, #2
	strne	r3, [r6, #16]
	strne	r3, [r6, #40]
	strne	r2, [r7, #68]
.L340:
	ldr	r3, .L450+12
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L342
	ldr	r2, .L450+24
	ldrh	r2, [r2]
	tst	r2, #256
	bne	.L342
.L343:
	mov	r3, #1
	cmp	r10, #0
	str	r3, [r6, #16]
	ldr	r5, [r7, #12]
	bne	.L446
	ldr	r2, [r6, #28]
	cmp	r2, #0
	beq	.L348
	ldr	r1, [r7, #68]
	b	.L346
.L342:
	tst	r3, #512
	beq	.L344
	ldr	r3, .L450+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L345
.L344:
	ldr	r1, [r7, #68]
	ldr	r5, [r7, #12]
.L346:
	ldr	r3, .L450+32
	ldr	r0, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L349
	ldr	r2, [r7, #8]
.L350:
	ldr	r3, [r7, #56]
	ldr	r4, .L450+36
	rsb	r3, r3, r3, lsl #31
	ldr	r1, [r4, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r1, r3, r5
	stm	r4, {r2, r3}
	bl	animateSlash
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L356
	mov	fp, #1
	ldr	r5, .L450+40
	ldr	r9, .L450+44
	add	r10, r5, #504
.L360:
	ldr	r0, [r4, #4]
	ldr	ip, [r5, #20]
	ldr	r1, [r8]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	lr, [r5, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r5, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r5, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L358
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L358
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L358:
	add	r5, r5, #72
	cmp	r10, r5
	bne	.L360
	mov	fp, #1
	ldr	r5, .L450+48
	add	r10, r5, #480
.L364:
	ldr	r0, [r4, #4]
	ldr	ip, [r5, #20]
	ldr	r1, [r8]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	lr, [r5, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r5, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r5, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L362
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L362
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L362:
	add	r5, r5, #80
	cmp	r10, r5
	bne	.L364
	ldr	r3, [r7, #64]
	sub	r3, r3, #1
	str	r3, [r7, #64]
.L365:
	ldr	r3, .L450+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L366
	ldr	r3, .L450+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L366
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L366
	mov	r1, #1
	mov	r2, #20
	str	r3, [r7, #44]
	str	r3, [r4, #40]
	str	r3, [r4, #32]
	str	r3, [r4, #28]
	str	r1, [r7, #60]
	str	r2, [r7, #64]
.L366:
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L348:
	str	r3, [r6, #28]
	str	r3, [r7, #68]
.L349:
	ldr	r3, .L450+20
	ldrh	r3, [r3, #48]
	ldr	r2, [r8]
	tst	r3, #32
	lsl	r3, r2, #8
	bne	.L351
	ldr	ip, [r7, #20]
	ldr	r1, [r4]
	sub	r0, r5, ip
	add	lr, r0, r3
	add	r10, r1, r9, lsl #11
	ldrb	r10, [r10, lr]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L351
	ldr	r10, [r7, #28]
	add	r9, r9, r10
	sub	r9, r9, #1
	add	r1, r1, r9, lsl #11
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r5, #0
	cmpge	r1, #0
	bne	.L351
	ldr	r9, .L450+52
	ldr	r1, [r9]
	cmp	r1, #0
	str	r0, [r7, #12]
	blt	.L352
	sub	lr, r0, r1
	cmp	lr, #119
	suble	r1, r1, ip
	strle	r1, [r9]
.L352:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r2, #0
	movne	r2, r1
	moveq	r2, #0
	cmp	r2, #0
	moveq	r5, r0
	bne	.L447
.L351:
	ldr	r2, .L450+20
	ldrh	r2, [r2, #48]
	tst	r2, #16
	ldr	r2, [r7, #8]
	bne	.L442
	ldr	r0, [r7, #24]
	ldr	ip, [r7, #20]
	ldr	lr, [r4]
	add	r1, r0, r5
	add	r1, r1, ip
	add	r1, r1, r3
	add	r4, lr, r2, lsl #11
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L442
	ldr	r4, [r7, #28]
	add	r4, r2, r4
	sub	r4, r4, #1
	add	lr, lr, r4, lsl #11
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	cmp	r1, #0
	ldr	r4, .L450+56
	bne	.L353
	ldr	r1, [r4]
	add	r0, r0, r1
	cmp	r0, #2048
	bgt	.L353
	ldr	r9, .L450+52
	ldr	r0, [r9]
	add	r5, r5, ip
	cmp	r0, #256
	str	r5, [r7, #12]
	bgt	.L355
	sub	lr, r5, r0
	ldr	r10, .L450+60
	cmp	lr, #120
	movgt	lr, #1
	movle	lr, #0
	cmp	r1, r10
	movgt	lr, #0
	cmp	lr, #0
	beq	.L353
	add	ip, ip, r0
	cmp	ip, #256
	str	ip, [r9]
	ble	.L353
.L355:
	ldr	r3, .L450+64
	mov	lr, pc
	bx	r3
	mov	r5, #120
	mov	r0, #67108864
	mov	r1, #0
	ldr	r3, [r8]
	add	r2, r3, #25
	lsl	r2, r2, #24
	orr	r2, r2, #1073741824
	lsr	r2, r2, #16
	add	r3, r3, #1
	str	r3, [r8]
	strh	r2, [r0, #10]	@ movhi
	lsl	r3, r3, #8
	str	r5, [r7, #12]
	str	r1, [r9]
	ldr	r2, [r7, #8]
	b	.L353
.L442:
	ldr	r4, .L450+56
.L353:
	add	r3, r5, r3
	str	r3, [r4]
	b	.L350
.L319:
	mov	r2, #1
	ldr	r5, .L450+28
	ldr	r3, [r5]
	sub	r1, r1, #1
	add	r9, r1, r9
	add	r1, r3, r1
	str	r9, [r7, #8]
	str	r1, [r5]
	str	r2, [r4, #4]
.L321:
	ldr	r3, .L450+20
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r6, #36]
	bne	.L324
	ldr	r2, [r6, #32]
	cmp	r2, #0
	beq	.L325
	ldr	r2, [r6, #24]
	cmp	r2, #0
	bne	.L326
	ldr	r2, [r6, #12]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L328
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L371
.L331:
	mov	r3, #1
	str	r3, [r6, #24]
	sub	r0, r0, #3
.L328:
	ldr	r3, .L450+68
	mov	lr, pc
	bx	r3
	ldr	r9, .L450+72
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L450+76
	mov	lr, pc
	bx	r9
	ldr	r3, .L450+80
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	tst	r3, #3
	ldreq	r3, [r6, #36]
	ldr	r1, [r4, #4]
	addeq	r3, r3, #1
	streq	r3, [r6, #36]
	cmp	r1, #0
	str	r0, [r6, #8]
	ldr	r9, [r7, #8]
	ldr	r3, [r5]
	bne	.L448
	add	r9, r9, r0
	cmp	r3, #255
	str	r9, [r7, #8]
	sub	r2, r9, r3
	ble	.L434
.L336:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	addne	r0, r0, r3
	strne	r0, [r5]
.L339:
	ldr	r10, [r6, #16]
	cmp	r10, #0
	beq	.L340
	ldr	r2, [r6, #40]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r6, #40]
	mov	r10, #0
	movle	r2, #0
	movgt	r2, #1
	b	.L341
.L356:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r7, #60]
	str	r3, [r4, #40]
	b	.L365
.L324:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L329
.L370:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	bne	.L330
.L329:
	ldr	r3, [r6, #32]
	cmp	r3, #0
	bne	.L331
	b	.L328
.L434:
	cmp	r2, #79
	cmpgt	r0, #0
	ble	.L337
	ldr	r10, [r6, #16]
	add	r0, r0, r3
	cmp	r10, #0
	str	r0, [r5]
	beq	.L340
	ldr	r2, [r6, #40]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r6, #40]
	mov	r10, r1
	movle	r2, #0
	movgt	r2, #1
	b	.L341
.L345:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L344
	b	.L343
.L446:
	mov	r1, #2
	mov	r3, #3
	str	r1, [r7, #68]
	str	r3, [r7, #20]
	b	.L346
.L325:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L328
	b	.L370
.L444:
	ldr	r5, [r6, #32]
	cmp	r5, #0
	beq	.L449
	mov	r5, #1
	mvn	r9, #4
	cmp	r3, #0
	str	ip, [r6, #36]
	str	ip, [r6, #24]
	str	r5, [r6, #12]
	str	r9, [r6, #8]
	bne	.L367
	ldr	r10, [r4, #4]
	b	.L308
.L445:
	mov	r1, #2
	mov	r2, #3
	str	r3, [r6, #16]
	str	r3, [r6, #40]
	str	r1, [r7, #68]
	str	r2, [r7, #20]
	b	.L340
.L337:
	cmp	r3, #0
	ble	.L339
	b	.L336
.L330:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	bne	.L329
.L371:
	sub	r0, r0, #4
	b	.L328
.L449:
	cmp	r3, #0
	bne	.L367
	mov	r1, #1
	mvn	r9, #4
	str	r3, [r6, #36]
	str	r3, [r6, #24]
	str	r1, [r6, #12]
	str	r1, [r6, #32]
	str	r9, [r6, #8]
	ldr	r10, [r4, #4]
	b	.L308
.L326:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L370
	b	.L331
.L447:
	ldr	r3, .L450+64
	mov	lr, pc
	bx	r3
	mov	r5, #376
	mov	r0, #67108864
	mov	r1, #256
	ldr	r3, [r8]
	add	r2, r3, #23
	lsl	r2, r2, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #1
	lsr	r2, r2, #16
	str	r3, [r8]
	strh	r2, [r0, #10]	@ movhi
	lsl	r3, r3, #8
	str	r5, [r7, #12]
	str	r1, [r9]
	b	.L351
.L448:
	mov	r10, r1
	b	.L369
.L451:
	.align	2
.L450:
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
	.word	big_lettuce
	.word	hOff
	.word	pMapPos
	.word	1928
	.word	waitForVBlank
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
	ldr	r3, .L466
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L453
	ldr	r2, .L466+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L453
	mov	r2, #1
	ldr	r3, .L466+8
	str	r2, [r3, #44]
.L455:
	bl	updatePlayer
	bl	updateEnemies
	bl	updateBullets
	bl	updateMap
	ldr	r3, .L466+12
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L456
	ldr	r3, [r3, #8]
	cmp	r3, #240
	ble	.L452
.L456:
	mov	r2, #1
	ldr	r3, .L466+8
	str	r2, [r3, #20]
.L452:
	pop	{r4, lr}
	bx	lr
.L453:
	cmp	r3, #0
	beq	.L455
	ldr	r3, .L466+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L466+8
	streq	r2, [r3, #44]
	b	.L455
.L467:
	.align	2
.L466:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	player
	.size	updateGame, .-updateGame
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
	ldr	lr, .L472
	ldr	ip, .L472+4
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
	bne	.L468
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L468:
	ldr	lr, [sp], #4
	bx	lr
.L473:
	.align	2
.L472:
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
	ldr	r0, .L477
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
.L478:
	.align	2
.L477:
	.word	.LANCHOR1
	.size	goblinGroundCheck, .-goblinGroundCheck
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
	ldr	r2, .L480
	ldr	r3, .L480+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L481:
	.align	2
.L480:
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
	ldr	r3, .L483
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L484:
	.align	2
.L483:
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
	ldr	r2, .L487
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L487+4
	ldr	r9, [r2]
	ldr	r3, .L487+8
	ldr	r2, .L487+12
	ldr	fp, [r1, #8]
	ldr	r10, [r3]
	smull	r1, r3, r2, r9
	smull	r1, r7, r2, fp
	ldr	r8, .L487+16
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
	ldr	r2, .L487+20
	asr	r5, r5, #31
	ldr	r3, .L487+24
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
	ldr	r1, .L487+20
	add	lr, lr, #111
	add	r2, r2, #9
	str	r2, [r1, #4]
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L488:
	.align	2
.L487:
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
	ldr	r3, .L497
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L497+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #4]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L496
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L497+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L490
	ldr	lr, .L497+12
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
	ldrne	r4, .L497+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L490:
	ldr	r2, [r6, #48]
	ldr	lr, .L497+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L497+24
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
	ldr	lr, .L497+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L497+32
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
.L496:
	ldr	ip, .L497+8
	b	.L490
.L498:
	.align	2
.L497:
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
	ldr	r3, .L501
	push	{r4, lr}
	str	r2, [r3, #4]
	bl	drawHUD
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawFont
	ldr	r3, .L501+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L501+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L501+12
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L501+16
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, .L501+20
	ldrh	r0, [r3]
	ldr	r3, .L501+24
	strh	r0, [r1, #22]	@ movhi
	ldr	r0, [r3]
	ldr	r3, .L501+28
	add	r2, r2, r0, lsl #8
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, lr}
	bx	lr
.L502:
	.align	2
.L501:
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
	ldr	r3, .L504
	str	r2, [r3, #20]
	bx	lr
.L505:
	.align	2
.L504:
	.word	.LANCHOR0
	.size	gameOver, .-gameOver
	.global	dead
	.comm	maps,2160,4
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
	.comm	bl_bullets,528,4
	.comm	big_lettuce,480,4
	.comm	lettuce,504,4
	.comm	slash,56,4
	.comm	player,84,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	map1CollisionBitmap
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
