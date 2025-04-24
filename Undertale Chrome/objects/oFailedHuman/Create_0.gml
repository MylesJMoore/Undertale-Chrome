// Failed Human Clone Boss - Create Event Setup

MyName = "Failed Human";
OverworldObject = noone;
EnemyMusicIndex = 0;

MyHP = 999999;
MyMaxHP = 999999;

CheckDescription[0] = "* A failed human experiment.";
CheckDescription[1] = "* There's no light in its eyes.";

if(global.battle_turn == 0) {
	SpeechBubble[0] = "8 Souls fused...&Chrome Soul...&I want it...";
}

switch (global.last_soul_removed) {
    case 1: // Determination
        SpeechBubble[0] = "You're no Frisk.&Not even close.";
        break;
    case 2: // Bravery
        SpeechBubble[0] = "You've died before.&Why keep coming back?";
        break;
    case 3: // Justice
        SpeechBubble[0] = "Like the Yellow one...&you think I fear bullets?";
        break;
    case 4: // Kindness
        SpeechBubble[0] = "The Green one cried...&then vanished.";
        break;
    case 5: // Patience
        SpeechBubble[0] = "Patience breaks&before bones do.";
        break;
    case 6: // Integrity
        SpeechBubble[0] = "Blue meant Integrity.&It meant nothing to me.";
        break;
    case 7: // Perseverance
        SpeechBubble[0] = "I hope you know.&The Purple path led nowhere too.";
        break;
    default:
        SpeechBubble[0] = "...Another one falls.";
        break;
}

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