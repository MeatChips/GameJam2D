if(!global.playerCatched)
{
	if(keyboard_check(ord("S")))
	{
		y += movementSpeed;
	}

	if(keyboard_check(ord("W")))
	{
		y -= movementSpeed;
	}

	if(keyboard_check(ord("A")))
	{
		x -= movementSpeed;
	}

	if(keyboard_check(ord("D")))
	{
		x += movementSpeed;
	}
}
else
	speed = 0;

if(health <= 0)
{
	health = 0
	global.playerCatched = true;	
}
