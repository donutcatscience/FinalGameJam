/// @description Insert description here
// You can write your code in this editor

draw_self();

if(draw_state)
{
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	
	draw_set_color(c_red);
	draw_text(x, y - 30, "Iron: " + string(iron_count) + " units");
	draw_text(x, y - 10, "Gold: " + string(gold_count) + " units");
	draw_text(x, y + 10, "Oxygen: " + string(oxygen_count) + " units");
	draw_text(x, y + 30, "Hydrogen: " + string(hydrogen_count) + " units");
}