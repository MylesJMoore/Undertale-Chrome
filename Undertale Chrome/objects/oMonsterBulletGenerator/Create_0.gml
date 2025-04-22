// Bullet spawning interval (frames between spawns)
default_spawn_interval = 30;
spawn_interval = 30; // Adjust as needed for faster/slower spawn rate
spawn_timer = spawn_interval;

if(global.fighting_failed_human_boss && global.battle_turn == 0) {
	audio_play_sound(snd_bergentruckung_slowed, 10, false);
	audio_timestamp = 0;
	intro_phase = 0;
	anim_timer = 0;
	toggle_state = 1;
} else {
	alarm[0] = 240;
}


//Make Monster Soul Visible
oMonsterSoul.image_alpha = 1;

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
bullet_damage = 10;

//Flag for playing sequences
sequence_is_playing = false;

//Draw Black Rectangles around battle box
hide_outside_box = false;
outside_hidden = false;