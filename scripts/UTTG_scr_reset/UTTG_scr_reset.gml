function UTTG_scr_reset() {
	var index = 0;
	
	global.current_room = room_area1;
	//global.time = ini_read_real("EGGY", "time", 0);
		
	index = 0;
	while(index < 7) {
		global.item[index] = 0;
		index++;
	}
		
	global.weapon = 47;
	global.armor = 46;
		
	index = 0;
	while(index < 512) {
		global.flag[index] = ini_read_real("FLAG", "flag"+index, 0);
		index++;
	}
		
	global.lv = 1;
	global.xp = 0;
	global.gold = 0;
	global.kills = 0;
	
	UTTG_levelup();
}