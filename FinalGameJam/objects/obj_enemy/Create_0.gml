spd = 0
damage = 0
hp = 200

cooldown = 0
spawn = 1

image_angle = 0 // assign

unit_x = 1
unit_y = 0

velocity_x = 0
velocity_y = 0

hspd = 0
vspd = 0

obj_ship_red_seeker = 0
obj_ship_green_tank = 1
obj_ship_yellow_speedy = 0
obj_ship_blue_morph = 0
obj_ship_purple_sniper = 0


obj_enemy_target = obj_transmission_tower
//INSTANTIATION

//obj_ship_red_seeker
if(obj_ship_red_seeker == 1)
{
	spd = 8 // needs to be 80
	hp = 100
	damage = 350
	range = 0 
	stop = 0
	//——
}

//obj_ship_green_tank
if(obj_ship_green_tank == 1)
{
	obj_enemy_target = obj_transmission_tower
	spd = 4 // 40
	hp = 800
	damage = 1000
	shooting_rate = 120
	range = 750
	stop = 200
	cooldown = 0 //120
	spawn = 1
	//——
}

//obj_ship_yellow_speedy
if(obj_ship_yellow_speedy == 1)
{
	spd = 240
	hp = 200
	damage = 50
	shooting_rate = 30
	range = 450
	stop = 270
	//——
}

//obj_ship_blue_morph
if(obj_ship_blue_morph == 1)
{
	spd = 80
	hp = 200
	damage = 30
	shooting_rate = 30
	range = 450
	stop = 270
	//—— 
}

//obj_ship_purple_sniper
if(obj_ship_purple_sniper == 1)
{
	//AI for dps based on nearest target
	spd = 40
	hp = 100
	damage = 100
	shooting_rate = 90
	range = 1500
	stop = 1500
	//——
}

hspeed = hspd
vspeed = vspd