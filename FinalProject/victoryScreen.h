
//{{BLOCK(victoryScreen)

//======================================================================
//
//	victoryScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 141 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4512 + 2048 = 7072
//
//	Time-stamp: 2021-12-06, 22:26:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_VICTORYSCREEN_H
#define GRIT_VICTORYSCREEN_H

#define victoryScreenTilesLen 4512
extern const unsigned short victoryScreenTiles[2256];

#define victoryScreenMapLen 2048
extern const unsigned short victoryScreenMap[1024];

#define victoryScreenPalLen 512
extern const unsigned short victoryScreenPal[256];

#endif // GRIT_VICTORYSCREEN_H

//}}BLOCK(victoryScreen)
