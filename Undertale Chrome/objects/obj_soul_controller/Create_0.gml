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
souls_activated = 0;

// Flag to start drawing chrome soul when cutscene starts
draw_chrome_soul = false;

// Flag to converge all souls after final cutscene dialogue
souls_converge = false;
souls_absorbed = false;
chrome_soul_complete = false;
chrome_soul_complete_delay = 120;

// Chrome soul variables
chrome_soul_alpha = 0;  // Starts invisible
chrome_alpha_direction = 1; // 1 for fading in, -1 for fading out
chrome_scale_base = 0.75;    // Base scale of chrome soul
chrome_scale_amplitude = 0.1; // Amount of scaling up and down
chrome_scale_factor = chrome_scale_base;

// Buffer for Soul Drawing
xbuffer = 0;
ybuffer = -15;

// Speed controls
fade_speed = 0.01;
rotation_speed = 0.5;
