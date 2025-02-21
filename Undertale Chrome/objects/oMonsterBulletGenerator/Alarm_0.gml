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

//Menu Defaults
SetBattleMenuDefaults();

//Cleanup Objects
CleanupBattleObjects();

//Turn off this Alarm
alarm[0] = false;