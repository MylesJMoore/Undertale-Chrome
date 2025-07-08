/* TURNING OFF PLAYER INPUT TO AUTOMATICALLY MOVE THROUGH TITLE PAGE
//Keyboard Input
var confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

//Controller Input - "A" button
if (gamepad_button_check_pressed(0, gp_face1))
{
	confirm_key = 1;
}

if(confirm_key == 1 && title_screen_active == 3)
{
	if(global.show_title_after_chapter) {
		global.show_title_after_chapter = false;
		room_goto(rm_chapter_screen);
	} else {
		room_goto_next();
	}
}
*/

//CREDITS
if(start_moving_credits) {
	title_1_y -= 0.25;
	title_2_y -= 0.25;
	credits_y_created -= 0.35;
}

//Check if the credits song has finished then go to the title screen
if(show_credits && !audio_is_playing(undertale_chrome_ost_A_Hero_Emerges)) {
	show_debug_message("MUSIC HAS STOPPED");
	show_chapter_1_coming_soon = true;
	show_credits = false;
}

//Credits are done for the prologue, Go back to title screen
if (show_chapter_1_coming_soon && !end_credits) {
	end_credits = true;
	alarm[4] = 180;
}

if(show_pulsing_soul) {
	// Smooth rotation
	rotation_angle += rotation_speed;
	rotation_angle = rotation_angle mod 360;

	// Smooth alpha transitions for surrounding souls
	for (var i = 0; i < soul_count; i++) {
	    var target_alpha = (i < souls_activated) ? 1 : 0;
	    soul_alpha[i] = lerp(soul_alpha[i], target_alpha, 0.05);
	}

	// Chrome soul fading in and out
	if (draw_chrome_soul) {
	    chrome_soul_alpha += fade_speed * chrome_alpha_direction;
    
	    // Reverse direction if limits are reached
	    if (chrome_soul_alpha >= 1) {
	        chrome_soul_alpha = 1;
	        chrome_alpha_direction = -1;
	    } else if (chrome_soul_alpha <= 0.3) {
	        chrome_soul_alpha = 0.3; // Avoid going fully invisible
	        chrome_alpha_direction = 1;
	    }
    
	    // Scale based on alpha (bigger when fully visible)
	    chrome_scale_factor = chrome_scale_base + (chrome_scale_amplitude * chrome_soul_alpha);
	}
}

