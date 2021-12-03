
//{{BLOCK(hugeMap)

//======================================================================
//
//	hugeMap, 2048x256@4, 
//	+ palette 256 entries, not compressed
//	+ 47 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 256x32 
//	Total size: 512 + 1504 + 16384 = 18400
//
//	Time-stamp: 2021-12-03, 15:55:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HUGEMAP_H
#define GRIT_HUGEMAP_H

#define hugeMapTilesLen 1504
extern const unsigned short hugeMapTiles[752];

#define hugeMapMapLen 16384
extern const unsigned short hugeMapMap[8192];

#define hugeMapPalLen 512
extern const unsigned short hugeMapPal[256];

#endif // GRIT_HUGEMAP_H

//}}BLOCK(hugeMap)
