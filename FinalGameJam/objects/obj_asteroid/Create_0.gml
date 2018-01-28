createStep = 1


if(distance_to_object(obj_planet_colony) < distance_to_object(obj_planet_transmission))
{
	body = obj_planet_colony;
}
else body = obj_planet_transmission;


path_x = 0
path_y = 0
j = 1
orbit_angle = 0
scale(random_range(.75,1.5))


orbit_distance = point_distance(x,y,body.x,body.y)
orbit_speed = random_range(.1,.4)
comet = 0