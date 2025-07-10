//Draw beam
draw_sprite_ext(GripperBeamSprite, -1, 
				x, 
				y, 
				global.scale / 12, 
				sqrt(sqr(Player.x - x) + sqr(Player.y - y)) / 13,
				point_direction(x, y, Player.x, Player.y) + 90,
				c_white, 
				0.5);	
		
draw_self();
