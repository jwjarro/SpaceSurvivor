//Default settings
enabled = false;

switch(checkbox_name)
{
    case "Fullscreen":        //Fullscreen
        enabled = true;
        break;
    case "Show Enemy Health": //Show enemy health bars
        enabled = true;
        break;
    case "Debug Mode":        //Enable Debug mode
        enabled = true;
        break;
    case "Screen Shake":      //Enable screen shake
        enabled = true;
        break;
	case "Audio":             //Enable audio
        enabled = true;
        break;
}

//Define checkbox actions
runCheckbox = function()
{
    if (enabled) //If te setting is enabled
    {
        sprite_index = CheckedBox;
        
        switch(checkbox_name)
        {
            case "Fullscreen":                  //Fullscreen
                window_set_fullscreen(true);
                break;
            case "Show Enemy Health":           //Show enemy health bars
                global.enemyHealthShown = true;
                break;
            case "Debug Mode":                  //Enable debug mode
                global.showDebug = true;
                break;
            case "Screen Shake":                //Enable screen shake
                global.doScreenShake = true;
                break;
			case "Audio":                       //Enable audio
                global.audioEnabled = true;
				audio_resume_all();
                break;
        }
    }
    else //If the setting is disabled
    {
        sprite_index = UncheckedBox;
        
        switch(checkbox_name)
        {
            case "Fullscreen":                  //Not fullscreen
                window_set_fullscreen(false);
                break;
            case "Show Enemy Health":            //Hide enemy health bars
                global.enemyHealthShown = false;
                break;
            case "Debug Mode":                   //Disable debug mode
                global.showDebug = false;
                break;
            case "Screen Shake":                 //Disable screen shake
                global.doScreenShake = false;
                layer_set_visible("ScreenShakeEffectLayer", false);
                break;
			case "Audio":                        //Disable audio
                global.audioEnabled = false;
				audio_pause_all();
                break;
        }	
    }
}

//Setup checkbox
runCheckbox();
image_alpha = 0.4 + 0.6 * enabled