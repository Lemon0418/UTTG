Anim_Step();
BGM_Step();

if(_time>=60){
	var z=Storage_GetStaticGeneral();
	var time=z.Get(FLAG_STATIC_TIME,0);
	z.Set(FLAG_STATIC_TIME,time+1);
	_time=0;
	global.time++;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skipped>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skipped=0;
	}else{
		_frame_skipped+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}

if(keyboard_check_pressed(vk_f2)){
	game_restart();
}

if(keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());
}

if (_canquit) {
    if keyboard_check(vk_escape) {
        _quit++;
        if (!instance_exists(quittingmessage)) 
			instance_create_depth(0, 0, -999, quittingmessage);
    }
    else _quit = 0;
}