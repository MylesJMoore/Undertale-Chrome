// For long conversations such as in cutscenes, use an array to store your next few lines
// In this case, I've set it to have 256 total lines if they are all full, but you can use up to 32,000
// Of course, nobody is stupid enough to actually have 32,000 lines of dialogue in a single cutscene
		
// EXAMPLE:
// Dialogue.TextToDraw = "* Hi guys, I'm present.&* Where's my cookie?";
// Dialogue.TextQueue[0] = "* Sorry, you don't get one.";
// Dialogue.TextQueue[1] = "* WHAT DO YOU MEAN?";
// Dialogue.TextQueue[2] = "* I WAS WORKING FOR 60 HOURS&  AND YOU HAVEN'T GIVEN ME ONE!";
// Dialogue.TextQueue[3] = "* Sorry, mate. But I'm afraid&  you still don't get one...";
		
// EXAMPLE FROM UNDERTALE REJUVENATION
// Dialogue.TextToDraw = "* The Great Papyrus&  110 - ATK, 80 - DEF.";
// Dialogue.TextQueue[0] = "* Can't take damage...&* Maybe try tiring him out!";
		
// Sets the menu state to enable menu navigation
// Also gets us out of this loop so that you don't create infinite writers, which would cause a memory leak and crash the game
			
// Colour and font
var colour = DefaultColour;
var font = DefaultFont;

// Default positioning
var sentence_x = 0;
var sentence_y = 0;

// Set the parameters for the space between letters and lines, mess with it all you want
var line_spacing = LineSpacing;
var letter_spacing = LetterSpacing;

// Draws every letter that it has so far
for (var i = 0; i < TextLength; i++) {
	// Makes the text colour default, you can set it to whatever you want if you use the code below
	if string_char_at(TextToDraw, i + 1) == "~" {
		if string_char_at(TextToDraw, i + 2) == "R"
			colour = c_red;
		if string_char_at(TextToDraw, i + 2) == "O"
			colour = c_orange;
		if string_char_at(TextToDraw, i + 2) == "Y"
			colour = c_yellow;
		if string_char_at(TextToDraw, i + 2) == "G"
			colour = c_lime;
		if string_char_at(TextToDraw, i + 2) == "A"
			colour = c_aqua;
		if string_char_at(TextToDraw, i + 2) == "B"
			colour = c_blue;
		if string_char_at(TextToDraw, i + 2) == "P"
			colour = c_fuchsia;
		if string_char_at(TextToDraw, i + 2) == "S"
			colour = c_silver;
		if string_char_at(TextToDraw, i + 2) == "E"
			colour = c_gray;
		if string_char_at(TextToDraw, i + 2) == "D"
			colour = DefaultColour;
		i += 2;
		continue;
	}
	
	// New line, use "}&" to include the & symbol otherwise it gets cancelled out
	// USAGE: "89 Snowdin Lane&Underground }& Co"
	if (string_char_at(TextToDraw, i + 1) == "&" && string_char_at(TextToDraw, i) != "}") {
		sentence_x = 0;
		sentence_y += line_spacing;
		i += 1;
	}
	
	// Used for text delays. Only use this for some long or creepy sentences.
	// USAGE: "@4You'd be dead where you stand."
	if (string_char_at(TextToDraw, i + 1) == "@") {
		TextDelay = 2 * real(string_char_at(TextToDraw, i + 2));
		if (TextDelay < 2) {
			TextDelay = 2;
		}
		i += 2;
	}
	
	//End text delays. Only use this for some long or creepy sentences.
	// USAGE: "* Your... @4Resilience% is unwavering."
	if (string_char_at(TextToDraw, i + 1) == "%") {
	    // Set TextDelay to 0 as specified
	    TextDelay = 0;
    
	    // Decrease `i` to account for the shift in characters after modifying the string
	    i += 1;
	}
	
	// For the Soul Selection Battle Menu or any text element you can set a selection color
	// USAGE: "89 ^Snowdin {Lane&Underground }& Co"
	if (string_char_at(TextToDraw, i + 1) == "^") {
		if(global.fighting_failed_human_boss && !global.fighting_failed_human_boss_last_soul) {
			if string_char_at(TextToDraw, i + 2) == "R"
				colour = c_gray;
			if string_char_at(TextToDraw, i + 2) == "D"
				colour = c_red;
			if string_char_at(TextToDraw, i + 2) == "B"
				colour = c_orange;
			if string_char_at(TextToDraw, i + 2) == "J"
				colour = c_yellow;
			if string_char_at(TextToDraw, i + 2) == "K"
				colour = c_green;
			if string_char_at(TextToDraw, i + 2) == "P"
				colour = c_aqua;
			if string_char_at(TextToDraw, i + 2) == "I"
				colour = c_navy;
			if string_char_at(TextToDraw, i + 2) == "V"
				colour = c_fuchsia;
			i += 1;
			continue;
		}
		
		colour = c_yellow;
		//i += 2;
		continue;
	} else if (string_char_at(TextToDraw, i + 1) == "{") {
		colour = DefaultColour;
		//i += 2;
		continue;
	}
	
	draw_set_color(colour);
	draw_set_font(font);
	// Draw the letters with the correct spacing, as defined above
	if(!IsBubbleText) {
		//draw_text(x + sentence_x, y + sentence_y, string_char_at(TextToDraw, i + 1)); //NOT TRANSFORMED TEXT
		draw_text_transformed(x + sentence_x + TextBufferX, y + sentence_y + TextBufferY, string_char_at(TextToDraw, i + 1), TextScaleX, TextScaleY, 0);
	} else {
		draw_text_transformed(x + sentence_x + BubbleBufferX, y + sentence_y + BubbleBufferY, string_char_at(TextToDraw, i + 1), 1, 1, 0);
	}
	sentence_x += letter_spacing;
}

// Sets the number of letters to draw, it ignores everything that we cancelled out above
if IsWriting {
	CurrentDelay += 1;
	if (CurrentDelay >= TextDelay) {
		CurrentDelay = 0;
		TextLength += 1;
		
		// Play the sound only when a new character is added
        if (TextLength > LastTextLength) {
            LastTextLength = TextLength; // Update the tracked length
            if (!audio_is_playing(DefaultSpeakerSound) && room != rm_battle) {
                audio_play_sound(DefaultSpeakerSound, 8, false); // Play the sound once
            }
        }
		
		// Puts half a second of delay inbetween sentences.
		// USAGE: "I told you. I emptied the trash! What else do you want?"
		if (string_char_at(TextToDraw, TextLength) == "." || string_char_at(TextToDraw, TextLength) == "?" || string_char_at(TextToDraw, TextLength) == "!") {
			CurrentDelay = -30;
		}
		
		// Slight pause in the middle of a sentence.
		// USAGE: "Well, don't you have anything else? I can help, it's the least I can do."
		if (string_char_at(TextToDraw, TextLength) == ",") {
			CurrentDelay = -15;
		}
		
		// Stops writing the text
		if (TextLength >= string_length(TextToDraw)) {
			IsWriting = false;
		}
	}
	if (keyboard_check(ord("X")) || keyboard_check(ord("C")) || gamepad_button_check(0, gp_face2)) {
		TextLength = string_length(TextToDraw);
		IsWriting = false;
	}
}
else {
	// Moves on to the next line of text, or destroy the writer
	if ((keyboard_check_pressed(ord("Z")) || keyboard_check(ord("C")) || gamepad_button_check(0, gp_face1)) && CanAdvance) {
		TextLength = 0;
		LastTextLength = 0;
		TextDelay = 2;
		CurrentDelay = 0;
		
		// Checks if there is any text in the queue
		if variable_instance_exists(id, "TextQueue") {
			// Checks if the queue is exhausted
			// Without this, your game will CRASH because it's trying to look in an unknown area of memory
			if (NumInQueue >= array_length(TextQueue)) {
				instance_destroy();
				exit;
			}
			TextToDraw = TextQueue[NumInQueue];
		}
		else {
			// Sets the text to a signalling value to destroy the instance
			TextToDraw = "{end}";
		}
		
		IsWriting = true;
		if (TextToDraw == "" || TextToDraw == "{end}") {
			instance_destroy();
			show_debug_message("DESTROYING TEXT");
		}
		NumInQueue += 1;
	}
}