Storage_GetStatic().ClearData();
// что это делает
var sDynamic=Storage_GetDynamic();
sDynamic.ClearData();
sDynamic.LoadFromFile();
Player_CustomInitialData();
_naming_name="EGGY";
Player_SetName(_naming_name);

fader.color=c_black;
Fader_Fade(-1,0,20);
room_goto(room_area1);