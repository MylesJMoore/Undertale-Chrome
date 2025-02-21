if(show_save_dialogue) {
	//Initialize Variables
	var draw_cam_x = camera_get_view_x(view_camera[0]);
	var draw_cam_y = camera_get_view_y(view_camera[0]);
	
	//Draw Textbox
	draw_sprite_ext(spr_black_textbox, 0, draw_cam_x + save_textbox_horizontal_buffer, draw_cam_y + save_textbox_vertical_buffer, save_textbox_buffer_width, save_textbox_buffer_height, 0, c_white, 1);
		
	// Draw Current Soul
	//var soul_sprite_x = player_name_text_x + 125;
	//var soul_sprite_y = player_name_text_y + 25;
	//draw_sprite_ext(spr_soul_selection_left, 0, soul_sprite_x, soul_sprite_y, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(spr_soul_selection_right, global.soul_selected, soul_sprite_x, soul_sprite_y, 1, 1, 0, c_white, 1);

}

if(show_save_option) {
	//Initialize Variables
	var draw_cam_x = camera_get_view_x(view_camera[0]);
	var draw_cam_y = camera_get_view_y(view_camera[0]);
	var player_menu_x = screen_border + draw_cam_x;
	var player_menu_y = screen_border + sep + draw_cam_y;
	
	//Draw Textbox
	draw_sprite_ext(spr_black_textbox, 0, draw_cam_x + choice_textbox_horizontal_buffer, draw_cam_y + choice_textbox_vertical_buffer, choice_textbox_buffer_width, choice_textbox_buffer_height, 0, c_white, 1);
	
	//Set Text Variables
	draw_set_font(global.menu_player_name_font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	var _name = global.player_name;
	var _level = string(global.player_level);
		
	//Draw Text
	var player_name_text_x = player_menu_x + 0;
	var player_name_text_y = player_menu_y + 0;
	//First Row
	draw_text_color(player_name_text_x + 40, player_name_text_y + 60, _name,c_white, c_white, c_white, c_white, 1);
	draw_text_color(player_name_text_x + 100, player_name_text_y + 60, "LV " + _level,c_white, c_white, c_white, c_white, 1);
	//Second Row
	draw_text_ext_transformed(player_name_text_x + 150, player_name_text_y + 60, "Prologue", 500, 500, 1, 1, image_angle);
	draw_set_color(c_yellow);
	draw_text_ext_transformed(player_name_text_x + 40, player_name_text_y + 80, "\"The Massacre at True Lab\"", 500, 500, .8, .8, image_angle);
	//Third Row
	switch (save_option_value)
	{
	    case "save":
	        draw_sprite_ext(spr_soul_selection_left, 0, player_name_text_x + 40, player_name_text_y + 107, .5, .5, 0, c_white, 1);
			draw_sprite_ext(spr_soul_selection_right, global.soul_selected, player_name_text_x + 39, player_name_text_y + 107, .5, .5, 0, c_white, 1);
			draw_set_color(c_yellow);
			draw_text_ext_transformed(player_name_text_x + 50, player_name_text_y + 100, "Save", 500, 500, 1, 1, image_angle);
			draw_set_color(c_white);
			draw_text_ext_transformed(player_name_text_x + 140, player_name_text_y + 100, "Return", 500, 500, 1, 1, image_angle);
	    break;

	    case "return":
	        draw_sprite_ext(spr_soul_selection_left, 0, player_name_text_x + 130, player_name_text_y + 107, .5, .5, 0, c_white, 1);
			draw_sprite_ext(spr_soul_selection_right, global.soul_selected, player_name_text_x + 129, player_name_text_y + 107, .5, .5, 0, c_white, 1);
			draw_set_color(c_white);
			draw_text_ext_transformed(player_name_text_x + 50, player_name_text_y + 100, "Save", 500, 500, 1, 1, image_angle);
			draw_set_color(c_yellow);
			draw_text_ext_transformed(player_name_text_x + 140, player_name_text_y + 100, "Return", 500, 500, 1, 1, image_angle);
	    break;
	}

}

if(show_game_saved) {
	//Initialize Variables
	var draw_cam_x = camera_get_view_x(view_camera[0]);
	var draw_cam_y = camera_get_view_y(view_camera[0]);
	var player_menu_x = screen_border + draw_cam_x;
	var player_menu_y = screen_border + sep + draw_cam_y;
	
	//Draw Textbox
	draw_sprite_ext(spr_black_textbox, 0, draw_cam_x + choice_textbox_horizontal_buffer, draw_cam_y + choice_textbox_vertical_buffer, choice_textbox_buffer_width, choice_textbox_buffer_height, 0, c_white, 1);
	
	//Set Text Variables
	draw_set_font(global.menu_player_name_font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_yellow);
	var _name = global.player_name;
	var _level = string(global.player_level);
		
	//Draw Text
	var player_name_text_x = player_menu_x + 0;
	var player_name_text_y = player_menu_y + 0;
	//First Row
	draw_text_color(player_name_text_x + 40, player_name_text_y + 60, _name, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text_color(player_name_text_x + 100, player_name_text_y + 60, "LV " + _level, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	//Second Row
	draw_text_ext_transformed(player_name_text_x + 150, player_name_text_y + 60, global.game_chapter, 500, 500, 1, 1, image_angle);
	draw_text_ext_transformed(player_name_text_x + 40, player_name_text_y + 80, "\"" + global.game_chapter_description + "\"", 500, 500, .8, .8, image_angle);
	//Third Row
	switch (save_option_value)
	{
	    case "save":
	        draw_sprite_ext(spr_soul_selection_left, 0, player_name_text_x + 40, player_name_text_y + 107, .5, .5, 0, c_yellow, 1);
			draw_sprite_ext(spr_soul_selection_right, global.soul_selected, player_name_text_x + 39, player_name_text_y + 107, .5, .5, 0, c_yellow, 1);
			draw_set_color(c_yellow);
			draw_text_ext_transformed(player_name_text_x + 50, player_name_text_y + 100, "Saved!", 500, 500, 1, 1, image_angle);
	    break;

	    case "return":
	        draw_sprite_ext(spr_soul_selection_left, 0, player_name_text_x + 130, player_name_text_y + 107, .5, .5, 0, c_white, 1);
			draw_sprite_ext(spr_soul_selection_right, global.soul_selected, player_name_text_x + 129, player_name_text_y + 107, .5, .5, 0, c_white, 1);
			draw_set_color(c_white);
			draw_text_ext_transformed(player_name_text_x + 50, player_name_text_y + 100, "Save", 500, 500, 1, 1, image_angle);
			draw_set_color(c_yellow);
			draw_text_ext_transformed(player_name_text_x + 140, player_name_text_y + 100, "Return", 500, 500, 1, 1, image_angle);
	    break;
	}

}