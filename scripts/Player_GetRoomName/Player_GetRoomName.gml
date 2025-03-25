///@arg room
function Player_GetRoomName() {
	var ROOM=argument[0];

	var name="";

	switch(ROOM){
		case -1:
			name="____________";
			break;
		case room_ruins1:
			name = get_translate(global.translate_grid, "save.roomname0");
			break;
		case room_ruins2:
			name = room_get_name(room_ruins2);
			break;
		case room_pre_sewers:
			name = room_get_name(room_pre_sewers);
			break;
	}
	return name;


}
