///@desc Menu End

if(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())==_enemy_slot){

	switch(Battle_GetMenuChoiceButton()){
		case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
			//Check: is the enemy supposed to be dead?
			if(_hp<=0){
				//Create particle effect
				var inst=instance_create_depth(x,y,0,battle_death_particle);
				inst.sprite=sprite_index;
				audio_play_sound(snd_vaporize,0,false);
				instance_destroy();
				Battle_RewardExp(8);
				Battle_RewardGold(8);
				Player_SetKills(Player_GetKills()+1);
			}
			break;
		
		case BATTLE_MENU_CHOICE_BUTTON.ACT:
			switch(Battle_GetMenuChoiceAction()){
				case 0:
					Dialog_Add("* Sign - AT 0 DF 0{sleep 10}&* It's a sign for&  sure.");
					break;
				case 1:
					Dialog_Add("* You read the sign.{pause}&* It's just a scribble.");
					Battle_SetEnemySpareable(_enemy_slot, true);
					break;
				case 2:
					Dialog_Add("* Froggit is positively&  spooked.");
					break;
			}
			break;
		
		case BATTLE_MENU_CHOICE_BUTTON.MERCY:
			switch(Battle_GetMenuChoiceMercy()){
				case 0:
				if (Battle_IsEnemySpareable(_enemy_slot)) {
				    // Store the current sprite before creating the spared instance
					var current_sprite = sprite_index;
					
					var num_particles = 12;  // Number of particles in the circle
					var radius = 20;         // Distance from the enemy's center
					var vertical_offset = -50;

					for (var i = 0; i < num_particles; i++) {
					    var angle = i * (360 / num_particles);  // Calculate angle for each particle

					    // Calculate position offsets based on angle and radius
					    var x_offset = x + lengthdir_x(radius, angle); 
					    var y_offset = y + lengthdir_y(radius, angle) + vertical_offset;

					    // Create each particle instance at the calculated position
					    var particle = instance_create_layer(x_offset, y_offset, "Particles", obj_spare_particle);
    
					    // Set the direction to match the outward angle
					    particle.direction = angle; 
					}

					// Create the new instance of the spared enemy
					var spared_instance = instance_create_layer(x, y, "Enemies", enemy_spared);
					if (spared_instance != -1) { // Ensure the instance was created successfully
						variable_instance_set(spared_instance, "custom_sprite", current_sprite); // Set custom sprite variable
						spared_instance.sprite_index = current_sprite; // Apply the sprite to spared instance
						spared_instance.image_alpha = 0.5; // Make the spared instance transparent
					}
					
					audio_play_sound(snd_vaporize, 1, false);

					// Destroy the original enemy instance
					instance_destroy();

					// Modify this if you want a bigger reward on Pacifist.
					Battle_RewardGold(3);
				}
				
			}
			break;
	}
}
