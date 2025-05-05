if(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())==_enemy_slot){

	switch(Battle_GetMenuChoiceButton()){
		case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
			//Check: is the enemy supposed to be dead?
			if(_hp<=0){
				//Create particle effect
				dusteffect_start(100,sprite_index,image_index,depth)
				audio_play_sound(snd_vaporize,0,false);
				Battle_RemoveEnemy(_enemy_slot)
			}
			break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:{
				Dialog_Add("* Poseur - AT 1 DF 1{sleep 10}&* He likes to pose.");
				break;
				}
				case 1:{
				Dialog_Add("* He thinks your dancing is&  incredible!");
				Battle_SetEnemySpareable(_enemy_slot,1)
				spare=1;
				break;
				}
				}
		}
	
}
				
if Battle_GetMenuChoiceButton() = BATTLE_MENU_CHOICE_BUTTON.MERCY{
	if(Battle_GetMenuChoiceButton()==3){
				  if(Battle_GetMenuChoiceMercy()==0){
				    //check if sparable, or just do the code
				    if(spare){
						for (var i = 0; i < 4; ++i) {
						  var dust = instance_create_depth(x-25+i,y-45+i*5,-500,battle_dust)
						dust.direction+=+45+i*45
						dust.speed = irandom_range(3,5)
						}
						for (var i = 0; i < 4; ++i) {
						  var dust = instance_create_depth(x+25+i,y-45+i*5,-500,battle_dust)
						dust.direction+=45-i*45
						dust.speed = irandom_range(3,5)
						}
						color = c_gray
							
						
				     Battle_RemoveEnemy(_enemy_slot)
					 if !audio_is_playing(snd_vaporize)
					   audio_play_sound(snd_vaporize,0,false);
				    }

				}
			}
}

if(_hp<=10){
	Battle_SetEnemySpareable(_enemy_slot,1)
	spare=1
}