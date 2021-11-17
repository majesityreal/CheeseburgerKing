#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "text.h"
// place for the extra assets
#include "testmap.h"
#include "titlescreen.h"
#include "gamebackground.h"
#include "spritesheet.h"

#include "marioMap.h"
#include "marioMapCollisionMap.h"

#include "platformer.h"

// maps in order
#include "map1.h"
#include "map2.h"
// parallax background
#include "parallaxBG.h"



/*

have variables to keep track of shadowOAM entries, increment every time you use it

comment on shit





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



// sets up the title screen
void setupTitleScreen();
void titleScreen();

// States
enum
{
    TITLE,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Timer variables
int timer = 0;

// Shadow OAM
OBJ_ATTR shadowOAM[128];

int main()
{
    timer = 0;
    buttons = BUTTONS;
    oldButtons = 0;
    // sets up the title screen
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

// TODO - get rid of this method and replace- Sets up GBA
void initialize()
{
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(26) | BG_SIZE_SMALL | BG_4BPP;
}

// sets up title screen in MODE 4
void setupTitleScreen() {
    REG_DISPCTL = MODE4 | BG2_ENABLE;
    REG_BG2CNT = BG_4BPP;
    // draw the title screen image
    DMANow(3, TitleScreenPal, PALETTE, TitleScreenPalLen / 2);
    drawFullscreenImage4(TitleScreenBitmap);
    state = TITLE;
}

// runs every frame of the title screen
void titleScreen() {
    timer++;
    // if start,select pressed, launch into game
    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_SELECT)) {
        startGame();
    }
}

// sets up the game into mode 0 and all the required setups
void startGame() {

    // BG 2 is the parallax background, BG 1 is the actual tiles

    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE | BG2_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_4BPP;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(26) | BG_SIZE_SMALL | BG_4BPP;

    // sets up the background offset
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    REG_BG2HOFF = hOff;

    // initialize();

    srand(timer);

    waitForVBlank();


    // setting up the game background
//     DMANow(3, testmapPal, PALETTE, 16);
//     DMANow(3, testmapTiles, &CHARBLOCK[2], testmapTilesLen / 2);
//     DMANow(3, testmapMap, &SCREENBLOCK[26], testmapMapLen / 2);

    // adding temp mario map
    DMANow(3, map1Pal, PALETTE, 32);
    DMANow(3, map2Tiles, &CHARBLOCK[0], map1TilesLen / 2);
    DMANow(3, map2Map, &SCREENBLOCK[30], map1MapLen / 2);

    // adding parallax
    // DMANow(3, platformerPal, PALETTE, 32);
    DMANow(3, parallaxBGTiles, &CHARBLOCK[2], parallaxBGTilesLen / 2);
    DMANow(3, parallaxBGMap, &SCREENBLOCK[26], parallaxBGMapLen / 2);

    // old aadding maop
    // DMANow(3, GameBackgroundPal, PALETTE, 16);
    // DMANow(3, GameBackgroundTiles, &CHARBLOCK[2], GameBackgroundTilesLen / 2);
    // DMANow(3, GameBackgroundMap, &SCREENBLOCK[26], GameBackgroundMapLen / 2);

    // setting up the sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

 

    // // into charblock
    // DMANow(3, pelletTiles, &CHARBLOCK[2], pelletTilesLen / 2);
    // DMANow(3, pelletPal, SPRITEPALETTE, pelletPalLen / 2);

    hideSprites();
    // spooky scary shadowOAM
    DMANow(3, shadowOAM, OAM, 128 * 4);

    initGame();

    state = GAME;
}




// Runs every frame of the game state
void game() {
    if (pauseVar) {
        goToPause();
    }
    updateGame();
    drawGame();
    // if (lives < 1) {
    //     goToLose();
    // }
}

// // Sets up the start state
// void goToStart() {
//     REG_DISPCTL = MODE3 | BG2_ENABLE;
//     state = TITLE;
// }

// // Runs every frame of the start state
// void start() {
//     fillScreen3(RED);
//     timer++;
//     if (BUTTON_PRESSED(BUTTON_A)) {
//         goToGame();
//         initGame();
//     }
// }

// Sets up the pause state
void goToPause() {
    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    
    if (BUTTON_PRESSED(BUTTON_A) | BUTTON_PRESSED(BUTTON_B) | BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
            REG_DISPCTL = MODE4 | BG2_ENABLE;
        // TODO - add functionality for going to game without having to restart it
        state = GAME;
    }
}

// Sets up the win state
void goToWin() {
    state = WIN;
}

// Runs every frame of the win state
void win() {}

// Sets up the lose state
void goToLose() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;
    state = LOSE;
    fillScreen3(RED);
}

// Runs every frame of the lose state
void lose() {

}