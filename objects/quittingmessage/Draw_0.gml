var scale;
if instance_exists(world) {
    scale = display_get_width() / 2560;
    if (world._quit > 0) 
		draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, image_alpha);
    else instance_destroy();
}
else instance_destroy();
	
if (image_alpha < 0.99)
    image_alpha += 0.03;