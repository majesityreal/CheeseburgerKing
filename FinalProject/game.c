#include <math.h>
#include "myLib.h"
#include "game.h"
#include "testmapcollisionmap.h"
#include "collisionmap.h"

// this is the mario map collision map
#include "marioMapCollisionMap.h"
// this is the new tilemap thing
#include "platformerCollision.h"

OBJ_ATTR shadowOAM[128];
PLAYER player;
SLASH slash;

// temp placeholder for the first goblin for testing
GOBLIN goblin1;

int shadowOAMIndex = 0;

short pellets[1024];
// gets the collision map set up
unsigned char* collisionMap = platformerCollisionBitmap;

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

// detects if player hits something above while jumping
int jumpThud = 0;

// velocity in the y axis
int yVel = 0;
int framesInAir = 0;

// gravity timer, for falling velocity
int gTimer = 0;

// Pacman animation states for aniState
enum {IDLE, RUNNING, JUMPUP, JUMPDOWN, ATTACK};

// Initialize the game
// #region init
void initGame() {
    initPlayer();
    initSlash();
    gTimer = 0;
    shadowOAMIndex = 0;
}

// Initialize the player
void initPlayer() {
    player.hide = 0;
    player.width = 13;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;

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
}

void initSlash() {
    // hides by default
    slash.hide = 1;
    slash.width = 14;
    slash.height = 12;
    // FIXME configure this TODO
    slash.rdel = 0;
    slash.cdel = 15;

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

// #endregion

// Updates the game each frame
void updateGame() {
    // pauses the game
    if (BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseVar = 1;
    }
	updatePlayer();
    updateEnemies();
}

// Draws the game each frame
void drawGame() {
    shadowOAMIndex = 0;
    drawPlayer();
    drawSlash();
    drawEnemies();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

// Handle every-frame actions of the player
void updatePlayer() {
    // TODO - not super happy with gravity implementation so far, jumps are random?

    // FIXME - jump thuds, top right and top left clipping
    // FIXME - sometimes the player falls into ground :(

    // #region yVel + jumping
    grounded = groundCheck();

    // the check for jumping
    if(BUTTON_PRESSED(BUTTON_UP) && grounded
        && !collisionMap[OFFSET(player.worldCol, player.worldRow - 1, MAPWIDTH)]
        && !collisionMap[OFFSET(player.worldCol + player.width, player.worldRow - 1, MAPWIDTH) ]) {
            // sets y to -4 for upwards movement, gravity will eventually bring it down
            yVel = JUMPVEL;
            // need this
            grounded = 0;
            jumping = 1;
    }

    // loops through pixels above player to check if head collision
        for (int i = 0; i > yVel; i--) {
            if (collisionMap[OFFSET(player.worldCol, player.worldRow + i, MAPWIDTH)]
            || collisionMap[OFFSET(player.worldCol + player.width, player.worldRow + i, MAPWIDTH)]) {
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
                if (collisionMap[OFFSET(player.worldCol - i, player.worldRow + i, MAPWIDTH)]
                || collisionMap[OFFSET(player.worldCol + player.width - i, player.worldRow + i, MAPWIDTH)]) {
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
            if (collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + i, MAPWIDTH)]
            || collisionMap[OFFSET(player.worldCol + player.width, player.worldRow + player.height + i, MAPWIDTH)]) {
                // snaps player to ground and resets yVel
                player.worldRow += (i - 1);
                vOff += (i - 1);
                yVel = 0;
                grounded = 1;
                break;
            }
        }
        if (BUTTON_HELD(BUTTON_UP) && jumping && !jumpThud) {
            yVel = JUMPVEL + (GRAVITY * framesInAir);
        }
        else {
            if (jumpThud || !BUTTON_PRESSED(BUTTON_UP)) {
                yVel = (GRAVITY * framesInAir);
            }
            else {
                yVel = ((JUMPVEL * 3) / 4) + (GRAVITY * framesInAir);
            }
            // this prevents pressing jump again midair
            jumping = 0;
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

    // left movement
    if(BUTTON_HELD(BUTTON_LEFT)
        && !collisionMap[OFFSET(player.worldCol - 1, player.worldRow, MAPWIDTH)]
        && !collisionMap[OFFSET(player.worldCol - 1, player.worldRow + player.height - 1, MAPWIDTH)]) {
        if (player.worldCol >= 0) {
            player.worldCol--;
            if (hOff >= 0 && (player.worldCol - hOff < (SCREENWIDTH / 2))) {
                // Update background offset variable if the above is true
                hOff--;
            }
        }
    }
    // right movement
    if(BUTTON_HELD(BUTTON_RIGHT) 
        && !collisionMap[OFFSET(player.worldCol + player.width + 1, player.worldRow, MAPWIDTH)]
        && !collisionMap[OFFSET(player.worldCol + player.width + 1, player.worldRow + player.height - 1, MAPWIDTH)]) {
        if (player.worldCol <= MAPWIDTH + SCREENWIDTH - 30) {
            player.worldCol++;
            if (hOff <= 240 && (player.worldCol - hOff > (SCREENWIDTH / 2))) {
                // Update background offset variable if the above is true
                hOff++;
            }
        }
    }

    slash.worldCol = player.worldCol + (slash.cdel * ((player.direction * -2) + 1));
    slash.worldRow = player.worldRow;
    animateSlash();
    if (player.attackTimer > 0) {
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
        player.attackTimer = ATTACK_SPEED * (slash.numFrames - 1);
        player.curFrame = 0;
        slash.hide = 0;
        slash.curFrame = 0;
        // TODO - add in extra stuff, movement restirction?
    }

    // update the gravity check timer, so gravity is more smooth
    gTimer++;

    animatePlayer();
}

// function to check if player is on ground. returns 0 if there is ground, 1 if there is not
int groundCheck() {
    // this is when player is standing on ground
    if (collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + 1, MAPWIDTH)]
        || collisionMap[OFFSET(player.worldCol + player.width, player.worldRow + player.height + 1, MAPWIDTH)]) {
            // need to reset this before anything else
            jumpThud = 0;
            return 1;
    }
    return 0;
}

void animateSlash() {
    if (slash.aniCounter % ATTACK_SPEED == 0) {
        slash.curFrame = (slash.curFrame + 1) % slash.numFrames;
    }
    slash.aniCounter++;
}

// TODO - fix up for player animation states (attack, move left/right, jump)
// Handle player animation states
void animatePlayer() {

    // Set previous state to current state, defaults to idle if no button held
    player.prevAniState = player.aniState;
    player.aniState = IDLE;

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_LEFT)) {
        player.aniState = RUNNING;
        player.direction = 1;
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        player.aniState = RUNNING;
        player.direction = 0;
    }
    if (yVel > 0) {
        player.aniState = JUMPDOWN;
    }
    if (yVel < 0) {
        player.aniState = JUMPUP;
    }
    if (player.attacking) {
        player.aniState = ATTACK;
    }

    // Change the animation frame every X frames of gameplay for different states
    if(player.aniCounter % ATTACK_SPEED == 0 && player.aniState == ATTACK) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    else if (player.aniCounter % 5 == 0 && player.aniState == RUNNING) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    else if (player.aniCounter % 10 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    player.aniCounter++;

    // TODO - fix this part up, for not it is commented out
    // If the pacman aniState is idle, frame is pacman standing
    // if (player.aniState == ATTACK) {
    //     player.curFrame = 0;
    //     player.aniCounter = 0;
    //     player.aniState = player.prevAniState;
    // } else {
    //     player.aniCounter++;
    // }
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
            default:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2), player.aniState * 2);
            break;
        }
    }
    shadowOAMIndex++;
}

void updateEnemies() {
    int range = 0;
    if (range < goblin1.targetRange) {

    }

    animateEnemies();
}

void animateEnemies() {

}

void drawEnemies() {

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

void drawFont() {
    // this draws the 'score' text
    for (int i = 0; i < 5; i++) {
        shadowOAM[2 + i].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[2 + i].attr1 = (COLMASK & ((i * 8))) | ATTR1_TINY;
        shadowOAM[2 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + i), 1);
    }
    // this draws the actual score
    int d3 = yVel / 100;
    int d2 = (yVel % 100) / 10;
    int d1 = abs(yVel);
        shadowOAM[7].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[7].attr1 = (COLMASK & (40)) | ATTR1_TINY;
        shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + d3), 0);

        shadowOAM[8].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[8].attr1 = (COLMASK & (48)) | ATTR1_TINY;
        shadowOAM[8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + d2), 0);

        shadowOAM[9].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[9].attr1 = (COLMASK & (56)) | ATTR1_TINY;
        shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + d1), 0);
}