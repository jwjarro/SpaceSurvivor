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
        }
    }
}

alarm[1] = enemySpawnInterval;