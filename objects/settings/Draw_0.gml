draw_set_color(c_white);
draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
draw_text(96, 18, "SETTINGS");

draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));

if (_mybutton == 0) draw_set_color(c_yellow);
draw_text(20, 44, "EXIT");
draw_set_color(c_white);

if (_mybutton == 1) draw_set_color(c_yellow);
draw_text(20, 74, "LANGUAGE  ENGLISH");
draw_set_color(c_white);

if (_mybutton == 2) draw_set_color(c_yellow);
var text = "BORDER    ";

switch (_bordertype) {
	case 0: text = "NO BORDERS";
	break;
	case 1: text += "Simple";
	break;
	case 2: text += "Fancy"
	break;
	case 3: text += "Sepia";
	break;
	case 4: text += "Dynamic";
	break;
}
draw_text(20, 104, text);
draw_set_color(c_white);