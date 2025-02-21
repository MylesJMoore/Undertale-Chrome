if(global.bubble_dialogue_is_done_typing) {
	//Reset Flag
	global.bubble_dialogue_is_done_typing = false;
	
	//Check if this is a dialogue only bullet pattern, Reset Alarm
	if(global.dialogue_only_bullet_pattern) {
		oMonsterBulletGenerator.alarm[0] = 60;
	}
	instance_destroy();
}