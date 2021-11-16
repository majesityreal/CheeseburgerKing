#include <math.h>
#include "myLib.h"
#include "game.h"
#include "testmapcollisionmap.h"
#include "collisionmap.h"

// this is the mario map collision map
#include "marioMapCollisionMap.h"

OBJ_ATTR shadowOAM[128];
ANISPRITE pacman;
short pellets[1024];
// gets the collision map set up
unsigned char* collisionMap = marioMapCollisionMapBitmap;

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
enum {PACDOWN, PACUP, PACRIGHT, PACLEFT, PACIDLE};

// Initialize the game
// #region init
void initGame() {
    initPlayer();
    gTimer = 0;
}

// Initialize the player
void initPlayer() {
    pacman.hide = 0;
    pacman.width = 8;
    pacman.height = 8;
    pacman.rdel = 1;
    pacman.cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    pacman.worldRow = 20;
    pacman.worldCol = 20;
    pacman.aniCounter = 0;
    pacman.curFrame = 0;
    pacman.numFrames = 3;
    pacman.aniState = PACDOWN;
}

// #endregion

// Updates the game each frame
void updateGame() {
    // pauses the game
    if (BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseVar = 1;
    }
	updatePlayer();
    // simple timer to keep track of gravity
}

// Draws the game each frame
void drawGame() {

    drawPlayer();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

// Handle every-frame actions of the player
void updatePlayer() {
    // TODO - not super happy with gravity implementation so far, jumps are random?

    // FIXME - jump thuds
    // FIXME - sometimes the player falls into ground :(

    // #region yVel + jumping
    grounded = groundCheck();

    // the check for jumping
    if(BUTTON_PRESSED(BUTTON_UP) && grounded
        && !collisionMap[OFFSET(pacman.worldCol, pacman.worldRow - 1, MAPWIDTH)]
        && !collisionMap[OFFSET(pacman.worldCol + pacman.width, pacman.worldRow - 1, MAPWIDTH) ]) {
            // sets y to -4 for upwards movement, gravity will eventually bring it down
            yVel = JUMPVEL;
            // need this
            grounded = 0;
            jumping = 1;
            drawFont();
    }

    // moves down if in air, handles gravity
    if (!grounded) {
            if (BUTTON_HELD(BUTTON_UP) && jumping && !jumpThud) {
                yVel = JUMPVEL + (GRAVITY * framesInAir);
            }
            else {
                if (jumpThud) {
                    yVel = (GRAVITY * framesInAir);
                }
                else {
                    yVel = ((JUMPVEL * 3) / 4) + (GRAVITY * framesInAir);
                }
                jumping = 0;
            }
            yVel = fmin(3, yVel);
            if (gTimer % 4 == 0) {
            framesInAir++;
                    drawFont();
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
    pacman.worldRow += yVel;

    // moves camera down if player is moving down
    if (vOff < MAPHEIGHT && (pacman.worldRow - vOff >= SCREENHEIGHT / 2) && (yVel > 0)) {
        vOff += yVel;
    }
    
    // moves camera up if player is moving up
    if (vOff > 0 && (pacman.worldRow - vOff <= SCREENHEIGHT / 2) && (yVel < 0)) {
        vOff += yVel;
    }

    // loops through pixels above player to check if head collision
    if (yVel < 0) {
        for (int i = 0; i > yVel; i--) {
            if (collisionMap[OFFSET(pacman.worldCol, pacman.worldRow + pacman.height + i, MAPWIDTH)]
            && collisionMap[OFFSET(pacman.worldCol + pacman.width, pacman.worldRow + pacman.height + i, MAPWIDTH)]) {
                // snaps player to ground and resets yVel
                pacman.worldRow += (i + 1);
                vOff += (i + 1);
                yVel = 0;
                jumping = 0;
                jumpThud = 1;
                break;
            }
        }
    }

    // loops through pixels below player to check ground, if they are falling (yVel > 0)
    for (int i = yVel; i > 0; i--) {
        if (collisionMap[OFFSET(pacman.worldCol, pacman.worldRow + pacman.height + i, MAPWIDTH)]
        && collisionMap[OFFSET(pacman.worldCol + pacman.width, pacman.worldRow + pacman.height + i, MAPWIDTH)]) {
            // snaps player to ground and resets yVel
            pacman.worldRow += (i - 2);
            vOff += (i - 2);
            yVel = 0;
            break;
        }
    }

    // #endregion

    // if(BUTTON_HELD(BUTTON_DOWN) 
    //     && !collisionMap[OFFSET(pacman.worldCol, pacman.worldRow + pacman.height + 1, MAPWIDTH)]
    //     && !collisionMap[OFFSET(pacman.worldCol + pacman.width, pacman.worldRow + pacman.height + 1, MAPWIDTH)]) {
    //     if (pacman.worldRow <= MAPHEIGHT + SCREENHEIGHT - 16) {
    //         pacman.worldRow++;
    //         if (vOff < MAPHEIGHT && (pacman.worldRow - vOff >= SCREENHEIGHT / 2)) {
    //             vOff++;
    //         }
    //     }
    // }
    if(BUTTON_HELD(BUTTON_LEFT)
        && !collisionMap[OFFSET(pacman.worldCol - 1, pacman.worldRow, MAPWIDTH)]
        && !collisionMap[OFFSET(pacman.worldCol - 1, pacman.worldRow + pacman.height - 1, MAPWIDTH)]) {
        if (pacman.worldCol >= 0) {
            pacman.worldCol--;
            if (hOff >= 0 && (pacman.worldCol - hOff < (SCREENWIDTH / 2))) {
                // Update background offset variable if the above is true
                hOff--;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT) 
        && !collisionMap[OFFSET(pacman.worldCol + pacman.width + 1, pacman.worldRow, MAPWIDTH)]
        && !collisionMap[OFFSET(pacman.worldCol + pacman.width + 1, pacman.worldRow + pacman.height - 1, MAPWIDTH)]) {
        if (pacman.worldCol <= MAPWIDTH + SCREENWIDTH - 30) {
            pacman.worldCol++;
            if (hOff <= 240 && (pacman.worldCol - hOff > (SCREENWIDTH / 2))) {
                // Update background offset variable if the above is true
                hOff++;
            }
        }
    }

    // update the gravity check timer, so gravity is more smooth
    gTimer++;

    // TODO add player animations in
    // animatePlayer();
}

// function to check if player is on ground. returns 0 if there is ground, 1 if there is not
int groundCheck() {
    // this is when player is standing on ground
    if (collisionMap[OFFSET(pacman.worldCol, pacman.worldRow + pacman.height + 1, MAPWIDTH)]
        && collisionMap[OFFSET(pacman.worldCol + pacman.width, pacman.worldRow + pacman.height + 1, MAPWIDTH)]) {
            jumpThud = 0;
            return 1;
    }
    return 0;
}

// TODO - fix up for player animation states (attack, move left/right, jump)
// Handle player animation states
void animatePlayer() {

    // Set previous state to current state
    pacman.prevAniState = pacman.aniState;
    pacman.aniState = PACIDLE;

    // Change the animation frame every 20 frames of gameplay
    if(pacman.aniCounter % 10 == 0) {
        pacman.curFrame = (pacman.curFrame + 1) % pacman.numFrames;
    }

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_UP))
        pacman.aniState = PACUP;
    if(BUTTON_HELD(BUTTON_DOWN))
        pacman.aniState = PACDOWN;
    if(BUTTON_HELD(BUTTON_LEFT))
        pacman.aniState = PACLEFT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        pacman.aniState = PACRIGHT;

    // If the pacman aniState is idle, frame is pacman standing
    if (pacman.aniState == PACIDLE) {
        pacman.curFrame = 0;
        pacman.aniCounter = 0;
        pacman.aniState = pacman.prevAniState;
    } else {
        pacman.aniCounter++;
    }
}

// Draw the player
void drawPlayer() {
    if (pacman.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[0].attr0 = (ROWMASK & (pacman.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & (pacman.worldCol - hOff)) | ATTR1_TINY;
        if (pacman.aniState == PACDOWN) {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
        }
        else
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
    }
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