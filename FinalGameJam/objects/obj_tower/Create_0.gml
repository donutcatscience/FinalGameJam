/// @description Insert description here
// You can write your code in this editor

hp = 100;
cooldown = 0;
range = 0;
canShoot = true;

//planet attached to it
attached_to = global.obj_closest;

iron_harvested = 0;
gold_harvested = 0;
oxygen_harvested = 0;
hydrogen_harvested = 0;
harvest_count = 0;

instanceID = 0;
scale(5)


/*
1 = machinegun tower (weak/slow)
2 = cannon (strong/slow)
3 = drone
4 = hack
5 = harvester
6 = shotgun
7 = railgun
*/

if(global.towerID == 1)
{
	cooldown = 1;
	sprite_index = spr_tower_machinegun;
	range = 500*4;
	instanceID = 1;
}
else if(global.towerID == 2)
{
	cooldown = 3.3;
	sprite_index = spr_tower_cannon;
	instanceID = 2;
	range = 750*2;
}
else if(global.towerID == 3)
{
	cooldown = 5;
	sprite_index = spr_drone_tower;
	instanceID = 3;
	range = 1000*2;
}
else if(global.towerID == 4)
{
	range = 750*2;
	cooldown = 15;
	sprite_index = spr_tower_hack;
	instanceID = 4;
}
else if(global.towerID == 5)
{
	sprite_index = spr_tower_harvester;
	cooldown = 9;
	instanceID = 5;
	bodyHarvested = instance_nearest(x, y, obj_resource_manager);
}
else if(global.towerID == 6)
{
	sprite_index = spr_tower_shotgun;
	cooldown = 1;
	instanceID = 6;
	range = 250*2;
}
else if(global.towerID == 7)
{
	cooldown = 8;
	sprite_index = spr_tower_railgun;
	instanceID = 7;
	range = 2000*3;
}
else if(global.towerID == 8)
{
	cooldown = 6.6;
	sprite_index = spr_missle_tower;
	instanceID = 8;
	range = 8000;
}
scale(2)
obj_target = obj_controller.obj_target;
image_angle = point_direction(x,y,obj_target.x,obj_target.y)