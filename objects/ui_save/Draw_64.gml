if(_state==0||_state==1){
  draw_sprite_ext(spr_pixel,0,108,118,424,4,0,c_white,1);
   draw_sprite_ext(spr_pixel,0,108,118+4,424,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,108,118-2,424,2,0,c_black,1);
    
  draw_sprite_ext(spr_pixel,0,108,118+174-4,424,4,0,c_white,1);
   draw_sprite_ext(spr_pixel,0,108,118+174-4+4,424,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,108,118+174-4-2,424,2,0,c_black,1);
    
  draw_sprite_ext(spr_pixel,0,108,118,4,174,0,c_white,1);
   draw_sprite_ext(spr_pixel,0,108+4,118+4,2,174-8,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,108-2,118-2,2,174+4,0,c_black,1);
    
    draw_sprite_ext(spr_pixel,0,108+424-4,118,4,174,0,c_white,1);
     draw_sprite_ext(spr_pixel,0,108+424-4-2,118+4,2,174-8,0,c_black,1);
      draw_sprite_ext(spr_pixel,0,108+424,118-2,2,174+4,0,c_black,1);
  
  
  draw_sprite_ext(spr_pixel,0,108+6,118+6,424-6*2,174-6*2,0,c_black,0.7);
}

if(_state==0){
  if(_choice==0){
    draw_sprite(spr_battle_soul_red,0,108+6+37,118+6+131);
  }else{
    draw_sprite(spr_battle_soul_red,0,108+6+217,118+6+131);
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