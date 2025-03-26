_menu=0;
_mode=0;

_prefix="{gui true}{instant true}{shadow false}{outline true}{color_outline `black`}{font 1}{scale 2}";
_inst_instruction=noone;
_inst_begin=noone;
_inst_settings=noone;
_inst_name=noone;
_inst_lv=noone;
_inst_time=noone;
_inst_room=noone;
_inst_continue=noone;
_inst_settings=noone;

_inst_save_title=noone;
var i = 0;
while(i < 4) {
	_inst_savebox[i]=noone;
	i++;
}

_inst_confirm_title=noone;
_inst_confirm_yes=noone;
_inst_confirm_no=noone;

_choice=0;
_choise_save = 0;
_choise_save_edit = 0;
_choice_confirm=0;

_confirm_title="";
_confirm_valid=true;
_confirm_name_x=0;
_confirm_name_y=0;
_confirm_name_scale=0;
_confirm_name_offset_x=0;
_confirm_name_offset_y=0;
_confirm_name_angle=0;
_confirm_name_update=true;

_naming_name="EGGY";

_change_inst=noone;
_change_color=c_white;
_change_id=-1;

menusong = mus_menu0;

caster_loop(menusong, 0.6, 1);

event_user(0);