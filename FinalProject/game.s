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
	ldr	r1, .L27
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
	str	r0, [r3, #60]
	str	r0, [r3, #48]
	str	r2, [r3, #44]
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L17
	ldr	r2, .L27+4
	mov	r0, #0
	mov	r3, r2
	mov	r8, #13
	mov	r7, #15
	mov	r6, #4
	mov	r5, #240
	mov	ip, #60
	mov	r4, #2
	add	lr, r2, #480
.L18:
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
	bne	.L18
	mov	ip, #0
	mov	lr, #8
	mov	r6, #4
	mvn	r5, #0
	mov	r3, #1
	ldr	r0, .L27+8
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
	ldr	r0, .L27+12
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L20
	cmp	r0, #1
	ldreq	r3, .L27+16
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
	ldr	lr, .L27+20
	str	lr, [r1, #228]
	ldr	lr, .L27+24
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
	ldr	r1, .L27+28
	str	r1, [r2, #12]
	ldr	r1, .L27+32
	str	r1, [r2, #92]
	ldr	r1, .L27+36
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
	str	r2, [r3, #8]
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
	ldr	r6, .L44
	ldr	r3, [r6]
	cmp	r3, #2
	ldreq	r3, .L44+4
	ldrne	r3, .L44+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r1, #512
	ldr	r5, .L44+12
	ldr	r3, .L44+16
	str	r2, [r5, #8]
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
	ldr	r3, .L44+20
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
	ldr	r3, .L44+24
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r2, [r3, #20]
	ldr	r0, .L44+28
	ldr	r3, .L44+32
	str	r4, [r5, #12]
	str	r4, [r5, #16]
	str	r1, [r5, #20]
	str	ip, [r0]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	currMap
	.word	pauseTimer
	.word	startTimer
	.word	.LANCHOR0
	.word	shadowOAM
	.word	slash
	.word	maps
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
	ldr	r2, .L47
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L48:
	.align	2
.L47:
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
	ldr	r3, .L53
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L53+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L53+8
	str	r3, [sp]
	ldr	r0, .L53+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L53+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L52
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L52:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L54:
	.align	2
.L53:
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
	ldr	r9, .L76
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L76+4
	ldr	r5, .L76+8
	ldr	r8, .L76+12
	sub	sp, sp, #20
.L62:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, r3, #239
	add	r1, ip, r2
	cmp	r0, r1
	sub	r1, r3, #476
	sub	r1, r1, #3
	bgt	.L58
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
	ble	.L74
.L59:
	cmp	ip, lr
	bgt	.L64
.L60:
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
	beq	.L61
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L61
	ldr	r10, [r5, #76]
	cmp	r10, #0
	beq	.L75
.L61:
	add	r6, r6, #1
	cmp	r6, #6
	add	r4, r4, #44
	bne	.L62
.L55:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L58:
	mov	lr, #0
	add	r0, r4, #36
	ldm	r0, {r0, r10}
	mla	r0, r10, r0, ip
	add	ip, r2, r0
	cmp	r1, ip
	str	r0, [r4, #12]
	str	lr, [r4, #4]
	bgt	.L64
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L60
.L64:
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
.L75:
	ldr	r3, .L76+16
	mov	r2, r10
	ldr	r1, [r3]
	ldr	r0, .L76+20
	ldr	r3, .L76+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	str	r10, [r4]
	str	r3, [r5, #72]
	str	r2, [r5, #76]
	b	.L61
.L74:
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L60
	b	.L59
.L77:
	.align	2
.L76:
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
	ldr	r1, .L98
	ldr	r3, [r1, #52]
	ldr	ip, .L98+4
	cmp	r3, #0
	ldr	r2, [ip, #20]
	beq	.L79
	ldr	r0, .L98+8
	lsl	r1, r2, #3
	ldrh	r3, [r0, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [r0, r1]	@ movhi
	str	r2, [ip, #20]
	bx	lr
.L79:
	ldr	r0, .L98+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [r0]
	ldr	r0, .L98+16
	sub	r3, r3, #3
	ldr	r4, [r0]
	ldr	r0, [r1, #8]
	sub	r3, r3, lr
	sub	r0, r0, r4
	ldr	lr, .L98+8
	ldr	r6, [r1, #56]
	lsl	r3, r3, #23
	and	r0, r0, #255
	lsr	r3, r3, #23
	lsl	r4, r2, #3
	orr	r3, r3, #16384
	add	r5, lr, r2, lsl #3
	cmp	r6, #0
	strh	r0, [lr, r4]	@ movhi
	ldr	r0, [r1, #36]
	strh	r3, [r5, #2]	@ movhi
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #44]
	cmp	r0, #7
	ldrls	pc, [pc, r0, asl #2]
	b	.L82
.L84:
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L83
.L83:
	add	r3, r3, #7
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
.L80:
	add	r2, r2, #1
	str	r2, [ip, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	lsl	r3, r3, #1
	rsbs	r0, r3, #0
	and	r0, r0, #3
	and	r1, r3, #3
	rsbpl	r1, r0, #0
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L80
.L90:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
	b	.L80
.L89:
	ldr	r1, .L98+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L80
.L88:
	ldr	r1, .L98+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L80
.L87:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, lr, r4
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L80
.L86:
	ldr	r1, .L98+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L80
.L85:
	ldr	r1, .L98+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L80
.L82:
	add	r1, r3, r0, lsl #5
	lsl	r1, r1, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L80
.L99:
	.align	2
.L98:
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
	ldr	r6, .L131
	ldr	r8, .L131+4
	ldr	r7, .L131+8
	ldr	r1, .L131+12
	ldr	r4, [r6, #20]
	ldr	r9, .L131+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L131+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L106
.L128:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L101
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
	beq	.L126
	ldr	ip, [r3, #28]
	add	r0, r0, ip, lsl #5
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L103:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L127
.L106:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L128
.L101:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L106
.L127:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L131+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L131+28
	ldr	r5, .L131+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L113
.L130:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L107
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
	beq	.L111
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L109:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L129
.L113:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L130
.L107:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L113
.L129:
	add	r4, r4, #13
	str	r4, [r6, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L111:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L112
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L109
.L126:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L103
.L112:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L109
.L132:
	.align	2
.L131:
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
	ldr	r1, .L148
	ldr	r2, .L148+4
	ldr	r9, .L148+8
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r8, [r9, #20]
	add	r1, r1, r0, lsl #8
	sub	sp, sp, #12
	str	r1, [sp]
	mov	r1, r8
	ldr	r3, .L148+12
	ldr	r5, .L148+16
	ldrh	r2, [r3]
	add	r6, r8, #1
	add	r5, r5, r8, lsl #3
	add	r7, r8, #7
	ldr	r4, .L148+20
	mov	r8, r2
	ldr	r3, .L148+24
	mov	r2, r1
	ldr	fp, .L148+28
	ldr	r10, .L148+32
	b	.L140
.L147:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.L134
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
	beq	.L137
	cmp	r0, #3
	beq	.L138
	cmp	r0, #1
	orreq	r1, r1, #4096
	strheq	r1, [r5, #2]	@ movhi
.L139:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	smull	ip, lr, r10, r1
	asr	ip, r1, #31
	rsb	ip, ip, lr, asr #2
	add	ip, ip, ip, lsl #2
	cmp	r1, ip, lsl #1
	strh	fp, [r5, #4]	@ movhi
	str	r1, [r4, #24]
	bne	.L136
	str	r2, [sp, #4]
	ldr	r3, .L148+36
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	str	r1, [r4, #28]
	ldr	r3, .L148+24
.L136:
	add	r6, r6, #1
	cmp	r6, r7
	add	r4, r4, #44
	add	r5, r5, #8
	beq	.L146
.L140:
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L147
.L134:
	ldrh	r1, [r5]
	orr	r1, r1, #512
	strh	r1, [r5]	@ movhi
	b	.L136
.L146:
	add	r8, r2, #6
	str	r8, [r9, #20]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L137:
	orr	r1, r1, #12288
	strh	r1, [r5, #2]	@ movhi
	b	.L139
.L138:
	orr	r1, r1, #8192
	strh	r1, [r5, #2]	@ movhi
	b	.L139
.L149:
	.align	2
.L148:
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
	ldr	r1, .L160
	ldr	r3, [r1, #40]
	ldr	r0, .L160+4
	cmp	r3, #0
	ldr	r2, [r0, #20]
	beq	.L151
	ldr	ip, .L160+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #20]
	bx	lr
.L151:
	ldr	ip, .L160+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L160+16
	ldr	ip, .L160+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L160+8
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
	str	r2, [r0, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L161:
	.align	2
.L160:
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
	ldr	r3, .L228
	push	{r4, r5, r6, lr}
	ldr	r4, .L228+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L163
	cmp	r2, #0
	beq	.L221
	ldrh	r3, [r3, #48]
.L166:
	ldr	r3, .L228+8
	ldr	r1, [r3, #24]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L169
	movne	r1, #2
	strne	r1, [r4, #36]
.L169:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	ldr	r0, [r4, #76]
	strne	r2, [r4, #36]
	cmp	r0, #0
	beq	.L172
	ldr	r2, [r4, #80]
	cmp	r2, #8
	movle	r2, #5
	strle	r2, [r4, #36]
.L172:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L173
	ldr	r2, .L228+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #6
	strne	r2, [r4, #36]
.L173:
	ldr	r2, [r3]
	cmp	r2, #0
	ldr	r5, [r4, #32]
	beq	.L174
	mov	r1, #7
	ldr	r2, [r4, #44]
	cmp	r2, #1
	str	r1, [r4, #36]
	ble	.L222
	cmp	r2, #2
	beq	.L223
	ldr	r1, [r4, #48]
	add	r1, r1, #1
	cmp	r2, r1
	bgt	.L186
	ldr	r3, .L228+16
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L178
	add	r2, r2, #1
	str	r2, [r4, #44]
.L226:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L221:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L166
.L163:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L166
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L166
.L174:
	ldr	r2, .L228+16
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L224
	ldr	ip, [r4, #36]
	cmp	ip, #4
	beq	.L190
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L190
.L189:
	cmp	ip, #1
	beq	.L190
	cmp	ip, #6
	beq	.L190
	cmp	r0, #0
	bne	.L225
	cmp	r3, #0
	bne	.L178
.L190:
	ldr	r0, [r4, #44]
	ldr	r3, .L228+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L178:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L224:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L178
	ldr	ip, [r4, #36]
	b	.L189
.L222:
	tst	r5, #7
	bne	.L178
	add	r2, r2, #1
	str	r2, [r4, #44]
	b	.L226
.L223:
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L228+24
	add	r3, r3, r3, lsl #16
	add	r3, r5, r3, lsl #1
	ldr	r1, .L228+28
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	movcs	r3, #3
	add	r5, r5, #1
	strcs	r3, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L186:
	add	r2, r5, r5, lsl #4
	ldr	r1, .L228+32
	add	r2, r2, r2, lsl #8
	add	r2, r2, r2, lsl #16
	sub	r2, r1, r2
	cmp	r1, r2, ror #1
	movcs	r2, #1
	strcs	r2, [r3, #36]
	b	.L178
.L225:
	cmp	ip, #5
	beq	.L227
.L182:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L178
.L227:
	ldr	r0, [r4, #44]
	ldr	r3, .L228+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
	b	.L182
.L229:
	.align	2
.L228:
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
	ldr	r5, .L238
	ldr	r8, .L238+4
	ldr	r6, .L238+8
	add	r7, r5, #504
.L232:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L231
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L231:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #72
	cmp	r5, r7
	bne	.L232
	ldr	r5, .L238+12
	ldr	r8, .L238+4
	ldr	r6, .L238+8
	add	r7, r5, #480
.L234:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L233
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L233:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #80
	cmp	r5, r7
	bne	.L234
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L239:
	.align	2
.L238:
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
	ldr	r2, .L250
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L243
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L243
	cmp	r3, #18
	bne	.L242
.L243:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L242:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L251:
	.align	2
.L250:
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
	ldr	r4, .L390
	ldr	fp, [r4]
	cmp	fp, #0
	sub	sp, sp, #36
	bne	.L383
	ldr	r5, .L390+4
	ldr	r10, .L390+8
	ldr	r7, .L390+12
	ldr	r6, [r5, #8]
	ldr	r2, [r5, #28]
	ldr	r3, [r10]
	ldr	r1, [r7]
	add	r2, r6, r2
	ldr	r8, [r5, #12]
	add	r2, r2, #1
	add	r3, r3, r1, lsl #8
	add	r3, r3, r2, lsl #11
	ldrb	r2, [r3, r8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r8
	bne	.L254
	ldr	r2, [r5, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L254
	mov	r0, fp
	ldr	r3, .L390+16
	str	fp, [r3]
.L255:
	ldr	r2, .L390+20
	ldrh	r2, [r2]
	tst	r2, #64
	str	r2, [sp, #16]
	beq	.L256
	ldr	r9, .L390+24
	ldrh	r2, [r9]
	tst	r2, #64
	bne	.L257
	ldr	r2, [r4, #28]
	cmp	r2, #0
	bne	.L378
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L260
	cmp	r0, #0
	bne	.L378
	ldr	r2, [r4, #48]
	cmp	r2, #7
	ble	.L378
.L260:
	ldr	r1, .L390+28
	mov	r2, #0
	ldr	r1, [r1]
	ldr	r0, .L390+32
	ldr	r6, .L390+36
	str	r3, [sp, #16]
	mov	lr, pc
	bx	r6
	mov	r2, #0
	mov	r1, #1
	mvn	r0, #4
	ldr	ip, [r4, #52]
	str	r2, [r4, #56]
	cmp	ip, r2
	str	r2, [r4, #16]
	str	r2, [r4, #40]
	ldr	r2, .L390+20
	ldrh	r2, [r2]
	ldr	r3, [sp, #16]
	streq	r1, [r4, #52]
	str	r2, [sp, #16]
	tst	r2, #64
	ldr	r2, [r4, #32]
	add	r6, r5, #8
	str	r1, [r4, #28]
	str	r0, [r4, #24]
	ldm	r6, {r6, r8}
	str	r2, [sp, #24]
	beq	.L325
	ldrh	r2, [r9]
	tst	r2, #64
	beq	.L326
	b	.L380
.L269:
	beq	.L274
	mov	ip, #1
	ldr	lr, [r7]
	ldr	r2, [r5, #24]
	ldr	r0, [r5, #28]
	add	r2, r2, lr, lsl #8
	add	r0, r6, r0
	add	lr, r8, lr, lsl #8
	add	r2, r2, r8
	add	r2, r2, r0, lsl #11
	add	r0, lr, r0, lsl #11
	ldr	lr, [r10]
	add	r2, lr, r2
	add	r0, lr, r0
.L276:
	ldrb	lr, [r0, ip, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L275
	ldrb	lr, [r2, ip, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L275
	add	ip, ip, #1
	cmp	ip, r1
	ble	.L276
.L274:
	ldr	r3, [r3]
	str	r3, [sp, #20]
.L277:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L279
	ldr	r3, .L390+40
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r4, #56]
	beq	.L385
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L285
.L323:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L286
.L285:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L284
.L287:
	mov	r3, #1
	str	r3, [r4, #40]
	sub	r0, r0, #3
.L284:
	ldr	r3, .L390+44
	mov	lr, pc
	bx	r3
	ldr	fp, .L390+48
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L390+52
	mov	lr, pc
	bx	fp
	ldr	r3, .L390+56
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	tst	r3, #3
	ldreq	r3, [r4, #56]
	addeq	r3, r3, #1
	streq	r3, [r4, #56]
	ldr	r3, [r4, #48]
	add	r6, r6, r0
	add	r3, r3, #1
	str	r0, [r4, #24]
	str	r6, [r5, #8]
	str	r3, [r4, #48]
.L279:
	cmp	r9, #93
	bgt	.L289
.L389:
	sub	r3, r6, r9
	cmp	r3, #79
	ble	.L290
	ldr	r3, [r4, #24]
	cmp	r3, #0
	ble	.L290
	ldr	r2, [r4, #4]
	cmp	r2, #0
	addeq	r9, r9, r3
	ldreq	r3, [sp, #28]
	streq	r9, [r3]
.L290:
	cmp	r9, #3
	bgt	.L289
.L291:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L293
	ldr	r3, [r4, #60]
	ldr	r2, [sp, #20]
	add	r3, r3, #1
	cmp	r2, #0
	cmpne	r3, #15
	str	r3, [r4, #60]
	movgt	r2, #1
	movle	r2, #0
	bgt	.L386
	cmp	r3, #15
	movgt	r3, #2
	strgt	r2, [r4, #32]
	strgt	r2, [r4, #60]
	strgt	r3, [r5, #68]
.L293:
	ldr	r3, [sp, #16]
	tst	r3, #256
	beq	.L296
	ldr	r3, .L390+24
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L297
.L296:
	ldr	r3, [sp, #16]
	tst	r3, #512
	beq	.L381
	ldr	r3, .L390+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L297
.L381:
	ldr	r1, [r5, #68]
.L299:
	ldr	r3, .L390+60
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L302
.L303:
	ldr	r3, [r5, #56]
	ldr	r9, .L390+64
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
	ble	.L309
	mov	fp, #1
	ldr	r6, .L390+68
	ldr	r8, .L390+72
	add	r10, r6, #504
.L313:
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
	beq	.L311
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L311
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L311:
	add	r6, r6, #72
	cmp	r10, r6
	bne	.L313
	mov	fp, #1
	ldr	r6, .L390+76
	add	r10, r6, #480
.L317:
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
	beq	.L315
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L315
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L315:
	add	r6, r6, #80
	cmp	r10, r6
	bne	.L317
	ldr	r3, .L390+80
	ldr	r6, [r3]
	cmp	r6, #1
	beq	.L387
.L319:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
.L321:
	ldr	r3, .L390+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L322
	ldr	r3, .L390+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L322
	ldr	r2, [r5, #60]
	cmp	r2, #0
	bne	.L322
	mov	r0, #1
	mov	r3, #20
	ldr	r1, .L390+84
	ldr	r1, [r1]
	str	r0, [r5, #60]
	str	r3, [r5, #64]
	lsr	r1, r1, r0
	ldr	r3, .L390+36
	ldr	r0, .L390+88
	str	r2, [r5, #44]
	str	r2, [r9, #40]
	str	r2, [r9, #32]
	str	r2, [r9, #28]
	mov	lr, pc
	bx	r3
.L322:
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r4, #12]
	str	r3, [r4, #16]
.L383:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L254:
	mov	r2, #0
	mov	r1, #1
	ldr	r3, .L390+16
	mov	r0, r1
	str	r2, [r4, #40]
	str	r1, [r3]
	str	r2, [r4, #28]
	str	r2, [r4, #44]
	str	r2, [r4, #48]
	str	r2, [r4, #52]
	b	.L255
.L256:
	ldr	r2, [r4, #32]
	str	r2, [sp, #24]
.L263:
	ldr	r1, [r4, #24]
	ldr	r2, .L390+92
	cmp	r1, #0
	str	r2, [sp, #28]
	ldr	r9, [r2]
	bge	.L269
	ldr	r3, [r3]
	str	r3, [sp, #20]
.L268:
	ldr	r2, [r7]
	ldr	r3, [r5, #24]
	ldr	r0, [r10]
	add	r3, r3, r2, lsl #8
	add	r2, r8, r2, lsl #8
	add	r3, r3, r8
	add	r2, r2, r6, lsl #11
	add	r3, r3, r6, lsl #11
	add	r2, r0, r2
	add	r3, r0, r3
	ldrb	r0, [r2, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L270
.L388:
	ldrb	r0, [r3, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L270
	sub	fp, fp, #1
	cmp	fp, r1
	ble	.L277
	ldrb	r0, [r2, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L388
.L270:
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
	str	r3, [r4, #24]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r2, [r4, #40]
	b	.L277
.L297:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L381
	mov	r3, #1
	ldr	r2, [sp, #20]
	cmp	r2, #0
	str	r3, [r4, #32]
	beq	.L300
	mov	r1, #2
	mov	r3, #3
	str	r1, [r5, #68]
	str	r3, [r5, #20]
	b	.L299
.L275:
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ldreq	r2, [sp, #28]
	addeq	r9, r9, ip
	streq	r9, [r2]
	mov	r1, #0
	mov	r2, #1
	add	r6, r6, ip
	cmp	r9, #93
	str	r6, [r5, #8]
	str	r1, [r4, #24]
	str	r2, [r3]
	str	r2, [sp, #20]
	ble	.L389
.L289:
	sub	r3, r6, r9
	cmp	r3, #80
	bgt	.L291
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bge	.L291
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ldreq	r2, [sp, #28]
	addeq	r3, r3, r9
	streq	r3, [r2]
	b	.L291
.L300:
	ldr	r2, [r4, #44]
	cmp	r2, #0
	bne	.L381
	str	r3, [r4, #44]
	str	r3, [r5, #68]
.L302:
	ldr	r3, .L390+40
	ldrh	r3, [r3, #48]
	ldr	r2, [r7]
	tst	r3, #32
	lsl	r3, r2, #8
	bne	.L304
	ldr	r9, [r5, #20]
	ldr	r1, [r10]
	sub	lr, r8, r9
	add	ip, lr, r3
	add	r0, r1, r6, lsl #11
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L304
	ldr	r0, [r5, #28]
	add	r0, r6, r0
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #11
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r8, #0
	cmpge	r1, #0
	bne	.L304
	ldr	r1, [r4, #4]
	cmp	r1, #0
	str	lr, [r5, #12]
	bne	.L330
	ldr	r0, .L390+96
	ldr	r1, [r0]
	cmp	r1, #0
	ble	.L305
	sub	ip, lr, r1
	cmp	ip, #119
	bgt	.L330
	sub	r1, r1, r9
	str	r1, [r0]
.L305:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r2, #0
	moveq	r1, #0
	cmp	r1, #0
	beq	.L330
	mov	ip, #67108864
	mov	lr, #256
	mov	r8, #376
	add	r1, r2, #23
	lsl	r1, r1, #24
	orr	r1, r1, #1073741824
	lsr	r1, r1, #16
	sub	r2, r2, #1
	str	r2, [r7]
	strh	r1, [ip, #10]	@ movhi
	ldr	r1, [sp, #28]
	ldrh	r1, [r1]
	str	r8, [r5, #12]
	str	lr, [r0]
	strh	lr, [ip, #20]	@ movhi
	strh	r1, [ip, #22]	@ movhi
	sub	r3, r3, #256
.L304:
	ldr	r1, .L390+40
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L382
	ldr	r0, [r5, #24]
	ldr	ip, [r5, #20]
	ldr	lr, [r10]
	add	r1, r0, r8
	add	r1, r1, ip
	add	r1, r1, r3
	add	r9, lr, r6, lsl #11
	ldrb	r9, [r9, r1]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L382
	ldr	r9, [r5, #28]
	add	r9, r6, r9
	sub	r9, r9, #1
	add	lr, lr, r9, lsl #11
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	cmp	r1, #0
	ldr	r1, .L390+100
	bne	.L306
	ldr	lr, [r1]
	add	r0, r0, lr
	cmp	r0, #2048
	bgt	.L306
	ldr	r0, [r4, #4]
	add	r8, r8, ip
	cmp	r0, #0
	str	r8, [r5, #12]
	bne	.L306
	ldr	r0, .L390+96
	ldr	r10, [r0]
	cmp	r10, #256
	ble	.L307
.L308:
	mov	ip, #67108864
	mov	lr, #0
	mov	r8, #120
	ldr	r3, [sp, #28]
	add	r10, r2, #25
	lsl	r10, r10, #24
	ldrh	r9, [r3]
	orr	r10, r10, #1073741824
	add	r3, r2, #1
	lsr	r10, r10, #16
	str	r3, [r7]
	strh	r10, [ip, #10]	@ movhi
	lsl	r3, r3, #8
	str	r8, [r5, #12]
	str	lr, [r0]
	strh	lr, [ip, #20]	@ movhi
	strh	r9, [ip, #22]	@ movhi
	b	.L306
.L382:
	ldr	r1, .L390+100
.L306:
	add	r3, r8, r3
	str	r3, [r1]
	b	.L303
.L309:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r9, #40]
	b	.L321
.L257:
	ldr	r2, [r4, #32]
	str	r2, [sp, #24]
.L380:
	ldr	r2, .L390+20
	ldrh	r2, [r2]
	str	r2, [sp, #16]
	b	.L263
.L385:
	ldr	r2, [r4, #52]
	cmp	r2, #0
	beq	.L281
	ldr	r2, [r4, #40]
	cmp	r2, #0
	bne	.L282
	ldr	r2, [r4, #28]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L284
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L287
.L324:
	sub	r0, r0, #4
	b	.L284
.L378:
	ldr	r2, [r4, #32]
	str	r2, [sp, #24]
.L326:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L264
	ldr	r2, [r4, #48]
	cmp	r2, #7
	bgt	.L380
.L264:
	ldr	r2, [sp, #24]
	cmp	r2, #0
	bne	.L380
	ldr	r1, [r10]
	ldr	r0, [r7]
	sub	r2, r6, #1
	add	r2, r1, r2, lsl #11
	add	r2, r2, r0, lsl #8
	ldrb	r1, [r2, r8]	@ zero_extendqisi2
	cmp	r1, #0
	add	r2, r2, r8
	bne	.L380
	ldr	r1, [r5, #24]
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L380
	ldr	r8, [sp, #24]
	ldr	r1, .L390+104
	mov	r2, r8
	ldr	r1, [r1]
	ldr	r0, .L390+108
	ldr	r6, .L390+36
	str	r3, [sp, #16]
	mov	lr, pc
	bx	r6
	mvn	r1, #4
	mov	r2, #1
	ldr	r3, [sp, #16]
	str	r8, [r3]
	ldr	r3, .L390+20
	ldrh	r3, [r3]
	ldr	r0, .L390+92
	str	r3, [sp, #16]
	ldr	r3, [r4, #32]
	add	r6, r5, #8
	str	r8, [r4, #56]
	str	r8, [r4, #16]
	str	r8, [sp, #20]
	str	r0, [sp, #28]
	str	r1, [r4, #24]
	str	r2, [r4, #52]
	ldr	r9, [r0]
	ldm	r6, {r6, r8}
	str	r3, [sp, #24]
	b	.L268
.L386:
	mov	r3, #0
	mov	r1, #2
	mov	r2, #3
	str	r3, [r4, #32]
	str	r3, [r4, #60]
	str	r1, [r5, #68]
	str	r2, [r5, #20]
	b	.L293
.L281:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L323
	b	.L284
.L387:
	ldr	r7, .L390+112
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
	beq	.L319
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ldreq	r3, [r7]
	subeq	r3, r3, #1
	streq	r6, [r7, #32]
	streq	r3, [r7]
	b	.L319
.L286:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L285
	b	.L324
.L282:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L323
	b	.L287
.L330:
	mov	r8, lr
	b	.L304
.L307:
	sub	r9, r8, r10
	ldr	fp, .L390+116
	cmp	r9, #120
	movgt	r9, #1
	movle	r9, #0
	cmp	lr, fp
	movgt	r9, #0
	cmp	r9, #0
	beq	.L306
	add	ip, ip, r10
	cmp	ip, #256
	str	ip, [r0]
	ble	.L306
	b	.L308
.L325:
	ldr	r2, .L390+92
	ldr	r3, [r3]
	mvn	r1, #4
	str	r2, [sp, #28]
	str	r3, [sp, #20]
	ldr	r9, [r2]
	b	.L268
.L391:
	.align	2
.L390:
	.word	.LANCHOR0
	.word	player
	.word	collisionMap
	.word	bgIndex
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
	ldr	lr, .L396
	ldr	ip, .L396+4
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
	bne	.L392
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L392:
	ldr	lr, [sp], #4
	bx	lr
.L397:
	.align	2
.L396:
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
	ldr	r0, .L401
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
.L402:
	.align	2
.L401:
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
	ldr	r2, .L404
	ldr	r3, .L404+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L405:
	.align	2
.L404:
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
	ldr	r3, .L407
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L408:
	.align	2
.L407:
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
	ldr	r4, .L415
	ldr	r2, [r4, #76]
	cmp	r2, #0
	beq	.L410
	ldr	r3, [r4, #72]
.L411:
	cmp	r3, #0
	ble	.L414
.L409:
	pop	{r4, lr}
	bx	lr
.L414:
	ldr	r3, .L415+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L409
	pop	{r4, lr}
	b	gameOver.part.0
.L410:
	ldr	r3, .L415+8
	ldr	r0, .L415+12
	ldr	r1, [r3]
	ldr	r3, .L415+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r4, #72]
	sub	r3, r3, #1
	str	r3, [r4, #72]
	str	r2, [r4, #76]
	b	.L411
.L416:
	.align	2
.L415:
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
	ldr	r6, .L499
	ldr	r4, .L499+4
	ldr	ip, [r6]
	ldr	r9, .L499+8
	ldr	r10, .L499+12
	ldr	r5, .L499+16
	sub	sp, sp, #28
	sub	r3, ip, #239
	add	r7, r4, #504
.L426:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	bgt	.L492
	add	r1, ip, #239
	cmp	r0, r1
	bgt	.L492
	ldr	r1, [r4]
	cmp	r1, #0
	mov	r1, #1
	str	r1, [r4, #4]
	beq	.L419
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L421
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L421:
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
	beq	.L422
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L494
.L422:
	ldr	ip, [r6]
	ldr	r1, [r4, #12]
	sub	r0, ip, r1
	ldr	r3, [r4, #64]
	eor	r2, r0, r0, asr #31
	sub	r2, r2, r0, asr #31
	cmp	r2, r3
	ldr	lr, [r10]
	ldr	r2, [r4, #8]
	bge	.L491
	ldr	r3, [r5, #8]
	sub	r3, r3, r2
	cmp	r3, #0
	ldr	fp, [r4, #68]
	rsblt	r3, r3, #0
	cmp	r3, fp
	bge	.L491
	ldr	r3, .L499+20
	ldr	r3, [r3, #12]
	tst	r3, #1
	beq	.L485
.L491:
	ldr	r3, [r4, #20]
.L423:
	add	r3, r2, r3
	add	r3, r3, #1
	add	r1, lr, r1
	ldrb	r0, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r1, r1, r3, lsl #11
	bne	.L495
.L425:
	add	r2, r2, #1
	str	r2, [r4, #8]
.L493:
	sub	r3, ip, #239
.L419:
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L426
	ldr	r4, .L499+24
	ldr	r8, .L499+8
	ldr	r9, .L499+20
	ldr	fp, .L499+28
	ldr	r10, .L499+32
	add	r7, r4, #480
.L440:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	movgt	r3, #0
	bgt	.L427
	add	r3, ip, #239
	cmp	r0, r3
	movgt	r3, #0
	movle	r3, #1
.L427:
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L429
	ldr	r3, [r4, #44]
	cmp	r3, #0
	ldr	r5, .L499+16
	beq	.L430
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L430:
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
	beq	.L431
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L496
.L431:
	ldr	r2, [r6]
	ldr	r3, [r4, #12]
	sub	r3, r2, r3
	eor	r1, r3, r3, asr #31
	ldr	r2, [r4, #60]
	sub	r1, r1, r3, asr #31
	cmp	r1, r2
	bge	.L429
	ldr	r1, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r1
	cmp	r2, #0
	ldr	r1, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, r1
	bge	.L429
	ldr	r2, [r9, #12]
	ands	r2, r2, #1
	bne	.L429
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L434
	movne	r3, #1
	strne	r3, [r4, #56]
.L434:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	bne	.L435
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	bgt	.L497
.L429:
	add	r4, r4, #80
	cmp	r7, r4
	beq	.L439
	ldr	ip, [r6]
	sub	r3, ip, #239
	b	.L440
.L492:
	str	r8, [r4, #4]
	b	.L419
.L495:
	ldr	r3, [r4, #16]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L425
	b	.L493
.L439:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L496:
	bl	hurtPlayer
	b	.L431
.L494:
	bl	hurtPlayer
	b	.L422
.L485:
	cmp	r0, #0
	blt	.L498
	beq	.L491
	ldr	r3, [r4, #60]
	ldr	r0, [r4, #16]
	add	r3, r1, r3
	add	r0, r3, r0
	str	r3, [sp, #16]
	add	r3, lr, r2, lsl #11
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L423
	add	r0, lr, r0
	mov	fp, r0
	str	r0, [sp, #20]
	add	r0, r2, r3
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L423
	add	fp, r0, #2048
	ldr	r0, [sp, #16]
	add	r0, lr, r0
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L423
	ldr	r0, [sp, #20]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [sp, #16]
	movne	r1, r0
	strne	r0, [r4, #12]
	b	.L423
.L435:
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L429
	mov	r2, #0
	ldr	r3, .L499+36
	mov	r0, r10
	ldr	r1, [fp]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	ldr	r3, .L499+40
.L438:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L436
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L436
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #44
	bne	.L438
	b	.L429
.L497:
	mov	r3, #1
	str	r2, [r4, #36]
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	b	.L429
.L498:
	ldr	r0, [r4, #60]
	add	r3, lr, r2, lsl #11
	sub	r0, r1, r0
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L423
	ldr	r0, [sp, #16]
	add	fp, lr, r0
	add	r0, r2, r3
	str	fp, [sp, #20]
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L423
	ldr	fp, [sp, #20]
	add	r0, r0, #2048
	ldrb	fp, [fp, r0]	@ zero_extendqisi2
	cmp	fp, #0
	ldr	fp, [sp, #20]
	add	r0, fp, r0
	beq	.L423
	ldr	fp, [r4, #16]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r1, [sp, #16]
	strne	r1, [r4, #12]
	b	.L423
.L436:
	mov	r0, #1
	ldr	r3, [r4, #56]
	ldr	lr, .L499+40
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
	b	.L429
.L500:
	.align	2
.L499:
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
	ldr	r4, .L520
	ldr	r3, [r4, #64]
	cmp	r3, #0
	bne	.L501
	ldr	r3, .L520+4
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	bne	.L518
.L504:
	cmp	r3, #0
	beq	.L506
	ldr	r3, .L520+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L506
.L505:
	mov	r3, #1
	str	r3, [r4, #64]
.L506:
	bl	updatePlayer
	bl	updateBullets
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L520+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L519
.L507:
	ldr	r3, .L520+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L508
	ldr	r2, [r3, #8]
	cmp	r2, #238
	ble	.L501
.L508:
	ldr	r2, [r4]
	cmp	r2, #0
	bne	.L501
	mov	r1, #1
	pop	{r4, lr}
	str	r2, [r3, #44]
	str	r1, [r3, #32]
	b	gameOver.part.0
.L501:
	pop	{r4, lr}
	bx	lr
.L518:
	ldr	r2, .L520+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L505
	b	.L504
.L519:
	ldr	r3, .L520+20
	mov	lr, pc
	bx	r3
	b	.L507
.L521:
	.align	2
.L520:
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
	ldr	r3, .L525
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L525+4
	ldr	r5, [r3]
	ldr	r3, .L525+8
	ldr	r4, [r2]
	smull	r1, r2, r3, r5
	smull	r1, r3, r4, r3
	mov	r6, #0
	mov	r9, #76
	mov	r8, #82
	asr	r0, r5, #31
	rsb	r2, r0, r2, asr #5
	add	r2, r2, r2, lsl #2
	ldr	lr, .L525+12
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
	ldr	r7, .L525+16
	rsb	r0, r0, ip, asr #2
	rsb	r1, r1, fp, asr #2
	ldr	ip, [r7, #20]
	ldr	fp, .L525+20
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
	str	ip, [r7, #20]
	strh	r1, [lr, #4]	@ movhi
	strh	r6, [fp, r0]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L526:
	.align	2
.L525:
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
	ldr	r3, .L536
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L536+4
	ldr	r3, [r3, #72]
	ldr	ip, [r6, #20]
	cmp	r3, #0
	add	r4, ip, #1
	ble	.L535
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	r0, .L536+8
	cmp	r3, #1
	lsl	lr, ip, #3
	addeq	r3, ip, #2
	strh	r2, [r0, lr]	@ movhi
	add	lr, r0, ip, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	ip, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L528
	ldr	r5, .L536+12
	add	lr, r0, r4, lsl #3
	cmp	r3, #2
	lsl	r4, r4, #3
	strh	r5, [lr, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	add	lr, ip, #2
	strh	r2, [r0, r4]	@ movhi
	addeq	r4, ip, #3
	moveq	ip, lr
	beq	.L528
	ldr	r4, .L536+16
	cmp	r3, #3
	add	r3, r0, lr, lsl #3
	strh	r4, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, ip, #3
	addeq	r4, ip, #4
	moveq	ip, r3
	lsl	lr, lr, #3
	strh	r2, [r0, lr]	@ movhi
	ldrne	r4, .L536+20
	addne	lr, r0, r3, lsl #3
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [r0, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, ip, #5
	addne	ip, ip, #4
.L528:
	ldr	r2, [r6, #68]
	ldr	lr, .L536+24
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L536+28
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
	ldr	lr, .L536+32
	lsl	r4, r4, #3
	add	r3, ip, #4
	ldr	ip, .L536+36
	strh	r5, [r0, r4]	@ movhi
	lsl	r4, r2, #3
	add	r2, r0, r2, lsl #3
	strh	r5, [r0, fp]	@ movhi
	strh	r7, [r1, #2]	@ movhi
	str	r3, [r6, #20]
	strh	r5, [r0, r4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L535:
	ldr	r0, .L536+8
	b	.L528
.L537:
	.align	2
.L536:
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
	ldr	r3, .L546
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L546+4
	str	r1, [r3, #20]
	mov	lr, pc
	bx	r2
	bl	drawHUD
	ldr	r3, .L546+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L545
.L540:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawTimer
	ldr	r3, .L546+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L546+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L546+20
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L546+24
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [ip, #20]	@ movhi
	ldr	r2, .L546+28
	ldr	lr, [r2]
	ldr	r1, .L546+32
	lsl	r2, lr, #16
	lsr	r2, r2, #16
	ldr	r0, [r1]
	strh	r2, [ip, #22]	@ movhi
	ldr	r2, .L546+36
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
.L545:
	ldr	r3, .L546+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L546+44
	mov	lr, pc
	bx	r3
	b	.L540
.L547:
	.align	2
.L546:
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
	ldr	r3, .L550
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	gameOver.part.0
.L551:
	.align	2
.L550:
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
