///@arg item_choice
///@arg call_event*
function Battle_SetMenuChoiceItem() {
	/*var SLOT=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}

	if(SLOT<Item_GetNumber()){
		battle._menu_choice_item=SLOT;
		while(SLOT>=battle._menu_choice_item_first+3){
			battle._menu_choice_item_first+=1;
		}
		while(SLOT<battle._menu_choice_item_first){
			battle._menu_choice_item_first-=1;
		}
	
		//更新文字
		var text="";
		var proc=battle._menu_choice_item_first;
		repeat(3){
			if(Item_IsValid(Item_Get(proc))){
				text+="* "+Item_GetName(Item_Get(proc))+"&";
				proc+=1;
			}
		}
		Battle_SetDialog(text,true);
				
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}*/
	var items
	var SLOT=argument[0];
    var CALL=true;
    if(argument_count>=2){
        CALL=argument[1];
    }
    if(SLOT<Item_GetInventoryItems()){	
        battle._menu_choice_item=SLOT;
        while(SLOT>=battle._menu_choice_item_first+4){
            battle._menu_choice_item_first+=4;
        }
        while(SLOT<battle._menu_choice_item_first){
            battle._menu_choice_item_first-=4;
        }
    
        //更新文字 СУКА ЕБУЧИЙ КИТАЙСКИЙ
        var text="";
        var text2="";
        var proc=battle._menu_choice_item_first;
        repeat(2)
        {
            if(Item_IsValid(Item_Get(proc))){
                text+=Item_GetName(Item_Get(proc),true)+"&";
                proc+=1;
                text2+=Item_GetName(Item_Get(proc),true)+"&";
                proc+=1;
            }
        }
        Battle_SetDialog(text,true);
        Battle_SetDialog(text2,true,true);
                
        if(CALL){
            Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
        }
    
        return true;
    }else{
        return false;
    }

}
