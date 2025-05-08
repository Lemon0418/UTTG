timer++;
if (Input_IsPressed(INPUT.CONFIRM) && pressed = false) {
	pressed = true;
	fader.color = c_black;
	Fader_Fade(0,1,40,0);
	timer--;
	caster_set_volume(mus_intro, 0, 0.5);
	with (text_typer) instance_destroy();
	alarm[3]=60;
}
//event_user(0);
{
	if (timer == 350){
		alarm[0]=1;
	}
	else if (timer == 380){
		if (image_index == 10) {
			visible = false;
			instance_create_depth(160, 138, -80, obj_intro_last);
			Anim_Create(obj_intro_last, "y", ANIM_TWEEN.LINEAR,ANIM_EASE.IN,obj_intro_last.y, 240, 600, 285);
		}
		else {
			instance_destroy(text_typer);
			timer = 0;
			image_index++;
		}
	}	
	else if (timer == 1 && image_index < 10) {
		if !instance_exists(text_typer) t = instance_create_depth(60, 160, -100,text_typer);
		t.text = text[image_index];
	}
	else if (timer == 1800) {
		fader.color=c_black
		//Fader_Fade(0,1,40,0);
		instance_create_depth(0,0,0, obj_intro_fader);
		obj_intro_fader.fade_speed = 4 / 3;
		obj_intro_fader.unfade = false;
		caster_set_volume(mus_intro, 0, 0.5);
		alarm[3]=60;
	}
}