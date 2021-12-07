
//{{BLOCK(victoryScreen)

//======================================================================
//
//	victoryScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32768 + 2048 = 35328
//
//	Time-stamp: 2021-12-07, 00:54:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_VICTORYSCREEN_H
#define GRIT_VICTORYSCREEN_H

#define victoryScreenTilesLen 32768
extern const unsigned short victoryScreenTiles[16384];

#define victoryScreenMapLen 2048
extern const unsigned short victoryScreenMap[1024];

#define victoryScreenPalLen 512
extern const unsigned short victoryScreenPal[256];

#endif // GRIT_VICTORYSCREEN_H

//}}BLOCK(victoryScreen)
