//Title Sprites
title1 = spr_title_1;
title2 = spr_title_2;

//Title Coordinates
title_1_x = 15;
title_1_y = 65;
title_2_x = 62;
title_2_y = 98;

//Title Scale
title_1_x_scale = .45;
title_1_y_scale = .45;
title_2_x_scale = .5;
title_2_y_scale = .5;

//Alarms
title_screen_active = 0;
alarm[0] = 45;

//Credits
show_credits = false;
start_moving_credits = false;
show_chapter_1_coming_soon = false;
end_credits = false;

//Create all Credits Font
credits_y_created = 220;
credits_lines = [
    "",
    "",
    "A Fangame By",
    "MYLES MOORE",
	"Loaf Central Games",
    "",
    "Story, Design,",
    "Code, Animation,",
    "Writing, Direction",
    "MYLES MOORE",
    "",
    "Original Music & Scoring",
    "SATO TOSHO",
	"MYLES MOORE",
    "",
    "Inspired By",
    "UNDERTALE by Toby Fox",
    "and Fangames Like",
	"",
    "UNDERTALE YELLOW",
	"UNDERTALE WILDFIRE",
	"UNDERTALE GREEN",
	"UNDERTALE PURPLE",
	"UNDERTALE KINDRED SPIRITS",
    "",
    "Special Thanks",
	"My Wife Caroline",
	"r/Undertale",
    "SPRITERS RESOURCE",
    "Undertale Modding Discord",
    "YoyoGames / GameMaker Devs",
    "",
    "Custom Sprites Based On",
    "Assets by Toby Fox",
    "and Fan Edits Online",
    "",
	"",
    "Thank you for playing",
    "the 'Prologue'",
	"",
	"Means a lot!",
	"",
    "",
	"",
    "I love this part."
];

//Prologue is completed/Show pulsing Soul
show_pulsing_soul = false;
hide_title = false;

// Number of souls
soul_sprites = [
    spr_cutscene_soul_determination,
    spr_cutscene_soul_bravery,
    spr_cutscene_soul_justice,
    spr_cutscene_soul_kindness,
    spr_cutscene_soul_integrity,
    spr_cutscene_soul_perseverance,
    spr_cutscene_soul_patience
];

soul_count = array_length(soul_sprites);

// Initially all souls are invisible
soul_alpha = array_create(soul_count, 0);

// Rotation setup
rotation_angle = 0;
circle_radius = 64;

// Track dialogue progress
souls_activated = 8;

// Flag to start drawing chrome soul when cutscene starts
draw_chrome_soul = true;

// Chrome soul variables
chrome_soul_alpha = 0;  // Starts invisible
chrome_alpha_direction = 1; // 1 for fading in, -1 for fading out
chrome_scale_base = 0.75;    // Base scale of chrome soul
chrome_scale_amplitude = 0.1; // Amount of scaling up and down
chrome_scale_factor = chrome_scale_base;

// Buffer for Soul Drawing
xbuffer = 0;
ybuffer = -35;

// Speed controls
fade_speed = 0.01;
rotation_speed = 0.5;