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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameOver.part.0, %function
gameOver.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #1
	mov	ip, #7
	mov	r0, #0
	ldr	r2, .L3
	ldr	r3, .L3+4
	str	r1, [r2]
	str	r1, [r2, #4]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	player
	.size	gameOver.part.0, .-gameOver.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, lr}
	mov	ip, #6
	mov	r7, #8
	mov	r6, #16
	mov	r5, #1
	mov	r4, #3
	mov	lr, #2
	mov	r0, #4
	ldr	r3, .L10
	ldr	r1, [r3]
	ldr	r3, .L10+4
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
	str	r7, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #68]
	str	ip, [r3, #48]
	str	r0, [r3, #72]
	beq	.L6
	cmp	r1, r5
	moveq	r1, #80
	moveq	r2, #120
	streq	r1, [r3, #8]
	streq	r2, [r3, #12]
.L5:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L6:
	mov	r1, #159
	mov	r2, #35
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L11:
	.align	2
.L10:
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
	mvn	r0, #2
	mov	r1, #4
	ldr	r3, .L14
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
.L15:
	.align	2
.L14:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L27
	ldr	r9, [r3, #8]
	ldr	r1, .L27+4
	rsbs	r8, r9, #1
	mov	r3, r1
	movcc	r8, #0
	mov	r2, #0
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mov	r4, #128
	mov	lr, #96
	mov	ip, #1
	add	r0, r1, #504
.L17:
	str	r2, [r3]
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r5, [r3, #40]
	str	r2, [r3, #56]
	str	r4, [r3, #64]
	str	lr, [r3, #68]
	str	ip, [r3, #60]
	str	r8, [r3, #48]
	str	r2, [r3, #44]
	add	r3, r3, #72
	cmp	r3, r0
	bne	.L17
	ldr	r2, .L27+8
	cmp	r9, #0
	movne	r8, #0
	moveq	r8, #2
	mov	r3, r2
	mov	r0, #0
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mov	r4, #240
	mov	ip, #60
	add	lr, r2, #480
.L18:
	str	r0, [r3]
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	str	r5, [r3, #40]
	str	r0, [r3, #28]
	str	r0, [r3, #56]
	str	r4, [r3, #60]
	str	ip, [r3, #64]
	str	ip, [r3, #68]
	str	r8, [r3, #48]
	str	r0, [r3, #44]
	add	r3, r3, #80
	cmp	r3, lr
	bne	.L18
	mov	ip, #0
	mov	lr, #8
	mov	r6, #4
	mvn	r5, #0
	mov	r3, #1
	ldr	r0, .L27+12
	add	r4, r0, #264
.L19:
	str	ip, [r0]
	str	lr, [r0, #16]
	str	lr, [r0, #20]
	str	ip, [r0, #24]
	str	ip, [r0, #28]
	str	r6, [r0, #32]
	str	r5, [r0, #36]
	str	r3, [r0, #40]
	add	r0, r0, #44
	cmp	r0, r4
	bne	.L19
	ldr	r0, .L27+16
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L20
	cmp	r0, #1
	ldreq	r3, .L27+20
	moveq	lr, pc
	bxeq	r3
.L16:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
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
	ldr	lr, .L27+24
	str	lr, [r1, #228]
	ldr	lr, .L27+28
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
	ldr	r1, .L27+32
	str	r1, [r2, #12]
	ldr	r1, .L27+36
	str	r1, [r2, #92]
	ldr	r1, .L27+40
	str	r1, [r2, #172]
	add	r1, r1, #272
	str	r3, [r2]
	str	r3, [r2, #80]
	str	r3, [r2, #160]
	str	r7, [r2, #168]
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
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #22528
	mov	r7, #0
	mov	r8, #67108864
	ldr	r5, .L36
	ldr	r6, [r5]
	ldr	r2, .L36+4
	cmp	r6, #1
	str	r7, [r2]
	strh	r3, [r8, #10]	@ movhi
	beq	.L30
	cmp	r6, #2
	beq	.L31
	cmp	r6, r7
	beq	.L34
	ldr	r4, .L36+8
.L32:
	ldr	r3, .L36+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r6, .L36+16
	ldr	r1, [r3, #4]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L36+20
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
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L30:
	ldr	r3, .L36+24
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L36+28
	ldr	r3, .L36+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	ldr	r4, .L36+8
	ldr	r2, .L36+36
	ldr	r1, .L36+40
	ldr	r0, .L36+44
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r7, [r3, #16]
	str	r7, [r3, #20]
	str	r0, [r3, #12]
	ldr	r2, .L36+48
	ldr	r1, .L36+52
	ldr	r3, .L36+56
	str	r1, [r2]
	str	r6, [r3, #4]
	strh	r7, [r8, #26]	@ movhi
	b	.L32
.L34:
	ldr	r3, .L36+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L36+64
	ldr	r3, .L36+32
	mov	lr, pc
	bx	r3
	mov	r0, #60
	mov	r1, #66
	mov	r2, #28
	ldr	r3, [r5]
	ldr	r4, .L36+8
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r0, [r3, #20]
	str	r1, [r3, #28]
	ldr	r0, .L36+68
	ldr	r1, .L36+72
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, .L36+76
	ldr	r1, .L36+80
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r6, [r3, #16]
	ldr	r0, .L36+56
	ldr	r1, .L36+48
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	ldr	r3, .L36+84
	str	r6, [r0, #4]
	str	r3, [r1]
	b	.L32
.L31:
	mov	r2, #1
	ldr	r3, .L36+56
	ldr	r4, .L36+8
	str	r2, [r3, #12]
	b	.L32
.L37:
	.align	2
.L36:
	.word	currMap
	.word	bgIndex
	.word	maps
	.word	waitForVBlank
	.word	DMANow
	.word	100712448
	.word	bossSong_length
	.word	bossSong_data
	.word	playSoundA
	.word	boss1Map
	.word	boss1Pal
	.word	boss1Tiles
	.word	collisionMap
	.word	boss1CollisionBitmap
	.word	.LANCHOR0
	.word	map1Song_length
	.word	map1Song_data
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L45
	ldr	r3, [r6]
	cmp	r3, #2
	beq	.L44
	ldr	r3, .L45+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L45+8
.L40:
	mov	r2, #0
	mov	r1, #512
	ldr	r3, .L45+12
	str	r2, [r5, #12]
	add	r2, r3, #1024
.L41:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L41
	mov	r4, #0
	bl	initMaps
	mov	r7, #1
	bl	initPlayer
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #2
	mov	r2, #4
	ldr	r3, .L45+16
	str	r7, [r3, #40]
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
	mov	r1, #2
	ldr	r2, [r6]
	ldr	r3, .L45+20
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r2, [r3, #20]
	ldr	r0, .L45+24
	ldr	r3, .L45+28
	str	r4, [r5, #16]
	str	r4, [r5, #20]
	str	r1, [r5, #24]
	str	ip, [r0]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L44:
	mov	r2, #1
	ldr	r5, .L45+8
	ldr	r3, .L45+32
	str	r2, [r5, #12]
	mov	lr, pc
	bx	r3
	b	.L40
.L46:
	.align	2
.L45:
	.word	currMap
	.word	startTimer
	.word	.LANCHOR0
	.word	shadowOAM
	.word	slash
	.word	maps
	.word	hOff
	.word	vOff
	.word	pauseTimer
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
	ldr	r2, .L48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L49:
	.align	2
.L48:
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
	ldr	r3, .L54
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L54+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L54+8
	str	r3, [sp]
	ldr	r0, .L54+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L54+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L53:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L55:
	.align	2
.L54:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L77
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L77+4
	ldr	r5, .L77+8
	ldr	r8, .L77+12
	sub	sp, sp, #20
.L63:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, r3, #239
	add	r1, ip, r2
	cmp	r0, r1
	sub	r1, r3, #476
	sub	r1, r1, #3
	bgt	.L59
	add	lr, r3, #239
	cmp	ip, lr
	movgt	r10, #0
	movle	r10, #1
	add	r0, r4, #36
	ldm	r0, {r0, fp}
	mla	r0, fp, r0, ip
	add	fp, r2, r0
	cmp	r1, fp
	str	r0, [r4, #12]
	str	r10, [r4, #4]
	ble	.L75
.L60:
	cmp	ip, lr
	bgt	.L65
.L61:
	ldr	r1, [r4, #8]
	ldr	ip, [r5, #24]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	ldr	lr, [r5, #28]
	stmib	sp, {r3, ip}
	str	lr, [sp, #12]
	add	r0, r0, #3
	ldr	r3, [r4, #20]
	add	r1, r1, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L62
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L62
	ldr	r10, [r5, #76]
	cmp	r10, #0
	beq	.L76
.L62:
	add	r6, r6, #1
	cmp	r6, #6
	add	r4, r4, #44
	bne	.L63
.L56:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L59:
	mov	lr, #0
	add	r0, r4, #36
	ldm	r0, {r0, r10}
	mla	r0, r10, r0, ip
	add	ip, r2, r0
	cmp	r1, ip
	str	r0, [r4, #12]
	str	lr, [r4, #4]
	bgt	.L65
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L61
.L65:
	mov	r3, #0
	add	r2, r6, r6, lsl #2
	add	r6, r6, r2, lsl #1
	lsl	r6, r6, #2
	str	r3, [r9, r6]!
	str	r3, [r9, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L76:
	ldr	r3, .L77+16
	mov	r2, r10
	ldr	r1, [r3]
	ldr	r0, .L77+20
	ldr	r3, .L77+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	str	r10, [r4]
	str	r3, [r5, #72]
	str	r2, [r5, #76]
	b	.L62
.L75:
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L61
	b	.L60
.L78:
	.align	2
.L77:
	.word	bl_bullets
	.word	pMapPos
	.word	player
	.word	collision
	.word	sfx_player_hurt_length
	.word	sfx_player_hurt_data
	.word	playSoundB
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
	ldr	r2, .L105
	ldr	r3, [r2, #52]
	ldr	r0, .L105+4
	cmp	r3, #0
	push	{r4, r5, r6, r7, lr}
	ldr	r1, [r0, #24]
	ldr	r4, [r2, #36]
	beq	.L80
	ldr	ip, .L105+8
	lsl	r5, r1, #3
	ldrh	r3, [ip, r5]
	add	lr, r1, #1
	orr	r3, r3, #512
	cmp	r4, #1
	strh	r3, [ip, r5]	@ movhi
	str	lr, [r0, #24]
	bne	.L82
.L81:
	ldr	r3, [r0, #28]
	add	r3, r3, #1
	cmp	r3, #30
	str	r3, [r0, #28]
	ble	.L79
	ldr	r4, .L105+12
	smull	r5, r4, r3, r4
	ldr	r5, .L105+16
	asr	r3, r3, #31
	rsb	r3, r3, r4, asr #1
	umull	r4, r5, r3, r5
	ldr	r6, [r2, #28]
	ldr	r4, [r2, #8]
	lsr	r5, r5, #2
	add	r5, r5, r5, lsl #1
	add	r4, r4, r6
	ldr	r6, .L105+20
	sub	r3, r3, r5, lsl #1
	ldr	r6, [r6]
	add	r3, r3, #432
	add	r5, ip, lr, lsl #3
	lsl	r3, r3, #1
	sub	r4, r4, #7
	strh	r3, [r5, #4]	@ movhi
	sub	r4, r4, r6
	ldr	r5, .L105+24
	ldr	r6, [r2, #56]
	ldrh	r3, [r2, #12]
	cmp	r6, #0
	ldrh	r2, [r5]
	subeq	r3, r3, #7
	subne	r3, r3, r2
	subeq	r3, r3, r2
	lslne	r3, r3, #23
	lsleq	r3, r3, #23
	lsl	lr, lr, #3
	and	r4, r4, #255
	lsrne	r3, r3, #23
	lsreq	r3, r3, #23
	strh	r4, [ip, lr]	@ movhi
	orrne	r3, r3, #20480
	add	ip, ip, lr
	orreq	r3, r3, #16384
	add	r1, r1, #2
	strh	r3, [ip, #2]	@ movhi
	str	r1, [r0, #24]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L93:
	lsl	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
.L94:
	add	r1, r1, #1
	str	r1, [r0, #24]
.L82:
	mov	r3, #0
	str	r3, [r0, #28]
.L79:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L80:
	ldr	ip, .L105+24
	ldr	r3, [r2, #12]
	ldr	lr, [ip]
	sub	r3, r3, #3
	ldr	ip, .L105+20
	sub	r3, r3, lr
	ldr	r5, [ip]
	ldr	lr, [r2, #8]
	ldr	ip, .L105+8
	ldr	r7, [r2, #56]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	sub	lr, lr, r5
	add	r6, ip, r1, lsl #3
	cmp	r7, #0
	strh	r3, [r6, #2]	@ movhi
	and	lr, lr, #255
	orrne	r3, r3, #4096
	lsl	r5, r1, #3
	strhne	r3, [r6, #2]	@ movhi
	strh	lr, [ip, r5]	@ movhi
	ldr	r3, [r2, #44]
	cmp	r4, #7
	ldrls	pc, [pc, r4, asl #2]
	b	.L84
.L86:
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L85
.L92:
	add	r3, r3, #32
	lsl	r3, r3, #1
	add	r5, ip, r5
	add	lr, r1, #1
	strh	r3, [r5, #4]	@ movhi
	str	lr, [r0, #24]
	b	.L81
.L91:
	ldr	r2, .L105+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #64
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L94
.L90:
	ldr	r2, .L105+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #96
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L94
.L89:
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	add	r3, r3, #128
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L94
.L88:
	ldr	r2, .L105+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #192
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L94
.L87:
	ldr	r2, .L105+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #224
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L94
.L85:
	add	r3, r3, #7
	lsl	r3, r3, #1
	add	ip, ip, r5
	strh	r3, [ip, #4]	@ movhi
	b	.L94
.L84:
	add	r3, r3, r4, lsl #5
	lsl	r3, r3, #1
	add	ip, ip, r5
	add	r1, r1, #1
	strh	r3, [ip, #4]	@ movhi
	str	r1, [r0, #24]
	b	.L82
.L106:
	.align	2
.L105:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	1717986919
	.word	-1431655765
	.word	vOff
	.word	hOff
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
	ldr	r6, .L138
	ldr	r8, .L138+4
	ldr	r7, .L138+8
	ldr	r1, .L138+12
	ldr	r4, [r6, #24]
	ldr	r9, .L138+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L138+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L113
.L135:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L108
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
	beq	.L133
	ldr	ip, [r3, #28]
	add	r0, r0, ip, lsl #5
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L110:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L134
.L113:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L135
.L108:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L113
.L134:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L138+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L138+28
	ldr	r5, .L138+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L120
.L137:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L114
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
	beq	.L118
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L116:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L136
.L120:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L137
.L114:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L120
.L136:
	add	r4, r4, #13
	str	r4, [r6, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L118:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L119
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L116
.L133:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L110
.L119:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L116
.L139:
	.align	2
.L138:
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
	ldr	r1, .L155
	ldr	r2, .L155+4
	ldr	r9, .L155+8
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r8, [r9, #24]
	add	r1, r1, r0, lsl #8
	sub	sp, sp, #12
	str	r1, [sp]
	mov	r1, r8
	ldr	r3, .L155+12
	ldr	r5, .L155+16
	ldrh	r2, [r3]
	add	r6, r8, #1
	add	r5, r5, r8, lsl #3
	add	r7, r8, #7
	ldr	r4, .L155+20
	mov	r8, r2
	ldr	r3, .L155+24
	mov	r2, r1
	ldr	fp, .L155+28
	ldr	r10, .L155+32
	b	.L147
.L154:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.L141
	ldr	r0, [sp]
	ldr	r1, [r4, #12]
	ldr	ip, [r4, #8]
	sub	r1, r1, r0
	ldr	r0, [r4, #28]
	and	r1, r1, r3
	sub	ip, ip, r8
	orr	r1, r1, #16384
	and	ip, ip, #255
	cmp	r0, #2
	strh	r1, [r5, #2]	@ movhi
	strh	ip, [r5]	@ movhi
	beq	.L144
	cmp	r0, #3
	beq	.L145
	cmp	r0, #1
	orreq	r1, r1, #4096
	strheq	r1, [r5, #2]	@ movhi
.L146:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	smull	ip, lr, r10, r1
	asr	ip, r1, #31
	rsb	ip, ip, lr, asr #2
	add	ip, ip, ip, lsl #2
	cmp	r1, ip, lsl #1
	strh	fp, [r5, #4]	@ movhi
	str	r1, [r4, #24]
	bne	.L143
	str	r2, [sp, #4]
	ldr	r3, .L155+36
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	str	r1, [r4, #28]
	ldr	r3, .L155+24
.L143:
	add	r6, r6, #1
	cmp	r6, r7
	add	r4, r4, #44
	add	r5, r5, #8
	beq	.L153
.L147:
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L154
.L141:
	ldrh	r1, [r5]
	orr	r1, r1, #512
	strh	r1, [r5]	@ movhi
	b	.L143
.L153:
	add	r8, r2, #6
	str	r8, [r9, #24]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L144:
	orr	r1, r1, #12288
	strh	r1, [r5, #2]	@ movhi
	b	.L146
.L145:
	orr	r1, r1, #8192
	strh	r1, [r5, #2]	@ movhi
	b	.L146
.L156:
	.align	2
.L155:
	.word	bgIndex
	.word	hOff
	.word	.LANCHOR0
	.word	vOff
	.word	shadowOAM
	.word	bl_bullets
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
	ldr	r1, .L167
	ldr	r3, [r1, #40]
	ldr	r0, .L167+4
	cmp	r3, #0
	ldr	r2, [r0, #24]
	beq	.L158
	ldr	ip, .L167+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #24]
	bx	lr
.L158:
	ldr	ip, .L167+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L167+16
	ldr	ip, .L167+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L167+8
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
	str	r2, [r0, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L168:
	.align	2
.L167:
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
	ldr	r3, .L235
	push	{r4, r5, r6, lr}
	ldr	r4, .L235+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L170
	cmp	r2, #0
	beq	.L228
	ldrh	r3, [r3, #48]
.L173:
	ldr	r3, .L235+8
	ldr	r1, [r3, #32]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L176
	movne	r1, #2
	strne	r1, [r4, #36]
.L176:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	ldr	r0, [r4, #76]
	strne	r2, [r4, #36]
	cmp	r0, #0
	beq	.L179
	ldr	r2, [r4, #80]
	cmp	r2, #8
	movle	r2, #5
	strle	r2, [r4, #36]
.L179:
	ldr	r2, [r3, #40]
	cmp	r2, #0
	beq	.L180
	ldr	r2, .L235+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #6
	strne	r2, [r4, #36]
.L180:
	ldr	r2, [r3]
	cmp	r2, #0
	ldr	r5, [r4, #32]
	beq	.L181
	mov	r1, #7
	ldr	r2, [r4, #44]
	cmp	r2, #1
	str	r1, [r4, #36]
	ble	.L229
	cmp	r2, #2
	beq	.L230
	ldr	r1, [r4, #48]
	add	r1, r1, #1
	cmp	r2, r1
	bgt	.L193
	ldr	r3, .L235+16
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L185
	add	r2, r2, #1
	str	r2, [r4, #44]
.L233:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L228:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L173
.L170:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L173
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L173
.L181:
	ldr	r2, .L235+16
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L231
	ldr	ip, [r4, #36]
	cmp	ip, #4
	beq	.L197
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L197
.L196:
	cmp	ip, #1
	beq	.L197
	cmp	ip, #6
	beq	.L197
	cmp	r0, #0
	bne	.L232
	cmp	r3, #0
	bne	.L185
.L197:
	ldr	r0, [r4, #44]
	ldr	r3, .L235+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L185:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L231:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L185
	ldr	ip, [r4, #36]
	b	.L196
.L229:
	tst	r5, #7
	bne	.L185
	add	r2, r2, #1
	str	r2, [r4, #44]
	b	.L233
.L230:
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L235+24
	add	r3, r3, r3, lsl #16
	add	r3, r5, r3, lsl #1
	ldr	r1, .L235+28
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	movcs	r3, #3
	add	r5, r5, #1
	strcs	r3, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L193:
	add	r2, r5, r5, lsl #4
	ldr	r1, .L235+32
	add	r2, r2, r2, lsl #8
	add	r2, r2, r2, lsl #16
	sub	r2, r1, r2
	cmp	r1, r2, ror #1
	movcs	r2, #1
	strcs	r2, [r3, #44]
	b	.L185
.L232:
	cmp	ip, #5
	beq	.L234
.L189:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L185
.L234:
	ldr	r0, [r4, #44]
	ldr	r3, .L235+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
	b	.L189
.L236:
	.align	2
.L235:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1717986919
	.word	__aeabi_idivmod
	.word	715827880
	.word	357913940
	.word	143165576
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
	ldr	r5, .L245
	ldr	r8, .L245+4
	ldr	r6, .L245+8
	add	r7, r5, #504
.L239:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L238
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L238:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #72
	cmp	r5, r7
	bne	.L239
	ldr	r5, .L245+12
	ldr	r8, .L245+4
	ldr	r6, .L245+8
	add	r7, r5, #480
.L241:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L240
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L240:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #80
	cmp	r5, r7
	bne	.L241
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L246:
	.align	2
.L245:
	.word	lettuce
	.word	1717986919
	.word	__aeabi_idivmod
	.word	big_lettuce
	.size	animateEnemies, .-animateEnemies
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
	ldr	r2, .L257
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L250
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L250
	cmp	r3, #18
	bne	.L249
.L250:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L249:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L258:
	.align	2
.L257:
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
	ldr	r4, .L408
	ldr	fp, [r4]
	cmp	fp, #0
	sub	sp, sp, #36
	bne	.L401
	ldr	r5, .L408+4
	ldr	r7, .L408+8
	ldr	r3, .L408+12
	ldr	r6, [r5, #8]
	ldr	r2, [r5, #28]
	ldr	r3, [r3]
	ldr	r1, [r7]
	add	r2, r6, r2
	ldr	r8, [r5, #12]
	add	r2, r2, #1
	add	r3, r3, r1, lsl #8
	add	r3, r3, r2, lsl #11
	ldrb	r2, [r3, r8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r8
	bne	.L261
	ldr	r2, [r5, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L261
	mov	r1, fp
	ldr	r10, .L408+16
	str	fp, [r10]
.L262:
	ldr	r3, .L408+20
	ldrh	r3, [r3]
	tst	r3, #64
	str	r3, [sp, #20]
	beq	.L263
	ldr	r9, .L408+24
	ldrh	r3, [r9]
	tst	r3, #64
	bne	.L264
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L396
	ldr	r3, [r4, #60]
	cmp	r3, #0
	bne	.L267
	cmp	r1, #0
	bne	.L396
	ldr	r3, [r4, #56]
	cmp	r3, #7
	ble	.L396
.L267:
	ldr	r3, .L408+28
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L408+32
	ldr	r3, .L408+36
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #1
	mvn	r1, #4
	ldr	r0, [r4, #60]
	str	r3, [r4, #64]
	cmp	r0, r3
	str	r3, [r4, #20]
	str	r3, [r4, #48]
	ldr	r3, .L408+20
	ldrh	r3, [r3]
	streq	r2, [r4, #60]
	str	r3, [sp, #20]
	tst	r3, #64
	ldr	r3, [r4, #40]
	add	r6, r5, #8
	str	r2, [r4, #36]
	str	r1, [r4, #32]
	ldm	r6, {r6, r8}
	str	r3, [sp, #24]
	beq	.L336
	ldrh	r3, [r9]
	tst	r3, #64
	beq	.L337
	b	.L398
.L276:
	beq	.L281
	mov	r0, #1
	ldr	ip, [r7]
	ldr	r3, [r5, #24]
	ldr	r1, [r5, #28]
	add	r3, r3, ip, lsl #8
	add	r1, r6, r1
	add	ip, r8, ip, lsl #8
	add	r3, r3, r8
	add	r3, r3, r1, lsl #11
	add	r1, ip, r1, lsl #11
	ldr	ip, .L408+12
	ldr	ip, [ip]
	add	r3, ip, r3
	add	r1, ip, r1
.L283:
	ldrb	ip, [r1, r0, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L282
	ldrb	ip, [r3, r0, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L282
	add	r0, r0, #1
	cmp	r0, r2
	ble	.L283
.L281:
	ldr	r10, [r10]
.L284:
	cmp	r10, #0
	bne	.L286
	ldr	r3, .L408+40
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r4, #64]
	beq	.L403
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L292
.L334:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L293
.L292:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L291
.L294:
	mov	r3, #1
	str	r3, [r4, #48]
	sub	r0, r0, #3
.L291:
	ldr	r3, .L408+44
	mov	lr, pc
	bx	r3
	ldr	fp, .L408+48
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L408+52
	mov	lr, pc
	bx	fp
	ldr	r3, .L408+56
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #20]
	tst	r3, #3
	ldreq	r3, [r4, #64]
	addeq	r3, r3, #1
	streq	r3, [r4, #64]
	ldr	r3, [r4, #56]
	add	r6, r6, r0
	add	r3, r3, #1
	str	r0, [r4, #32]
	str	r6, [r5, #8]
	str	r3, [r4, #56]
.L286:
	cmp	r9, #93
	bgt	.L296
.L407:
	sub	r3, r6, r9
	cmp	r3, #79
	ble	.L297
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ble	.L297
	ldr	r2, [r4, #4]
	cmp	r2, #0
	addeq	r9, r9, r3
	ldreq	r3, [sp, #28]
	streq	r9, [r3]
.L297:
	cmp	r9, #3
	bgt	.L296
.L298:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L300
	ldr	r3, [r4, #68]
	add	r3, r3, #1
	cmp	r10, #0
	cmpne	r3, #15
	str	r3, [r4, #68]
	movgt	r2, #1
	movle	r2, #0
	bgt	.L404
	cmp	r3, #15
	movgt	r3, #2
	strgt	r2, [r4, #40]
	strgt	r2, [r4, #68]
	strgt	r3, [r5, #68]
.L300:
	ldr	r3, [sp, #20]
	tst	r3, #256
	beq	.L303
	ldr	r3, .L408+24
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L304
.L303:
	ldr	r3, [sp, #20]
	tst	r3, #512
	beq	.L399
	ldr	r3, .L408+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L304
.L399:
	ldr	r1, [r5, #68]
.L306:
	ldr	r3, .L408+60
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, [r5, #56]
	beq	.L333
.L311:
	ldr	r9, .L408+64
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r9, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r8, r2, r3, r8
	sub	r8, r8, #2
	stm	r9, {r6, r8}
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	ble	.L319
	mov	fp, #1
	ldr	r6, .L408+68
	ldr	r8, .L408+72
	add	r10, r6, #504
.L323:
	ldr	r1, [r7]
	ldr	r0, [r9, #4]
	ldr	ip, [r6, #20]
	ldr	r3, [r9, #24]
	ldr	r2, [r9, #16]
	ldr	lr, [r6, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r6, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r6, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r9, #20]
	ldr	r1, [r9]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L321
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L321
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L321:
	add	r6, r6, #72
	cmp	r10, r6
	bne	.L323
	mov	fp, #1
	ldr	r6, .L408+76
	add	r10, r6, #480
.L327:
	ldr	r1, [r7]
	ldr	r0, [r9, #4]
	ldr	r3, [r6, #16]
	ldr	r2, [r9, #24]
	ldr	ip, [r9, #16]
	add	r0, r0, r1, lsl #8
	add	r3, r3, #2
	ldr	r1, [r6, #20]
	add	r0, r0, r2
	sub	r2, ip, r2
	ldr	ip, [r6, #8]
	str	r3, [sp, #8]
	ldr	r3, [r6, #12]
	stm	sp, {r3, ip}
	str	r1, [sp, #12]
	ldr	r3, [r9, #20]
	ldr	r1, [r9]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L325
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L325
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L325:
	add	r6, r6, #80
	cmp	r10, r6
	bne	.L327
	ldr	r3, .L408+80
	ldr	r6, [r3]
	cmp	r6, #1
	beq	.L405
.L329:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
.L331:
	ldr	r3, .L408+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L332
	ldr	r3, .L408+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L332
	ldr	r2, [r5, #60]
	cmp	r2, #0
	bne	.L332
	mov	r0, #1
	mov	r3, #20
	ldr	r1, .L408+84
	ldr	r1, [r1]
	str	r0, [r5, #60]
	str	r3, [r5, #64]
	lsr	r1, r1, r0
	ldr	r3, .L408+36
	ldr	r0, .L408+88
	str	r2, [r5, #44]
	str	r2, [r9, #40]
	str	r2, [r9, #32]
	str	r2, [r9, #28]
	mov	lr, pc
	bx	r3
.L332:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r4, #16]
	str	r3, [r4, #20]
.L401:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L261:
	mov	r3, #0
	mov	r2, #1
	ldr	r10, .L408+16
	mov	r1, r2
	str	r3, [r4, #48]
	str	r2, [r10]
	str	r3, [r4, #36]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	b	.L262
.L263:
	ldr	r3, [r4, #40]
	str	r3, [sp, #24]
.L270:
	ldr	r2, [r4, #32]
	ldr	r3, .L408+92
	cmp	r2, #0
	str	r3, [sp, #28]
	ldr	r9, [r3]
	bge	.L276
	ldr	r10, [r10]
.L275:
	ldr	r1, [r7]
	ldr	r3, [r5, #24]
	ldr	r0, .L408+12
	add	r3, r3, r1, lsl #8
	ldr	r0, [r0]
	add	r1, r8, r1, lsl #8
	add	r3, r3, r8
	add	r1, r1, r6, lsl #11
	add	r3, r3, r6, lsl #11
	add	r1, r0, r1
	add	r3, r0, r3
	ldrb	r0, [r1, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L277
.L406:
	ldrb	r0, [r3, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L277
	sub	fp, fp, #1
	cmp	fp, r2
	ble	.L284
	ldrb	r0, [r1, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L406
.L277:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ldreq	r3, [sp, #28]
	add	fp, fp, #1
	addeq	r9, r9, fp
	mov	r2, #1
	streq	r9, [r3]
	mov	r3, #0
	add	r6, r6, fp
	str	r6, [r5, #8]
	str	r3, [r4, #32]
	str	r3, [r4, #60]
	str	r3, [r4, #64]
	str	r2, [r4, #48]
	b	.L284
.L304:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L399
	mov	r3, #1
	cmp	r10, #0
	str	r3, [r4, #40]
	beq	.L307
	ldr	r3, [r4, #8]
	cmp	r3, #0
	movne	r1, #1
	moveq	r1, #2
	mov	r3, #3
	str	r1, [r5, #68]
	str	r3, [r5, #20]
	b	.L306
.L282:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ldreq	r3, [sp, #28]
	addeq	r9, r9, r0
	streq	r9, [r3]
	mov	r2, #0
	mov	r3, #1
	add	r6, r6, r0
	cmp	r9, #93
	str	r3, [r10]
	str	r6, [r5, #8]
	mov	r10, r3
	str	r2, [r4, #32]
	ble	.L407
.L296:
	sub	r3, r6, r9
	cmp	r3, #80
	bgt	.L298
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bge	.L298
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ldreq	r2, [sp, #28]
	addeq	r3, r3, r9
	streq	r3, [r2]
	b	.L298
.L307:
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L399
	ldr	r2, [r4, #8]
	cmp	r2, #0
	str	r3, [r4, #52]
	str	r3, [r5, #68]
	movne	r3, #4
	strne	r3, [r5, #20]
	ldr	r3, [r5, #56]
.L333:
	ldr	r2, .L408+40
	ldrh	r2, [r2, #48]
	ldr	r10, [r7]
	tst	r2, #32
	lsl	r2, r10, #8
	bne	.L312
	ldr	r1, .L408+12
	ldr	r9, [r5, #20]
	ldr	r1, [r1]
	sub	lr, r8, r9
	add	ip, lr, r2
	add	r0, r1, r6, lsl #11
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L312
	ldr	r0, [r5, #28]
	add	r0, r6, r0
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #11
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r8, #0
	cmpge	r1, #0
	bne	.L312
	ldr	r1, [r4, #4]
	cmp	r3, #0
	streq	r3, [r4, #28]
	cmp	r1, #0
	str	lr, [r5, #12]
	bne	.L342
	ldr	fp, .L408+96
	ldr	r1, [fp]
	cmp	r1, #0
	ble	.L314
	sub	r0, lr, r1
	cmp	r0, #119
	bgt	.L342
	sub	r1, r1, r9
	str	r1, [fp]
.L314:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r10, #0
	moveq	r1, #0
	cmp	r1, #0
	beq	.L342
	mov	r0, #67108864
	mov	ip, #256
	mov	r8, #376
	add	r1, r10, #23
	lsl	r1, r1, #24
	orr	r1, r1, #1073741824
	lsr	r1, r1, #16
	sub	r10, r10, #1
	str	r10, [r7]
	strh	r1, [r0, #10]	@ movhi
	ldr	r1, [sp, #28]
	ldrh	r1, [r1]
	str	r8, [r5, #12]
	str	ip, [fp]
	strh	ip, [r0, #20]	@ movhi
	strh	r1, [r0, #22]	@ movhi
	sub	r2, r2, #256
.L312:
	ldr	r1, .L408+40
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L400
	add	r9, r5, #20
	ldm	r9, {r9, ip}
	ldr	r1, .L408+12
	ldr	r0, [r1]
	add	r1, ip, r8
	add	r1, r1, r9
	add	r1, r1, r2
	add	lr, r0, r6, lsl #11
	ldrb	lr, [lr, r1]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L400
	ldr	lr, [r5, #28]
	add	lr, r6, lr
	sub	lr, lr, #1
	add	r0, r0, lr, lsl #11
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	ldr	r1, .L408+100
	bne	.L315
	ldr	lr, [r1]
	add	ip, ip, lr
	cmp	ip, #2048
	bgt	.L315
	cmp	r3, #0
	strne	r0, [r4, #28]
	ldr	r0, [r4, #4]
	add	r8, r8, r9
	cmp	r0, #0
	str	r8, [r5, #12]
	bne	.L315
	ldr	fp, .L408+96
	ldr	r0, [fp]
	cmp	r0, #256
	str	r0, [sp, #20]
	ble	.L317
.L318:
	mov	r0, #67108864
	mov	ip, #0
	mov	r8, #120
	ldr	lr, [sp, #28]
	add	r2, r10, #25
	lsl	r2, r2, #24
	ldrh	lr, [lr]
	orr	r2, r2, #1073741824
	lsr	r9, r2, #16
	add	r2, r10, #1
	str	r2, [r7]
	strh	r9, [r0, #10]	@ movhi
	lsl	r2, r2, #8
	str	r8, [r5, #12]
	str	ip, [fp]
	strh	ip, [r0, #20]	@ movhi
	strh	lr, [r0, #22]	@ movhi
	b	.L315
.L400:
	ldr	r1, .L408+100
.L315:
	add	r2, r8, r2
	str	r2, [r1]
	b	.L311
.L319:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r9, #40]
	b	.L331
.L264:
	ldr	r3, [r4, #40]
	str	r3, [sp, #24]
.L398:
	ldr	r3, .L408+20
	ldrh	r3, [r3]
	str	r3, [sp, #20]
	b	.L270
.L403:
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L288
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L289
	ldr	r2, [r4, #36]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L291
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L294
.L335:
	sub	r0, r0, #4
	b	.L291
.L396:
	ldr	r3, [r4, #40]
	str	r3, [sp, #24]
.L337:
	ldr	r3, [r10]
	cmp	r3, #0
	bne	.L271
	ldr	r3, [r4, #56]
	cmp	r3, #7
	bgt	.L398
.L271:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L398
	ldr	r3, .L408+12
	ldr	r2, [r3]
	ldr	r1, [r7]
	sub	r3, r6, #1
	add	r3, r2, r3, lsl #11
	add	r3, r3, r1, lsl #8
	ldrb	r2, [r3, r8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r8
	bne	.L398
	ldr	r2, [r5, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L398
	ldr	r6, [sp, #24]
	ldr	r3, .L408+104
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L408+108
	ldr	r3, .L408+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mvn	r2, #4
	str	r3, [r4, #60]
	ldr	r3, .L408+20
	ldrh	r3, [r3]
	ldr	r1, .L408+92
	str	r3, [sp, #20]
	ldr	r3, [r4, #40]
	str	r6, [r10]
	str	r6, [r4, #64]
	mov	r10, r6
	str	r6, [r4, #20]
	add	r6, r5, #8
	str	r1, [sp, #28]
	str	r2, [r4, #32]
	ldr	r9, [r1]
	ldm	r6, {r6, r8}
	str	r3, [sp, #24]
	b	.L275
.L404:
	mov	r3, #0
	mov	r1, #2
	mov	r2, #3
	str	r3, [r4, #40]
	str	r3, [r4, #68]
	str	r1, [r5, #68]
	str	r2, [r5, #20]
	b	.L300
.L288:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L334
	b	.L291
.L405:
	ldr	r7, .L408+112
	add	r0, r7, #12
	ldm	r0, {r0, r2}
	ldr	r3, [r9, #24]
	ldmib	r7, {r1, ip}
	str	r2, [sp, #12]
	ldr	r2, [r9, #16]
	str	r0, [sp, #8]
	ldr	r0, [r9, #4]
	stm	sp, {r1, ip}
	sub	r2, r2, r3
	add	r0, r3, r0
	ldr	r1, [r9]
	ldr	r3, [r9, #20]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L329
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ldreq	r3, [r7]
	subeq	r3, r3, #1
	streq	r6, [r7, #32]
	streq	r3, [r7]
	b	.L329
.L293:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L292
	b	.L335
.L289:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L334
	b	.L294
.L342:
	mov	r8, lr
	b	.L312
.L317:
	ldr	r0, [sp, #20]
	ldr	ip, .L408+116
	sub	r0, r8, r0
	cmp	r0, #120
	movgt	r0, #1
	movle	r0, #0
	cmp	lr, ip
	movgt	r0, #0
	cmp	r0, #0
	beq	.L315
	ldr	r0, [sp, #20]
	add	ip, r9, r0
	cmp	ip, #256
	str	ip, [fp]
	ble	.L315
	b	.L318
.L336:
	ldr	r3, .L408+92
	mvn	r2, #4
	str	r3, [sp, #28]
	ldr	r10, [r10]
	ldr	r9, [r3]
	b	.L275
.L409:
	.align	2
.L408:
	.word	.LANCHOR0
	.word	player
	.word	bgIndex
	.word	collisionMap
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	sfx_jump1_length
	.word	sfx_jump1_data
	.word	playSoundB
	.word	67109120
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	__aeabi_idivmod
	.word	slash
	.word	lettuce
	.word	collision
	.word	big_lettuce
	.word	currMap
	.word	sfx_attack_length
	.word	sfx_attack_data
	.word	vOff
	.word	hOff
	.word	pMapPos
	.word	sfx_jump2_length
	.word	sfx_jump2_data
	.word	boss
	.word	1928
	.size	updatePlayer, .-updatePlayer
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
	ldr	lr, .L414
	ldr	ip, .L414+4
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
	bne	.L410
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L410:
	ldr	lr, [sp], #4
	bx	lr
.L415:
	.align	2
.L414:
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
	ldr	r0, .L419
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
.L420:
	.align	2
.L419:
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
	ldr	r2, .L422
	ldr	r3, .L422+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L423:
	.align	2
.L422:
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
	ldr	r3, .L425
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L426:
	.align	2
.L425:
	.word	collisionMap
	.size	eCheckCollision, .-eCheckCollision
	.align	2
	.global	hurtPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	hurtPlayer, %function
hurtPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L433
	ldr	r2, [r4, #76]
	cmp	r2, #0
	beq	.L428
	ldr	r3, [r4, #72]
.L429:
	cmp	r3, #0
	ble	.L432
.L427:
	pop	{r4, lr}
	bx	lr
.L432:
	ldr	r3, .L433+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L427
	pop	{r4, lr}
	b	gameOver.part.0
.L428:
	ldr	r3, .L433+8
	ldr	r0, .L433+12
	ldr	r1, [r3]
	ldr	r3, .L433+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r4, #72]
	sub	r3, r3, #1
	str	r3, [r4, #72]
	str	r2, [r4, #76]
	b	.L429
.L434:
	.align	2
.L433:
	.word	player
	.word	.LANCHOR0
	.word	sfx_player_hurt_length
	.word	sfx_player_hurt_data
	.word	playSoundB
	.size	hurtPlayer, .-hurtPlayer
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
	mov	r8, #0
	ldr	r6, .L517
	ldr	r4, .L517+4
	ldr	ip, [r6]
	ldr	r9, .L517+8
	ldr	r10, .L517+12
	ldr	r5, .L517+16
	sub	sp, sp, #28
	sub	r3, ip, #239
	add	r7, r4, #504
.L444:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	bgt	.L510
	add	r1, ip, #239
	cmp	r0, r1
	bgt	.L510
	ldr	r1, [r4]
	cmp	r1, #0
	mov	r1, #1
	str	r1, [r4, #4]
	beq	.L437
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L439
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L439:
	ldr	lr, [r5, #28]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	str	ip, [sp]
	str	lr, [sp, #12]
	ldr	ip, [r5, #24]
	ldr	lr, [r5, #8]
	str	ip, [sp, #8]
	str	lr, [sp, #4]
	sub	r3, r3, #2
	add	r1, r1, #3
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L440
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L512
.L440:
	ldr	ip, [r6]
	ldr	r1, [r4, #12]
	sub	r0, ip, r1
	ldr	r3, [r4, #64]
	eor	r2, r0, r0, asr #31
	sub	r2, r2, r0, asr #31
	cmp	r2, r3
	ldr	lr, [r10]
	ldr	r2, [r4, #8]
	bge	.L509
	ldr	r3, [r5, #8]
	sub	r3, r3, r2
	cmp	r3, #0
	ldr	fp, [r4, #68]
	rsblt	r3, r3, #0
	cmp	r3, fp
	bge	.L509
	ldr	r3, .L517+20
	ldr	r3, [r3, #16]
	tst	r3, #1
	beq	.L503
.L509:
	ldr	r3, [r4, #20]
.L441:
	add	r3, r2, r3
	add	r3, r3, #1
	add	r1, lr, r1
	ldrb	r0, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r1, r1, r3, lsl #11
	bne	.L513
.L443:
	add	r2, r2, #1
	str	r2, [r4, #8]
.L511:
	sub	r3, ip, #239
.L437:
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L444
	ldr	r4, .L517+24
	ldr	r8, .L517+8
	ldr	r9, .L517+20
	ldr	fp, .L517+28
	ldr	r10, .L517+32
	add	r7, r4, #480
.L458:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	movgt	r3, #0
	bgt	.L445
	add	r3, ip, #239
	cmp	r0, r3
	movgt	r3, #0
	movle	r3, #1
.L445:
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L447
	ldr	r3, [r4, #44]
	cmp	r3, #0
	ldr	r5, .L517+16
	beq	.L448
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L448:
	ldr	r1, [r4, #8]
	ldr	r3, [r5, #24]
	str	ip, [sp]
	ldr	lr, [r5, #28]
	ldr	ip, [r5, #8]
	str	lr, [sp, #12]
	str	r3, [sp, #8]
	str	ip, [sp, #4]
	add	r0, r0, #1
	ldr	r3, [r4, #20]
	add	r1, r1, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L449
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L514
.L449:
	ldr	r2, [r6]
	ldr	r3, [r4, #12]
	sub	r3, r2, r3
	eor	r1, r3, r3, asr #31
	ldr	r2, [r4, #60]
	sub	r1, r1, r3, asr #31
	cmp	r1, r2
	bge	.L447
	ldr	r1, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r1
	cmp	r2, #0
	ldr	r1, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, r1
	bge	.L447
	ldr	r2, [r9, #16]
	ands	r2, r2, #1
	bne	.L447
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L452
	movne	r3, #1
	strne	r3, [r4, #56]
.L452:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	bne	.L453
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	bgt	.L515
.L447:
	add	r4, r4, #80
	cmp	r7, r4
	beq	.L457
	ldr	ip, [r6]
	sub	r3, ip, #239
	b	.L458
.L510:
	str	r8, [r4, #4]
	b	.L437
.L513:
	ldr	r3, [r4, #16]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L443
	b	.L511
.L457:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L514:
	bl	hurtPlayer
	b	.L449
.L512:
	bl	hurtPlayer
	b	.L440
.L503:
	cmp	r0, #0
	blt	.L516
	beq	.L509
	ldr	r3, [r4, #60]
	ldr	r0, [r4, #16]
	add	r3, r1, r3
	add	r0, r3, r0
	str	r3, [sp, #16]
	add	r3, lr, r2, lsl #11
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L441
	add	r0, lr, r0
	mov	fp, r0
	str	r0, [sp, #20]
	add	r0, r2, r3
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L441
	add	fp, r0, #2048
	ldr	r0, [sp, #16]
	add	r0, lr, r0
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L441
	ldr	r0, [sp, #20]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [sp, #16]
	movne	r1, r0
	strne	r0, [r4, #12]
	b	.L441
.L453:
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L447
	mov	r2, #0
	ldr	r3, .L517+36
	mov	r0, r10
	ldr	r1, [fp]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	ldr	r3, .L517+40
.L456:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L454
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L454
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #44
	bne	.L456
	b	.L447
.L515:
	mov	r3, #1
	str	r2, [r4, #36]
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	b	.L447
.L516:
	ldr	r0, [r4, #60]
	add	r3, lr, r2, lsl #11
	sub	r0, r1, r0
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L441
	ldr	r0, [sp, #16]
	add	fp, lr, r0
	add	r0, r2, r3
	str	fp, [sp, #20]
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L441
	ldr	fp, [sp, #20]
	add	r0, r0, #2048
	ldrb	fp, [fp, r0]	@ zero_extendqisi2
	cmp	fp, #0
	ldr	fp, [sp, #20]
	add	r0, fp, r0
	beq	.L441
	ldr	fp, [r4, #16]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r1, [sp, #16]
	strne	r1, [r4, #12]
	b	.L441
.L454:
	mov	r0, #1
	ldr	r3, [r4, #56]
	ldr	lr, .L517+40
	add	r1, r2, r2, lsl #2
	add	r2, r2, r1, lsl r0
	lsl	r3, r3, r0
	add	r1, lr, r2, lsl #2
	sub	r3, r3, #1
	ldr	ip, [r4, #8]
	str	r3, [r1, #36]
	ldr	r3, [r4, #12]
	add	ip, ip, #8
	str	ip, [r1, #8]
	str	r3, [r1, #12]
	str	r0, [lr, r2, lsl #2]
	b	.L447
.L518:
	.align	2
.L517:
	.word	pMapPos
	.word	lettuce
	.word	collision
	.word	collisionMap
	.word	player
	.word	.LANCHOR0
	.word	big_lettuce
	.word	sfx_lettuce_projectile_length
	.word	sfx_lettuce_projectile_data
	.word	playSoundB
	.word	bl_bullets
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
	push	{r4, lr}
	ldr	r4, .L538
	ldr	r3, [r4, #72]
	cmp	r3, #0
	bne	.L519
	ldr	r3, .L538+4
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	bne	.L536
.L522:
	cmp	r3, #0
	beq	.L524
	ldr	r3, .L538+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L524
.L523:
	mov	r3, #1
	str	r3, [r4, #72]
.L524:
	bl	updatePlayer
	bl	updateBullets
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L538+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L537
.L525:
	ldr	r3, .L538+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L526
	ldr	r2, [r3, #8]
	cmp	r2, #238
	ble	.L519
.L526:
	ldr	r2, [r4]
	cmp	r2, #0
	bne	.L519
	mov	r1, #1
	pop	{r4, lr}
	str	r2, [r3, #44]
	str	r1, [r3, #32]
	b	gameOver.part.0
.L519:
	pop	{r4, lr}
	bx	lr
.L536:
	ldr	r2, .L538+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L523
	b	.L522
.L537:
	ldr	r3, .L538+20
	mov	lr, pc
	bx	r3
	b	.L525
.L539:
	.align	2
.L538:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	currMap
	.word	player
	.word	updateBoss1
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
	@ link register save eliminated.
	bx	lr
	.size	drawFont, .-drawFont
	.align	2
	.global	drawTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTimer, %function
drawTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L543
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L543+4
	ldr	r5, [r3]
	ldr	r3, .L543+8
	ldr	r4, [r2]
	smull	r1, r2, r3, r5
	smull	r1, r3, r4, r3
	mov	r6, #0
	mov	r9, #76
	mov	r8, #82
	asr	r0, r5, #31
	rsb	r2, r0, r2, asr #5
	add	r2, r2, r2, lsl #2
	ldr	lr, .L543+12
	add	r2, r2, r2, lsl #2
	sub	r2, r5, r2, lsl #2
	smull	r1, ip, lr, r5
	smull	r1, r10, lr, r2
	asr	r1, r4, #31
	smull	r7, fp, lr, r4
	rsb	r3, r1, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r4, r3, lsl #2
	smull	r7, lr, r3, lr
	ldr	r7, .L543+16
	rsb	r0, r0, ip, asr #2
	rsb	r1, r1, fp, asr #2
	ldr	ip, [r7, #24]
	ldr	fp, .L543+20
	asr	r2, r2, #31
	rsb	r2, r2, r10, asr #2
	add	r2, r2, #111
	add	r10, fp, ip, lsl #3
	add	r0, r0, r0, lsl #2
	strh	r2, [r10, #4]	@ movhi
	sub	r0, r5, r0, lsl #1
	lsl	r2, ip, #3
	add	r5, ip, #1
	asr	r3, r3, #31
	strh	r6, [fp, r2]	@ movhi
	rsb	r3, r3, lr, asr #2
	add	r2, ip, #2
	add	lr, fp, r5, lsl #3
	add	r0, r0, #111
	strh	r0, [lr, #4]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	add	r3, r3, #111
	strh	r8, [lr, #2]	@ movhi
	add	r1, r1, r1, lsl #2
	lsl	lr, r2, #3
	add	r2, fp, r2, lsl #3
	strh	r3, [r2, #4]	@ movhi
	sub	r1, r4, r1, lsl #1
	mov	r3, #98	@ movhi
	mov	r4, #92	@ movhi
	add	r0, ip, #3
	lsl	r5, r5, #3
	strh	r6, [fp, r5]	@ movhi
	add	r1, r1, #111
	strh	r6, [fp, lr]	@ movhi
	add	ip, ip, #4
	add	lr, fp, r0, lsl #3
	lsl	r0, r0, #3
	strh	r4, [r2, #2]	@ movhi
	str	ip, [r7, #24]
	strh	r1, [lr, #4]	@ movhi
	strh	r6, [fp, r0]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L544:
	.align	2
.L543:
	.word	time_m
	.word	time_s
	.word	1374389535
	.word	1717986919
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawTimer, .-drawTimer
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
	ldr	r3, .L554
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L554+4
	ldr	r3, [r3, #72]
	ldr	ip, [r6, #24]
	cmp	r3, #0
	add	r4, ip, #1
	ble	.L553
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	r0, .L554+8
	cmp	r3, #1
	lsl	lr, ip, #3
	addeq	r3, ip, #2
	strh	r2, [r0, lr]	@ movhi
	add	lr, r0, ip, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	ip, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L546
	ldr	r5, .L554+12
	add	lr, r0, r4, lsl #3
	cmp	r3, #2
	lsl	r4, r4, #3
	strh	r5, [lr, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	add	lr, ip, #2
	strh	r2, [r0, r4]	@ movhi
	addeq	r4, ip, #3
	moveq	ip, lr
	beq	.L546
	ldr	r4, .L554+16
	cmp	r3, #3
	add	r3, r0, lr, lsl #3
	strh	r4, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, ip, #3
	addeq	r4, ip, #4
	moveq	ip, r3
	lsl	lr, lr, #3
	strh	r2, [r0, lr]	@ movhi
	ldrne	r4, .L554+20
	addne	lr, r0, r3, lsl #3
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [r0, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, ip, #5
	addne	ip, ip, #4
.L546:
	ldr	r2, [r6, #76]
	ldr	lr, .L554+24
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L554+28
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
	add	r10, r0, ip, lsl #3
	add	lr, lr, #111
	strh	lr, [r10, #4]	@ movhi
	add	r3, ip, #2
	add	lr, r0, r4, lsl #3
	add	r1, r1, #111
	strh	r1, [lr, #4]	@ movhi
	lsl	fp, r3, #3
	add	r1, r0, r3, lsl #3
	add	r2, r2, #111
	lsl	r3, ip, #3
	strh	r5, [r0, r3]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	r8, [lr, #2]	@ movhi
	add	r2, ip, #3
	ldr	lr, .L554+32
	lsl	r4, r4, #3
	add	r3, ip, #4
	ldr	ip, .L554+36
	strh	r5, [r0, r4]	@ movhi
	lsl	r4, r2, #3
	add	r2, r0, r2, lsl #3
	strh	r5, [r0, fp]	@ movhi
	strh	r7, [r1, #2]	@ movhi
	str	r3, [r6, #24]
	strh	r5, [r0, r4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L553:
	ldr	r0, .L554+8
	b	.L546
.L555:
	.align	2
.L554:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	16400
	.word	16416
	.word	16432
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
	ldr	r3, .L564
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L564+4
	str	r1, [r3, #24]
	mov	lr, pc
	bx	r2
	bl	drawHUD
	ldr	r3, .L564+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L563
.L558:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawTimer
	ldr	r3, .L564+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L564+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L564+20
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L564+24
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [ip, #20]	@ movhi
	ldr	r2, .L564+28
	ldr	lr, [r2]
	ldr	r1, .L564+32
	lsl	r2, lr, #16
	lsr	r2, r2, #16
	ldr	r0, [r1]
	strh	r2, [ip, #22]	@ movhi
	ldr	r2, .L564+36
	add	r0, r3, r0, lsl #8
	smull	r3, r1, r2, lr
	smull	r4, r3, r2, r0
	sub	r2, r1, lr, asr #31
	sub	r3, r3, r0, asr #31
	sub	r2, r2, #15
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r3, [ip, #24]	@ movhi
	pop	{r4, lr}
	strh	r2, [ip, #26]	@ movhi
	bx	lr
.L563:
	ldr	r3, .L564+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L564+44
	mov	lr, pc
	bx	r3
	b	.L558
.L565:
	.align	2
.L564:
	.word	.LANCHOR0
	.word	hideSprites
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
	ldr	r3, .L568
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	gameOver.part.0
.L569:
	.align	2
.L568:
	.word	.LANCHOR0
	.size	gameOver, .-gameOver
	.global	cameraLock
	.global	dead
	.comm	maps,2176,4
	.comm	bgIndex,4,4
	.comm	pMapPos,4,4
	.comm	currMap,4,4
	.global	airTimer
	.global	gTimer
	.global	coyoteTimer
	.global	framesInAir
	.global	yVel
	.global	jumpThud
	.global	dashed
	.global	dashingTimer
	.global	dashing
	.global	dying
	.global	running
	.global	doubleJumping
	.global	jumping
	.global	grounded
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	pauseVar
	.global	score
	.comm	collisionMap,4,4
	.global	shadowOAMIndex
	.comm	bl_bullets,264,4
	.comm	big_lettuce,480,4
	.comm	lettuce,504,4
	.comm	slash,56,4
	.comm	player,84,4
	.comm	shadowOAM,1024,4
	.global	cheating
	.global	winning
	.comm	soundB,32,4
	.comm	soundA,32,4
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
	.type	dying, %object
	.size	dying, 4
dying:
	.space	4
	.type	cameraLock, %object
	.size	cameraLock, 4
cameraLock:
	.space	4
	.type	cheating, %object
	.size	cheating, 4
cheating:
	.space	4
	.type	winning, %object
	.size	winning, 4
winning:
	.space	4
	.type	gTimer, %object
	.size	gTimer, 4
gTimer:
	.space	4
	.type	airTimer, %object
	.size	airTimer, 4
airTimer:
	.space	4
	.type	shadowOAMIndex, %object
	.size	shadowOAMIndex, 4
shadowOAMIndex:
	.space	4
	.type	running, %object
	.size	running, 4
running:
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
	.type	coyoteTimer, %object
	.size	coyoteTimer, 4
coyoteTimer:
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
