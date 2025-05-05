///@desc Init

Battle_SetEnemyName(_enemy_slot,"* Poseur")

Battle_SetEnemyActionNumber(_enemy_slot,1);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check");

Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,1,"* Pose");

Battle_SetEnemyDEF(_enemy_slot,1);

_atk=1;
_hp_max=30;
_hp=30;

if Battle_GetMenu() == BATTLE_MENU.FIGHT_TARGET{
	var inst=instance_create_depth(0,0,0,battle_menu_fight_hp_bar);
	inst.enemy_slot=_enemy_slot;
	inst.hp_max=_hp_max;
	inst.hp=_hp;
}