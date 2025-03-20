if (keyboard_check_pressed(vk_up) && _mybutton < 0) _mybutton--;
else if (keyboard_check_pressed(vk_down) && _mybutton > _buttoncount) _mybutton++;

if (Input_IsPressed(INPUT.CONFIRM)) {
	if (_mybutton == 0) room_goto(room_menu);
	if (_mybutton == 2) _border_enabled = !_border_enabled;
}