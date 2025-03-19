 /// @description Insert description here
// You can write your code in this editor
timer++
if Input_IsPressed(INPUT.CONFIRM) && pressed=false{
	pressed=true
	fader.color=c_black
	Fader_Fade(0,1,40,0)
	timer--
		BGM_SetVolume(2,0,59)
	if instance_exists(text_typer){
	instance_destroy(text_typer)	

	}
	
alarm[3]=60
}
event_user(0)
if check=false{
if timer=350{
	alarm[0]=1
}

if timer=380{
	instance_destroy(text_typer)
	timer=0
	image_index+=1
	
}	
}
if image_index=0{

if timer=1{
	if !instance_exists(text_typer)
t=instance_create_depth(60,150,-2000,text_typer)
t.text=text
	
}
}
else if image_index=1{
if timer=1{
	if !instance_exists(text_typer)
t=instance_create_depth(60,150,-2000,text_typer)
t.text=text1
	
}
}
else if image_index=2{
	if timer=1{
		if !instance_exists(t)
t=instance_create_depth(60,150,-2000,text_typer)
t.text=text2
}

}
else if image_index=3{
	if timer=1{
		if !instance_exists(t)
t=instance_create_depth(60,150,-2000,text_typer)
t.text=text3
}

}
else if image_index=4{
	if timer=1{
		if !instance_exists(t)
t=instance_create_depth(60,150,-2000,text_typer)
t.text=text4
}

}
else if image_index=5{
	if timer=1{
		if !instance_exists(t)
t=instance_create_depth(115,150,-2000,text_typer)
t.text=text5
}

}
else if image_index=6{
	if timer=1{
		if !instance_exists(t)
t=instance_create_depth(60,150,-2000,text_typer)
t.text=text6
}

}

else if image_index=8{
	check=true
	if timer=350{
	alarm[0]=1
}
if timer=380{
visible=false
instance_create_depth(160,138,-1000,obj_intro_last)
Anim_Create(obj_intro_last,"y",ANIM_TWEEN.LINEAR,ANIM_EASE.IN,obj_intro_last.y,240,600,285)
}
if timer=1800{
fader.color=c_black
	Fader_Fade(0,1,40,0)
	BGM_SetVolume(2,0,60)
alarm[3]=60	
}
}


