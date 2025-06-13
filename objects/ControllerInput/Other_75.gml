var gamepad = async_load[? "pad_index"];

switch(async_load[? "event_type"])
{
    case "gamepad discovered":
        array_push(global.gamepads, gamepad);
        gamepad_set_axis_deadzone(gamepad, global.controllerDeadzone);
        break;
    
    case "gamepad lost":
        array_delete(global.gamepads, array_get_index(global.gamepads, gamepad), 1);
        break;
}

if (array_length(global.gamepads) > 0)
    global.activeGamepad = global.gamepads[0];
else
    global.activeGamepad = undefined;

global.controllerConnected = (global.activeGamepad != undefined);