draw_sprite_ext(sprite_index,image_index,x,y-8,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_set_color(make_color_rgb(237,237,237));

if sprite_index = spr_p2_duck{
	draw_sprite(spr_p2_mark,0,x,y-44+8);
} else {
	draw_sprite(spr_p2_mark,0,x,y-44);
}

/*draw_text(x,y,x);
draw_text(x,y-20,state);
draw_text(x,y-90,moveLength);
