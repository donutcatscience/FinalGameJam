globalvar spawn_asteroids;
spawn_amount = 10;
x_temp = 0;
y_temp = 0;

for(i = 0; i < spawn_amount; i++)
{
	x_temp = irandom_range(0,room_width);
	y_temp = irandom_range(0,room_height);
	if(instance_exists(obj_asteroid))
	{
		while(instance_nearest(x_temp, y_temp,obj_asteroid) < 64)
		{
			x_temp = irandom_range(0,room_width);
			y_temp = irandom_range(0,room_height);
		}
	}
	instance_create_layer(x_temp,y_temp,"asteroids",obj_asteroid);
}