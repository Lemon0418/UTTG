var can_move=(moveable&&_moveable_dialog&&_moveable_menu&&_moveable_save&&_moveable_warp&&_moveable_encounter&&_moveable_box);
if(can_move){
	if(Input_IsHeld(INPUT.UP)){
		move[DIR.UP]=2;
	}else if(Input_IsHeld(INPUT.DOWN)){
		move[DIR.DOWN]=2;
	}
	if(Input_IsHeld(INPUT.LEFT)){
		move[DIR.LEFT]=2;
	}else if(Input_IsHeld(INPUT.RIGHT)){
		move[DIR.RIGHT]=2;
	}
	if(Input_IsPressed(INPUT.CONFIRM)){
		var inst=noone;
		if(dir==DIR.UP) {
			if (char_id == 0) inst=collision_rectangle(x-sprite_width/2+4,y-5,x+sprite_width/2-4,y-sprite_height+5,char,false,true);
			else inst=collision_rectangle(x-10+4,y-5,x+10-4,y-30+5,char,false,true);
		}
		if(dir==DIR.DOWN) {
			if (char_id == 0) inst=collision_rectangle(x-sprite_width/2+4,y-sprite_height+20,x+sprite_width/2-4,y+15,char,false,true);
			else inst=collision_rectangle(x-10+4,y-5,x+10+20,y-30+5,char,false,true);
		}
		if(dir==DIR.LEFT) {
			if (char_id == 0) inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2-15,y,char,false,true);
			else inst=collision_rectangle(x-10,y-30+19,x+10 - 15,y,char,false,true);
		}
		if(dir==DIR.RIGHT) {
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2+15,y,char,false,true);
		}
		if(instance_exists(inst)){
			with(inst) {
				event_user(0);
			}
		}
	}
	if(!instance_exists(ui_dialog)){
		if(Input_IsPressed(INPUT.MENU)){
			instance_create_depth(0,0,0,ui_menu);
		}
	}
}

event_inherited();