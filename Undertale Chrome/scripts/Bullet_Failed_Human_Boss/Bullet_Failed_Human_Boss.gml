/// @function Bullet_Failed_Human_Horizontal_Spear
function Bullet_Failed_Human_Horizontal_Spear(_direction = 180, _x = 500, _y = 300) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Horizontal_Large_Random_Burst
function Bullet_Failed_Human_Horizontal_Large_Random_Burst() {
	oMonsterBulletGenerator.default_spawn_interval = 50;
	var _vertical_buffer = choose(20, -20, 40, 30, -30);
    var _bullet2 = instance_create_layer(500, 300 + _vertical_buffer, "Bullets", oMonsterBurstBullet);
    _bullet2.direction = 180; // Adjust direction as needed (270 = downward)
	_bullet2.image_xscale = 3;
	_bullet2.image_yscale = 3;
    _bullet2.speed = 1.5;
    _bullet2.damage = bullet_damage;
}

/// @function Bullet_Failed_Human_Collision_Burst
function Bullet_Failed_Human_Collision_Burst(_x, _y) {
    var num_bullets = 0; // Number of random bullets to spawn
    for (var i = 0; i < num_bullets; i++) {
        var bullet = instance_create_layer(_x, _y, "Bullets", oMonsterBullet);
        bullet.direction = irandom_range(25, 90); // Random direction
        bullet.speed = bullet_speed;
        bullet.damage = bullet_damage;
		bullet.gravity = .15;
    }
}

/// @function Bullet_Failed_Human_Horizontal_Spear
function Bullet_Failed_Human_Knives(_direction = 180, _x = 500, _y = 300) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Determination
function Bullet_Failed_Human_Determination(_direction = 180, _x = 500, _y = 300) {
	Knife_Downward_Falling();
	if(!left_thorns) {
		left_thorns = true;
		var _thorns = instance_create_layer(180, 300 , "Bullets", oDeterminationThornsLeft);
		_thorns.image_angle = 270;
		_thorns.image_xscale = .5;
		_thorns.image_yscale = .5;
	}
	
	if(!right_thorns) {
		right_thorns = true;
		var _thorns = instance_create_layer(480, 300 , "Bullets", oDeterminationThornsRight);
		_thorns.image_angle = 90;
		_thorns.image_xscale = .5;
		_thorns.image_yscale = .5;
	}
}

/// @function Knife_Downward_Falling
function Knife_Downward_Falling() {
	var _horizontal_buffer = choose(10, 15, 20, -10, -15, -20);
	var _spawn_interval = choose(45, 35, 55);
	oMonsterBulletGenerator.spawn_interval = _spawn_interval;
	var _bullet1 = instance_create_layer(x + _horizontal_buffer, y, "Bullets", oDeterminationKnife);
    _bullet1.direction = 270; // Adjust direction as needed (270 = downward)
	_bullet1.image_angle = 270;
    _bullet1.damage = oDeterminationKnife.damage;
}

/// @function Bullet_Failed_Human_Bravery
function Bullet_Failed_Human_Bravery(_direction = 180, _x = 500, _y = 340) {
	Glove_Bullet(_direction, _x, _y);
}

/// @function Glove_Bullet
function Glove_Bullet(_direction = 180, _x = 500, _y = 400) {
	oMonsterBulletGenerator.default_spawn_interval = 75;
	var _vertical_buffer = choose(10, -15);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oBraveryGlove);
    bullet.image_angle = _direction;
	bullet.image_xscale = .75;
	bullet.image_yscale = .75;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.gravity = 0;
	bullet.damage = oBraveryGlove.damage;
   
}

/// @function Bullet_Failed_Human_Justice_Flowers
function Bullet_Failed_Human_Justice_Flowers(_direction = 180, _x = 500, _y = 325) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oJusticeBulletFlower);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.gravity = 0;
	bullet.damage = oJusticeBulletFlower.damage;
   
}

/// @function Bullet_Failed_Human_Justice_Gun_Cross
function Bullet_Failed_Human_Justice_Gun_Cross(_direction = 180, _x = 500, _y = 300) {
	Slug_Horizontal_Line();
	Slug_Vertical_Line();
}

/// @function Slug_Horizontal_Line
function Slug_Horizontal_Line() {
	oMonsterBulletGenerator.spawn_interval = 15;
    var _bullet2 = instance_create_layer(500, 300, "Bullets", oJusticeBulletSlug);
    _bullet2.direction = 180; // Adjust direction as needed (270 = downward)
	_bullet2.image_angle = 180;
    _bullet2.damage = oJusticeBulletSlug.damage;
}

/// @function Slug_Vertical_Line
function Slug_Vertical_Line() {
	oMonsterBulletGenerator.spawn_interval = 45;
	var _bullet1 = instance_create_layer(x, y, "Bullets", oJusticeBulletSlug);
    _bullet1.direction = 270; // Adjust direction as needed (270 = downward)
	_bullet1.image_angle = 270;
    _bullet1.damage = oJusticeBulletSlug.damage;
}

/// @function Bullet_Failed_Human_Kindness
function Bullet_Failed_Human_Kindness(_direction = 180, _x = 500, _y = 300) {
	Flame_Horizontal_Line_Top();
	Flame_Horizontal_Line_Bottom();
	oMonsterBulletGenerator.default_spawn_interval = 55;
	var _vertical_buffer = choose(20, -20, 30, -30);
    var _bullet2 = instance_create_layer(500, 300 + _vertical_buffer, "Bullets", oKindnessBurstBullet);
    _bullet2.direction = 180; // Adjust direction as needed (270 = downward)
	_bullet2.image_xscale = .5;
	_bullet2.image_yscale = .5;
    _bullet2.damage = oKindnessBurstBullet.damage;
}

/// @function Bullet_Failed_Human_Horizontal_Kindness_Collision_Burst
function Bullet_Failed_Human_Horizontal_Kindness_Collision_Burst(_x, _y) {
    var num_bullets = 2; // Number of random bullets to spawn
    for (var i = 0; i < num_bullets; i++) {
        var bullet = instance_create_layer(_x, _y, "Bullets", oKindnessBullet);
        bullet.direction = irandom_range(25, 90); // Random direction
		bullet.image_xscale = .5;
		bullet.image_yscale = .5;
        bullet.damage = oKindnessBullet.damage;
		bullet.gravity = .15;
    }
}

/// @function Flame_Horizontal_Line_Top
function Flame_Horizontal_Line_Top() {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15,-30, -45);
	var bullet = instance_create_layer(125, 325 + _vertical_buffer, "Bullets", oKindnessFlames);
	bullet.direction = 0; // Adjust direction as needed (270 = downward)
	bullet.image_xscale = .75;
	bullet.image_yscale = .75;
	bullet.gravity = 0;
	bullet.damage = oKindnessFlames.damage;
}

/// @function Flame_Horizontal_Line_Bottom
function Flame_Horizontal_Line_Bottom() {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 40, -45);
	var bullet = instance_create_layer(125, 600 + _vertical_buffer, "Bullets", oKindnessFlames);
	bullet.direction = 0; // Adjust direction as needed (270 = downward)
	bullet.image_xscale = .75;
	bullet.image_yscale = .75;
	bullet.gravity = 0;
	bullet.damage = oKindnessFlames.damage;
}

/// @function Bullet_Failed_Human_Patience
function Bullet_Failed_Human_Patience() {
	var _randomNumber = irandom_range(0,2);
	var _randomBurst = [
            [200, 300],
            [300, 200],
			[400, 300]
        ];
	
    var num_bullets = 3; // Number of random bullets to spawn
    for (var i = 0; i < num_bullets; i++) {
        var bullet = instance_create_layer(_randomBurst[_randomNumber][0], _randomBurst[_randomNumber][1], "Bullets", oPatienceBandage);
        bullet.direction = irandom_range(0, 360); // Random direction
		bullet.image_xscale = .5;
		bullet.image_yscale = .5;
        bullet.damage = oPatienceBandage.damage;
    }
}

/// @function Bullet_Failed_Human_Integrity
function Bullet_Failed_Human_Integrity(_direction = 180, _x = 500, _y = 300) {
	Ballet_Shoe_Horizontal_Line_Top();
	Ballet_Note_Horizontal_Line_Bottom();
}

/// @function Ballet_Shoe_Horizontal_Line_Top
function Ballet_Shoe_Horizontal_Line_Top() {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30);
	var bullet = instance_create_layer(125, 300 + _vertical_buffer, "Bullets", oIntegrityBalletShoe);
	bullet.direction = 0; // Adjust direction as needed (270 = downward)
	bullet.image_xscale = .75;
	bullet.image_yscale = .75;
	bullet.gravity = 0;
	bullet.damage = oIntegrityBalletShoe.damage;
}

/// @function Ballet_Note_Horizontal_Line_Bottom
function Ballet_Note_Horizontal_Line_Bottom() {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(5,7,9,10,15,20,-5,-7,-9,-10,-15,-20);
	var bullet = instance_create_layer(125, 350 + _vertical_buffer, "Bullets", oIntegrityBalletNote);
	bullet.direction = 0; // Adjust direction as needed (270 = downward)
	bullet.image_xscale = .75;
	bullet.image_yscale = .75;
	bullet.gravity = 0;
	bullet.damage = oIntegrityBalletNote.damage;
}

/// @function Bullet_Failed_Human_Perseverance
function Bullet_Failed_Human_Perseverance() {
	oMonsterBulletGenerator.default_spawn_interval = 40;
	var _vertical_buffer = choose(20, -20, 30, -30);
    var _bullet2 = instance_create_layer(500, 300 + _vertical_buffer, "Bullets", oPerseveranceBurstBullet);
    _bullet2.direction = 180; // Adjust direction as needed (270 = downward)
	_bullet2.image_xscale = .5;
	_bullet2.image_yscale = .5;
    _bullet2.damage = oPerseveranceBurstBullet.damage;
}

/// @function Bullet_Failed_Human_Horizontal_Perseverance_Collision_Burst
function Bullet_Failed_Human_Horizontal_Perseverance_Collision_Burst(_x, _y) {
    var num_bullets = 2; // Number of random bullets to spawn
    for (var i = 0; i < num_bullets; i++) {
        var bullet = instance_create_layer(_x, _y, "Bullets", oPerseveranceBullet);
        bullet.direction = irandom_range(25, 90); // Random direction
        bullet.damage = oPerseveranceBullet.damage;
		bullet.gravity = .15;
    }
}

/// @function Bullet_Failed_Human_Resilience
function Bullet_Failed_Human_Resilience() {
	if(!left_thorns) {
		left_thorns = true;
		var _thorns = instance_create_layer(180, 300 , "Bullets", oDeterminationThornsLeft);
		_thorns.damage = 1;
		_thorns.alarm[0] = 999;
		_thorns.image_angle = 270;
		_thorns.image_xscale = .5;
		_thorns.image_yscale = .5;
	}
	
	if(!right_thorns) {
		right_thorns = true;
		var _thorns = instance_create_layer(480, 300 , "Bullets", oDeterminationThornsRight);
		_thorns.damage = 1;
		_thorns.alarm[0] = 999;
		_thorns.image_angle = 90;
		_thorns.image_xscale = .5;
		_thorns.image_yscale = .5;
	}
}