//Boundary Box for Soul 
var border_left = 320 - (current_width/2);
var border_right = 320 + (current_width/2);
var border_up = 384 - current_height;
var border_down = 384;

if (current_width == 570 && current_height == 120) {
	// Set up the text writer
	if instance_exists(Dialogue) {
		Dialogue.visible = false;
		Fight.visible = false;
		Act.visible = false;
		ActML.visible = false;
		ActMR.visible = false;
		ItemL.visible = false;
		ItemR.visible = false;
		SoulL.visible = false;
		SoulR.visible = false;
		Mercy.visible = false;
	}
	
	if (oButtonController.enemySpared) {
		show_debug_message("WIN TEXT");
		battleEnd = true;
		audio_stop_sound(global.current_enemy_music);
		audio_play_sound(snd_vaporized, 11, false);
		Dialogue = instance_create_depth(border_left + 30, border_up + 15, -9999, oTextElement); //-4000
		Dialogue.TextToDraw = "* YOU WON! &* You earned 0 XP and 0 gold.";
		Dialogue.CanAdvance = false;
		oButtonController.enemySpared = false;
		global.battleMenu = -1;
	}
	
	if (oButtonController.enemyKilled) {
		show_debug_message("ENEMY KILLED TEXT");
		battleEndDelay = 180;
		battleEnd = true;
		audio_stop_sound(global.current_enemy_music);
		audio_play_sound(snd_monster_soul_destroyed, 11, false);
		Dialogue = instance_create_depth(border_left + 30, border_up + 15, -9999, oTextElement); //-4000
		Dialogue.TextToDraw = "* You won... &* You earned 6 XP and 66 gold.";
		Dialogue.CanAdvance = false;
		oButtonController.enemyKilled = false;
		global.battleMenu = -1;
	}
	
	if (oButtonController.playerKilled) {
		show_debug_message("PLAYER KILLED TEXT");
		battleEndDelay = 90;
		battleEnd = true;
		start_game_over = true;
		game_has_ended = true;
		audio_stop_sound(global.current_enemy_music);
		audio_play_sound(snd_monster_soul_destroyed, 11, false);
		oButtonController.playerKilled = false;
		global.battleMenu = -1;
	}
	
	if(battleEnd && battleEndDelay != 0 && !battleEndDelayFinished) {
		battleEndDelay--;
	}
	
	if(battleEnd && battleEndDelay == 0) {
		battleEndDelayFinished = true;
		if(start_game_over) {
			start_game_over = false;
		}
	}
	
	if(!start_game_over) {
		if (global.battleMenu == -1) {
			// Create the instance responsible for drawing text
			// GetStatusText() will fetch the text depending on your encounter
			if(!battleEnd) {
				Dialogue = instance_create_depth(border_left + 30, border_up + 15, -100, oTextElement); //-4000
				Dialogue.TextToDraw = "* You know you need to customize this. Come on!";
				if(global.fighting_failed_human_boss) {
					Dialogue.TextToDraw = global.last_soul_removed_flavor_text;
				}
				Dialogue.CanAdvance = false;
			}
			
			if(game_has_ended) {
				audio_play_sound(snd_undertale_chrome_gameover, 9, false);
				Dialogue = instance_create_depth(border_left + 30, border_up + 15, -100, oTextElement);
				Dialogue.TextToDraw = "* You cannot give up!&* Rely on your... RESILIENCE";
				Dialogue.CanAdvance = false;
			}
		
			// Fight Menu
			Fight = instance_create_depth(border_left + 50, border_up + 15, -100, oTextElement); //-4100
			for (var i = 0; i < array_length(global.monster); i++) {
				Fight.TextToDraw += "* " + global.monster[i].MyName + "&";
			}
		
			Fight.TextLength = string_length(Fight.TextToDraw);
			Fight.CanAdvance = false;
			Fight.visible = false;
		
			// ACT Menu, it's the same as FIGHT but it leads to the monster ACT commands
			Act = instance_create_depth(border_left + 50, border_up + 15, -100, oTextElement); //-4200
			for (var i = 0; i < array_length(global.monster); i++) {
				Act.TextToDraw += "* " + global.monster[i].MyName + "&";
			}
			Act.TextLength = string_length(Act.TextToDraw);
			Act.CanAdvance = false;
			Act.visible = false;
		
			//ACT Commands
			ActML = instance_create_depth(border_left + 50, border_up + 15, -100, oTextElement); 
			for (var i = 0; i < array_length(global.monster); i += 2) {
				ActML.TextToDraw += "* " + global.monster[i].Act[0] + "&";
			}
			ActML.TextLength = string_length(ActML.TextToDraw);
			ActML.CanAdvance = false;
			ActML.visible = false;
		
			ActMR = instance_create_depth(border_left + 300, border_up + 15, -100, oTextElement); 
			for (var i = 0; i < array_length(global.monster); i += 2) {
				ActMR.TextToDraw += "* " + global.monster[i].Act[1] + "&";
			}
			ActMR.TextLength = string_length(ActMR.TextToDraw);
			ActMR.CanAdvance = false;
			ActMR.visible = false;
		
			// Item Menu, this is also in two halves
			ItemL = instance_create_depth(border_left + 50, border_up + 15, -100, oTextElement); //-4300
			for (var i = 0; i < array_length(global.item); i += 2) {
				ItemL.TextToDraw += "* " + global.item[i] + "&";
			}
			ItemL.TextLength = string_length(ItemL.TextToDraw);
			ItemL.CanAdvance = false;
			ItemL.visible = false;
		
			ItemR = instance_create_depth(border_left + 300, border_up + 15, -100, oTextElement); //-4400
			for (var i = 1; i < array_length(global.item); i += 2) {
				ItemR.TextToDraw += "* " + global.item[i] + "&";
			}
			ItemR.TextLength = string_length(ItemR.TextToDraw);
			ItemR.CanAdvance = false;
			ItemR.visible = false;
			
			// Soul Menu, this is also in two halves
			var _soulName = getSoulName(global.soul_selected);
			SoulL = instance_create_depth(border_left + 50, border_up + 0, -100, oTextElement); //-4300
			for (var i = 0; i < array_length(global.item); i += 2) {
				if(global.item[i] == _soulName && !global.fighting_failed_human_boss) { //Added a validation for boss battle
					SoulL.TextToDraw += "^(" + global.item[i] + ")&";
				} else if(global.item[i] == "Resilience" && global.fighting_failed_human_boss && array_length(global.item) == 1) { //We are on the last soul option
					SoulL.TextToDraw += "^" + global.item[i] + "&";
				} else if(global.fighting_failed_human_boss && array_length(global.item) > 1) { //Set the default soul colors in this boss battle
					var _soulColor = "";
					switch (global.item[i])
					{
					    case "Resilience":
					        _soulColor = "R";
					    break;
					    case "Determination":
					        _soulColor = "D";
					    break;
						case "Bravery":
					        _soulColor = "B";
					    break;
						case "Justice":
					        _soulColor = "J";
					    break;
						case "Kindness":
					        _soulColor = "K";
					    break;
						case "Patience":
					        _soulColor = "P";
					    break;
						case "Integrity":
					        _soulColor = "I";
					    break;
						case "Perseverance":
					        _soulColor = "V";
					    break;
						
					}
					SoulL.TextToDraw += "^" + _soulColor + global.item[i] + "&";
				} else {
					SoulL.TextToDraw += "{* " + global.item[i] + "&";
				}
			}
			SoulL.TextLength = string_length(SoulL.TextToDraw);
			SoulL.CanAdvance = false;
			SoulL.visible = false;
		
			SoulR = instance_create_depth(border_left + 300, border_up + 0, -100, oTextElement); //-4400
			for (var i = 1; i < array_length(global.item); i += 2) {
				if(global.item[i] == _soulName) {
					SoulR.TextToDraw += "^(" + global.item[i] + ")&";
				} else if(global.fighting_failed_human_boss && array_length(global.item) > 1) { //Set the default soul colors in this boss battle
					var _soulColor = "";
					switch (global.item[i])
					{
					    case "Resilience":
					        _soulColor = "R";
					    break;
					    case "Determination":
					        _soulColor = "D";
					    break;
						case "Bravery":
					        _soulColor = "B";
					    break;
						case "Justice":
					        _soulColor = "J";
					    break;
						case "Kindness":
					        _soulColor = "K";
					    break;
						case "Patience":
					        _soulColor = "P";
					    break;
						case "Integrity":
					        _soulColor = "I";
					    break;
						case "Perseverance":
					        _soulColor = "V";
					    break;
						
					}
					SoulR.TextToDraw += "^" + _soulColor + global.item[i] + "&";
				}  else {
					SoulR.TextToDraw += "{* " + global.item[i] + "&";
				}
			}
			SoulR.TextLength = string_length(SoulR.TextToDraw);
			SoulR.CanAdvance = false;
			SoulR.visible = false;
		
			// MERCY Menu
			Mercy = instance_create_depth(border_left + 50, border_up + 15, -100, oTextElement); //-4500
			for (var i = 0; i < array_length(global.monster); i++) {
				if instance_exists(global.monster[i]) {
					if global.monster[i].CanSpare {
						Mercy.TextToDraw += "^";
						break;
					}
				}
			}
			Mercy.TextToDraw += "* Spare{&* Flee";
			if (!global.canFlee) {
				Mercy.TextToDraw += "* Spare";
			}
			Mercy.TextLength = string_length(Mercy.TextToDraw);
			Mercy.CanAdvance = false;
			Mercy.visible = false;
			global.battleMenu = 0;
		}
	
		if (global.battleMenu == 0) {
			if (instance_exists(Dialogue)) {
			    Dialogue.visible = true;
			} else {
			    //show_debug_message("Dialogue instance no longer exists when trying to set visibility.");
			}
		}
		
		if (global.battleMenu == 1) {
			Fight.visible = true;
		}
	
		if (global.battleMenu == 2) {
			Act.visible = true;
		}
	
		if (global.battleMenu == 2.5) {
			ActML.visible = true;
			ActMR.visible = true;
		} else {
			ActML.visible = false;
			ActMR.visible = false;
		}
	
		if (global.battleMenu == 3) {
			//ItemL.visible = true;
			//ItemR.visible = true;
			SoulL.visible = true;
			SoulR.visible = true;
		}
	
		if (global.battleMenu == 4) {
			Mercy.visible = true;
		}
	}
}

// Restricts the SOUL to the Bullet Board boundaries
oSoul.x = clamp(oSoul.x, border_left + 7, border_right - 7);
oSoul.y = clamp(oSoul.y, border_up + 7, border_down - 7);
draw_set_color(c_white);
draw_rectangle(border_left - 4, border_up - 4, border_right + 4, border_down + 4, false);
draw_set_color(c_black);
draw_rectangle(border_left, border_up, border_right, border_down, false);
