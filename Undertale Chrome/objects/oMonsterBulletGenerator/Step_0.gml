// Find the player and follow their X position
if (instance_exists(oMonsterSoul)) {
    x = oMonsterSoul.x; // Set the generator's X position to match the player's X position
}

//Check if Enemy has been defeated
if (global.monster[0].MyHP <= 0) {
	alarm[0] = true;
}

//Turn off shooting before alarm ends (GAME FEEL)
if(alarm[0] == 30) {
	global.soulCanShoot = false;
}

// Countdown to spawn bullets
spawn_timer -= 1;

if (spawn_timer <= 0) {
    // Reset timer
    spawn_timer = spawn_interval;
    
    // Generate bullets based on the selected pattern
    switch (pattern) {
        case 0:
			//Bullets Straight Pattern
            Bullet_Straight();
            break;
        case 1:
			//Bullet Circle Pattern
            Bullet_Circle();
            break;
        case 2:
			//Random Bullets
            Bullet_Random();
            break;
		case 3:
			//Bullet Cross Pattern
            Bullet_Cross();
            break;
		case 4:
			//Random Burst of Bullets
            Bullet_Random_Burst();
            break;
		case 5:
			//Bullet Sequence
			StartSequence();
			break;
		case 6:
			//Random Straight Bullets + Sequence
            Bullet_Random_Bullets_And_Sequence();
			StartSequence();
            break;
		case 7:
			//Random Large Horizontal Bullets 
			HideOutsideBattlebox();
            Bullet_Horizontal_Large_Random();
            break;
		case 8:
			//Random Large Vertical Bullets 
            HideOutsideBattlebox();
            Bullet_Vertical_Large_Random();
            break;
		case 9:
			//Random Large Horizontal Bullets explode to burst
            HideOutsideBattlebox();
            Bullet_Horizontal_Large_Random_Burst();
            break;
		case 10:
			//Horizontal Spear Left
            Bullet_Horizontal_Spear();
            break;
		case 11:
			//Horizontal Spear Right
            Bullet_Horizontal_Spear(0, 125);
            break;
		case 99:
			//CUTSCENE OR BOSS FIGHT BYPASSING MAIN MENU
            HideOutsideBattlebox();
            Bullet_Horizontal_Large_Random_Burst();
            break;
		case 100:
			//DIALOGUE ONLY, NO BULLETS
            break;
    }
	spawn_interval = default_spawn_interval;
}

if(hide_outside_box) {
	outside_hidden = true;
	hide_outside_box = false;
}

//BOSS INTRO MUSIC + ANIMATION
if (global.fighting_failed_human_boss && global.battle_turn == 0 && !audio_is_playing(snd_bergentruckung_slowed)) {
    show_debug_message("BOSS INTRO IS DONE");
    oFailedHuman.image_index = 5;
    alarm[0] = true;
} else {
    audio_timestamp++;

    // 0–4s: hands together
    if (audio_timestamp == 1) oFailedHuman.image_index = 0;
	
	if (audio_timestamp >= 120 && audio_timestamp < 180) {
        oFailedHuman.image_index = 1;
    }
	
	if (audio_timestamp >= 180 && audio_timestamp < 240) {
        oFailedHuman.image_index = 2;
    }
	
	if (audio_timestamp >= 240 && audio_timestamp < 420) {
        oFailedHuman.image_index = 0;
    }
}