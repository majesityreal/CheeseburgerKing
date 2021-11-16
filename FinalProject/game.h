#include "mylib.h"

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int targetX;
    int targetY;
    int direction;
    } GHOST;

typedef struct {
    int worldRow;
    int worldCol;
    int size;
    int number;
    int active;
} BIGPELLET;

// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 256
#define GRAVITY 1
#define JUMPVEL -5


// Variables
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE pacman;

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