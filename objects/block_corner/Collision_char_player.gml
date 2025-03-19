
var obj = id;
with(char_player){
	var xspd = x - xprevious;
	var yspd = y - yprevious;
	
	if (xspd != 0 && yspd != 0) {
		x = xprevious;
		y = yprevious;
	}
	else if (xspd == 0 && yspd != 0) x += move_speed[DIR.RIGHT] * sign(obj.image_xscale);
	else if (xspd != 0 && yspd == 0) y += move_speed[DIR.UP] * sign(obj.image_yscale);
}