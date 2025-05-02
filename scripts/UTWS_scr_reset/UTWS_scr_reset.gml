function UTWS_scr_reset() {
	var index = 0;
	
	var save_name = "";
	if (argument0 == 0) save_name = "eggy0.ini";
	if (argument0 == 1) save_name = "eggy1.ini";
	if (argument0 == 2) save_name = "eggy2.ini";
	if (argument0 == 3) save_name = "eggy3.ini";
	
	global.current_room = room_area1;
	var time_prev = global.time;
	global.time = 0;
	
	index = 0;
	while(index < 7) {
		global.item[index] = 0;
		index++;
	}
		
	global.weapon = 47;
	global.armor = 46;
		
	index = 0;
	while(index < 512) {
		global.flag[index] = 0;
		index++;
	}
		
	global.lv = 90
	global.xp = 0;
	global.gold = 0;
	global.kills = 0;
	
	UTWS_levelup();
	
	UTWS_scr_save(argument0);
	
	global.time = time_prev;
}