var pauseButton

if (global.controllerConnected)
{
    switch (global.controllerType) 
    {
    	case "Xbox":
            pauseButton = gp_start;
            break;
        case "Hotas":
            pauseButton = gp_stickr; //NOT MAPPED CORRECTLY!!!
            break;
        default:
            pauseButton = gp_start;
    }
}


if (keyboard_check_pressed(vk_escape) || (global.controllerConnected && gamepad_button_check_pressed(global.activeGamepad, pauseButton)))
{
    paused = !paused;
    updatePause();
}