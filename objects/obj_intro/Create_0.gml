depth = -99;
image_index = 0;
image_speed = 0;

var text_start="{skippable false}{speed 2.7}{voice 1}{sleep 10}";
if (image_index > 0) {
	text[0]=text_start+"Давным-давно{sleep 25} две расы&правили Землёй:{sleep 5}&ЛЮДИ и МОНСТРЫ."
	text[1]=text_start+"Но однажды{sleep 15} между ними&вспыхнула война."
	text[2]=text_start+"После продолжительной&битвы{sleep 20} людям удалось&одежрать победу."
	text[3]=text_start+"И с помощью волшебного &заклятия они заключили&монстров под землю."
	text[4]=text_start+"Много лет спустя.{sleep 30}.{sleep 30}."
	text[5]=text_start+"ГОРА ЭББОТ&   201X"
	text[6]=text_start+"Легенды гласят,{sleep 5} что те,{sleep 15}&кто взбираются на гору,{sleep 5}&больше не возвращаются."
}
else {
	text[0]=text_start+"Long ago,{sleep 25} two races&ruled over Earth:{sleep 5}&HUMANS and MONSTERS.";
	text[1]=text_start+"One day,{sleep 15} war broke&out between the two&races.";
	text[2]=text_start+"After a long battle,{sleep 20}&the humans were&victorious.";
	text[3]=text_start+"They sealed the monsters&underground with a magic&spell";
	text[4]=text_start+"Many years later.{sleep 30}.{sleep 45}.";
	text[5]=text_start+"        MT.EBBOT&          201X";
	text[6]=text_start+"Legends say that those&who climb the mountain&never return.";	
}

pressed = false;
timer = 0;
t = noone;

BGM_Play(2, bgm_intro, false, 14.50);
BGM_SetPitch(2, 0.99);
instance_create_depth(0, 0, 0, fader);