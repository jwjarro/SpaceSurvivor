if (keyboard_check_pressed(vk_escape) || (global.controllerConnected && gamepad_button_check_pressed(global.activeGamepad, gp_start)))
{
    paused = !paused;
    updatePause();
}