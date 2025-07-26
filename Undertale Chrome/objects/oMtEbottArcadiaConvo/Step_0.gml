switch(Event) {
	case 0:
		show_debug_message("Cutscene has started");
		global.in_cutscene = true;
		audio_stop_all();
		oRoseyHumanCutscene.image_speed = 0;
		oRoseyHumanCutscene.image_index = 0;
		oArcadiaTalk.image_index = 0;
		Event = .5;
    case 1:
        // Initialize camera movement parameters
        oCutsceneCamera.distance_to_stop_camera = 306;
        oCutsceneCamera.time_to_delay_camera = 0;
        oCutsceneCamera.camera_movement_delay = oCutsceneCamera.time_to_delay_camera;
        camera_movement_increment = 2;
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
		
    // === Arcadia + Rosey sequential cutscene begins here ===
	case 3:
	    if (!global.textbox_is_open) {
	        global.textbox_is_open = true;
	        global.textbox_x_adjustment = 0;
	        global.textbox_y_adjustment = 124;
	        global.textbox_width = 170;
	        global.textbox_height = 60;

			

	        // Arcadia Start
	        createTextbox("arcadia_mt_ebbot_conversation_1");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
	        Event = 4;
	    }
	    break;

	case 4:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_2");
			oArcadiaTalk.image_index = 0;
	        oRoseyHumanCutscene.image_speed = 1;
	        Event = 5;
	    }
	    break;

	case 5:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_3");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 5.1;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, true);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
		}
	    break;
	case 5.1:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_3a");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 5.2;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, true);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
	    }
	    break;
	case 5.2:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_3b");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 5.3;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, true);
			layer_set_visible(red_snow, false);
	    }
	    break;
	case 5.3:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_3c");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 6;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, true);
	    }
	    break;

	case 6:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_4");
			oArcadiaTalk.image_index = 0;
			oRoseyHumanCutscene.sprite_index = spr_rosey_human_resilience_cutscene_listen;
	        oRoseyHumanCutscene.image_speed = 1;
	        Event = 7;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, true);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
	    }
	    break;

	case 7:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 7.1;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, true);
	    }
	    break;
		
	case 7.1:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5a");
			oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 7.2;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, true);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
	    }
	    break;
		
		case 7.2:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5b");
			oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 7.3;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, true);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
	    }
	    break;
		
		case 7.3:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5c");
			oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 7.4;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, true);
			layer_set_visible(red_snow, false);
	    }
	    break;
		
		case 7.4:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5d");
			oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 7.5;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, true);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
	    }
	    break;
		
		case 7.5:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5e");
			oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 7.6;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, true);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
	    }
	    break;
		
		case 7.6:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5f");
			oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 7.7;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, true);
			layer_set_visible(red_snow, false);
	    }
	    break;
		
		case 7.7:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_5g");
			oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 8;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, true);
	    }
	    break;
		
		

	case 8:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_6");
			oArcadiaTalk.image_index = 0;
			oRoseyHumanCutscene.sprite_index = spr_rosey_human_resilience_cutscene;
	        oRoseyHumanCutscene.image_speed = 1;
	        Event = 9;
	    }
	    break;

	case 9:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_7");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 9.5;
	    }
	    break;
		
	case 9.5:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_7b");
	        oArcadiaTalk.image_index = 1;
	        oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 10;
			
			//Play Arcadia's Theme
			audio_play_sound(undertale_chrome_ost_Arcadias_Theme, 10, true);
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, true);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
	    }
	    break;

	case 10:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_8");
			oArcadiaTalk.image_index = 0;
	        oRoseyHumanCutscene.image_speed = 1;
	        Event = 11;
	    }
	    break;

	case 11:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_9");
	        oArcadiaTalk.image_index = 1;
			oRoseyHumanCutscene.image_index = 0;
			oRoseyHumanCutscene.image_speed = 0;
	        Event = 12;
	    }
	    break;

	case 12:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_10");
			oArcadiaTalk.image_index = 0;
	        oRoseyHumanCutscene.image_speed = 1;
	        Event = 13;
	    }
	    break;

	case 13:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        createTextbox("arcadia_mt_ebbot_conversation_11");
	        oArcadiaTalk.image_index = 1;
			oRoseyHumanCutscene.sprite_index = spr_rosey_human_resilience_cutscene_listen;
			oRoseyHumanCutscene.image_index = 0;
	        Event = 14;
	    }
	    break;
		
	case 14:
		if (!instance_exists(obj_textbox)) {
		    ResetTextboxGlobals();
		    createTextbox("arcadia_mt_ebbot_conversation_12");
		    oArcadiaTalk.image_index = 0;
			oRoseyHumanCutscene.sprite_index = spr_rosey_human_resilience_cutscene;
			oRoseyHumanCutscene.image_speed = 1;
		    Event = 14.5;
		}
		break;
	
	case 14.5:
		if (!instance_exists(obj_textbox)) {
		    ResetTextboxGlobals();
		    createTextbox("arcadia_mt_ebbot_conversation_12b");
		    oArcadiaTalk.image_index = 1;
			oRoseyHumanCutscene.image_speed = 0;
			oRoseyHumanCutscene.image_index = 0;
		    Event = 15;
		}
		break;
		
	case 15:
		if (!instance_exists(obj_textbox)) {
			audio_stop_all();
		    ResetTextboxGlobals();
		    createTextbox("arcadia_mt_ebbot_conversation_13");
		    oArcadiaTalk.image_index = 2;
			oRoseyHumanCutscene.image_index = 0;
		    Event = 15.5;
		}
		
		break;
	case 15.5:
		with (oRoseyHumanCutscene) { image_alpha = lerp(image_alpha, 0, 0.05);}
		if (!instance_exists(obj_textbox)) {
		    ResetTextboxGlobals();
		    createTextbox("arcadia_mt_ebbot_conversation_13b");
		    oArcadiaTalk.image_index = 2;
		    Event = 15.75;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, false);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, true);
		}
		break;
		
	case 15.75:
		if (!instance_exists(obj_textbox)) {
		    ResetTextboxGlobals();
		    createTextbox("arcadia_mt_ebbot_conversation_13c");
		    oArcadiaTalk.image_index = 3;
		    Event = 16;
		}
		break;
		
	case 16:
	    if (!instance_exists(obj_textbox)) {
	        ResetTextboxGlobals();
	        // Proceed to camera pan back
	        Event = 18;
	    }
	    break;
		
	// === Arcadia + Rosey sequential cutscene ends here ===	
	
	case 18:
        // Initialize camera movement parameters
        oCutsceneCamera.distance_to_stop_camera = -100;
        oCutsceneCamera.time_to_delay_camera = 0;
        oCutsceneCamera.camera_movement_delay = oCutsceneCamera.time_to_delay_camera;
        camera_movement_increment = -2;
        Event = 19;
        break;

    case 19:
        if (oCutsceneCamera.camera_movement_delay <= 0) {
            var new_x = oCutsceneCamera.x + camera_movement_increment;
            var new_distance = oCutsceneCamera.current_camera_distance + camera_movement_increment;
            
            // Check if the new distance exceeds the stop distance
            if (new_distance <= oCutsceneCamera.distance_to_stop_camera) {
                // Adjust to exact stop position
                new_x = oCutsceneCamera.x + (oCutsceneCamera.distance_to_stop_camera - oCutsceneCamera.current_camera_distance);
                new_distance = oCutsceneCamera.distance_to_stop_camera;
                camera_movement_increment = 0; // Stop further movement
                Event = 20; // Proceed to the next event
            }
            
            // Update camera position and distance
            oCutsceneCamera.x = new_x;
            oCutsceneCamera.current_camera_distance = new_distance;
            oCutsceneCamera.camera_movement_delay = oCutsceneCamera.time_to_delay_camera;
        } else {
            oCutsceneCamera.camera_movement_delay -= 1;
        }
        break;
	case 20:
    // Set a target position to the player's location
    oCutsceneCamera.camera_target_x = obj_player.x;
    oCutsceneCamera.camera_target_y = obj_player.y;
    Event = 21;
    break;

	case 21:
	    var cam_speed = 0.08; // how fast the camera interpolates to player (0.05–0.1 is good range)

	    oCutsceneCamera.x = lerp(oCutsceneCamera.x, oCutsceneCamera.camera_target_x, cam_speed);
	    oCutsceneCamera.y = lerp(oCutsceneCamera.y, oCutsceneCamera.camera_target_y, cam_speed);

	    var dx = abs(oCutsceneCamera.x - oCutsceneCamera.camera_target_x);
	    var dy = abs(oCutsceneCamera.y - oCutsceneCamera.camera_target_y);

	    if (dx < 1 && dy < 1) {
	        oCutsceneCamera.x = oCutsceneCamera.camera_target_x;
	        oCutsceneCamera.y = oCutsceneCamera.camera_target_y;

	        camera_set_view_target(view_camera[0], obj_player);
	        global.player_can_move = true;
	        global.mt_ebbot_longpath_cutscene_done = true;
	        global.in_cutscene = false;
			
			//Set Correct Snow Color
			var white_snow = layer_get_id("Snow");
			var yellow_snow = layer_get_id("YellowSnow");
			var orange_snow = layer_get_id("OrangeSnow");
			var red_snow = layer_get_id("RedSnow");
			layer_set_visible(white_snow, true);
			layer_set_visible(yellow_snow, false);
			layer_set_visible(orange_snow, false);
			layer_set_visible(red_snow, false);
			
			instance_destroy(oArcadiaTalk);
			instance_destroy(oRoseyHumanCutscene);
	        audio_play_sound(MT_EBBOT_SUMMIT_MUSIC, 5, true);
	        show_debug_message("Cutscene has ended");
	        Event = 69;
	    }
	    break;
}
