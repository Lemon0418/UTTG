function scr_textbox(arg0, arg1, arg2, arg3)
{
    _border_alpha = 1;
    textbox_width = arg2 - arg0 - 30;
    
    if (textbox_width < 0)
        textbox_width = 0;
    
    textbox_height = arg3 - arg1 - 30;
    
    if (textbox_height < 0)
        textbox_height = 0;
    
    if (textbox_width > 0)
    {
        draw_set_alpha(_border_alpha);
        draw_sprite_stretched(spr_textbox_side_0, 1, arg0 + 15, arg1 - 3, textbox_width + 1, 15);
        draw_sprite_ext(spr_textbox_side_0, 0, arg0 + 15, arg3 + 3, textbox_width + 1, -1, 0, c_white, 1);
        draw_set_alpha(1);
    }
    
    if (textbox_height > 0)
    {
        draw_sprite_ext(spr_textbox_side_1, 0, arg2 + 3, arg1 + 4, -1, textbox_height + 22, 0, c_white, 1);
        draw_sprite_ext(spr_textbox_side_1, 1, arg0 - 2.1, arg1 + 4, 1, textbox_height + 22, 0, c_white, 1);
        draw_set_alpha(1);
    }
    
    draw_sprite_ext(spr_textbox_corner, 0, arg0, arg1, 1, 1, 0, c_white, 1);
    draw_sprite_ext(spr_textbox_corner, 1, arg2 + 1, arg1, -1, 1, 0, c_white, 1);
    draw_sprite_ext(spr_textbox_corner, 2, arg0, arg3 + 1, 1, -1, 0, c_white, 1);
    draw_sprite_ext(spr_textbox_corner, 3, arg2 + 1, arg3 + 1, -1, -1, 0, c_white, 1);
    draw_set_alpha(1);
}
