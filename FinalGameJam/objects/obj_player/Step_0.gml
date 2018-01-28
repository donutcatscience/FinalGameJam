/// @description Insert description here
// You can write your code in this editor

if(image_angle > 360)
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

if (instance_exists(obj_asteroid)){
	nearestAsteroid = instance_nearest(x,y,obj_asteroid); // find the nearest asteroid
	face_direction = point_direction(x,y,nearestAsteroid.x,nearestAsteroid.y); // find angle from self to nearest asteroid
	angle_diff = angle_difference(image_angle,face_direction) // difference between ship's angle & face_direction
	image_angle -= (min(abs(angle_diff), nearestAsteroid.grav) * sign(angle_diff)) / 4; // equation that moves the image_angle towards the asteroid
}