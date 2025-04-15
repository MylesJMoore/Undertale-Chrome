switch(Event) {
	case 0:
		show_debug_message("Cutscene has started");
		global.in_cutscene = true;
		Event = .5;
    case 1:
        // Initialize camera movement parameters
        oCutsceneCamera.distance_to_stop_camera = 200;
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
			setSongInGame(snd_detroit, 0, 0);
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
	// Event 14: Set tile + object layers for Rosey Humans
	case 14:
	    if (chrome_soul_complete) {
	        // Show object + tile layers
	        layer_set_visible("rosey_human_objects", true);
	        layer_set_visible("rosey_human_tile", true);

	        // Set all Rosey Humans to black and invisible (alpha = 0)
	        with (oRoseyHumanApathy) { image_blend = c_black; image_alpha = 0; }
	        with (oRoseyHumanCorruption) { image_blend = c_black; image_alpha = 0; }
	        with (oRoseyHumanCruelty) { image_blend = c_black; image_alpha = 0; }
	        with (oRoseyHumanDeceit) { image_blend = c_black; image_alpha = 0; }
	        with (oRoseyHumanDespair) { image_blend = c_black; image_alpha = 0; }
	        with (oRoseyHumanFear) { image_blend = c_black; image_alpha = 0; }
	        with (oRoseyHumanImpulsiveness) { image_blend = c_black; image_alpha = 0; }
	        with (oRoseyHumanVengeance) { image_blend = c_black; image_alpha = 0; }

	        Event = 15;
	    }
    break;

	// Fade in Apathy and speak
	case 15:
	    with (oRoseyHumanApathy) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_apathy");
	        Event = 16;
	    }
	    break;

	case 16:
	    with (oRoseyHumanDespair) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_despair");
	        Event = 17;
	    }
	    break;

	case 17:
	    with (oRoseyHumanImpulsiveness) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_impulsiveness");
	        Event = 18;
	    }
	    break;

	case 18:
	    with (oRoseyHumanVengeance) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_vengeance");
	        Event = 19;
	    }
	    break;

	case 19:
	    with (oRoseyHumanDeceit) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_deceit");
	        Event = 20;
	    }
	    break;

	case 20:
	    with (oRoseyHumanFear) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_fear");
	        Event = 21;
	    }
	    break;

	case 21:
	    with (oRoseyHumanCruelty) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_cruelty");
	        Event = 22;
	    }
	    break;

	// Fade in corruption, then fade others out
	case 22:
	    with (oRoseyHumanCorruption) image_alpha = lerp(image_alpha, 1, 0.1);
	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_corruption_1");
	        Event = 23;
	    }
	    break;

	case 23:
	    // Fade out all others EXCEPT corruption
	    with (oRoseyHumanApathy) image_alpha = lerp(image_alpha, 0, 0.1);
	    with (oRoseyHumanCruelty) image_alpha = lerp(image_alpha, 0, 0.1);
	    with (oRoseyHumanDeceit) image_alpha = lerp(image_alpha, 0, 0.1);
	    with (oRoseyHumanDespair) image_alpha = lerp(image_alpha, 0, 0.1);
	    with (oRoseyHumanFear) image_alpha = lerp(image_alpha, 0, 0.1);
	    with (oRoseyHumanImpulsiveness) image_alpha = lerp(image_alpha, 0, 0.1);
	    with (oRoseyHumanVengeance) image_alpha = lerp(image_alpha, 0, 0.1);

	    if (!global.textbox_is_open) {
	        createTextbox("rosey_human_corruption_2");
	        Event = 24;
	    }
	    break;

	case 24:
	    // Spawn failed human clone here
	    if (!instance_exists(oFailedHumanClone)) {
	        instance_create_layer(obj_player.x, obj_player.y - 20, "rosey_human_objects", oFailedHumanClone);
	    }
	    Event = 25;
	    break;
	case 25:
	    // START BOSS BATTLE
	    break;
}
