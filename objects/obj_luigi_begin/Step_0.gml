if global.pressed = 1{
	vspeed = -5;
	gravity = 0.65;
	sprite_index = spr_p2_jump;
}

if vspeed > 4.5{
	vspeed = 4.5;	
}

if y > 112-vspeed-8{
	y = 112-8;
	vspeed = 0;
	gravity = 0;
	sprite_index = spr_p2_still;
	instance_create_layer(x,y+8,layer,obj_luigi);
	instance_destroy();
}

if !instance_exists(obj_narrationtext){
	if state = -3{
		state = -2;
		alarm[1] = 30;
	}
	if state = -1{
		alarm[0] = time;
		state = 0;
	}
}
