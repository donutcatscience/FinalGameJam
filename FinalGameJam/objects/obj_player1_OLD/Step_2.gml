if(x < -64 or x > room_width + 64)
{
	x = clamp(x,0,room_width)
	image_angle = point_direction(x,y,room_width/2,room_height/2);
}