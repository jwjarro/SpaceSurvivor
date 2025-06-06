paused = false;

pauseLayer = "PauseLayer";
settingsLayer = "SettingsLayer";

updatePause = function()
{
    if (paused)
    {
        instance_deactivate_all(true);
        layer_set_visible(pauseLayer, true);
    }
    else
    { 
        instance_activate_all(); 
        layer_set_visible(pauseLayer, false); 
        layer_set_visible(settingsLayer, false);
    }
}

updatePause();

layer_set_visible(settingsLayer, false);