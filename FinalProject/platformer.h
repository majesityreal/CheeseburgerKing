
//{{BLOCK(platformer)

//======================================================================
//
//	platformer, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2048 tiles not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 65536 + 4096 = 70144
//
//	Time-stamp: 2021-11-16, 20:42:38
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PLATFORMER_H
#define GRIT_PLATFORMER_H

#define platformerTilesLen 65536
extern const unsigned short platformerTiles[32768];

#define platformerMapLen 4096
extern const unsigned short platformerMap[2048];

#define platformerPalLen 512
extern const unsigned short platformerPal[256];

#endif // GRIT_PLATFORMER_H

//}}BLOCK(platformer)
