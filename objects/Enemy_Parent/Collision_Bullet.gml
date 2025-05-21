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

instance_destroy(other); //Destroy bullet