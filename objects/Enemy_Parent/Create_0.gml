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

    //Flash when hit
    flashColor = c_red;
    flashLength = 10;

executeHit = function()
{
    currentHp --;
    
    if (currentHp = 0) //If now dead
    {
        instance_destroy(); //Destroy enemy
    }
    else
    {
        //Flash when hit
        image_blend = flashColor;
        alarm[0] = flashLength;
    }
}