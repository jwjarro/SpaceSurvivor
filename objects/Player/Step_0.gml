//Movement (momentum based)

    //Get keyboard inputs
    var up_in = keyboard_check(ord("W"));
    var down_in = keyboard_check(ord("S"));
    var left_in = keyboard_check(ord("A"));
    var right_in = keyboard_check(ord("D"));
    
    var vert_in = up_in - down_in;
    var hor_in = left_in - right_in;
    
    //Adjust angle and momentum
    angle += hor_in * angleSpeed;
    xmomentum += vert_in * acceleration * cos(pi*angle/180);
    ymomentum -= vert_in * acceleration * sin(pi*angle/180);
    
    //Move character
    direction = point_direction(0,0,xmomentum,ymomentum);
    speed = sqrt(sqr(xmomentum) + sqr(ymomentum));
    if (speed > maxSpeed)
        speed = maxSpeed;
    
    //Adjust sprite
    image_angle = angle - 90;
    if (vert_in != 0)
        sprite_index = SpaceshipEngineOn;
    else
        sprite_index = SpaceshipEnginesOff;

//Set screen wrapping
move_wrap(true, true, 16);

//Shooting

     if keyboard_check_pressed(vk_space)
    {
        instance_create_layer(x,y,"Instances", Bullet);
    }