//Setting Ids
fullscreen       = 100004;
showEnemyHealth  = 100005;
showPlayerHealth = 100006;
debugMode        = 100007;

//Default settings
enabled = false;

switch(id)
{
    case fullscreen:      //Fullscreen
        enabled = true;
        break;
    case showEnemyHealth: //Show enemy health bars
        enabled = true;
        break;
    case debugMode:        //Bullets wrap across the screen
        enabled = false;
        break;
    case showPlayerHealth:        //Show player health bar
        enabled = true;
        break;
}

runCheckbox = function()
{
    if (enabled) //If te setting is enabled
    {
        sprite_index = CheckedBox;
        
        switch(id)
        {
            case fullscreen:      //Fullscreen
                window_set_fullscreen(true);
                break;
            case showEnemyHealth: //Show enemy health bars
                global.enemyHealthShown = true;
                break;
            case debugMode:  //Enable debug mode
                global.showDebug = true;
                break;
            case showPlayerHealth:        //Show player health bar
                global.showPlayerHealth = true;
                break;
        }
    }
    else //If the setting is disabled
    {
        sprite_index = UncheckedBox;
        
        switch(id)
        {
            case fullscreen:      //Not fullscreen
                window_set_fullscreen(false);
                break;
            case showEnemyHealth: //Hide enemy health bars
                global.enemyHealthShown = false;
                break;
            case debugMode:  //Disable debug mode
                global.showDebug = false;
                break;
            case showPlayerHealth:        //Hide player health bar
                global.showPlayerHealth = false;
                break;
        }	
    }
}

//Setup checkbox
runCheckbox();
image_alpha = 0.4 + 0.6 * enabled