if keyboard_check_pressed(vk_up) mybutton--;
else if keyboard_check_pressed(vk_down) mybutton++;

if mybutton > buttoncount mybutton = buttoncount;
else if mybutton < 0 mybutton = 0;

if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) {
	if mybutton = 0 room_goto(room_menu);
}
