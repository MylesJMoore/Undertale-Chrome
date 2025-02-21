/// @function unfreezePlayer
function unfreezePlayer() {
	global.player_can_move = true;
	obj_player.image_speed = 1;
	if (instance_exists(obj_follower1)) {
		obj_follower1.image_speed = 1;
	}
	
	if (instance_exists(obj_follower2)) {
		obj_follower2.image_speed = 1;
	}
	
	if (instance_exists(obj_follower3)) {
		obj_follower3.image_speed = 1;
	}
}

/// @function freezePlayer
function freezePlayer() {
	global.player_can_move = false;
	obj_player.image_speed = 0;
	if (instance_exists(obj_follower1)) {
		obj_follower1.image_speed = 0;
	}
	
	if (instance_exists(obj_follower2)) {
		obj_follower2.image_speed = 0;
	}
	
	if (instance_exists(obj_follower3)) {
		obj_follower3.image_speed = 0;
	}
}