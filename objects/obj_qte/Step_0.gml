if global.pressed = 0{
	if keyboard_check_pressed(vk_space){
		global.pressed = 1;
		image_speed = 0;
		image_index = 1;
		alarm[0] = 6;
	}
	if timer = 0{
		global.pressed = 2;
		alarm[0] = 6;
	}
}

x = obj_player.x;
if instance_exists(obj_luigi){
	y = obj_player.y-47;
} else {
	y = obj_player.y-32;
}

visible = true;
