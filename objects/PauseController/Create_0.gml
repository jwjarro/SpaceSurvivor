paused = false;

pauseLayer = "PauseLayer";
settingsLayer = "SettingsLayer";

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

layer_set_visible(settingsLayer, false);