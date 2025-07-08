//Check if we need to show credits
if(global.show_credits) {
	show_debug_message("LIST OUT CREDITS HERE");
	audio_play_sound(undertale_chrome_ost_A_Hero_Emerges, 11, false);
	alarm[3] = 30; //Start Moving Credits
} else {
	/// @description Automatically Proceed to Next Room	
	if(global.show_title_after_chapter) {
		global.show_title_after_chapter = false;
		room_goto(rm_chapter_screen);
	} else {
		if(global.game_chapter_prologue_complete) {
			show_pulsing_soul = true;
			hide_title = true;
			alarm[5] = 30;
		} else {
			room_goto_next();
		}
	}
}

