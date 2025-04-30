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
    var num_bullets = 2; // Number of random bullets to spawn
    for (var i = 0; i < num_bullets; i++) {
        var bullet = instance_create_layer(_x, _y, "Bullets", oMonsterBullet);
        bullet.direction = irandom_range(25, 90); // Random direction
        bullet.speed = oMonsterBulletGenerator.bullet_speed;
        bullet.damage = oMonsterBulletGenerator.bullet_damage;
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
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Bravery
function Bullet_Failed_Human_Bravery(_direction = 180, _x = 500, _y = 300) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Justice
function Bullet_Failed_Human_Justice(_direction = 180, _x = 500, _y = 300) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Kindness
function Bullet_Failed_Human_Kindness(_direction = 180, _x = 500, _y = 300) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Patience
function Bullet_Failed_Human_Patience(_direction = 180, _x = 500, _y = 300) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Integrity
function Bullet_Failed_Human_Integrity(_direction = 180, _x = 500, _y = 300) {
	oMonsterBulletGenerator.default_spawn_interval = 45;
	var _vertical_buffer = choose(15, -15, 30,-30, 45, -45);
	var bullet = instance_create_layer(_x, _y + _vertical_buffer, "Bullets", oMonsterSpear);
    bullet.image_angle = _direction;
	bullet.direction = _direction; // Adjust direction as needed (270 = downward)
	bullet.speed = 3;
	bullet.gravity = 0;
	bullet.damage = bullet_damage;
   
}

/// @function Bullet_Failed_Human_Perseverance
function Bullet_Failed_Human_Perseverance() {
	oMonsterBulletGenerator.default_spawn_interval = 50;
	var _vertical_buffer = choose(20, -20, 40, 30, -30);
    var _bullet2 = instance_create_layer(500, 300 + _vertical_buffer, "Bullets", oPerseveranceBurstBullet);
    _bullet2.direction = 180; // Adjust direction as needed (270 = downward)
	_bullet2.image_xscale = .5;
	_bullet2.image_yscale = .5;
    _bullet2.speed = 1.5;
    _bullet2.damage = bullet_damage;
}

/// @function Bullet_Failed_Human_Horizontal_Perseverance_Collision_Burst
function Bullet_Failed_Human_Horizontal_Perseverance_Collision_Burst(_x, _y) {
    var num_bullets = 2; // Number of random bullets to spawn
    for (var i = 0; i < num_bullets; i++) {
        var bullet = instance_create_layer(_x, _y, "Bullets", oPerseveranceBullet);
        bullet.direction = irandom_range(25, 90); // Random direction
        bullet.speed = oMonsterBulletGenerator.bullet_speed;
        bullet.damage = oMonsterBulletGenerator.bullet_damage;
		bullet.gravity = .15;
    }
}