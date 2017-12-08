if global.pressed = 0{
	if keyboard_check_pressed(vk_space){
		global.pressed = 1;
		sprite_index = spr_qte_pressed;
		alarm[0] = 6;
	}
	if timer = 0{
		global.pressed = 2;
		alarm[0] = 6;
	}
}

x = obj_player.x;
y = obj_player.y-32;
