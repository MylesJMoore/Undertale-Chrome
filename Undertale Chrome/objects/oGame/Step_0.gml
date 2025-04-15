if(room == rm_items) {
	global.dialogue_global_vertical_adjustment = -7;
}

global.player_attack = global.player_base_attack + getSoulAttackBonus(global.soul_selected);
global.player_defense = global.player_base_attack + getSoulDefenseBonus(global.soul_selected);
global.current_room = room;

//Check if we are in the prologue and set the truelab flag
if(global.game_chapter == "Prologue") {
	//global.in_truelab = true;
}

//Check if prologue flag for boss cutscene was set and trigger the cutscene
if(global.start_prologue_cutscene && !instance_exists(obj_textbox)) {
	TriggerCutscene(IDLEDOWN, IDLEDOWN, IDLEDOWN, IDLEDOWN, PROLOGUE_CHROME_SOUL_BOSS_FIGHT);
	global.start_prologue_cutscene = false;
}