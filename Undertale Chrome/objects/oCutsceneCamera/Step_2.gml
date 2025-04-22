if (screen_shake_timer > 0) {
    screen_shake_timer--;
    var shake_x = random_range(-screen_shake_magnitude, screen_shake_magnitude);
    var shake_y = random_range(-screen_shake_magnitude, screen_shake_magnitude);
    camera_set_view_pos(view_camera[0], x + shake_x, y + shake_y);
} else {
    camera_set_view_pos(view_camera[0], x, y);
}