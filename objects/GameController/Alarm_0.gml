//Control enemies
with(Enemy_Parent)
{
    //Make enemies move towards player
    if (distance_to_object(Player) > flankingDistance)
        direction = point_direction(x, y, Player.x + random_range(-1,1) * flankingOffset, Player.y + random_range(-1,1) * flankingOffset);
    else
        direction = point_direction(x,y,Player.x,Player.y);
    speed = walkSpeed;
    
    //Make enemies point in direction of motion
    if (Player.x > x) 
        image_xscale = scale;
    else 
        image_xscale = -scale;
    
    depth = -y;
}

Player.depth = -Player.y;

alarm[0] = alarmTime; //Reset alarm timer