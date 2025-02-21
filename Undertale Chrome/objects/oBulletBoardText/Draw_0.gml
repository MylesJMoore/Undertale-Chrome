if(!oBulletBoard.game_has_ended) {
	if(!global.hide_battle_menu) {
		//Draw Battle Information Text
		var hp_barwidth = (global.player_max_hp);
		var hp_barwidth_fill = (global.player_hp);
		draw_set_font(fBattleStats);
		draw_set_color(c_white);
		draw_text(90, 400, global.player_name + "    LV " + string(global.player_level));
		draw_text(380 + hp_barwidth, 400, string(global.player_hp) + " / " + string(global.player_max_hp));
		draw_text(320, 400, "HP");
		
		//Draw HP Bar
		draw_set_color(c_red);
		draw_rectangle(370, 400, 370 + hp_barwidth, 418, false);
		draw_set_color(c_yellow);
		draw_rectangle(370, 400, 370 + hp_barwidth_fill, 418, false);
	} else {
		//Draw HP Bar Only
		var hp_barwidth = (global.player_max_hp);
		var hp_barwidth_fill = (global.player_hp);
		draw_set_font(fBattleStats);
		draw_set_color(c_white);
		draw_text(320 + bypass_x_offset, 400, "HP");
		draw_text(380 + hp_barwidth + bypass_x_offset, 400, string(global.player_hp) + " / " + string(global.player_max_hp));
		draw_set_color(c_red);
		draw_rectangle(370 + bypass_x_offset, 400, 370 + hp_barwidth + bypass_x_offset, 418, false);
		draw_set_color(c_yellow);
		draw_rectangle(370 + bypass_x_offset, 400, 370 + hp_barwidth_fill + bypass_x_offset, 418, false);
	}
}
