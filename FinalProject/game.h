#include "mylib.h"

// the orc will target the player, moving towards their x value. However, they are very stupid and
// only go towards the X value
typedef struct {
    // determines whether to show sprite + compute AI, if it is on camera then yes
    int active;
    int worldRow;
    int worldCol;
    int width;
    int height;
    // sprite animation stuff
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    // AI stuff
    int targetX;
    int direction;
    int speed;
    int targetRange;
    } GOBLIN;

typedef struct {
    // screen stuff
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    // animation stuff
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    // whether or not to hide
    int hide;
    // extra util stuff
    int direction;
    int attacking;
    int attackTimer;
} PLAYER;

typedef struct {
    // screen stuff
    int worldRow;
    int worldCol;
    // we are using rdel and cdel to determine offset from player
    int rdel;
    int cdel;
    int width;
    int height;
    // animation stuff
    int aniCounter;
    int curFrame;
    int numFrames;
    // whether or not to hide
    int hide;
    // extra util stuff
    int direction;
    int attacking;
    int attackTimer;
} SLASH;

typedef struct {
    int worldRow;
    int worldCol;
    int size;
    int number;
    int active;
} BIGPELLET;

// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 512
#define GRAVITY 1
#define JUMPVEL -5

#define ATTACK_DURATION 30
#define ATTACK_SPEED 8


// Variables
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern PLAYER player;
extern SLASH slash;

extern int lives;
extern int pauseVar;
extern int level;

// Prototypes
void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void drawFont();
void drawPellets();
int groundCheck();
// enemies
void updateEnemies();
void drawEnemies();
void animateEnemies();
