//Scale sprite
var scale = global.scale;
image_xscale *= scale;
image_yscale *= scale;

//Move
speed = 10;
direction = Player.angle;

//Bullet lifespan
alarm[0] = 200;