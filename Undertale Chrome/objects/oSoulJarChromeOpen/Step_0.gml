if(instance_exists(oSoulJarChrome) && global.start_prologue_open_chrome_jar && !instance_exists(obj_textbox)) {
	oSoulJarChrome.image_alpha = 0;
	global.player_can_move = false;
	image_alpha = 1;
	image_speed = 1;
}

if (image_index >= image_number - 1) {
	image_speed = 0;
	global.start_prologue_cutscene = true;
}


//Destroy the Chrome Soul Jar that was opened
if(hide_soul_jar) {
	image_alpha = 0;
}