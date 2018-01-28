timer--;
if(timer <= 0)
{
	timer = 30;
	if(random(50) <= 1)
	{
		with(instance_create_layer(x,y,"asteroids",obj_asteroid))
		{
			if(irandom(1) == 0) spawn_location = 0;
			else spawn_location = 1;
			
			if(!spawn_location)
			{
				x = random_range(room_width*(1/2),room_width*(3/4))
				y = 0 - 32
				
			}
			else
			{
				x = random_range(room_width*(1/4),room_width*(1/2))
				y = room_height + 32
			}
			comet = 1
		}
	}
}