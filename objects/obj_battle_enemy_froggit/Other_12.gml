var _random=irandom(3);
if(turn>0)switch(_random){
case 0:
		Battle_SetDialog("* Froggit hops to and froggit.");
		break;
case 1:
		Battle_SetDialog("* Froggit idly jumps about.");
		break;
case 2:
		Battle_SetDialog("* Froggit bounces about,&  wondering about the meaning of&  life.");
		break;
case 3:
		Battle_SetDialog("* Froggit's mind is all over the&  place.");
		break;
}
if Battle_GetMenu() == BATTLE_MENU.FIGHT_TARGET{
	var inst=instance_create_depth(0,0,0,battle_menu_fight_hp_bar);
	inst.enemy_slot=_enemy_slot;
	inst.hp_max=_hp_max;
	inst.hp=_hp;
}