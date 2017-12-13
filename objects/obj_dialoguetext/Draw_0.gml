//Top left corner
draw_sprite(spr_messagebox,4,placex,placey);
//Bottom left corner
draw_sprite(spr_messagebox,8,placex,placey+(height-1)*16);

//Top
for(i = 1; i < width/2; i += 1){
	draw_sprite(spr_messagebox,5,placex+i*16,placey);	
}
//Bottom
for(i = 1; i < width/2; i += 1){
	draw_sprite(spr_messagebox,9,placex+i*16,placey+(height-1)*16);	
}
//Left
for(i = 1; i < height-1; i += 1){
	draw_sprite(spr_messagebox,14,placex,placey+i*16);
}
//Right
for(i = 1; i < height-1; i += 1){
	draw_sprite(spr_messagebox,15,placex+width*8,placey+i*16);
}
//Fill
for(i = 1; i < width/2; i += 1){
	for(j = 1; j < height-1; j += 1){
		draw_sprite(spr_messagebox,13,placex+i*16,placey+j*16);	
	}
}

//Top right corner
draw_sprite(spr_messagebox,6,placex+(width)*8,placey);
//Bottom right corner
draw_sprite(spr_messagebox,corner,placex+(width)*8,placey+(height-1)*16);

//Arrow
draw_sprite(spr_messagebox,7,x-8,placey+(height-1)*16);
draw_sprite(spr_messagebox,12,x-8,placey+(height-1)*16+16);

//Text
draw_set_font(font);
draw_text_ext(placex+8,placey+8,message_draw,13,width*8);
