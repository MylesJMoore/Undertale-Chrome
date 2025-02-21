#region Keyboard Support
//Keyboard Inputs
var up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

var confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
var cancel_key = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift);
#endregion

#region Controller Support
// Controller Support
var axis_y = gamepad_axis_value(0, gp_axislv);
if(axis_y < 0) {
	
	if(axis_y > -.5){
		controller_joystick_moved = false;
	}

	//We are moving down
	if(axis_y < controller_down_threshold && !controller_joystick_moved) {
		down_key = -1;
		controller_joystick_moved = true;
	}
} else {
	if(axis_y < .5){
		controller_joystick_moved = false;
	}
	
	//We are moving up
	if(axis_y > controller_up_threshold && !controller_joystick_moved) {
		down_key = 1;
		controller_joystick_moved = true;
	}
}

//D-Pad Up
if(gamepad_button_check_pressed(0, gp_padu) > 0) {
	up_key = 1;
}

//D-Pad Down
if(gamepad_button_check_pressed(0, gp_padd) > 0) {
	down_key = 1;
}

//Check if "A" button is pressed on the controller for confirmation
if (gamepad_button_check_pressed(0, gp_face1))
{
    confirm_key = 1;
}

//Check if "B" button is pressed on the controller for  cancellation
if (gamepad_button_check_pressed(0, gp_face2))
{
    cancel_key = 1;
}
#endregion

#region Menu Logic
//Store Number of options in current menu
option_length = array_length(option[menu_level]);

//Move through the menu
if(!start_fade_in_to_new_game & !fading_in) {
	position += down_key - up_key;
	
	//Default Soul Title Menu to next position
	if(menu_level == 1 && position = 0) {
		position = 1;
	}
	
	//Default Controller Menu to back button
	if(menu_level == 2) {
		position = 7;
	}
}

//If we moved to the very bottom, loop back to top
if(position >= option_length) {
	position = 0;
}

//If we moved to the very top, loop back to bottom
if(position < 0) {
	position = option_length - 1;
}

//Start Fade in to New Game if we have confirmed in the menu
if(start_fade_in_to_new_game) {
	fading_in = true;
	start_fade_in_to_new_game = false;
	audio_play_sound(snd_undertale_title_fade_in, 11, false);
	instance_create_depth(0, 0, oTitleMenu.depth - 10, oTitleMenuFadeIn);
}

//Check if Fade In Audio is done
if(fading_in && !audio_is_playing(snd_undertale_title_fade_in)) {
	global.show_title_after_chapter = true;
	room_goto(rm_title_screen);
}

if(cancel_key && !start_fade_in_to_new_game && !fading_in) {
	if(menu_level == 0) {
		room_goto_previous();
	}
	
	//Reset Menu Level
	menu_level = 0;
	position = 0;
	
	//Correct Option Length
	option_length = array_length(option[menu_level]);
}

if(confirm_key && !start_fade_in_to_new_game & !fading_in) {
	//Play Sound effect
	oSFX.inventoryMenuOpenSound = true;
	
	//Save current menu level
	var _startMenuLevel = menu_level;
	
	//Switch depending on Menu Option Selected
	switch(menu_level) {
	//Main Menu
	case 0: 
		switch(position) {
			//New Game or Continue Game
			case 0: 
				if(save_file_exists) {
					show_debug_message("CONTINUE GAME");
					loadGameProgress();
					break;
				} else {
					show_debug_message("NEW GAME");
					//room_goto(rm_cave); 
					start_fade_in_to_new_game = true;
					break;
				}
		
			//Soul Information
			case 1: menu_level = 1; break;
			
			//Controls
			case 2: menu_level = 2; break;
			
			//Quit Game
			case 3: game_end(); break;
				
			//Battle Test
			//case 4: room_goto(rm_battle); break;
		}
	break;
		
	//Human Souls Menu
	case 1: 
		switch(position) {
			//----- SOUL ------//
			case 0: break;
			
			//Resilience
			case 1: break;
				
			//Determination
			case 2: break;
		
			//Bravery
			case 3:  break;
			
			//Justice
			case 4:  break;
			
			//Kindness
			case 5:  break;
			
			//Patience
			case 6:  break;
				
			//Integrity
			case 7:  break;
		
			//Perseverance
			case 8:  break;
			
			//Back
			case 9: menu_level = 0; break;
		}
	break;
	
	//Controls Menu
	case 2: 
		switch(position) {
			//Back
			case 7: menu_level = 0;  break;
		}
	break;
}
	
	
	//Reset Menu Position if we've gone to a different level
	if (_startMenuLevel != menu_level) {
		position = 0;
	}
	
	//Correct Option Length
	option_length = array_length(option[menu_level]);
}
#endregion
