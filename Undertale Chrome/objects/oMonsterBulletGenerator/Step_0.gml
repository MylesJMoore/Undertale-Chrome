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
		case 12:
			//BOSS: Failed Human - Determination
            Bullet_Failed_Human_Determination();
            break;
		case 13:
			//BOSS: Failed Human - Bravery
            Bullet_Failed_Human_Bravery();
            break;
		case 14:
			//BOSS: Failed Human - Justice
            Bullet_Failed_Human_Justice();
            break;
		case 15:
			//BOSS: Failed Human - Kindness
            Bullet_Failed_Human_Kindness();
            break;
		case 16:
			//BOSS: Failed Human - Patience
            Bullet_Failed_Human_Patience();
            break;
		case 17:
			//BOSS: Failed Human - Integrity
            Bullet_Failed_Human_Integrity();
            break;
		case 18:
			//BOSS: Failed Human - Perseverance
			HideOutsideBattlebox();
            Bullet_Failed_Human_Perseverance();
            break;
		case 19:
			//BOSS: Failed Human - Resilience
            //Random Large Horizontal Bullets explode to burst
            HideOutsideBattlebox();
            Bullet_Failed_Human_Horizontal_Large_Random_Burst();
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
if(!global.failed_human_boss_intro_done) {
	if (global.fighting_failed_human_boss && global.battle_turn == 0 && !audio_is_playing(snd_bergentruckung_slowed)) {
	    show_debug_message("BOSS INTRO IS DONE");
		global.failed_human_boss_intro_done = true;
		global.failed_human_knife_fadeout = false;
		global.dialogue_only_bullet_pattern = false;
		global.bypass_battle_menu = false;
		global.return_to_battle_menu = false;
	    oFailedHuman.image_index = 6;
	    alarm[0] = true;
	} else {
	    audio_timestamp++;

	    // 0–1s: hands together
	    if (audio_timestamp == 1) oFailedHuman.image_index = 0;

	    // 1–2s: right hand
	    if (audio_timestamp >= 60 && audio_timestamp < 120) {
	        oFailedHuman.image_index = 1;
	    }

	    // 2–3s: left hand
	    if (audio_timestamp >= 120 && audio_timestamp < 180) {
	        oFailedHuman.image_index = 2;
	    }

	    // 3–5s: hands together
	    if (audio_timestamp >= 180 && audio_timestamp < 300) {
	        oFailedHuman.image_index = 0;
	    }

	    // 5–6s: right hand
	    if (audio_timestamp >= 300 && audio_timestamp < 360) {
	        oFailedHuman.image_index = 1;
	    }

	    // 6–7s: left hand
	    if (audio_timestamp >= 360 && audio_timestamp < 420) {
	        oFailedHuman.image_index = 2;
	    }

	    // 7–9s: hands together (frame 3)
	    if (audio_timestamp >= 420 && audio_timestamp < 540) {
	        oFailedHuman.image_index = 3;
	    }

	    // 9–10s: right hand
	    if (audio_timestamp >= 540 && audio_timestamp < 600) {
	        oFailedHuman.image_index = 1;
	    }

	    // 10–11s: left hand
	    if (audio_timestamp >= 600 && audio_timestamp < 660) {
	        oFailedHuman.image_index = 2;
	    }

	    // 11–13s: hands together
	    if (audio_timestamp >= 660 && audio_timestamp < 780) {
	        oFailedHuman.image_index = 3;
	    }

	    // 13–15s: small smile (frame 4)
	    if (audio_timestamp >= 780 && audio_timestamp < 960) {
	        oFailedHuman.image_index = 4;
			if(instance_exists(oBubbleTextElement)) {
				instance_destroy(oBubbleTextElement);
			}
			
			if(instance_exists(obj_speech_bubble)) {
				instance_destroy(obj_speech_bubble);
			}
	    }

	    // 16–18s: subtle pause (hold)
	    if (audio_timestamp >= 960 && audio_timestamp < 1080) {
	        oFailedHuman.image_index = 4;
	    }

	    // 18–22s: dramatic hold before final grin
	    if (audio_timestamp >= 1080 && audio_timestamp < 1320) {
	        oFailedHuman.image_index = 5;
			
			// Start fading out the knives (trigger once)
		    if (!global.failed_human_knife_fadeout) {
		        global.failed_human_knife_fadeout = true;
		    }
	    }
	}
	
	// During intro, shrink the border until the dramatic hold
	if (!global.failed_human_boss_intro_done) {
	    if (audio_timestamp < 1080) {
	        global.battle_border_width = lerp(global.battle_border_width, target_width, 0.0025);
	        global.battle_border_height = lerp(global.battle_border_height, target_height, 0.0025);
	    } else {
	        // Grow it back smoothly during the dramatic hold
	        global.battle_border_width = lerp(global.battle_border_width, target_width_restore, 0.05);
	        global.battle_border_height = lerp(global.battle_border_height, target_height_restore, 0.05);
	    }
	}
	
	// Example spawn every 2 seconds (adjust timestamps as needed)
	// Fixed battle box size for intro logic
	var original_border_width = 150;
	var original_border_height = 150;

	// Example spawn every 2 seconds (adjust timestamps as needed)
	// Only run this block at specific timestamps
	if (audio_timestamp == 60 || audio_timestamp == 120 || audio_timestamp == 180 ||
	    audio_timestamp == 300 || audio_timestamp == 420 || audio_timestamp == 600 ||
	    audio_timestamp == 720 || audio_timestamp == 900 || audio_timestamp == 1080) {
		
		// === Setup persistent angle tracking ===
		if (!variable_global_exists("global.knife_angle_history") || !ds_exists(global.knife_angle_history, ds_type_list)) {
		    global.knife_angle_history = ds_list_create();
		}

		// Create a fresh wave-local list of valid angles (excluding top)
		ds_list_clear(global.knife_spawn_angles);
		for (var i = 0; i < 360; i += 30) {
		    var jittered = i + irandom_range(-10, 10);

		    // Skip the dead zone
		    if (jittered >= 60 && jittered <= 120) continue;

		    // Check against previous angles
		    var is_near = false;
		    for (var j = 0; j < ds_list_size(global.knife_angle_history); j++) {
		        var prev_angle = global.knife_angle_history[| j];
		        if (abs(angle_difference(jittered, prev_angle)) < 25) {
		            is_near = true;
		            break;
		        }
		    }

		    if (!is_near) ds_list_add(global.knife_spawn_angles, jittered);
		}

		// Shuffle and spawn
		ds_list_shuffle(global.knife_spawn_angles);

		var num_knives = irandom_range(1, 6);
		for (var i = 0; i < num_knives && i < ds_list_size(global.knife_spawn_angles); i++) {
		    var angle = global.knife_spawn_angles[| i];

		    // Track angle so future waves don't reuse it
		    ds_list_add(global.knife_angle_history, angle);

		    var buffer = 30;
		    var safe_border = max(original_border_width, original_border_height) + buffer;
		    var spawn_radius = safe_border + 40 + irandom_range(-5, 5);

		    var knife_x = oSoul.x + lengthdir_x(spawn_radius, angle);
		    var knife_y = oSoul.y + lengthdir_y(spawn_radius, angle);

		    var knife = instance_create_layer(knife_x, knife_y, "intro_knives", oKnifeIntro);
		    knife.image_angle = point_direction(knife_x, knife_y, oSoul.x, oSoul.y);
		    knife.move_direction = knife.image_angle;
		    knife.move_speed = 0.9 + random(0.2);
		}
	}
}