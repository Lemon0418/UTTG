///@desc Menu Switch
if(_menu==0) {
	var s=Storage_GetInfo();
	_mode=s.IsFileExists()?1:0;
	if(_mode==0) {
		_inst_instruction=instance_create_depth(140,40,0,text_typer);
		_inst_instruction.text=_prefix+"{color_text `gray_light`} " + get_translate(global.translate_grid, "menu.instruction");
		_inst_begin=instance_create_depth(170,344,0,text_typer);
		_inst_begin.text=_prefix+ get_translate(global.translate_grid, "menu.start");
		_inst_settings=instance_create_depth(170,384,0,text_typer);
		_inst_settings.text=_prefix+get_translate(global.translate_grid, "menu.settings");
		with(text_typer){
			event_user(15);
		}
		event_user(2);
	}else{
		//UTTG_scr_load(0);
		//_inst_name=instance_create_depth(140,124,0,text_typer);
		//_inst_name.text=_prefix+get_translate(global.translate_grid, "player.name");
		//_inst_lv=instance_create_depth(308,124,0,text_typer);
		//_inst_lv.text=_prefix+get_translate(global.translate_grid, "save.lvl")+" " + string(global.lv);
		//_inst_time=instance_create_depth(452,124,0,text_typer);
		//var time=global.time;
		//var minute=floor(time/60);
		//var second=time%60;
		//_inst_time.text=_prefix+$"{minute}:{second<10 ? "0" : ""}{second}";
		//_inst_room=instance_create_depth(140,160,0,text_typer);
		//var roomIndex=global.current_room;
		//if(!room_exists(roomIndex)){
		//	roomIndex=-1;
		//}
		//_inst_room.text=_prefix+Player_GetRoomName(roomIndex);
		
		if (global.language == 1) _inst_continue=instance_create_depth(150,210,0,text_typer);
		else _inst_continue=instance_create_depth(170,210,0,text_typer);
		
		_inst_continue.text=_prefix+get_translate(global.translate_grid, "menu.contunie");
		_inst_continue.override_color_text_enabled=true;
		if (global.language == 1) _inst_reset=instance_create_depth(370,210,0,text_typer);
		else _inst_reset=instance_create_depth(390,210,0,text_typer);
		
		_inst_reset.text=_prefix+get_translate(global.translate_grid, "menu.reset");
		_inst_reset.override_color_text_enabled=true;
		if (global.language == 1) _inst_settings=instance_create_depth(244,250,0,text_typer);
		else _inst_settings=instance_create_depth(264,250,0,text_typer);
		
		_inst_settings.text=_prefix+get_translate(global.translate_grid, "menu.settings");
		_inst_settings.override_color_text_enabled=true;
		event_user(2);
	}
}
else {
	with(_inst_instruction){
		instance_destroy();
	}
	with(_inst_begin){
		instance_destroy();
	}
	with(_inst_settings){
		instance_destroy();
	}
	with(_inst_continue) {
		instance_destroy();
	}
	with(_inst_reset) {
		instance_destroy();
	}
}

if(_menu==1) {
	_inst_save_title = instance_create_depth(20,20,0,text_typer);
	_inst_save_title.text = _prefix+"CHOOSE THE SAVE";
	
	var i = 0;
	while (i < 4) {
		var ini_name = "eggy"+string(i)+".ini";
		UTTG_scr_load(i);
		ini_open(ini_name);
			_inst_save_name[i] = instance_create_depth(120, 64 + i * 32, -99, menu_savebox);
			_inst_save_name[i]._id = i;
			if (global.time > 0) {
				
				_inst_save_name[i]._name = get_translate(global.translate_grid, "player.name");
				_inst_save_name[i]._level = global.lv;
				_inst_save_name[i]._time=global.time;
				var roomIndex=global.current_room;
				_inst_save_name[i]._room = Player_GetRoomName(roomIndex);
			}
			else {
				_inst_save_name[i]._name = "[EMPTY]";
				_inst_save_name[i]._level = 0;
				_inst_save_name[i]._time= 0;
				_inst_save_name[i]._room = "____________";
			}
		ini_close();
		i++;
	}
}
else{
	var i = 0;
	while (i < 4) {
		instance_destroy(_inst_save_name[i]);
		i++;
	}
}

if(_menu==2){
	_menu=3; 
	_inst_confirm_title=instance_create_depth(180,60,0,text_typer);
	_inst_confirm_title.text=_prefix+_confirm_title;
	_inst_confirm_no=instance_create_depth(146,400,0,text_typer);
	_inst_confirm_no.text=_prefix+"No";
	_inst_confirm_yes=instance_create_depth(460,400,0,text_typer);
	_inst_confirm_yes.text=_prefix+"Yes";
	_confirm_name_x=280;
	_confirm_name_y=110;
	_confirm_name_scale=2;
	Anim_Destroy(id,"_confirm_name_x");
	Anim_Destroy(id,"_confirm_name_y");
	Anim_Destroy(id,"_confirm_name_scale");
	Anim_Create(id,"_confirm_name_x",0,0,280,-80,270);
	Anim_Create(id,"_confirm_name_y",0,0,110,120,270);
	Anim_Create(id,"_confirm_name_scale",0,0,2,5,270);
	_choice_confirm=0;
	with(text_typer){
		event_user(15);
	}
	event_user(5);
}else{
	if(instance_exists(_inst_confirm_title)){
		instance_destroy(_inst_confirm_title);
	}
	if(instance_exists(_inst_confirm_no)){
		instance_destroy(_inst_confirm_no);
	}
	if(instance_exists(_inst_confirm_yes)){
		instance_destroy(_inst_confirm_yes);
	}
}

if(_menu==3) {
	fader.color=c_white;
	Fader_Fade(-1,1,290);
	BGM_Play(2, snd_cymbal, false, 0);
	instance_destroy(hint_bgm);
	audio_sound_gain(mus_menu0, 0, 500);
	alarm[0]=320;
}