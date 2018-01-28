///@param obj
///@param spawn_amount
///@param dist_apart
///@param min_set_scale
///@param max_set_scale

spawn_amount = argument1;
x_temp = irandom_range(0,room_width);
y_temp = irandom_range(0,room_height);
proximity = argument2;
set_scale = 0;

randomize();

for(i = 0; i < spawn_amount; i++)
{
	safeguard = 1000;
	if(instance_exists(argument0))
	{
		while(point_distance(x_temp,y_temp,instance_nearest(x_temp,y_temp,argument0).x,instance_nearest(x_temp,y_temp,argument0).y) < proximity)
		{
			x_temp = irandom_range(0,room_width);
			y_temp = irandom_range(0,room_height);
			safeguard--;
			if(safeguard < 0) exit;
		}
	}
	with(instance_create_layer(x_temp,y_temp,"asteroids",argument0))
	{
		if(argument3 > 0 and argument4 > 0)
		{
			set_scale = random_range(argument3,argument4)
			image_xset_scale = set_scale
			image_yset_scale = set_scale
			grav = set_scale;
		}
	}
}