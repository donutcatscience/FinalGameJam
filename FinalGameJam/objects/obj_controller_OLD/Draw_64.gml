draw_text(20, 20, "obj_target " + string(obj_controller.obj_target))

if(instance_exists(obj_transmission_tower))
{	
	draw_text(20, 40, "Transmission Health: " + string(obj_transmission_tower.hp))
}

if(instance_exists(obj_colony))
{
	draw_text(20, 60, "Colony Health: " + string(obj_colony.hp))
}