//Spawn enemies
for(i = 1; i < array_length(waveData[currentWave]); i ++)
{
    for (j = 0; j < waveData[currentWave][i]; j ++)
    {
        switch(i)
        {
            case 1:
                spawnEnemy(UFO);
                break;
            case 2:
                spawnEnemy(Carrier);
                break;
			 case 3:
                spawnEnemy(Gripper);
                break;
        }
    }
}

//Find time spent in current wave
currentWaveTimeElapsed = global.roundTimeSeconds - currentWaveStartTime;

//Increment the wave once the full time is elapsed
if ((currentWaveTimeElapsed >= waveData[currentWave][0]) && ((currentWave + 1) < array_length(waveData)))
	incrementWave();

alarm[1] = enemySpawnInterval;