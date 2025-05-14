// Move in the current direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

if(!oSoul.visible) {
	instance_destroy();
}