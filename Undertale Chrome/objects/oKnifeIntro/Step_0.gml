// === Manual Stop Check Based on Current Battle Box ===
var buffer = 30; // margin so they don't enter the drawn box
var border_width = 75;
var border_height = 75;
var box_left   = oSoul.x - (border_width + buffer);
var box_right  = oSoul.x + (border_width + buffer);
var box_top    = oSoul.y - (border_height + buffer);
var box_bottom = oSoul.y + (border_height + buffer);

var inside_box = (x > box_left && x < box_right && y > box_top && y < box_bottom);

// Fade In
if (!global.failed_human_knife_fadeout && image_alpha < 1) {
    image_alpha += fade_speed;
}

// Fade Out
if (global.failed_human_knife_fadeout && image_alpha > 0) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        instance_destroy();
    }
}

// Move until inside the stop zone
if (!inside_box) {
    x += lengthdir_x(move_speed, move_direction);
    y += lengthdir_y(move_speed, move_direction);
    move_speed = max(move_speed - 0.01, 0.1); // slows before stopping
} else {
    move_speed = 0;
}

// Rotate toward soul
image_angle = point_direction(x, y, oSoul.x, oSoul.y);

// Destroy if intro ends
if (global.failed_human_boss_intro_done) {
    instance_destroy();
}