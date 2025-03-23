draw_sprite_ext(spr_pixel,0,32,52+(_top ? 272 : 0),142,6,0,c_white,1);
draw_sprite_ext(spr_pixel,0,30,52+(_top ? 270 : 0),146,2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,32,52+6+(_top ? 270 : 0),142,2,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,32,52+106+(_top ? 270 : 0),142,4,0,c_white,1);
draw_sprite_ext(spr_pixel,0,32,52+106+(_top ? 270 : 0),142,-2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,30,52+106+6+(_top ? 270 : 0),146,-2,0,c_black,1);
 
draw_sprite_ext(spr_pixel,0,32,54+(_top ? 270 : 0),4,108,0,c_white,1);
draw_sprite_ext(spr_pixel,0,32-2,54+(_top ? 270 : 0),2,108,0,c_black,1);
draw_sprite_ext(spr_pixel,0,32+4,58+(_top ? 270 : 0),2,100,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,32+142,54+(_top ? 270 : 0),-4,108,0,c_white,1);
draw_sprite_ext(spr_pixel,0,32+142+2,54+(_top ? 270 : 0),-2,108,0,c_black,1);
draw_sprite_ext(spr_pixel,0,32+142-4,58+(_top ? 270 : 0),-2,100,0,c_black,1);
   
draw_sprite_ext(spr_pixel,0, 32+6, 52+6+(_top ? 270 : 0), 142-6*2, 110-6*2,0,c_black,0.75);

draw_sprite_ext(spr_pixel,0,32,168,142,4,0,c_white,1);
draw_sprite_ext(spr_pixel,0,32,168-2,142,2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,32,168+4,142,2,0,c_black,1);

draw_sprite_ext(spr_pixel,0,32,/**/142+148,142,4,0,c_white,1);
draw_sprite_ext(spr_pixel,0,32,/**/144+144,142,2,0,c_black,1);
draw_sprite_ext(spr_pixel,0,32,/**/142+152,142,2,0,c_black,1);
 
draw_sprite_ext(spr_pixel,0,32,168,4,/**/124,0,c_white,1);
draw_sprite_ext(spr_pixel,0,32-2,168-2,2,/**/130,0,c_black,1);
draw_sprite_ext(spr_pixel,0,32+4,168+4,2,/**/118,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,32+138,168,4,/**/124,0,c_white,1);
draw_sprite_ext(spr_pixel,0,32+138+4,168-2,2,/**/130,0,c_black,1);
draw_sprite_ext(spr_pixel,0,32+138-2,168+4,2,/**/118,0,c_black,1);
draw_sprite_ext(spr_pixel,0, 32+6, 168+6, 142-6*2, 128-6*2/**/, 0, c_black,0.75);
/* а где это окно котрое менять надо короче я хз где что менять
вопрос в том где здэс само окно */
draw_set_font(fnt_small);
draw_set_color(c_white);
if (global.language == 2) draw_text_ext_transformed(32+6+8,52+(_top ? 270 : 0)+6+42,"LV  "+string(Player_GetLv())+"\nHP  "+string(Player_GetHp())+"/"+string(Player_GetHpMax())+"\nG   "+string(Player_GetGold()),9,-1,2,2,0);
else if (global.language == 1) draw_text_ext_transformed(32+6+8,52+(_top ? 270 : 0)+6+42,"УР  "+string(Player_GetLv())+"\nОЗ  "+string(Player_GetHp())+"/"+string(Player_GetHpMax())+"\nМ   "+string(Player_GetGold()),9,-1,2,2,0);

if(_menu==0){
  draw_sprite(spr_battle_soul_red,0,32+6+27,168+6+31+36*_choice);
}

//ITEM
if(_menu==1||_menu==2){
  
draw_sprite_ext(spr_pixel,0,188,52,346,4,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188,52-2,346,2,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188,52+4,346,2,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,188,52+362-4,346,4,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188,52+362,346,2,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188,52+362-4,346,-2,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,188,52,4,362,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188-2,52-2,2,366,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188+4,52+4,2,366-12,0,c_black,1);
  
draw_sprite_ext(spr_pixel,0,188+346-4,52,4,362,0,c_white,1);
 draw_sprite_ext(spr_pixel,0,188+346,52-2,2,366,0,c_black,1);
  draw_sprite_ext(spr_pixel,0,188+346-4,52+4,-2,366-12,0,c_black,1);
  
  draw_sprite_ext(spr_pixel,0,188+6,52+6,346-6*2,362-6*2,0,c_black,0.75);
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
    case 2:
      X=233;
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
}