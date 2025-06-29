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
  text[8]=text_start+"..то хотя бы я смогу &убедится что эта легенда &не правда."
  text[9]=text_start+"Я докажу всем, что &случилось на самом деле."
  text[10]=text_start+"..я всем докажу. &Что произошло, на горе Эботт."
}
else if (global.language == 2) {
text[0]=text_start+"A long time ago{sleep 25} &two races ruled the Earth...{sleep 5}&HUMANS and MONSTERS."
text[1]=text_start+"Although, it seems to me &that everyone already knows &this story"
text[2]=text_start+"       Mount Ebott&          2XXX."
text[3]=text_start+"There are legends &about the mountain.{sleep 30}.{sleep 30}."
text[4]=text_start+"That everyone who climbed &the mountain Never &came back"
text[5]=text_start+"But I don't &believe in these tales."
text[6]=text_start+"My brother will understand &that I'm not a coward..."
text[7]=text_start+"And if suddenly something &goes wrong..."
text[8]=text_start+"..then at least I'll be able to &make sure that this legend &isn't true."
text[9]=text_start+"I'll prove to everyone what &really happened."
text[10]=text_start+"..I'll prove to everyone. &What happened, on Mount Ebott."
}

pressed = false;
timer = 0;
t = noone;

var pitch = random_range(0.98, 1.05);
caster_play(mus_intro, 1, pitch);
instance_create_depth(0, 0, 0, fader);