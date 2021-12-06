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
	mov	r7, #0
	mov	r3, #67108864
	mov	r2, #22528
	ldr	r5, .L35
	ldr	r6, [r5]
	ldr	r1, .L35+4
	cmp	r6, r7
	str	r7, [r1]
	strh	r2, [r3, #10]	@ movhi
	beq	.L30
	cmp	r6, #1
	bne	.L34
	ldr	r3, .L35+8
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L35+12
	ldr	r3, .L35+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	ldr	r4, .L35+20
	ldr	r2, .L35+24
	ldr	r1, .L35+28
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	ip, .L35+32
	ldr	r0, .L35+36
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	ldr	r2, .L35+40
	ldr	r1, .L35+44
	str	r7, [r3, #16]
	str	r7, [r3, #20]
	str	ip, [r3, #12]
	str	r6, [r0, #4]
	str	r1, [r2]
.L32:
	ldr	r3, .L35+48
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r6, .L35+52
	ldr	r1, [r3, #4]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L35+56
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
.L34:
	ldr	r4, .L35+20
	b	.L32
.L30:
	ldr	r3, .L35+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L35+64
	ldr	r3, .L35+16
	mov	lr, pc
	bx	r3
	mov	r0, #60
	mov	r1, #66
	mov	r2, #28
	ldr	r3, [r5]
	ldr	r4, .L35+20
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r0, [r3, #20]
	str	r1, [r3, #28]
	ldr	r0, .L35+68
	ldr	r1, .L35+72
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, .L35+76
	ldr	r1, .L35+80
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r6, [r3, #16]
	ldr	r0, .L35+36
	ldr	r1, .L35+40
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	ldr	r3, .L35+84
	str	r6, [r0, #4]
	str	r3, [r1]
	b	.L32
.L36:
	.align	2
.L35:
	.word	currMap
	.word	bgIndex
	.word	bossSong_length
	.word	bossSong_data
	.word	playSoundA
	.word	maps
	.word	boss1Map
	.word	boss1Pal
	.word	boss1Tiles
	.word	.LANCHOR0
	.word	collisionMap
	.word	boss1CollisionBitmap
	.word	waitForVBlank
	.word	DMANow
	.word	100712448
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
	ldr	r9, .L73
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L73+4
	ldr	r5, .L73+8
	ldr	r8, .L73+12
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
	beq	.L58
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L58
	ldr	r10, [r5, #76]
	cmp	r10, #0
	beq	.L72
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
.L72:
	ldr	r3, .L73+16
	mov	r2, r10
	ldr	r1, [r3]
	ldr	r0, .L73+20
	ldr	r3, .L73+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	str	r10, [r4]
	str	r3, [r5, #72]
	str	r2, [r5, #76]
	b	.L58
.L71:
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L57
	b	.L56
.L74:
	.align	2
.L73:
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
	ldr	r1, .L95
	ldr	r3, [r1, #52]
	ldr	ip, .L95+4
	cmp	r3, #0
	ldr	r2, [ip, #12]
	beq	.L76
	ldr	r0, .L95+8
	lsl	r1, r2, #3
	ldrh	r3, [r0, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [r0, r1]	@ movhi
	str	r2, [ip, #12]
	bx	lr
.L76:
	ldr	r0, .L95+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [r0]
	ldr	r0, .L95+16
	sub	r3, r3, #3
	ldr	r4, [r0]
	ldr	r0, [r1, #8]
	sub	r3, r3, lr
	sub	r0, r0, r4
	ldr	lr, .L95+8
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
	b	.L79
.L81:
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L80
.L80:
	add	r3, r3, #7
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
.L77:
	add	r2, r2, #1
	str	r2, [ip, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	lsl	r3, r3, #1
	rsbs	r0, r3, #0
	and	r0, r0, #3
	and	r1, r3, #3
	rsbpl	r1, r0, #0
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L87:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L86:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L85:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L84:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, lr, r4
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L83:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L82:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L79:
	add	r1, r3, r0, lsl #5
	lsl	r1, r1, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L77
.L96:
	.align	2
.L95:
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
	ldr	r6, .L128
	ldr	r8, .L128+4
	ldr	r7, .L128+8
	ldr	r1, .L128+12
	ldr	r4, [r6, #12]
	ldr	r9, .L128+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L128+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L103
.L125:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L98
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
	beq	.L123
	ldr	ip, [r3, #28]
	add	r0, r0, ip, lsl #5
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L100:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L124
.L103:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L125
.L98:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L103
.L124:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L128+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L128+28
	ldr	r5, .L128+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L110
.L127:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L104
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
	beq	.L108
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L106:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L126
.L110:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L127
.L104:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L110
.L126:
	add	r4, r4, #13
	str	r4, [r6, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L108:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L109
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L106
.L123:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L100
.L109:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L106
.L129:
	.align	2
.L128:
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
	ldr	r1, .L145
	ldr	r2, .L145+4
	ldr	r9, .L145+8
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r8, [r9, #12]
	add	r1, r1, r0, lsl #8
	sub	sp, sp, #12
	str	r1, [sp]
	mov	r1, r8
	ldr	r3, .L145+12
	ldr	r5, .L145+16
	ldrh	r2, [r3]
	add	r6, r8, #1
	add	r5, r5, r8, lsl #3
	add	r7, r8, #7
	ldr	r4, .L145+20
	mov	r8, r2
	ldr	r3, .L145+24
	mov	r2, r1
	ldr	fp, .L145+28
	ldr	r10, .L145+32
	b	.L137
.L144:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.L131
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
	beq	.L134
	cmp	r0, #3
	beq	.L135
	cmp	r0, #1
	orreq	r1, r1, #4096
	strheq	r1, [r5, #2]	@ movhi
.L136:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	smull	ip, lr, r10, r1
	asr	ip, r1, #31
	rsb	ip, ip, lr, asr #2
	add	ip, ip, ip, lsl #2
	cmp	r1, ip, lsl #1
	strh	fp, [r5, #4]	@ movhi
	str	r1, [r4, #24]
	bne	.L133
	str	r2, [sp, #4]
	ldr	r3, .L145+36
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	str	r1, [r4, #28]
	ldr	r3, .L145+24
.L133:
	add	r6, r6, #1
	cmp	r6, r7
	add	r4, r4, #44
	add	r5, r5, #8
	beq	.L143
.L137:
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L144
.L131:
	ldrh	r1, [r5]
	orr	r1, r1, #512
	strh	r1, [r5]	@ movhi
	b	.L133
.L143:
	add	r8, r2, #6
	str	r8, [r9, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L134:
	orr	r1, r1, #12288
	strh	r1, [r5, #2]	@ movhi
	b	.L136
.L135:
	orr	r1, r1, #8192
	strh	r1, [r5, #2]	@ movhi
	b	.L136
.L146:
	.align	2
.L145:
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
	ldr	r1, .L157
	ldr	r3, [r1, #40]
	ldr	r0, .L157+4
	cmp	r3, #0
	ldr	r2, [r0, #12]
	beq	.L148
	ldr	ip, .L157+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #12]
	bx	lr
.L148:
	ldr	ip, .L157+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L157+16
	ldr	ip, .L157+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L157+8
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
.L158:
	.align	2
.L157:
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
	ldr	r3, .L225
	push	{r4, r5, r6, lr}
	ldr	r4, .L225+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L160
	cmp	r2, #0
	beq	.L218
	ldrh	r3, [r3, #48]
.L163:
	ldr	r3, .L225+8
	ldr	r1, [r3, #16]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L166
	movne	r1, #2
	strne	r1, [r4, #36]
.L166:
	ldr	r1, [r3, #20]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	ldr	r0, [r4, #76]
	strne	r2, [r4, #36]
	cmp	r0, #0
	beq	.L169
	ldr	r2, [r4, #80]
	cmp	r2, #8
	movle	r2, #5
	strle	r2, [r4, #36]
.L169:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L170
	ldr	r2, .L225+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #6
	strne	r2, [r4, #36]
.L170:
	ldr	r2, [r3]
	cmp	r2, #0
	ldr	r5, [r4, #32]
	beq	.L171
	mov	r1, #7
	ldr	r2, [r4, #44]
	cmp	r2, #1
	str	r1, [r4, #36]
	ble	.L219
	cmp	r2, #2
	beq	.L220
	ldr	r1, [r4, #48]
	add	r1, r1, #1
	cmp	r2, r1
	bgt	.L183
	ldr	r3, .L225+16
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L175
	add	r2, r2, #1
	str	r2, [r4, #44]
.L223:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L218:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L163
.L160:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L163
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L163
.L171:
	ldr	r2, .L225+16
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L221
	ldr	ip, [r4, #36]
	cmp	ip, #4
	beq	.L187
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L187
.L186:
	cmp	ip, #1
	beq	.L187
	cmp	ip, #6
	beq	.L187
	cmp	r0, #0
	bne	.L222
	cmp	r3, #0
	bne	.L175
.L187:
	ldr	r0, [r4, #44]
	ldr	r3, .L225+20
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
.L221:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L175
	ldr	ip, [r4, #36]
	b	.L186
.L219:
	tst	r5, #7
	bne	.L175
	add	r2, r2, #1
	str	r2, [r4, #44]
	b	.L223
.L220:
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L225+24
	add	r3, r3, r3, lsl #16
	add	r3, r5, r3, lsl #1
	ldr	r1, .L225+28
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	movcs	r3, #3
	add	r5, r5, #1
	strcs	r3, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L183:
	add	r2, r5, r5, lsl #4
	ldr	r1, .L225+32
	add	r2, r2, r2, lsl #8
	add	r2, r2, r2, lsl #16
	sub	r2, r1, r2
	cmp	r1, r2, ror #1
	movcs	r2, #1
	strcs	r2, [r3, #28]
	b	.L175
.L222:
	cmp	ip, #5
	beq	.L224
.L179:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L175
.L224:
	ldr	r0, [r4, #44]
	ldr	r3, .L225+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
	b	.L179
.L226:
	.align	2
.L225:
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
	ldr	r5, .L235
	ldr	r8, .L235+4
	ldr	r6, .L235+8
	add	r7, r5, #504
.L229:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L228
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L228:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #72
	cmp	r5, r7
	bne	.L229
	ldr	r5, .L235+12
	ldr	r8, .L235+4
	ldr	r6, .L235+8
	add	r7, r5, #480
.L231:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L230
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L230:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #80
	cmp	r5, r7
	bne	.L231
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L236:
	.align	2
.L235:
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
	ldr	r2, .L247
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L240
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L240
	cmp	r3, #18
	bne	.L239
.L240:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L239:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r6, .L418
	ldr	r4, [r6]
	cmp	r4, #0
	sub	sp, sp, #36
	bne	.L408
	ldr	r7, .L418+4
	ldr	r5, .L418+8
	ldr	r1, [r7, #12]
	ldr	r8, .L418+12
	ldr	r3, [r5]
	ldr	r2, [r7, #8]
	ldr	r0, [r7, #28]
	add	r3, r3, r1
	ldr	r1, [r8]
	add	r2, r2, r0
	add	r3, r3, r1, lsl #8
	add	r2, r2, #1
	ldrb	r1, [r3, r2, lsl #11]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r2, lsl #11
	bne	.L251
	ldr	r2, [r7, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L251
	mov	r1, r4
	ldr	r9, .L418+16
	str	r4, [r9]
.L252:
	ldr	r3, .L418+20
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L253
	ldr	r10, .L418+24
	ldrh	r3, [r10]
	tst	r3, #64
	beq	.L412
.L253:
	ldr	r1, [r9]
.L260:
	ldr	r10, [r6, #16]
	cmp	r10, #0
	bge	.L263
.L262:
	mov	r0, #0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	ldr	lr, [r8]
	ldr	ip, [r7, #8]
	add	r3, r2, r3
	add	r3, r3, lr, lsl #8
	add	r2, r2, lr, lsl #8
	ldr	lr, [r5]
	add	r3, r3, ip, lsl #11
	add	r2, r2, ip, lsl #11
	add	r3, lr, r3
	add	r2, lr, r2
.L265:
	ldrb	lr, [r2, r0, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L264
	ldrb	lr, [r3, r0, lsl #11]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L264
	sub	r0, r0, #1
	cmp	r0, r10
	bgt	.L265
.L263:
	ldr	r3, .L418+28
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L267
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L413
.L267:
	cmp	r1, #0
	bne	.L402
	ldr	ip, [r6, #16]
	cmp	ip, #0
	ble	.L406
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #24]
	ldr	r3, [r8]
	ldr	fp, [r7, #8]
	ldr	r0, [r5]
	add	r10, r2, r1
	lsl	r3, r3, #8
.L330:
	ldr	r1, [r7, #28]
	add	r2, r2, r3
	add	r1, fp, r1
	add	r3, r3, r10
	add	r2, r2, r1, lsl #11
	add	r3, r3, r1, lsl #11
	add	r2, r0, r2
	add	r0, r0, r3
.L275:
	ldrb	r3, [r2, r4, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L274
	ldrb	r3, [r0, r4, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L274
	add	r4, r4, #1
	cmp	r4, ip
	blt	.L275
.L406:
	ldr	r10, .L418+32
	b	.L276
.L274:
	ldr	r3, [r6, #4]
	ldr	r10, .L418+32
	cmp	r3, #0
	ldreq	r3, [r10]
	sub	r4, r4, #1
	add	fp, r4, fp
	addeq	r4, r3, r4
	mov	r3, #1
	str	fp, [r7, #8]
	streq	r4, [r10]
	str	r3, [r9]
.L276:
	ldr	r3, .L418+28
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r6, #48]
	beq	.L414
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L285
.L328:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L286
.L285:
	ldr	r3, [r6, #44]
	cmp	r3, #0
	beq	.L284
.L287:
	mov	r3, #1
	str	r3, [r6, #32]
	sub	r0, r0, #3
.L284:
	ldr	r3, .L418+36
	mov	lr, pc
	bx	r3
	ldr	r4, .L418+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L418+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L418+48
	mov	lr, pc
	bx	r3
	ldr	r3, [r6, #8]
	tst	r3, #3
	ldreq	r3, [r6, #48]
	addeq	r3, r3, #1
	streq	r3, [r6, #48]
	ldr	r1, [r9]
	ldr	r3, [r6, #40]
	cmp	r1, #0
	add	r3, r3, #1
	str	r3, [r6, #40]
	str	r0, [r6, #16]
	ldr	fp, [r7, #8]
	ldr	r3, [r10]
	bne	.L327
	add	fp, fp, r0
	cmp	r3, #95
	str	fp, [r7, #8]
	sub	r2, fp, r3
	ble	.L398
.L292:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	beq	.L295
.L411:
	ldr	r2, [r6, #4]
	cmp	r2, #0
	addeq	r0, r0, r3
	streq	r0, [r10]
.L295:
	ldr	r1, [r6, #24]
	cmp	r1, #0
	beq	.L296
	ldr	r2, [r6, #52]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r6, #52]
	mov	r1, #0
	movle	r2, #0
	movgt	r2, #1
.L297:
	cmp	r2, #0
	movne	r3, #0
	movne	r2, #2
	strne	r3, [r6, #24]
	strne	r3, [r6, #52]
	strne	r2, [r7, #68]
.L296:
	ldr	r3, .L418+20
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L298
	ldr	r2, .L418+24
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L299
.L298:
	tst	r3, #512
	beq	.L300
	ldr	r3, .L418+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L301
.L300:
	ldr	r1, [r7, #68]
	ldr	r9, [r7, #12]
.L302:
	ldr	r3, .L418+52
	ldr	r0, [r6, #8]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L305
.L306:
	ldr	r3, [r7, #56]
	ldr	r4, .L418+56
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r4, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r9, r2, r3, r9
	sub	r9, r9, #2
	str	fp, [r4]
	str	r9, [r4, #4]
	bl	animateSlash
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L312
	mov	fp, #1
	ldr	r5, .L418+60
	ldr	r9, .L418+64
	add	r10, r5, #504
.L316:
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
	beq	.L314
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L314
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L314:
	add	r5, r5, #72
	cmp	r10, r5
	bne	.L316
	mov	fp, #1
	ldr	r5, .L418+68
	add	r10, r5, #480
.L320:
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
	beq	.L318
	ldr	r2, [r5, #44]
	cmp	r2, #0
	bne	.L318
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r5, #44]
	str	r3, [r5, #48]
	strlt	r2, [r5]
.L318:
	add	r5, r5, #80
	cmp	r10, r5
	bne	.L320
	ldr	r3, .L418+72
	ldr	r5, [r3]
	cmp	r5, #1
	beq	.L415
.L322:
	ldr	r3, [r7, #64]
	sub	r3, r3, #1
	str	r3, [r7, #64]
.L324:
	ldr	r3, .L418+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L325
	ldr	r3, .L418+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L325
	ldr	r2, [r7, #60]
	cmp	r2, #0
	bne	.L325
	mov	r0, #1
	mov	r3, #20
	ldr	r1, .L418+76
	ldr	r1, [r1]
	str	r0, [r7, #60]
	str	r3, [r7, #64]
	lsr	r1, r1, r0
	ldr	r3, .L418+80
	ldr	r0, .L418+84
	str	r2, [r7, #44]
	str	r2, [r4, #40]
	str	r2, [r4, #32]
	str	r2, [r4, #28]
	mov	lr, pc
	bx	r3
.L325:
	ldr	r3, [r6, #8]
	add	r3, r3, #1
	str	r3, [r6, #8]
.L408:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L251:
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L418+16
	mov	r1, r2
	str	r3, [r6, #32]
	str	r2, [r9]
	str	r3, [r6, #20]
	str	r3, [r6, #36]
	str	r3, [r6, #40]
	b	.L252
.L264:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	ldreq	r10, .L418+32
	ldreq	r3, [r10]
	add	r0, r0, #1
	add	ip, ip, r0
	mov	r2, #1
	addeq	r0, r3, r0
	mov	r3, #0
	str	ip, [r7, #8]
	streq	r0, [r10]
	str	r3, [r6, #16]
	str	r3, [r6, #44]
	str	r3, [r6, #48]
	str	r2, [r6, #32]
	b	.L263
.L413:
	ldr	ip, [r6, #16]
	cmp	ip, #0
	ble	.L268
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #24]
	ldr	fp, [r7, #8]
	str	r3, [sp, #16]
	lsl	lr, fp, #11
	ldr	r3, [r8]
	add	r10, r2, r0
	add	r0, r10, lr
	str	r0, [sp, #24]
	add	lr, lr, r3, lsl #8
	str	lr, [sp, #20]
	ldr	lr, [sp, #24]
	add	lr, lr, r3, lsl #8
	str	lr, [sp, #24]
	ldr	lr, [sp, #20]
	ldr	r0, [r5]
	add	lr, lr, r2
	add	lr, r0, lr
	str	lr, [sp, #20]
	ldr	lr, [sp, #24]
	lsl	r3, r3, #8
	add	lr, r0, lr
	str	r3, [sp, #28]
	str	lr, [sp, #24]
	ldr	r3, [sp, #16]
.L270:
	ldr	lr, [sp, #20]
	ldrb	lr, [lr, r3]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L269
	ldr	lr, [sp, #24]
	ldrb	lr, [lr, r3]	@ zero_extendqisi2
	sub	r3, r3, #2032
	cmp	lr, #0
	sub	r3, r3, #15
	beq	.L416
.L269:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #16]
	str	r3, [r6, #44]
	str	r2, [r6, #32]
.L268:
	cmp	r1, #0
	beq	.L406
.L402:
	ldr	fp, [r7, #8]
.L327:
	mov	r3, #0
	ldr	r2, [r6, #24]
	cmp	r2, r3
	str	r3, [r6, #16]
	str	r3, [r6, #48]
	str	r3, [r6, #44]
	beq	.L296
	ldr	r0, [r6, #52]
	add	r0, r0, #1
	cmp	r0, #15
	movle	r2, #0
	movgt	r2, #1
	cmp	r1, #0
	cmpne	r0, #15
	str	r0, [r6, #52]
	ble	.L297
	mov	r0, #2
	mov	r2, #3
	str	r3, [r6, #24]
	str	r3, [r6, #52]
	str	r0, [r7, #68]
	str	r2, [r7, #20]
	b	.L296
.L301:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	bne	.L300
.L299:
	mov	r3, #1
	cmp	r1, #0
	str	r3, [r6, #24]
	ldr	r9, [r7, #12]
	bne	.L417
	ldr	r2, [r6, #36]
	cmp	r2, #0
	ldrne	r1, [r7, #68]
	bne	.L302
.L304:
	str	r3, [r6, #36]
	str	r3, [r7, #68]
.L305:
	ldr	r3, .L418+28
	ldrh	r3, [r3, #48]
	ldr	r1, [r8]
	tst	r3, #32
	lsl	r3, r1, #8
	bne	.L307
	ldr	ip, [r7, #20]
	ldr	r2, [r5]
	sub	r0, r9, ip
	add	lr, r0, r3
	add	r4, r2, fp, lsl #11
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L307
	ldr	r4, [r7, #28]
	add	r4, fp, r4
	sub	r4, r4, #1
	add	r2, r2, r4, lsl #11
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	cmp	r9, #0
	cmpge	r2, #0
	bne	.L307
	ldr	r2, [r6, #4]
	cmp	r2, #0
	str	r0, [r7, #12]
	bne	.L336
	ldr	lr, .L418+88
	ldr	r2, [lr]
	cmp	r2, #0
	blt	.L308
	sub	r4, r0, r2
	cmp	r4, #119
	suble	r2, r2, ip
	strle	r2, [lr]
.L308:
	cmp	r2, #0
	movgt	r2, #0
	movle	r2, #1
	cmp	r1, #0
	moveq	r2, #0
	cmp	r2, #0
	beq	.L336
	mov	r0, #67108864
	mov	ip, #256
	mov	r9, #376
	add	r2, r1, #23
	lsl	r2, r2, #24
	orr	r2, r2, #1073741824
	lsr	r2, r2, #16
	sub	r1, r1, #1
	str	r1, [r8]
	strh	r2, [r0, #10]	@ movhi
	ldr	r2, .L418+32
	ldrh	r2, [r2]
	str	ip, [lr]
	strh	ip, [r0, #20]	@ movhi
	strh	r2, [r0, #22]	@ movhi
	str	r9, [r7, #12]
	sub	r3, r3, #256
.L307:
	ldr	r2, .L418+28
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L407
	add	r0, r7, #20
	ldm	r0, {r0, lr}
	ldr	ip, [r5]
	add	r2, lr, r9
	add	r2, r2, r0
	add	r2, r2, r3
	add	r4, ip, fp, lsl #11
	ldrb	r4, [r4, r2]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L407
	ldr	r4, [r7, #28]
	add	r4, fp, r4
	sub	r4, r4, #1
	add	ip, ip, r4, lsl #11
	ldrb	r2, [ip, r2]	@ zero_extendqisi2
	cmp	r2, #0
	ldr	r2, .L418+92
	bne	.L309
	ldr	ip, [r2]
	add	lr, lr, ip
	cmp	lr, #2048
	bgt	.L309
	ldr	lr, [r6, #4]
	add	r9, r9, r0
	cmp	lr, #0
	str	r9, [r7, #12]
	bne	.L309
	ldr	lr, .L418+88
	ldr	r4, [lr]
	cmp	r4, #256
	ble	.L310
.L311:
	mov	ip, #67108864
	mov	r4, #0
	mov	r9, #120
	add	r3, r1, #1
	add	r0, r1, #25
	ldr	r1, .L418+32
	lsl	r0, r0, #24
	ldrh	r1, [r1]
	orr	r0, r0, #1073741824
	lsr	r0, r0, #16
	str	r3, [r8]
	strh	r0, [ip, #10]	@ movhi
	lsl	r3, r3, #8
	str	r4, [lr]
	strh	r4, [ip, #20]	@ movhi
	strh	r1, [ip, #22]	@ movhi
	str	r9, [r7, #12]
	b	.L309
.L407:
	ldr	r2, .L418+92
.L309:
	add	r3, r9, r3
	str	r3, [r2]
	b	.L306
.L312:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r7, #60]
	str	r3, [r4, #40]
	b	.L324
.L414:
	ldr	r2, [r6, #44]
	cmp	r2, #0
	beq	.L281
	ldr	r2, [r6, #32]
	cmp	r2, #0
	bne	.L282
	ldr	r2, [r6, #20]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L284
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L287
.L329:
	sub	r0, r0, #4
	b	.L284
.L412:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L405
	ldr	r3, [r6, #44]
	cmp	r3, #0
	bne	.L257
	cmp	r1, #0
	bne	.L405
	ldr	r3, [r6, #40]
	cmp	r3, #7
	ble	.L405
.L257:
	ldr	r3, .L418+96
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L418+100
	ldr	r3, .L418+80
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #1
	mvn	r1, #4
	ldr	r0, [r6, #44]
	str	r3, [r6, #48]
	cmp	r0, r3
	str	r3, [r6, #32]
	ldr	r3, .L418+20
	ldrh	r3, [r3]
	streq	r2, [r6, #44]
	tst	r3, #64
	str	r1, [r6, #16]
	str	r2, [r6, #20]
	ldr	r1, [r9]
	beq	.L337
	ldrh	r3, [r10]
	tst	r3, #64
	ldrne	r10, [r6, #16]
	beq	.L332
	b	.L262
.L417:
	mov	r1, #2
	mov	r3, #3
	str	r1, [r7, #68]
	str	r3, [r7, #20]
	b	.L302
.L416:
	ldr	lr, .L418+104
	cmp	r3, lr
	bne	.L270
	cmp	r1, #0
	ldr	r3, [sp, #28]
	beq	.L330
	b	.L327
.L405:
	ldr	r1, [r9]
.L332:
	cmp	r1, #0
	bne	.L261
	ldr	r3, [r6, #40]
	cmp	r3, #7
	bgt	.L260
.L261:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	bne	.L260
	ldr	r0, [r7, #12]
	ldr	r3, [r5]
	ldr	r2, [r7, #8]
	add	r3, r3, r0
	sub	r2, r2, #1
	ldr	r0, [r8]
	add	r3, r3, r2, lsl #11
	ldrb	r2, [r3, r0, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r0, lsl #8
	bne	.L260
	ldr	r2, [r7, #24]
	ldrb	fp, [r3, r2]	@ zero_extendqisi2
	cmp	fp, #0
	bne	.L260
	ldr	r3, .L418+108
	mov	r2, fp
	ldr	r1, [r3]
	ldr	r0, .L418+112
	ldr	r3, .L418+80
	mov	lr, pc
	bx	r3
	mvn	r10, #4
	mov	r3, #1
	mov	r1, fp
	str	fp, [r6, #48]
	str	fp, [r9]
	str	r10, [r6, #16]
	str	r3, [r6, #44]
	b	.L262
.L398:
	cmp	r2, #79
	cmpgt	r0, #0
	bgt	.L411
	cmp	r3, #0
	ble	.L295
	b	.L292
.L281:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L328
	b	.L284
.L415:
	ldr	r8, .L418+116
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
	beq	.L322
	ldr	r3, [r8, #32]
	cmp	r3, #0
	ldreq	r3, [r8]
	subeq	r3, r3, #1
	streq	r5, [r8, #32]
	streq	r3, [r8]
	b	.L322
.L286:
	ldr	r3, [r6, #32]
	cmp	r3, #0
	bne	.L285
	b	.L329
.L282:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L328
	b	.L287
.L336:
	mov	r9, r0
	b	.L307
.L310:
	sub	r5, r9, r4
	ldr	r10, .L418+120
	cmp	r5, #120
	movgt	r5, #1
	movle	r5, #0
	cmp	ip, r10
	movgt	r5, #0
	cmp	r5, #0
	beq	.L309
	add	r0, r0, r4
	cmp	r0, #256
	str	r0, [lr]
	ble	.L309
	b	.L311
.L337:
	mvn	r10, #4
	b	.L262
.L419:
	.align	2
.L418:
	.word	.LANCHOR0
	.word	player
	.word	collisionMap
	.word	bgIndex
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
	.word	sfx_attack_length
	.word	playSoundB
	.word	sfx_attack_data
	.word	hOff
	.word	pMapPos
	.word	sfx_jump1_length
	.word	sfx_jump1_data
	.word	-4094
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
	ldr	lr, .L424
	ldr	ip, .L424+4
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
	bne	.L420
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L420:
	ldr	lr, [sp], #4
	bx	lr
.L425:
	.align	2
.L424:
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
	ldr	r0, .L429
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
.L430:
	.align	2
.L429:
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
	ldr	r2, .L432
	ldr	r3, .L432+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L433:
	.align	2
.L432:
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
	ldr	r3, .L435
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L436:
	.align	2
.L435:
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
	ldr	r4, .L443
	ldr	r2, [r4, #76]
	cmp	r2, #0
	beq	.L438
	ldr	r3, [r4, #72]
.L439:
	cmp	r3, #0
	ble	.L442
.L437:
	pop	{r4, lr}
	bx	lr
.L442:
	ldr	r3, .L443+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L437
	pop	{r4, lr}
	b	gameOver.part.0
.L438:
	ldr	r3, .L443+8
	ldr	r0, .L443+12
	ldr	r1, [r3]
	ldr	r3, .L443+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r4, #72]
	sub	r3, r3, #1
	str	r3, [r4, #72]
	str	r2, [r4, #76]
	b	.L439
.L444:
	.align	2
.L443:
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
	mov	r7, #0
	ldr	r10, .L526
	ldr	r4, .L526+4
	ldr	ip, [r10]
	ldr	fp, .L526+8
	ldr	r8, .L526+12
	ldr	r5, .L526+16
	sub	sp, sp, #28
	sub	r3, ip, #239
	add	r6, r4, #504
.L454:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	bgt	.L519
	add	r1, ip, #239
	cmp	r0, r1
	bgt	.L519
	ldr	r1, [r4]
	cmp	r1, #0
	mov	r1, #1
	str	r1, [r4, #4]
	beq	.L447
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L449
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L449:
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
	beq	.L450
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L521
.L450:
	ldr	ip, [r10]
	ldr	r1, [r4, #12]
	sub	r0, ip, r1
	ldr	r3, [r4, #64]
	eor	r2, r0, r0, asr #31
	sub	r2, r2, r0, asr #31
	cmp	r2, r3
	ldr	lr, [r8]
	ldr	r2, [r4, #8]
	bge	.L518
	ldr	r3, [r5, #8]
	sub	r3, r3, r2
	cmp	r3, #0
	ldr	r9, [r4, #68]
	rsblt	r3, r3, #0
	cmp	r3, r9
	bge	.L518
	ldr	r3, .L526+20
	ldr	r3, [r3, #8]
	tst	r3, #1
	beq	.L513
.L518:
	ldr	r3, [r4, #20]
.L451:
	add	r3, r2, r3
	add	r3, r3, #1
	add	r1, lr, r1
	ldrb	r0, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r1, r1, r3, lsl #11
	bne	.L522
.L453:
	add	r2, r2, #1
	str	r2, [r4, #8]
.L520:
	sub	r3, ip, #239
.L447:
	add	r4, r4, #72
	cmp	r4, r6
	bne	.L454
	mov	r9, #1
	ldr	r4, .L526+24
	ldr	r7, .L526+8
	ldr	r8, .L526+20
	ldr	fp, .L526+28
	ldr	r5, .L526+16
	add	r6, r4, #480
.L468:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	movgt	r3, #0
	bgt	.L455
	add	r3, ip, #239
	cmp	r0, r3
	movgt	r3, #0
	movle	r3, #1
.L455:
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L457
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L458
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L458:
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
	beq	.L459
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L523
.L459:
	ldr	r1, [r4, #12]
	ldr	r3, [r10]
	sub	r3, r3, r1
	ldr	r2, [r4, #60]
	eor	r0, r3, r3, asr #31
	sub	r0, r0, r3, asr #31
	cmp	r0, r2
	bge	.L457
	ldr	r0, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r0
	cmp	r2, #0
	ldr	ip, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, ip
	bge	.L457
	ldr	r2, [r8, #8]
	ands	r2, r2, #1
	bne	.L457
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L462
	strne	r9, [r4, #56]
.L462:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	beq	.L524
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L457
	mov	r2, #0
	ldr	r3, .L526+28
	str	r2, [r4, #76]
	str	r2, [r4, #72]
.L466:
	ldr	ip, [r3]
	cmp	ip, #0
	beq	.L464
	ldr	ip, [r3, #4]
	cmp	ip, #0
	beq	.L464
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #44
	bne	.L466
.L457:
	add	r4, r4, #80
	cmp	r4, r6
	beq	.L467
	ldr	ip, [r10]
	sub	r3, ip, #239
	b	.L468
.L519:
	str	r7, [r4, #4]
	b	.L447
.L522:
	ldr	r3, [r4, #16]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L453
	b	.L520
.L467:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L523:
	bl	hurtPlayer
	b	.L459
.L521:
	bl	hurtPlayer
	b	.L450
.L513:
	cmp	r0, #0
	blt	.L525
	beq	.L518
	ldr	r3, [r4, #60]
	ldr	r0, [r4, #16]
	add	r3, r1, r3
	add	r0, r3, r0
	str	r3, [sp, #16]
	add	r3, lr, r2, lsl #11
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L451
	add	r0, lr, r0
	mov	r9, r0
	str	r0, [sp, #20]
	add	r0, r2, r3
	ldrb	r9, [r9, r0, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r0, r0, #11
	bne	.L451
	add	r9, r0, #2048
	ldr	r0, [sp, #16]
	add	r0, lr, r0
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L451
	ldr	r0, [sp, #20]
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [sp, #16]
	movne	r1, r0
	strne	r0, [r4, #12]
	b	.L451
.L524:
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	strgt	r9, [r4, #76]
	strgt	r2, [r4, #36]
	strgt	r9, [r4, #72]
	b	.L457
.L525:
	ldr	r0, [r4, #60]
	add	r3, lr, r2, lsl #11
	sub	r0, r1, r0
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L451
	ldr	r0, [sp, #16]
	add	r9, lr, r0
	add	r0, r2, r3
	str	r9, [sp, #20]
	ldrb	r9, [r9, r0, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r0, r0, #11
	bne	.L451
	ldr	r9, [sp, #20]
	add	r0, r0, #2048
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #0
	ldr	r9, [sp, #20]
	add	r0, r9, r0
	beq	.L451
	ldr	r9, [r4, #16]
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r1, [sp, #16]
	strne	r1, [r4, #12]
	b	.L451
.L464:
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
	b	.L457
.L527:
	.align	2
.L526:
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
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L544
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L529
	ldr	r2, .L544+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L529
	mov	r2, #1
	ldr	r3, .L544+8
	str	r2, [r3, #56]
.L531:
	bl	updatePlayer
	bl	updateBullets
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L544+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L543
.L532:
	ldr	r3, .L544+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L533
	ldr	r2, [r3, #8]
	cmp	r2, #238
	ble	.L528
.L533:
	ldr	r2, .L544+8
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L528
	mov	r1, #1
	pop	{r4, lr}
	str	r2, [r3, #44]
	str	r1, [r3, #32]
	b	gameOver.part.0
.L529:
	cmp	r3, #0
	beq	.L531
	ldr	r3, .L544+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L544+8
	streq	r2, [r3, #56]
	b	.L531
.L528:
	pop	{r4, lr}
	bx	lr
.L543:
	ldr	r3, .L544+20
	mov	lr, pc
	bx	r3
	b	.L532
.L545:
	.align	2
.L544:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
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
	.global	drawHUD
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHUD, %function
drawHUD:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L556
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L556+4
	ldr	r3, [r3, #72]
	ldr	ip, [r6, #12]
	cmp	r3, #0
	add	r4, ip, #1
	ble	.L555
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	r0, .L556+8
	cmp	r3, #1
	lsl	lr, ip, #3
	addeq	r3, ip, #2
	strh	r2, [r0, lr]	@ movhi
	add	lr, r0, ip, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	ip, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L548
	ldr	r5, .L556+12
	add	lr, r0, r4, lsl #3
	cmp	r3, #2
	lsl	r4, r4, #3
	strh	r5, [lr, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	add	lr, ip, #2
	strh	r2, [r0, r4]	@ movhi
	addeq	r4, ip, #3
	moveq	ip, lr
	beq	.L548
	ldr	r4, .L556+16
	cmp	r3, #3
	add	r3, r0, lr, lsl #3
	strh	r4, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, ip, #3
	addeq	r4, ip, #4
	moveq	ip, r3
	lsl	lr, lr, #3
	strh	r2, [r0, lr]	@ movhi
	ldrne	r4, .L556+20
	addne	lr, r0, r3, lsl #3
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [r0, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, ip, #5
	addne	ip, ip, #4
.L548:
	ldr	r2, [r6, #60]
	ldr	lr, .L556+24
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L556+28
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
	ldr	lr, .L556+32
	lsl	r4, r4, #3
	add	r3, ip, #4
	ldr	ip, .L556+36
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
.L555:
	ldr	r0, .L556+8
	b	.L548
.L557:
	.align	2
.L556:
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
	ldr	r2, .L562
	push	{r4, lr}
	ldr	r3, .L562+4
	str	r1, [r2, #12]
	mov	lr, pc
	bx	r3
	bl	drawHUD
	ldr	r3, .L562+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L561
.L559:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	ldr	r3, .L562+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L562+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L562+20
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L562+24
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, .L562+28
	ldrh	r0, [r3]
	ldr	r3, .L562+32
	strh	r0, [r1, #22]	@ movhi
	ldr	r0, [r3]
	ldr	r3, .L562+36
	add	r2, r2, r0, lsl #8
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	pop	{r4, lr}
	bx	lr
.L561:
	ldr	r3, .L562+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L562+44
	mov	lr, pc
	bx	r3
	b	.L559
.L563:
	.align	2
.L562:
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
	ldr	r3, .L566
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	gameOver.part.0
.L567:
	.align	2
.L566:
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
