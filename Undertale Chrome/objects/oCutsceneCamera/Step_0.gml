// Shake logic — runs every frame while shaking
if (screen_shake_timer > 0) {
    screen_shake_timer--;

    var shake_x = random_range(-screen_shake_magnitude, screen_shake_magnitude);
    var shake_y = random_range(-screen_shake_magnitude, screen_shake_magnitude);

    // Clamp the final shake offset within bounds of original ± magnitude
    x = clamp(original_camera_x + shake_x, original_camera_x - screen_shake_magnitude, original_camera_x + screen_shake_magnitude);
    y = clamp(original_camera_y + shake_y, original_camera_y - screen_shake_magnitude, original_camera_y + screen_shake_magnitude);
}