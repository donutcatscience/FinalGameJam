/// @description draw bar + correct text based on language

draw_sprite(spr_startButton,0,x,y);

centerWidth = self.sprite_width/2 + x;
centerHeight = self.sprite_height/2 + y;
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(KenFuture_30);

if (global.language = "english"){
	draw_text(centerWidth,centerHeight,"English");
} else if (global.language = "spanish"){
	draw_text(centerWidth,centerHeight,"Inglés");
} else if (global.language = "french"){
	draw_text(centerWidth,centerHeight,"Anglais");
}