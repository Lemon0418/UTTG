///@arg room
function Player_GetRoomName() {
	var ROOM=argument[0];

	var name="";

	switch(ROOM){
		case -1:
			name="--";
			break;
		case room_ruins1:
			name = get_translate(global.translate_grid, "save.roomname0");
			break;
		case room_pre_sewers:
			name = "pohuy";
			break;
	}
	return name;


}
