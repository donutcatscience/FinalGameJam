if (!instance_exists(obj_testPlayer)) {
	window_set_cursor(cr_default); //returns normal mouse
	if (instance_exists(obj_fakeMouse)){
		instance_destroy(obj_fakeMouse);
	}
} else if (instance_exists(obj_testPlayer)){
	window_set_cursor(cr_none); //set mouse to none so it can be replaced by other mouse
	if (!instance_exists(obj_fakeMouse)){
		instance_create_layer(mouse_x,mouse_y,"UI", obj_fakeMouse);
	}
}
