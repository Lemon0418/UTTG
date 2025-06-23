event_inherited();


char_id=100;


idle_sprite = [spr_char_goren_up_walk,spr_char_goren_down_walk,spr_char_goren_left_walk,spr_char_goren_right_walk]
move_sprite = [spr_char_goren_up_walk,spr_char_goren_down_walk,spr_char_goren_left_walk,spr_char_goren_right_walk]
run_sprite = [spr_char_goren_up_walk,spr_char_goren_down_walk,spr_char_goren_left_walk,spr_char_goren_right_walk]


res_idle_sprite[DIR.UP]=idle_sprite[0];
res_idle_sprite[DIR.DOWN]=idle_sprite[1];
res_idle_sprite[DIR.LEFT]=idle_sprite[2];
res_idle_sprite[DIR.RIGHT]=idle_sprite[3];
res_move_sprite[DIR.UP]=move_sprite[0];
res_move_sprite[DIR.DOWN]=move_sprite[1];
res_move_sprite[DIR.LEFT]=move_sprite[2];
res_move_sprite[DIR.RIGHT]=move_sprite[3];


move_speed[DIR.UP]=1.5;
move_speed[DIR.DOWN]=1.5;
move_speed[DIR.LEFT]=1.5;
move_speed[DIR.RIGHT]=1.5;


block_enabled = false
collision = false


run = 0
