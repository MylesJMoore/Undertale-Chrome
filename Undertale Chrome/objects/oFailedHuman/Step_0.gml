if (instance_exists(Dialogue)) {
	ReadyForBattle = true;
} else {
	if (ReadyForBattle) {
		ReadyForBattle = false;
		alarm[0] = 1;
	}
}

if (oButtonController.enemySpared) {
	image_alpha = 0.5;
}