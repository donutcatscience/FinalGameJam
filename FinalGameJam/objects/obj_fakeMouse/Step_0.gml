/// @description control fake mouse

image_xscale = 1.5;
image_yscale = 1.5;
x = mouse_x;
y = mouse_y;

if (mouse_y >= 880) {
	obj_fakeMouse.sprite_index = spr_crossairHand;
} else obj_fakeMouse.sprite_index = spr_crossairRed;