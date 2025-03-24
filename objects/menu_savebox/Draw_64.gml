var x1, y1, x2, y2, w, h;
x1 = 108;
y1 = 118 + 80 * _id;
x2 = 532;
y2 = 118 + 72 + 80 * _id;
w = x2 - x1;
h = y2 - y1;

var _border_color = _color;
	
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

draw_set_color(_color);
draw_set_font(fnt_maintext);
draw_text(x1+6+26, y1+6+16, _name);
draw_text(x1+6+180, y1+6+16, get_translate(global.translate_grid, "save.lvl") + " " + string(_level));

var minute=floor(_time/60);
var second=_time%60;
draw_text(x1+6+338,y1+6+16, $"{minute}:{second<10 ? "0" : ""}{second}");

draw_text(x1+6+26,y1+6+32, _room);
