//GAME OVER
if (health <= 0)
    game_end();
	
	
//Timer
global.roundTime += delta_time;
global.roundTimeSeconds = floor(global.roundTime/1000000);