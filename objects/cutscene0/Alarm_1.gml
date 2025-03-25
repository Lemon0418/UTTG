_phase = 2;
char_player.dir = DIR.LEFT;
Dialog_Add("(* Вход позади вас закрылся)");
Dialog_Add("* Что? Хмм закрылся почему? & Ладно пойду отсюда.");
Dialog_Start();
global.flag[9] = 2;
instance_destroy();