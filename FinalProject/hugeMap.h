
//{{BLOCK(hugeMap)

//======================================================================
//
//	hugeMap, 2048x256@4, 
//	+ palette 256 entries, not compressed
//	+ 35 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 256x32 
//	Total size: 512 + 1120 + 16384 = 18016
//
//	Time-stamp: 2021-12-02, 22:10:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HUGEMAP_H
#define GRIT_HUGEMAP_H

#define hugeMapTilesLen 1120
extern const unsigned short hugeMapTiles[560];

#define hugeMapMapLen 16384
extern const unsigned short hugeMapMap[8192];

#define hugeMapPalLen 512
extern const unsigned short hugeMapPal[256];

#endif // GRIT_HUGEMAP_H

//}}BLOCK(hugeMap)
