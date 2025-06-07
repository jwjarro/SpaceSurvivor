//Scale sprite
var scale = global.scale;
image_xscale *= scale;
image_yscale *= scale;



//Movement variables
    
    //Initializations
    angle = 90;
    xmomentum = 0;
    ymomentum = 0;

    //Variables for balancing
    angleSpeed = 4;
    acceleration = .05;
    maxSpeed = 7;
    breakingAssist = 0.05;

//Health
maxHealth = 10;
health = maxHealth;

//XP
totalXP = 0;
levelXP = 0;
level = 0;
xpNeeded = global.levelData[level];


collisionRebound = function(object)
{
    with(object)
    {
        direction = point_direction(Player.x, Player.y, x, y);
        speed = playerCollisionRebound;
    }

}

executeHit = function()
{
    health--;
    xmomentum = 0;
    ymomentum = 0;
    
    collisionRebound(Enemy_Parent);
    collisionRebound(EnemyBullet);
}