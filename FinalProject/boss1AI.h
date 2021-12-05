typedef struct {
    int lives;
    int worldCol;
    int worldRow;
    int eyesOffsetX;
    int eyesOffsetY;
    int state;

    int direction;

    int hide;

    int aniCounter;

} BOSS1;

void initBoss1();
void updateBoss1();
void drawBoss1();
void animateBoss1();

void spawnLettuce();
void spawnBigLettuce();