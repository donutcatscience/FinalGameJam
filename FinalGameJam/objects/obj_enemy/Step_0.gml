hspeed = hspd
vspeed = vspd

var velx = instance_nearest(self.x, self.y, obj_transmission_tower).x - self.x
var vely = instance_nearest(self.x, self.y, obj_transmission_tower).y - self.y

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


if (hp <= 0)
{
	instance_destroy(self)
}