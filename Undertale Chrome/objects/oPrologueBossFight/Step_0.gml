#region This block runs every step — outside my switch(Event) for sprite animation logic

	if (global.in_cutscene) {
	    if (instance_exists(oRoseyHumanApathy) && global.active_rosey_clone == oRoseyHumanApathy) {
			oRoseyHumanApathy.image_speed = global.dialogue_is_done_typing ? 0 : 1; 
			if(global.dialogue_is_done_typing) oRoseyHumanApathy.image_index = 0;
		}
	    if (instance_exists(oRoseyHumanDespair) && global.active_rosey_clone == oRoseyHumanDespair) {
			oRoseyHumanDespair.image_speed = global.dialogue_is_done_typing ? 0 : 1;
			if(global.dialogue_is_done_typing) oRoseyHumanDespair.image_index = 0;
		}
	    if (instance_exists(oRoseyHumanImpulsiveness) && global.active_rosey_clone == oRoseyHumanImpulsiveness) {
			oRoseyHumanImpulsiveness.image_speed = global.dialogue_is_done_typing ? 0 : 1;
			if(global.dialogue_is_done_typing) oRoseyHumanImpulsiveness.image_index = 0;
		}
	    if (instance_exists(oRoseyHumanVengeance) && global.active_rosey_clone == oRoseyHumanVengeance) {
			oRoseyHumanVengeance.image_speed = global.dialogue_is_done_typing ? 0 : 1;
			if(global.dialogue_is_done_typing) oRoseyHumanVengeance.image_index = 0;
		}
	    if (instance_exists(oRoseyHumanDeceit) && global.active_rosey_clone == oRoseyHumanDeceit) {
			oRoseyHumanDeceit.image_speed = global.dialogue_is_done_typing ? 0 : 1;
			if(global.dialogue_is_done_typing) oRoseyHumanDeceit.image_index = 0;
		}
	    if (instance_exists(oRoseyHumanFear) && global.active_rosey_clone == oRoseyHumanFear) {
			oRoseyHumanFear.image_speed = global.dialogue_is_done_typing ? 0 : 1;
			if(global.dialogue_is_done_typing) oRoseyHumanFear.image_index = 0;
		}
	    if (instance_exists(oRoseyHumanCruelty) && global.active_rosey_clone == oRoseyHumanCruelty) {
			oRoseyHumanCruelty.image_speed = global.dialogue_is_done_typing ? 0 : 1;
			if(global.dialogue_is_done_typing) oRoseyHumanCruelty.image_index = 0;
		}
	    if (instance_exists(oRoseyHumanCorruption) && global.active_rosey_clone == oRoseyHumanCorruption) {
			oRoseyHumanCorruption.image_speed = global.dialogue_is_done_typing ? 0 : 1;
			if(global.dialogue_is_done_typing) oRoseyHumanCorruption.image_index = 0
		}
	
	}
#endregion

#region PROLOGUE CUTSCENE
switch(Event) {
	case 0:
		show_debug_message("Cutscene has started");
		global.in_cutscene = true;
		Event = .5;
    case 1:
        // Initialize camera movement parameters
        oCutsceneCamera.distance_to_stop_camera = 500;
        oCutsceneCamera.time_to_delay_camera = 0;
        oCutsceneCamera.camera_movement_delay = oCutsceneCamera.time_to_delay_camera;
        camera_movement_increment = 3;
        Event = 2;
        break;

    case 2:
        if (oCutsceneCamera.camera_movement_delay <= 0) {
            var new_x = oCutsceneCamera.x + camera_movement_increment;
            var new_distance = oCutsceneCamera.current_camera_distance + camera_movement_increment;
            
            // Check if the new distance exceeds the stop distance
            if (new_distance >= oCutsceneCamera.distance_to_stop_camera) {
                // Adjust to exact stop position
                new_x = oCutsceneCamera.x + (oCutsceneCamera.distance_to_stop_camera - oCutsceneCamera.current_camera_distance);
                new_distance = oCutsceneCamera.distance_to_stop_camera;
                camera_movement_increment = 0; // Stop further movement
                Event = 3; // Proceed to the next event
            }
            
            // Update camera position and distance
            oCutsceneCamera.x = new_x;
            oCutsceneCamera.current_camera_distance = new_distance;
            oCutsceneCamera.camera_movement_delay = oCutsceneCamera.time_to_delay_camera;
        } else {
            oCutsceneCamera.camera_movement_delay -= 1;
        }
        break;
    case 3:
		if (!global.textbox_is_open) {
			//Reset Global
			oSoulJarChromeOpen.hide_soul_jar = true;
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = 0;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 200;
			global.textbox_height = 60;
			createTextbox("chrome_soul_determination");
			setSongInGame(undertale_chrome_ost_Blue_Resort, 0, 0);
	        Event = 4;
		}
        break;

    case 4:
        if(!instance_exists(obj_textbox)) {
			ResetTextboxGlobals();
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = 0;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 200;
			global.textbox_height = 60;
			createTextbox("chrome_soul_bravery");
			obj_soul_controller.souls_activated += 1;
			Event = 5;
		}
        break;
	case 5:
		if(!instance_exists(obj_textbox)) {
			ResetTextboxGlobals();
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = 0;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 200;
			global.textbox_height = 60;
			createTextbox("chrome_soul_justice");
			obj_soul_controller.souls_activated += 1;
			Event = 6;
		}
	    break;
	case 6:
		if(!instance_exists(obj_textbox)) {
			ResetTextboxGlobals();
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = 0;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 200;
			global.textbox_height = 60;
			createTextbox("chrome_soul_kindness");
			obj_soul_controller.souls_activated += 1;
			Event = 7;
		}
        break;
	case 7:
		if(!instance_exists(obj_textbox)) {
			ResetTextboxGlobals();
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = 0;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 200;
			global.textbox_height = 60;
			createTextbox("chrome_soul_integrity");
			obj_soul_controller.souls_activated += 1;
			Event = 8;
		}
        break;
	case 8:
		if(!instance_exists(obj_textbox)) {
			ResetTextboxGlobals();
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = 0;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 200;
			global.textbox_height = 60;
			createTextbox("chrome_soul_perseverance");
			obj_soul_controller.souls_activated += 1;
			Event = 9;
		}
        break;
	case 9:
		if(!instance_exists(obj_textbox)) {
			ResetTextboxGlobals();
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = 0;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 200;
			global.textbox_height = 60;
			createTextbox("chrome_soul_patience");
			obj_soul_controller.souls_activated += 1;
			Event = 10;
		}
        break;
	case 10:
		if(!instance_exists(obj_textbox)) {
			ResetTextboxGlobals();
			audio_stop_all();
			obj_soul_controller.souls_activated += 1; //We don't up the count initially because determination is index 0
			obj_soul_controller.circle_radius = 24;
			//Set Custom Textbox Size Values for this cutscene
			global.textbox_is_open = true;
			global.textbox_x_adjustment = -30;
			global.textbox_y_adjustment = 124;
			global.textbox_width = 250;
			global.textbox_height = 60;
			createTextbox("chrome_soul_end");
			Event = 11;
		}
        break;
	case 11:
		if(!instance_exists(obj_textbox)) {
			obj_soul_controller.souls_converge = true;
			//Show tile layers for rosey human clone
			layer_set_visible("rosey_human_objects", true);
	        layer_set_visible("rosey_human_tile", true);
			
			// Initialize Rosey clones as black silhouettes
	        with (oRoseyHumanApathy) { image_blend = c_black; image_alpha = 1; visible = true; }
	        with (oRoseyHumanCorruption) { image_blend = c_black; image_alpha = 1; visible = true; }
	        with (oRoseyHumanCruelty) { image_blend = c_black; image_alpha = 1; visible = true; }
	        with (oRoseyHumanDeceit) { image_blend = c_black; image_alpha = 1; visible = true; }
	        with (oRoseyHumanDespair) { image_blend = c_black; image_alpha = 1; visible = true; }
	        with (oRoseyHumanFear) { image_blend = c_black; image_alpha = 1; visible = true; }
	        with (oRoseyHumanImpulsiveness) { image_blend = c_black; image_alpha = 1; visible = true; }
	        with (oRoseyHumanVengeance) { image_blend = c_black; image_alpha = 1; visible = true; }
			Event = 12;
		}
        break;
	case 12:
		if(obj_soul_controller.chrome_soul_complete) {
			// Initialize camera movement parameters
	        oCutsceneCamera.time_to_delay_camera = 0;
	        oCutsceneCamera.camera_movement_delay = oCutsceneCamera.time_to_delay_camera;
	        camera_movement_increment = 3;
	        Event = 13;
	        break;
		}
	case 13:
	    if (oCutsceneCamera.camera_movement_delay <= 0) {
	        var new_x = oCutsceneCamera.x - camera_movement_increment;
	        var new_distance = oCutsceneCamera.current_camera_distance - camera_movement_increment;

	        // Check if the new distance has returned to 0 or less
	        if (new_distance <= 0) {
	            // Clamp back to original position
	            new_x = oCutsceneCamera.x - oCutsceneCamera.current_camera_distance;
	            new_distance = 0;
	            camera_movement_increment = 0; // Stop movement
	            Event = 14; // Proceed to next event
	        }

	        // Update camera position and distance
	        oCutsceneCamera.x = new_x;
	        oCutsceneCamera.current_camera_distance = new_distance;
	        oCutsceneCamera.camera_movement_delay = oCutsceneCamera.time_to_delay_camera;
	    } else {
	        oCutsceneCamera.camera_movement_delay -= 1;
	    }
	    break;
		
	//=== CUTSCENE ROSEY HUMAN FADE IN SEQUENCE ===//
	case 14:
	    if (obj_soul_controller.chrome_soul_complete) {
	        Event = 14.5;
	    }
	    break;
	//Player Scared Dialogue
	case 14.5:
	    if (obj_soul_controller.chrome_soul_complete) {
				global.textbox_is_open = true;
	            createTextbox("rosey_human_scared");
				Event = 15.5;
	    }
	    break;
	//Pause before human clone starts
	case 15.5:
	    if (!global.textbox_is_open) {
			Event = 15;
	    }
	    break;
	// Fade in and speak one by one
	case 15:
	    with (oRoseyHumanApathy) image_blend = c_white;
	    with (oRoseyHumanApathy) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanApathy.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanApathy;
	            createTextbox("rosey_human_apathy");
				setSongInGame(snd_rosey_human_clones_theme, 0, 0);
	            Event = 16;
	        }
	    }
	    break;
	case 16:
		if(!global.textbox_is_open) {
			with (oRoseyHumanApathy) { image_index = 0; image_speed = 0;}
			Event = 17;
		}
		break;
	case 17:
	    with (oRoseyHumanDespair) image_blend = c_white;
	    with (oRoseyHumanDespair) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanDespair.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanDespair;
	            createTextbox("rosey_human_despair");
	            Event = 18;
	        }
	    }
	    break;
	case 18:
		if(!global.textbox_is_open) {
			with (oRoseyHumanDespair) { image_index = 0; image_speed = 0;}
			Event = 19;
		}
		break;

	case 19:
	    with (oRoseyHumanImpulsiveness) image_blend = c_white;
	    with (oRoseyHumanImpulsiveness) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanImpulsiveness.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanImpulsiveness;
	            createTextbox("rosey_human_impulsiveness");
	            Event = 20;
	        }
	    }
	    break;
	case 20:
		if(!global.textbox_is_open) {
			with (oRoseyHumanImpulsiveness) { image_index = 0; image_speed = 0;}
			Event = 21;
		}
		break;

	case 21:
	    with (oRoseyHumanVengeance) image_blend = c_white;
	    with (oRoseyHumanVengeance) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanVengeance.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanVengeance;
	            createTextbox("rosey_human_vengeance");
	            Event = 22;
	        }
	    }
	    break;
	case 22:
		if(!global.textbox_is_open) {
			with (oRoseyHumanVengeance) { image_index = 0; image_speed = 0;}
			Event = 23;
		}
		break;

	case 23:
	    with (oRoseyHumanDeceit) image_blend = c_white;
	    with (oRoseyHumanDeceit) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanDeceit.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanDeceit;
	            createTextbox("rosey_human_deceit");
	            Event = 24;
	        }
	    }
	    break;
	case 24:
		if(!global.textbox_is_open) {
			with (oRoseyHumanDeceit) { image_index = 0; image_speed = 0;}
			Event = 25;
		}
		break;

	case 25:
	    with (oRoseyHumanFear) image_blend = c_white;
	    with (oRoseyHumanFear) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanFear.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanFear;
	            createTextbox("rosey_human_fear");
	            Event = 26;
	        }
	    }
	    break;
	case 26:
		if(!global.textbox_is_open) {
			with (oRoseyHumanFear) { image_index = 0; image_speed = 0;}
			Event = 27;
		}
		break;

	case 27:
	    with (oRoseyHumanCruelty) image_blend = c_white;
	    with (oRoseyHumanCruelty) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanCruelty.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanCruelty;
	            createTextbox("rosey_human_cruelty");
	            Event = 28;
	        }
	    }
	    break;
	case 28:
		if(!global.textbox_is_open) {
			with (oRoseyHumanCruelty) { image_index = 0; image_speed = 0;}
			Event = 29;
		}
		break;

	// Corruption enters
	case 29:
	    with (oRoseyHumanCorruption) image_blend = c_white;
	    with (oRoseyHumanCorruption) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (abs(oRoseyHumanCorruption.image_alpha - 1) < 0.05) {
	        fade_timer++;
	        if (fade_timer > 15 && !global.textbox_is_open) {
				audio_stop_all();
	            fade_timer = 0;
				global.textbox_is_open = true;
				global.active_rosey_clone = oRoseyHumanCorruption;
	            createTextbox("rosey_human_corruption_1");
	            Event = 30;
	        }
	    }
	    break;

	
	case 30:
	    if (!global.textbox_is_open) {
			global.textbox_is_open = true;
			global.active_rosey_clone = oRoseyHumanCorruption;
	        createTextbox("rosey_human_corruption_2");
	        Event = 31;
	    }
	    break;
	case 31:
		// All Rosey human clones FADE OUT
		var othersFaded = true;

	    with (oRoseyHumanApathy) { image_alpha = lerp(image_alpha, 0, 0.05); if (image_alpha > 0.05) othersFaded = false; }
	    with (oRoseyHumanCruelty) { image_alpha = lerp(image_alpha, 0, 0.05); if (image_alpha > 0.05) othersFaded = false; }
	    with (oRoseyHumanDeceit) { image_alpha = lerp(image_alpha, 0, 0.05); if (image_alpha > 0.05) othersFaded = false; }
	    with (oRoseyHumanDespair) { image_alpha = lerp(image_alpha, 0, 0.05); if (image_alpha > 0.05) othersFaded = false; }
	    with (oRoseyHumanFear) { image_alpha = lerp(image_alpha, 0, 0.05); if (image_alpha > 0.05) othersFaded = false; }
	    with (oRoseyHumanImpulsiveness) { image_alpha = lerp(image_alpha, 0, 0.05); if (image_alpha > 0.05) othersFaded = false; }
	    with (oRoseyHumanVengeance) { image_alpha = lerp(image_alpha, 0, 0.05); if (image_alpha > 0.05) othersFaded = false; }
		if(!global.textbox_is_open) {
			Event = 32;
		}
		break;
	case 32:
	    //Show tile layers for rosey human clone
		layer_set_visible("boss_fight", true);
			
	    // Initialize FAILED EXPERIMENT BOSS as a black silhouette
	    with (oFailedHumanClone) { image_blend = c_black; image_alpha = 1; visible = true; image_speed = 0; image_index = 0; y = obj_player.y}
	    Event = 33;
	    break;

	case 33:
	    with (oFailedHumanClone) {
	        image_blend = c_black;
	        image_alpha = lerp(image_alpha, 1, 0.1); // already at 1, but just in case
	    }

	    fade_timer++;
	    if (fade_timer > 30) {
	        fade_timer = 0;
	        Event = 34;
	    }
	    break;
	case 34:
	    if (instance_exists(oFailedHumanClone)) {
	        var t = fade_timer;

	        with (oFailedHumanClone) {
	            image_blend = c_white;
	            image_alpha = 1;
	            image_speed = 0;

	            if (t < 60) {
	                image_index = 0;
	            } else if (t < 120) {
	                image_index = 1;
	            } else {
	                var anim_index = floor((t - 120) / 4);
	                if (anim_index < 10) {
	                    image_index = 2 + anim_index; // frames 2 to 11
	                } else {
	                    // Loop between frames 12 and 13 while sound plays
	                    image_index = (floor(t / 6) mod 2 == 0) ? 12 : 13;
	                }
	            }
	        }

	        // Play sound at frame 120
	        if (t == 120 && !audio_is_playing(snd_failed_experiment_laugh)) {
	            audio_play_sound(snd_failed_experiment_laugh, 5, false);
	        }

	        // Shake camera while laugh sound is active
	        if (t >= 120 && audio_is_playing(snd_failed_experiment_laugh)) {
	            with (oCutsceneCamera) {
	                screen_shake_timer = 1;
	                screen_shake_magnitude = 4; // You can increase this to 4–6 if you want bigger shakes
	            }
	        }
	    }

	    fade_timer++;

	    // Transition to next event only after laugh ends
	    if (!audio_is_playing(snd_failed_experiment_laugh) && fade_timer > 160) {
	        fade_timer = 0;
	        Event = 35;
	    }
    break;

	case 35:
	    // TRIGGER SOUL FLASH THEN BOSS BATTLE
		global.enemy_to_battle = global.enemy_macros[2]; //Failed Human Macro
		global.fighting_failed_human_boss = true; //Set flag for this boss battle to true so we can override normal battle things
		instance_create_depth(obj_player.x - 5, obj_player.y + 5, -99999, oSoulFlash);
		global.battle_trigger_object = noone;
	
		//Check if we should bypass the battle menu
		global.bypass_battle_menu = true;
	
		//Check if we should hide the battle menu
		global.hide_battle_menu = true;
	
		//Check if we should return to the battle menu after bypassing
		global.return_to_battle_menu = true;
		
		Event = 36;
	    break;
	case 36:
	    // END OF CUTSCENE
		global.in_cutscene = false;
	    break;
}
#endregion