//Initialize enemy control alarm timer
enemyControlInterval = 20;
alarm[0] = enemyControlInterval;

//Enemy spawning systems

    //Spawning setup
        enemySpawnInterval = 40;
        alarm[1] = enemySpawnInterval;
        
        spawnEnemy = function(enemyType)
        {
            spawnRadius = 32 + camera_get_view_width(view_camera[0])/2;
        
            var dir = random_range(0, 360);
            var spawnx = Player.x + lengthdir_x(spawnRadius, dir);
            var spawny = Player.y + lengthdir_y(spawnRadius, dir);
            
            instance_create_layer(spawnx, spawny, "Instances", enemyType);
        }
    
    //Wave setup
        waveData = [ //Format: [#UFOs, #Carriers],
        [0, 0],
        [1, 0],
        [0, 1]
        ]
        
        currentWave = 0;
        
        incrementWave = function()
        {
            currentWave ++;
        }
     
//Debug

    //Time
   
    getTime = function()
    {
        return get_timer() / 1000000;
    }

    roomStartTime = getTime();

    timeSinceRoomStart = function()
    {
        return getTime() - roomStartTime;
    }

//Set sprite scale
global.scale = 3;