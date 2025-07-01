//XP Pickup

if (distance_to_object(Player) <= Player.magnetDistance)
{
	Player.totalXP ++;
	Player.levelXP ++;

	//Level up
	if (Player.levelXP >= Player.xpNeeded)
	{
	    
		Player.level ++;
	    Player.levelXP -= Player.xpNeeded;
	    Player.xpNeeded = global.levelData[Player.level];
		
		PauseController.showUpgradeScreen();
	}

	instance_destroy();
}