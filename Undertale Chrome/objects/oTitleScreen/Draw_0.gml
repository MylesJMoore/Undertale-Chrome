/// @description Draw the title screen
if(!hide_title) {
	switch (title_screen_active)
	{
	    case 1:
			draw_sprite_ext(spr_title_1, 0, title_1_x, title_1_y, title_1_x_scale, title_1_y_scale, 0, c_white, 1);
	    break;

	    case 2:
			//First Title
			draw_sprite_ext(spr_title_1, 0, title_1_x, title_1_y, title_1_x_scale, title_1_y_scale, 0, c_white, 1);
		
			//Second Title
			draw_sprite_ext(spr_title_2, 0, title_2_x, title_2_y, title_2_x_scale, title_2_y_scale, 0, c_dkgray, 1);
			draw_sprite_ext(spr_title_2, 0, title_2_x, title_2_y  + 3, title_2_x_scale, title_2_y_scale, 0, c_silver, 1);
	    break;
	}
}

if(show_credits) {
    var start_y = credits_y_created; // You start at 200, so it's offscreen
    var x_pos = 64; // Adjust horizontally as needed

    for (var i = 0; i < array_length(credits_lines); i++) {
		switch (i)
		{
		    case 3:
		        draw_set_color(c_white);
		    break;
			
			case 4:
		        draw_set_color(c_white);
		    break;
			
			case 9:
		        draw_set_color(c_white);
		    break;
			
			case 12:
		        draw_set_color(c_white);
		    break;
			
			case 13:
		        draw_set_color(c_white);
		    break;
			
			case 19:
		        draw_set_color(c_yellow);
		    break;
			
			case 20:
		        draw_set_color(c_orange);
		    break;
			
			case 21:
		        draw_set_color(c_green);
		    break;
			
			case 22:
		        draw_set_color(c_purple);
		    break;
			
			case 23:
		        draw_set_color(c_navy);
		    break;

		    default:
		        draw_set_color(c_yellow);
		    break;
		}
		

        draw_text_ext_transformed(x_pos, start_y + (i * 48), credits_lines[i], 500, 500, 1, 1, 0);
    }
}

if (show_chapter_1_coming_soon) {
	draw_text_ext_transformed(64, 100, "...Chapter 1 soon.", 500, 500, 1, 1, 0);
}

if(show_pulsing_soul) {
	// Get current viewport position and dimensions
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	var cam_w = camera_get_view_width(view_camera[0]);
	var cam_h = camera_get_view_height(view_camera[0]);

	// Set chrome soul at center of viewport
	var chrome_soul_x = cam_x + cam_w / 2;
	var chrome_soul_y = cam_y + cam_h / 2;

	// Draw Chrome Soul with pulsing effect
	if(draw_chrome_soul) {
	    draw_sprite_ext(spr_cutscene_soul_chrome, 0, chrome_soul_x + xbuffer, chrome_soul_y + ybuffer, chrome_scale_factor, chrome_scale_factor, 0, c_white, chrome_soul_alpha);

	    // Draw rotating souls around Chrome Soul
	    for (var i = 0; i < soul_count; i++) {
	        var angle = rotation_angle + (360 / soul_count) * i;
	        var soul_x = chrome_soul_x + lengthdir_x(circle_radius, angle);
	        var soul_y = chrome_soul_y + lengthdir_y(circle_radius, angle);

	        if(souls_activated > i) {
	            draw_sprite_ext(soul_sprites[i], 0, soul_x, soul_y + ybuffer, chrome_scale_base, chrome_scale_base, 0, c_white, soul_alpha[i]);
	        }
	    }
		
		draw_text_ext_transformed(64, 150, "See you in Chapter 1!", 500, 500, 1, 1, 0);

	    // Reset alpha to default
	    draw_set_alpha(1);
	}
}
