/// @function HideOutsideBattlebox
function HideOutsideBattlebox(){
	//Hide Outside of box
	if(!oMonsterBulletGenerator.outside_hidden) {
		oMonsterBulletGenerator.hide_outside_box = true;
		instance_create_layer(-4, 262, "Bullets", oBlackBoxLeft);
		instance_create_layer(385, 262, "Bullets", oBlackBoxRight);
	}
}