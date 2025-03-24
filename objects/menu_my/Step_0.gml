if(_menu==0){
	if(_mode==0){
		if(Input_IsPressed(INPUT.DOWN)){
			if(_choice<1){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice>0){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				_menu=1;
				event_user(0);
			}else{
				room_goto(room_settings);
			}
		}
	}else{
		if(Input_IsPressed(INPUT.LEFT)){
			if(_choice==1){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.RIGHT)){
			if(_choice==0){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			if(_choice!=2){
				_choice=2;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice==2){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				_menu = 1;
				event_user(0);
				event_user(2);
			}else if(_choice==1){
				_menu=3;
				var z=Storage_GetInfoGeneral();
				_naming_name=global.player_name;
				_confirm_title=Lang_GetString("menu.confirm.title.reset");
				event_user(0);
			}else if(_choice==2) {
				room_goto(room_settings);
			}
		}
	}
}else if(_menu==1) {
		if(Input_IsPressed(INPUT.DOWN)) {
			_choise_save++;
			if(_choise_save > 3) _choise_save=0;
			event_user(2);
		}
		else if(Input_IsPressed(INPUT.UP)){
			_choise_save--;
			if(_choise_save < 0) _choise_save=3;
			event_user(2);
		}
		else if (Input_IsPressed(INPUT.CONFIRM)) {
			UTTG_scr_load(_choise_save);
			global.save_slot = _choise_save;
			var roomName="--__--";
			var roomIndex=global.current_room;
			room_goto(roomIndex);
			audio_stop_sound(mus_menu0);
			if(!room_exists(roomIndex)) roomIndex=-1;
			if(room_exists(roomIndex)) room_goto(roomIndex);
		}
		else if (Input_IsPressed(INPUT.CANCEL)) {
			_menu = 0;
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