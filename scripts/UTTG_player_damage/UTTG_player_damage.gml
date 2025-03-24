function UTTG_player_damage(){
	global.hp -= argument0;
	if (global.hp < 0) global.hp = 0;
}