// Bullet spawning interval (frames between spawns)
default_spawn_interval = 30;
spawn_interval = 30; // Adjust as needed for faster/slower spawn rate
spawn_timer = spawn_interval;

//For Knife Spawning
target_width = 20;
target_height = 20;
target_width_restore = 120;
target_height_restore = 120;
if (!variable_global_exists("knife_spawn_angles")) {
	global.knife_spawn_angles = ds_list_create();
}

if(global.fighting_failed_human_boss && global.battle_turn == 0) {
	audio_play_sound(snd_bergentruckung_slowed, 10, false);
	audio_timestamp = 0;
	intro_phase = 0;
	anim_timer = 0;
	toggle_state = 1;
} else {
	if(global.fighting_failed_human_boss) {
		//BOSS BULLET PATTERN TIME - 6 SECONDS
		//alarm[0] = 360;
		alarm[0] = 60; //DEBUGGING REMOVE THIS
	} else {
		//Use Default Time to END Bullet Pattern
		alarm[0] = 240;
	}
}

//FAILED HUMAN MONSTER SOUL AND SPRITES
if(global.fighting_failed_human_boss) {
	if(global.resilience_pattern == 0) {
		//Move Monster Soul on top of failed human boss
		oMonsterSoul.x = 327;
		oMonsterSoul.y = 150;
		
		//Make Monster Soul Visible
		oMonsterSoul.image_alpha = 1;
		
		//Failed Human Holds Hands
		oFailedHuman.image_index = 0;
	} else {
		//WE ARE ON THE LAST BULLET PATTERN
		//Hide Monster Soul
		oMonsterSoul.image_alpha = 0;
		
		//Failed Human Head Down
		oFailedHuman.image_index = 8;
	}
}

//Check for special boss battle bypass
if(global.bypass_battle_menu) {
	global.monster_bullet_pattern = 99;
	alarm[0] = false;
	
	//Check if we return to battle menu after bypassing
	if(global.return_to_battle_menu) {
		global.bypass_battle_menu = false;
	}
}

//Check for special boss battle bypass
if(global.dialogue_only_bullet_pattern) {
	global.monster_bullet_pattern = 100;
	alarm[0] = false;
	
	//Disable Soul Shooting
	global.soulCanShoot = false; 
	
	//Hide Monster Soul
	oMonsterSoul.image_alpha = 0;
	
	//Check if we return to battle menu after bypassing
	if(global.return_to_battle_menu) {
		global.bypass_battle_menu = false;
	}
}

// Bullet pattern (choose pattern by setting this variable)
pattern = global.monster_bullet_pattern; // 0 = Straight line, 1 = Circle, 2 = Random

// Other properties for bullets
bullet_speed = 2;
bullet_damage = 0; //ADJUST DAMAGE HERE FOR ALL BULLET PATTERNS GLOBALLY

//Flag for playing sequences
sequence_is_playing = false;

//Draw Black Rectangles around battle box
hide_outside_box = false;
outside_hidden = false;

//Failed human - Determination Bullet Pattern
left_thorns = false;
right_thorns = false;

//Failed Human - Resilience Pattern
