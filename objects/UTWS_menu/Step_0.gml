if(_menu==0){
	if(_mode==0){
		if(Input_IsPressed(INPUT.RIGHT)){
			if(_choice<1){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.LEFT)){
			if(_choice>0){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				_menu=1;
				event_user(0);
				event_user(2);
			}else{
				room_goto(room_settings);
			}
		}
	}else{
		if(Input_IsPressed(INPUT.RIGHT)) {
			if(_choice<1) {
				_choice=1;
				event_user(2);
			}
		}
		else if(Input_IsPressed(INPUT.LEFT)) {
			if(_choice>0) {
				_choice=0;
				event_user(2);
			}
		}
		else if(Input_IsPressed(INPUT.CONFIRM)) {
			if(_choice==0) {
				_menu=1;
				event_user(0);
				event_user(2);
			}
			else if(_choice==1) {
				room_goto(room_settings);
			}
		}
	}
}else if(_menu==1) {
		if(Input_IsPressed(INPUT.DOWN) && _choise_save <= 1) {
			snd_play(snd_menu_switch);
			_choise_save+=2;
			event_user(2);
		}
		
		else if(Input_IsPressed(INPUT.UP) && _choise_save >= 2){
			snd_play(snd_menu_switch);
			_choise_save-=2;
			event_user(2);
		}
		else if(Input_IsPressed(INPUT.RIGHT) && _choise_save % 2 != 1) {
			snd_play(snd_menu_switch);
			_choise_save++;
			event_user(2);
		}
		else if(Input_IsPressed(INPUT.LEFT) && _choise_save % 2 != 0){
			snd_play(snd_menu_switch);
			_choise_save--;
			event_user(2);
		}
		else if (Input_IsPressed(INPUT.CONFIRM)) {
			snd_play(snd_save);
			UTWS_scr_load(_choise_save);
			if (global.time > 0) {
				_menu = 5;
				event_user(0);
				_gotoroom = global.current_room;
			}
			else { 
				_menu = 3;
				event_user(0);
			}
		}
		else if (Input_IsPressed(INPUT.CANCEL)) {
			snd_play(snd_menu_cancel);
			_menu = 0;
			event_user(0);
		}
		else if (Input_IsPressed(INPUT.MENU) && _inst_savebox[_choise_save]._time > 0) {
			snd_play(snd_menu_confirm);
			_menu = 4;
			event_user(0);
		}
}
else if (_menu == 4) {
	if (Input_IsPressed(INPUT.RIGHT)) {
		snd_play(snd_menu_switch);
		_choise_save_edit = 1;
		event_user(2);
	}
	else if (Input_IsPressed(INPUT.LEFT)) {
		snd_play(snd_menu_switch);
		_choise_save_edit = 0;
		event_user(2);
	}
	else if (Input_IsPressed(INPUT.CONFIRM)) {
		if (_choise_save_edit == 0) {
			snd_play(snd_menu_cancel);
			UTWS_scr_reset(_choise_save);
			_inst_savebox[_choise_save]._name = "[EMPTY]";
			_inst_savebox[_choise_save]._level = 0;
			_inst_savebox[_choise_save]._time= 0;
			_inst_savebox[_choise_save]._room = "_________ _";
			_menu = 1;
		}
		else if (_choise_save_edit == 1) {
			snd_play(snd_menu_confirm);
			_menu = 1;
		}
		event_user(0);
	}
	else if (Input_IsPressed(INPUT.CANCEL)) {
		snd_play(snd_menu_cancel);
		_menu = 1;
		event_user(0);
	}
}
else if(_menu==2){
	/*_menu = 3;
	if(Input_IsPressed(INPUT.LEFT)){
		if(_choice_confirm>0){
			_choice_confirm=0;
			event_user(5);
		}
	}else if(Input_IsPressed(INPUT.RIGHT)){
		if(_choice_confirm<1&&_confirm_valid){
			_choice_confirm=1;
			event_user(5);
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		if(_choice_confirm==0){
			_menu=(_mode==0 ? 1 : 0);
			event_user(0);
		}else{
			_menu=3;
			event_user(0);
		}
	}*/
}

if(_menu==2||_menu==3){
	if(_confirm_name_update){
		_confirm_name_offset_x=random_range(-1,1);
		_confirm_name_offset_y=random_range(-1,1);
		_confirm_name_angle=random_range(-1,1);
	}
	_confirm_name_update=!_confirm_name_update;
}