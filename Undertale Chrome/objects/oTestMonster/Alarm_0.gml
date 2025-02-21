global.border_height = 120;
global.border_width = 120;
oSoul.x = 320;
oSoul.y = 384 - (global.border_height / 2);
oSoul.visible = true;
//oSoul.image_angle = oSoul.up;
global.battle_border_width = 120;
global.battle_border_height = 120;

//Enemy Speech Bubble
var _speechx = x + 175;
var _speechy = y;

// Create the text bubble instance
SpeechBubbleDialogue = instance_create_depth(_speechx, _speechy, -9999, oBubbleTextElement); 

// Populate the text queue dynamically
SpeechBubbleDialogue.TextQueue = SpeechBubble; // Assigns the entire SpeechBubble array from TestMonster
SpeechBubbleDialogue.NumInQueue = 0; // Start from the first line of dialogue
SpeechBubbleDialogue.TextToDraw = SpeechBubbleDialogue.TextQueue[SpeechBubbleDialogue.NumInQueue];

// Configure the speech bubble's appearance
SpeechBubbleDialogue.CanAdvance = true; 
SpeechBubbleDialogue.IsBubbleText = true;
SpeechBubbleDialogue.DefaultColour = c_black;
SpeechBubbleDialogue.DefaultFont = fUndertale;
SpeechBubbleDialogue.LineSpacing = 15;
SpeechBubbleDialogue.LetterSpacing = 7;
SpeechBubbleDialogue.BubbleBufferX = 30;
SpeechBubbleDialogue.BubbleBufferY = 9;

//Create Visual Bubble behind text
instance_create_depth(_speechx, _speechy, -9000, obj_speech_bubble);

//Enemy Bullet Creation
global.monster_bullet_pattern = irandom_range(0,11); //Randomly Select a Bullet Pattern
global.dialogue_only_bullet_pattern = false; //Only Show Dialogue in Bullet Pattern
instance_create_depth(x, y, 3000, oMonsterBulletGenerator);