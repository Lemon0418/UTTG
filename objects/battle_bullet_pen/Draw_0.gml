//important variables
length_covered=sqrt(sqr(x-xstart)+sqr(y-ystart)); image_angle=angle-90; hspeed=lengthdir_x(tspeed,angle); vspeed=lengthdir_y(tspeed,angle);

//draws the pen
draw_self();

//destroys the bullet after the tail line converges
if length_covered>max_room_length && sin((length_covered-max_room_length)/60/converge_speed)<=0 {instance_destroy();};

//draws the tail line
draw_line_width_color(xstart,ystart,x,y,(length_covered>max_room_length ? abs(sin((length_covered-max_room_length)/60/converge_speed))*10*tail_width : 2)*image_xscale/2,image_blend,image_blend);


//this shows the hitboxes in red
//if length_covered>max_room_length {draw_set_color(c_red) draw_line(xstart,ystart,x,y);draw_line(xstart+lengthdir_x(sined,angle+90),ystart+lengthdir_y(sined,angle+90),x+lengthdir_x(sined,angle+90),y+lengthdir_y(sined,angle+90));draw_line(xstart+lengthdir_x(sined,angle-90),ystart+lengthdir_y(sined,angle-90),x+lengthdir_x(sined,angle-90),y+lengthdir_y(sined,angle-90));draw_set_color(c_white)}