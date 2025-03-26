var x1, y1, x2, y2, w, h;

x1 = 32 + 296 * (_id % 2 == 1 ? 1 : 0);
y1 = 146 + 132 * (_id > 1 ? 1 : 0);
x2 = 320  + 296 * (_id % 2 == 1 ? 1 : 0);
y2 = 256 + 132 * (_id > 1 ? 1 : 0);

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

draw_set_color(_color);
draw_set_font(fnt_maintext);
draw_text(x1+114, y1+20, _name);
draw_text(x1+176, y1+20, get_translate(global.translate_grid, "save.lvl") + " " + string(_level));
draw_text(x1+114, y1+48, _room);

draw_sprite_ext(spr_saveicon, 0, x1+4, y1+4, 1, 1, 0, _color, 1);

if (_time > 0) {
	var minute=floor(_time/60);
	var second=_time%60;
	draw_text(x1+220, y1+20, $"{minute<100 ? " " : ""}{minute<10 ? " " : ""}{string(minute)}:{second<10 ? "0" : ""}{second}");
	
	if (_edit) {
		draw_set_color(c_white);
		if (_choice_edit == 0) draw_set_color(c_red);
		draw_text(x1+114, y1+72, "RESET");
		
		draw_set_color(c_white);
		if (_choice_edit == 1) draw_set_color(c_yellow);
		draw_text(x1+178, y1+72, "RETURN");
	}
	else {
		draw_set_color(c_grey);
		draw_text(x1+114, y1+72, "Press C to EDIT");
	}
}
else {
	draw_text(x1+220, y1+20, " --:--");
}





