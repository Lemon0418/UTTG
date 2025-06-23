event_inherited();

char_id = 1;

char_index = 1;
UTWS_player_load_character();
/*
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
*/

crun = true;
moveable=true;
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;

grid_size = 16;          
move_speed = 3;          
standup_speed = 0.3;     

// Состояния персонажа
enum player_state {
    IDLE,        
    WALKING,    
    STANDING_UP  
}
state = player_state.IDLE;

// Анимация
standup_frame = 0;
standup_frames_max = 4; 