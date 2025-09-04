if (!player_hit) {
    move_towards_point(player.x, player.y, movementSpeed);

    if (place_meeting(x, y, player)) 
	{
        player_hit = true;             
        health -= 1;             
        timer = game_get_speed(gamespeed_fps) * 3; // 180 seconds            
        speed = 0;
    }
}
else {
    speed = 0;
    timer--;
    if (timer <= 0) 
	{
        player_hit = false; 
    }
}


if (hp <= 0)
{
	instance_destroy()
}


