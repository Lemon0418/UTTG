depth=DEPTH_UI.PANEL;

if(instance_exists(char_player)){
	_top=(char_player.y-camera.y>130+char_player.sprite_height);
	char_player._moveable_menu=false;
}else{
	_top=false;
}

_menu=0;
_choice=0;
_choice_item=0;
_choice_item_operate=0;
_choice_phone=0;

_prefix="{shadow false}{scale 2}{font 1}{instant true}{gui true}{depth "+string(DEPTH_UI.TEXT)+"}";
_inst_name=noone;
_inst_menu=noone;
_inst_item=noone;
_inst_item_use=noone;
_inst_item_info=noone;
_inst_item_drop=noone;
_inst_stat_0=noone;
_inst_stat_1=noone;
//_inst_phone=noone;

_inst_name=instance_create_depth(32+6+8,52+6+(_top ? 270 : 0)+2,0,text_typer);
_inst_name.text=_prefix+get_translate(global.translate_grid,"player.name");

_inst_menu=instance_create_depth(32+6+46,168+6+14,0,text_typer);

var hasItem=Item_GetInventoryItems().GetCount() > 0;
var hasPhone=Item_GetInventoryPhones().GetCount() > 0;
hasPhone = false
_inst_menu.text=_prefix+"{space_y 2}"+(!hasItem ? "{color_text `gray`}" : "")+get_translate(global.translate_grid, "menu.item")+(!hasItem ? "{color_text `white`}" : "")+"&"+get_translate(global.translate_grid, "menu.stat");

audio_play_sound(snd_menu_switch,0,false);
_color=c_white;
_id = 0;
selection_max = 3;