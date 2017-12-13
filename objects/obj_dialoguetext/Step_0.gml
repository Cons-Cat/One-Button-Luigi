event_inherited();

placex = self.x-(width*8);
if placex < camera_get_view_x(obj_camera.camera){
	placex = camera_get_view_x(obj_camera.camera);
}

placey = 80 - height*16;

if characters >= message_length{
	if time > 0{
		time -= 1;
	} else {
		if corner = 10{
			corner = 11;
		} else {
			corner = 10;
		}
		time = 25;
	}
} else {
	time = 2;
	corner = 10;
}
