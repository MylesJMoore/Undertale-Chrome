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
	// Text color changes
    if string_char_at(TextToDraw, i + 1) == "~" {
        var col_code = string_char_at(TextToDraw, i + 2);
        switch (col_code) {
            case "R": colour = c_red; break;
            case "O": colour = c_orange; break;
            case "Y": colour = c_yellow; break;
            case "G": colour = c_lime; break;
            case "A": colour = c_aqua; break;
            case "B": colour = c_blue; break;
            case "P": colour = c_fuchsia; break;
            case "D": colour = DefaultColour; break;
        }
        i += 2; // Skip the color code characters
    }
	
	draw_set_color(colour);
	draw_set_font(font);
	
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
	
	// Draw the letters with the correct spacing, as defined above
	if(!IsBubbleText) {
		draw_text(x + sentence_x, y + sentence_y, string_char_at(TextToDraw, i + 1));
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
	if (keyboard_check(ord("X")) || keyboard_check(ord("C")) || (gamepad_button_check_pressed(0, gp_face2))) {
		TextLength = string_length(TextToDraw);
		IsWriting = false;
	}
}
else {
	// Moves on to the next line of text, or destroy the writer
	if ((keyboard_check_pressed(ord("Z")) || keyboard_check(ord("C")) || (gamepad_button_check_pressed(0, gp_face1))) && CanAdvance) {
	    TextLength = 0;
	    TextDelay = 2;
	    CurrentDelay = 0;
		
		// Increment the queue index BEFORE updating TextToDraw
		NumInQueue += 1;
		
	    // Checks if there is any text in the queue
	    if variable_instance_exists(id, "TextQueue") {
	        // Checks if the queue is exhausted
	        if (NumInQueue >= array_length(TextQueue)) {
				global.bubble_dialogue_is_done_typing = true;
	            instance_destroy();
	            exit;
	        }

	        // Advance to the next line of dialogue
	        TextToDraw = TextQueue[NumInQueue];
	    } else {
	        TextToDraw = "{end}"; // No more text, ready to be destroyed
	    }

	    IsWriting = true;
	    if (TextToDraw == "" || TextToDraw == "{end}") {
	        instance_destroy();
	    }
	}
}