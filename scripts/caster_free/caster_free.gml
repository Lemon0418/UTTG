function caster_free(argument0) {
	if(argument0 != -3) audio_stop_sound(argument0);
	else  audio_stop_all();
	audio_stop_sound(argument0);
}