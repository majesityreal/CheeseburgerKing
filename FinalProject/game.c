#include <math.h>
#include "myLib.h"
#include "game.h"

#include "map1Collision.h"
#include "map2Collision.h"

#include "map1.h"
#include "map2.h"

#include "hugeMapCollision.h"

OBJ_ATTR shadowOAM[128];
PLAYER player;
SLASH slash;

// temp placeholder for the first goblin for testing
GOBLIN goblins[GOBLINCOUNT];

int shadowOAMIndex = 0;

// gets the collision map set up
unsigned char* collisionMap = hugeMapCollisionBitmap;

int score = 0;

// pauses game when pauseVar = 1
int pauseVar = 0;

// vars for the offset of the camera
int hOff;
int vOff;

// if the player is on the ground = 1
int grounded = 1;

// whether or not player is holding jump button
int jumping = 0;
// check for player double jump
int doubleJumping = 0;

// now being used as measure to prevent 'rejump' in air from holding up. Check around line 230 for context
int jumpThud = 0;

// velocity in the y axis
int yVel = 0;
int framesInAir = 0;

// gravity timer, for falling velocity
int gTimer = 0;

// current map counter
int currMap;

// player position in current map. DO NOT CHANGE - only used to calculate enemy positions and such
int pMapPos;

// background index
int bgIndex;

// counts the total amount of times that the hScreen has been changed (256x256 maps)
// int hScreenCounter = 0;
// int currentScreenblock = 28;

// offset counter for 256 / 512 conversions mid map
// int offSet = 0;

MAP maps[4];

int dead = 0;

// Player animation states for aniState
enum {IDLE, RUNNING, JUMPUP, JUMPDOWN, ATTACK, DAMAGED, DOUBLEJUMP };

// Initialize the game
// #region init
void initGame() {
    initPlayer();
    initSlash();
    initEnemies();
    initMaps();
    gTimer = 0;
    shadowOAMIndex = 0;
}

// Initialize the player
void initPlayer() {
    player.hide = 0;
    player.width = 13;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 3;
    player.movementCycle = 2;

    // Place in the middle of the screen in the world location chosen earlier
    player.worldRow = 60;
    player.worldCol = 20;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 6;
    player.aniState = IDLE;
    // util
    player.direction = 0;
    player.attacking = 0;
    player.attackTimer = 0;
    player.hearts = 3;
    player.damaged = 0;
    player.damageCounter = 0;
}

void initSlash() {
    // hides by default
    slash.hide = 1;
    slash.width = 14;
    slash.height = 12;
    slash.rdel = 0;
    slash.cdel = 15;

    // making this (-) makes hitbox wider than sprite
    // making this (+) makes hitbox thinner than sprite
    slash.hitboxCDel = -2;

    // 0,0 by default
    slash.worldRow = 0;
    slash.worldCol = 0;
    slash.aniCounter = 0;
    slash.curFrame = 0;
    slash.numFrames = 4;
    // util
    slash.direction = 0;
    slash.attacking = 0;
    slash.attackTimer = 0;
}

void initEnemies() {
    // the goblins. goes through all and sets defaults
    for (int g = 0; g < GOBLINCOUNT; g++) {
        goblins[g].active = 0;
        goblins[g].width = 13;
        goblins[g].height = 15;

        // TODO - add array of goblin locations to initialize these bad boyz
        // Place in the middle of the screen in the world location chosen earlier
        goblins[g].aniCounter = 0;
        goblins[g].curFrame = 0;
        goblins[g].numFrames = 4;
        goblins[g].aniState = IDLE;
        // ai
        goblins[g].direction = 0;
        goblins[g].xRange = 128;
        goblins[g].yRange = 96;
        goblins[g].speed = 1;
        goblins[g].lives = 1;
        goblins[g].damaged = 0;
    }

    // switch statement for which map u are on. set each individual enemy
    switch (currMap) {
        case 0:
            goblins[0].active = 1;
            goblins[0].worldRow = 160;
            goblins[0].worldCol = 185;
            goblins[1].active = 1;
            goblins[1].worldRow = 125;
            goblins[1].worldCol = 425;
        break;
    }

}

void initMaps() {
    currMap = 0;
    bgIndex = 0;
    maps[0].collisionMap = map2CollisionBitmap;
    maps[0].map = map2Map;

    maps[1].collisionMap = map1CollisionBitmap;
    maps[1].map = map1Map;

    maps[2].collisionMap = map2CollisionBitmap;
    maps[2].map = map2Map;

    maps[3].collisionMap = map1CollisionBitmap;
    maps[3].map = map1Map;
}

// #endregion

// Updates the game each frame
void updateGame() {
    // pauses the game
    if (BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseVar = 1;
    }

	updatePlayer();
    // ^^ update slash is a part of update player, since it is so minor
    updateEnemies();

    updateMap();

    // this determines lose conditions
    if (player.hearts < 1 || player.worldRow > 240) {
        gameOver();
    }

}

// Draws the game each frame
void drawGame() {
    shadowOAMIndex = 0;
    drawHUD();

    drawPlayer();
    drawSlash();
    drawEnemies();
    drawFont();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    // parallax motion babbyyy :) - checks based on screen changes
    REG_BG2HOFF = ((hOff + (bgIndex * 256)) / PARALLAXFACTOR);

}

void updateMap() {
    MAP temp = maps[currMap];
    // check for player collision with doors - uses pMapPos because it needs world col
    if (collision(pMapPos, player.worldRow, player.width, player.height, temp.doorX, temp.doorY, temp.doorWidth, temp.doorHeight)) {
        // increment current map index
        currMap++;

        // load in new map
        DMANow(3, maps[currMap].map, &SCREENBLOCK[24], map2MapLen / 2);

        // update collision map
        collisionMap = maps[currMap].collisionMap;

        // teleport player
        player.worldCol = temp.startingXPos;
        player.worldRow = temp.startingYPos;

        // reset camera stuff?
        hOff = 0;
        vOff = 0;

        // set enemies in new map
        initEnemies();
    }
}

// Handle every-frame actions of the player
void updatePlayer() {
    // FIXME jumps are random?

    // #region yVel + jumping
    grounded = groundCheck(player.worldCol, player.worldRow, player.width, player.height);
    // this ensures no jumpThud glitches
    if (grounded)  {
        jumpThud = 0;
        doubleJumping = 0;
    }

    // the check for double jumping - must go before regular jumping to prevent double counting
    // checks for whether the player jumped, or whether they are just falling
    if(BUTTON_PRESSED(BUTTON_UP) && !doubleJumping && ((jumping || !grounded))) {
        doubleJumping = 1;
        yVel = (JUMPVEL * 2) / 4;
        framesInAir = 0;
        // this resets so you can continue holding the dJ
        jumpThud = 0;
        // this is for the case where you fall of ledge without jumping
        if (!jumping) {
            jumping = 1;
        }
    }

    // the check for jumping - the double collision check ensures both bottoms are on ground, no coyote jumping! Should this be changed to be more merciful to players?
    if(BUTTON_PRESSED(BUTTON_UP) && grounded
        && !pCheckCollision(player.worldCol, player.worldRow - 1)
        && !pCheckCollision(player.worldCol + player.width, player.worldRow - 1)) {
            // sets y to -4 for upwards movement, gravity will eventually bring it down
            yVel = JUMPVEL;
            // need this
            grounded = 0;
            jumping = 1;
    }

    // loops through pixels above player to check if head collision
        for (int i = 0; i > yVel; i--) {
            if (pCheckCollision(player.worldCol, player.worldRow + i)
            || pCheckCollision(player.worldCol + player.width, player.worldRow + i)) {
                // snaps player to ground and resets yVel
                player.worldRow += (i + 1);
                vOff += (i + 1);
                yVel = 0;
                jumping = 0;
                jumpThud = 1;
                // resets so it isn't as snappy
                framesInAir = 0;
                break;
            }
        }

        // TODO - UNINTENTIONAL ZIPLINE
        // hardcoded upright check
        if (BUTTON_HELD(BUTTON_UP) && BUTTON_HELD(BUTTON_RIGHT) && yVel > 0) {
            for (int i = 0; i > -2; i--) {
                if (pCheckCollision(player.worldCol - i, player.worldRow + i)
                || pCheckCollision(player.worldCol + player.width - i, player.worldRow + i)) {
                    // snaps player to ground and resets yVel
                    yVel = 0;
                    jumping = 0;
                    jumpThud = 1;
                    break;
                }
            }   
        }

    // moves down if in air, handles gravity
    if (!grounded) {
        // loops through pixels below player to check ground, if they are falling (yVel > 0)
        for (int i = 0; i < yVel; i++) {
            if (pCheckCollision(player.worldCol, player.worldRow + player.height + i)
            || pCheckCollision(player.worldCol + player.width, player.worldRow + player.height + i)) {
                // snaps player to ground and resets yVel
                player.worldRow += (i - 1);
                vOff += (i - 1);
                yVel = 0;
                grounded = 1;
                break;
            }
        }
        // first jump, holding up gets higher velocity
        if (BUTTON_HELD(BUTTON_UP) && jumping && !jumpThud) {
            yVel = JUMPVEL + (GRAVITY * framesInAir);
        }
        else {
            // case where you let go of jump midair, but are still jumping
            if (jumping) {
                yVel = ((JUMPVEL * 5) / 8) + (GRAVITY * framesInAir);
                // this is what stops you from holding jump again to get the boost
                jumpThud = 1;
            }
            // case where you are falling without ever having jumped, or you hit head on ceiling
            else {
                yVel = (GRAVITY * framesInAir);
            }
        }
        // makes sure gravity never gets too insane
        yVel = fmin(3, yVel);
        // smooths out air frames
        if (gTimer % 4 == 0) {
            framesInAir++;
        }
        // this adds in button holding to affect jump height. (&& jumping) is to prevent quick release and press again

    }

    // if on the ground, shouldn't have vertical motionn
    if (grounded) {
        yVel = 0;
        framesInAir = 0;
        jumping = 0;
    }

        // moves the y vel accordingly
    player.worldRow += yVel;

    // moves camera down if player is moving down
    if (vOff < MAPHEIGHT && (player.worldRow - vOff >= SCREENHEIGHT / 2) && (yVel > 0)) {
        vOff += yVel;
    }
    
    // moves camera up if player is moving up
    if (vOff > 0 && (player.worldRow - vOff <= SCREENHEIGHT / 2) && (yVel < 0)) {
        vOff += yVel;
    }

    // #endregion

    // #region left and right movement
    // left movement
    if (gTimer % player.movementCycle == 0) {
        if (BUTTON_HELD(BUTTON_LEFT)
            && !pCheckCollision(player.worldCol - player.cdel, player.worldRow)
            && !pCheckCollision(player.worldCol - player.cdel, player.worldRow + player.height - 1)) {
            if (player.worldCol >= 0) {
                player.worldCol -= player.cdel;
                if (hOff >= 0 && (player.worldCol - hOff < (SCREENWIDTH / 2))) {
                    // Update background offset variable if the above is true
                    hOff-= player.cdel;
                }
                
                // left map / camera changing!
                if (hOff <= 0 && bgIndex != 0) {
                    bgIndex--;
                    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24 + bgIndex) | BG_SIZE_WIDE | BG_4BPP;
                    hOff = 256;
                    player.worldCol = 120 + 256;
                    // pWorldPos += 256;
                }

            }
        }

        // right movement
        if (BUTTON_HELD(BUTTON_RIGHT) 
            && !pCheckCollision(player.worldCol + player.width + player.cdel, player.worldRow)
            && !pCheckCollision(player.worldCol + player.width + player.cdel, player.worldRow + player.height - 1)) {
            if (player.worldCol <= MAPWIDTH + SCREENWIDTH) {
                player.worldCol += player.cdel;
                if (hOff <= 512 && (player.worldCol - hOff > (SCREENWIDTH / 2))) {
                    hOff += player.cdel;
                }

                // check for right camera changes
                // if goes over, changes thingy
                if (hOff > 256) {
                    bgIndex++;
                    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24 + bgIndex) | BG_SIZE_WIDE | BG_4BPP;
                    hOff = 0;
                    player.worldCol = 120;
                    // pWorldPos = 256;
                }

            }
        }

        // setting total map position, because player.worldCol changes due to camera changing
        pMapPos = player.worldCol + 256 * bgIndex;

    }
    // #endregion

    slash.worldCol = player.worldCol + (slash.cdel * ((player.direction * -2) + 1));
    slash.worldRow = player.worldRow;
    animateSlash();
    // ATTACKING - this handles damaging enemies while doing the slash TODO - maybe make it into its own separate method
    if (player.attackTimer > 0) {
        // go through all the enemies
        for (int g = 0; g < GOBLINCOUNT; g++) {
            if (collision(slash.worldCol + (256 * bgIndex) + slash.hitboxCDel, slash.worldRow, slash.width - slash.hitboxCDel, slash.height, goblins[g].worldCol, goblins[g].worldRow, goblins[g].width, goblins[g].height)) {
                // mark it as damaged to prevent multiple hits per frame
                if (!goblins[g].damaged) {
                    goblins[g].damaged = 1;
                    goblins[g].lives--;
                    // TODO - add in death animation
                    if (goblins[g].lives < 0) {
                        // TODO FIXME - potential future issue with loading in sprite. make it 'dead' and not just inactive
                        // maybe make it so goblins are instantiated when camera crosses certain set of positions?
                        goblins[g].active = 0;
                    }
                }
            }
        }
        // we are displacing slash by its cdel off from the main player
        // ((player.direction * -2) + 1) <- this is making it either 1 or -1 to change the direction of cdel
        player.attackTimer--;
    }
    else {
        player.attacking = 0;
        slash.hide = 1;
    }

    // FIXME FOR SOME REASON WHEN I USE BUTTON_A, JUMPING ACTIVATES THE ATTACK??? WHAAAAA
    if (BUTTON_PRESSED(BUTTON_B) && !player.attacking) {
        player.attacking = 1;
        player.attackTimer = ATTACK_DURATION;
        player.curFrame = 0;
        slash.hide = 0;
        slash.curFrame = 0;
        // I am setting to 0 because I am controlling individual frames of attack
        slash.aniCounter = 0;
        // TODO - add in extra stuff, movement restirction?
    }

    // update the gravity check timer, so gravity is more smooth
    gTimer++;

    animatePlayer();
}

// function to check if player is on ground. returns 1 if on ground, 0 if not
int groundCheck(int col, int row, int width, int height) {
    // this is when entity is standing on ground
    if (pCheckCollision(col, row + height + 1)
        || pCheckCollision(col + width, row + height + 1)) {
            return 1;
    }
    return 0;
}

// Only difference from regular is that it &&, so not standing over ledge. returns 1 if on ground, 0 if not
int goblinGroundCheck(int col, int row, int width, int height) {
    // this is when entity is standing on ground
    if (eCheckCollision(col, row + height + 1)
        && eCheckCollision(col + width, row + height + 1)) {
            return 1;
    }
    return 0;
}
// TODO - fix up for player animation states (attack, move left/right, jump)
// Handle player animation states
void animatePlayer() {

    // Set previous state to current state, defaults to idle if no button held
    player.prevAniState = player.aniState;
    player.aniState = IDLE;

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_LEFT) && !player.attacking) {
        player.aniState = RUNNING;
        player.direction = 1;
    }
    if(BUTTON_HELD(BUTTON_RIGHT) && !player.attacking) {
        player.aniState = RUNNING;
        player.direction = 0;
    }
    if (yVel > 0) {
        player.aniState = JUMPDOWN;
    }
    if (yVel < 0) {
        player.aniState = JUMPUP;
    }
    if (doubleJumping) {
        player.aniState = DOUBLEJUMP;
    }
    if (player.attacking) {
        player.aniState = ATTACK;
    }
    if (player.damaged) {
        player.aniState = DAMAGED;
    }

    // Change the animation frame every X frames of gameplay for different states
    if(player.aniCounter % ATTACK_SPEED == 0 && player.aniState == ATTACK) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    else if (player.aniCounter % 5 == 0 && player.aniState == RUNNING) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    else if (player.aniCounter % 5 == 0 && player.aniState == DOUBLEJUMP) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    else if (player.aniCounter % 5 == 0 && player.aniState == DAMAGED) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
        player.damageCounter++;
        if (player.damageCounter > 8) {
            player.damaged = 0;
            player.damageCounter = 0;
        }
    }
    else if (player.aniCounter % 10 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    player.aniCounter++;

}

// Draw the player
void drawPlayer() {
    if (player.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
        // if player is facing left, flip sprite to left
        if (player.direction) {
            shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
        }
        switch (player.aniState) {
            // do not ask why sometimes I percent inside, others outside... its just the way it works, otherwise glitchy
            case IDLE:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2) % 4, player.aniState) * 2;
            break;
            case JUMPUP:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), player.aniState * 2);
            break;
            case JUMPDOWN:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), player.aniState * 2);
            break;
            case ATTACK:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 4 * 2), player.aniState * 2);
            break;
            case RUNNING:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2), player.aniState * 2);
            break;
            case DOUBLEJUMP:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), (player.aniState + 1) * 2);
            break;
            case DAMAGED:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), (player.aniState + 1) * 2);
            break;
            default:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2), player.aniState * 2);
            break;
        }
    }
    shadowOAMIndex++;
}

void updateEnemies() {
    // update goblins
    for (int g = 0; g < GOBLINCOUNT; g++) {

        // check for if it is on screen.
        if (goblins[g].worldCol + goblins[g].width > (pMapPos - 240) && goblins[g].worldCol < (pMapPos + 240)) {
            goblins[g].onScreen = 1;
        }
        else {
            goblins[g].onScreen = 0;
        }

        // TODO - add future implementation with this
        if (!goblins[g].active || !goblins[g].onScreen) {
            continue;
        }

        // wait until the player is done attacking to apply damage
        if (goblins[g].damaged && !player.attacking) {
            goblins[g].damaged = 0;
                // TODO FIXME - potential future issue with loading in sprite. make it 'dead' and not just inactive
                // maybe make it so goblins are instantiated when camera crosses certain set of positions?
        }

        // checks for collision with player
        if (collision(goblins[g].worldCol, goblins[g].worldRow, goblins[g].width, goblins[g].height, pMapPos, player.worldRow, player.width, player.height) && !player.damaged) {
            player.damaged = 1;
            player.hearts--;
            if (player.hearts < 1) {
                gameOver();
            }
        }

        int xDif = pMapPos - goblins[g].worldCol;
        int yDif = player.worldRow - goblins[g].worldRow;
        

        // checking if player is within range
        if (abs(xDif) < goblins[g].xRange && abs(yDif) < goblins[g].yRange) {
            // this is effectively 'halfing' the move speed, moving every other frame
            if (gTimer % 2 == 0) {
                // goblins[g].worldRow -= 3;
                // if the player is above, dont go into pit to fall
                if (xDif < 0) {
                    // THIS IS CALLED
                    if (!eCheckCollision((goblins[g].worldCol - goblins[g].speed), goblins[g].worldRow) 
                    && !eCheckCollision((goblins[g].worldCol - goblins[g].speed), goblins[g].worldRow + goblins[g].height)) {
                        // THIS IS NOT CALLED
                        if (goblinGroundCheck((goblins[g].worldCol - goblins[g].speed), goblins[g].worldRow, goblins[g].width, goblins[g].height)) {
                            goblins[g].worldCol -= goblins[g].speed;
                        }

                    }

                }
                else if (xDif > 0) {
                    if (!eCheckCollision((goblins[g].worldCol + goblins[g].speed + goblins[g].width), goblins[g].worldRow)
                    && !eCheckCollision((goblins[g].worldCol + goblins[g].speed + goblins[g].width), goblins[g].worldRow + goblins[g].height)) {
                        // if on ground, then move. otherwise dont
                        if (goblinGroundCheck((goblins[g].worldCol + goblins[g].speed), goblins[g].worldRow, goblins[g].width, goblins[g].height)) {
                            goblins[g].worldCol += goblins[g].speed;
                        }
                        else {

                        }
                    }
                }        
            }

        }

        // check for gravity
        if (!goblinGroundCheck(goblins[g].worldCol, goblins[g].worldRow, goblins[g].width, goblins[g].height)) {
            goblins[g].worldRow++;
        }

    }


    animateEnemies();
}

void animateEnemies() {
    // go through all the goblins
    for (int g = 0; g < GOBLINCOUNT; g++) {
        if (goblins[g].aniCounter % 10 == 0) {
            goblins[g].curFrame = (goblins[g].curFrame + 1) % goblins[g].numFrames;
        }
        if (goblins[g].damaged) {
            goblins[g].aniState = 1;
        }
        else {
            goblins[g].aniState = 0;
        }
        goblins[g].aniCounter++;
    }
}

// TODO FIXME - the drawing of sprites needs fixing for the changing of worlds
void drawEnemies() {
    // go through all the goblins
    for (int g = 0; g < GOBLINCOUNT; g++) {
        if (!goblins[g].active || !goblins[g].onScreen) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
        } else {
            // this is converting into camera position, subtracting map changes
            int xCol = (goblins[g].worldCol - (hOff + (256 * bgIndex)));
            // the reason vOff and hOff are included in here is to keep them according to the camera
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (goblins[g].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (xCol)) | ATTR1_SMALL;
            // if player is facing left, flip goblins[g] to left
            if (goblins[g].direction) {
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
            }
            // on spritesheet, goblins[g] is starting at tile (8,8) in 8x coordinates, which equates to + 3, 4
            if (goblins[g].damaged == 1) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((goblins[g].curFrame % 2) + 9), 4) * 2;
            }
            else {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((goblins[g].curFrame + 9), 2) * 2;
            }
        }
        shadowOAMIndex++;
    }
}

void animateSlash() {
    if (slash.aniCounter == 6) {
        slash.curFrame++;
    }
    else if (slash.aniCounter == 12) {
        slash.curFrame++;
    }
    else if (slash.aniCounter == 18) {
        slash.curFrame++;
    }
    // this is the last dot, doesn't need to be there long
    else if (slash.aniCounter == 20) {
        slash.curFrame++;
    }
    // if (slash.aniCounter % ATTACK_SPEED == 0) {
    //     slash.curFrame = (slash.curFrame + 1) % slash.numFrames;
    // }
    slash.aniCounter++;
}

void drawSlash() {
    if (slash.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (slash.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (slash.worldCol - hOff)) | ATTR1_SMALL;
        // if player is facing left, flip slash to left
        if (player.direction) {
            shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
        }
        // on spritesheet, slash is starting at tile (8,8) in 8x coordinates, which equates to + 3, 4
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((slash.curFrame + 4), 4) * 2;
    }
    shadowOAMIndex++;
}

// returns 1 if it collides with any other color, besides the base 0x0000 one
int pCheckCollision(int col, int row) {
    // this is for when in the middle of two collision maps, i.e. player is between two screenmaps
    // if (bgIndex % 2 == 1) {
    //     if (collisionMap[OFFSET(col + 256, row, MAPWIDTH)]) {
    //         return 1;
    //     }
    //     return 0;    
    // }

    // normal collision function
        if (collisionMap[OFFSET(col + (256 * bgIndex), row, MAPWIDTH)]) {
            return 1;
        }
    return 0;
}

int eCheckCollision(int col, int row) {
    // normal collision function
        if (collisionMap[OFFSET(col, row, MAPWIDTH)]) {
            return 1;
        }
    return 0;
}

// TODO - add a specific color collision check

// i am using this for debugging
void drawFont() {
    // this draws the 'score' text
    // for (int i = 0; i < 5; i++) {
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & ((i * 8))) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + i), 1);
    // }
    // this draws the actual score:
    int d3 = hOff / 100;
    int d2 = (hOff % 100) / 10;
    int d1 = hOff % 10;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (48)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d3), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (56)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d2), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (64)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d1), 3);
        shadowOAMIndex++;

    int c3 = player.worldRow / 100;
    int c2 = (player.worldRow % 100) / 10;
    int c1 = player.worldRow % 10;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (148)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + c3), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (156)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + c2), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (164)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + c1), 3);
        shadowOAMIndex++;

    int e3 = pMapPos / 100;
    int e2 = (pMapPos % 100) / 10;
    int e1 = pMapPos % 10;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (82)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e3), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (90)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e2), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (98)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e1), 3);
        shadowOAMIndex++;

}

void drawHUD() {
    // hearts
        if (player.hearts >= 1) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (0)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 6);
            shadowOAMIndex++;
        }
        if (player.hearts >= 2) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (16)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 6);
            shadowOAMIndex++;
        }
        if (player.hearts >= 3) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (32)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 6);
            shadowOAMIndex++;
        }
    // score
        int d3 = score / 100;
        int d2 = (score % 100) / 10;
        int d1 = score % 10;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (200)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d3), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (208)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d2), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (216)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d1), 3);
        shadowOAMIndex++;
    // cheeseburger icon
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (224)) | ATTR1_SMALL;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(6, 4);
        shadowOAMIndex++;
        }

// this handles when player loses all lives / hearts
void gameOver() {
    dead = 1;
}