if(justSpawned = 1)
{
	rng = irandom_range(1, 100)
	if(rng >= 1 and rng < 21)
	{
		obj_controller.red_seeker_count++
		obj_ship_red_seeker = 1
		sprite_index = spr_Enemy_01
		//show_message("red")
	}
	if(rng >= 21 and rng < 41)
	{
		obj_controller.green_tank_count++
		obj_ship_green_tank = 1
		//show_message("green")
		sprite_index = spr_Enemy_02
	}
	if(rng >= 41 and rng < 61)
	{
		obj_controller.yellow_speedy_count++
		obj_ship_yellow_speedy = 1
		//show_message("yellow")
		sprite_index = spr_enemy_yellow
	}
	if(rng >= 61 and rng < 81)
	{
		obj_ship_blue_morph = 1
		sprite_index = spr_Enemy_03
	}
	if(rng >= 81 and rng <= 100)
	{
		obj_controller.purple_sniper_count++
		obj_ship_purple_sniper = 1
		sprite_index = spr_Enemy_04
	}
	justSpawned = 0
}

//INSTANTIATION

//obj_ship_red_seeker
if(obj_ship_red_seeker == 1 and set == 1)
{
	spd = 30 // needs to be 80
	hp = 100
	damage = 350
	range = 0 
	stop = 0
	set = 0
	//——
}

//obj_ship_green_tank
if(obj_ship_green_tank == 1 and set == 1)
{
	obj_enemy_target = obj_transmission_tower
	spd = 40 // 40
	hp = 800
	damage = 50
	shooting_rate = 120
	range = 750
	stop = 200
	cooldown = 0 //120
	spawn = 1
	set = 0
	//——
}

//obj_ship_yellow_speedy
if(obj_ship_yellow_speedy == 1 and set == 1)
{
	obj_enemy_target = obj_transmission_tower
	spd = 240 // 240 
	hp = 200
	damage = 50
	shooting_rate = 30
	range = 450
	stop = 270
	cooldown = 0 
	spawn = 1
	set = 0
	//——
}

//obj_ship_blue_morph
if(obj_ship_blue_morph == 1 and set == 1)
{	
	obj_enemy_target = obj_transmission_tower
	spd = 80
	hp = 200
	damage = 100
	shooting_rate = 30
	range = 450
	stop = 270
	cooldown = 0 
	spawn = 1
	set = 0
	//—— 
}

//obj_ship_purple_sniper
if(obj_ship_purple_sniper == 1 and set == 1)
{	
	//AI for dps based on nearest target
	obj_enemy_target = obj_transmission_tower
	spd = 40
	hp = 100
	damage = 100
	shooting_rate = 90
	range = 1500
	stop = 1500
	cooldown = 0
	spawn = 1
	set = 0
	//——
}

////////////////////////////////////// 
//SEEKER

if(obj_ship_red_seeker == 1)
{
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
}



///////////////////////////////////////
//TANK


if(obj_ship_green_tank == 1)
{
	if(cooldown >= shooting_rate)
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
			spd = 20
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
//YELLOW


if(obj_ship_yellow_speedy == 1)
{
	if(cooldown >= shooting_rate)
	{
		cooldown = 0
		spawn = 1
	}
	if(spawn = 0)
	{
		cooldown += 1
	}
	
	if(obj_ship_yellow_speedy == 1 and instance_exists(obj_enemy_target))
	{
		if(distance_to_object(obj_enemy_target) >= stop and instance_exists(obj_enemy_target))
		{
			spd = 35
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



///////////////////////////////////////////////////////
//BLUE

if(obj_ship_blue_morph == 1)
{
	morph += 1
	if(morph <= 180)
	{
		if(cooldown >= shooting_rate)
		{
			cooldown = 0
			spawn = 1
		}
		if(spawn = 0)
		{
			cooldown += 1
		}
	
		if(obj_ship_blue_morph == 1 and instance_exists(obj_enemy_target))
		{
			if(distance_to_object(obj_enemy_target) >= stop and instance_exists(obj_enemy_target))
			{
				spd = 80
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
	else
	{
		if (morph >= 182)
		{
			morph = 181
		}
		if(obj_controller.red_seeker_count <= obj_controller.green_tank_count)
		{
			if(obj_controller.red_seeker_count <= obj_controller.yellow_speedy_count)
			{
				if(obj_controller.red_seeker_count <= obj_controller.purple_sniper_count)
				{
					obj_ship_red_seeker = 1
					obj_ship_blue_morph = 0
					//sprite_index = spr_red
					obj_controller.red_seeker_count++
				}
			}
		}
		if(obj_controller.green_tank_count <= obj_controller.green_tank_count)
		{
			if(obj_controller.green_tank_count <= obj_controller.yellow_speedy_count)
			{
				if(obj_controller.green_tank_count <= obj_controller.purple_sniper_count)
				{
					obj_ship_green_tank = 1
					obj_ship_blue_morph = 0
					//sprite_index = spr_green
					obj_controller.green_tank_count++
				}
			}
		}
		if(obj_controller.yellow_speedy_count <= obj_controller.green_tank_count)
		{
			if(obj_controller.yellow_speedy_count <= obj_controller.yellow_speedy_count)
			{
				if(obj_controller.yellow_speedy_count <= obj_controller.purple_sniper_count)
				{
					obj_ship_yellow_speedy = 1
					obj_ship_blue_morph = 0
					//sprite_index = spr_yellow
					obj_controller.yellow_speedy_count++
				}
			}
		}
		if(obj_controller.purple_sniper_count <= obj_controller.green_tank_count)
		{
			if(obj_controller.purple_sniper_count <= obj_controller.yellow_speedy_count)
			{
				if(obj_controller.purple_sniper_count <= obj_controller.purple_sniper_count)
				{
					obj_ship_purple_sniper = 1
					obj_ship_blue_morph = 0
					//sprite_index = spr_purple
					obj_controller.purple_sniper_count++
				}
			}
		}	
	}
}

///////////////////////////////////
//PURPLE


if(obj_ship_purple_sniper == 1)
{
	
	if(cooldown >= shooting_rate)
	{
		cooldown = 0
		spawn = 1
	}
	if(spawn = 0)
	{
		cooldown += 1
	}
	
	if(obj_ship_purple_sniper == 1)
	{
		if(distance_to_object(obj_tower) <= stop or distance_to_object(obj_colony) <= stop or distance_to_object(obj_transmission_tower) <= stop)
		{
			spd = 0
			if(distance_to_object(obj_tower) <= stop and instance_exists(obj_tower))
			{
				if(spawn = 1)
				{
					purple_focus = obj_tower
					instance_create_layer(self.x, self.y, "Instances", obj_ship_bullet)
					spawn = 0
				}
			}
			else if(distance_to_object(obj_colony) <= stop and instance_exists(obj_colony))
			{
				if(spawn = 1)
				{
					purple_focus = obj_colony
					instance_create_layer(self.x, self.y, "Instances", obj_ship_bullet)
					spawn = 0
				}
			}
			else if(distance_to_object(obj_transmission_tower) <= stop and instance_exists(obj_transmission_tower))
			{
				if(spawn = 1)
				{
					purple_focus = obj_transmission_tower
					instance_create_layer(self.x, self.y, "Instances", obj_ship_bullet)
					spawn = 0
				}
			}
		}
		else 
		{
			spd = 40
			purple_focus = obj_transmission_tower
			if(instance_exists(purple_focus))
			{
				scr_movement(spd, purple_focus)
			}
		}
	}
}




/////////////////////////////////


/*if(instance_exists(obj_enemy_target) and distance_to_object(obj_enemy_target) > range)
{
	if(distance_to_object(obj_enemy_target) >= stop)
	{
		scr_movement(spd, obj_enemy_target)
	}
}
*/
if (hp <= 0)
{
	instance_destroy(self)
}