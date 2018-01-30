createStep = 1

tower_built = 0

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

grav = 0

orbit_distance = point_distance(x,y,body.x,body.y)
orbit_speed = random_range(.1,.4)
comet = 0


switch(irandom(3))
{
	case 0: sprite_index = spr_asteroid_01; break;	
	case 1: sprite_index = spr_asteroid_02; break;
	case 2: sprite_index = spr_asteroid_03; break;
	case 3: sprite_index = spr_asteroid_04; break;
}
image_angle  = random(360)

resource_manager = instance_create_layer(x,y,"asteroids",obj_resource_manager)