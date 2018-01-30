body = 0;
orbit_distance = 0
path_x = 0
path_y = 0
j = 1

orbit_speed = 20;
orbit_angle = 0
scale(random_range(.75,1.5))

createStep = 1

switch(irandom(3))
{
	case 0: sprite_index = spr_Moon_1; break;	
	case 1: sprite_index = spr_Moon_02; break;
	case 2: sprite_index = spr_Moon_03; break;
	case 3: sprite_index = spr_Moon_04;
}