if(place_meeting(x, y, obj_player) && !instance_exists(oSoulFlash)) {
	var inst = instance_create_depth(obj_player.x - 5, obj_player.y + 5, -99999, oSoulFlash);
	global.battle_trigger_object = self;
	
	//Check if we should bypass the battle menu
	if(bypass_battle_menu) {
		global.bypass_battle_menu = true;
	}
	
	//Check if we should hide the battle menu
	if(hide_battle_menu) {
		global.hide_battle_menu = true;
	}
	
	//Check if we should return to the battle menu after bypassing
	if(return_to_battle_menu) {
		global.return_to_battle_menu = true;
	}
	
	array_push(global.overworld_battle_triggers_defeated, battle_id);
}

if(array_contains(global.overworld_battle_triggers_defeated, battle_id)) {
	instance_destroy();
}