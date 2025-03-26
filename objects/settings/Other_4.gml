if (!global.enabled_dynamic_border) {
	_bordertype = global.border;
	_border_enabled = (_bordertype != 0);
}
else _bordertype = 4;

caster_loop(mus_settings, 1, 1);