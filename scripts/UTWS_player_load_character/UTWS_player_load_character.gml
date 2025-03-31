function UTWS_player_load_character(){
	var index = char_index;
	switch(index) {
		default:
			res_idle_sprite[DIR.UP]=spr_char_template;
			res_idle_sprite[DIR.DOWN]=spr_char_template;
			res_idle_sprite[DIR.LEFT]=spr_char_template;
			res_idle_sprite[DIR.RIGHT]=spr_char_template;

			res_move_sprite[DIR.UP]=spr_char_template;
			res_move_sprite[DIR.DOWN]=spr_char_template;
			res_move_sprite[DIR.LEFT]=spr_char_template;
			res_move_sprite[DIR.RIGHT]=spr_char_template;

			res_run_sprite[DIR.UP]=spr_char_template;
			res_run_sprite[DIR.DOWN]=spr_char_template;
			res_run_sprite[DIR.LEFT]=spr_char_template;
			res_run_sprite[DIR.RIGHT]=spr_char_template;
		break;
		case 0:
		//frisk
			res_idle_sprite[DIR.UP]=spr_char_frisk_up;
			res_idle_sprite[DIR.DOWN]=spr_char_frisk_down;
			res_idle_sprite[DIR.LEFT]=spr_char_frisk_left;
			res_idle_sprite[DIR.RIGHT]=spr_char_frisk_right;

			res_move_sprite[DIR.UP]=spr_char_frisk_up;
			res_move_sprite[DIR.DOWN]=spr_char_frisk_down;
			res_move_sprite[DIR.LEFT]=spr_char_frisk_left;
			res_move_sprite[DIR.RIGHT]=spr_char_frisk_right;

			res_run_sprite[DIR.UP]=spr_char_frisk_up;
			res_run_sprite[DIR.DOWN]=spr_char_frisk_down;
			res_run_sprite[DIR.LEFT]=spr_char_frisk_left;
			res_run_sprite[DIR.RIGHT]=spr_char_frisk_right;
		break;
		case 1:
		//eggy
			res_idle_sprite[DIR.UP]=spr_char_eggy_up;
			res_idle_sprite[DIR.DOWN]=spr_char_eggy_down;
			res_idle_sprite[DIR.LEFT]=spr_char_eggy_left;
			res_idle_sprite[DIR.RIGHT]=spr_char_eggy_right;

			res_move_sprite[DIR.UP]=spr_char_eggy_up;
			res_move_sprite[DIR.DOWN]=spr_char_eggy_down;
			res_move_sprite[DIR.LEFT]=spr_char_eggy_left;
			res_move_sprite[DIR.RIGHT]=spr_char_eggy_right;

			res_run_sprite[DIR.UP]=spr_char_eggy_run_up;
			res_run_sprite[DIR.DOWN]=spr_char_eggy_run_down;
			res_run_sprite[DIR.LEFT]=spr_char_eggy_run_left;
			res_run_sprite[DIR.RIGHT]=spr_char_eggy_run_right;
		break;
	}
}