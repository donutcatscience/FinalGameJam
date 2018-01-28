/// @description Insert description here
// You can write your code in this editor

draw_self();

if(instanceID == 5)
{
	draw_text(x, y - 14, "Iron: " + string(iron_harvested) + " units");
	draw_text(x, y - 7, "Gold: " + string(gold_harvested) + " units");
	draw_text(x, y + 7, "Oxygen: " + string(oxygen_harvested) + " units");
	draw_text(x, y + 14, "Hydrogen: " + string(hydrogen_harvested) + " units");
}