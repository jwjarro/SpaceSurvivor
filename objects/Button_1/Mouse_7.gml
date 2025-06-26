switch(id)
{
    case 100000: //Resume
        PauseController.paused = false;
        PauseController.updatePause();
        break;
    case 100001: //Settings
        layer_set_visible("SettingsLayer", true);
        layer_set_visible("PauseLayer", false);
        break;
    case 100002: //Quit
        game_end();
        break;
    case 100003: //back (from settings)
        layer_set_visible("SettingsLayer", false);
        layer_set_visible("PauseLayer", true);
        break;
}