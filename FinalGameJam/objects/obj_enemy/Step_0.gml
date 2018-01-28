////////////////////////////////////// 
//SEEKER


if(obj_ship_red_seeker == 1 and instance_exists(obj_tower))
{
	scr_movement(spd, obj_tower)
}
else if(obj_ship_red_seeker == 1 and !instance_exists(obj_tower) and instance_exists(obj_colony))
{
	scr_movement(spd, obj_colony)
}
else if(obj_ship_red_seeker == 1 and !instance_exists(obj_colony) and instance_exists(obj_transmission_tower))
{
	scr_movement(spd, obj_transmission_tower)
}



///////////////////////////////////////
//TANK

if(obj_ship_green_tank == 1)
{
	if(cooldown >= 120)
	{
		cooldown = 0
		spawn = 1
	}
	if(spawn = 0)
	{
		cooldown += 1
	}
	
	if(obj_ship_green_tank == 1 and instance_exists(obj_enemy_target))
	{
		if(distance_to_object(obj_enemy_target) >= stop and instance_exists(obj_enemy_target))
		{
			spd = 8
			scr_movement(spd, obj_enemy_target)
		}
		if(distance_to_object(obj_enemy_target) < stop and instance_exists(obj_enemy_target))
		{
			spd = 0
			scr_movement(spd, obj_enemy_target)
		}
		if(distance_to_object(obj_enemy_target) <= range and spawn = 1 and instance_exists(obj_enemy_target))
		{
			instance_create_layer(self.x, self.y, "Instances", obj_ship_bullet)
			spawn = 0 
		}
	}
}



//////////////////////////////////////////////////



if(instance_exists(obj_enemy_target) and distance_to_object(obj_enemy_target) > range)
{
	if(distance_to_object(obj_enemy_target) >= stop)
	{
		scr_movement(spd, obj_enemy_target)
	}
}

if (hp <= 0)
{
	instance_destroy(self)
}