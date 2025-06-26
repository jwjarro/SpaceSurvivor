//Set pause button
if (global.controllerConnected)
{
    switch (global.controllerType) 
    {
    	case "Xbox":
            pauseButton = gp_start;
            break;
        case "Hotas":
            pauseButton = gp_stickr;
            break;
        default:
            pauseButton = gp_start;
    }
}

//Toggle pause
if (keyboard_check_pressed(vk_escape) || (global.controllerConnected && gamepad_button_check_pressed(global.activeGamepad, pauseButton)))
{
    paused = !paused;
    updatePause();
}

//Update current screen
switch (currentScreen)
{
    case "Pause Screen":
        currentScreenElements = pauseScreenElements;
        break;
    case "Settings Screen":
        currentScreenElements = settingsScreenElements;
        break;
}

//Adjust active button num with controller
if (global.controllerConnected)
{
    
}

//Set active button
if (activeButtonNum != undefined)
    activeButton = currentScreenElements[activeButtonNum];
else 
	activeButton = undefined
