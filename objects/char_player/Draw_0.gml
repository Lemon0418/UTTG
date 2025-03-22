draw_set_color(c_blue);
draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, false);

draw_self();

/* 
// проверка нажатия на z
if(keyboard_check(vk_enter)) { 
	draw_set_color(c_red);
	if(dir==DIR.UP){
		//inst=collision_rectangle(x-10+4,y-5,x+10-4,y-30+5,char,false,true); 
		draw_rectangle(x-10+4, y-5, x+10-4, y-30+5, true);
	}
	if(dir==DIR.DOWN){
		//inst=collision_rectangle(x-10+4,y-5,x+10+20,y-30+5,char,false,true);
		draw_rectangle(x-10+4, y-5, x+10-4, y+20-5, true);
	}
	if(dir==DIR.LEFT){
		//inst=collision_rectangle(x-10,y-30+19,x+10 - 15,y,char,false,true);
		draw_rectangle(x+10, y-30+19, x-10-15, y, true);
	}
	if(dir==DIR.RIGHT){
		draw_rectangle(x-10, y-30+19, x+10+15, y, true);
	}
}