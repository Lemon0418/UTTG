if(_top){
    draw_sprite_ext(spr_pixel,0,38,12,566,4,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,38,17,566,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,32,10,578,2,0,c_black,1)
  
	draw_sprite_ext(spr_pixel,0,38,4+152,566,4,0,c_white,1);
    draw_sprite_ext(spr_pixel,0,38,2+152,566,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,32,8+152,578,2,0,c_black,1);
     
    draw_sprite_ext(spr_pixel,0,34,12,4,148,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,34,12,-2,148,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,38,16,2,140,0,c_black,1);
    
    draw_sprite_ext(spr_pixel,0,30+578,12,-4,148,0,c_white,1);
    draw_sprite_ext(spr_pixel,0,30+578+2,12,-2,148,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,30+578-6,16,2,140,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,38,16,566,140,0,c_black,0.75);
  
        
}else{
	//top
    draw_sprite_ext(spr_pixel,0,32,322,578,4,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,38,326,566,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,32,320,578,2,0,c_black,1);
    //end

	//bottom
	draw_sprite_ext(spr_pixel,0,32,314+152,578,4,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,38,312+152,566,2,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,32,318+152,578,2,0,c_black,1);
    
    //end. right
    
    draw_sprite_ext(spr_pixel,0,32+578,326,-4,140,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,32+578,320,2,152,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,28+578,326,-2,140,0,c_black,1);
    //end
	draw_sprite_ext(spr_pixel,0,38,326,566,140,0,c_black,0.75);
   
	//left
    draw_sprite_ext(spr_pixel,0,34,326,4,140,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,32,320,2,152,0,c_black,1);
    draw_sprite_ext(spr_pixel,0,38,326,2,140,0,c_black,1);
	//end
}


/*
if(_top){
	draw_sprite_ext(spr_pixel,0,32,10,578,152,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,38,16,566,140,0,c_black,1);
}else{
	draw_sprite_ext(spr_pixel,0,32,320,578,152,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,38,326,566,140,0,c_black,1);
}