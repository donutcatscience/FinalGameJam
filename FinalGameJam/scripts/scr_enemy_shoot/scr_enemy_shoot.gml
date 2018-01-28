//in create, this will shoot a projectile at the location
//in step, this will chase the enemy
	
//scr_shoot(speed, obj_target)
///@param bulletspeed speed
///@param aggrotarget obj_target

spd = argument0
obj_enemy_target = argument1


var velx = instance_nearest(self.x, self.y, obj_enemy_target).x - self.x
var vely = instance_nearest(self.x, self.y, obj_enemy_target).y - self.y

var magnitude = sqrt((velx*velx) + (vely*vely))

if(magnitude > 0)
{
	unit_x = velx / magnitude
	unit_y = vely / magnitude
}

velocity_x = unit_x * spd
velocity_y = unit_y * spd


var radians = arctan2(-unit_y, unit_x)
image_angle = radtodeg(radians)


hspd = velocity_x
vspd = velocity_y

hspeed = hspd
vspeed = vspd