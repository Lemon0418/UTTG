function UTTG_player_heal(argument0) {
	global.hp += argument0;
	if (global.hp > global.max_hp) global.hp = global.max_hp;
}