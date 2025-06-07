totalXP ++;
levelXP ++;

//Level up
if (levelXP >= xpNeeded)
{
    level ++;
    levelXP = 0;
    xpNeeded = global.levelData[level];
}

instance_destroy(other);