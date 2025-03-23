if (unfade) {
	alpha -= 0.03 * fade_speed;
	alarm[1] = fade_speed;
	if (alpha <= 0) instance_destroy();
}