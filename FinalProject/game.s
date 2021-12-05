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
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	r0, #3
	mov	r6, #8
	mov	r5, #16
	mov	r4, #1
	mov	lr, #2
	mov	ip, #6
	ldr	r3, .L7
	ldr	r1, [r3]
	ldr	r3, .L7+4
	cmp	r1, r2
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #16]
	str	lr, [r3, #68]
	str	ip, [r3, #48]
	str	r0, [r3, #20]
	str	r0, [r3, #72]
	beq	.L2
	cmp	r1, r4
	moveq	r1, #80
	moveq	r2, #120
	streq	r1, [r3, #8]
	streq	r2, [r3, #12]
.L1:
	pop	{r4, r5, r6, lr}
	bx	lr
.L2:
	mov	r1, #159
	mov	r2, #35
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	currMap
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
	ldr	r3, .L11
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
.L12:
	.align	2
.L11:
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
	ldr	r1, .L24
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0
	mov	r3, r1
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mov	r4, #128
	mov	lr, #96
	mov	r0, #1
	add	ip, r1, #504
.L14:
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
	bne	.L14
	ldr	r2, .L24+4
	mov	r0, #0
	mov	r3, r2
	mov	r8, #13
	mov	r7, #15
	mov	r6, #4
	mov	r5, #240
	mov	ip, #60
	mov	r4, #2
	add	lr, r2, #480
.L15:
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
	bne	.L15
	mov	ip, #0
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mvn	r4, #0
	mov	r3, #1
	ldr	r0, .L24+8
	add	lr, r0, #528
.L16:
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
	bne	.L16
	ldr	r0, .L24+12
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L17
	cmp	r0, #1
	ldreq	r3, .L24+16
	moveq	lr, pc
	bxeq	r3
.L13:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	mov	lr, #160
	str	lr, [r1, #8]
	str	lr, [r1, #152]
	str	lr, [r1, #440]
	mov	lr, #96
	str	lr, [r1, #368]
	mov	lr, #1600
	str	lr, [r1, #444]
	mov	lr, #55
	str	lr, [r2, #8]
	mov	lr, #119
	str	lr, [r2, #88]
	mov	lr, #87
	mov	r4, #64
	mov	fp, #136
	mov	r10, #672
	mov	r9, #800
	mov	r8, #112
	mov	r7, #920
	mov	ip, #135
	mov	r6, #2016
	mov	r5, #1936
	str	lr, [r2, #168]
	ldr	lr, .L24+20
	str	lr, [r1, #228]
	ldr	lr, .L24+24
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
	str	r7, [r1, #300]
	str	lr, [r1, #372]
	ldr	r1, .L24+28
	str	r1, [r2, #12]
	ldr	r1, .L24+32
	str	r1, [r2, #92]
	ldr	r1, .L24+36
	str	r1, [r2, #172]
	add	r1, r1, #272
	str	r3, [r2]
	str	r3, [r2, #80]
	str	r3, [r2, #160]
	str	r0, [r2, #56]
	str	r0, [r2, #136]
	str	r0, [r2, #216]
	str	r3, [r2, #240]
	str	r3, [r2, #320]
	str	r3, [r2, #400]
	str	r6, [r2, #332]
	str	r5, [r2, #412]
	str	r0, [r2, #296]
	str	r0, [r2, #376]
	str	r0, [r2, #456]
	str	ip, [r2, #248]
	str	ip, [r2, #328]
	str	ip, [r2, #408]
	str	r1, [r2, #252]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	lettuce
	.word	big_lettuce
	.word	bl_bullets
	.word	currMap
	.word	initBoss1
	.word	769
	.word	1304
	.word	963
	.word	350
	.word	1417
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
	mov	r2, #0
	mov	r3, #67108864
	mov	r1, #22528
	push	{r4, r5, r6, lr}
	ldr	r0, .L32
	ldr	r5, .L32+4
	str	r2, [r0]
	strh	r1, [r3, #10]	@ movhi
	ldr	r3, [r5]
	cmp	r3, r2
	beq	.L27
	cmp	r3, #1
	bne	.L31
	ldr	r4, .L32+8
	ldr	r1, .L32+12
	ldr	ip, .L32+16
	str	r3, [r1]
	ldr	r0, .L32+20
	ldr	r1, .L32+24
	str	r2, [r4, #560]
	str	r2, [r4, #564]
	ldr	r3, .L32+28
	ldr	r2, .L32+32
	str	ip, [r4, #548]
	str	r0, [r4, #552]
	str	r1, [r4, #556]
	str	r2, [r3]
.L29:
	ldr	r3, .L32+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r6, .L32+40
	ldr	r1, [r3, #4]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L32+44
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r1, [r3, #8]
	mov	r2, #83886080
	mov	r3, #48
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r4, r4, r3, lsl #5
	ldr	r1, [r4, #12]
	mov	r3, #1008
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	ldr	r4, .L32+8
	b	.L29
.L27:
	mov	r1, #60
	mov	r0, #66
	mov	r2, #28
	ldr	r4, .L32+8
	str	r1, [r4, #20]
	ldr	r1, .L32+48
	str	r1, [r4, #4]
	ldr	r1, .L32+52
	str	r0, [r4, #28]
	str	r1, [r4, #8]
	ldr	r0, .L32+56
	ldr	r1, .L32+60
	str	r0, [r4, #12]
	str	r1, [r4, #24]
	ldr	r0, .L32+12
	ldr	r1, .L32+28
	str	r2, [r4, #32]
	str	r2, [r4, #36]
	ldr	r2, .L32+64
	str	r3, [r4, #16]
	str	r3, [r0]
	str	r2, [r1]
	b	.L29
.L33:
	.align	2
.L32:
	.word	bgIndex
	.word	currMap
	.word	maps
	.word	.LANCHOR0
	.word	boss1Map
	.word	boss1Pal
	.word	boss1Tiles
	.word	collisionMap
	.word	boss1CollisionBitmap
	.word	waitForVBlank
	.word	DMANow
	.word	100712448
	.word	map1Map
	.word	map1Pal
	.word	map1Tiles
	.word	1978
	.word	map1CollisionBitmap
	.size	initMaps, .-initMaps
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
	bl	initMaps
	mov	r4, #0
	bl	initPlayer
	mov	r5, #1
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #1
	mov	r2, #4
	ldr	r3, .L36
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
	mov	lr, #2
	ldr	r3, .L36+4
	ldr	r2, [r3]
	ldr	r3, .L36+8
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r2, .L36+12
	ldr	r1, [r3, #20]
	ldr	r0, .L36+16
	ldr	r3, .L36+20
	str	r4, [r2, #4]
	str	lr, [r2, #8]
	str	ip, [r0]
	str	r1, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	slash
	.word	currMap
	.word	maps
	.word	.LANCHOR0
	.word	hOff
	.word	vOff
	.size	initGame, .-initGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMap.part.0, %function
updateMap.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L39
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L40:
	.align	2
.L39:
	.word	currMap
	.size	updateMap.part.0, .-updateMap.part.0
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
	ldr	r3, .L45
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L45+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L45+8
	str	r3, [sp]
	ldr	r0, .L45+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L45+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L44
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L44:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L46:
	.align	2
.L45:
	.word	currMap
	.word	maps
	.word	player
	.word	pMapPos
	.word	collision
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
	ldr	r9, .L68
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L68+4
	ldr	r5, .L68+8
	ldr	r8, .L68+12
	sub	sp, sp, #20
.L55:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L47
	ldr	ip, [r7]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, ip, #239
	add	r1, r3, r2
	cmp	r0, r1
	movgt	lr, #0
	bgt	.L49
	add	lr, ip, #239
	cmp	r3, lr
	movgt	lr, #0
	movle	lr, #1
.L49:
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	mla	r0, r1, r0, r3
	sub	r3, ip, #476
	add	r1, r2, r0
	sub	r3, r3, #3
	cmp	r3, r1
	str	lr, [r4, #4]
	str	r0, [r4, #12]
	bgt	.L52
	add	r3, ip, #476
	add	r3, r3, #3
	cmp	r0, r3
	bgt	.L52
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
	beq	.L53
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r5, #76]
	cmp	r3, #0
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	moveq	r2, #1
	streq	r3, [r5, #72]
	mov	r3, #0
	streq	r2, [r5, #76]
	str	r3, [r4]
.L53:
	add	r6, r6, #1
	cmp	r6, #12
	add	r4, r4, #44
	bne	.L55
.L47:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L52:
	mov	r3, #0
	add	r2, r6, r6, lsl #2
	add	r6, r6, r2, lsl #1
	lsl	r6, r6, #2
	str	r3, [r9, r6]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L69:
	.align	2
.L68:
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
	ldr	r1, .L89
	ldr	r3, [r1, #52]
	ldr	r0, .L89+4
	cmp	r3, #0
	ldr	r2, [r0, #8]
	beq	.L71
	ldr	ip, .L89+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #8]
	bx	lr
.L71:
	ldr	ip, .L89+12
	ldr	r3, [r1, #12]
	push	{r4, r5, r6, lr}
	ldr	lr, [ip]
	ldr	ip, .L89+16
	sub	r3, r3, #3
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L89+8
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
	b	.L74
.L76:
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L75
.L75:
	ldr	r1, .L89+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L72:
	add	r2, r2, #1
	str	r2, [r0, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L72
.L81:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L72
.L80:
	ldr	r1, .L89+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L72
.L79:
	ldr	r1, .L89+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L72
.L78:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L72
.L77:
	ldr	r1, .L89+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L72
.L74:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L72
.L90:
	.align	2
.L89:
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
	ldr	r6, .L122
	ldr	r8, .L122+4
	ldr	r7, .L122+8
	ldr	r1, .L122+12
	ldr	r4, [r6, #8]
	ldr	r9, .L122+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L122+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L97
.L119:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L92
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
	beq	.L117
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L94:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L118
.L97:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L119
.L92:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L97
.L118:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L122+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L122+28
	ldr	r5, .L122+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L104
.L121:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L98
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
	beq	.L102
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L100:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L120
.L104:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L121
.L98:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L104
.L120:
	add	r4, r4, #13
	str	r4, [r6, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L102:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L103
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L100
.L117:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L94
.L103:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L100
.L123:
	.align	2
.L122:
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
	ldr	r1, .L144
	ldr	r3, .L144+4
	ldr	r8, [r1]
	ldr	r2, .L144+8
	ldr	r3, [r3]
	ldr	r4, .L144+12
	ldr	r1, .L144+16
	mov	r0, #0
	ldrh	r2, [r2]
	ldr	r6, [r1, #8]
	ldr	r5, .L144+20
	ldr	fp, .L144+24
	ldr	r10, .L144+28
	ldr	r9, .L144+32
	sub	sp, sp, #12
	add	r8, r8, r3, lsl #8
	add	r7, r4, #528
	b	.L131
.L143:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L125
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
	beq	.L128
	cmp	r0, #3
	beq	.L129
	cmp	r0, #1
	orreq	r3, r3, #4096
	strheq	r3, [lr, #2]	@ movhi
.L130:
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
	bne	.L127
	str	r2, [sp, #4]
	ldr	r1, [r4, #32]
	ldr	r3, .L144+36
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r0, #1
	str	r1, [r4, #28]
	ldr	r2, [sp, #4]
.L127:
	add	r4, r4, #44
	cmp	r4, r7
	beq	.L142
.L131:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L143
.L125:
	lsl	r1, r6, #3
	ldrh	r3, [r5, r1]
	add	r4, r4, #44
	orr	r3, r3, #512
	cmp	r4, r7
	strh	r3, [r5, r1]	@ movhi
	bne	.L131
.L142:
	cmp	r0, #0
	ldrne	r3, .L144+16
	strne	r6, [r3, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L129:
	orr	r3, r3, #8192
	strh	r3, [lr, #2]	@ movhi
	b	.L130
.L128:
	orr	r3, r3, #12288
	strh	r3, [lr, #2]	@ movhi
	b	.L130
.L145:
	.align	2
.L144:
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
	ldr	r1, .L156
	ldr	r3, [r1, #40]
	ldr	r0, .L156+4
	cmp	r3, #0
	ldr	r2, [r0, #8]
	beq	.L147
	ldr	ip, .L156+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #8]
	bx	lr
.L147:
	ldr	ip, .L156+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L156+16
	ldr	ip, .L156+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L156+8
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
	str	r2, [r0, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L157:
	.align	2
.L156:
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
	ldr	r3, .L210
	push	{r4, r5, r6, lr}
	ldr	r4, .L210+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L159
	cmp	r2, #0
	beq	.L208
	ldrh	r3, [r3, #48]
.L162:
	ldr	r3, .L210+8
	ldr	r1, [r3, #12]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L165
	movne	r1, #2
	strne	r1, [r4, #36]
.L165:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	strne	r2, [r4, #36]
	ldr	r2, [r4, #76]
	cmp	r2, #0
	movne	r2, #5
	ldr	r3, [r3, #20]
	strne	r2, [r4, #36]
	cmp	r3, #0
	beq	.L169
	ldr	r3, .L210+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L169
	mov	r1, #6
	ldr	r5, [r4, #32]
	ldr	r3, .L210+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	beq	.L172
.L171:
	ldr	r1, .L210+16
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L173
	ldr	r1, [r4, #36]
.L179:
	cmp	r1, #1
	beq	.L180
	cmp	r1, #6
	beq	.L180
	cmp	r1, #5
	beq	.L209
	cmp	r3, #0
	bne	.L173
.L180:
	ldr	r0, [r4, #44]
	ldr	r3, .L210+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L173:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L208:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L162
.L169:
	ldr	r5, [r4, #32]
	ldr	r3, .L210+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L171
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L180
.L172:
	ldr	r3, .L210+16
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	bne	.L180
	b	.L179
.L159:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L162
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L162
.L209:
	ldr	r0, [r4, #44]
	ldr	r3, .L210+20
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
	b	.L173
.L211:
	.align	2
.L210:
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
	ldr	r4, .L220
	ldr	r8, .L220+4
	ldr	r6, .L220+8
	add	r7, r4, #504
.L214:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L213
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L213:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L214
	ldr	r4, .L220+12
	ldr	r8, .L220+4
	ldr	r6, .L220+8
	add	r7, r4, #480
.L216:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L215
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L215:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #80
	cmp	r4, r7
	bne	.L216
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L221:
	.align	2
.L220:
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
	ldr	r10, .L296
	ldr	r4, .L296+4
	ldr	r3, [r10]
	ldr	fp, .L296+8
	ldr	r8, .L296+12
	ldr	r5, .L296+16
	sub	sp, sp, #28
	sub	r1, r3, #239
	add	r6, r4, #504
.L233:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	ip, r0, r2
	cmp	r1, ip
	bgt	.L290
	add	ip, r3, #239
	cmp	r0, ip
	bgt	.L290
	ldr	ip, [r4]
	cmp	ip, #0
	mov	ip, #1
	str	ip, [r4, #4]
	beq	.L224
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L226
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L226:
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
	beq	.L228
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L228
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #72]
	ldrle	r3, .L296+20
	str	r2, [r5, #76]
	strle	r2, [r3, #24]
.L228:
	ldr	r3, [r10]
	ldr	r0, [r4, #12]
	sub	ip, r3, r0
	ldr	r2, [r4, #64]
	eor	r1, ip, ip, asr #31
	sub	r1, r1, ip, asr #31
	cmp	r1, r2
	ldr	lr, [r8]
	ldr	r1, [r4, #8]
	bge	.L289
	ldr	r2, [r5, #8]
	sub	r2, r2, r1
	cmp	r2, #0
	ldr	r9, [r4, #68]
	rsblt	r2, r2, #0
	cmp	r2, r9
	bge	.L289
	ldr	r2, .L296+20
	ldr	r2, [r2, #4]
	tst	r2, #1
	beq	.L284
.L289:
	ldr	r2, [r4, #20]
.L230:
	add	r2, r1, r2
	add	r2, r2, #1
	add	r0, lr, r0
	ldrb	ip, [r0, r2, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	add	r0, r0, r2, lsl #11
	bne	.L292
.L232:
	add	r1, r1, #1
	str	r1, [r4, #8]
.L291:
	sub	r1, r3, #239
.L224:
	add	r4, r4, #72
	cmp	r4, r6
	bne	.L233
	mov	r8, #1
	ldr	r4, .L296+24
	ldr	r7, .L296+8
	ldr	r9, .L296+20
	ldr	fp, .L296+28
	ldr	r5, .L296+16
	add	r6, r4, #480
.L248:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	ip, r0, r2
	cmp	r1, ip
	movgt	r1, #0
	bgt	.L234
	add	r1, r3, #239
	cmp	r0, r1
	movgt	r1, #0
	movle	r1, #1
.L234:
	ldr	ip, [r4]
	cmp	ip, #0
	str	r1, [r4, #4]
	beq	.L236
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L237
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L237:
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
	beq	.L239
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L239
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r8, [r5, #76]
	str	r3, [r5, #72]
	strle	r8, [r9, #24]
.L239:
	ldr	r1, [r4, #12]
	ldr	r3, [r10]
	sub	r3, r3, r1
	ldr	r2, [r4, #60]
	eor	r0, r3, r3, asr #31
	sub	r0, r0, r3, asr #31
	cmp	r0, r2
	bge	.L236
	ldr	r0, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r0
	cmp	r2, #0
	ldr	ip, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, ip
	bge	.L236
	ldr	r2, [r9, #4]
	ands	r2, r2, #1
	bne	.L236
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L243
	strne	r8, [r4, #56]
.L243:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	beq	.L293
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L236
	mov	r3, #0
	ldr	r2, .L296+28
	str	r3, [r4, #76]
	str	r3, [r4, #72]
.L246:
	ldr	ip, [r2]
	cmp	ip, #0
	beq	.L294
	add	r3, r3, #1
	cmp	r3, #12
	add	r2, r2, #44
	bne	.L246
.L236:
	add	r4, r4, #80
	cmp	r4, r6
	beq	.L247
	ldr	r3, [r10]
	sub	r1, r3, #239
	b	.L248
.L290:
	str	r7, [r4, #4]
	b	.L224
.L292:
	ldr	r2, [r4, #16]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L232
	b	.L291
.L247:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L284:
	cmp	ip, #0
	blt	.L295
	beq	.L289
	ldr	r2, [r4, #60]
	ldr	ip, [r4, #16]
	add	r2, r0, r2
	add	ip, r2, ip
	str	r2, [sp, #16]
	add	r2, lr, r1, lsl #11
	ldrb	r2, [r2, ip]	@ zero_extendqisi2
	cmp	r2, #0
	ldr	r2, [r4, #20]
	bne	.L230
	add	ip, lr, ip
	mov	r9, ip
	str	ip, [sp, #20]
	add	ip, r1, r2
	ldrb	r9, [r9, ip, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #11
	bne	.L230
	add	r9, ip, #2048
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L230
	ldr	ip, [sp, #20]
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	ip, [sp, #16]
	movne	r0, ip
	strne	ip, [r4, #12]
	b	.L230
.L293:
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	strgt	r8, [r4, #76]
	strgt	r2, [r4, #36]
	strgt	r8, [r4, #72]
	b	.L236
.L295:
	ldr	ip, [r4, #60]
	add	r2, lr, r1, lsl #11
	sub	ip, r0, ip
	ldrb	r2, [r2, ip]	@ zero_extendqisi2
	cmp	r2, #0
	str	ip, [sp, #16]
	ldr	r2, [r4, #20]
	bne	.L230
	ldr	ip, [sp, #16]
	add	r9, lr, ip
	add	ip, r1, r2
	str	r9, [sp, #20]
	ldrb	r9, [r9, ip, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #11
	bne	.L230
	ldr	r9, [sp, #20]
	add	ip, ip, #2048
	ldrb	r9, [r9, ip]	@ zero_extendqisi2
	cmp	r9, #0
	ldr	r9, [sp, #20]
	add	ip, r9, ip
	beq	.L230
	ldr	r9, [r4, #16]
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	r0, [sp, #16]
	strne	r0, [r4, #12]
	b	.L230
.L294:
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
	b	.L236
.L297:
	.align	2
.L296:
	.word	pMapPos
	.word	lettuce
	.word	collision
	.word	collisionMap
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
	ldr	r2, .L308
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L301
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L301
	cmp	r3, #18
	bne	.L300
.L301:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L300:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L309:
	.align	2
.L308:
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
	ldr	r7, .L470
	ldr	r8, .L470+4
	ldr	r1, .L470+8
	ldr	ip, [r8]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #8]
	ldr	lr, [r1]
	sub	sp, sp, #36
	add	fp, r2, ip, lsl #8
	add	r1, r0, r3
	str	r3, [sp, #28]
	add	r1, r1, #1
	add	r3, lr, fp
	ldrb	r4, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r4, #0
	lsl	r4, ip, #8
	ldr	ip, [r7, #24]
	str	r4, [sp, #24]
	str	ip, [sp, #20]
	bne	.L311
	mov	r5, ip
	add	ip, lr, r2
	add	ip, ip, r5
	add	ip, ip, r4
	ldrb	ip, [ip, r1, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L311
	ldr	r4, .L470+12
	mov	r1, ip
	str	ip, [r4]
	ldr	ip, .L470+16
	ldrh	ip, [ip]
	tst	ip, #64
	ldr	r6, .L470+20
	bne	.L465
.L313:
	ldr	r9, [r6, #12]
	cmp	r9, #0
	ldr	r10, [r4]
	bge	.L322
.L321:
	mov	r3, #0
	ldr	r1, [sp, #20]
	ldr	ip, [sp, #24]
	add	r1, r1, r2
	add	r1, r1, r0, lsl #11
	add	r1, r1, ip
	add	ip, fp, r0, lsl #11
	add	r1, lr, r1
	add	ip, lr, ip
.L324:
	ldrb	r5, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L323
	ldrb	r5, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L323
	sub	r3, r3, #1
	cmp	r3, r9
	bgt	.L324
.L322:
	ldr	r3, .L470+24
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L326
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L326
	ldr	r1, [r6, #12]
	cmp	r1, #0
	ble	.L327
	ldr	r5, [r7, #8]
	add	r0, fp, r5, lsl #11
	add	r0, lr, r0
.L329:
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	sub	r3, r3, #1
	bne	.L328
	ldr	ip, [sp, #20]
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	cmp	ip, #0
	sub	r0, r0, #2032
	bne	.L328
	cmn	r3, #2
	sub	r0, r0, #15
	mvn	r3, #0
	bne	.L329
	cmp	r10, #0
	beq	.L389
	b	.L385
.L311:
	mov	ip, #0
	mov	r5, #1
	ldr	r6, .L470+20
	str	ip, [r6, #28]
	str	ip, [r6, #16]
	str	ip, [r6, #32]
	ldr	ip, .L470+16
	ldrh	ip, [ip]
	ldr	r4, .L470+12
	tst	ip, #64
	mov	r1, r5
	str	r5, [r4]
	beq	.L313
.L465:
	ldr	ip, .L470+28
	ldrh	ip, [ip]
	tst	ip, #64
	bne	.L313
	ldr	ip, [r6, #16]
	cmp	ip, #0
	beq	.L466
	cmp	r1, #0
	beq	.L313
.L382:
	ldr	r10, [r6, #20]
	cmp	r10, #0
	bne	.L313
	sub	r1, r0, #1
	ldrb	r3, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L313
	ldr	ip, [sp, #20]
	add	r3, lr, r2
	add	r3, r3, ip
	ldr	ip, [sp, #24]
	add	r3, r3, ip
	ldrb	r3, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L313
	mvn	r9, #4
	mov	r3, #1
	str	r10, [r4]
	str	r9, [r6, #12]
	str	r3, [r6, #36]
	b	.L321
.L326:
	cmp	r10, #0
	bne	.L458
	ldr	r1, [r6, #12]
	cmp	r1, #0
	ldrgt	r5, [r7, #8]
	ble	.L460
.L389:
	mov	r3, #0
	ldr	r0, [sp, #20]
	add	r2, r0, r2
	ldr	r0, [sp, #24]
	add	r2, r2, r0
	ldr	r0, [sp, #28]
	add	r0, r0, r5
	add	r2, r2, r0, lsl #11
	add	fp, fp, r0, lsl #11
	add	r2, lr, r2
	add	lr, lr, fp
.L334:
	ldrb	r0, [lr, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L333
	ldrb	r0, [r2, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L333
	add	r3, r3, #1
	cmp	r3, r1
	blt	.L334
.L460:
	ldr	r9, .L470+32
	b	.L335
.L323:
	ldr	r1, [r6]
	cmp	r1, #0
	ldreq	r9, .L470+32
	ldreq	r1, [r9]
	add	r3, r3, #1
	add	r0, r0, r3
	addeq	r3, r1, r3
	streq	r3, [r9]
	mov	r1, #1
	mov	r3, #0
	str	r0, [r7, #8]
	str	r3, [r6, #12]
	str	r3, [r6, #36]
	str	r3, [r6, #40]
	str	r1, [r6, #28]
	b	.L322
.L328:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #12]
	str	r3, [r6, #36]
	str	r2, [r6, #28]
.L327:
	cmp	r10, #0
	beq	.L460
.L458:
	ldr	r5, [r7, #8]
.L385:
	mov	r3, #0
	ldr	r2, [r6, #20]
	cmp	r2, r3
	str	r3, [r6, #12]
	str	r3, [r6, #40]
	str	r3, [r6, #36]
	beq	.L355
	ldr	r1, [r6, #44]
	add	r1, r1, #1
	cmp	r1, #15
	movle	r2, #0
	movgt	r2, #1
	cmp	r10, #0
	cmpne	r1, #15
	str	r1, [r6, #44]
	bgt	.L467
.L356:
	cmp	r2, #0
	movne	r3, #0
	movne	r2, #2
	strne	r3, [r6, #20]
	strne	r3, [r6, #44]
	strne	r2, [r7, #68]
.L355:
	ldr	r3, .L470+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L357
	ldr	r2, .L470+28
	ldrh	r2, [r2]
	tst	r2, #256
	bne	.L357
.L358:
	mov	r3, #1
	cmp	r10, #0
	str	r3, [r6, #20]
	ldr	r9, [r7, #12]
	bne	.L468
	ldr	r2, [r6, #32]
	cmp	r2, #0
	beq	.L363
	ldr	r1, [r7, #68]
	b	.L361
.L357:
	tst	r3, #512
	beq	.L359
	ldr	r3, .L470+28
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L360
.L359:
	ldr	r1, [r7, #68]
	ldr	r9, [r7, #12]
.L361:
	ldr	r3, .L470+36
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L364
	ldr	r2, [r7, #8]
.L365:
	ldr	r3, [r7, #56]
	ldr	r4, .L470+40
	rsb	r3, r3, r3, lsl #31
	ldr	r1, [r4, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r1, r3, r9
	sub	r3, r3, #2
	stm	r4, {r2, r3}
	bl	animateSlash
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L371
	mov	fp, #1
	ldr	r5, .L470+44
	ldr	r9, .L470+48
	add	r10, r5, #504
.L375:
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
	beq	.L373
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L373
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L373:
	add	r5, r5, #72
	cmp	r10, r5
	bne	.L375
	mov	fp, #1
	ldr	r5, .L470+52
	add	r10, r5, #480
.L379:
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
	beq	.L377
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L377
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L377:
	add	r5, r5, #80
	cmp	r10, r5
	bne	.L379
	ldr	r3, [r7, #64]
	sub	r3, r3, #1
	str	r3, [r7, #64]
.L380:
	ldr	r3, .L470+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L381
	ldr	r3, .L470+28
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L381
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L381
	mov	r1, #1
	mov	r2, #20
	str	r3, [r7, #44]
	str	r3, [r4, #40]
	str	r3, [r4, #32]
	str	r3, [r4, #28]
	str	r1, [r7, #60]
	str	r2, [r7, #64]
.L381:
	ldr	r3, [r6, #4]
	add	r3, r3, #1
	str	r3, [r6, #4]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L363:
	str	r3, [r6, #32]
	str	r3, [r7, #68]
.L364:
	ldr	r3, .L470+24
	ldrh	r3, [r3, #48]
	ldr	r2, [r8]
	tst	r3, #32
	lsl	r3, r2, #8
	bne	.L366
	ldr	r1, .L470+8
	ldr	ip, [r7, #20]
	ldr	r1, [r1]
	sub	r0, r9, ip
	add	lr, r0, r3
	add	r4, r1, r5, lsl #11
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L366
	ldr	r4, [r7, #28]
	add	r5, r5, r4
	sub	r5, r5, #1
	add	r1, r1, r5, lsl #11
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r9, #0
	cmpge	r1, #0
	bne	.L366
	ldr	r1, [r6]
	cmp	r1, #0
	str	r0, [r7, #12]
	bne	.L392
	ldr	r5, .L470+56
	ldr	r1, [r5]
	cmp	r1, #0
	blt	.L367
	sub	lr, r0, r1
	cmp	lr, #119
	suble	r1, r1, ip
	strle	r1, [r5]
.L367:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r2, #0
	movne	r2, r1
	moveq	r2, #0
	cmp	r2, #0
	beq	.L392
	ldr	r3, .L470+60
	mov	lr, pc
	bx	r3
	mov	r9, #376
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
	str	r9, [r7, #12]
	str	r1, [r5]
	lsl	r3, r3, #8
.L366:
	ldr	r2, .L470+24
	ldrh	r2, [r2, #48]
	tst	r2, #16
	ldr	r2, [r7, #8]
	bne	.L461
	ldr	r1, .L470+8
	ldr	r0, [r7, #24]
	ldr	ip, [r7, #20]
	ldr	lr, [r1]
	add	r1, r0, r9
	add	r1, r1, ip
	add	r1, r1, r3
	add	r4, lr, r2, lsl #11
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L461
	ldr	r4, [r7, #28]
	add	r4, r2, r4
	sub	r4, r4, #1
	add	lr, lr, r4, lsl #11
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	cmp	r1, #0
	ldr	r4, .L470+64
	bne	.L368
	ldr	r1, [r4]
	add	r0, r0, r1
	cmp	r0, #2048
	bgt	.L368
	ldr	r0, [r6]
	add	r9, r9, ip
	cmp	r0, #0
	str	r9, [r7, #12]
	bne	.L368
	ldr	r5, .L470+56
	ldr	r0, [r5]
	cmp	r0, #256
	ble	.L369
.L370:
	ldr	r3, .L470+60
	mov	lr, pc
	bx	r3
	mov	r9, #120
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
	str	r9, [r7, #12]
	str	r1, [r5]
	ldr	r2, [r7, #8]
	b	.L368
.L461:
	ldr	r4, .L470+64
.L368:
	add	r3, r9, r3
	str	r3, [r4]
	b	.L365
.L333:
	ldr	r2, [r6]
	ldr	r9, .L470+32
	cmp	r2, #0
	ldreq	r2, [r9]
	sub	r3, r3, #1
	add	r5, r3, r5
	addeq	r3, r2, r3
	streq	r3, [r9]
	mov	r3, #1
	str	r5, [r7, #8]
	str	r3, [r4]
.L335:
	ldr	r3, .L470+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r6, #40]
	bne	.L339
	ldr	r2, [r6, #36]
	cmp	r2, #0
	beq	.L340
	ldr	r2, [r6, #28]
	cmp	r2, #0
	bne	.L341
	ldr	r2, [r6, #16]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L343
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L386
.L346:
	mov	r3, #1
	str	r3, [r6, #28]
	sub	r0, r0, #3
.L343:
	ldr	r3, .L470+68
	mov	lr, pc
	bx	r3
	ldr	r5, .L470+72
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L470+76
	mov	lr, pc
	bx	r5
	ldr	r3, .L470+80
	mov	lr, pc
	bx	r3
	ldr	r3, [r6, #4]
	tst	r3, #3
	ldreq	r3, [r6, #40]
	ldr	r10, [r4]
	addeq	r3, r3, #1
	streq	r3, [r6, #40]
	cmp	r10, #0
	str	r0, [r6, #12]
	ldr	r5, [r7, #8]
	ldr	r3, [r9]
	bne	.L385
	add	r5, r5, r0
	cmp	r3, #255
	str	r5, [r7, #8]
	sub	r2, r5, r3
	ble	.L453
.L351:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	beq	.L354
.L464:
	ldr	r2, [r6]
	cmp	r2, #0
	addeq	r0, r0, r3
	streq	r0, [r9]
.L354:
	ldr	r10, [r6, #20]
	cmp	r10, #0
	beq	.L355
	ldr	r2, [r6, #44]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r6, #44]
	mov	r10, #0
	movle	r2, #0
	movgt	r2, #1
	b	.L356
.L371:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r7, #60]
	str	r3, [r4, #40]
	b	.L380
.L339:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L344
.L387:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L345
.L344:
	ldr	r3, [r6, #36]
	cmp	r3, #0
	bne	.L346
	b	.L343
.L453:
	cmp	r2, #79
	cmpgt	r0, #0
	bgt	.L464
	cmp	r3, #0
	ble	.L354
	b	.L351
.L360:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L359
	b	.L358
.L468:
	mov	r1, #2
	mov	r3, #3
	str	r1, [r7, #68]
	str	r3, [r7, #20]
	b	.L361
.L466:
	ldr	r5, [r6, #36]
	cmp	r5, #0
	beq	.L469
	mov	r5, #1
	mvn	r9, #4
	cmp	r1, #0
	str	ip, [r6, #40]
	str	ip, [r6, #28]
	str	r5, [r6, #16]
	str	r9, [r6, #12]
	bne	.L382
	ldr	r10, [r4]
	b	.L321
.L467:
	mov	r1, #2
	mov	r2, #3
	str	r3, [r6, #20]
	str	r3, [r6, #44]
	str	r1, [r7, #68]
	str	r2, [r7, #20]
	b	.L355
.L340:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L343
	b	.L387
.L345:
	ldr	r3, [r6, #28]
	cmp	r3, #0
	bne	.L344
.L386:
	sub	r0, r0, #4
	b	.L343
.L392:
	mov	r9, r0
	b	.L366
.L341:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L387
	b	.L346
.L469:
	cmp	r1, #0
	bne	.L382
	mov	r3, #1
	mvn	r9, #4
	str	r1, [r6, #40]
	str	r1, [r6, #28]
	str	r3, [r6, #16]
	str	r3, [r6, #36]
	str	r9, [r6, #12]
	ldr	r10, [r4]
	b	.L321
.L369:
	sub	lr, r9, r0
	ldr	r10, .L470+84
	cmp	lr, #120
	movgt	lr, #1
	movle	lr, #0
	cmp	r1, r10
	movgt	lr, #0
	cmp	lr, #0
	beq	.L368
	add	ip, ip, r0
	cmp	ip, #256
	str	ip, [r5]
	ble	.L368
	b	.L370
.L471:
	.align	2
.L470:
	.word	player
	.word	bgIndex
	.word	collisionMap
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
	.word	waitForVBlank
	.word	pMapPos
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	1928
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
	ldr	r3, .L488
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L473
	ldr	r2, .L488+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L473
	mov	r2, #1
	ldr	r3, .L488+8
	str	r2, [r3, #48]
.L475:
	bl	updatePlayer
	bl	updateEnemies
	bl	updateBullets
	bl	updateMap
	ldr	r3, .L488+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L487
.L476:
	ldr	r3, .L488+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L477
	ldr	r3, [r3, #8]
	cmp	r3, #240
	ble	.L472
.L477:
	mov	r2, #1
	ldr	r3, .L488+8
	str	r2, [r3, #24]
.L472:
	pop	{r4, lr}
	bx	lr
.L473:
	cmp	r3, #0
	beq	.L475
	ldr	r3, .L488+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L488+8
	streq	r2, [r3, #48]
	b	.L475
.L487:
	ldr	r3, .L488+20
	mov	lr, pc
	bx	r3
	b	.L476
.L489:
	.align	2
.L488:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	currMap
	.word	player
	.word	updateBoss1
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
	ldr	lr, .L494
	ldr	ip, .L494+4
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
	bne	.L490
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L490:
	ldr	lr, [sp], #4
	bx	lr
.L495:
	.align	2
.L494:
	.word	collisionMap
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
	ldr	r0, .L499
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
.L500:
	.align	2
.L499:
	.word	collisionMap
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
	ldr	r2, .L502
	ldr	r3, .L502+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L503:
	.align	2
.L502:
	.word	bgIndex
	.word	collisionMap
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
	ldr	r3, .L505
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L506:
	.align	2
.L505:
	.word	collisionMap
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
	ldr	r2, .L509
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L509+4
	ldr	r9, [r2]
	ldr	r3, .L509+8
	ldr	r2, .L509+12
	ldr	fp, [r1, #8]
	ldr	r10, [r3]
	smull	r1, r3, r2, r9
	smull	r1, r7, r2, fp
	ldr	r8, .L509+16
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
	ldr	r2, .L509+20
	asr	r5, r5, #31
	ldr	r3, .L509+24
	ldr	r2, [r2, #8]
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
	ldr	r1, .L509+20
	add	lr, lr, #111
	add	r2, r2, #9
	str	r2, [r1, #8]
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L510:
	.align	2
.L509:
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
	ldr	r3, .L519
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L519+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #8]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L518
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L519+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L512
	ldr	lr, .L519+12
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
	ldrne	r4, .L519+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L512:
	ldr	r2, [r6, #52]
	ldr	lr, .L519+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L519+24
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
	ldr	lr, .L519+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L519+32
	strh	r5, [ip, r4]	@ movhi
	lsl	r4, r2, #3
	add	r2, ip, r2, lsl #3
	strh	r5, [ip, fp]	@ movhi
	strh	r7, [r1, #2]	@ movhi
	str	r3, [r6, #8]
	strh	r5, [ip, r4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L518:
	ldr	ip, .L519+8
	b	.L512
.L520:
	.align	2
.L519:
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
	mov	r2, #1
	ldr	r3, .L525
	push	{r4, lr}
	str	r2, [r3, #8]
	bl	drawHUD
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawFont
	ldr	r3, .L525+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L524
.L522:
	ldr	r3, .L525+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L525+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L525+16
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L525+20
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, .L525+24
	ldrh	r0, [r3]
	ldr	r3, .L525+28
	strh	r0, [r1, #22]	@ movhi
	ldr	r0, [r3]
	ldr	r3, .L525+32
	add	r2, r2, r0, lsl #8
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, lr}
	bx	lr
.L524:
	ldr	r3, .L525+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L525+40
	mov	lr, pc
	bx	r3
	b	.L522
.L526:
	.align	2
.L525:
	.word	.LANCHOR0
	.word	currMap
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	bgIndex
	.word	1431655766
	.word	drawBoss1
	.word	animateBoss1
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
	ldr	r3, .L528
	str	r2, [r3, #24]
	bx	lr
.L529:
	.align	2
.L528:
	.word	.LANCHOR0
	.size	gameOver, .-gameOver
	.global	cameraLock
	.global	dead
	.comm	maps,2176,4
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
	.comm	collisionMap,4,4
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
	.type	grounded, %object
	.size	grounded, 4
grounded:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cameraLock, %object
	.size	cameraLock, 4
cameraLock:
	.space	4
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
