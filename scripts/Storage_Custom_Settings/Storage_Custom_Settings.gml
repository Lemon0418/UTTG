// settings data is globally available and is not bound on save slot.
function Storage_Custom_Settings(storages) {
	var s=new Storage(Storage_MakeGetFilePathFunc(false,"settings.json"));
	storages.Register("settings", s);
	
	s.Register("general",new StorageZoneStruct());
}

function Storage_GetSettings() {
	return Storage_GetManager().Get("settings");
}

function Storage_SaveSettings() {
	var sStatic=Storage_GetStatic();
	var sInfo=Storage_GetInfo();
	
	var zStatic=Storage_GetStaticGeneral();
	var zInfo=Storage_GetInfoGeneral();
	var roomName=room_get_name(room);
	zStatic.Set(FLAG_STATIC_ROOM,roomName);
	zInfo.Set(FLAG_INFO_LV,Player_GetLv());
	zInfo.Set(FLAG_INFO_NAME,Player_GetName());
	zInfo.Set(FLAG_INFO_TIME,zStatic.Get(FLAG_STATIC_TIME,0));
	zInfo.Set(FLAG_INFO_ROOM,roomName);
	
	sStatic.SaveToFile();
	sInfo.SaveToFile();
}