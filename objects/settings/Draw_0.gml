var text = "";

draw_set_color(c_white);
draw_set_font(fnt_main);
draw_text(96, 10, get_translate(global.translate_grid, "settings.title"));

draw_set_font(fnt_maintext);

if (_mybutton == 0) draw_set_color(c_yellow);
draw_text(20, 44, get_translate(global.translate_grid, "settings.exit"));
draw_set_color(c_white);

if (_mybutton == 1) draw_set_color(c_yellow);
text = get_translate(global.translate_grid, "settings.language_text");
switch(global.language) {
	case 1: text += "РУССКИЙ";
	break;
	case 2: text += "ENGLISH";
	break;
}
draw_text(20, 74, text);
draw_set_color(c_white);

if (_mybutton == 2) draw_set_color(c_yellow);
text = get_translate(global.translate_grid, "settings.border_text");

switch (_bordertype) {
	case 0: text = get_translate(global.translate_grid, "settings.border0")
	break;
	case 1: text += get_translate(global.translate_grid, "settings.border1")
	break;
	case 2: text += get_translate(global.translate_grid, "settings.border2")
	break;
	case 3: text += get_translate(global.translate_grid, "settings.border3")
	break;
	case 4: text += get_translate(global.translate_grid, "settings.border4")
	break;
}
draw_text(20, 104, text);
draw_set_color(c_white);