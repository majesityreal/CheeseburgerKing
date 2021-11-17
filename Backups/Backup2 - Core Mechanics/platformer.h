
//{{BLOCK(platformer)

//======================================================================
//
//	platformer, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 17 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 544 + 4096 = 5152
//
//	Time-stamp: 2021-11-17, 00:35:30
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PLATFORMER_H
#define GRIT_PLATFORMER_H

#define platformerTilesLen 544
extern const unsigned short platformerTiles[272];

#define platformerMapLen 4096
extern const unsigned short platformerMap[2048];

#define platformerPalLen 512
extern const unsigned short platformerPal[256];

#endif // GRIT_PLATFORMER_H

//}}BLOCK(platformer)
