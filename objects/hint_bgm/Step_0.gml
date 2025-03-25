sound = noone;
soundstop = noone;

switch(room){
	case room_settings:
		soundstop = mus_menu0;
		sound = mus_settings;
	break;
	case room_menu:
		soundstop = [mus_ruins,mus_settings]
		sound = mus_menu0;
	break;
	case room_ruins1:
		soundstop = [mus_menu0,mus_settings,snd_cymbal]
		sound = mus_ruins;
	break;
	case room_area1:
		soundstop = [mus_menu0,mus_settings,snd_cymbal,mus_ruins]
	break;
	case room_area2:
		soundstop = [mus_menu0,mus_settings,snd_cymbal,mus_ruins]
	break;
	case room_credits:
		soundstop = [mus_ruins]
	break;
	case room_pre_sewers:
		soundstop = [mus_ruins]
	break;
	case room_ruins2:
		sound = mus_ruins;
	break;
}

if (sound != noone){
	if (!audio_is_playing(sound)){
		audio_play_sound(sound,0,1);
	}
}
if (soundstop != noone){
	if (is_array(soundstop)){
		for (i = 0; i < array_length(soundstop); i++){
			if (audio_is_playing(soundstop[i])){
				audio_stop_sound(soundstop[i]);
			}
		}
	} else {
		if (audio_is_playing(soundstop)){
			audio_stop_sound(soundstop);
		}
	}
}
