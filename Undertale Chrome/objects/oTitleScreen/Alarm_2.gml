/// @description Automatically Proceed to Next Room	
if(global.show_title_after_chapter) {
	global.show_title_after_chapter = false;
	room_goto(rm_chapter_screen);
} else {
	room_goto_next();
}