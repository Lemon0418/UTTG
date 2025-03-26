///@desc Menu Switch

if(_menu==0) {
	_mode=0;
	var i = 0;
	while (i < 4) {
		if (_mode == 1) break;
		ini_open("eggy"+string(i)+".ini");
		var time = ini_read_real("EGGY", "time", 0);
		if (time > 0) _mode = 1;
		i++
	}
	
	if(_mode==0) {
		_inst_instruction=instance_create_depth(144,32,0,text_typer);
		_inst_instruction.text=_prefix+"{color_text `gray_light`} " + get_translate(global.translate_grid, "menu.instruction");
		_inst_begin=instance_create_depth(144,384,0,text_typer);
		_inst_begin.text=_prefix+ get_translate(global.translate_grid, "menu.start");
		_inst_settings=instance_create_depth(352,384,0,text_typer);
		_inst_settings.text=_prefix+get_translate(global.translate_grid, "menu.settings");
		with(text_typer){
			event_user(15);
		}
		event_user(2);
	}else{		
		if (global.language == 1) _inst_continue=instance_create_depth(136,384,0,text_typer);
		else _inst_continue=instance_create_depth(144,384,0,text_typer);
		
		_inst_continue.text=_prefix+get_translate(global.translate_grid, "menu.contunie");
		_inst_continue.override_color_text_enabled=true;

		if (global.language == 1) _inst_settings=instance_create_depth(344,384,0,text_typer);
		else _inst_settings=instance_create_depth(352,384,0,text_typer);
		
		_inst_settings.text=_prefix+get_translate(global.translate_grid, "menu.settings");
		_inst_settings.override_color_text_enabled=true;
		event_user(2);
	}
}
else {
	with(_inst_instruction) {
		instance_destroy();
	}
	with(_inst_begin) {
		instance_destroy();
	}
	with(_inst_settings) {
		instance_destroy();
	}
	with(_inst_continue) {
		instance_destroy();
	}
}

if(_menu==1) {
	if  (!instance_exists(_inst_savebox[0])) {
	_inst_save_title = instance_create_depth(192,100,0,text_typer);
	_inst_save_title.text = _prefix+"CHOOSE THE SAVE";
	
	var i = 0;
	while (i < 4) {
		var ini_name = "eggy"+string(i)+".ini";
		UTTG_scr_load(i);
		ini_open(ini_name);
			_inst_savebox[i] = instance_create_depth(0, 0, -99, UTTG_savebox);
			_inst_savebox[i]._id = i;
			if (global.time > 0) {
				_inst_savebox[i]._name = get_translate(global.translate_grid, "player.name");
				_inst_savebox[i]._level = global.lv;
				_inst_savebox[i]._time = global.time;
				var roomIndex = global.current_room;
				_inst_savebox[i]._room = Player_GetRoomName(roomIndex);
			}
			else {
				_inst_savebox[i]._name = "[EMPTY]";
				_inst_savebox[i]._level = 0;
				_inst_savebox[i]._time= 0;
				_inst_savebox[i]._room = "____________";
			}
		ini_close();
		i++;
	}
	}
}
else{
	if (_menu < 3) { 
		instance_destroy(_inst_save_title);
		with(UTTG_savebox) instance_destroy();
	}
}

if (_menu == 4) {
	_inst_savebox[_choise_save]._edit = true;
} else {
	with (UTTG_savebox) _edit = false;
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

if(_menu==3 || _menu == 5) {
	fader.color=c_white;
	Fader_Fade(-1,1, (_menu == 5 ? 140 : 290));
	if (_menu = 3) snd_play(snd_cymbal);
	//else ;
	caster_set_volume(menusong, 0, 1);
	if (_menu = 3) alarm[0]=320;
	else alarm[1] = 160;
	_menu = 3;
}