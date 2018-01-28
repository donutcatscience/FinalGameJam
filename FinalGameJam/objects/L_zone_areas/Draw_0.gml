

switch(obj_planet_controller.layout)
{
	case 0:
	draw_circle(room_width*(1/3),room_height*(1/3),175,true)  // small circle
	draw_rectangle(room_width*(.8/5),room_height,room_width*(1/2),room_height*.75,true) // bottom circle
	draw_rectangle(room_width*(3.5/5),room_height*.25,room_width*(4.5/5),0,true) // top circle
	break;
	case 1: 
	draw_circle(room_width*(2/3),room_height*(1/3),175,true)  // small circle
	draw_rectangle(room_width*(4.2/5),room_height,room_width*(1/2),room_height*.75,true) // bottom circle
	draw_rectangle(room_width*(1.5/5),room_height*.25,room_width*(.5/5),0,true) // top circle
	break;
	case 2:
	draw_circle(room_width*(2/3),room_height*(2/3),175,true)  // small circle
	draw_rectangle(room_width*(4.2/5),0,room_width*(1/2),room_height*.25,true) // bottom circle
	draw_rectangle(room_width*(1.5/5),room_height*.75,room_width*(.5/5),room_height,true) // top circle
	break;
	case 3:
	draw_circle(room_width*(1/3),room_height*(2/3),175,true)  // small circle
	draw_rectangle(room_width*(.8/5),0,room_width*(1/2),room_height*.25,true) // bottom circle
	draw_rectangle(room_width*(3.5/5),room_height*.75,room_width*(4.5/5),room_height,true) // top circle
	break;
}
