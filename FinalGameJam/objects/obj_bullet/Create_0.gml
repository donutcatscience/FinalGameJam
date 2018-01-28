/// @description Insert description here
// You can write your code in this editor

/*
1 = machinegun tower (weak/slow)
2 = cannon (strong/slow)
3 = drone
4 = magnifier
5 = harvester
6 = shotgun
7 = railgun
*/

damage = 0;
spd = 0;
homing = false;

obj_target = obj_controller.obj_target;

if (instance_exists(obj_target)){
	
	if((instance_nearest(x, y, obj_tower)).instanceID == 1)
	{
		sprite_index = spr_bullet_1;
		damage = 50;
		scr_shoot(140,obj_target);
	}
	else if((instance_nearest(x, y, obj_tower)).instanceID == 2)
	{
		sprite_index = spr_bullet_2;
		damage = 200;
		scr_shoot(120,obj_target);
	}
	else if((instance_nearest(x, y, obj_tower)).instanceID == 3)
	{
		homing = true;
		damage = 750;
	}
	else if((instance_nearest(x, y, obj_tower)).instanceID == 6)
	{
		sprite_index = spr_bullet_6;
		damage = 100;
		scr_shoot(240,obj_target);
	}
	else if((instance_nearest(x, y, obj_tower)).instanceID == 7)
	{
		sprite_index = spr_bullet_7;
		damage = 600;
		alarm[0] = room_speed * 2;
		scr_shoot(125,obj_target);
	}
}