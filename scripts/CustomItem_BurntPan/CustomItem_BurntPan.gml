function CustomItem_BurntPan() : ItemTypeSimple("burnt_pan") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_BURNT_PAN);

		Player_SetAtkItem(10);

		audio_play_sound(snd_item_equip,0,false);
	}
}