#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "text.h"
// place for the extra assets
#include "titlescreen.h"
#include "spritesheet.h"

#include "TitleSpritesheet.h"

// parallax background
#include "parallaxBG.h"

/*

// how are the iFrames after being damaged? More / less?

// Lethargic Lettuce - is it balanced?

// How do I prevent the camera from overlapping itself? When at the bottom, I start to see the top of the map

KNOWN BUGS:
    - The lettuce projectiles will ocassionaly freeze
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

    state = TITLE;

    // setting up selector. not big enough to grant its own method
    selector.currFrame = 0;
    selector.totalFrames = 3;
    selector.xLocation = 20;
    selector.yLocation = 50;

    DMANow(3, shadowOAM, OAM, 128 * 4);

}

// runs every frame of the title screen
void titleScreen() {
    timer++;
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


    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void setupLevelSelect() {
    currSelection = 0;
    state = LEVEL_SELECT;
}

void levelSelect() {
    timer++;
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

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void setupCredits() {


    state = CREDITS;
}

void credits() {

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
    else {
        // using this to count indices to easily add more levels
        for (int i = 0; i < 5; i++) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (selector.yLocation - 4 + (i * 16))) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (selector.xLocation + 8)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((6), (18 + (2 * i)));
            shadowOAMIndex++;
        }

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


    // adding temp mario map
    // DMANow(3, map1Pal, PALETTE, 48);
    // DMANow(3, map2Tiles, &CHARBLOCK[0], map2TilesLen / 2);
    // DMANow(3, map2Map, &SCREENBLOCK[28], map2MapLen / 2);
    // TODO - something that dma's in the map tiles in per thing ? but it doesnt work for everything

    // mario map 2 (since it is wide, it is using two consective screen blocks)
    // we do not need this if they use the same tiles, else we do
    // DMANow(3, map1Tiles, &CHARBLOCK[0], map1TilesLen / 2);
    // DMANow(3, map1Map, &SCREENBLOCK[30], map1MapLen / 2);

    // adding parallax
    // DMANow(3, platformerPal, PALETTE, 32);
    DMANow(3, parallaxBGTiles, &CHARBLOCK[2], parallaxBGTilesLen / 2);
    DMANow(3, parallaxBGMap, &SCREENBLOCK[22], parallaxBGMapLen / 2);

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

    dead = 0;
    state = GAME;
}




// Runs every frame of the game state
void game() {
    if (dead) {
        hOff = 0;
        vOff = 0;
        dead = 0;
        // if we don't set dying here, when playing the player will go in an infinite death loop!
        dying = 0;
        setupTitleScreen();
        return;
    }
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
void win() {
    
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