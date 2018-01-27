/// @description Insert description here
// You can write your code in this editor

iron_count = 0;
hydrogen_count = 0;
oxygen_count = 0;
gold_count = 0;
temp = 0;

draw_state = false;

/*
1 = planet
2 = moon
3 = asteroid
*/

object_id = 0;

if(object_id == 1)
{
	oxygen_count = irandom_range(2, 6);
	iron_count = irandom_range(3, 5);
	hydrogen_count = irandom_range(2, 4);
	
	temp = irandom_range(0, 9);
	if(temp < 1)
	{
		gold_count = 1;
	}
}

else if(object_id == 2)
{
	iron_count = irandom_range(1, 4);
	hydrogen_count = irandom_range(3, 5)
	
	temp = irandom_range(0, 4);
	if(temp < 1)
	{
		gold_count = 1;
	}
}

else
{
	iron_count = irandom_range(5, 10);
	gold_count = irandom_range(1, 3);
}