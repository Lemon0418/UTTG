event_inherited();

depth=DEPTH_BATTLE.UI_HIGH

angle=0; image_angle=90-angle;

tspeed=7; hspeed=lengthdir_x(tspeed,angle); vspeed=lengthdir_y(tspeed,angle);

image_xscale=2; image_yscale=image_xscale;

image_blend=c_white;

max_room_length=sqrt(sqr(room_width)+sqr(room_height))+sprite_height*image_yscale; converge_speed=1; tail_width=1; length_covered=sqrt(sqr(x-xstart)+sqr(y-ystart));