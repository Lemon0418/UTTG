function UTTG_scr_save(argument0) {
	var index;
	
	var save_name = "";
	if (argument0 == 0) save_name = "eggy0.ini";
	if (argument0 == 1) save_name = "eggy1.ini";
	if (argument0 == 2) save_name = "eggy2.ini";
	if (argument0 == 3) save_name = "eggy3.ini";
	
	ini_open(save_name);
		ini_write_real("EGGY", "room", global.current_room);
		ini_write_real("EGGY", "time", global.time);
		
		index = 0;
		while(index < 7) {
			ini_write_real("EGGY", "item"+string(index), global.item[index]);
			index++;
		}
		
		ini_write_real("EGGY", "weapon", global.weapon);
		ini_write_real("EGGY", "armor", global.armor);
		
		index = 0;
		while(index < 512) {
			ini_write_real("FLAG", "flag"+string(index), global.flag[index]);
			index++;
		}
		// room
		// time
		// name
		// inventory
		// flag
		// xp
	ini_close();
}