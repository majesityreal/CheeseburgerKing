
//{{BLOCK(testmap)

//======================================================================
//
//	testmap, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 4096 tiles not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 131072 + 8192 = 139776
//
//	Time-stamp: 2021-11-12, 22:56:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TESTMAP_H
#define GRIT_TESTMAP_H

#define testmapTilesLen 131072
extern const unsigned short testmapTiles[65536];

#define testmapMapLen 8192
extern const unsigned short testmapMap[4096];

#define testmapPalLen 512
extern const unsigned short testmapPal[256];

#endif // GRIT_TESTMAP_H

//}}BLOCK(testmap)
