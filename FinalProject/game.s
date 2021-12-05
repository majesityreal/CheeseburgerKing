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
	mov	r1, #512
	push	{r4, r5, r6, lr}
	ldr	r3, .L38
	add	r2, r3, #1024
.L35:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L35
	mov	r4, #0
	bl	initMaps
	mov	r5, #1
	bl	initPlayer
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #1
	mov	r2, #4
	ldr	r3, .L38+4
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
	ldr	r3, .L38+8
	ldr	r2, [r3]
	ldr	r3, .L38+12
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r2, .L38+16
	ldr	r1, [r3, #20]
	ldr	r0, .L38+20
	ldr	r3, .L38+24
	str	r4, [r2, #4]
	str	lr, [r2, #8]
	str	ip, [r0]
	str	r1, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	shadowOAM
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
	ldr	r2, .L41
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L42:
	.align	2
.L41:
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
	ldr	r3, .L47
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L47+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L47+8
	str	r3, [sp]
	ldr	r0, .L47+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L47+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L46
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L46:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L48:
	.align	2
.L47:
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
	ldr	r9, .L70
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L70+4
	ldr	r5, .L70+8
	ldr	r8, .L70+12
	sub	sp, sp, #20
.L57:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L49
	ldr	ip, [r7]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, ip, #239
	add	r1, r3, r2
	cmp	r0, r1
	movgt	lr, #0
	bgt	.L51
	add	lr, ip, #239
	cmp	r3, lr
	movgt	lr, #0
	movle	lr, #1
.L51:
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	mla	r0, r1, r0, r3
	sub	r3, ip, #476
	add	r1, r2, r0
	sub	r3, r3, #3
	cmp	r3, r1
	str	lr, [r4, #4]
	str	r0, [r4, #12]
	bgt	.L54
	add	r3, ip, #476
	add	r3, r3, #3
	cmp	r0, r3
	bgt	.L54
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
	beq	.L55
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r5, #76]
	cmp	r3, #0
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	moveq	r2, #1
	streq	r3, [r5, #72]
	mov	r3, #0
	streq	r2, [r5, #76]
	str	r3, [r4]
.L55:
	add	r6, r6, #1
	cmp	r6, #12
	add	r4, r4, #44
	bne	.L57
.L49:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L54:
	mov	r3, #0
	add	r2, r6, r6, lsl #2
	add	r6, r6, r2, lsl #1
	lsl	r6, r6, #2
	str	r3, [r9, r6]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r1, .L91
	ldr	r3, [r1, #52]
	ldr	r0, .L91+4
	cmp	r3, #0
	ldr	r2, [r0, #8]
	beq	.L73
	ldr	ip, .L91+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #8]
	bx	lr
.L73:
	ldr	ip, .L91+12
	ldr	r3, [r1, #12]
	push	{r4, r5, r6, lr}
	ldr	lr, [ip]
	ldr	ip, .L91+16
	sub	r3, r3, #3
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L91+8
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
	b	.L76
.L78:
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L77
.L77:
	ldr	r1, .L91+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L74:
	add	r2, r2, #1
	str	r2, [r0, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L74
.L83:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L74
.L82:
	ldr	r1, .L91+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L74
.L81:
	ldr	r1, .L91+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L74
.L80:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L74
.L79:
	ldr	r1, .L91+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L74
.L76:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L74
.L92:
	.align	2
.L91:
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
	ldr	r6, .L124
	ldr	r8, .L124+4
	ldr	r7, .L124+8
	ldr	r1, .L124+12
	ldr	r4, [r6, #8]
	ldr	r9, .L124+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L124+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L99
.L121:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L94
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
	beq	.L119
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L96:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L120
.L99:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L121
.L94:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L99
.L120:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L124+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L124+28
	ldr	r5, .L124+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L106
.L123:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L100
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
	beq	.L104
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L102:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L122
.L106:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L123
.L100:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L106
.L122:
	add	r4, r4, #13
	str	r4, [r6, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L104:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L105
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L102
.L119:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L96
.L105:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L102
.L125:
	.align	2
.L124:
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
	ldr	r1, .L146
	ldr	r3, .L146+4
	ldr	r8, [r1]
	ldr	r2, .L146+8
	ldr	r3, [r3]
	ldr	r4, .L146+12
	ldr	r1, .L146+16
	mov	r0, #0
	ldrh	r2, [r2]
	ldr	r6, [r1, #8]
	ldr	r5, .L146+20
	ldr	fp, .L146+24
	ldr	r10, .L146+28
	ldr	r9, .L146+32
	sub	sp, sp, #12
	add	r8, r8, r3, lsl #8
	add	r7, r4, #528
	b	.L133
.L145:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L127
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
	beq	.L130
	cmp	r0, #3
	beq	.L131
	cmp	r0, #1
	orreq	r3, r3, #4096
	strheq	r3, [lr, #2]	@ movhi
.L132:
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
	bne	.L129
	str	r2, [sp, #4]
	ldr	r1, [r4, #32]
	ldr	r3, .L146+36
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r0, #1
	str	r1, [r4, #28]
	ldr	r2, [sp, #4]
.L129:
	add	r4, r4, #44
	cmp	r4, r7
	beq	.L144
.L133:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L145
.L127:
	lsl	r1, r6, #3
	ldrh	r3, [r5, r1]
	add	r4, r4, #44
	orr	r3, r3, #512
	cmp	r4, r7
	strh	r3, [r5, r1]	@ movhi
	bne	.L133
.L144:
	cmp	r0, #0
	ldrne	r3, .L146+16
	strne	r6, [r3, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L131:
	orr	r3, r3, #8192
	strh	r3, [lr, #2]	@ movhi
	b	.L132
.L130:
	orr	r3, r3, #12288
	strh	r3, [lr, #2]	@ movhi
	b	.L132
.L147:
	.align	2
.L146:
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
	ldr	r1, .L158
	ldr	r3, [r1, #40]
	ldr	r0, .L158+4
	cmp	r3, #0
	ldr	r2, [r0, #8]
	beq	.L149
	ldr	ip, .L158+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #8]
	bx	lr
.L149:
	ldr	ip, .L158+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L158+16
	ldr	ip, .L158+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L158+8
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
.L159:
	.align	2
.L158:
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
	ldr	r3, .L212
	push	{r4, r5, r6, lr}
	ldr	r4, .L212+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L161
	cmp	r2, #0
	beq	.L210
	ldrh	r3, [r3, #48]
.L164:
	ldr	r3, .L212+8
	ldr	r1, [r3, #12]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L167
	movne	r1, #2
	strne	r1, [r4, #36]
.L167:
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
	beq	.L171
	ldr	r3, .L212+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L171
	mov	r1, #6
	ldr	r5, [r4, #32]
	ldr	r3, .L212+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	beq	.L174
.L173:
	ldr	r1, .L212+16
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L175
	ldr	r1, [r4, #36]
.L181:
	cmp	r1, #1
	beq	.L182
	cmp	r1, #6
	beq	.L182
	cmp	r1, #5
	beq	.L211
	cmp	r3, #0
	bne	.L175
.L182:
	ldr	r0, [r4, #44]
	ldr	r3, .L212+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L175:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L210:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L164
.L171:
	ldr	r5, [r4, #32]
	ldr	r3, .L212+16
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L173
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L182
.L174:
	ldr	r3, .L212+16
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	bne	.L182
	b	.L181
.L161:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L164
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L164
.L211:
	ldr	r0, [r4, #44]
	ldr	r3, .L212+20
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
	b	.L175
.L213:
	.align	2
.L212:
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
	ldr	r4, .L222
	ldr	r8, .L222+4
	ldr	r6, .L222+8
	add	r7, r4, #504
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
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L216
	ldr	r4, .L222+12
	ldr	r8, .L222+4
	ldr	r6, .L222+8
	add	r7, r4, #480
.L218:
	ldr	r5, [r4, #24]
	smull	r3, r2, r8, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L217
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L217:
	ldr	r3, [r4, #44]
	subs	r3, r3, #0
	movne	r3, #1
	add	r5, r5, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
	add	r4, r4, #80
	cmp	r4, r7
	bne	.L218
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L223:
	.align	2
.L222:
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
	ldr	r10, .L298
	ldr	r4, .L298+4
	ldr	r3, [r10]
	ldr	fp, .L298+8
	ldr	r8, .L298+12
	ldr	r5, .L298+16
	sub	sp, sp, #28
	sub	r1, r3, #239
	add	r6, r4, #504
.L235:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	ip, r0, r2
	cmp	r1, ip
	bgt	.L292
	add	ip, r3, #239
	cmp	r0, ip
	bgt	.L292
	ldr	ip, [r4]
	cmp	ip, #0
	mov	ip, #1
	str	ip, [r4, #4]
	beq	.L226
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L228
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L228:
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
	beq	.L230
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L230
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #72]
	ldrle	r3, .L298+20
	str	r2, [r5, #76]
	strle	r2, [r3, #24]
.L230:
	ldr	r3, [r10]
	ldr	r0, [r4, #12]
	sub	ip, r3, r0
	ldr	r2, [r4, #64]
	eor	r1, ip, ip, asr #31
	sub	r1, r1, ip, asr #31
	cmp	r1, r2
	ldr	lr, [r8]
	ldr	r1, [r4, #8]
	bge	.L291
	ldr	r2, [r5, #8]
	sub	r2, r2, r1
	cmp	r2, #0
	ldr	r9, [r4, #68]
	rsblt	r2, r2, #0
	cmp	r2, r9
	bge	.L291
	ldr	r2, .L298+20
	ldr	r2, [r2, #4]
	tst	r2, #1
	beq	.L286
.L291:
	ldr	r2, [r4, #20]
.L232:
	add	r2, r1, r2
	add	r2, r2, #1
	add	r0, lr, r0
	ldrb	ip, [r0, r2, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	add	r0, r0, r2, lsl #11
	bne	.L294
.L234:
	add	r1, r1, #1
	str	r1, [r4, #8]
.L293:
	sub	r1, r3, #239
.L226:
	add	r4, r4, #72
	cmp	r4, r6
	bne	.L235
	mov	r8, #1
	ldr	r4, .L298+24
	ldr	r7, .L298+8
	ldr	r9, .L298+20
	ldr	fp, .L298+28
	ldr	r5, .L298+16
	add	r6, r4, #480
.L250:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	ip, r0, r2
	cmp	r1, ip
	movgt	r1, #0
	bgt	.L236
	add	r1, r3, #239
	cmp	r0, r1
	movgt	r1, #0
	movle	r1, #1
.L236:
	ldr	ip, [r4]
	cmp	ip, #0
	str	r1, [r4, #4]
	beq	.L238
	ldr	r1, [r4, #44]
	cmp	r1, #0
	beq	.L239
	ldr	r1, [r5, #60]
	cmp	r1, #0
	streq	r1, [r4, #44]
.L239:
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
	beq	.L241
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L241
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r8, [r5, #76]
	str	r3, [r5, #72]
	strle	r8, [r9, #24]
.L241:
	ldr	r1, [r4, #12]
	ldr	r3, [r10]
	sub	r3, r3, r1
	ldr	r2, [r4, #60]
	eor	r0, r3, r3, asr #31
	sub	r0, r0, r3, asr #31
	cmp	r0, r2
	bge	.L238
	ldr	r0, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r0
	cmp	r2, #0
	ldr	ip, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, ip
	bge	.L238
	ldr	r2, [r9, #4]
	ands	r2, r2, #1
	bne	.L238
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L245
	strne	r8, [r4, #56]
.L245:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	beq	.L295
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L238
	mov	r3, #0
	ldr	r2, .L298+28
	str	r3, [r4, #76]
	str	r3, [r4, #72]
.L248:
	ldr	ip, [r2]
	cmp	ip, #0
	beq	.L296
	add	r3, r3, #1
	cmp	r3, #12
	add	r2, r2, #44
	bne	.L248
.L238:
	add	r4, r4, #80
	cmp	r4, r6
	beq	.L249
	ldr	r3, [r10]
	sub	r1, r3, #239
	b	.L250
.L292:
	str	r7, [r4, #4]
	b	.L226
.L294:
	ldr	r2, [r4, #16]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L234
	b	.L293
.L249:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L286:
	cmp	ip, #0
	blt	.L297
	beq	.L291
	ldr	r2, [r4, #60]
	ldr	ip, [r4, #16]
	add	r2, r0, r2
	add	ip, r2, ip
	str	r2, [sp, #16]
	add	r2, lr, r1, lsl #11
	ldrb	r2, [r2, ip]	@ zero_extendqisi2
	cmp	r2, #0
	ldr	r2, [r4, #20]
	bne	.L232
	add	ip, lr, ip
	mov	r9, ip
	str	ip, [sp, #20]
	add	ip, r1, r2
	ldrb	r9, [r9, ip, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #11
	bne	.L232
	add	r9, ip, #2048
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L232
	ldr	ip, [sp, #20]
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	ip, [sp, #16]
	movne	r0, ip
	strne	ip, [r4, #12]
	b	.L232
.L295:
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	strgt	r8, [r4, #76]
	strgt	r2, [r4, #36]
	strgt	r8, [r4, #72]
	b	.L238
.L297:
	ldr	ip, [r4, #60]
	add	r2, lr, r1, lsl #11
	sub	ip, r0, ip
	ldrb	r2, [r2, ip]	@ zero_extendqisi2
	cmp	r2, #0
	str	ip, [sp, #16]
	ldr	r2, [r4, #20]
	bne	.L232
	ldr	ip, [sp, #16]
	add	r9, lr, ip
	add	ip, r1, r2
	str	r9, [sp, #20]
	ldrb	r9, [r9, ip, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #11
	bne	.L232
	ldr	r9, [sp, #20]
	add	ip, ip, #2048
	ldrb	r9, [r9, ip]	@ zero_extendqisi2
	cmp	r9, #0
	ldr	r9, [sp, #20]
	add	ip, r9, ip
	beq	.L232
	ldr	r9, [r4, #16]
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	r0, [sp, #16]
	strne	r0, [r4, #12]
	b	.L232
.L296:
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
	b	.L238
.L299:
	.align	2
.L298:
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
	ldr	r2, .L310
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L303
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L303
	cmp	r3, #18
	bne	.L302
.L303:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L302:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L311:
	.align	2
.L310:
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
	ldr	r7, .L479
	ldr	r8, .L479+4
	ldr	r1, .L479+8
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
	bne	.L313
	mov	r5, ip
	add	ip, lr, r2
	add	ip, ip, r5
	add	ip, ip, r4
	ldrb	ip, [ip, r1, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L313
	ldr	r4, .L479+12
	mov	r1, ip
	str	ip, [r4]
	ldr	ip, .L479+16
	ldrh	ip, [ip]
	tst	ip, #64
	ldr	r6, .L479+20
	bne	.L473
.L315:
	ldr	r9, [r6, #12]
	cmp	r9, #0
	ldr	r10, [r4]
	bge	.L324
.L323:
	mov	r3, #0
	ldr	r1, [sp, #20]
	ldr	ip, [sp, #24]
	add	r1, r1, r2
	add	r1, r1, r0, lsl #11
	add	r1, r1, ip
	add	ip, fp, r0, lsl #11
	add	r1, lr, r1
	add	ip, lr, ip
.L326:
	ldrb	r5, [ip, r3, lsl #11]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L325
	ldrb	r5, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L325
	sub	r3, r3, #1
	cmp	r3, r9
	bgt	.L326
.L324:
	ldr	r3, .L479+24
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L328
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L328
	ldr	r1, [r6, #12]
	cmp	r1, #0
	ble	.L329
	ldr	r5, [r7, #8]
	add	r0, fp, r5, lsl #11
	add	r0, lr, r0
.L331:
	ldrb	ip, [r0]	@ zero_extendqisi2
	cmp	ip, #0
	sub	r3, r3, #1
	bne	.L330
	ldr	ip, [sp, #20]
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	cmp	ip, #0
	sub	r0, r0, #2032
	bne	.L330
	cmn	r3, #2
	sub	r0, r0, #15
	mvn	r3, #0
	bne	.L331
	cmp	r10, #0
	beq	.L394
	b	.L390
.L313:
	mov	ip, #0
	mov	r5, #1
	ldr	r6, .L479+20
	str	ip, [r6, #28]
	str	ip, [r6, #16]
	str	ip, [r6, #32]
	ldr	ip, .L479+16
	ldrh	ip, [ip]
	ldr	r4, .L479+12
	tst	ip, #64
	mov	r1, r5
	str	r5, [r4]
	beq	.L315
.L473:
	ldr	ip, .L479+28
	ldrh	ip, [ip]
	tst	ip, #64
	bne	.L315
	ldr	ip, [r6, #16]
	cmp	ip, #0
	beq	.L474
	cmp	r1, #0
	beq	.L315
.L387:
	ldr	r10, [r6, #20]
	cmp	r10, #0
	bne	.L315
	sub	r1, r0, #1
	ldrb	r3, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L315
	ldr	ip, [sp, #20]
	add	r3, lr, r2
	add	r3, r3, ip
	ldr	ip, [sp, #24]
	add	r3, r3, ip
	ldrb	r3, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L315
	mvn	r9, #4
	mov	r3, #1
	str	r10, [r4]
	str	r9, [r6, #12]
	str	r3, [r6, #36]
	b	.L323
.L328:
	cmp	r10, #0
	bne	.L466
	ldr	r1, [r6, #12]
	cmp	r1, #0
	ldrgt	r5, [r7, #8]
	ble	.L468
.L394:
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
.L336:
	ldrb	r0, [lr, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L335
	ldrb	r0, [r2, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L335
	add	r3, r3, #1
	cmp	r3, r1
	blt	.L336
.L468:
	ldr	r9, .L479+32
	b	.L337
.L325:
	ldr	r1, [r6]
	cmp	r1, #0
	ldreq	r9, .L479+32
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
	b	.L324
.L330:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #12]
	str	r3, [r6, #36]
	str	r2, [r6, #28]
.L329:
	cmp	r10, #0
	beq	.L468
.L466:
	ldr	r5, [r7, #8]
.L390:
	mov	r3, #0
	ldr	r2, [r6, #20]
	cmp	r2, r3
	str	r3, [r6, #12]
	str	r3, [r6, #40]
	str	r3, [r6, #36]
	beq	.L357
	ldr	r1, [r6, #44]
	add	r1, r1, #1
	cmp	r1, #15
	movle	r2, #0
	movgt	r2, #1
	cmp	r10, #0
	cmpne	r1, #15
	str	r1, [r6, #44]
	bgt	.L475
.L358:
	cmp	r2, #0
	movne	r3, #0
	movne	r2, #2
	strne	r3, [r6, #20]
	strne	r3, [r6, #44]
	strne	r2, [r7, #68]
.L357:
	ldr	r3, .L479+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L359
	ldr	r2, .L479+28
	ldrh	r2, [r2]
	tst	r2, #256
	bne	.L359
.L360:
	mov	r3, #1
	cmp	r10, #0
	str	r3, [r6, #20]
	ldr	r9, [r7, #12]
	bne	.L476
	ldr	r2, [r6, #32]
	cmp	r2, #0
	beq	.L365
	ldr	r1, [r7, #68]
	b	.L363
.L359:
	tst	r3, #512
	beq	.L361
	ldr	r3, .L479+28
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L362
.L361:
	ldr	r1, [r7, #68]
	ldr	r9, [r7, #12]
.L363:
	ldr	r3, .L479+36
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L366
	ldr	r2, [r7, #8]
.L367:
	ldr	r3, [r7, #56]
	ldr	r4, .L479+40
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
	ble	.L373
	mov	fp, #1
	ldr	r5, .L479+44
	ldr	r9, .L479+48
	add	r10, r5, #504
.L377:
	ldr	r1, [r8]
	ldr	r0, [r4, #4]
	ldr	ip, [r5, #20]
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
	beq	.L375
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L375
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L375:
	add	r5, r5, #72
	cmp	r10, r5
	bne	.L377
	mov	fp, #1
	ldr	r5, .L479+52
	add	r10, r5, #480
.L381:
	ldr	r1, [r8]
	ldr	r0, [r4, #4]
	ldr	ip, [r5, #20]
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
	beq	.L379
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L379
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L379:
	add	r5, r5, #80
	cmp	r10, r5
	bne	.L381
	ldr	r3, .L479+56
	ldr	r5, [r3]
	cmp	r5, #1
	beq	.L477
.L383:
	ldr	r3, [r7, #64]
	sub	r3, r3, #1
	str	r3, [r7, #64]
.L385:
	ldr	r3, .L479+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L386
	ldr	r3, .L479+28
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L386
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L386
	mov	r1, #1
	mov	r2, #20
	str	r3, [r7, #44]
	str	r3, [r4, #40]
	str	r3, [r4, #32]
	str	r3, [r4, #28]
	str	r1, [r7, #60]
	str	r2, [r7, #64]
.L386:
	ldr	r3, [r6, #4]
	add	r3, r3, #1
	str	r3, [r6, #4]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L365:
	str	r3, [r6, #32]
	str	r3, [r7, #68]
.L366:
	ldr	r3, .L479+24
	ldrh	r3, [r3, #48]
	ldr	r2, [r8]
	tst	r3, #32
	lsl	r3, r2, #8
	bne	.L368
	ldr	r1, .L479+8
	ldr	ip, [r7, #20]
	ldr	r1, [r1]
	sub	r0, r9, ip
	add	lr, r0, r3
	add	r4, r1, r5, lsl #11
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L368
	ldr	r4, [r7, #28]
	add	r5, r5, r4
	sub	r5, r5, #1
	add	r1, r1, r5, lsl #11
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r9, #0
	cmpge	r1, #0
	bne	.L368
	ldr	r1, [r6]
	cmp	r1, #0
	str	r0, [r7, #12]
	bne	.L397
	ldr	r5, .L479+60
	ldr	r1, [r5]
	cmp	r1, #0
	blt	.L369
	sub	lr, r0, r1
	cmp	lr, #119
	suble	r1, r1, ip
	strle	r1, [r5]
.L369:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r2, #0
	movne	r2, r1
	moveq	r2, #0
	cmp	r2, #0
	beq	.L397
	ldr	r3, .L479+64
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
.L368:
	ldr	r2, .L479+24
	ldrh	r2, [r2, #48]
	tst	r2, #16
	ldr	r2, [r7, #8]
	bne	.L469
	ldr	r1, .L479+8
	ldr	r0, [r7, #24]
	ldr	ip, [r7, #20]
	ldr	lr, [r1]
	add	r1, r0, r9
	add	r1, r1, ip
	add	r1, r1, r3
	add	r4, lr, r2, lsl #11
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L469
	ldr	r4, [r7, #28]
	add	r4, r2, r4
	sub	r4, r4, #1
	add	lr, lr, r4, lsl #11
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	cmp	r1, #0
	ldr	r4, .L479+68
	bne	.L370
	ldr	r1, [r4]
	add	r0, r0, r1
	cmp	r0, #2048
	bgt	.L370
	ldr	r0, [r6]
	add	r9, r9, ip
	cmp	r0, #0
	str	r9, [r7, #12]
	bne	.L370
	ldr	r5, .L479+60
	ldr	r0, [r5]
	cmp	r0, #256
	ble	.L371
.L372:
	ldr	r3, .L479+64
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
	b	.L370
.L469:
	ldr	r4, .L479+68
.L370:
	add	r3, r9, r3
	str	r3, [r4]
	b	.L367
.L335:
	ldr	r2, [r6]
	ldr	r9, .L479+32
	cmp	r2, #0
	ldreq	r2, [r9]
	sub	r3, r3, #1
	add	r5, r3, r5
	addeq	r3, r2, r3
	streq	r3, [r9]
	mov	r3, #1
	str	r5, [r7, #8]
	str	r3, [r4]
.L337:
	ldr	r3, .L479+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r6, #40]
	bne	.L341
	ldr	r2, [r6, #36]
	cmp	r2, #0
	beq	.L342
	ldr	r2, [r6, #28]
	cmp	r2, #0
	bne	.L343
	ldr	r2, [r6, #16]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L345
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L391
.L348:
	mov	r3, #1
	str	r3, [r6, #28]
	sub	r0, r0, #3
.L345:
	ldr	r3, .L479+72
	mov	lr, pc
	bx	r3
	ldr	r5, .L479+76
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L479+80
	mov	lr, pc
	bx	r5
	ldr	r3, .L479+84
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
	bne	.L390
	add	r5, r5, r0
	cmp	r3, #255
	str	r5, [r7, #8]
	sub	r2, r5, r3
	ble	.L461
.L353:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	beq	.L356
.L472:
	ldr	r2, [r6]
	cmp	r2, #0
	addeq	r0, r0, r3
	streq	r0, [r9]
.L356:
	ldr	r10, [r6, #20]
	cmp	r10, #0
	beq	.L357
	ldr	r2, [r6, #44]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r6, #44]
	mov	r10, #0
	movle	r2, #0
	movgt	r2, #1
	b	.L358
.L373:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r7, #60]
	str	r3, [r4, #40]
	b	.L385
.L341:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L346
.L392:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L347
.L346:
	ldr	r3, [r6, #36]
	cmp	r3, #0
	bne	.L348
	b	.L345
.L461:
	cmp	r2, #79
	cmpgt	r0, #0
	bgt	.L472
	cmp	r3, #0
	ble	.L356
	b	.L353
.L362:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L361
	b	.L360
.L476:
	mov	r1, #2
	mov	r3, #3
	str	r1, [r7, #68]
	str	r3, [r7, #20]
	b	.L363
.L475:
	mov	r1, #2
	mov	r2, #3
	str	r3, [r6, #20]
	str	r3, [r6, #44]
	str	r1, [r7, #68]
	str	r2, [r7, #20]
	b	.L357
.L474:
	ldr	r5, [r6, #36]
	cmp	r5, #0
	beq	.L478
	mov	r5, #1
	mvn	r9, #4
	cmp	r1, #0
	str	ip, [r6, #40]
	str	ip, [r6, #28]
	str	r5, [r6, #16]
	str	r9, [r6, #12]
	bne	.L387
	ldr	r10, [r4]
	b	.L323
.L342:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L345
	b	.L392
.L347:
	ldr	r3, [r6, #28]
	cmp	r3, #0
	bne	.L346
.L391:
	sub	r0, r0, #4
	b	.L345
.L397:
	mov	r9, r0
	b	.L368
.L477:
	ldr	r8, .L479+88
	add	r0, r8, #12
	ldm	r0, {r0, r2}
	ldr	r3, [r4, #24]
	ldmib	r8, {r1, ip}
	str	r2, [sp, #12]
	ldr	r2, [r4, #16]
	str	r0, [sp, #8]
	ldr	r0, [r4, #4]
	stm	sp, {r1, ip}
	sub	r2, r2, r3
	add	r0, r3, r0
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L383
	ldr	r3, [r8, #32]
	cmp	r3, #0
	ldreq	r3, [r8]
	subeq	r3, r3, #1
	streq	r5, [r8, #32]
	streq	r3, [r8]
	b	.L383
.L343:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L392
	b	.L348
.L478:
	cmp	r1, #0
	bne	.L387
	mov	r3, #1
	mvn	r9, #4
	str	r1, [r6, #40]
	str	r1, [r6, #28]
	str	r3, [r6, #16]
	str	r3, [r6, #36]
	str	r9, [r6, #12]
	ldr	r10, [r4]
	b	.L323
.L371:
	sub	lr, r9, r0
	ldr	r10, .L479+92
	cmp	lr, #120
	movgt	lr, #1
	movle	lr, #0
	cmp	r1, r10
	movgt	lr, #0
	cmp	lr, #0
	beq	.L370
	add	ip, ip, r0
	cmp	ip, #256
	str	ip, [r5]
	ble	.L370
	b	.L372
.L480:
	.align	2
.L479:
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
	.word	currMap
	.word	hOff
	.word	waitForVBlank
	.word	pMapPos
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	boss
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
	ldr	r3, .L497
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L482
	ldr	r2, .L497+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L482
	mov	r2, #1
	ldr	r3, .L497+8
	str	r2, [r3, #48]
.L484:
	bl	updatePlayer
	bl	updateEnemies
	bl	updateBullets
	bl	updateMap
	ldr	r3, .L497+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L496
.L485:
	ldr	r3, .L497+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L486
	ldr	r3, [r3, #8]
	cmp	r3, #240
	ble	.L481
.L486:
	mov	r2, #1
	ldr	r3, .L497+8
	str	r2, [r3, #24]
.L481:
	pop	{r4, lr}
	bx	lr
.L482:
	cmp	r3, #0
	beq	.L484
	ldr	r3, .L497+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L497+8
	streq	r2, [r3, #48]
	b	.L484
.L496:
	ldr	r3, .L497+20
	mov	lr, pc
	bx	r3
	b	.L485
.L498:
	.align	2
.L497:
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
	ldr	lr, .L503
	ldr	ip, .L503+4
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
	bne	.L499
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L499:
	ldr	lr, [sp], #4
	bx	lr
.L504:
	.align	2
.L503:
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
	ldr	r0, .L508
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
.L509:
	.align	2
.L508:
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
	ldr	r2, .L511
	ldr	r3, .L511+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L512:
	.align	2
.L511:
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
	ldr	r3, .L514
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L515:
	.align	2
.L514:
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
	ldr	r2, .L518
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L518+4
	ldr	r9, [r2]
	ldr	r3, .L518+8
	ldr	r2, .L518+12
	ldr	fp, [r1, #8]
	ldr	r10, [r3]
	smull	r1, r3, r2, r9
	smull	r1, r7, r2, fp
	ldr	r8, .L518+16
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
	ldr	r2, .L518+20
	asr	r5, r5, #31
	ldr	r3, .L518+24
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
	ldr	r1, .L518+20
	add	lr, lr, #111
	add	r2, r2, #9
	str	r2, [r1, #8]
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L519:
	.align	2
.L518:
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
	ldr	r3, .L528
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L528+4
	ldr	r3, [r3, #72]
	ldr	r0, [r6, #8]
	cmp	r3, #0
	add	r4, r0, #1
	ble	.L527
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	ip, .L528+8
	cmp	r3, #1
	lsl	lr, r0, #3
	addeq	r3, r0, #2
	strh	r2, [ip, lr]	@ movhi
	add	lr, ip, r0, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	r0, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L521
	ldr	lr, .L528+12
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
	ldrne	r4, .L528+16
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [ip, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, r0, #4
	addne	r0, r0, #3
.L521:
	ldr	r2, [r6, #52]
	ldr	lr, .L528+20
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L528+24
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
	ldr	lr, .L528+28
	lsl	r4, r4, #3
	add	r3, r0, #4
	ldr	r0, .L528+32
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
.L527:
	ldr	ip, .L528+8
	b	.L521
.L529:
	.align	2
.L528:
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
	ldr	r3, .L536
	push	{r4, lr}
	str	r2, [r3, #8]
	bl	drawHUD
	ldr	r3, .L536+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L535
.L531:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawFont
	ldr	r3, .L536+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L536+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L536+16
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L536+20
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, .L536+24
	ldrh	r0, [r3]
	ldr	r3, .L536+28
	strh	r0, [r1, #22]	@ movhi
	ldr	r0, [r3]
	ldr	r3, .L536+32
	add	r2, r2, r0, lsl #8
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, lr}
	bx	lr
.L535:
	mov	r1, #512
	ldr	r3, .L536+16
	add	r2, r3, #1024
.L532:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L532
	ldr	r3, .L536+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L536+40
	mov	lr, pc
	bx	r3
	b	.L531
.L537:
	.align	2
.L536:
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
	ldr	r3, .L539
	str	r2, [r3, #24]
	bx	lr
.L540:
	.align	2
.L539:
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
