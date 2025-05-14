if(!oBulletBoard.game_has_ended) {
	if(!global.hide_battle_menu) {
		//Draw Battle Information Text
		var hp_barwidth = (global.player_max_hp);
		var hp_barwidth_fill = (global.player_hp);
		draw_set_font(fBattleStats);
		draw_set_color(c_white);
		
		//Check if this is a boss battle otherwise show as normal
		if(global.fighting_failed_human_boss) {
			draw_set_color(c_white);
			draw_text(90, 400, global.player_name);
			
			var _soulName = getSoulName(global.soul_selected);
			var _soulNameIndex = getSoulNameIndex(_soulName);
			var _soulNameColor = getSoulDescriptionColor(_soulNameIndex);
			draw_set_color(_soulNameColor);
			//draw_text(260, 400, _soulName);
			
			//Buffer for Text Display
			var _x_buffer = 0;
			switch (_soulName)
			{
			    case "Resilience":
			        _x_buffer = 0;
			    break;

			    case "Determination":
			        _x_buffer = -30;
			    break;
		
				case "Bravery":
			        _x_buffer = 0;
			    break;
		
				case "Justice":
			        _x_buffer = 0;
			    break;
		
				case "Kindness":
			        _x_buffer = -10;
			    break;
		
				case "Patience":
			        _x_buffer = -5;
			    break;
		
				case "Integrity":
			        _x_buffer = -10;
			    break;
		
				case "Perseverance":
			        _x_buffer = -40;
			    break;
			}
			
			//Only Draw the Soul name if we can see the battle soul sprite
			if(oSoul.visible != false) {
				draw_text_transformed(260 + _x_buffer, 390, _soulName, 1.5, 1.5, 0);
			}
		} else {
			draw_text(90, 400, global.player_name + "    LV " + string(global.player_level));
		}
		
		
		if(global.fighting_failed_human_boss && !global.fighting_failed_human_boss_last_soul) {
			draw_set_color(_soulNameColor);
			//draw_text(380 + hp_barwidth, 400, string(global.player_hp) + " / ???");
		} else if(global.fighting_failed_human_boss && global.fighting_failed_human_boss_last_soul) {
			if(global.failed_human_show_player_health && global.last_soul_removed = "Resilience" && global.resilience_pattern == 2 && oSoul.visible == true) {
				draw_set_color(c_white);
				draw_text(440, 400, "HP");
				draw_text(520 + hp_barwidth, 400, string(global.player_hp) + " / " + string(global.player_max_hp));
			}
		} else {
			//Reset Text Color
			draw_set_color(c_white);
			draw_text(320, 400, "HP");
			draw_text(380 + hp_barwidth, 400, string(global.player_hp) + " / " + string(global.player_max_hp));
			
			//Draw HP Bar
			draw_set_color(c_red);
			draw_rectangle(370, 400, 370 + hp_barwidth, 418, false);
			draw_set_color(c_yellow);
			draw_rectangle(370, 400, 370 + hp_barwidth_fill, 418, false);
		}
	} else {
		if(global.fighting_failed_human_boss && !global.fighting_failed_human_boss_last_soul) {
			//DRAW NO HEALTH BAR
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
}
