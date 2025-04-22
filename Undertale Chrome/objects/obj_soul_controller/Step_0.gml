// Smooth rotation
rotation_angle += rotation_speed;
rotation_angle = rotation_angle mod 360;

// Smooth alpha transitions for surrounding souls
for (var i = 0; i < soul_count; i++) {
    var target_alpha = (i < souls_activated) ? 1 : 0;
    soul_alpha[i] = lerp(soul_alpha[i], target_alpha, 0.05);
}

// Chrome soul fading in and out
if (draw_chrome_soul) {
    chrome_soul_alpha += fade_speed * chrome_alpha_direction;
    
    // Reverse direction if limits are reached
    if (chrome_soul_alpha >= 1) {
        chrome_soul_alpha = 1;
        chrome_alpha_direction = -1;
    } else if (chrome_soul_alpha <= 0.3) {
        chrome_soul_alpha = 0.3; // Avoid going fully invisible
        chrome_alpha_direction = 1;
    }
    
    // Scale based on alpha (bigger when fully visible)
    chrome_scale_factor = chrome_scale_base + (chrome_scale_amplitude * chrome_soul_alpha);
}

// Converge Souls into Chrome Soul
if (souls_converge) {
    circle_radius = lerp(circle_radius, 0, 0.02);

    // When fully converged
    if (circle_radius <= 1 && !souls_absorbed) {
        souls_activated = 0;
        souls_absorbed = true;

        chrome_scale_base = 1.5;  // big flash scale
        chrome_soul_alpha = 1;    // max flash visibility
        chrome_alpha_direction = -1; // start fading out again

        audio_play_sound(snd_vaporized, 10, false);
    }

    // Flash down chrome soul
    if (souls_absorbed) {
        chrome_scale_base = lerp(chrome_scale_base, 0.9, 0.05);

        // Start fading out Chrome Soul after delay
        if (chrome_soul_complete_delay < 75) {
            chrome_soul_alpha = lerp(chrome_soul_alpha, 0, 0.03);

            // SNAP TO 0 if nearly invisible
            if (chrome_soul_alpha < 0.4) {
                chrome_soul_alpha = 0;
            }
        }
    }
}

// Countdown to next cutscene trigger
if (souls_absorbed && chrome_soul_complete_delay > 0) {
    chrome_soul_complete_delay--;
}

// Ready for next cutscene step
if (souls_absorbed && chrome_soul_complete_delay <= 0) {
    chrome_soul_complete = true;
}