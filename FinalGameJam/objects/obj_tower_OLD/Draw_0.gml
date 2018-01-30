/// @description Insert description here
// You can write your code in this editor

draw_self();

if(instanceID == 5)
{
	draw_text(x, y - 65, "Iron: " + string(iron_harvested) + " units");
	draw_text(x, y - 50, "Gold: " + string(gold_harvested) + " units");
	draw_text(x, y - 35, "Oxygen: " + string(oxygen_harvested) + " units");
	draw_text(x, y - 20, "Hydrogen: " + string(hydrogen_harvested) + " units");
	draw_text(500, 500, string(canShoot));
}