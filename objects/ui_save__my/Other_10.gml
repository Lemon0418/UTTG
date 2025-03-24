if(_state==0){
	_inst_name=instance_create_depth(108+6+26,118+6+16,0,text_typer);
	_inst_name.text=_prefix+get_translate(global.translate_grid, "player.name");
	
	_inst_lv=instance_create_depth(108+6+180,118+6+16,0,text_typer);
	_inst_lv.text=_prefix+ + get_translate(global.translate_grid, "save.lvl") + " " + string(global.lv);
	
	
	
	ini_open("eggy0.ini");
		var time=global.time;
		var roomIndex=ini_read_real("EGGY", "room", -1);
	ini_close();
		
	var minute=floor(time/60);
	var second=time%60;
	if (!instance_exists(_inst_time)) _inst_time=instance_create_depth(108+6+338,118+6+16,0,text_typer);
	_inst_time.text=_prefix+$"{minute}:{second<10 ? "0" : ""}{second}";
	
	_inst_room=instance_create_depth(108+6+26,118+6+56,0,text_typer);
	
	if(!room_exists(roomIndex)){
		roomIndex=-1;
	}
	_inst_room.text=_prefix+Player_GetRoomName(roomIndex);
	
	_inst_save=instance_create_depth(108+6+56,118+6+116,0,text_typer);
	_inst_save.text=_prefix+get_translate(global.translate_grid, "save.save");
	
	_inst_return=instance_create_depth(108+6+236,118+6+116,0,text_typer);
	_inst_return.text=_prefix+get_translate(global.translate_grid, "save.return");
}
if(_state==1){
	UTTG_scr_save(0);
	
	audio_play_sound(snd_save,0,false);
	
	if(instance_exists(_inst_name)){
		instance_destroy(_inst_name);
	}
	if(instance_exists(_inst_lv)){
		instance_destroy(_inst_lv);
	}
	if(instance_exists(_inst_time)){
		instance_destroy(_inst_time);
	}
	if(instance_exists(_inst_room)){
		instance_destroy(_inst_room);
	}
	if(instance_exists(_inst_save)){
		instance_destroy(_inst_save);
	}
	if(instance_exists(_inst_return)){
		instance_destroy(_inst_return);
	}
	
	_inst_name=instance_create_depth(108+6+26,118+6+16,0,text_typer);
	_inst_name.text=_prefix+"{color `yellow`}"+get_translate(global.translate_grid, "player.name");
	
	_inst_lv=instance_create_depth(108+6+180,118+6+16,0,text_typer);
	_inst_lv.text=_prefix+"{color `yellow`}" + get_translate(global.translate_grid, "save.lvl") + " " + string(global.lv);
	
	var time=global.time;
	var minute=floor(time/60);
	var second=time%60;
	if (!instance_exists(_inst_time)) _inst_time=instance_create_depth(108+6+338,118+6+16,0,text_typer);
	_inst_time.text=_prefix+"{color `yellow`}"+$"{string(minute)}:{second<10 ? "0" : ""}{second}";
	
	_inst_room=instance_create_depth(108+6+26,118+6+56,0,text_typer);
	var roomIndex=global.current_room;
	if(!room_exists(roomIndex)){
		roomIndex=-1;
	}
	
	_inst_room.text=_prefix+"{color `yellow`}"+Player_GetRoomName(roomIndex);
	
	_inst_save=instance_create_depth(108+6+56,118+6+116,0,text_typer);
	_inst_save.text=_prefix+"{color `yellow`}"+get_translate(global.translate_grid, "save.saved");
}