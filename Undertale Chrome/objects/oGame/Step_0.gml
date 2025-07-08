if(room == rm_items) {
	global.dialogue_global_vertical_adjustment = -7;
}

global.player_attack = global.player_base_attack + getSoulAttackBonus(global.soul_selected);
global.player_defense = global.player_base_attack + getSoulDefenseBonus(global.soul_selected);
global.current_room = room;

//Override Child Sprites if we are not in the truelab rooms
if(global.current_room == rm_true_lab_1 || global.current_room == rm_true_lab_2 ||global.current_room == rm_true_lab_3 ||
	global.current_room == rm_true_lab_4 || global.current_room == rm_true_lab_5 || global.current_room == rm_true_lab_6 ||
	global.current_room == rm_true_lab_6b || global.current_room == rm_true_lab_7 || global.current_room == rm_true_lab_8) 
{
	//Child Sprites
	obj_player.sprite[RIGHT] = s_prisma_child_walk_right;
	obj_player.sprite[UP] = s_prisma_child_walk_up;
	obj_player.sprite[LEFT] = s_prisma_child_walk_left;
	obj_player.sprite[DOWN] = s_prisma_child_walk_down;
	obj_player.sprite[IDLERIGHT] = s_prisma_child_right;
	obj_player.sprite[IDLEUP] = s_prisma_child_up;
	obj_player.sprite[IDLELEFT] = s_prisma_child_left;
	obj_player.sprite[IDLEDOWN] = s_prisma_child_down;
} else if(instance_exists(obj_player)) {
	//Adult Player Sprites
	obj_player.sprite[RIGHT] = PLAYER_RIGHT;
	obj_player.sprite[UP] = PLAYER_UP;
	obj_player.sprite[LEFT] = PLAYER_LEFT;
	obj_player.sprite[DOWN] = PLAYER_DOWN;
	obj_player.sprite[IDLERIGHT] = PLAYER_IDLERIGHT;
	obj_player.sprite[IDLEUP] = PLAYER_IDLEUP;
	obj_player.sprite[IDLELEFT] = PLAYER_IDLELEFT;
	obj_player.sprite[IDLEDOWN] = PLAYER_IDLEDOWN;
}

//Check if prologue flag for boss cutscene was set and trigger the cutscene
if(global.start_prologue_cutscene && !instance_exists(obj_textbox)) {
	TriggerCutscene(IDLEDOWN, IDLEDOWN, IDLEDOWN, IDLEDOWN, PROLOGUE_CHROME_SOUL_BOSS_FIGHT);
	global.start_prologue_cutscene = false;
}