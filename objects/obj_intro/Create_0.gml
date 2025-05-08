depth = -99;
image_index = 0;
image_speed = 0;

var text_start="{skippable false}{speed 2.7}{voice 1}{sleep 10}";
if (global.language == 1) {
	text[0]=text_start+"Давным-давно{sleep 25} &две расы правили Землёй...{sleep 5}&ЛЮДИ и МОНСТРЫ."
	text[1]=text_start+"Хотя, мне кажется все &уже знают эту историю"
	text[2]=text_start+"       Гора эббот&          2XXX."
	text[3]=text_start+"Про гору ходят легенды.{sleep 30}.{sleep 30}."
	text[4]=text_start+"Что все кто поднимались&на гору Никогда с нее &не возвращались"
	text[5]=text_start+"Но я не верю в эти сказки."
	text[6]=text_start+"Брат поймет&что я не трусиха..."
	text[7]=text_start+"А если вдруг что то &пойдет не так..."
	text[8]=text_start+""
	text[9]=text_start+""
	text[10]=text_start+""
}
else if (global.language == 2) {
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

var pitch = random_range(0.98, 1.05);
caster_play(mus_intro, 1, pitch);
instance_create_depth(0, 0, 0, fader);