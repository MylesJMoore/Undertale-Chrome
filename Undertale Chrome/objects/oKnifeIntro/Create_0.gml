image_alpha = 0;
fade_speed = 0.02;

// Direction and motion for arcing inward
move_direction = point_direction(x, y, oSoul.x, oSoul.y);
move_speed = 0.7 + random(0.4);

image_angle = move_direction;