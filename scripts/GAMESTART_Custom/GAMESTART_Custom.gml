function GAMESTART_Custom() {
	ini_open("settings.ini")
		global.enabled_dynamic_border = ini_read_real("BORDER", "EnableDynamic", false);
		global.border = ini_read_real("BORDER", "BorderType", 0);
		
		global.language = ini_read_real("SETTINGS", "Language", 0);
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