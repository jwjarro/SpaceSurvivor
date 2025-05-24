//Spawn enemies

spawnRadius = 32 + camera_get_view_width(view_camera[0])/2;

var dir = random_range(0, 360);
var spawnx = Player.x + lengthdir_x(spawnRadius, dir);
var spawny = Player.y + lengthdir_y(spawnRadius, dir);

instance_create_layer(spawnx, spawny, "Instances", UFO);

alarm[1] = enemySpawnInterval;