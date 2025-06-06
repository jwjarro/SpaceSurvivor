//Spawn enemies
for(i = 0; i < array_length(waveData[currentWave]); i ++)
{
    for (j = 0; j < waveData[currentWave][i]; j ++)
    {
        switch(i)
        {
            case 0:
                spawnEnemy(UFO);
                break;
            case 1:
                spawnEnemy(Carrier);
                break;
        }
    }
}

alarm[1] = enemySpawnInterval;