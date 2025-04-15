/// @param text_id
function gameText(_text_id) {
	switch(_text_id) {
		//=====================================================================//
		//=====================       UNDERTALE CHROME       ==================//
		//=====================================================================//
		//---------------------------------------------------------------------//
		//=====================================================================//
		//=====================       True Lab 1       ========================//
		//=====================================================================//
		case "announcements": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* Oh...", noone, false, 0, noone, true);
			createTextPage("* Hey there!", noone, false, 0, noone, true);
			createTextPage("* You can call me Loafboy.", noone, false, 0);
			createTextPage("* This is my project, Undertale Chrome!", noone, false, 0);
			setTextColor(22,38,c_yellow,c_yellow,c_yellow,c_yellow); // "Undertale Chrome" in yellow
			createTextPage("* It's my own personal love letter to Undertale...", noone, false, 0);
			createTextPage("* ...to True Lab...", noone, false, 0);
			createTextPage("* ...to all the other fallen humans...", noone, false, 0);
			createTextPage("* ...and honestly...", noone, false, 0);
			createTextPage("* my first big step into game development!", noone, false, 0);
			createTextPage("* After a lot of start and stopping...I'm doing it.", noone, false, 0);
			createTextPage("* I'm excited, but...", noone, false, 0);
			createTextPage("* I need your help!", noone, false, 0);
			setTextFloat(1,100); // Float "I need your help!"
			createTextPage("* Right now I'm working on the Prologue.", noone, false, 0);
			setTextFloat(31,100); // Float "Prologue"
			createTextPage("* I'd love to do more chapters or even have help currently!", noone, false, 0);
			createTextPage("* But I know everyone's time is precious.", noone, false, 0);
			setTextColor(23,100,c_yellow,c_yellow,c_yellow,c_yellow); // "precious" in yellow
			createTextPage("* As a programmer myself, I know when it's important to ask for help.", noone, false, 0);
			createTextPage("* I'm looking for passionate artists, musicians, storytellers...", noone, false, 0);
			setTextFloat(29,36); // "artists"
			setTextFloat(38,47); // "musicians"
			setTextFloat(49,61); // "storytellers"
			createTextPage("* Or even fellow aspiring game devs...", noone, false, 0);
			setTextFloat(25,100); // "storytellers"
			createTextPage("* Maybe you've thought about making something before...", noone, false, 0);
			createTextPage("* ...but doubted yourself...", noone, false, 0);
			createTextPage("* ...I get it.", noone, false, 0);
			createTextPage("* But great adventures always start with a single step.", noone, false, 0);
			createTextPage("* So...", noone, false, 0);
			createTextPage("* Why not take that step with me?", noone, false, 0);
			setTextColor(9,100,c_yellow,c_yellow,c_yellow,c_yellow); // "take that step with me?" in yellow
			createTextPage("* ...", noone, false, 0);
			createTextPage("* I can't wait to share Undertale Chrome", noone, false, 0);
			setTextColor(23,100,c_yellow,c_yellow,c_yellow,c_yellow);
			createTextPage("* ...", noone, false, 0);
			createTextPage("* Thanks for listening.", noone, false, 0);
			createTextPage("* ...", noone, false, 0);
			createTextPage("* ...See ya soon Space Cowboy...", noone, false, 0);
			break;
		case "truelab_wall_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* A flickering screen shows a message: ", noone, false, 0, noone, true);
			createTextPage("EXPERIMENT 32 FAILED", noone, false,0); 
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("WARNING: INSTABILITY DETECTED", noone, false,0); 
			setTextColor(0,9,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(9,100,c_red,c_red,c_red,c_red);
			setTextShake(9,100);
			createTextPage("* (You have no idea what that means.)", noone, false,0); 
			break;
		case "truelab_bookcase_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (A lot of books here)", noone, false, 0, noone, true);
			createTextPage("* (None of which particularly fun to read...)", noone, false,0); 
			createTextPage("* (...except this one)", noone, false, 0, noone, true);
			createTextPage("\"Anatomy of a Human\"", noone, false,0); 
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("Written By Arcadia, MD", noone, false,0); 
			setTextColor(11,100,c_red,c_red,c_red,c_red);
			setTextFloat(11,100);
			createTextPage("* (Who is that?)", noone, false,0);
			break;
		case "truelab_bookcase_2": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (One of the books catches your eye)", noone, false, 0, noone, true);
			createTextPage("\"Creating A New Monster World\"", noone, false,0); 
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* (The name Alphys is scribbled on the first page)", noone, false,0); 
			setTextFloat(12,18);
			break;
		case "truelab_room_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (The room is cold)", noone, false,0); 
			createTextPage("* (But you can feel a little bit of warmth in your hands)", noone, false,0); 
			createTextPage("* (... Not much though)", noone, false,0); 
			break;
		//=====================================================================//
		//=====================       True Lab 2       ========================//
		//=====================================================================//
		case "truelab_room_2_monitor_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("WELCOME TO TRUE LAB", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			createTextPage("SYSTEM STATUS: [CORRUPTED]", noone, false,0);
			setTextColor(0,15,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(15,100,c_red,c_red,c_red,c_red);
			break;
		case "truelab_room_2_monitor_2": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("SOUL EXPERIMENTATION IN PROGRESS", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			createTextPage("Subject Status: [DATA CORRUPTED]", noone, false, 0, noone, true);
			setTextColor(0,16,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(16,100,c_red,c_red,c_red,c_red);
			createTextPage("Facility Lead: Arcadia", noone, false,0); 
			setTextColor(0,15,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(15,100,c_red,c_red,c_red,c_red);
			break;
		
		//=====================================================================//
		//=====================       True Lab 3       ========================//
		//=====================================================================//
		case "truelab_room_3_determination": 
			createTextPage("* ...", noone, false, -50, noone, true, true);
			createTextPage("* A vibrant red heart pulses warmly.", noone, false, -50, noone, true, true);
			createTextPage("* ...", noone, false, -50, noone, true, true);
			createTextPage("* You feel determined just looking at it.", noone, false, -50,noone, true, true);
			setTextColor(11,21,c_red,c_red,c_red,c_red);
			break;
		case "truelab_room_3_bravery": 
			createTextPage("* ...", noone, false, -50, noone, true, true);
			createTextPage("* This orange heart has a soft hum.", noone, false, -50, noone, true, true);
			createTextPage("* ...", noone, false, -50, noone, true, true);
			createTextPage("* You feel braver, somehow.", noone, false,-50,noone,true,true);
			setTextColor(11,17,c_orange,c_orange,c_orange,c_orange);
			break;
		case "truelab_room_3_justice": 
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* The jar is emitting almost a yellowish glow.", noone, false, -50,noone,true,true);
			createTextPage("* Something tells you that this heart yearns for true justice.", noone, false,-50,noone,true,true);
			setTextColor(54,61,c_yellow,c_yellow,c_yellow,c_yellow);
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* You feel judged. Unworthy.", noone, false,-50,noone,true,true);
			break;
		case "truelab_room_3_kindness": 
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* There's almost a gentle green warmth radiating from within.", noone, false, -50,noone,true,true);
			createTextPage("* It's comforting.", noone, false,-50,noone,true,true);
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* You wonder if there's is any more kindness left in the world.", noone, false,-50,noone,true,true);
			setTextColor(36,44,c_green,c_green,c_green,c_green);
			break;
		case "truelab_room_3_patience": 
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* It pulses slowly, in perfect light blue rhythm.", noone, false, -50,noone,true,true);
			createTextPage("* Slow and steady.", noone, false,-50,noone,true,true);
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* You feel more patient.", noone, false,-50,noone,true,true);
			setTextColor(16,23,c_aqua,c_aqua,c_aqua,c_aqua);
			break;
		case "truelab_room_3_integrity": 
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* Perfectly stable, completely unshaken.", noone, false, -50,noone,true,true);
			createTextPage("* ...", noone, false, -50, noone, true);
			createTextPage("* This heart almost stands still.", noone, false,-50,noone,true,true);
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* You feel it judges your integrity silently.", noone, false,-50,noone,true,true);
			setTextColor(26,35,c_blue,c_blue,c_blue,c_blue);
			break;
		case "truelab_room_3_perseverance": 
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* It pulses quickly, relentlessly with a purple glow.", noone, false, -50,noone,true,true);
			createTextPage("* True perserverance within this glass.", noone, false, -50,noone,true,true);
			setTextColor(7,20,c_purple,c_purple,c_purple,c_purple);
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* You suddenly feel energized...", noone, false,-50,noone,true,true);
			createTextPage("* ...", noone, false, -50,noone,true,true);
			createTextPage("* ...ready to press forward.", noone, false,-50,noone,true,true);
			break;
		
		//=====================================================================//
		//=====================       True Lab 4       ========================//
		//=====================================================================//
		case "truelab_room_4_monitor_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("UNAUTHORIZED ENTRY DETECTED", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			createTextPage("SECURITY LOCKDOWN: INITIATING...", noone, false, 0, noone, true);
			setTextColor(0,19,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(19,100,c_blue,c_blue,c_blue,c_blue);
			createTextPage("SECURITY LOCKDOWN: [FAILED]", noone, false, 0, noone, true);
			setTextColor(0,19,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(19,100,c_red,c_red,c_red,c_red);
			break;
		case "truelab_room_4_monitor_2": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("OVERRIDE ACTIVATED", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			createTextPage("CHROME HEART PROTECTION: [DISENGAGED]", noone, false, 0, noone, true);
			setTextColor(0,25,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(25,100,c_green,c_green,c_green,c_green);
			createTextPage("Please proceed with EXTREME caution.", noone, false, 0, noone, true);
			setTextColor(0,20,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextColor(20,27,c_red,c_red,c_red,c_red);
			setTextColor(27,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;
		
		//=====================================================================//
		//=====================       True Lab 5       ========================//
		//=====================================================================//
		// Bookcases
		case "truelab_room_5_bookcase_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (There's a book titled...)", noone, false, 0, noone, true);
			createTextPage("\"The Limits of a Soul\"", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* (Most pages are torn, but you catch one sentence)", noone, false, 0, noone, true);
			createTextPage("Fragmentation tests by Arcadia yield promising results.", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;

		case "truelab_room_5_bookcase_2": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (You see a thick journal titled...)", noone, false, 0, noone, true);
			createTextPage("\"Rosey: Experimental Log\"", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* (Almost all pages are blacked out except one)", noone, false, 0, noone, true);
			createTextPage("Rosey's cognitive abilities exceed initial expectations.", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;

		case "truelab_room_5_bookcase_3": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (A book catches your eye...)", noone, false, 0, noone, true);
			createTextPage("\"Soul Fusion Theory\"", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* (The first page has frantic notes scribbled)", noone, false, 0, noone, true);
			createTextPage("Fusion unstable without Chrome Heart catalyst.", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;

		case "truelab_room_5_bookcase_4": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (You pull out a dusty manual titled...)", noone, false, 0, noone, true);
			createTextPage("\"Human-Monster Symbiosis\"", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* (A bookmark has scribbling on it)", noone, false, 0, noone, true);
			createTextPage("What is Arcadia's ultimate goal? I don't know. Perfect harmony? Total control?", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;

		// Torn Documents
		case "truelab_room_5_document_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (A torn document titled...)", noone, false, 0, noone, true);
			createTextPage("\"Final Observations\"", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("Rosey's development accelerated drastically after soul integration.", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;

		case "truelab_room_5_document_2": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (Fragment of paper titled...)", noone, false, 0, noone, true);
			createTextPage("\"Chrome Soul Analysis\"", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("Chrome demonstrates resilience beyond projected parameters.", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;

		case "truelab_room_5_document_3": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (A crumpled note simply reads...)", noone, false, 0, noone, true);
			createTextPage("Has Arcadia gone too far?", noone, false, 0, noone, true);
			setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			setTextFloat(17,24);
			break;

		// Experiment Benches
		case "truelab_room_5_experiment_bench_1": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (A cold examination table)", noone, false, 0, noone, true);
			createTextPage("* (You shiver imagining what experiments took place here)", noone, false, 0, noone, true);
			break;

		case "truelab_room_5_experiment_bench_2": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* (Another bench stained with something you hope isn't blood)", noone, false, 0, noone, true);
			setTextColor(55,60,c_red,c_red,c_red,c_red);
			setTextFloat(55,60);
			createTextPage("* (A label reads...)", noone, false, 0, noone, true);
			createTextPage("\"Subject 066\"", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			break;

		
		//=====================================================================//
		//=====================       True Lab 6       ========================//
		//=====================================================================//
		// Soul Experiments
		case "truelab_room_6_broken_heart": 
			createTextPage("* ...", noone, false, -42, noone, true, true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* A soul fractured beyond repair.", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* You sense deep despair emanating from within.", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			break;

		case "truelab_room_6_empty_heart": 
			createTextPage("* ...", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* An empty vessel. Nothing remains.", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* You wonder what once filled this void.", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			break;

		case "truelab_room_6_lost_heart": 
			createTextPage("* ...", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* A soul wandering in endless confusion.", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* You feel a faint, unsettling chill.", noone, false, -42, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			break;

		case "truelab_room_6_forgotten_heart": 
			createTextPage("* ...", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* A soul erased from memory.", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* It has no presence.", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			break;

		case "truelab_room_6_hurt_heart": 
			createTextPage("* ...", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* A damaged soul pulsing weakly.", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* Pain echoes softly around it.", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			break;

		case "truelab_room_6_failed_heart": 
			createTextPage("* ...", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* A lot of distorted souls.", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* You feel a pit in your stomach.", noone, false, -68, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			break;

		case "truelab_room_6_shattered_heart": 
			createTextPage("* ...", noone, false, -84, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* Souls reduced to fragments.", noone, false, -84, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			createTextPage("* You wonder how much suffering they endured.", noone, false, -84, noone, true,true);
			setTextColor(0,100,c_silver,c_silver,c_silver,c_silver);
			break;

		case "truelab_room_6_integrity_fused": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* A soul forcibly fused from two others.", noone, false, 0, noone, true);
			createTextPage("* You feel its conflicted judgment.", noone, false, 0, noone, true);
			createTextPage("* This... should never have existed.", noone, false, 0, noone, true);
			break;

		case "truelab_room_6_perserverance_fused": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* A hybrid soul crackling with unstable energy.", noone, false, 0, noone, true);
			createTextPage("* Its relentless determination feels unnatural.", noone, false, 0, noone, true);
			createTextPage("* Only something monstrous could have done this.", noone, false, 0, noone, true);
			break;

		case "truelab_room_6_machinery": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* Complex machinery hums ominously.", noone, false, 0, noone, true);
			createTextPage("* Wires snake around like veins.", noone, false, 0, noone, true);
			createTextPage("* You can't help but feel it's still watching.", noone, false, 0, noone, true);
			break;
		
		//=====================================================================//
		//=====================       True Lab 6b       =======================//
		//=====================================================================//
		case "truelab_room_6b_amalgamate": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* It flickers softly.", noone, false, 0, noone, true);
			createTextPage("* For a moment, it almost seemed... alive.", noone, false, 0, noone, true);
			setTextFloat(35,41);
			createTextPage("* Best not to linger here.", noone, false, 0, noone, true);
			break;
		
		//=====================================================================//
		//=====================       True Lab 7       ========================//
		//=====================================================================//
		
		/* NONE NEEDED FOR THIS ROOM */
		
		//=====================================================================//
		//=====================       True Lab 8       ========================//
		//=====================================================================//
		case "truelab_room_8_chrome_soul": 
			createTextPage("* ...", noone, false, -100, noone, true,true);
			createTextPage("* Something floats silently within the glass.", noone, false, -100, noone, true,true);
			createTextPage("* It feels...", noone, false, -100, noone, true,true);
			createTextPage("* Amazing...", noone, false, -100, noone, true,true);
			createTextPage("* Terrifying...", noone, false, -100, noone, true,true);
			createTextPage("* Powerful...", noone, false, -100, noone, true,true);
			createTextPage("* ...yet strangely balanced.", noone, false, -100, noone, true,true);
			createTextPage("* There's harmony within chaos.", noone, false, -100, noone, true,true);
			createTextPage("* There's a small button behind the jar.", noone, false, -100, noone, true,true);
			createTextPage("Press it?", noone, false, -100, noone, true,true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			setTextFloat(0,100);
			createOption("Let's do it.", "chrome soul - yes"); 
			createOption("Buttons need to be pressed!", "chrome soul - maybe");
			createOption("No.", "chrome soul - no");
			break;
		case "truelab_room_8_chrome_soul2": 
			createTextPage("* ...", noone, false, -84, noone, true, true);
			createTextPage("* Something floats silently within the glass.", noone, false, -84, noone, true, true);
			createTextPage("* It feels...", noone, false, -84, noone, true, true);
			createTextPage("* Amazing...", noone, false, -84, noone, true, true);
			createTextPage("* Terrifying...", noone, false, -84, noone, true, true);
			createTextPage("* Powerful...", noone, false, -84, noone, true, true);
			createTextPage("* ...yet strangely balanced.", noone, false, -84, noone, true, true);
			createTextPage("* There's harmony within chaos.", noone, false, -84, noone, true, true);
			createTextPage("* There's a small button behind the jar.", noone, false, -84, noone, true, true);
			createTextPage("Press it?", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			setTextFloat(0,100);
			createOption("Let's do it.", "chrome soul - yes"); 
			createOption("Buttons need to be pressed!", "chrome soul - maybe");
			createOption("No.", "chrome soul - no");
		break;

		case "chrome soul - yes": 
			createTextPage("* You press the button firmly.", noone, false, 0, noone, true);
			createTextPage("* A chill runs down your spine.", noone, false, 0, noone, true);
			createTextPage("* You hear a faint alarm begin to echo.", noone, false, 0, noone, true);
			createTextPage("ALERRRRRRT!", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("HUMAN IN THE PERFECTED SOUL CHAMBER!", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* And then suddenly...", noone, false, 0, noone, true);
			createTextPage("* The CHROME SOUL...", noone, false, 0, noone, true);
			createTextPage("* ...fuses with your soul.", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* Wait... what?", noone, false, 0, noone, true);
			global.start_prologue_open_chrome_jar = true;
		break;

		case "chrome soul - maybe": 
			createTextPage("* You excitedly slam the button.", noone, false, 0, noone, true);
			createTextPage("* The glass shatters dramatically, dust flying everywhere.", noone, false, 0, noone, true);
			createTextPage("* You sneeze uncontrollably.", noone, false, 0, noone, true);
			createTextPage("* (Bless you.)", noone, false, 0, noone, true);
			createTextPage("* Through watery eyes, you hear an alarm faintly.", noone, false, 0, noone, true);
			createTextPage("ALERRRRRRT!", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("HUMAN IN THE PERFECTED SOUL CHAMBER!", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* And then suddenly...", noone, false, 0, noone, true);
			createTextPage("* The CHROME SOUL...", noone, false, 0, noone, true);
			createTextPage("* ...fuses with your soul.", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* Wait... what?", noone, false, 0, noone, true);
			global.start_prologue_open_chrome_jar = true;
		break;

		case "chrome soul - no": 
			createTextPage("* You defiantly refuse to press the button.", noone, false, 0, noone, true);
			createTextPage("* Suddenly, an unknown force moves your hand forward.", noone, false, 0, noone, true);
			createTextPage("* (Sorry, friend! Narrative demands it.)", noone, false, 0, noone, true);
			createTextPage("* (<3)", noone, false, 0, noone, true);
			createTextPage("* Irritated, you stomp your foot and hear a click beneath you.", noone, false, 0, noone, true);
			createTextPage("* An alarm softly begins ringing.", noone, false, 0, noone, true);
			createTextPage("ALERRRRRRT!", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("HUMAN IN THE PERFECTED SOUL CHAMBER!", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* And then suddenly...", noone, false, 0, noone, true);
			createTextPage("* The CHROME SOUL...", noone, false, 0, noone, true);
			createTextPage("* ...fuses with your soul.", noone, false, 0, noone, true);
			setTextColor(0,100,c_red,c_red,c_red,c_red);
			createTextPage("* Wait... what?", noone, false, 0, noone, true);
			global.start_prologue_open_chrome_jar = true;
		break;
		
		//=====================================================================//
		//=========       Chrome Soul Cutscene Dialogue  ======================//
		//=====================================================================//
		case "chrome_soul_determination": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			obj_soul_controller.draw_chrome_soul = true;
			createTextPage("* Oooh, I sense you've got Determination.", noone, false, 30, noone, true, true);
			createTextPage("* You don't need it all.", noone, false, 30, noone, true, true);
			createTextPage("* It's not like you're fighting a flower or anything.", noone, false, 30, noone, true, true);
			createTextPage("* Mind if I borrow some?", noone, false, 30, noone, true, true);
			createOption("Sure! I've got extra.", "determination - yes"); 
			createOption("Um, no.", "determination - no");
			break;
			case "determination - yes": 
				createTextPage("* Wonderful!", noone, false, 30, noone, true, true);
				createTextPage("* I'll take just enough to make sure you can't quit when you really want to.", noone, false, 30, noone, true, true);
			break;

			case "determination - no": 
				createTextPage("* Oh, that's cute.", noone, false, 30, noone, true, true);
				createTextPage("* You think you had a choice.", noone, false, 30, noone, true, true);
			break;
		case "chrome_soul_bravery": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* Ah, Bravery!", noone, false, 30, noone, true, true);
			createTextPage("* You seem like the type who'd poke a sleeping dragon.", noone, false, 30, noone, true, true);
			createTextPage("* Care if I have a little courage from you?", noone, false, 30, noone, true, true);
			createOption("Dragons? Bring 'em on!", "bravery - yes"); 
			createOption("Let dragons sleep.", "bravery - no");
			break;
			case "bravery - yes": 
				createTextPage("* Perfect.", noone, false, 30, noone, true, true);
				createTextPage("* Recklessness suits you... and me.", noone, false, 30, noone, true, true);
			break;

			case "bravery - no": 
				createTextPage("* Too late now!", noone, false, 30, noone, true, true);
				createTextPage("* Dragons awake, and I'm holding the leash.", noone, false, 30, noone, true, true);
			break;
		case "chrome_soul_justice": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* Hmm, Justice! How very noble of you.", noone, false, 30, noone, true, true);
			createTextPage("* Can I borrow your moral compass? Mine's broken.", noone, false, 30, noone, true, true);
			createOption("Justice for all!", "justice - yes"); 
			createOption("I'll keep mine.", "justice - no");
			break;
			case "justice - yes": 
				createTextPage("* Marvelous.", noone, false, 30, noone, true, true);
				createTextPage("* I'll ensure justice is served... selectively.", noone, false, 30, noone, true, true);
			break;

			case "justice - no": 
				createTextPage("* Interesting.", noone, false, 30, noone, true, true);
				createTextPage("* You think you still can tell what's right and what's wrong.", noone, false, 30, noone, true, true);
			break;
		case "chrome_soul_kindness": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* Aw, you're radiating Kindness.", noone, false, 30, noone, true, true);
			createTextPage("* It's almost nauseatingly sweet.", noone, false, 30, noone, true, true);
			createTextPage("* Mind if I borrow just a pinch?", noone, false, 30, noone, true, true);
			createOption("Take some!", "kindness - yes"); 
			createOption("You're sweet enough.", "kindness - no");
			break;
			case "kindness - yes": 
				createTextPage("* Delightful!", noone, false, 30, noone, true, true);
				createTextPage("* I'll use it responsibly... or not.", noone, false, 30, noone, true, true);
			break;

			case "kindness - no": 
				createTextPage("* ...", noone, false, 30, noone, true, true);
				createTextPage("* Sweetness isn't really my style, but your soul tastes delicious.", noone, false, 30, noone, true, true);
			break;
		case "chrome_soul_integrity": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* Integrity, honesty... You wear your heart on your sleeve, don't you?", noone, false, 30, noone, true, true);
			createTextPage("* Can I borrow your truthfulness?", noone, false, 30, noone, true, true);
			createOption("Honesty? Sure!", "integrity - yes"); 
			createOption("I prefer lies.", "integrity - no");
			break;
			case "integrity - yes": 
				createTextPage("* You're so trusting.", noone, false, 30, noone, true, true);
				createTextPage("* I'd almost feel bad if I wasn't me.", noone, false, 30, noone, true, true);
			break;

			case "integrity - no": 
				createTextPage("* As do I.", noone, false, 30, noone, true, true);
				createTextPage("* So I lied and took it anyways!", noone, false, 30, noone, true, true);
			break;
		case "chrome_soul_perseverance": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* Ah, Perseverance! You're stubborn, aren't you?", noone, false, 30, noone, true, true);
			createTextPage("* Care if I borrow your inability to quit?", noone, false, 30, noone, true, true);
			createOption("Never quitting!", "perseverance - yes"); 
			createOption("Stubbornly refuse.", "perseverance - no");
			break;
			case "perseverance - yes": 
				createTextPage("* Excellent.", noone, false, 30, noone, true, true);
				createTextPage("* I'll make sure you never rest again.", noone, false, 30, noone, true, true);
			break;

			case "perseverance - no": 
				createTextPage("* Too late.", noone, false, 30, noone, true, true);
				createTextPage("* I'm even more stubborn than you.", noone, false, 30, noone, true, true);
			break;
		case "chrome_soul_patience": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* And finally, Patience.", noone, false, 30, noone, true, true);
			createTextPage("* You've meditated under waterfalls, haven't you?", noone, false, 30, noone, true, true);
			createTextPage("* Can I borrow your patience for just a moment?", noone, false, 30, noone, true, true);
			createOption("Take it!", "patience - yes"); 
			createOption("I'll wait.", "patience - no");
			break;
			case "patience - yes": 
				createTextPage("* Beautiful.", noone, false, 30, noone, true, true);
				createTextPage("* Hope you're prepared to wait... forever.", noone, false, 30, noone, true, true);
			break;

			case "patience - no": 
				createTextPage("* ...", noone, false, 30, noone, true, true);
				createTextPage("* Oh, believe me, waiting won't help you now.", noone, false, 30, noone, true, true);
			break;
		case "chrome_soul_end": 
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* Wonderful!", noone, false, 30, noone, true, true);
			createTextPage("* You're such a generous soul-donor.", noone, false, 30, noone, true, true);
			createTextPage("* Not that you had much of a choice...", noone, false, 30, noone, true, true);
			createTextPage("* ...but details, right?", noone, false, 30, noone, true, true);
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("* Now, brace yourself.", noone, false, 30, noone, true, true);
			createTextPage("* Things are about to get...", noone, false, 30, noone, true, true);
			createTextPage("* ...complicated.", noone, false, 30, noone, true, true);
			createTextPage("* Good luck out there, partner. You're really gonna need it.", noone, false, 30, noone, true, true);
			createTextPage("* Just remember one thing...", noone, false, 30, noone, true, true);
			createTextPage("* ...", noone, false, 30, noone, true, true);
			createTextPage("Despite everything, you will always be you.", noone, false, 30, noone, true, true);
			break;
			
		//=====================================================================//
		//===============    Prologue Pre-Boss Dialogue       =================//
		//=====================================================================//
		// Rosey Human Clones
		case "rosey_human_apathy": 
			createTextPage("* Hmmm. Seems like our calculations were off a bit.", noone, false, 0, noone, true);
			break;
		case "rosey_human_despair": 
			createTextPage("* It does seem to be semi-sentient at the moment.", noone, false, 0, noone, true);
			break;
		case "rosey_human_impulsiveness": 
			createTextPage("* More research will be needed. Great opportunity to observe.", noone, false, 0, noone, true);
			break;
		case "rosey_human_vengeance": 
			createTextPage("* Tsk. Tsk. This one seems like a failure.", noone, false, 0, noone, true);
			break;
		case "rosey_human_deceit": 
			createTextPage("* Who lowered the dosage for the most recent batch of humans?", noone, false, 0, noone, true);
			break;
		case "rosey_human_fear": 
			createTextPage("* The Soul seems to have bonded...", noone, false, 0, noone, true);
			break;
		case "rosey_human_cruelty": 
			createTextPage("* Why does *this* one get to bond with it?", noone, false, 0, noone, true);
			break;
		case "rosey_human_corruption_1": 
			createTextPage("* ...Ahem.", noone, false, 0, noone, true);
			createTextPage("* Thank you ladies. That will be all.", noone, false, 0, noone, true);
			break;
		case "rosey_human_corruption_2": 
			createTextPage("* ...", noone, false, 0, noone, true);
			createTextPage("* Human Child 066.", noone, false, 0, noone, true);
			createTextPage("* Consider yourself a lucky winner today.", noone, false, 0, noone, true);
			createTextPage("* 65 failed experiments and finally 1 successful merge.", noone, false, 0, noone, true);
			createTextPage("* Thank you. We're all one step closer to the perfect soul...", noone, false, 0, noone, true);
			createTextPage("* A Monster...", noone, false, 0, noone, true);
			createTextPage("* ...and a human.", noone, false, 0, noone, true);
			createTextPage("* Arcadia will be so proud.", noone, false, 0, noone, true);
			createTextPage("* Now then. I just have one question for you.", noone, false, 0, noone, true);
			createTextPage("* What happens when a human loses their soul?", noone, false, 0, noone, true);
			createOption("(Run)", "prologue boss - yes"); 
			createOption("(Seriously. RUN.)", "prologue boss - no");
			break;
			case "prologue boss - yes": 
				createTextPage("* I can’t wait to see.", noone, false, 0, noone, true);
				setTextColor(0,100,c_red,c_red,c_red,c_red);
				setTextShake(0,100);
				createTextPage("* Also try not to scream please. It ruins the data.", noone, false, 0, noone, true);
			break;

			case "prologue boss - no": 
				createTextPage("* I can’t wait to see.", noone, false, 0, noone, true);
				setTextColor(0,100,c_red,c_red,c_red,c_red);
				setTextShake(0,100);
				createTextPage("* Also try not to scream please. It ruins the data.", noone, false, 0, noone, true);
			break;
		
		//=====================================================================//
		//=====================       ********       ==========================//
		//=====================       EXAMPLES       ==========================//
		//=====================       ********       ==========================//
		//=====================================================================//
		case "npc 1": 
			createTextPage("* So, Myles... any progress on your game?", "ms catty", false, 12, noone, true);
			setTextColor(0,14,c_white,c_white,c_white,c_white);
			setTextColor(15,50,c_orange,c_orange,c_orange,c_orange);
			setTextFloat(13,50);
			createTextPage("Or are you still stuck on level one?", "ms catty", false,12); 
			setTextColor(0,100,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			createTextPage("Spooky! Lots of ghosts on level one.", "ms catty", false,12); 
			setTextColor(0,6,c_orange,c_orange,c_orange,c_orange);
			setTextColor(6,16,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			setTextColor(16,22,c_purple,c_purple,c_purple,c_purple);
			setTextColor(23,100,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			setTextShake(0,100);
			break;
		//=====================================================================//
		case "npc 2": 
			createTextPage("Yo! It's Mr Catty here.", "mr catty", false,12);
			setTextColor(0,100,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			createTextPage("There's just a few more lines of code to go!", "mr catty", false,12); 
			setTextColor(0,100,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			createTextPage("There's still a looot more to do...", "mr catty", false,12); 
			setTextColor(0,100,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			createTextPage("...but I'm just sooo happy to see you doing game dev.", "mr catty", false,10); 
			setTextColor(0,100,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			break;
		//=====================================================================//
		case "npc 3": 
			createTextPage("So honey what would you like for dinner?", "mr catty chatting");
			createTextPage("Hmmm... not sure! Wanna get tacos?", "ms catty chatting", true);
			createTextPage("Nah. What about super burgers at Grillsby's?", "mr catty chatting"); 
			createTextPage("That could be good. I really hope they have the ice cream machine working...", "ms catty chatting", true);
			createTextPage("...last time Grillsby said he would fix it!", "ms catty chatting", true);
			createTextPage("Guess we'll have to 'Grill' him about it... heh heh.", "mr catty chatting");
			createTextPage("...sigh.. why...", "ms catty chatting", true);
			break;
		//=====================================================================//
		case "npc 4": 
			createTextPage("Mr. Catty here with a question!", "mr catty", false,12);
			setTextColor(0,50,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			createNpcEmote(EMOTE_QUESTION);
			setTextColor(0,50,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			createOption("Hell yeah!", "npc 4 - yes"); 
			createOption("Nah you stink!", "npc 4 - no");
			createPlayerEmote(EMOTE_THINKING);
			break;
			case "npc 4 - yes": 
				removeNpcEmote(EMOTE_QUESTION);
				removePlayerEmote(EMOTE_THINKING);
				createNpcEmote(EMOTE_REACTION);
				createTextPage("Sweet! This text option thing is helpful!", "mr catty", false,12);
				setTextColor(0,50,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			break;
			case "npc 4 - no": 
				removeNpcEmote(EMOTE_QUESTION);
				removePlayerEmote(EMOTE_THINKING);
				createNpcEmote(EMOTE_REACTION);
				createTextPage("Too bad! We're still doing it!", "ms catty 2", true, 12);
				setTextColor(0,50,c_dkgray,c_dkgray,c_dkgray,c_dkgray);
			break;
		//=====================================================================//
		case "words of wisdom": 
			global.words_of_wisdom = irandom(array_length(global.player_menu_messages) - 1);
			var wordsOfWisdomString = global.player_menu_messages[global.words_of_wisdom][0];
			var startColor = string_pos("R", wordsOfWisdomString) - 1;
			if(startColor < 0) {
				startColor = 0;
			}
			var endColor = (startColor) + 10;
			createTextPage(wordsOfWisdomString, "words of wisdom", false,12, noone, true);
			setTextColor(startColor,endColor,c_dkgray,c_white,c_silver,c_dkgray);
			//=====================================================================//
		case "title opening text": 
			var title_index = global.title_opening_image_index;
			if(title_index < (array_length(global.title_opening_text)))
			{
				createTextPage(global.title_opening_text[title_index][0], "title opening text" , false, 12, noone, true);
			}
			//setTextColor(startColor,endColor,c_dkgray,c_white,c_silver,c_dkgray);
			break;
		//=====================================================================//
		case "save test": 
			global.words_of_wisdom = irandom(array_length(global.player_menu_messages) - 1);
			var saveText = global.player_menu_messages[global.words_of_wisdom][0];
			var saveStartColor = string_pos("R", saveText) - 1;
			if(saveStartColor < 0) {
				saveStartColor = 0;
			}
			var saveEndColor = (saveStartColor) + 10;
			createTextPage("* I guess it's time to save.", "save test", false,0,noone,true);
			setTextColor(saveStartColor,saveEndColor,c_yellow,c_yellow,c_yellow,c_yellow);
			createOption("Yes", "save test - yes"); 
			createOption("No", "save test - no");
			break;
			case "save test - yes": 
				createTextPage("Saved! I think that's what I should say.", "save test", false , 12, noone, true);
				setTextColor(0,100,c_yellow,c_yellow,c_yellow,c_yellow);
			break;
			case "save test - no": 
				createTextPage("Keep on keepin' on.", "save test", true, 12, noone, true);
				setTextColor(0,100,c_white,c_white,c_white,c_white);
			break;
	}
}