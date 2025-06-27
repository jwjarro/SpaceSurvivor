paused = false;

pauseLayer = "PauseLayer";
settingsLayer = "SettingsLayer";

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
        layer_sequence_pause(WaveSequence);
        instance_deactivate_all(true);
        layer_set_visible(pauseLayer, true);
    }
    else
    { 
        layer_sequence_play(WaveSequence);
        instance_activate_all(); 
        layer_set_visible(pauseLayer, false); 
        layer_set_visible(settingsLayer, false);
    }
}

updatePause();

//executePauseScreenButton = function(id)
//{
//    switch(id)
//    {
//        case 100000: //Resume
//            PauseController.paused = false;
//            PauseController.updatePause();
//            break;
//        case 100001: //Settings
//            layer_set_visible("SettingsLayer", true);
//            layer_set_visible("PauseLayer", false);
//            currentScreen = "Settings Screen";
//            break;
//        case 100002: //Quit
//            game_end();
//            break;
//        case 100003: //back (from settings)
//            layer_set_visible("SettingsLayer", false);
//            layer_set_visible("PauseLayer", true);
//            currentScreen = "Pause Screen";
//            break;
//    }
//}

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