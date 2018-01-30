if(hp <= 0)
{
	instance_destroy(self)
}

if(createStep)
{
	createStep = 0
	image_angle = point_direction(x,y,obj_planet_transmission.x,obj_planet_transmission.y) + 90
	with(instance_create_layer(x,y,"towers", obj_player1))
	{
	}
}