var player = instance_nearest(x, y, obj_player); // Find the nearest player
var distance_threshold = 80; // Distance threshold for transformation
var player_distance = point_distance(x, y, player.x, player.y);
show_debug_message("Distance from star: " + string(player_distance));

if (player != noone) {
    if (player_distance > distance_threshold) {
        // Player is far → Transform into ghost and animate
        if (sprite_index != spr_starghost_amalgamate) {
            sprite_index = spr_starghost_amalgamate;
            image_index = 0;
            image_speed = 1; // Play animation
        }
    } else {
		// Player is close → Show star, reset to first frame
        sprite_index = spr_star_amalgamate;
        image_index = 0;
        image_speed = 0;
    }
}

//Only Play Animation for Ghost once
if (sprite_index == spr_starghost_amalgamate && image_index > 10) {
    image_speed = 0; // Stop animation
}