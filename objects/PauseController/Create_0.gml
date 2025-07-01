var paused = false;
var upgrading = false;

pauseLayer = "PauseLayer";
settingsLayer = "SettingsLayer";
upgradeLayer = "UpgradeLayer";

activeButtonNum = undefined;

var pauseButton;

currentScreen = "Pause Screen";
var currentScreenElements;

joystickPressed = false;

pauseScreenElements = [ 
                        100000,
                        100001,
                        100002,
                      ];
settingsScreenElements = [
                        100003,
                        100004,
                        100005,
                        100006,
                        100007,
                        ];

updatePause = function()
{
    if (paused)
    {
        instance_deactivate_all(true);
		window_set_cursor(cr_default);
		if (upgrading)
		{
			layer_set_visible(upgradeLayer, true);
		}
		else
		{
			layer_set_visible(pauseLayer, true);
		}
		
    }
    else
    { 
        instance_activate_all(); 
        layer_set_visible(pauseLayer, false); 
        layer_set_visible(settingsLayer, false);
		window_set_cursor(cr_none);
    }
}

updatePause();

executePauseScreenButton = function(button_name)
{
    switch(button_name)
    {
        case "Resume": //Resume
            PauseController.paused = false;
            PauseController.updatePause();
            break;
        case "Settings": //Settings
            layer_set_visible("SettingsLayer", true);
            layer_set_visible("PauseLayer", false);
            currentScreen = "Settings Screen";
            break;
        case "Quit": //Quit
            game_end();
            break;
        case "Back": //back (from settings)
            layer_set_visible("SettingsLayer", false);
            layer_set_visible("PauseLayer", true);
            currentScreen = "Pause Screen";
            break;
    }
}

layer_set_visible(settingsLayer, false);