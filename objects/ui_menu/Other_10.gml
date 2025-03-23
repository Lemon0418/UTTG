if(_menu==1){
	if(!instance_exists(_inst_item)){
		_inst_item=instance_create_depth(188+6+38,52+6+22,0,text_typer);
		_inst_item.text=_prefix;
		
		var proc=0;
		var items=Item_GetInventoryItems();
		repeat(items.GetCount()){
			_inst_item.text+=items.GetItemName(proc)+"&";
			proc+=1;
		}
	}
	if(!instance_exists(_inst_item_use)){
		_inst_item_use=instance_create_depth(188+6+38,52+6+302,0,text_typer);
		_inst_item_use.text=_prefix+get_translate(global.translate_grid, "menu.use");
	}
	if(!instance_exists(_inst_item_info)){
		_inst_item_info=instance_create_depth(188+6+134,52+6+302,0,text_typer);
		_inst_item_info.text=_prefix+get_translate(global.translate_grid, "menu.info");
	}
	if(!instance_exists(_inst_item_drop)){
		_inst_item_drop=instance_create_depth(188+6+248,52+6+302,0,text_typer);
		_inst_item_drop.text=_prefix+get_translate(global.translate_grid, "menu.drop");
	}
}else{
	if(_menu!=2){
		if(instance_exists(_inst_item)){
			instance_destroy(_inst_item);
		}
		if(instance_exists(_inst_item_use)){
			instance_destroy(_inst_item_use);
		}
		if(instance_exists(_inst_item_info)){
			instance_destroy(_inst_item_info);
		}
		if(instance_exists(_inst_item_drop)){
			instance_destroy(_inst_item_drop);
		}
	}
}

if(_menu==3){
	if(!instance_exists(_inst_stat_0)){
		_inst_stat_0=instance_create_depth(188+6+22,52+6+24,0,text_typer);
		var name=Player_GetName();
		var lv=Player_GetLv();
		var hp=Player_GetHp();
		var hp_max=Player_GetHpMax();
		var atk=Player_GetAtk();
		var atk_item=Player_GetAtkItem();
		var def=Player_GetDef();
		var def_item=Player_GetDefItem();
		var itemTypeManager=Item_GetTypeManager();
		var weapon=itemTypeManager.GetNameOrFallback(Player_GetItemWeapon());
		var armor=itemTypeManager.GetNameOrFallback(Player_GetItemArmor());
		var gold=Player_GetGold();
		_inst_stat_0.text=_prefix+
		"\""+get_translate(global.translate_grid, "player.name")+"\"&&"+
		get_translate(global.translate_grid, "save.lvl")+" "+string(lv)+"&"+
		get_translate(global.translate_grid, "player.hp")+" "+string(hp)+"/"+string(hp_max)+ "&&"+
		get_translate(global.translate_grid, "menu.atk")+" "+string(atk)+"("+string(atk_item)+")&"+
		get_translate(global.translate_grid, "menu.def")+" "+string(def)+"("+string(def_item)+")&&"+
		get_translate(global.translate_grid, "menu.weapon")+weapon+"&"+
		get_translate(global.translate_grid, "menu.armor")+armor+"&"+
		get_translate(global.translate_grid, "menu.gold")+string(gold);
		//if (gold <= 0) _inst_stat_0.text+=" (БОМЖАРА!)"
	}
	if(!instance_exists(_inst_stat_1)){
		_inst_stat_1=instance_create_depth(188+6+190,52+6+194,0,text_typer);
		var xp=Player_GetExp();
		var lv=Player_GetLv();
		var lv_xp=Player_GetLvExp(lv+1);
		var kills=Player_GetKills();
		_inst_stat_1.text=_prefix+
		get_translate(global.translate_grid, "menu.exp")+string(xp)+"&"+
		get_translate(global.translate_grid, "menu.next_exp")+string(lv_xp)+"&&&&"+
		get_translate(global.translate_grid, "menu.kills")+string(kills);
	}
}else{
	if(instance_exists(_inst_stat_0)){
		instance_destroy(_inst_stat_0);
	}
	if(instance_exists(_inst_stat_1)){
		instance_destroy(_inst_stat_1);
	}
}

/*if(_menu==4){
	if(!instance_exists(_inst_phone)){
		_inst_phone=instance_create_depth(188+6+38,52+6+22,0,text_typer);
		_inst_phone.text=_prefix;
		
		var proc=0;
		var phones=Item_GetInventoryPhones();
		repeat(phones.GetCount()){
			_inst_phone.text+=phones.GetItemName(proc)+"&";
			proc+=1;
		}
	}
}else{
	if(instance_exists(_inst_phone)){
		instance_destroy(_inst_phone);
	}
}*/