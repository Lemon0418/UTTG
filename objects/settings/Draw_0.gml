draw_set_color(c_white);
draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
draw_text(96, 18, "SETTINGS");

draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));

if (mybutton == 0) draw_set_color(c_yellow);
draw_text(20, 44, "EXIT");
draw_set_color(c_white);

if (mybutton == 1) draw_set_color(c_yellow);
draw_text(20, 74, "LANGUAGE: ENGLISH");
draw_set_color(c_white);

if (mybutton == 2) draw_set_color(c_yellow);
draw_text(20, 104,"Borders: Activated");
draw_set_color(c_white);