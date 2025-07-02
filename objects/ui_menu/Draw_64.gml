var xx = 52;
var yy = 52;
draw_sprite_ext(spr_dialoguebox, 0, xx, yy, 1, 0.75, image_angle, image_blend, 0.75);
scr_textbox(xx - 35, yy - 27, 83, 78);
var bbox_yscale = 1.25;
var bbox_yoffset = 70;
var bbox_yscale_multiplier = selection_max - 3;
bbox_yscale += (0.3 * bbox_yscale_multiplier);
bbox_yoffset += (9.6 * bbox_yscale_multiplier);
draw_sprite_ext(spr_dialoguebox, 0, xx, yy + bbox_yoffset, 2, bbox_yscale - 0.1, image_angle, image_blend, 0.75);
scr_textbox(xx - 35, yy + 31, 85, 161);
if(_menu==0){
  draw_sprite(spr_battle_soul_red,0,32+6+27,168+6+31+36*_choice);
}

//ITEM
if(_menu==1||_menu==2){
  
draw_sprite_ext(spr_pixel,0,186,52,238,4,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,186,52-2,238,2,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,186,52+4,238,2,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,188,52+362-4,238,4,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188,52+362,238,2,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188,52+362-4,238,-2,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,188,52,4,362,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188-2,52-2,2,366,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188+4,52+4,2,366-12,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,78+346-4,52,4,362,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,78+346,52-2,2,366,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,78+346-4,52+4,-2,366-12,0,c_black,1);
  
var x1, y1, x2, y2, w, h;
  
x1 = 433 + 297 * (_id % 2 == 1 ? 1 : 0);
y1 = 52 + 132 * (_id > 1 ? 1 : 0);
x2 = 542  + 296 * (_id % 2 == 1 ? 1 : 0);
y2 = 156 + 132 * (_id > 1 ? 1 : 0);

w = x2 - x1;
h = y2 - y1;

draw_sprite_ext(spr_pixel,0,x1,y1,w,4,0,_color,1);
draw_sprite_ext(spr_pixel,0,x1,y1+4,w,2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x1,y1-2,w,2,0,c_black,1);
    
draw_sprite_ext(spr_pixel,0,x1,y2-4,w,4,0,_color,1);
draw_sprite_ext(spr_pixel,0,x1,y2-4+4,w,2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x1,y2-4-2,w,2,0,c_black,1);

draw_sprite_ext(spr_pixel,0,x1,y1,4,h,0,_color,1);
draw_sprite_ext(spr_pixel,0,x1+4,y1+4,2,h-8,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x1-2,y1-2,2,h+4,0,c_black,1);

draw_sprite_ext(spr_pixel,0,x2-4,y1,4,h,0,_color,1);
draw_sprite_ext(spr_pixel,0,x2-4-2,y1+4,2,h-8,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x2,y1-2,2,h+4,0,c_black,1);

x1 = 433 + 297 * (_id % 3 == 1 ? 1 : 0);
y1 = 52 + 132 * (_id > 1 ? 1 : 0);
x2 = 542  + 296 * (_id % 3 == 1 ? 1 : 0);
y2 = 156 + 132 * (_id > 1 ? 1 : 0);

w = x2 - x1;
h = y2 - y1;

draw_sprite_ext(spr_pixel,0,x1,y1,w,4,0,_color,1);
draw_sprite_ext(spr_pixel,0,x1,y1+4,w,2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x1,y1-2,w,2,0,c_black,1);
    
draw_sprite_ext(spr_pixel,0,x1,y2-4,w,4,0,_color,1);
draw_sprite_ext(spr_pixel,0,x1,y2-4+4,w,2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x1,y2-4-2,w,2,0,c_black,1);

draw_sprite_ext(spr_pixel,0,x1,y1,4,h,0,_color,1);
draw_sprite_ext(spr_pixel,0,x1+4,y1+4,2,h-8,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x1-2,y1-2,2,h+4,0,c_black,1);

draw_sprite_ext(spr_pixel,0,x2-4,y1,4,h,0,_color,1);
draw_sprite_ext(spr_pixel,0,x2-4-2,y1+4,2,h-8,0,c_black,1);
draw_sprite_ext(spr_pixel,0,x2,y1-2,2,h+4,0,c_black,1);


  draw_sprite_ext(spr_pixel,0,x1+6,y1+6,w-6*2,h-6*2,0,c_black,0.7);
  draw_sprite_ext(spr_pixel,0,188+6,52+6,238-6*2,362-6*2,0,c_black,0.75);
  
	{
		var proc=0;
		while(proc<8){
				draw_sprite_ext(spr_pixel,0,198,121+32*proc,208,1,0,c_red,1);
				proc+=1
			}
		}
    }

if(_menu==1){
  draw_sprite(spr_battle_soul_red,0,188+6+23,52+6+39+32*_choice_item);
}

if(_menu==2){
  var X=0;
  switch(_choice_item_operate){
    case 0:
      X=23;
      break;
    case 1:
      X=119;
      break;
  }
  draw_sprite(spr_battle_soul_red,0,188+6+X,52+6+319);
}


/*draw_sprite_ext(spr_pixel,0, 32, 52+(_top ? 270 : 0), 142, 110, 0, c_white, 1);
draw_sprite_ext(spr_pixel,0, 32+6, 52+6+(_top ? 270 : 0), 142-6*2, 110-6*2, 0, c_black, 1);

draw_sprite_ext(spr_pixel,0, 32, 168, 142, 128, 0, c_white, 1);
draw_sprite_ext(spr_pixel,0, 32+6, 168+6, 142-6*2, 128-6*2, 0, c_black, 1);

draw_set_font(font_crypt_of_tomorrow);
draw_set_color(c_white);
draw_text_ext_transformed(32+6+8,52+(_top ? 270 : 0)+6+42,"LV  "+string(Player_GetLv())+"\nHP  "+string(Player_GetHp())+"/"+string(Player_GetHpMax())+"\nG   "+string(Player_GetGold()),9,-1,2,2,0);

if(_menu==0) {
	draw_sprite(spr_battle_soul_red,0,32+6+27,168+6+31+36*_choice);
}

//ITEM
if(_menu==1||_menu==2) {
	draw_sprite_ext(spr_pixel,0,188,52,346,362,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,188+6,52+6,346-6*2,362-6*2,0,c_black,1);
}

if(_menu==1) {
	draw_sprite(spr_battle_soul_red,0,188+6+23,52+6+39+32*_choice_item);
}

if(_menu==2){
	var X=0;
	switch(_choice_item_operate){
		case 0:
			X=23;
			break;
		case 1:
			X=119;
			break;
		case 2:
			X=233;
			break;
	}
	draw_sprite(spr_battle_soul_red,0,188+6+X,52+6+319);
}

*/

//STAT
if(_menu==3){
draw_sprite_ext(spr_pixel,0,188,52,346,4,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188,52-2,346,2,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188,52+4,346,2,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,188,52+418-4,346,4,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188,52+418,346,2,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188,52+418-6,346,2,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,188,52,4,418,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188-2,52-2,2,418+4,0,c_black,1);  
  draw_sprite_ext(spr_pixel,0,188+4,52+4,2,418-8,0,c_black,1); 
  
draw_sprite_ext(spr_pixel,0,188+346-4,52,4,418,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188+346,52-2,2,418+4,0,c_black,1);  
  draw_sprite_ext(spr_pixel,0,188+346-6,52+4,2,418-8,0,c_black,1);
  
  draw_sprite_ext(spr_pixel,0,188+6,52+6,346-6*2,418-6*2,0,c_black,0.75);
}


//PHONE
/*
if(_menu==4){
	draw_sprite_ext(spr_pixel,0,188,52,346,270,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,188+6,52+6,346-6*2,270-6*2,0,c_black,1);
	draw_sprite(spr_battle_soul_red,0,188+6+23,52+6+39+32*_choice_phone);
}/**/