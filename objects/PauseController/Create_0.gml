global.paused = false;
global.upgrading = false;

pauseLayer = "PauseLayer";
settingsLayer = "SettingsLayer";
upgradeLayer = "UpgradeLayer";

var pauseButton;

updatePause = function()
{
    if (global.paused)
    {
        instance_deactivate_all(true);
		window_set_cursor(cr_default);
		layer_set_visible(pauseLayer, true);
		layer_set_visible(upgradeLayer, false)
    }
    else
    { 
		
        layer_set_visible(pauseLayer, false); 
        layer_set_visible(settingsLayer, false);
		
		if (!global.upgrading)
		{
			instance_activate_all();
			window_set_cursor(cr_none);
		}
		else
		{
			layer_set_visible(upgradeLayer, true);
		}
		
    }
}

updatePause();


//Pause screen button functionality
executePauseScreenButton = function(button_name)
{
    switch(button_name)
    {
        case "Resume": //Resume
            global.paused = false;
            PauseController.updatePause();
            break;
        case "Settings": //Settings
            layer_set_visible("SettingsLayer", true);
            layer_set_visible("PauseLayer", false);
            break;
        case "Quit": //Quit
            game_end();
            break;
        case "Back": //back (from settings)
            layer_set_visible("SettingsLayer", false);
            layer_set_visible("PauseLayer", true);
            break;
    }
}

//Upgrade screen show/hide
	showUpgradeScreen = function()
	{
		global.upgrading  = true;
	
		instance_deactivate_all(true);
		window_set_cursor(cr_default);
		layer_set_visible(upgradeLayer, true);
	}

	hideUpgradeScreen = function()
	{
		global.upgrading  = false;
	
		instance_activate_all();
		window_set_cursor(cr_none);
		layer_set_visible(upgradeLayer, false);
	}



layer_set_visible(settingsLayer, false);