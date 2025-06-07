//Setting Ids
fullscreen       = 100004;
showEnemyHealth  = 100005;
doScreenShake    = 100006;
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
        enabled = true;
        break;
    case doScreenShake:    //Enable screen shake
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
            case doScreenShake:        //Enable screen shake
                global.doScreenShake = true;
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
            case doScreenShake:        //Disable screen shake
                global.doScreenShake = false;
                layer_set_visible("ScreenShakeEffectLayer", false);
                break;
        }	
    }
}

//Setup checkbox
runCheckbox();
image_alpha = 0.4 + 0.6 * enabled