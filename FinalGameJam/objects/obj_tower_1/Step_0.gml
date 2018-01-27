if(cooldown = 60) //resets usability and timer when cooldown reaches max
{
	cooldown = 0
	spawn = 1
}

if(spawn = 0)
{
	cooldown += 1
}

if(distance_to_object(instance_nearest(self.x, self.y, obj_enemy)) <= 200 and spawn = 1)
{
	instance_create_layer(self.x, self.y, "Instances", obj_tower_1_ship)
	spawn = 0 
}

