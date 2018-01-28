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
4 = comet
5 = nebula
*/

object_id = 1;

if(object_id == 1)
{
	oxygen_count = 5
	iron_count = 7
	hydrogen_count = 2
	gold_count = 1;
}

else if(object_id == 2)
{
	iron_count = 5;
	hydrogen_count = 0;
	oxygen_count = 0;
	gold_count = 1;
}

else if(object_id == 3)
{
	iron_count = 7;
	gold_count = 5;
}

else if(object_id == 4)
{
	oxygen_count = 10;
	hydrogen_count = 2;
}

else if(object_id == 5)
{
	oxygen_count = 5;
	hydrogen_count = 10;
}