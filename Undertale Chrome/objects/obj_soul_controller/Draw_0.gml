// Get current viewport position and dimensions
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

// Set chrome soul at center of viewport
var chrome_soul_x = cam_x + cam_w / 2;
var chrome_soul_y = cam_y + cam_h / 2;

// Draw Chrome Soul with pulsing effect
if(draw_chrome_soul) {
    draw_sprite_ext(spr_cutscene_soul_chrome, 0, chrome_soul_x + xbuffer, chrome_soul_y + ybuffer, chrome_scale_factor, chrome_scale_factor, 0, c_white, chrome_soul_alpha);

    // Draw rotating souls around Chrome Soul
    for (var i = 0; i < soul_count; i++) {
        var angle = rotation_angle + (360 / soul_count) * i;
        var soul_x = chrome_soul_x + lengthdir_x(circle_radius, angle);
        var soul_y = chrome_soul_y + lengthdir_y(circle_radius, angle);

        if(souls_activated > i) {
            draw_sprite_ext(soul_sprites[i], 0, soul_x, soul_y + ybuffer, chrome_scale_base, chrome_scale_base, 0, c_white, soul_alpha[i]);
        }
    }

    // Reset alpha to default
    draw_set_alpha(1);
}
