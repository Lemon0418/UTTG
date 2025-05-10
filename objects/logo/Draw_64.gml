if (mode == 1)draw_sprite_ext(spr_logo,0,320,240,2,2,0,c_white,1);
else if (mode == 2)draw_sprite_ext(spr_logo,1,320,240,2,2,0,c_white,1);
if(_hint){
	draw_set_font(fnt_small);
	draw_set_halign(fa_middle);
	draw_set_color(c_gray);
	draw_text_ext_transformed(320,410,get_translate(global.translate_grid, "logo.minitext"),9,-1,2,2,0);
	draw_set_halign(fa_left);
}