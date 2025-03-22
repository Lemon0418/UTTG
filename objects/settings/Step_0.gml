if (keyboard_check_pressed(vk_up) && _mybutton > 0) _mybutton--;
else if (keyboard_check_pressed(vk_down) && _mybutton < _maxbutton) _mybutton++;

if (Input_IsPressed(INPUT.CONFIRM)) {
	if (_mybutton == 0) room_goto(room_menu);
	if (_mybutton == 2) { 
		_bordertype++;
		if (_bordertype > _maxbordertype) _bordertype = 0;
	}
}

/*if (keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());
}