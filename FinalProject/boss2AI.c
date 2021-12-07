#include "mylib.h"
#include "game.h"
#include "boss2AI.h"

#include "interrupts.h"


int timer2;
int damageTimer2 = 0;

// vars for states

int roundCounter2;
int bombCounter2;
int hoverCounter2;

int hoverX2;
int hoverY2;


KNIFE knives[KNIFECOUNT];

BOSS2 boss2;

int time2 = 0;
int currentFrame2 = 0;

// boss2 behaviors
enum {ROLLING, HOVERING, BOMBING};

void initBoss2() {
    timer2 = 0;
    boss2.lives = BOSS2_LIVES;
    hoverX2 = 104;
    hoverY2 = 45;
    boss2.worldRow = hoverY2;
    boss2.worldCol = hoverX2;
    boss2.eyesOffsetX = 8;
    boss2.eyesOffsetY = 6;
    boss2.state = HOVERING;
    boss2.aniCounter = 0;
    boss2.width = 32;
    boss2.height = 32;
    // left
    boss2.direction = 1;
    bombCounter2 = 0;
    hoverCounter2= 0;
    roundCounter2 = 0;

    initKnives();

}

void initKnives() {
    for (int i = 0; i < KNIFECOUNT; i++) {
        knives[i].active = 0;
        knives[i].width = 13;
        knives[i].height = 15;

        knives[i].aniCounter = 0;
        knives[i].curFrame = 0;
        knives[i].numFrames = 4;
        // ai
        knives[i].direction = 0;
        knives[i].speed = 1;
    }
}

void updateBoss2() {
    timer2++;
    time2++;
    // TODO - do something special when the boss2 dies???
    if (boss2.lives <= 0) {
        currMap++;
        initGame();
        return;
    }

    updateKnives();

    if (collision(boss2.worldCol + 2, boss2.worldRow + 3, boss2.width - 5, boss2.height - 6, player.worldCol, player.worldRow, player.width, player.height)) {
        hurtPlayer();
    }

    if (boss2.damaged) {
        damageTimer2++;
        if (damageTimer2 > 20) {
            damageTimer2 = 0;
            boss2.damaged = 0;
        }
    }

    // while bombing, drop projectiles
    if (timer2 > 60 && boss2.state == BOMBING) {
        timer2 = 0;
        for (int i = 0; i < KNIFECOUNT; i++) {
            if (!knives[i].active) {
                knives[i].direction = 0;
                knives[i].worldCol = boss2.worldCol;
                knives[i].worldRow = boss2.worldRow + 8;
                knives[i].active = 1;
                break;
            }
        }
    }

    if (timer2 > 250 && hoverCounter2 <= 2 && boss2.state == HOVERING) {
        timer2 = 0;
        hoverCounter2++;
        if (roundCounter2 > 1 && hoverCounter2 == 1) {
            spawnBigLettuce2();
        }
        else {
            // ensures that it only spawns two small lettuce the first time
            hoverCounter2++;
            spawnLettuce2();
        }
    }

    if (hoverCounter2 > 2 && boss2.state == HOVERING) {
        hoverCounter2 = 0;
        roundCounter2++;
        boss2.state = BOMBING;
        boss2.direction = (rand() % 2);
    }

    if (boss2.state == BOMBING) {
        int direction = (boss2.direction * 2) - 1;
        if ((direction == 1 && boss2.worldCol < 192) || (direction == -1 && boss2.worldCol > 17)) {
            boss2.worldCol += 2 * direction;
        }
        // changing direction
        else {
            bombCounter2++;
            if (boss2.direction) {
                boss2.direction = 0;
            }
            else {
                boss2.direction = 1;
            }
        }

        // maybe make random?
        if (bombCounter2 > 2) {
            // stop in the middle of the screen
            if (boss2.worldCol > 115 && boss2.worldCol < 125) {
                bombCounter2 = 0;
                boss2.state = HOVERING;
            }
        }

    }

}

void updateKnives() {
    for (int g = 0; g < KNIFECOUNT; g++) {
        if (!knives[g].active) {
            continue;
        }

        // move bullet in direction with speed
        if (knives[g].direction == 0) {
            knives[g].worldRow += (knives[g].speed);
        }


        // if off screen by far, 'destroy' bullet
        if (knives[g].worldRow > 160) {
            knives[g].active = 0;
            continue;
        }

        // if knife hits floor, destroy
        if (eCheckCollision(knives[g].worldCol, knives[g].worldRow + 5)) {
            knives[g].active = 0;
        }

        // check for player collision - make sure bullet is on the screen
        if (collision(knives[g].worldCol + 3, knives[g].worldRow + 4, knives[g].width - 3, knives[g].height - 4, player.worldCol, player.worldRow, player.width, player.height)) {
            if (!player.damaged) {
                hurtPlayer();
                knives[g].active = 0;
            }
        }
        
    }
}

// TODO - add in damaged animation for visual indicator to player
void drawBoss2() {
    if (boss2.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
            // EYES - they purposely are static
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss2.worldRow + boss2.eyesOffsetY)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss2.worldCol + boss2.eyesOffsetX)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((12), 10) * 2;
            shadowOAMIndex++;
        if (boss2.damaged) {
            if (time2 % 10 < 5) {
                shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss2.worldRow)) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss2.worldCol)) | ATTR1_MEDIUM;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID((4), 7) * 4;
                shadowOAMIndex++;
            }
            else {
                shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss2.worldRow)) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss2.worldCol)) | ATTR1_MEDIUM;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID((4), 6) * 4;
                shadowOAMIndex++;
            }

        }
        else {
            // the reason vOff and hOff are included in here is to keep them according to the camera
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss2.worldRow)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss2.worldCol)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID((6), 6) * 4;
            shadowOAMIndex++;
            
        }
    }
    drawHealthBar2();
    drawKnives();
}

void drawKnives() {
    for (int i = 0; i < KNIFECOUNT; i++) {
        if (!knives[i].active) {
            continue;
        }
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (knives[i].worldRow)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (knives[i].worldCol)) | ATTR1_SMALL;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((22), 8);
        knives[i].aniCounter++;
        if (knives[i].aniCounter % 5 == 0) {
            knives[i].curFrame++;
            knives[i].curFrame = knives[i].curFrame % knives[i].numFrames;
        }

        switch (knives[i].curFrame) {
            case 0:
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_VFLIP;
            break;
            case 1:
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_VFLIP;
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
            break;
            case 2:
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
            break;
        }

        shadowOAMIndex++;
    }
}

void drawHealthBar2() {
    if (!(boss2.lives > 0)) {
        return;
    }
    int startingCol = 72;
    // sliver of health for beginning, otherwise its full
    if (boss2.lives == 1) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((13), 7);
        shadowOAMIndex++;
    }
    else {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10), 6);
        shadowOAMIndex++;
    }

    for (int i = 1; i < 11; i++) {
        // puts full middle bar
        if (boss2.lives >= 2 * (i + 1)) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + 8 * i)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((11), 6);
            shadowOAMIndex++;
        }
        // half bar
        else if (boss2.lives == (2 * i) + 1) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + 8 * i)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((13), 6);
            shadowOAMIndex++;
        }
        // empty bar
        else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + 8 * i)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((11), 7);
            shadowOAMIndex++;
        }

    }

    int end = (BOSS2_LIVES / 2) - 1;

    // the end of the health bar
    if (boss2.lives == BOSS2_LIVES) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + (8 * end))) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((12), 6);
        shadowOAMIndex++;
    }
    else if (boss2.lives == BOSS2_LIVES - 1) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + (8 * end))) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((14), 6);
        shadowOAMIndex++;
    }
    else {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + (8 * end))) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((12), 7);
        shadowOAMIndex++;
    }
            

}

void animateBoss2() {
    if (boss2.state == HOVERING) {
        if (boss2.aniCounter % 10 == 0) {
            switch (boss2.worldRow) {
                case 46:
                    boss2.worldRow--;
                break;
                case 45:
                    if (boss2.aniCounter % 3 == 0) {
                        boss2.worldRow--;
                    }
                    else {
                        boss2.worldRow++;
                    }
                break;
                case 44:
                    boss2.worldRow++;
                break;
            }
        }
    }
    boss2.aniCounter++;
}

void spawnLettuce2() {
    int counter = 0;
    for (int g = 0; g < LETTUCECOUNT; g++) {
        if (!lettuce[g].active) {
            if (counter == 1) {
                lettuce[g].worldRow = 60;
                lettuce[g].worldCol = 65;
                lettuce[g].aniState = 3;
                if (cheating) {
                    lettuce[g].lives = 0;
                }
                else {
                    lettuce[g].lives = 1;
                }
                lettuce[g].active = 1;
                return;
            }
            else {
                lettuce[g].worldRow = 60;
                lettuce[g].worldCol = 160;
                lettuce[g].aniState = 3;
                if (cheating) {
                    lettuce[g].lives = 0;
                }
                else {
                    lettuce[g].lives = 1;
                }
                lettuce[g].active = 1;
                counter++;
            }
        }
    }
}

void spawnBigLettuce2() {
    int counter = 0;
    for (int g = 0; g < BIGLETTUCECOUNT; g++) {
        if (!big_lettuce[g].active) {
            if (counter == 1) {
                big_lettuce[g].worldRow = 104;
                big_lettuce[g].worldCol = 10;
                if (cheating) {
                    big_lettuce[g].lives = 0;
                }
                else {
                    big_lettuce[g].lives = 2;
                }
                big_lettuce[g].active = 1;
                return;
            }
            else {
                big_lettuce[g].worldRow = 104;
                big_lettuce[g].worldCol = 210;
                if (cheating) {
                    big_lettuce[g].lives = 0;
                }
                else {
                    big_lettuce[g].lives = 2;
                }
                counter++;
                big_lettuce[g].active = 1;
            }
        }
    }
}