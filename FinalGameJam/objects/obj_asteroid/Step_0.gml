if(createStep)
{
	createStep = 0
	if(!comet)
	{
	
	if(point_distance(x,y,obj_planet_colony.x,obj_planet_colony.y) < 600) or (point_distance(x,y,obj_planet_transmission.x,obj_planet_transmission.y) < 600) instance_destroy()
	
	scale(random_range(.25,2))
	#region
	switch(obj_planet_controller.layout)
	{
		case 0:
		if(point_in_circle(x,y,room_width*(1/3),room_height*(1/3),175)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(.8/5),room_height*.75,room_width*(1/2),room_height)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(3.5/5),0,room_width*(4.5/5),room_height*.25)) orbit_speed = 0
		break;
		
		case 1:
		
		if(point_in_circle(x,y,room_width*(2/3),room_height*(1/3),175)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(1/2),room_height*.75,room_width*(4.2/5),room_height)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(.5/5),0,room_width*(1.5/5),room_height*.25)) orbit_speed = 0
		break;
		
		case 2:
		
		if(point_in_circle(x,y,room_width*(2/3),room_height*(2/3),175)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(1/2),0,room_width*(4.2/5),room_height*.25)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(.5/5),room_height*.75,room_width*(1.5/5),room_height)) orbit_speed = 0
		break;
		
		case 3:
		
		if(point_in_circle(x,y,room_width*(1/3),room_height*(2/3),175)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(.8/5),0,room_width*(1/2),room_height*.25)) orbit_speed = 0
		if(point_in_rectangle(x,y,room_width*(3.5/5),room_height*.75,room_width*(4.5/5),room_height)) orbit_speed = 0
		
		break;
	}
	#endregion
	
	orbit_angle = random(360)
	}
	else
	{
		if(spawn_location)
		{
			hspeed = random_range(.1,2);
			vspeed = random_range(-.1,-1.2);
			
		}
		else
		{
			hspeed = random_range(-.1,-2);
			vspeed = random_range(.1,1.2);
			
		}
	}
}
if(!comet)
{
	orbit_angle += orbit_speed;
	if(orbit_angle < 0) orbit_angle = 360 - orbit_angle;
	if(orbit_angle > 360) orbit_angle = 0 + (orbit_angle - 360)

	x = body.x + lengthdir_x(orbit_distance,orbit_angle);
	y = body.y + lengthdir_y(orbit_distance,orbit_angle);
}