var x1, y1, x2, y2, w, h;
x1 = 108;
y1 = 118;
x2 = 532;
y2 = 292;
w = x2 - x1;
h = y2 - y1;

if(_state==0||_state==1){
	var _border_color = c_white;
	if (_state == 1) _border_color = make_color_rgb(255,221,51);
	
	draw_sprite_ext(spr_pixel,0,x1,y1,w,4,0,_border_color,1);
	draw_sprite_ext(spr_pixel,0,x1,y1+4,w,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,x1,y1-2,w,2,0,c_black,1);
    
	draw_sprite_ext(spr_pixel,0,x1,y2-4,w,4,0,_border_color,1);
	draw_sprite_ext(spr_pixel,0,x1,y2-4+4,w,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,x1,y2-4-2,w,2,0,c_black,1);
    
	draw_sprite_ext(spr_pixel,0,x1,y1,4,h,0,_border_color,1);
	draw_sprite_ext(spr_pixel,0,x1+4,y1+4,2,h-8,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,x1-2,y1-2,2,h+4,0,c_black,1);
    
    draw_sprite_ext(spr_pixel,0,x2-4,y1,4,h,0,_border_color,1);
    draw_sprite_ext(spr_pixel,0,x2-4-2,y1+4,2,h-8,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,x2,y1-2,2,h+4,0,c_black,1);

	draw_sprite_ext(spr_pixel,0,x1+6,y1+6,w-6*2,h-6*2,0,c_black,0.7);
}

if(_state==0){
  if(_choice==0){
    draw_sprite(spr_battle_soul_red,0,x1+6+37,y1+6+131);
  }else{
    draw_sprite(spr_battle_soul_red,0,x1+6+217,y1+6+131);
  }
}

/*
if(_state==0||_state==1){
	draw_sprite_ext(spr_pixel,0,108,118,424,174,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,108+6,118+6,424-6*2,174-6*2,0,c_black,1);
}

if(_state==0){
	if(_choice==0){
		draw_sprite(spr_battle_soul_red,0,108+6+37,118+6+131);
	}else{
		draw_sprite(spr_battle_soul_red,0,108+6+217,118+6+131);
	}
}

