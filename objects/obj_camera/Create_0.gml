//Camera creation
debug = true;
varia = 0;

if debug = false{
	x = obj_player.x-8;
	if obj_player.jumpState = 0{
		y = obj_player.y-16;
	}
	
	canMove = true;
	layer_set_visible("Tiles_2",false);
} else {
	canMove = true;
	varia = 1;
	layer_set_visible("Tiles_1",false);
	layer_set_visible("Tiles_2",true);	
}

//Build the camera
camera = camera_create_view(0, 0, 256, 144, 0, -1, -1, -1, 32, 32);

//Set camera to view
view_set_camera(0, camera);
