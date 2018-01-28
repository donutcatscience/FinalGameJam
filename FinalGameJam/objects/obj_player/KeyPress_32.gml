/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_resource_manager) <= 100)
{
	obj_resource_manager.draw_state = true;
	obj_resource_manager.alarm[0] = room_speed * 5;
	instance_create_layer(x, y, "Instances", obj_radar);
}
