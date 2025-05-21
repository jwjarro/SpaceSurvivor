//Setting Ids
fullscreen      = 100004;
showEnemyHealth = 100005;
setting3        = 100006;
setting4        = 100007;

//Default settings
enabled = false;

switch(id)
{
    case fullscreen:      //Fullscreen
        enabled = true;
        break;
    case showEnemyHealth: //Show enemy health bars
        enabled = true;
        break;
    case setting3:        //Setting 3
           
        break;
    case setting4:        //Setting 4
          
        break;
}

runCheckbox = function()
{
    if (enabled) //If te setting is enabled
    {
        sprite_index = CheckedBox;
        
        switch(id)
        {
            case fullscreen:      //Fullscreen
                window_set_fullscreen(true);
                break;
            case showEnemyHealth: //Show enemy health bars
                global.enemyHealthShown = true;
                break;
            case setting3:        //Setting 3
                
                break;
            case setting4:        //Setting 4
                
                break;
        }
    }
    else //If the setting is disabled
    {
        sprite_index = UncheckedBox;
        
        switch(id)
        {
            case fullscreen:      //Not fullscreen
                window_set_fullscreen(false);
                break;
            case showEnemyHealth: //Hide enemy health bars
                global.enemyHealthShown = false;
                break;
            case setting3:        //Setting 3
                
                break;
            case setting4:        //Setting 4
                
                break;
        }	
    }
}

//Setup checkbox
runCheckbox();
image_alpha = 0.4 + 0.6 * enabled