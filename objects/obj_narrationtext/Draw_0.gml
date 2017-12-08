/*
//Top left corner
draw_sprite(spr_messagebox,4,x+32,y);
//Bottom left corner
draw_sprite(spr_messagebox,8,x+32,y+16);

//Top
for(i = 48; i < 256-48; i += 16){
	draw_sprite(spr_messagebox,5,x+i,y);	
}
//Bottom
for(i = 48; i < 256-48; i += 16){
	draw_sprite(spr_messagebox,9,x+i,y+16);	
}

//Top right corner
draw_sprite(spr_messagebox,6,x+256-48,y);
//Bottom right corner
draw_sprite(spr_messagebox,10,x+256-48,y+16);
*/


//Text
draw_set_font(font);
draw_text_ext(camera_get_view_x(obj_camera.camera)+38,camera_get_view_y(obj_camera.camera)+120,message_draw,13,182);
