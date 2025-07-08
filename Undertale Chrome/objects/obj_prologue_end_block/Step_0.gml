//Keyboard Support
#region Keyboard Support
//Keyboard Inputs
var confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
var cancel_key = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift);
var right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
#endregion

#region Controller Support
	// Controller Support
	var axis_x = gamepad_axis_value(0, gp_axislh);
	var axis_y = gamepad_axis_value(0, gp_axislv);
	
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
	
	//Moving Right
	if(axis_x > 0) {
		if(axis_x < .7) {
			controller_joystick_moved = false;
		}

		//We are moving left
		if(axis_x > controller_right_threshold && !controller_joystick_moved) {
			right_key = 1;
			controller_joystick_moved = true;
		}
	} else if (axis_x < 0) {
		if(axis_x > -.7) {
			controller_joystick_moved = false;
		}

		//We are moving left
		if(axis_x < controller_left_threshold && !controller_joystick_moved) {
			left_key = 1;
			controller_joystick_moved = true;
		}
	}
	
	//D-Pad Left
	if(gamepad_button_check_pressed(0, gp_padl) > 0) {
		left_key = 1;
	}

	//D-Pad Right
	if(gamepad_button_check_pressed(0, gp_padr) > 0) {
		right_key = 1;
	}
#endregion

#region Show Save Dialogue
if ((place_meeting(x, y, obj_player) && confirm_key == 1 && !start_save_dialogue && !instance_exists(oTextElement))) {
	//Stop Player from Moving
	freezePlayer();
	
	//Initialize Variables
	start_save_dialogue = true;
	show_save_dialogue = true;
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	
	// Create the dialogue instance
	var SaveDialogue = instance_create_depth(cam_x, cam_y, -99999, oTextElement);
	SaveDialogue.LineSpacing = LineSpacing;
	SaveDialogue.LetterSpacing = LetterSpacing;
	SaveDialogue.TextBufferX = TextBufferX;
	SaveDialogue.TextBufferY = TextBufferY;
	SaveDialogue.TextScaleX = TextScaleX;
	SaveDialogue.TextScaleY = TextScaleY;
	SaveDialogue.CanAdvance = true;

	// Get the prologue message list
	var prologue_messages = global.prologue_end_dialogue_messages[0];

	// Initialize queue counter
	var queue_index = 0;

	// Check if player already talked before
	if (player_already_talked_to) {
	    // Only load the last two lines
	    SaveDialogue.TextToDraw = prologue_messages[array_length(prologue_messages) - 2];
	    SaveDialogue.TextQueue[queue_index] = prologue_messages[array_length(prologue_messages) - 1];
	    queue_index++;
	} else {
	    // Load full set: first line as TextToDraw, rest into queue
	    SaveDialogue.TextToDraw = prologue_messages[0];

	    for (var i = 1; i < array_length(prologue_messages); i++) {
	        SaveDialogue.TextQueue[queue_index] = prologue_messages[i];
	        queue_index++;
	    }
	}
}
#endregion

#region Show Save Option
if(show_save_dialogue && !instance_exists(oTextElement)) {
	//Show Save Option Textbox
	show_save_option = true;
	show_save_dialogue = false;
}
#endregion

#region Check Save Option Selected
if(show_save_option) {
	if(left_key) {
		//Resilience is selected (Not actually saving but repurposed this)
		save_option_value = "resilience";
	}
	
	if(right_key) {
		//Return is selected
		save_option_value = "fear";
	}
}
#endregion

#region Save Is Selected - Save The Game and Change Text To Yellow
if(confirm_key == 1 && show_save_option && save_option_value == "resilience") {
	//Show Game Saved Menu Textbox
	show_save_option = false;
	show_game_saved = true;
	
	//Play Save Sound
	//oSFX.saveSound = true;
	
	start_fade_in_to_credits = true;
	show_debug_message("FADE OUT TO CREDITS NOWWW!!");
	
	//Save Progress
	//saveGameProgress(global.save_file);
}
#endregion

//Start Fade in to New Game if we have confirmed in the menu
if(start_fade_in_to_credits) {
	start_fade_in_to_credits = false;
	fading_in = true;
	audio_stop_sound(undertale_chrome_ost_Undertale_Chrome);
	audio_play_sound(snd_undertale_title_fade_in, 11, false);
	instance_create_depth(0, 0, -999999, oCreditsFadeIn);
}

//Check if Fade In Audio is done
if(fading_in && !audio_is_playing(snd_undertale_title_fade_in)) {
	global.show_title_after_chapter = false;
	global.show_credits = true;
	HidePlayerAndFollowers();
	room_goto(rm_title_screen);
}
	

#region Save Is Selected - Close Save Confirmation Menu
if(confirm_key == 1 && show_game_saved) {
	//Close Save Confirmation Textbox
	//start_close_save_menu_timer = true;
}

if(start_close_save_menu_timer) {
	close_save_menu_timer--;
	show_debug_message("Timer = " + string(close_save_menu_timer));
}

if(close_save_menu_timer <= 0) {
	show_debug_message("TIMER HIT 0");
	close_save_menu = true;
	start_close_save_menu_timer = false;
}
#endregion

#region Save Is Selected - Close Save Menu
if(show_game_saved && close_save_menu) {
	//Hide all Save Menu Textboxes
	start_save_dialogue = false;
	show_save_dialogue = false;
	show_save_option = false;
	show_save_confirm = false;
	show_game_saved = false;
	close_save_menu = false;
	start_close_save_menu_timer = false;
	close_save_menu_timer = timer_count;
	
	//Allow Player to move
	unfreezePlayer();
}
#endregion

#region Return Is Selected - Cancel out of Save Menu
if(confirm_key == 1 && show_save_option && save_option_value == "fear") {
	fear_was_selected = true;
	show_save_option = false;
	show_save_dialogue = true;
	
	// Create the dialogue instance
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	var SaveDialogue = instance_create_depth(cam_x, cam_y, -99999, oTextElement);
	SaveDialogue.LineSpacing = LineSpacing;
	SaveDialogue.LetterSpacing = LetterSpacing;
	SaveDialogue.TextBufferX = TextBufferX;
	SaveDialogue.TextBufferY = TextBufferY;
	SaveDialogue.TextScaleX = TextScaleX;
	SaveDialogue.TextScaleY = TextScaleY;
	SaveDialogue.CanAdvance = true;

	// Get the fear cancel message
	SaveDialogue.TextToDraw = "* It's okay. Take your time.";
}

if(fear_was_selected && !instance_exists(oTextElement)) {
	//Hide all Save Menu Textboxes
	player_already_talked_to = true;
	start_save_dialogue = false;
	show_save_dialogue = false;
	show_save_option = false;
	show_save_confirm = false;
	show_game_saved = false;
	close_save_menu = false;
	start_close_save_menu_timer = false;
	close_save_menu_timer = timer_count;
	
	//Reset Flag
	fear_was_selected = false;
	
	//Play Close Sound
	audio_play_sound(snd_menu_close, 1, false);
	
	//Allow Player to move
	unfreezePlayer();
}
#endregion