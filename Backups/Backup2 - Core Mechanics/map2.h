
//{{BLOCK(map2)

//======================================================================
//
//	map2, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 42 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 1344 + 4096 = 5952
//
//	Time-stamp: 2021-11-17, 01:45:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP2_H
#define GRIT_MAP2_H

#define map2TilesLen 1344
extern const unsigned short map2Tiles[672];

#define map2MapLen 4096
extern const unsigned short map2Map[2048];

#define map2PalLen 512
extern const unsigned short map2Pal[256];

#endif // GRIT_MAP2_H

//}}BLOCK(map2)
