var gamepad = async_load[? "pad_index"]; 


//Add or remove controller fro list
switch(async_load[? "event_type"])
{
    case "gamepad discovered":
        array_push(global.gamepads, gamepad);
        //Setup controller
        gamepad_set_axis_deadzone(gamepad, global.controllerDeadzone);
        break;
    
    case "gamepad lost":
        array_delete(global.gamepads, array_get_index(global.gamepads, gamepad), 1);
        break;
}

//Set active gamepad to either the first one connected or none if none are connected
if (array_length(global.gamepads) > 0)
    global.activeGamepad = global.gamepads[0];
else
    global.activeGamepad = undefined;

//Check if a controller is connected
global.controllerConnected = (global.activeGamepad != undefined);

//Rn code if controller is connected
if (global.controllerConnected)
{
    //Determine controller type
    switch(gamepad_get_description(global.activeGamepad))
    {
        case "T.Flight Hotas One":
            global.controllerType = "Hotas";
            global.pauseStick = gp_axislv;
            break;
        
        case "XInput STANDARD GAMEPAD":
            global.controllerType = "Xbox";
            global.pauseStick = gp_axislv;
            break;
        
        default:
            global.controllerType = "Not Recognized";
            global.pauseStick = gp_axislv;
    }

}



