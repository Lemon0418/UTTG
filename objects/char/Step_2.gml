depth=-2000-y;

running = crun && Input_IsHeld(INPUT.CANCEL);

var proc = 0;
repeat (4) {
	if(running) move_speed[proc]=run_speed[proc];
	else move_speed[proc]=walk_speed[proc];
	
	proc += 90;
}
