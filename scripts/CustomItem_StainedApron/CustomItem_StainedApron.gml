function CustomItem_StainedApron() : ItemTypeSimple("stained_apron") constructor{
	function OnUse(inventory,index) {
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_STAINED_APRON);

		Player_SetDefItem(11);

		audio_play_sound(snd_item_equip,0,false);
	}
}