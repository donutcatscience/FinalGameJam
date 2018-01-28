/// @description draw bar + correct text

draw_sprite(spr_startButton,0,x,y);

centerWidth = self.sprite_width/2;
centerHeight = self.sprite_height/2;
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font();

if (global.language = "english"){
	draw_text(centerWidth,centerHeight,"Start")
}