/// @description Insert description here
// You can write your code in this editor

if(image_angle >= 360)
{
	image_angle = 1;
}

if(image_angle <= 0)
{
	image_angle = 359;	
}

x_triangle = lengthdir_x(1, image_angle);
y_triangle = lengthdir_y(1, image_angle);

hspeed = x_triangle * movement_speed;
vspeed = y_triangle * movement_speed;