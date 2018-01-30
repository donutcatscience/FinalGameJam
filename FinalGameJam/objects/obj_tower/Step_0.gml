/// @description Insert description here
// You can write your code in this editor



if(distance_to_object(instance_nearest(x, y, obj_enemy)) <= range && 
((!(instanceID == 5)) || (!(instanceID == 4)))) //if tower is not hack or harvester
{
	if(canShoot)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		canShoot = false;	
		alarm[0] = room_speed * cooldown;
	}
}

if(instanceID == 5 && canShoot && harvest_count < 4)
{
		//add bars for program
		canShoot = false;
		harvest_count++;
		alarm[0] = room_speed * 9;
		
		iron_harvested += bodyHarvested.iron_count;
		gold_harvested += bodyHarvested.gold_count;
		oxygen_harvested += bodyHarvested.oxygen_count;
		hydrogen_harvested += bodyHarvested.hydrogen_count;
}

if(instanceID == 4)
{
	if(distance_to_object(instance_nearest(x, y, obj_enemy)) <= range)
	{
		//add bars for program
		canShoot = true;
		
		if(canShoot)
		{
			instance_create_layer(x, y, "Instances", obj_bullet);
			canShoot = false;
			alarm[0] = room_speed * cooldown;
		
			(instance_nearest(x, y, obj_enemy)).hack = 1;
		}
	}
}

obj_target = obj_controller.obj_target;
if(instance_exists(obj_target))
image_angle = point_direction(x,y,obj_target.x,obj_target.y) - 90