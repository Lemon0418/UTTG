/// @description Insert description here
// You can write your code in this editor
depth=-99;
image_index=0
spd="{skippable false}{speed 2.7}{voice 1}{sleep 10}";
/*if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==1{
	text=spd+"Давным-давно{sleep 25} две расы&правили Землёй:{sleep 5}&ЛЮДИ и МОНСТРЫ."
text1=spd+"Но однажды{sleep 15} между ними&вспыхнула война."
text2=spd+"После продолжительной&битвы{sleep 20} людям удалось&одежрать победу."
text3=spd+"И с помощью волшебного &заклятия они заключили&монстров под землю."
text4=spd+"Много лет спустя.{sleep 30}.{sleep 30}."
text5=spd+"ГОРА ЭББОТ&   201X"
text6=spd+"Легенды гласят,{sleep 5} что те,{sleep 15}&кто взбираются на гору,{sleep 5}&больше не возвращаются."
	

}else*/{
text=spd+"Long ago,{sleep 25} two races&ruled over Earth:{sleep 5}&HUMANS and MONSTERS.";
text1=spd+"One day,{sleep 15} war broke&out between the two&races.";
text2=spd+"After a long battle,{sleep 20}&the humans were&victorious.";
text3=spd+"They sealed the monsters&underground with a magic&spell";
text4=spd+"Many years later.{sleep 30}.{sleep 45}.";
text5=spd+"MT.EBBOT&  201X";
text6=spd+"Legends say that those&who climb the mountain&never return.";	
	
}

pressed=false

timer=0
check=false
t=noone
t1=noone
t2=noone
t3=noone
t4=noone
t5=noone
t6=noone
image_speed=0

BGM_Play(2,bgm_intro,false,14.50);
BGM_SetPitch(2,1.04)
instance_create_depth(x,y,0,fader)