//Scale sprite
scale = global.scale;
image_xscale *= scale;
image_yscale *= scale;

//Set screen wrapping
move_wrap(true, true, 16);

//Default stats

    //Movement
    walkSpeed = 1;
    flankingDistance = 64;
    flankingOffset = 64;
    playerCollisionRebound = 10;
    isDirectional = false;

    //Health
    maxHp = 1;
    currentHp = maxHp;

    //xp
    xpDropped = 2;
    xpOffset = 2;

    //Flash when hit
    flashColor = c_red;
    flashLength = 10;

executeHit = function()
{
    currentHp --;
    
    if (currentHp = 0) //If now dead
    {
        //Drop xp
        for (i = 0; i < xpDropped; i++)
        {
            dropDirection = random_range(0, 360);
            instance_create_layer(x + xpOffset * cos(dropDirection) * scale, y + xpOffset * sin(dropDirection) * scale, "Instances", XP, {
                direction, speed});
        }
        
        //Destroy enemy
        instance_destroy();
    }
    else
    {
        //Flash when hit
        image_blend = flashColor;
        alarm[0] = flashLength;
    }
}