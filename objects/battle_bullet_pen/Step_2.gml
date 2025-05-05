/// @description Collision
//half the width of the tail
sined=abs(sin((length_covered-max_room_length)/60/converge_speed))*5*tail_width*image_xscale/2

//collision detection
if place_meeting(x,y,battle_soul) || (length_covered>max_room_length ? (collision_line(xstart,ystart,x,y,battle_soul,true,true)||collision_line(xstart+lengthdir_x(sined,angle+90),ystart+lengthdir_y(sined,angle+90),x+lengthdir_x(sined,angle+90),y+lengthdir_y(sined,angle+90),battle_soul,true,true)||collision_line(xstart+lengthdir_x(sined,angle-90),ystart+lengthdir_y(sined,angle-90),x+lengthdir_x(sined,angle-90),y+lengthdir_y(sined,angle-90),battle_soul,true,true)) : false){
	moved=(battle_soul.x!=battle_soul.xprevious)||(battle_soul.y!=battle_soul.yprevious)
	if (image_blend==c_aqua && moved) || (image_blend==c_orange && !moved) || (image_blend!=c_aqua||image_blend!=c_orange)
		Battle_CallSoulEventBulletCollision();
}