/// @description End of Bullet Pattern
//Check if Enemy has been defeated
if (global.monster[0].MyHP > 0) {
	//Hide the Monster Soul Sprite for the next Bullet Pattern
	oMonsterSoul.image_alpha = 0;
}

//Make Player Soul Invisible/Unable to Shoot
oSoul.visible = false;
global.soulCanShoot = false; 

//Reset Hide Battle Menu Flag if on
if(global.hide_battle_menu) {
	global.hide_battle_menu = false;
}

//Check if we are on final turn of the failed human boss battle
if(global.fighting_failed_human_boss_last_soul) {
	global.resilience_pattern++;
}		

//Menu Defaults
SetBattleMenuDefaults();

//Increment turn count
global.battle_turn++;

//START PLAYING ENEMY BOSS MUSIC
if(global.fighting_failed_human_boss && global.battle_turn == 1) {
	oSFX.enemyBattleThemeLoop = true;
}

if(global.fighting_failed_human_boss && global.battle_turn > 1) {
	if(global.resilience_pattern > 0) {
		oFailedHuman.image_index = 8;
	} else {
		oFailedHuman.image_index = 4;
	}
}

//Cleanup Objects
CleanupBattleObjects();

//Turn off this Alarm
alarm[0] = false;