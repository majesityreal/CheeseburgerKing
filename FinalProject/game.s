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
	mov	r2, #0
	mov	r3, #67108864
	mov	r1, #22528
	push	{r4, r5, r6, lr}
	ldr	r0, .L35
	ldr	r5, .L35+4
	str	r2, [r0]
	strh	r1, [r3, #10]	@ movhi
	ldr	r3, [r5]
	cmp	r3, r2
	beq	.L30
	cmp	r3, #1
	bne	.L34
	ldr	r4, .L35+8
	ldr	r1, .L35+12
	ldr	ip, .L35+16
	str	r3, [r1, #4]
	ldr	r0, .L35+20
	ldr	r1, .L35+24
	str	r2, [r4, #560]
	str	r2, [r4, #564]
	ldr	r3, .L35+28
	ldr	r2, .L35+32
	str	ip, [r4, #548]
	str	r0, [r4, #552]
	str	r1, [r4, #556]
	str	r2, [r3]
.L32:
	ldr	r3, .L35+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r6, .L35+40
	ldr	r1, [r3, #4]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L35+44
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
.L34:
	ldr	r4, .L35+8
	b	.L32
.L30:
	mov	r1, #60
	mov	r0, #66
	mov	r2, #28
	ldr	r4, .L35+8
	str	r1, [r4, #20]
	ldr	r1, .L35+48
	str	r1, [r4, #4]
	ldr	r1, .L35+52
	str	r0, [r4, #28]
	str	r1, [r4, #8]
	ldr	r0, .L35+56
	ldr	r1, .L35+60
	str	r0, [r4, #12]
	str	r1, [r4, #24]
	ldr	r0, .L35+12
	ldr	r1, .L35+28
	str	r2, [r4, #32]
	str	r2, [r4, #36]
	ldr	r2, .L35+64
	str	r3, [r4, #16]
	str	r3, [r0, #4]
	str	r2, [r1]
	b	.L32
.L36:
	.align	2
.L35:
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
	ldr	r3, .L41
	add	r2, r3, #1024
.L38:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L38
	mov	r4, #0
	bl	initMaps
	mov	r5, #1
	bl	initPlayer
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #2
	mov	r2, #4
	ldr	r3, .L41+4
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
	ldr	r3, .L41+8
	ldr	r2, [r3]
	ldr	r3, .L41+12
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r2, .L41+16
	ldr	r1, [r3, #20]
	ldr	r0, .L41+20
	ldr	r3, .L41+24
	str	r4, [r2, #8]
	str	lr, [r2, #12]
	str	ip, [r0]
	str	r1, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	.align	2
.L41:
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
	ldr	r2, .L44
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L45:
	.align	2
.L44:
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
	ldr	r3, .L50
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L50+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L50+8
	str	r3, [sp]
	ldr	r0, .L50+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L50+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L49
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L49:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L51:
	.align	2
.L50:
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
	ldr	r9, .L72
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L72+4
	ldr	r5, .L72+8
	ldr	r8, .L72+12
	sub	sp, sp, #20
.L59:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, r3, #239
	add	r1, ip, r2
	cmp	r0, r1
	sub	r1, r3, #476
	sub	r1, r1, #3
	bgt	.L55
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
	ble	.L71
.L56:
	cmp	ip, lr
	bgt	.L61
.L57:
	ldr	lr, [r5, #24]
	ldr	ip, [r5, #8]
	ldr	r10, [r5, #28]
	ldr	r1, [r4, #8]
	stmib	sp, {ip, lr}
	str	r3, [sp]
	str	r10, [sp, #12]
	add	r0, r0, #3
	ldr	r3, [r4, #20]
	add	r1, r1, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L58
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L58
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L58
	mov	r1, #1
	ldr	r2, [r5, #72]
	sub	r2, r2, #1
	str	r3, [r4]
	str	r2, [r5, #72]
	str	r1, [r5, #76]
.L58:
	add	r6, r6, #1
	cmp	r6, #6
	add	r4, r4, #44
	bne	.L59
.L52:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	mov	lr, #0
	add	r0, r4, #36
	ldm	r0, {r0, r10}
	mla	r0, r10, r0, ip
	add	ip, r2, r0
	cmp	r1, ip
	str	r0, [r4, #12]
	str	lr, [r4, #4]
	bgt	.L61
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L57
.L61:
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
.L71:
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L57
	b	.L56
.L73:
	.align	2
.L72:
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
	ldr	r1, .L94
	ldr	r3, [r1, #52]
	ldr	ip, .L94+4
	cmp	r3, #0
	ldr	r2, [ip, #12]
	beq	.L75
	ldr	r0, .L94+8
	lsl	r1, r2, #3
	ldrh	r3, [r0, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [r0, r1]	@ movhi
	str	r2, [ip, #12]
	bx	lr
.L75:
	ldr	r0, .L94+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [r0]
	ldr	r0, .L94+16
	sub	r3, r3, #3
	ldr	r4, [r0]
	ldr	r0, [r1, #8]
	sub	r3, r3, lr
	sub	r0, r0, r4
	ldr	lr, .L94+8
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
	b	.L78
.L80:
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L79
.L79:
	add	r3, r3, #7
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
.L76:
	add	r2, r2, #1
	str	r2, [ip, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L87:
	lsl	r3, r3, #1
	rsbs	r0, r3, #0
	and	r0, r0, #3
	and	r1, r3, #3
	rsbpl	r1, r0, #0
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L76
.L86:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
	b	.L76
.L85:
	ldr	r1, .L94+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L76
.L84:
	ldr	r1, .L94+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L76
.L83:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, lr, r4
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L76
.L82:
	ldr	r1, .L94+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L76
.L81:
	ldr	r1, .L94+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L76
.L78:
	add	r1, r3, r0, lsl #5
	lsl	r1, r1, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L76
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
	ldr	r6, .L127
	ldr	r8, .L127+4
	ldr	r7, .L127+8
	ldr	r1, .L127+12
	ldr	r4, [r6, #12]
	ldr	r9, .L127+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L127+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L102
.L124:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L97
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
	beq	.L122
	ldr	ip, [r3, #28]
	add	r0, r0, ip, lsl #5
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L99:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L123
.L102:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L124
.L97:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L102
.L123:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L127+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L127+28
	ldr	r5, .L127+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L109
.L126:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L103
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
	beq	.L107
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L105:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L125
.L109:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L126
.L103:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L109
.L125:
	add	r4, r4, #13
	str	r4, [r6, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L107:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L108
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L105
.L122:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L99
.L108:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L105
.L128:
	.align	2
.L127:
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
	ldr	r2, .L144+4
	ldr	r9, .L144+8
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r8, [r9, #12]
	add	r1, r1, r0, lsl #8
	sub	sp, sp, #12
	str	r1, [sp]
	mov	r1, r8
	ldr	r3, .L144+12
	ldr	r5, .L144+16
	ldrh	r2, [r3]
	add	r6, r8, #1
	add	r5, r5, r8, lsl #3
	add	r7, r8, #7
	ldr	r4, .L144+20
	mov	r8, r2
	ldr	r3, .L144+24
	mov	r2, r1
	ldr	fp, .L144+28
	ldr	r10, .L144+32
	b	.L136
.L143:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.L130
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
	beq	.L133
	cmp	r0, #3
	beq	.L134
	cmp	r0, #1
	orreq	r1, r1, #4096
	strheq	r1, [r5, #2]	@ movhi
.L135:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	smull	ip, lr, r10, r1
	asr	ip, r1, #31
	rsb	ip, ip, lr, asr #2
	add	ip, ip, ip, lsl #2
	cmp	r1, ip, lsl #1
	strh	fp, [r5, #4]	@ movhi
	str	r1, [r4, #24]
	bne	.L132
	str	r2, [sp, #4]
	ldr	r3, .L144+36
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	str	r1, [r4, #28]
	ldr	r3, .L144+24
.L132:
	add	r6, r6, #1
	cmp	r6, r7
	add	r4, r4, #44
	add	r5, r5, #8
	beq	.L142
.L136:
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L143
.L130:
	ldrh	r1, [r5]
	orr	r1, r1, #512
	strh	r1, [r5]	@ movhi
	b	.L132
.L142:
	add	r8, r2, #6
	str	r8, [r9, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L133:
	orr	r1, r1, #12288
	strh	r1, [r5, #2]	@ movhi
	b	.L135
.L134:
	orr	r1, r1, #8192
	strh	r1, [r5, #2]	@ movhi
	b	.L135
.L145:
	.align	2
.L144:
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
	ldr	r1, .L156
	ldr	r3, [r1, #40]
	ldr	r0, .L156+4
	cmp	r3, #0
	ldr	r2, [r0, #12]
	beq	.L147
	ldr	ip, .L156+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #12]
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
	str	r2, [r0, #12]
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
	ldr	r3, .L224
	push	{r4, r5, r6, lr}
	ldr	r4, .L224+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L159
	cmp	r2, #0
	beq	.L217
	ldrh	r3, [r3, #48]
.L162:
	ldr	r3, .L224+8
	ldr	r1, [r3, #16]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L165
	movne	r1, #2
	strne	r1, [r4, #36]
.L165:
	ldr	r1, [r3, #20]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	ldr	r0, [r4, #76]
	strne	r2, [r4, #36]
	cmp	r0, #0
	beq	.L168
	ldr	r2, [r4, #80]
	cmp	r2, #8
	movle	r2, #5
	strle	r2, [r4, #36]
.L168:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L169
	ldr	r2, .L224+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #6
	strne	r2, [r4, #36]
.L169:
	ldr	r2, [r3]
	cmp	r2, #0
	ldr	r5, [r4, #32]
	beq	.L170
	mov	r1, #7
	ldr	r2, [r4, #44]
	cmp	r2, #1
	str	r1, [r4, #36]
	ble	.L218
	cmp	r2, #2
	beq	.L219
	ldr	r1, [r4, #48]
	add	r1, r1, #1
	cmp	r2, r1
	bgt	.L182
	ldr	r3, .L224+16
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L174
	add	r2, r2, #1
	str	r2, [r4, #44]
.L222:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L217:
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
.L170:
	ldr	r2, .L224+16
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L220
	ldr	ip, [r4, #36]
	cmp	ip, #4
	beq	.L186
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L186
.L185:
	cmp	ip, #1
	beq	.L186
	cmp	ip, #6
	beq	.L186
	cmp	r0, #0
	bne	.L221
	cmp	r3, #0
	bne	.L174
.L186:
	ldr	r0, [r4, #44]
	ldr	r3, .L224+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L174:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L220:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L174
	ldr	ip, [r4, #36]
	b	.L185
.L218:
	tst	r5, #7
	bne	.L174
	add	r2, r2, #1
	str	r2, [r4, #44]
	b	.L222
.L219:
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L224+24
	add	r3, r3, r3, lsl #16
	add	r3, r5, r3, lsl #1
	ldr	r1, .L224+28
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	movcs	r3, #3
	add	r5, r5, #1
	strcs	r3, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L182:
	add	r2, r5, r5, lsl #4
	ldr	r1, .L224+32
	add	r2, r2, r2, lsl #8
	add	r2, r2, r2, lsl #16
	sub	r2, r1, r2
	cmp	r1, r2, ror #1
	movcs	r2, #1
	strcs	r2, [r3, #28]
	b	.L174
.L221:
	cmp	ip, #5
	beq	.L223
.L178:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L174
.L223:
	ldr	r0, [r4, #44]
	ldr	r3, .L224+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
	b	.L178
.L225:
	.align	2
.L224:
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
	ldr	r5, .L234
	ldr	r8, .L234+4
	ldr	r6, .L234+8
	add	r7, r5, #504
.L228:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L227
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L227:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #72
	cmp	r5, r7
	bne	.L228
	ldr	r5, .L234+12
	ldr	r8, .L234+4
	ldr	r6, .L234+8
	add	r7, r5, #480
.L230:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L229
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L229:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #80
	cmp	r5, r7
	bne	.L230
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L235:
	.align	2
.L234:
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
	ldr	r10, .L315
	ldr	r4, .L315+4
	ldr	ip, [r10]
	ldr	fp, .L315+8
	ldr	r8, .L315+12
	ldr	r5, .L315+16
	sub	sp, sp, #28
	sub	r3, ip, #239
	add	r6, r4, #504
.L247:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	bgt	.L308
	add	r1, ip, #239
	cmp	r0, r1
	bgt	.L308
	ldr	r1, [r4]
	cmp	r1, #0
	mov	r1, #1
	str	r1, [r4, #4]
	beq	.L238
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L240
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L240:
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
	bx	fp
	cmp	r0, #0
	beq	.L242
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L242
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r2, [r5, #76]
	str	r3, [r5, #72]
	ble	.L310
.L242:
	ldr	ip, [r10]
	ldr	r1, [r4, #12]
	sub	r0, ip, r1
	ldr	r3, [r4, #64]
	eor	r2, r0, r0, asr #31
	sub	r2, r2, r0, asr #31
	cmp	r2, r3
	ldr	lr, [r8]
	ldr	r2, [r4, #8]
	bge	.L307
	ldr	r3, [r5, #8]
	sub	r3, r3, r2
	cmp	r3, #0
	ldr	r9, [r4, #68]
	rsblt	r3, r3, #0
	cmp	r3, r9
	bge	.L307
	ldr	r3, .L315+20
	ldr	r3, [r3, #8]
	tst	r3, #1
	beq	.L302
.L307:
	ldr	r3, [r4, #20]
.L244:
	add	r3, r2, r3
	add	r3, r3, #1
	add	r1, lr, r1
	ldrb	r0, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r1, r1, r3, lsl #11
	bne	.L311
.L246:
	add	r2, r2, #1
	str	r2, [r4, #8]
.L309:
	sub	r3, ip, #239
.L238:
	add	r4, r4, #72
	cmp	r6, r4
	bne	.L247
	mov	r9, #1
	ldr	r4, .L315+24
	ldr	r7, .L315+8
	ldr	r8, .L315+20
	ldr	fp, .L315+28
	ldr	r5, .L315+16
	add	r6, r4, #480
.L263:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	movgt	r3, #0
	bgt	.L248
	add	r3, ip, #239
	cmp	r0, r3
	movgt	r3, #0
	movle	r3, #1
.L248:
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L250
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L251
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L251:
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
	bx	r7
	cmp	r0, #0
	beq	.L253
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L253
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r9, [r5, #76]
	str	r3, [r5, #72]
	ble	.L312
.L253:
	ldr	r1, [r4, #12]
	ldr	r3, [r10]
	sub	r3, r3, r1
	ldr	r2, [r4, #60]
	eor	r0, r3, r3, asr #31
	sub	r0, r0, r3, asr #31
	cmp	r0, r2
	bge	.L250
	ldr	r0, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r0
	cmp	r2, #0
	ldr	ip, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, ip
	bge	.L250
	ldr	r2, [r8, #8]
	ands	r2, r2, #1
	bne	.L250
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L257
	strne	r9, [r4, #56]
.L257:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	beq	.L313
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L250
	mov	r2, #0
	ldr	r3, .L315+28
	str	r2, [r4, #76]
	str	r2, [r4, #72]
.L261:
	ldr	ip, [r3]
	cmp	ip, #0
	beq	.L259
	ldr	ip, [r3, #4]
	cmp	ip, #0
	beq	.L259
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #44
	bne	.L261
.L250:
	add	r4, r4, #80
	cmp	r6, r4
	beq	.L262
	ldr	ip, [r10]
	sub	r3, ip, #239
	b	.L263
.L308:
	str	r7, [r4, #4]
	b	.L238
.L311:
	ldr	r3, [r4, #16]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L246
	b	.L309
.L262:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L302:
	cmp	r0, #0
	blt	.L314
	beq	.L307
	ldr	r3, [r4, #60]
	ldr	r0, [r4, #16]
	add	r3, r1, r3
	add	r0, r3, r0
	str	r3, [sp, #16]
	add	r3, lr, r2, lsl #11
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L244
	add	r0, lr, r0
	mov	r9, r0
	str	r0, [sp, #20]
	add	r0, r2, r3
	ldrb	r9, [r9, r0, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r0, r0, #11
	bne	.L244
	add	r9, r0, #2048
	ldr	r0, [sp, #16]
	add	r0, lr, r0
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L244
	ldr	r0, [sp, #20]
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [sp, #16]
	movne	r1, r0
	strne	r0, [r4, #12]
	b	.L244
.L310:
	ldr	r3, .L315+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L242
	bl	gameOver.part.0
	b	.L242
.L313:
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	strgt	r9, [r4, #76]
	strgt	r2, [r4, #36]
	strgt	r9, [r4, #72]
	b	.L250
.L312:
	ldr	r3, [r8]
	cmp	r3, #0
	bne	.L253
	bl	gameOver.part.0
	b	.L253
.L314:
	ldr	r0, [r4, #60]
	add	r3, lr, r2, lsl #11
	sub	r0, r1, r0
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L244
	ldr	r0, [sp, #16]
	add	r9, lr, r0
	add	r0, r2, r3
	str	r9, [sp, #20]
	ldrb	r9, [r9, r0, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r0, r0, #11
	bne	.L244
	ldr	r9, [sp, #20]
	add	r0, r0, #2048
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #0
	ldr	r9, [sp, #20]
	add	r0, r9, r0
	beq	.L244
	ldr	r9, [r4, #16]
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r1, [sp, #16]
	strne	r1, [r4, #12]
	b	.L244
.L259:
	ldr	r3, [r4, #56]
	add	ip, r2, r2, lsl #2
	add	r2, r2, ip, lsl #1
	lsl	r3, r3, #1
	add	ip, fp, r2, lsl #2
	add	r0, r0, #8
	sub	r3, r3, #1
	str	r9, [fp, r2, lsl #2]
	str	r0, [ip, #8]
	str	r1, [ip, #12]
	str	r3, [ip, #36]
	b	.L250
.L316:
	.align	2
.L315:
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
	ldr	r2, .L327
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L320
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L320
	cmp	r3, #18
	bne	.L319
.L320:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L319:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L328:
	.align	2
.L327:
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
	ldr	r6, .L497
	ldr	r0, [r6]
	cmp	r0, #0
	sub	sp, sp, #36
	bne	.L486
	ldr	r7, .L497+4
	ldr	r8, .L497+8
	ldr	r1, .L497+12
	ldr	lr, [r8]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #12]
	ldr	ip, [r7, #8]
	ldr	r9, [r1]
	add	r4, r2, lr, lsl #8
	add	r1, ip, r3
	str	r3, [sp, #28]
	add	r1, r1, #1
	add	r3, r9, r4
	str	r4, [sp, #20]
	ldrb	r4, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r4, #0
	lsl	r4, lr, #8
	ldr	lr, [r7, #24]
	str	r4, [sp, #24]
	mov	r5, lr
	str	lr, [sp, #16]
	bne	.L331
	add	lr, r9, r2
	add	lr, lr, r5
	add	lr, lr, r4
	ldrb	r1, [lr, r1, lsl #11]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L331
	mov	r1, r0
	ldr	fp, .L497+16
	str	r0, [fp]
.L332:
	ldr	lr, .L497+20
	ldrh	lr, [lr]
	tst	lr, #64
	beq	.L333
	ldr	lr, .L497+24
	ldrh	lr, [lr]
	tst	lr, #64
	beq	.L490
.L333:
	ldr	r5, [r6, #16]
	cmp	r5, #0
	ldr	r10, [fp]
	bge	.L341
.L340:
	mov	r3, #0
	ldr	r1, [sp, #16]
	ldr	lr, [sp, #24]
	add	r1, r1, r2
	add	r1, r1, ip, lsl #11
	add	r1, r1, lr
	ldr	lr, [sp, #20]
	add	lr, lr, ip, lsl #11
	add	r1, r9, r1
	add	lr, r9, lr
.L343:
	ldrb	r4, [lr, r3, lsl #11]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L342
	ldrb	r4, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L342
	sub	r3, r3, #1
	cmp	r3, r5
	bgt	.L343
.L341:
	ldr	r3, .L497+28
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L345
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L491
.L345:
	cmp	r10, #0
	bne	.L481
	ldr	r1, [r6, #16]
	cmp	r1, #0
	ldrgt	r4, [r7, #8]
	ble	.L484
.L409:
	ldr	r3, [sp, #16]
	add	r3, r3, r2
	ldr	r2, [sp, #24]
	add	r3, r3, r2
	ldr	r2, [sp, #28]
	add	ip, r2, r4
	ldr	r2, [sp, #20]
	add	r3, r3, ip, lsl #11
	add	ip, r2, ip, lsl #11
	add	r3, r9, r3
	add	r9, r9, ip
.L353:
	ldrb	r2, [r9, r0, lsl #11]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L352
	ldrb	r2, [r3, r0, lsl #11]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L352
	add	r0, r0, #1
	cmp	r0, r1
	blt	.L353
.L484:
	ldr	r5, .L497+32
	b	.L354
.L352:
	ldr	r3, [r6, #4]
	ldr	r5, .L497+32
	cmp	r3, #0
	ldreq	r3, [r5]
	sub	r0, r0, #1
	add	r4, r0, r4
	addeq	r0, r3, r0
	mov	r3, #1
	str	r4, [r7, #8]
	streq	r0, [r5]
	str	r3, [fp]
.L354:
	ldr	r3, .L497+28
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r6, #48]
	beq	.L492
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L363
.L407:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L364
.L363:
	ldr	r3, [r6, #44]
	cmp	r3, #0
	beq	.L362
.L365:
	mov	r3, #1
	str	r3, [r6, #32]
	sub	r0, r0, #3
.L362:
	ldr	r3, .L497+36
	mov	lr, pc
	bx	r3
	ldr	r4, .L497+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L497+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L497+48
	mov	lr, pc
	bx	r3
	ldr	r3, [r6, #8]
	tst	r3, #3
	ldreq	r3, [r6, #48]
	addeq	r3, r3, #1
	streq	r3, [r6, #48]
	ldr	r10, [fp]
	ldr	r3, [r6, #40]
	cmp	r10, #0
	add	r3, r3, #1
	str	r3, [r6, #40]
	str	r0, [r6, #16]
	ldr	r4, [r7, #8]
	ldr	r3, [r5]
	bne	.L405
	add	r4, r4, r0
	cmp	r3, #95
	str	r4, [r7, #8]
	sub	r2, r4, r3
	ble	.L477
.L370:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	beq	.L373
.L489:
	ldr	r2, [r6, #4]
	cmp	r2, #0
	addeq	r0, r0, r3
	streq	r0, [r5]
.L373:
	ldr	r10, [r6, #24]
	cmp	r10, #0
	beq	.L374
	ldr	r2, [r6, #52]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r6, #52]
	mov	r10, #0
	movle	r2, #0
	movgt	r2, #1
.L375:
	cmp	r2, #0
	movne	r3, #0
	movne	r2, #2
	strne	r3, [r6, #24]
	strne	r3, [r6, #52]
	strne	r2, [r7, #68]
.L374:
	ldr	r3, .L497+20
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L376
	ldr	r2, .L497+24
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L377
.L376:
	tst	r3, #512
	beq	.L378
	ldr	r3, .L497+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L379
.L378:
	ldr	r1, [r7, #68]
	ldr	r5, [r7, #12]
.L380:
	ldr	r3, .L497+52
	ldr	r0, [r6, #8]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L383
	ldr	r2, [r7, #8]
.L384:
	ldr	r3, [r7, #56]
	ldr	r4, .L497+56
	rsb	r3, r3, r3, lsl #31
	ldr	r1, [r4, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r1, r3, r5
	sub	r3, r3, #2
	stm	r4, {r2, r3}
	bl	animateSlash
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L390
	mov	fp, #1
	ldr	r5, .L497+60
	ldr	r9, .L497+64
	add	r10, r5, #504
.L394:
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
	beq	.L392
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L392
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L392:
	add	r5, r5, #72
	cmp	r10, r5
	bne	.L394
	mov	fp, #1
	ldr	r5, .L497+68
	add	r10, r5, #480
.L398:
	ldr	r1, [r8]
	ldr	r0, [r4, #4]
	ldr	r3, [r5, #16]
	ldr	r2, [r4, #24]
	ldr	ip, [r4, #16]
	add	r0, r0, r1, lsl #8
	add	r3, r3, #2
	ldr	r1, [r5, #20]
	add	r0, r0, r2
	sub	r2, ip, r2
	ldr	ip, [r5, #8]
	str	r3, [sp, #8]
	ldr	r3, [r5, #12]
	stm	sp, {r3, ip}
	str	r1, [sp, #12]
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L396
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L396
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L396:
	add	r5, r5, #80
	cmp	r10, r5
	bne	.L398
	ldr	r3, .L497+72
	ldr	r5, [r3]
	cmp	r5, #1
	beq	.L493
.L400:
	ldr	r3, [r7, #64]
	sub	r3, r3, #1
	str	r3, [r7, #64]
.L402:
	ldr	r3, .L497+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L403
	ldr	r3, .L497+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L403
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L403
	mov	r1, #1
	mov	r2, #20
	str	r3, [r7, #44]
	str	r3, [r4, #40]
	str	r3, [r4, #32]
	str	r3, [r4, #28]
	str	r1, [r7, #60]
	str	r2, [r7, #64]
.L403:
	ldr	r3, [r6, #8]
	add	r3, r3, #1
	str	r3, [r6, #8]
.L486:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L331:
	mov	lr, #0
	mov	r4, #1
	ldr	fp, .L497+16
	mov	r1, r4
	str	lr, [r6, #32]
	str	r4, [fp]
	str	lr, [r6, #20]
	str	lr, [r6, #36]
	str	lr, [r6, #40]
	b	.L332
.L342:
	ldr	r1, [r6, #4]
	cmp	r1, #0
	ldreq	r5, .L497+32
	ldreq	r1, [r5]
	add	r3, r3, #1
	add	ip, ip, r3
	addeq	r3, r1, r3
	streq	r3, [r5]
	mov	r1, #1
	mov	r3, #0
	str	ip, [r7, #8]
	str	r3, [r6, #16]
	str	r3, [r6, #44]
	str	r3, [r6, #48]
	str	r1, [r6, #32]
	b	.L341
.L491:
	ldr	r1, [r6, #16]
	cmp	r1, #0
	ble	.L346
	ldr	r4, [r7, #8]
	ldr	ip, [sp, #20]
	add	ip, ip, r4, lsl #11
	add	ip, r9, ip
.L348:
	ldrb	lr, [ip]	@ zero_extendqisi2
	cmp	lr, #0
	sub	r3, r3, #1
	bne	.L347
	ldr	lr, [sp, #16]
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	cmp	lr, #0
	sub	ip, ip, #2032
	beq	.L494
.L347:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #16]
	str	r3, [r6, #44]
	str	r2, [r6, #32]
.L346:
	cmp	r10, #0
	beq	.L484
.L481:
	ldr	r4, [r7, #8]
.L405:
	mov	r3, #0
	ldr	r2, [r6, #24]
	cmp	r2, r3
	str	r3, [r6, #16]
	str	r3, [r6, #48]
	str	r3, [r6, #44]
	beq	.L374
	ldr	r1, [r6, #52]
	add	r1, r1, #1
	cmp	r1, #15
	movle	r2, #0
	movgt	r2, #1
	cmp	r10, #0
	cmpne	r1, #15
	str	r1, [r6, #52]
	ble	.L375
	mov	r1, #2
	mov	r2, #3
	str	r3, [r6, #24]
	str	r3, [r6, #52]
	str	r1, [r7, #68]
	str	r2, [r7, #20]
	b	.L374
.L379:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	bne	.L378
.L377:
	mov	r3, #1
	cmp	r10, #0
	str	r3, [r6, #24]
	ldr	r5, [r7, #12]
	bne	.L495
	ldr	r2, [r6, #36]
	cmp	r2, #0
	ldrne	r1, [r7, #68]
	bne	.L380
.L382:
	str	r3, [r6, #36]
	str	r3, [r7, #68]
.L383:
	ldr	r3, .L497+28
	ldrh	r3, [r3, #48]
	ldr	r2, [r8]
	tst	r3, #32
	lsl	r3, r2, #8
	bne	.L385
	ldr	r1, .L497+12
	ldr	ip, [r7, #20]
	ldr	r1, [r1]
	sub	r0, r5, ip
	add	lr, r0, r3
	add	r9, r1, r4, lsl #11
	ldrb	r9, [r9, lr]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L385
	ldr	r9, [r7, #28]
	add	r4, r4, r9
	sub	r4, r4, #1
	add	r1, r1, r4, lsl #11
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r5, #0
	cmpge	r1, #0
	bne	.L385
	ldr	r1, [r6, #4]
	cmp	r1, #0
	str	r0, [r7, #12]
	bne	.L413
	ldr	r9, .L497+76
	ldr	r1, [r9]
	cmp	r1, #0
	blt	.L386
	sub	lr, r0, r1
	cmp	lr, #119
	suble	r1, r1, ip
	strle	r1, [r9]
.L386:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r2, #0
	moveq	r1, #0
	cmp	r1, #0
	beq	.L413
	ldr	r3, .L497+80
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r0, #256
	mov	r5, #376
	ldr	r3, [r8]
	add	r2, r3, #23
	lsl	r2, r2, #24
	orr	r2, r2, #1073741824
	lsr	r2, r2, #16
	sub	r3, r3, #1
	str	r3, [r8]
	strh	r2, [r1, #10]	@ movhi
	ldr	r2, .L497+32
	ldrh	r2, [r2]
	str	r0, [r9]
	strh	r0, [r1, #20]	@ movhi
	strh	r2, [r1, #22]	@ movhi
	str	r5, [r7, #12]
	lsl	r3, r3, #8
.L385:
	ldr	r2, .L497+28
	ldrh	r2, [r2, #48]
	tst	r2, #16
	ldr	r2, [r7, #8]
	bne	.L485
	ldr	r1, .L497+12
	ldr	r0, [r7, #24]
	ldr	ip, [r7, #20]
	ldr	lr, [r1]
	add	r1, r0, r5
	add	r1, r1, ip
	add	r1, r1, r3
	add	r4, lr, r2, lsl #11
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L485
	ldr	r4, [r7, #28]
	add	r4, r2, r4
	sub	r4, r4, #1
	add	lr, lr, r4, lsl #11
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	cmp	r1, #0
	ldr	r4, .L497+84
	bne	.L387
	ldr	r1, [r4]
	add	r0, r0, r1
	cmp	r0, #2048
	bgt	.L387
	ldr	r0, [r6, #4]
	add	r5, r5, ip
	cmp	r0, #0
	str	r5, [r7, #12]
	bne	.L387
	ldr	r9, .L497+76
	ldr	r0, [r9]
	cmp	r0, #256
	ble	.L388
.L389:
	ldr	r3, .L497+80
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	ip, #0
	mov	r5, #120
	ldr	r3, [r8]
	add	r2, r3, #25
	lsl	r2, r2, #24
	add	r1, r3, #1
	orr	r2, r2, #1073741824
	ldr	r3, .L497+32
	lsr	r2, r2, #16
	str	r1, [r8]
	strh	r2, [r0, #10]	@ movhi
	ldrh	r2, [r3]
	str	ip, [r9]
	lsl	r3, r1, #8
	strh	ip, [r0, #20]	@ movhi
	strh	r2, [r0, #22]	@ movhi
	str	r5, [r7, #12]
	ldr	r2, [r7, #8]
	b	.L387
.L485:
	ldr	r4, .L497+84
.L387:
	add	r3, r5, r3
	str	r3, [r4]
	b	.L384
.L390:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r7, #60]
	str	r3, [r4, #40]
	b	.L402
.L492:
	ldr	r2, [r6, #44]
	cmp	r2, #0
	beq	.L359
	ldr	r2, [r6, #32]
	cmp	r2, #0
	bne	.L360
	ldr	r2, [r6, #20]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L362
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L365
.L406:
	sub	r0, r0, #4
	b	.L362
.L490:
	ldr	lr, [r6, #20]
	cmp	lr, #0
	bne	.L334
	ldr	r4, [r6, #44]
	cmp	r4, #0
	bne	.L335
	cmp	r1, #0
	bne	.L339
	ldr	lr, [r6, #40]
	cmp	lr, #7
	ble	.L339
	mov	r3, #1
	mvn	lr, #4
	str	r1, [r6, #48]
	str	r1, [r6, #32]
	str	r3, [r6, #20]
	str	r3, [r6, #44]
	str	lr, [r6, #16]
	b	.L333
.L495:
	mov	r1, #2
	mov	r3, #3
	str	r1, [r7, #68]
	str	r3, [r7, #20]
	b	.L380
.L494:
	cmn	r3, #2
	sub	ip, ip, #15
	mvn	r3, #0
	bne	.L348
	cmp	r10, #0
	beq	.L409
	b	.L405
.L477:
	cmp	r2, #79
	cmpgt	r0, #0
	bgt	.L489
	cmp	r3, #0
	ble	.L373
	b	.L370
.L335:
	mov	r4, #1
	mvn	r5, #4
	str	lr, [r6, #48]
	str	lr, [r6, #32]
	str	r4, [r6, #20]
	str	r5, [r6, #16]
.L334:
	cmp	r1, #0
	beq	.L496
.L339:
	ldr	r10, [r6, #24]
	cmp	r10, #0
	bne	.L333
	sub	r1, ip, #1
	ldrb	r3, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L333
	ldr	lr, [sp, #16]
	add	r3, r9, r2
	add	r3, r3, lr
	ldr	lr, [sp, #24]
	add	r3, r3, lr
	ldrb	r3, [r3, r1, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L333
	mvn	r5, #4
	mov	r3, #1
	str	r10, [r6, #48]
	str	r10, [fp]
	str	r5, [r6, #16]
	str	r3, [r6, #44]
	b	.L340
.L359:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L407
	b	.L362
.L493:
	ldr	r8, .L497+88
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
	beq	.L400
	ldr	r3, [r8, #32]
	cmp	r3, #0
	ldreq	r3, [r8]
	subeq	r3, r3, #1
	streq	r5, [r8, #32]
	streq	r3, [r8]
	b	.L400
.L364:
	ldr	r3, [r6, #32]
	cmp	r3, #0
	bne	.L363
	b	.L406
.L496:
	ldr	r1, [r6, #40]
	cmp	r1, #7
	ble	.L339
	b	.L333
.L360:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L407
	b	.L365
.L413:
	mov	r5, r0
	b	.L385
.L388:
	sub	lr, r5, r0
	ldr	r10, .L497+92
	cmp	lr, #120
	movgt	lr, #1
	movle	lr, #0
	cmp	r1, r10
	movgt	lr, #0
	cmp	lr, #0
	beq	.L387
	add	ip, ip, r0
	cmp	ip, #256
	str	ip, [r9]
	ble	.L387
	b	.L389
.L498:
	.align	2
.L497:
	.word	.LANCHOR0
	.word	player
	.word	bgIndex
	.word	collisionMap
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	vOff
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
	.word	hOff
	.word	waitForVBlank
	.word	pMapPos
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
	ldr	r3, .L515
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L500
	ldr	r2, .L515+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L500
	mov	r2, #1
	ldr	r3, .L515+8
	str	r2, [r3, #56]
.L502:
	bl	updatePlayer
	bl	updateBullets
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L515+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L514
.L503:
	ldr	r3, .L515+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L504
	ldr	r2, [r3, #8]
	cmp	r2, #238
	ble	.L499
.L504:
	ldr	r2, .L515+8
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L499
	mov	r1, #1
	pop	{r4, lr}
	str	r2, [r3, #44]
	str	r1, [r3, #32]
	b	gameOver.part.0
.L500:
	cmp	r3, #0
	beq	.L502
	ldr	r3, .L515+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L515+8
	streq	r2, [r3, #56]
	b	.L502
.L499:
	pop	{r4, lr}
	bx	lr
.L514:
	ldr	r3, .L515+20
	mov	lr, pc
	bx	r3
	b	.L503
.L516:
	.align	2
.L515:
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
	ldr	lr, .L521
	ldr	ip, .L521+4
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
	bne	.L517
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L517:
	ldr	lr, [sp], #4
	bx	lr
.L522:
	.align	2
.L521:
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
	ldr	r0, .L526
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
.L527:
	.align	2
.L526:
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
	ldr	r2, .L529
	ldr	r3, .L529+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L530:
	.align	2
.L529:
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
	ldr	r3, .L532
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L533:
	.align	2
.L532:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
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
	ldr	r3, .L544
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L544+4
	ldr	r3, [r3, #72]
	ldr	ip, [r6, #12]
	cmp	r3, #0
	add	r4, ip, #1
	ble	.L543
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	r0, .L544+8
	cmp	r3, #1
	lsl	lr, ip, #3
	addeq	r3, ip, #2
	strh	r2, [r0, lr]	@ movhi
	add	lr, r0, ip, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	ip, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L536
	ldr	r5, .L544+12
	add	lr, r0, r4, lsl #3
	cmp	r3, #2
	lsl	r4, r4, #3
	strh	r5, [lr, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	add	lr, ip, #2
	strh	r2, [r0, r4]	@ movhi
	addeq	r4, ip, #3
	moveq	ip, lr
	beq	.L536
	ldr	r4, .L544+16
	cmp	r3, #3
	add	r3, r0, lr, lsl #3
	strh	r4, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, ip, #3
	addeq	r4, ip, #4
	moveq	ip, r3
	lsl	lr, lr, #3
	strh	r2, [r0, lr]	@ movhi
	ldrne	r4, .L544+20
	addne	lr, r0, r3, lsl #3
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [r0, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, ip, #5
	addne	ip, ip, #4
.L536:
	ldr	r2, [r6, #60]
	ldr	lr, .L544+24
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L544+28
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
	ldr	lr, .L544+32
	lsl	r4, r4, #3
	add	r3, ip, #4
	ldr	ip, .L544+36
	strh	r5, [r0, r4]	@ movhi
	lsl	r4, r2, #3
	add	r2, r0, r2, lsl #3
	strh	r5, [r0, fp]	@ movhi
	strh	r7, [r1, #2]	@ movhi
	str	r3, [r6, #12]
	strh	r5, [r0, r4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L543:
	ldr	r0, .L544+8
	b	.L536
.L545:
	.align	2
.L544:
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
	mov	r1, #1
	ldr	r2, .L550
	push	{r4, lr}
	ldr	r3, .L550+4
	str	r1, [r2, #12]
	mov	lr, pc
	bx	r3
	bl	drawHUD
	ldr	r3, .L550+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L549
.L547:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	ldr	r3, .L550+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L550+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L550+20
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L550+24
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, .L550+28
	ldrh	r0, [r3]
	ldr	r3, .L550+32
	strh	r0, [r1, #22]	@ movhi
	ldr	r0, [r3]
	ldr	r3, .L550+36
	add	r2, r2, r0, lsl #8
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, lr}
	bx	lr
.L549:
	ldr	r3, .L550+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L550+44
	mov	lr, pc
	bx	r3
	b	.L547
.L551:
	.align	2
.L550:
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
	ldr	r3, .L554
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	gameOver.part.0
.L555:
	.align	2
.L554:
	.word	.LANCHOR0
	.size	gameOver, .-gameOver
	.global	cameraLock
	.global	dead
	.comm	maps,2176,4
	.comm	bgIndex,4,4
	.comm	pMapPos,4,4
	.comm	currMap,4,4
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
