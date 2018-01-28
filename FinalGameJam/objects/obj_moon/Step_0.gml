if(createStep)
{
	orbit_angle = random(360)
	createStep = 0
}

orbit_angle += orbit_speed;
if(orbit_angle < 0) orbit_angle = 360 - orbit_angle;
if(orbit_angle > 360) orbit_angle = 0 + (orbit_angle - 360)

x = body.x + lengthdir_x(orbit_distance,orbit_angle);
y = body.y + lengthdir_y(orbit_distance,orbit_angle);