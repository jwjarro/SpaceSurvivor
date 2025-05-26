//Draw player health bar
if (global.showPlayerHealth)
{
    draw_healthbar
    (
        0, 
        0, 
        view_wport, 
        .03 * view_hport, 
        100 * (health/Player.maxHealth),
        c_black,
        c_red,
        c_green,
        0,
        false,
        false
    );
}

//Debug tools
if (global.showDebug)
{
    //Debug printing function initialization
        lineNum = 0;
    
        printDebugLine = function(text, indent = 0)
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
        
        //Player stats
            //Label
            printDebugLine("");
            printDebugLine("Player stats");  
         
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
            printDebugLine("Waves");
            
            //Wave number
            printDebugLine("Wave #" + string(currentWave), 1);
    
            //Run time
            printDebugLine("Run time: " + string(getTime()), 1);
}