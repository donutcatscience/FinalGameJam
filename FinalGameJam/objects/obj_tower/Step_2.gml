/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(instance_nearest(x, y, obj_player)) <= 200 && harvest_count > 0)
{
	harvest_count = 0;
	
	global.iron_player += iron_harvested;
	global.gold_player += gold_harvested;
	global.hydrogen_player += hydrogen_harvested;
	global.oxygen_player += oxygen_harvested;

	iron_harvested = 0;
	gold_harvested = 0;
	oxygen_harvested = 0;
	hydrogen_harvested = 0;
}

x = attached_to.x;
y = attached_to.y;
