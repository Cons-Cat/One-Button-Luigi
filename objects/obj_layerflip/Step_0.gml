if time > 0{
	time -= 13;
} else {
	if flips > 0{
		flips -= 1;
		time = timeDuration;
		if flips = 0 || flips = 2{
			layer_set_visible("Tiles_1",false);
			layer_set_visible("Tiles_2",true);
		} else {
			layer_set_visible("Tiles_1",true);
			layer_set_visible("Tiles_2",false);
		}
	} else {
		obj_player.hspeed = tempHspd;
		instance_destroy();
	}
}

obj_player.hspeed = 0;
