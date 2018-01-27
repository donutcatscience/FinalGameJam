/// @description Insert description here
// You can write your code in this editor

if(!(movement_speed <= 0))
{
	movement_speed -= accel_factor;
}
else
{
	movement_speed = 0;
}