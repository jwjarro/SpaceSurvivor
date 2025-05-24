//Draw player health bar
if (global.showPlayerHealth)
{
    draw_healthbar
    (
        0, 
        0, 
        view_wport, 
        .03 * view_hport, 
        100 * (health/Player.maxHealth),
        c_black,
        c_red,
        c_green,
        0,
        false,
        false
    );
}

//Debug tools
if (global.showDebug)
{
    //Number of enemies loaded
    draw_text_ext_transformed(50, 50, "Enemies loaded: " + string(instance_number(Enemy_Parent)), 0, 500, 2, 2, 0);
    //Number of bullets loaded
    draw_text_ext_transformed(50, 75, "Bullets:        " + string(instance_number(Bullet)), 0, 500, 2, 2, 0);
}