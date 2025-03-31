function UTWS_GAMESTART() {
	global.save_slot = 0;
	
	global.player_name = get_translate(global.translate_grid, "player.name");
	global.current_room = room;
	global.time = 0;
	
	global.xp = 0;
	global.next_xp = 10;
	global.lv = 1;
	global.hp = 20;
	global.max_hp = 20;
	
	global.weapon = 47;
	global.armor = 46;
	var index = 0;
	while (index < 8) {
		global.item[index] = 0;
		index++;
	}
	
	index = 0;
	while (index < 512) {
		global.flag[index] = 0;
		index++;
	}
	
	ini_open("settings.ini")
		global.enabled_dynamic_border = ini_read_real("BORDER", "EnableDynamic", false);
		global.border = ini_read_real("BORDER", "BorderType", 0);
		
		global.language = ini_read_real("SETTINGS", "Language", 2);
	ini_close();
	
	if (global.border == 0) border._enabled = false;
	if (global.border == 2) border._enable_fancy_border = true;
	
	switch (global.border) {
		case 1: Border_SetSprite(spr_border_simple) break;
		case 2: Border_SetSprite(noone) break;
		case 3: Border_SetSprite(spr_border_intro) break;
		case 4: Border_SetSprite(spr_border_simple) break;
		case 5: Border_SetSprite(spr_border_ruins) break;
	}
}