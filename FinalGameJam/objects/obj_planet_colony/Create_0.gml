randomize();
moons = irandom_range(0,3)

orbit_distance = random_range(400,1000)
orbit_angle = 0
x_temp = x + orbit_distance
y_temp = y + orbit_distance
proximity = 100;



for(i = 0; i < moons; i++)
{
	if(instance_exists(obj_moon))
	{
		while(point_distance(x_temp,y_temp,instance_nearest(x_temp,y_temp,obj_moon).x,instance_nearest(x_temp,y_temp,obj_moon).y) < proximity)
		{
			orbit_distance = random_range(450,1100)
			x_temp = x + orbit_distance
			y_temp = y + orbit_distance
		}
	}
	with(instance_create_layer(x_temp,y_temp,"moons",obj_moon))
	{
		body = other
		orbit_distance = body.orbit_distance
		orbit_speed = random_range(.5,2.5)
	}
}