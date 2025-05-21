//Draw healthbars for all enemies
with(Enemy_Parent)
{
    draw_self();

    //Draw healthbar
    if ((currentHp < maxHp) && (global.enemyHealthShown))
    {
        //Set direction of healthbar based on direction of enemy
        var healthBarDirection = 0;
        
        if (image_xscale > 0)
            healthBarDirection = 0;
        else
            healthBarDirection = 1;
        
        //draw the healthbar
        draw_healthbar
        (
            x - sprite_width/2 + 2, 
            y - sprite_height/2, 
            x + sprite_width/2 - 2, 
            y - sprite_height/2 - 8, 
            100 * (currentHp/maxHp),
            c_black,
            c_red,
            c_green,
            healthBarDirection,
            false,
            false
        );
    }
}