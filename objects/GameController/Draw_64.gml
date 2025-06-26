//Draw xp bar
draw_healthbar
(
    0, 
    pHealthbarWidth * view_hport, 
    view_wport, 
    (pHealthbarWidth + xpBarWidth) * view_hport + 16, 
    100 * (Player.levelXP/Player.xpNeeded),
    c_black,
    c_orange,
    c_orange,
    0,
    false,
    false
);

//Draw player health bar
draw_healthbar
(
    0, 
    0, 
    view_wport, 
    pHealthbarWidth * view_hport, 
    100 * (health/Player.maxHealth),
    c_black,
    c_red,
    c_green,
    0,
    false,
    false
);



//Debug tools
if (global.showDebug)
{
    //Debug printing function initialization
        lineNum = 0;
    
        printDebugLine = function(text = "", indent = 0)
        {
            draw_text_ext_transformed(50 + 25 * indent, 50 + 25 * lineNum, text, 0, 500, 2, 2, 0);
            lineNum ++;
        }
    
    //Draw the debug screen
    
        //Entities
            //Label
            printDebugLine("Entities")
        
            //Number of instances loaded
            printDebugLine("Instances loaded: " + string(instance_count), 1);
    
            //Number of enemies loaded
            printDebugLine("Enemies loaded: " + string(instance_number(Enemy_Parent)), 1);
        
            //Number of bullets loaded
            printDebugLine("Bullets:        " + string(instance_number(Bullet) + instance_number(EnemyBullet)), 1);
    
            //Number of xp loaded
            printDebugLine("XP:             " + string(instance_number(XP)), 1);
        
        //Player stats
            //Label
            printDebugLine();
            printDebugLine("Player stats"); 
    
            //Angle
            printDebugLine("Angle: " + string(Player.angle), 1); 
         
            //Position
            printDebugLine("Position: (" + string(Player.x) + ", " + string(Player.y) + ")", 1);  
          
            //Momentum
            printDebugLine("Momentum: (" + string(Player.xmomentum) + ", " + string(Player.ymomentum) + ")", 1);
        
            //Speed
            printDebugLine("Speed: " + string(Player.speed), 1);
        
            //Health
            printDebugLine("Health: " + string(health) + "/" + string(Player.maxHealth), 1);
        
        //Waves
            //Label
            printDebugLine();
            printDebugLine("Waves");
            
            //Wave number
            printDebugLine("Wave #" + string(currentWave), 1);
    
            //Game time
            printDebugLine("Game time: " + string(getTime()), 1);
    
            //Room time
            printDebugLine("Room time: " + string(timeSinceRoomStart()), 1);
    
        //Controllers
            //Label
            printDebugLine();
            printDebugLine("Controllers");
    
            //# of controllers connected
            printDebugLine("Controllers connected: " + string(array_length(global.gamepads)), 1);
    
            //Controller description
            if (global.controllerConnected)
                printDebugLine("Controller description: " + gamepad_get_description(global.activeGamepad), 1);
    
    show_debug_message(string(PauseController.activeButton));
}