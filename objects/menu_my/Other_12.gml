///@desc Update Menu 0 Text Color
if (_menu == 0) {
if(_mode==0){
	_change_inst=_inst_begin;
	_change_color=(_choice==0 ? c_yellow : c_white);
	event_user(1);
	_change_inst=_inst_settings;
	_change_color=(_choice==1 ? c_yellow : c_white);
	event_user(1);
}else{
	_inst_continue.override_color_text=(_choice==0 ? c_yellow : c_white);
	_inst_reset.override_color_text=(_choice==1 ? c_yellow : c_white);
	_inst_settings.override_color_text=(_choice==2 ? c_yellow : c_white);
}
}
else if (_menu == 1) {
	var i = 0;
	while (i < 4) {
		_inst_save_name[i]._color=(_choise_save==i ? c_yellow : c_white);
		i++;
	}
}