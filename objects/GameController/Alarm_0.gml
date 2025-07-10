//Control enemies

//Enemy movement
with(Enemy_Parent)
{
    //Make enemies move towards player
    if (distance_to_object(Player) > flankingDistance)
        direction = point_direction(x, y, Player.x + random_range(-1,1) * flankingOffset, Player.y + random_range(-1,1) * flankingOffset);
    else
        direction = point_direction(x,y,Player.x,Player.y);
    
    speed = walkSpeed;
    
    //Make enemies point in direction of motion
    if(isDirectional)
    {
       image_angle = direction - 90; 
    }
    else 
    {
        if (Player.x > x) 
            image_xscale = scale;
        else 
            image_xscale = -scale;
    }
    
    
    //depth = -y;
}

//Enemy loading/unloading
    var viewx = camera_get_view_x(view_camera[0]);
    var viewy = camera_get_view_y(view_camera[0]);
    var vieww = camera_get_view_width(view_camera[0]);
    var viewh = camera_get_view_height(view_camera[0]);
    
    enemyActvationBuffer = 128;
    
    instance_activate_region(viewx - enemyActvationBuffer, viewy - enemyActvationBuffer, vieww + enemyActvationBuffer, viewh + enemyActvationBuffer, true);
    instance_deactivate_region(viewx - enemyActvationBuffer, viewy - enemyActvationBuffer, vieww + enemyActvationBuffer, viewh + enemyActvationBuffer, false, true);
    instance_activate_object(PauseController);
    instance_activate_object(Bullet);
    
alarm[0] = enemyControlInterval; //Reset alarm timer