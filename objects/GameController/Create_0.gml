//Initialize enemy control alarm timer
enemyControlInterval = 20;
alarm[0] = enemyControlInterval;

//Initialize enemy spawning alarm timer
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

waveData = [ //Format: [wave_length, #UFOs, #Carriers],
[50, 0, 0],
[20, 1, 0],
[20, 0, 1]
]

currentWave = 0;
previousWaveTimeElapsed = 0;
timeToWave = waveData[currentWave][0];

incrementWave = function()
{
    previousWaveTimeElapsed += waveData[currentWave][0];
    currentWave ++;
    timeToWave = waveData[currentWave][0];
}

getTime = function()
{
    return get_timer() / 1000000;
}

//Set sprite scale
global.scale = 3;