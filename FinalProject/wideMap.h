
//{{BLOCK(wideMap)

//======================================================================
//
//	wideMap, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 35 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 1120 + 8192 = 9824
//
//	Time-stamp: 2021-12-02, 21:56:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIDEMAP_H
#define GRIT_WIDEMAP_H

#define wideMapTilesLen 1120
extern const unsigned short wideMapTiles[560];

#define wideMapMapLen 8192
extern const unsigned short wideMapMap[4096];

#define wideMapPalLen 512
extern const unsigned short wideMapPal[256];

#endif // GRIT_WIDEMAP_H

//}}BLOCK(wideMap)
