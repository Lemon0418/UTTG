switch (room) {
	default:
		mus = noone;
	break;
	case room_ruins1:
		mus = mus_ruins;
	break;
	case room_ruins2:
		mus = mus_ruins;
	break;
}

if (mus != mus_previous) event_user(0);