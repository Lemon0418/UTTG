draw_set_color(c_white);
draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
draw_text(96, 18, "SETTINGS");

draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));

if mybutton == 0 draw_set_color(c_yellow);
else draw_set_color(c_white);
draw_text(20, 44, "EXIT");

if mybutton == 1 draw_set_color(c_yellow);
else draw_set_color(c_white);
draw_text(20, 74, "LANGUAGE: ENGLISH");

if mybutton == 2 draw_set_color(c_yellow);
else draw_set_color(c_white);
draw_text(20, 104,"Borders Test");