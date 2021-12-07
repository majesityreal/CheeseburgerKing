#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "text.h"
// place for the extra assets
#include "titlescreen.h"
#include "HowToPlayScreen.h"
#include "victoryScreen.h"
#include "spritesheet.h"

#include "TitleSpritesheet.h"

// parallax background
#include "parallaxBG.h"

// SOUND!
#include "interrupts.h"

#include "menuSong.h"

#include "sfx_jump1.h"

SOUND menuSong;

/*

What I want to highlight:
    - Affine sprites: The LETHARGIC LETTUCE uses affine sprites when rolling. Rotates correctly based on direction too
        See: boss1AI.c, line 177 - 183 ish in the drawBoss1() method, 
    - LARGE MAP (1024 x 256) I use multiple screen blocks to load in multiple maps
        See: game.c, line 635 for left motion and 661 for right motion (updatePlayer method)
    - There is a speedrun timer

What is finished:
    - ALL mechanics (double jump, dash, attack)
    - Enemies: Big lettuce (projectile shooter), small lettuce, and the LETHARGIC LETTUUCE (boss)
    - Level 1
    - Boss fight (Level 2)

What I'm planning:
    - An intro level (level 0) to introduce mechanics / allow players to get used to movement.
        from testing, people found it really hard at first
    - Level 3 with !!knife throwers!!
    - Tangy Tomato boss

Feedback Questions:
// how are the i-frames after being damaged? More / less?
// Lethargic Lettuce - is it balanced? Too hard?

KNOWN BUGS:
    FIXED, YAY! - The lettuce projectiles will ocassionaly freeze
       I do not know the cause of this, but it is very minor, and they are fixed as soon as the big_lettuce fires another one. It is visual glitch

    - There is a weird bug where when I press up, it sometimes registers as pressing 'A'??? In the title screen, I had to purposely negate this for the buttons

*/

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();

// starts the game from the title screen
void startGame();

void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void setupCredits();
void credits();
void setupLevelSelect();
void levelSelect();

void drawSelector();
void drawButtons();

// sets up the title screen
void setupTitleScreen();
void titleScreen();

void drawWaterfall();

// States
enum
{
    TITLE,
    GAME,
    PAUSE,
    WIN,
    LOSE,
    LEVEL_SELECT,
    CREDITS
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Timer variables
int timer = 0;

int currSelection = 0;
SELECTOR selector;

int waterfallTimer = 0;
int waterfallX = 120;
int waterfallY = 55;
int waterfallFrames = 0;
int kingFrames = 0;

// Shadow OAM
OBJ_ATTR shadowOAM[128];

int main()
{
    timer = 0;
    buttons = BUTTONS;
    oldButtons = 0;
    // sets up the title screen

    setupSounds();
    setupInterrupts();

    setupTitleScreen();

    while (1)
    {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case TITLE:
            titleScreen();
            break;
        case LEVEL_SELECT:
            levelSelect();
            break;
        case CREDITS:
            credits();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// sets up title screen in MODE 4
void setupTitleScreen() {
    // ensures there is no timer while in title
    time_s = 0;
    time_m = 0;
    pauseTimer();
    
    REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;
    REG_BG2CNT = BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(24);
    // draw the title screen image
    DMANow(3, TitleScreenPal, PALETTE, TitleScreenPalLen / 2);
    DMANow(3, TitleScreenTiles, &CHARBLOCK[0], TitleScreenTilesLen / 2);
    DMANow(3, TitleScreenMap, &SCREENBLOCK[24], TitleScreenMapLen / 2);

    // title screen spritesheet
    DMANow(3, TitleSpritesheetPal, SPRITEPALETTE, TitleSpritesheetPalLen / 2);
    DMANow(3, TitleSpritesheetTiles, &CHARBLOCK[4], TitleSpritesheetTilesLen / 2);

    REG_BG2VOFF = vOff;
    REG_BG2HOFF = hOff;


    // setting up selector. not big enough to grant its own method
    selector.currFrame = 0;
    selector.totalFrames = 3;
    selector.xLocation = 20;
    selector.yLocation = 50;

    DMANow(3, shadowOAM, OAM, 128 * 4);

    stopSound();
    playSoundA(menuSong_data, menuSong_length, 1);

    state = TITLE;

}

// runs every frame of the title screen
void titleScreen() {
    timer++;
    waterfallTimer++;
    shadowOAMIndex = 0;
    hideSprites();
    if (BUTTON_PRESSED(BUTTON_UP)) {
        currSelection--;
        if (currSelection < 0) {
            currSelection = BUTTON_COUNT - 1;
        }
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        currSelection++;
        if (currSelection > BUTTON_COUNT - 1) {
            currSelection = 0;
        }
    }

    if (BUTTON_PRESSED(BUTTON_R)) {
        playSoundB(sfx_jump1_data, sfx_jump1_length, 0);
    }
    
    // if start,select pressed, launch into game
    if (BUTTON_PRESSED(BUTTON_A) && !BUTTON_HELD(BUTTON_UP)) {
        switch (currSelection) {
            case 0:
                startGame();
                currMap = 0;
                initGame();
            break;
            case 1:
                setupCredits();
            break;
            case 2:
                setupLevelSelect();
            break;

        }
    }
    waitForVBlank();
    if (state != CREDITS) {
        drawSelector();
        drawButtons();
    }

    drawWaterfall();


    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void setupLevelSelect() {
    currSelection = 0;
    state = LEVEL_SELECT;
}

void levelSelect() {
    timer++;
    waterfallTimer++;
    shadowOAMIndex = 0;
    hideSprites();
    if (BUTTON_PRESSED(BUTTON_UP)) {
        currSelection--;
        if (currSelection < 0) {
            currSelection = BUTTON_COUNT + 1;
        }
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        currSelection++;
        if (currSelection > BUTTON_COUNT + 1) {
            currSelection = 0;
        }
    }
    
    if (BUTTON_PRESSED(BUTTON_A) && !BUTTON_HELD(BUTTON_UP)) {
        startGame();
        currMap = currSelection;
        initGame();
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        currSelection = 0;
        state = TITLE;
        selector.currFrame = 0;
        selector.totalFrames = 3;
        selector.xLocation = 20;
        selector.yLocation = 50;
    }

    waitForVBlank();

    drawSelector();
    drawButtons();
    drawWaterfall();

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void setupCredits() {
    hideSprites();
    waitForVBlank();
    DMANow(3, HowToPlayScreenPal, PALETTE, HowToPlayScreenPalLen / 2);
    DMANow(3, HowToPlayScreenTiles, &CHARBLOCK[0], HowToPlayScreenTilesLen / 2);
    DMANow(3, HowToPlayScreenMap, &SCREENBLOCK[24], HowToPlayScreenMapLen / 2);
    DMANow(3, shadowOAM, OAM, 128 * 4);
    state = CREDITS;
}

// I am manually doing it for lack of time. Don't question it.
void credits() {
    shadowOAMIndex = 0;
        hideSprites();
        waterfallTimer++;
        if (waterfallTimer % 6 == 0) {
            waterfallFrames++;
            waterfallFrames = waterfallFrames % 6;
        }
        waitForVBlank();
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (waterfallY + 88)) | ATTR0_WIDE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (waterfallX - 9)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8 + (4 * waterfallFrames), (18));
        shadowOAMIndex++;
    if (BUTTON_PRESSED(BUTTON_B)) {
        currSelection = 0;
        state = TITLE;
        selector.currFrame = 0;
        selector.totalFrames = 3;
        selector.xLocation = 20;
        selector.yLocation = 50;
        DMANow(3, TitleScreenPal, PALETTE, TitleScreenPalLen / 2);
        DMANow(3, TitleScreenTiles, &CHARBLOCK[0], TitleScreenTilesLen / 2);
        DMANow(3, TitleScreenMap, &SCREENBLOCK[24], TitleScreenMapLen / 2);
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }
    DMANow(3, shadowOAM, OAM, 128 * 4);

}

void drawSelector() {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation + 16 * currSelection)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10), (12 + selector.currFrame));
        shadowOAMIndex++;
        if (timer % 10 == 0) {
            selector.currFrame++;
            selector.currFrame = selector.currFrame % selector.totalFrames;
        }
}

void drawButtons() {
    if (state == TITLE) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation - 4)) | ATTR0_WIDE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((6), (12));
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation + 12)) | ATTR0_WIDE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((6), (14));
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation + 28)) | ATTR0_WIDE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((6), (16));
        shadowOAMIndex++;
    }
    else if (state == LEVEL_SELECT) {
        // using this to count indices to easily add more levels
        for (int i = 0; i < 5; i++) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation - 4 + (i * 16))) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((6), (18 + (2 * i)));
            shadowOAMIndex++;
        }

    }
    else {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation - 4)) | ATTR0_WIDE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((6), (12));
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation + 12)) | ATTR0_WIDE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((6), (14));
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation + 28)) | ATTR0_WIDE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((6), (16));
        shadowOAMIndex++;
    }
}

void drawWaterfall() {
    shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (waterfallY)) | ATTR0_TALL;
    shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (waterfallX)) | ATTR1_MEDIUM;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17 + (2 * waterfallFrames), (0));
    shadowOAMIndex++;
    shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (waterfallY + 32)) | ATTR0_TALL;
    shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (waterfallX)) | ATTR1_MEDIUM;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17 + (2 * waterfallFrames), (4));
    shadowOAMIndex++;
    shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (waterfallY + 64)) | ATTR0_TALL;
    shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (waterfallX)) | ATTR1_MEDIUM;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17 + (2 * waterfallFrames), (8));
    shadowOAMIndex++;
    // this is the fuzz at the bottom of the waterfall
    shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (waterfallY + 88)) | ATTR0_WIDE;
    shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (waterfallX - 9)) | ATTR1_MEDIUM;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8 + (4 * waterfallFrames), (18));
    shadowOAMIndex++;

    // this is the king
    shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (waterfallY - 26)) | ATTR0_TALL;
    shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (waterfallX - 9)) | ATTR1_MEDIUM;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(17 + (2 * kingFrames), 13);
    shadowOAMIndex++;
            
    if (waterfallTimer % 6 == 0) {
        waterfallFrames++;
        waterfallFrames = waterfallFrames % 6;
    }
    if (waterfallTimer % 12 == 0) {
        kingFrames++;
        kingFrames = kingFrames % 4;
    }

}

// sets up the game into mode 0 and all the required setups
void startGame() {

    // BG 2 is the parallax background, BG 1 is the actual tiles

    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE | BG2_ENABLE; // TODO add BG0_ENABLE
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_SIZE_WIDE | BG_4BPP;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(22) | BG_SIZE_SMALL | BG_4BPP;

    // sets up the background offset
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    REG_BG2HOFF = hOff;

    // initialize();

    srand(timer);

    waitForVBlank();

    // start the speedrunning timer
    startTimer();

    // adding parallax
    // DMANow(3, platformerPal, PALETTE, 32);
    DMANow(3, parallaxBGTiles, &CHARBLOCK[2], parallaxBGTilesLen / 2);
    DMANow(3, parallaxBGMap, &SCREENBLOCK[22], parallaxBGMapLen / 2);

    // setting up the sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    hideSprites();
    // spooky scary shadowOAM
    DMANow(3, shadowOAM, OAM, 128 * 4);

    stopSound();
    

    dead = 0;
    state = GAME;
}




// Runs every frame of the game state
void game() {
    if (winning) {
        goToWin();
        return;
    }
    if (pauseVar) {
        goToPause();
        return;
    }
    if (dead) {
        hOff = 0;
        vOff = 0;
        dead = 0;
        // if we don't set dying here, when playing the player will go in an infinite death loop!
        dying = 0;
        setupTitleScreen();
        return;
    }

    updateGame();
    drawGame();
}

// Sets up the pause state
void goToPause() {
    state = PAUSE;
    waitForVBlank();
    drawButtons();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

// Runs every frame of the pause state
void pause() {

    // FIXME - when pressing alternate button it no work o
    
    // if (BUTTON_PRESSED(BUTTON_UP)) {
    //     currSelection--;
    //     if (currSelection < 0) {
    //         currSelection = BUTTON_COUNT + 1;
    //     }
    // }
    // if (BUTTON_PRESSED(BUTTON_DOWN)) {
    //     currSelection++;
    //     if (currSelection > BUTTON_COUNT + 1) {
    //         currSelection = 0;
    //     }
    // }





    if (BUTTON_PRESSED(BUTTON_A) | BUTTON_PRESSED(BUTTON_B) | BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseVar = 0;
        // TODO - add functionality for going to game without having to restart it
        state = GAME;
        return;
    }

    // waitForVBlank();
    // drawButtons();
    // DMANow(3, shadowOAM, OAM, 128 * 4);

}

// Sets up the win state
void goToWin() {
    hideSprites();
        DMANow(3, victoryScreenPal, PALETTE, victoryScreenPalLen / 2);
        DMANow(3, victoryScreenTiles, &CHARBLOCK[0], victoryScreenTilesLen / 2);
        DMANow(3, victoryScreenMap, &SCREENBLOCK[24], victoryScreenMapLen / 2);
        DMANow(3, shadowOAM, OAM, 128 * 4);

    state = WIN;
}

// Runs every frame of the win state
void win() {
    shadowOAMIndex = 0;
    if (BUTTON_PRESSED(BUTTON_A) | BUTTON_PRESSED(BUTTON_B) | BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)
     | BUTTON_PRESSED(BUTTON_UP) | BUTTON_PRESSED(BUTTON_DOWN) | BUTTON_PRESSED(BUTTON_LEFT) | BUTTON_PRESSED(BUTTON_RIGHT)
      | BUTTON_PRESSED(BUTTON_R) | BUTTON_PRESSED(BUTTON_L)) {
        setupTitleScreen();
    }
    drawTimer();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

// Sets up the lose state
void goToLose() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;
    state = LOSE;
    fillScreen3(RED);
}

// Runs every frame of the lose state
void lose() {
    
}