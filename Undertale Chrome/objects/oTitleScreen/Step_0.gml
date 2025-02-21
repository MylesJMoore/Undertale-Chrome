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