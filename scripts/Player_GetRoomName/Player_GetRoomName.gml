///@arg room
function Player_GetRoomName() {
	var ROOM=argument[0];

	var name="";

	switch(ROOM){
		case -1:
			name="--";
			break;
			case room_ruins1:
			name="ruins entrace";
			break;
	}
	return name;


}
