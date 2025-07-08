//Player Variables
xspeed = 0;
yspeed = 0;
move_speed = 1;

//Player Sprites with Macros
sprite[RIGHT] = PLAYER_RIGHT;
sprite[UP] = PLAYER_UP;
sprite[LEFT] = PLAYER_LEFT;
sprite[DOWN] = PLAYER_DOWN;
sprite[IDLERIGHT] = PLAYER_IDLERIGHT;
sprite[IDLEUP] = PLAYER_IDLEUP;
sprite[IDLELEFT] = PLAYER_IDLELEFT;
sprite[IDLEDOWN] = PLAYER_IDLEDOWN;
face = DOWN;

//Set sprite to the child sprite when we are in True Lab
/*
if(global.in_truelab && !global.player_set_to_child) {
	obj_player.sprite[RIGHT] = s_prisma_child_walk_right;
	obj_player.sprite[UP] = s_prisma_child_walk_up;
	obj_player.sprite[LEFT] = s_prisma_child_walk_left;
	obj_player.sprite[DOWN] = s_prisma_child_walk_down;
	obj_player.sprite[IDLERIGHT] = s_prisma_child_right;
	obj_player.sprite[IDLEUP] = s_prisma_child_up;
	obj_player.sprite[IDLELEFT] = s_prisma_child_left;
	obj_player.sprite[IDLEDOWN] = s_prisma_child_down;
	global.player_set_to_child = true;
}
*/

//Set sprite to Loafboy when doing announcements
if(room == rm_true_lab_announcements) {
	obj_player.sprite[RIGHT] = s_loafboy_walk_right;
	obj_player.sprite[UP] = s_loafboy_walk_up;
	obj_player.sprite[LEFT] = s_loafboy_walk_left;
	obj_player.sprite[DOWN] = s_loafboy_walk_down;
	obj_player.sprite[IDLERIGHT] = s_loafboy_right;
	obj_player.sprite[IDLEUP] = s_loafboy_up;
	obj_player.sprite[IDLELEFT] = s_loafboy_left;
	obj_player.sprite[IDLEDOWN] = s_loafboy_down;
}

//Player Sprite Direction Information
sprite_information[RIGHT] = "Right";
sprite_information[UP] = "Up";
sprite_information[LEFT] = "Left";
sprite_information[DOWN] = "Down";
sprite_information[IDLERIGHT] = "Right";
sprite_information[IDLEUP] = "Up";
sprite_information[IDLELEFT] = "Left";
sprite_information[IDLEDOWN] = "Down";
current_direction = "Down";

//Player Recorded Positions for NPC Follow
recordedPositions = 94;
for (var i = recordedPositions -1; i >= 0; i--) {
	pos_x[i] = x;
	pos_y[i] = y;
	pos_face[i] = IDLEDOWN;
}


