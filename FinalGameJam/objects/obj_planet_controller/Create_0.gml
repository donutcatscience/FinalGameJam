randomize()
planet_transmission = instance_create_layer(x,y,"planets",obj_planet_transmission);
planet_colony = instance_create_layer(x,y,"planets",obj_planet_colony);

layout = irandom(3)
switch(layout)
{
	case 0:
	planet_transmission.x = 0; planet_transmission.y = 0; // top left
	planet_colony.x = room_width *.85; planet_colony.y = room_height *.75; break;
	case 1:
	planet_transmission.x = room_width; planet_transmission.y = 0; // top right
	planet_colony.x = room_width *.15; planet_colony.y = room_height *.75; break;
	case 2:
	planet_transmission.x = room_width; planet_transmission.y = room_height; // bottom right
	planet_colony.x = room_width *.15; planet_colony.y = room_height *.25; break;
	case 3:
	planet_transmission.x = 0; planet_transmission.y = room_height; // bottom left
	planet_colony.x = room_width *.85; planet_colony.y = room_height *.25; break;
}

with(planet_transmission)
{
scale(10);
}
with(planet_colony)
{
scale(10);
}