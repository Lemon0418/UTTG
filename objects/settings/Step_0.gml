if (keyboard_check_pressed(vk_up) && _mybutton > 0) _mybutton--;
else if (keyboard_check_pressed(vk_down) && _mybutton < _maxbutton) _mybutton++;

if (Input_IsPressed(INPUT.CONFIRM)) {
	if (_mybutton == 0) room_goto(room_menu);
	if (_mybutton == 1) {
		global.language++;
		if (global.language > _maxlanguages) global.language = 0;
	}
	if (_mybutton == 2) { 
		_bordertype++;
		if (_bordertype > _maxbordertype) _bordertype = 0;
	}
}

if (Input_IsPressed(INPUT.RIGHT)) {
	if (_mybutton == 1) {
		global.language++;
		if (global.language > _maxlanguages) global.language = 0;
	}
	else if (_mybutton == 2) { 
		_bordertype++;
		if (_bordertype > _maxbordertype) _bordertype = 0;
	}
	
}
else if (Input_IsPressed(INPUT.LEFT)) {
	if (_mybutton == 1) {
		global.language--;
		if (global.language < 0) global.language = _maxlanguages;
	}
	else if (_mybutton == 2) { 
		_bordertype--;
		if (_bordertype < 0) _bordertype = _maxbordertype;
	}
}

/*if (keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());
}