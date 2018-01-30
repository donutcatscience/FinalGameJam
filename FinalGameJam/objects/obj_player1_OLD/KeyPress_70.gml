/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(instance_nearest(x, y, obj_asteroid)) <= 200) and instance_nearest(x, y, obj_asteroid).tower_built = 0
{
	global.obj_closest = instance_nearest(x, y, obj_asteroid);
	global.obj_closest.tower_built = 1;
	with(instance_create_layer(global.obj_closest.x, global.obj_closest.y, "towers", obj_tower))
	{	
	}
	build_cooldown = false;
	alarm[0] = room_speed * 15;
}
else if(distance_to_object(instance_nearest(x, y, obj_asteroid)) <= 200)
{
	
}