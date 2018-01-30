/// @description Insert description here
// You can write your code in this editor

//variables
movement_speed = 0;
accel_factor = 1; //6
deccel_factor = 1; //6

//determining movement
x_triangle = 0;
y_triangle = 0;

//decreasing turn rate while at faster speeds variables
turn_rate = 4;

//build variables
build_cooldown = false;

image_angle = point_direction(x,y,room_width/2,room_height/2);

face_direction = 0
angle_diff = 0
