#define dll_init
dll = "[GM8] sxenextract_dll.dll"

//Main functions.
global.__ExtractSXENContentsToFolder = external_define(dll, "ExtractSXENContentsToFolder", dll_cdecl, ty_real, 2, ty_string, ty_string);
global.__GetSXENInformation = external_define(dll, "GetSXENInformation", dll_cdecl, ty_real, 1, ty_string);

//Use these functions to return values from the above functions.
global.__GetSongName = external_define(dll, "GetSongName", dll_cdecl, ty_string, 0);
global.__GetSongAuthor = external_define(dll, "GetSongAuthor", dll_cdecl, ty_string, 0);
global.__GetSongGenre = external_define(dll, "GetSongGenre", dll_cdecl, ty_string, 0);
global.__GetSongAlbum = external_define(dll, "GetSongAlbum", dll_cdecl, ty_string, 0);
global.__GetSongLength = external_define(dll, "GetSongLength", dll_cdecl, ty_string, 0);
global.__GetSongComment = external_define(dll, "GetSongComment", dll_cdecl, ty_string, 0);
global.__GetSongYear = external_define(dll, "GetSongYear", dll_cdecl, ty_string, 0);

#define SXEN_ExtractSXENContentsToFolder
external_call(global.__ExtractSXENContentsToFolder,argument0,argument1)

#define SXEN_GetSXENInformation
external_call(global.__GetSXENInformation,argument0)

#define SXEN_GetSongName
external_call(global.__GetSongName)

#define SXEN_GetSongAuthor
external_call(global.__GetSongAuthor)

#define SXEN_GetSongGenre
external_call(global.__GetSongGenre)

#define SXEN_GetSongAlbum
external_call(global.__GetSongAlbum)

#define SXEN_GetSongLength
external_call(global.__GetSongLength)

#define SXEN_GetSongComment
external_call(global.__GetSongComment)

#define SXEN_GetSongYear
external_call(global.__GetSongYear)

