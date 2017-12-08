//Basic set up
camera_set_view_pos(view_camera[0], x-128, y-72);
camera_set_view_size(view_camera[0], 256, 144);

//Follow player
if canMove = true{
	if self.x < obj_player.x - 6 + 40{
		x = obj_player.x-6+40;
	}
	if obj_player.x < self.x-48{
		//x = obj_player.x-48;
	}
	
	y = obj_player.y-40;
}

//Boundaries
if x < 128{
	x = 128;
}
if y < 72{
	y = 72;
}

if varia = 0{
	if obj_player.x >= 240 {
		instance_create_layer(x,y,layer,obj_layerflip);
		varia = 1;
	}
}
