////Setting Ids
//fullscreen       = 100004;
//showEnemyHealth  = 100005;
//doScreenShake    = 100006;
//"Debug Mode"        = 100007;

//Default settings
enabled = false;

//switch(id)
//{
    //case "Fullscreen":      //Fullscreen
        //enabled = true;
        //break;
    //case showEnemyHealth: //Show enemy health bars
        //enabled = true;
        //break;
    //case "Debug Mode":        //Bullets wrap across the screen
        //enabled = true;
        //break;
    //case"Screen Shake":    //Enable screen shake
        //enabled = true;
        //break;
//}

switch(checkbox_name)
{
    case "Fullscreen":      //Fullscreen
        enabled = true;
        break;
    case "Show Enemy Health": //Show enemy health bars
        enabled = true;
        break;
    case "Debug Mode":        //Bullets wrap across the screen
        enabled = true;
        break;
    case"Screen Shake":    //Enable screen shake
        enabled = true;
        break;
}


runCheckbox = function()
{
    if (enabled) //If te setting is enabled
    {
        sprite_index = CheckedBox;
        
        switch(checkbox_name)
        {
            case "Fullscreen":      //Fullscreen
                window_set_fullscreen(true);
                break;
            case "Show Enemy Health": //Show enemy health bars
                global.enemyHealthShown = true;
                break;
            case "Debug Mode":  //Enable debug mode
                global.showDebug = true;
                break;
            case"Screen Shake":        //Enable screen shake
                global.doScreenShake = true;
                break;
        }
    }
    else //If the setting is disabled
    {
        sprite_index = UncheckedBox;
        
        switch(checkbox_name)
        {
            case "Fullscreen":      //Not fullscreen
                window_set_fullscreen(false);
                break;
            case "Show Enemy Health": //Hide enemy health bars
                global.enemyHealthShown = false;
                break;
            case "Debug Mode":  //Disable debug mode
                global.showDebug = false;
                break;
            case"Screen Shake":        //Disable screen shake
                global.doScreenShake = false;
                layer_set_visible("ScreenShakeEffectLayer", false);
                break;
        }	
    }
}

//Setup checkbox
runCheckbox();
image_alpha = 0.4 + 0.6 * enabled