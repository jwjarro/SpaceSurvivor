// Inherit the parent event
event_inherited();

//Enemy-specific stats
maxHp = 4;
currentHp = maxHp;
walkSpeed = 0.5;
isDirectional = true;
fireRate = 180;
xpDropped = 0;

alarm[11] = fireRate;

executeHit = function()
{
    currentHp --;
    
    if (currentHp = 0) //If now dead
    {
        instance_create_layer(x, y, "Instances", UFO);
        instance_create_layer(x, y, "Instances", UFO);
        instance_destroy(); //Destroy enemy
    }
    else
    {
        //Flash when hit
        image_blend = flashColor;
        alarm[0] = flashLength;
    }
}