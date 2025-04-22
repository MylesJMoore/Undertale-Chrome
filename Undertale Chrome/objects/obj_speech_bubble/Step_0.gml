if(global.bubble_dialogue_is_done_typing) {
	//Reset Flag
	global.bubble_dialogue_is_done_typing = false;
	
	//Check if this is a dialogue only bullet pattern, Reset Alarm
	if(global.dialogue_only_bullet_pattern) {
		if(global.fighting_failed_human_boss && global.battle_turn == 0) {
			//DONT RESET ALARM, HANDLING THIS IN oMonsterBulletGenerator for the first boss turn
		} else {
			//Do the normal reset
			oMonsterBulletGenerator.alarm[0] = 60;
		}
	}
	instance_destroy();
}