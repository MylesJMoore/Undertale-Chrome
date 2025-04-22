// Failed Human Clone Boss - Create Event Setup

MyName = "???";
OverworldObject = noone;
EnemyMusicIndex = 0;

MyHP = 120;
MyMaxHP = 120;

CheckDescription[0] = "* A failed human experiment.";
CheckDescription[1] = "* There's no light in its eyes.";

SpeechBubble[0] = "...Soul...";

Act[0] = "Check";
Act[1] = "Plead";
ShowHealthBar = true;
CanSpare = true;

Attack = 4;
Defense = 0;

Dialogue = noone;
SpeechBubbleDialogue = noone;
ReadyForBattle = false;

// Monster Status
Taunted = false;
Killed = false;

// Effects
ShakeEffect = 0;
Myself = -1;
DodgeAnim = 0;
Siner = 0;

// Misc
MySpeechBubble = noone;
Turn = 0;

// Enemy Music Setup
oSFX.enemyName = MyName;
oSFX.enemyMusicIndex = EnemyMusicIndex;
oSFX.enemyBattleThemeLoop = false;

global.current_enemy_name = MyName;
global.current_enemy_overworld_obj = OverworldObject;
global.current_enemy_music_index = EnemyMusicIndex;

// Sprite Scale
image_xscale = 1.5;
image_yscale = 1.5;