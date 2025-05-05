///@arg x
///@arg y
///@arg direction
///@arg speed
///@arg colour*
///@arg tail_width*
///@arg scale*
///@arg tail_convergance_speed*

function create_pen(){
	var _x=argument[0];
	var _y=argument[1];
	var _dir=argument[2];
	var _speed=argument[3];
	var _colour=(argument_count>4 ? argument[4] : c_white);
	var _width=(argument_count>5 ? argument[5] : 1);
	var _scale=(argument_count>6 ? argument[6] : 1)*2;
	var _cspeed=(argument_count>7 ? argument[7] : 1);
	
	var inst=instance_create_depth(_x-lengthdir_x(84,_dir),_y-lengthdir_y(84,_dir),0,battle_bullet_pen);
	inst.angle=_dir;
	inst.tspeed=_speed;
	inst.image_blend=_colour;
	inst.tail_width=_width; inst.converge_speed=_cspeed;
	inst.image_xscale=_scale; inst.image_yscale=_scale;
	
	return inst
}