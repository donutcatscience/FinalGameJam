/// @description Insert description here
// You can write your code in this editor

draw_self();

if(instanceID == 5)
{
	draw_text(x - 200, y - 30, "Iron: " + string(iron_harvested) + " units");
	draw_text(x - 200, y - 10, "Gold: " + string(gold_harvested) + " units");
	draw_text(x - 200, y + 10, "Oxygen: " + string(oxygen_harvested) + " units");
	draw_text(x - 200, y + 30, "Hydrogen: " + string(hydrogen_harvested) + " units");
	draw_text(500, 500, string(canShoot));
}