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


var dx = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var dy = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += dx;
y += dy;

if (dx == 0 && dy == 0) {
  image_index = 0;
  image_speed = 0;
} else {
  if (dx > 0) {
    sprite_index = playersideWalkingRight;
	image_xscale = 1
  } else if (dx < 0) {
    sprite_index = playersideWalkingLeft;
	image_xscale = -1
  } else {
    if (dy > 0) {
      sprite_index = playerFrontwalkNew;
	  image_xscale = 1
    } else {
      sprite_index = playerBackwalkNew;
	  image_xscale = 1
    }
  }
  image_speed = 1;
}