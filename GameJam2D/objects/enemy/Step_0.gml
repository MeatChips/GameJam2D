if(!global.playerCatched && !player_hit)
{
	move_towards_point(player.x, player.y, movementSpeed);
	
	if(place_meeting(x, y, player))
	{
		player_hit = true;
	}
}
else
{
	speed = 0;	
}

if(player_hit)
{
	if(health == 1)
	{
		health--;
	}
	else 
	{		
		timer--;
		if(timer <= 0)
		{
			health--;
			timer = 200;
			player_hit = false;
		}	
	}
}




