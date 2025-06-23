depth=-2000-y;
if(Input_IsHeld(INPUT.CANCEL)){
	running = true;	
    move_speed[DIR.UP]=3;
    move_speed[DIR.DOWN]=3;
    move_speed[DIR.LEFT]=3;
    move_speed[DIR.RIGHT]=3;
    res_move_speed[DIR.UP]=1/2;
    res_move_speed[DIR.DOWN]=1/2;
    res_move_speed[DIR.LEFT]=1/2;
    res_move_speed[DIR.RIGHT]=1/2;
}else {
	running = false;	
    move_speed[DIR.UP]=2;
    move_speed[DIR.DOWN]=2;
    move_speed[DIR.LEFT]=2;
    move_speed[DIR.RIGHT]=2;
    res_move_speed[DIR.UP]=1/3;
    res_move_speed[DIR.DOWN]=1/3;
    res_move_speed[DIR.LEFT]=1/3;
    res_move_speed[DIR.RIGHT]=1/3;
}