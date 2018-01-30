if(instance_exists(obj_transmission_tower))
{
	if(instance_exists(obj_colony))
	{
		if(obj_target == obj_transmission_tower)
		{
			obj_target = obj_colony
		}
		else if (obj_target == obj_colony)
		{
			obj_target = obj_transmission_tower
		}
	}
	else
	{
		obj_target = obj_transmission_tower
	}
}
else
{
	game_state = 0
}
