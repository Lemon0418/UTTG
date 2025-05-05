function dusteffect_init()
{
	__dusteffect = undefined;
}

function dusteffect_clean()
{
	if __dusteffect
	{
		__dusteffect.free();
		__dusteffect = undefined;
	}
}

function dusteffect_start( _duration, _sprite_index = sprite_index, _image_index = image_index, _depth = depth - 1 )
{
	if (!sprite_exists(_sprite_index))
		return;
		
	if (__dusteffect)
		__dusteffect.free();
		
	__dusteffect = new DustEffectData( _duration, _sprite_index, _image_index, _depth );
}

function dusteffect_step( _x = x, _y = y, _xscale = image_xscale, _yscale = image_yscale )
{
	if __dusteffect
		__dusteffect.step( _x, _y, _xscale, _yscale )
}

function dusteffect_is_on()
{
	return !is_undefined(__dusteffect);
}

function dusteffect_draw( _x = x, _y = y, _xscale = image_xscale, _yscale = image_yscale )
{
	if __dusteffect
		__dusteffect.draw( _x, _y, _xscale, _yscale );
}

function DustEffectData( _duration, _sprite, _image, _depth  ) constructor
{
	static step = function( _x, _y, _xscale, _yscale, _delta_time = 1 )
	{
		if finished
			exit;
		
		var time_prev = time;
		time += _delta_time;
		
		var lines_prev = get_lines_hidden( time_prev );
		var lines_new = get_lines_hidden( time );
		
		if (lines_new > lines_prev)
		{
			buffer_seek( buffer, buffer_seek_start, width * lines_prev * 4 );
			
			for( var yy = lines_prev; yy < lines_new; yy++ )
			{
				for( var xx = 0; xx < width; xx++ )
				{
					var r = buffer_read( buffer, buffer_u8 );
					var g = buffer_read( buffer, buffer_u8 );
					var b = buffer_read( buffer, buffer_u8 );
					var a = buffer_read( buffer, buffer_u8 );
					if (a <= 0)
						continue;
						
					var clr = make_color_rgb( r, g, b );
					part_type_color1( pt, clr )
					part_type_alpha2( pt, a, 0 )
					
					var world_x = _x + ( xx - xorigin) * _xscale;
					var world_y = _y + ( yy - yorigin) * _yscale;
					
					part_particles_create( ps, world_x, world_y, pt, 1 );
				}
			}
		}
		
		finished = time >= duration && part_particles_count(ps) == 0;
	}
	
	static draw = function( _x, _y, _xscale, _yscale )
	{
		if finished
			exit;
			
		var lines_hidden = get_lines_hidden();
		
		if (lines_hidden >= height)
			return;
		
		draw_sprite_part_ext( 
			sprite, 
			image, 
			trim_left, 
			trim_top + lines_hidden, 
			width, 
			height - lines_hidden, 
			_x - xorigin * _xscale, 
			_y - yorigin * _yscale + lines_hidden * _yscale, 
			_xscale, 
			_yscale, 
			c_white, 
			1 
		);
	}
	
	static free = function()
	{
		if buffer != undefined
		{
			buffer_delete(buffer)
			buffer = undefined;
		}
		
		part_system_destroy(ps)
		part_type_destroy(pt)
	}
	
	static get_lines_hidden = function( _time = time )
	{
		return min( height, ceil(lines_per_tick * _time) );
	}

	var uvs = sprite_get_uvs( _sprite, _image );
	width = sprite_get_width( _sprite ) * uvs[6];
	height = sprite_get_height( _sprite ) * uvs[7];
	
	var srf = surface_create( width, height );
	
	trim_left = uvs[4];
	trim_top = uvs[5];

	var xoff = sprite_get_xoffset( _sprite ) - trim_left;
	var yoff = sprite_get_yoffset( _sprite ) - trim_top;
	
	var filter = gpu_get_tex_filter();
	gpu_set_tex_filter(false);
	
	surface_set_target( srf );

		draw_clear_alpha( c_black, 0 );
		draw_sprite_ext( _sprite, _image, xoff, yoff, 1, 1, 0, c_white, 1 )	
	
	surface_reset_target();
	
	gpu_set_tex_filter(filter);
	
	buffer = buffer_create(4*width*height, buffer_fast, 1);
	buffer_get_surface(buffer, srf, 0);
	
	surface_free(srf)

	sprite = _sprite;
	image = _image;
	xorigin = xoff;
	yorigin = yoff;
	time = 0;
	duration = _duration;
	lines_per_tick = height / duration;
	
	ps = part_system_create();
	part_system_depth( ps, _depth );
	
	pt = part_type_create();
	part_type_sprite( pt, spr_pixel, false, false, false )
	part_type_life( pt, 10, 20 )
	part_type_direction( pt, 90, 90, 0, 15 )
	part_type_alpha2( pt, 1, 0 )
	part_type_speed( pt, 0.5, 1, 0, 0 );
	
	finished = false;
}