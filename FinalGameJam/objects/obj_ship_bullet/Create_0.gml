spd = 10
if(obj_enemy.obj_ship_purple_sniper != 1)
{
	if (instance_exists(obj_enemy.obj_enemy_target))
	{
		scr_enemy_shoot(spd, obj_enemy.obj_enemy_target)
	}
}
else
{
	if(instance_exists(obj_enemy.purple_focus))
	{
		scr_enemy_shoot(spd, obj_enemy.purple_focus)
	}
}