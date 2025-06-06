paused = false;

pauseLayer = "PauseLayer";
settingsLayer = "SettingsLayer";

timePaused = 0;
pauseStartTime = 0;

updatePause = function()
{
    if (paused)
    {
        pauseStartTime = GameController.getTime();
        instance_deactivate_all(true);
        layer_set_visible(pauseLayer, true);
    }
    else
    { 
        timePaused += GameController.getTime() - pauseStartTime;
        instance_activate_all(); 
        layer_set_visible(pauseLayer, false); 
        layer_set_visible(settingsLayer, false);
    }
}

updatePause();

layer_set_visible(settingsLayer, false);