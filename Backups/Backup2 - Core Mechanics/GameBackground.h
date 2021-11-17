
//{{BLOCK(GameBackground)

//======================================================================
//
//	GameBackground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32768 + 2048 = 35328
//
//	Time-stamp: 2021-11-12, 23:47:05
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBACKGROUND_H
#define GRIT_GAMEBACKGROUND_H

#define GameBackgroundTilesLen 32768
extern const unsigned short GameBackgroundTiles[16384];

#define GameBackgroundMapLen 2048
extern const unsigned short GameBackgroundMap[1024];

#define GameBackgroundPalLen 512
extern const unsigned short GameBackgroundPal[256];

#endif // GRIT_GAMEBACKGROUND_H

//}}BLOCK(GameBackground)
