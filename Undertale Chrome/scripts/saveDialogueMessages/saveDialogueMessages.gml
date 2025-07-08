/// @function createSaveDialogueMessages
function createSaveDialogueMessages() {
    // Helper function to insert "&" at the appropriate locations recursively
    function insertNewLines(quote) {
        var maxLength = 30; // Set the maximum line length
        var quoteLength = string_length(quote);
        
        // If the string is within the max length, return it as is
        if (quoteLength <= maxLength) {
            return quote;
        }

        // Find the breaking point within the max length
        var breakPoint = maxLength;

        // Adjust the break point to the nearest space
        while (breakPoint > 0 && string_char_at(quote, breakPoint) != " ") {
            breakPoint--;
        }

        // If no space is found, default to breaking at maxLength
        if (breakPoint == 0) {
            breakPoint = maxLength;
        }

        // Insert "&" at the break point and recursively handle the rest of the string
        var firstPart = string_copy(quote, 1, breakPoint);
        var remainingPart = string_copy(quote, breakPoint + 1, quoteLength - breakPoint);

        // Return the formatted string with "&" and process the rest of the string
        return firstPart + "&  " + insertNewLines(remainingPart);
    }
	
	//Array of Prologue End Message
	global.prologue_end_dialogue_messages = [
		[
		    insertNewLines("You know..."),
	        insertNewLines("Even small stories have value."),
	        insertNewLines("Small heroes... small moments."),
	        insertNewLines("You can be nothing..."),
	        insertNewLines("...and still have everything."),
	        insertNewLines("You can hold everything..."),
	        insertNewLines("...and still feel empty."),
	        insertNewLines("What sets you apart?"),
	        insertNewLines("What makes you a hero?"),
	        insertNewLines("Your true self... your soul."),
	        insertNewLines("What color is a soul?"),
	        insertNewLines("Green... Red..."),
	        insertNewLines("Perfect Light Blue..."),
	        insertNewLines("Or the darkest Orange..."),
	        insertNewLines("Chrome in the light..."),
	        insertNewLines("Shows all colors..."),
	        insertNewLines("But belongs to none."),
	        insertNewLines("Beautiful... maddening."),
	        insertNewLines("Whole, yet halved."),
	        insertNewLines("Full, yet empty."),
	        insertNewLines("But listen..."),
	        insertNewLines("With Determination..."),
	        insertNewLines("Bravery... Justice..."),
	        insertNewLines("Kindness... Patience..."),
	        insertNewLines("Integrity... Perseverance..."),
	        insertNewLines("And Resilience..."),
			insertNewLines("Ah yes. Resilience."),
	        insertNewLines("You can overcome anything."),
	        insertNewLines("You always could."),
	        insertNewLines("I'll be waiting..."),
			insertNewLines("*..."),
	        insertNewLines("* You know what lies beyond the cave..."),
			insertNewLines("* You're filled with...")
	    ]
	];

    // Array of main quotes and follow-up messages
    global.save_dialogue_messages = [
        [
            insertNewLines("* No matter how many times you fall, you rise again."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...grows within.")
        ],
        [
            insertNewLines("* In the quiet of doubt, your strength remains steady."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...is unshakable.")
        ],
        [
            insertNewLines("* When storms hit hardest, your spirit shines brighter."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...glows brightly.")
        ],
        [
            insertNewLines("* The road isn't easy, but you keep moving forward."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...never falters.")
        ],
        [
            insertNewLines("* In darkness, you light a spark that guides your way."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...lights the way.")
        ],
        [
            insertNewLines("* When the impossible looms, you find a way through."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...carves a path forward.")
        ],
        [
            insertNewLines("* Every scar tells a story of unyielding strength."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...deepens with each step.")
        ],
        [
            insertNewLines("* You're not invincible, but you don't need to be."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...carries you forward.")
        ],
        [
            insertNewLines("* Each step forward proves your strength and resolve."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...powers your journey.")
        ],
        [
            insertNewLines("* You bend but never break, enduring your hardest trials."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...keeps you moving forward.")
        ],
        [
            insertNewLines("* In every battle, you find a reason to keep fighting."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...burns like a flame.")
        ],
        [
            insertNewLines("* The world tests you, but you answer with strength."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...is unwavering.")
        ],
        [
            insertNewLines("* When hope seems lost, you find light in the darkness."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...sparks anew.")
        ],
        [
            insertNewLines("* Challenges rise, but so does your unyielding resolve."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...lifts you higher.")
        ],
        [
            insertNewLines("* No obstacle is too great for your unshakable resolve."),
            insertNewLines("* ~S Resilience~D..."),
			insertNewLines("* ...is your greatest ally.")
        ]
    ];
}
