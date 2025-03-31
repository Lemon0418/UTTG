function UTWS_scr_load(){
	var index = 0;
	
	var save_name = "";
	if (argument0 == 0) save_name = "eggy0.ini";
	if (argument0 == 1) save_name = "eggy1.ini";
	if (argument0 == 2) save_name = "eggy2.ini";
	if (argument0 == 3) save_name = "eggy3.ini";
	
	ini_open(save_name);
		global.current_room = ini_read_real("EGGY", "room", real(room_area1));
		global.time = ini_read_real("EGGY", "time", 0);
		
		index = 0;
		while(index < 7) {
			global.item[index] = ini_read_real("EGGY", "item"+string(index), 0);
			index++;
		}
		
		global.weapon = ini_read_real("EGGY", "weapon", 47);
		global.armor = ini_read_real("EGGY", "armor", 46);
		
		index = 0;
		while(index < 512) {
			global.flag[index] = ini_read_real("FLAG", "flag"+string(index), 0);
			index++;
		}
		
		global.xp = ini_read_real("EGGY", "xp", 0);
		global.gold = ini_read_real("EGGY", "gold", 0);
		global.kills = ini_read_real("EGGY", "kills", 0);
	ini_close();
	
	UTWS_levelup();
}