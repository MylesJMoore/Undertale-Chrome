/// @function BattleFlee

function BattleFlee(_room = false, _x = false, _y = false) {
	//Return player to Overworld based on if it is a normal fight or failed human boss fight
	if(oBulletBoard.failed_human_boss_ended) {
		//Go to Mt. Ebbott
		room_goto(rm_mt_ebbot_base);
		global.player_previous_x = 100;
		global.player_previous_y = 215;
		global.player_previous_sprite_face = DOWN;
		
	} else {
		//Return player back to previous Overworld
		room_goto(global.player_previous_room);
	}
	
	//Remove Player and Follower Objects
	RemovePlayerAndFollowers();
	
	//Create the player object
	global.player_left_battle = true;
	instance_create_layer(global.player_previous_x, global.player_previous_y, "Player", obj_player);
	
	//Reset player move flag for follower creation
	global.player_has_moved = false;
	
	//Reset enemy global
	global.current_enemy_macro = noone;
	
	//Reset Battle Trigger flag
	global.player_triggered_battle = false;
	
	//Stop Gameover Music If Playing
	if(audio_is_playing(snd_undertale_chrome_gameover)) {
		audio_stop_sound(snd_undertale_chrome_gameover);
	}
}