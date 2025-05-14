#region Battle Border Box
global.border_height = 120;
global.border_width = 120;
oSoul.x = 320;
oSoul.y = 384 - (global.border_height / 2);
oSoul.visible = true;
global.battle_border_width = 120;
global.battle_border_height = 120;
#endregion

#region Enemy Speech Bubbles
//Enemy Speech Bubble
var _speechx = x + 175;
var _speechy = y;

//Set the bubble text
switch (global.last_soul_removed) {
    case "Determination": // Determination
        SpeechBubble[0] = "You're no Frisk.&Not even close.";
        break;
    case "Bravery": // Bravery
        SpeechBubble[0] = "You've died&before.Why keep&coming back?";
        break;
    case "Justice": // Justice
        SpeechBubble[0] = "Like the Yellow&one...&You think I fear&bullets?";
        break;
    case "Kindness": // Kindness
        SpeechBubble[0] = "The Green one&cried...&then vanished.";
        break;
    case "Patience": // Patience
        SpeechBubble[0] = "Patience breaks&before bones do.";
        break;
    case "Integrity": // Integrity
        SpeechBubble[0] = "The Blue human&showed Integrity.&It meant NOTHING&to me.";
        break;
    case "Perseverance": // Perseverance
        SpeechBubble[0] = "I hope you know.&The Purple path&led nowhere too.";
        break;
	case "Resilience": // Resilience
		if(global.resilience_pattern == 0) {
			SpeechBubble[0] = "Enough.";
		} else if(global.resilience_pattern == 1) {
			SpeechBubble[0] = "Sorry Prisma...&The only way out&is by losing &the Chrome Soul.";
			audio_stop_sound(snd_asgore_slowed);
		} else if(global.resilience_pattern == 2) {
			SpeechBubble[0] = "Goodbye.";
		} else {
			SpeechBubble[0] = "...";
		}
        break;
    default:
        SpeechBubble[0] = "...";
        break;
}

if(global.battle_turn == 0) {
	SpeechBubble[0] = "8 Souls fused...&Chrome Soul...&I want it...";
}

// Clear any existing bubble text
if (instance_exists(SpeechBubbleDialogue)) {
    instance_destroy(SpeechBubbleDialogue);
}
if (instance_exists(obj_speech_bubble)) {
    instance_destroy(obj_speech_bubble);
}

// Create the text bubble instance
SpeechBubbleDialogue = instance_create_depth(_speechx, _speechy, -9999, oBubbleTextElement); 

// Populate the text queue dynamically
SpeechBubbleDialogue.TextQueue = SpeechBubble; // Assigns the entire SpeechBubble array from TestMonster
SpeechBubbleDialogue.NumInQueue = 0; // Start from the first line of dialogue
SpeechBubbleDialogue.TextToDraw = SpeechBubbleDialogue.TextQueue[SpeechBubbleDialogue.NumInQueue];

// Configure the speech bubble's appearance
SpeechBubbleDialogue.CanAdvance = false; 
SpeechBubbleDialogue.DisableSkipping = true;
SpeechBubbleDialogue.IsBubbleText = true;
SpeechBubbleDialogue.DefaultColour = c_black;
SpeechBubbleDialogue.DefaultFont = fUndertale;
SpeechBubbleDialogue.LineSpacing = 15;
SpeechBubbleDialogue.LetterSpacing = 7;
SpeechBubbleDialogue.BubbleBufferX = 30;
SpeechBubbleDialogue.BubbleBufferY = 9;

//Create Visual Bubble behind text
instance_create_depth(_speechx, _speechy, -9000, obj_speech_bubble);
#endregion

#region Enemy Bullet Creation
//Default to Resilience
global.monster_bullet_pattern = 19;
if(global.battle_turn == 0) {
	 //FIRST TURN: Only Show Dialogue in Bullet Pattern
	global.dialogue_only_bullet_pattern = true;
} else {
	switch (global.last_soul_removed) {
	    case "Determination": // Determination
	        global.monster_bullet_pattern = 12;
	        break;
	    case "Bravery": // Bravery
	        global.monster_bullet_pattern = 13;
	        break;
	    case "Justice": // Justice
	        global.monster_bullet_pattern = 14;
	        break;
	    case "Kindness": // Kindness
	        global.monster_bullet_pattern = 15;
	        break;
	    case "Patience": // Patience
	        global.monster_bullet_pattern = 16;
	        break;
	    case "Integrity": // Integrity
	        global.monster_bullet_pattern = 17;
	        break;
	    case "Perseverance": // Perseverance
	        global.monster_bullet_pattern = 18;
	        break;
	    default:
	        global.monster_bullet_pattern = 19;
	        break;
	}
}
instance_create_depth(x, y, 3000, oMonsterBulletGenerator);

#endregion



