if(cooldown >= 150)
{
	cooldown = 0
	spawn = 1
}

if(spawn = 0)
{
	cooldown += 1
}

if(spawn = 1)
{
	instance_create_layer(self.x, self.y, "Instances", obj_enemy)

	spawn = 0
}