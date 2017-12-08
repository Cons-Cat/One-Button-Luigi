if time > 0{
	time -= 1;
} else if time != -1{
	if state = 0{
		sprite_index = spr_p2_still;
		time = 17;
		state = 1;
		exit;
	}
	if state = 1{
		image_xscale = -1;
		time = 15;
		state = 2;
		exit;
	}
	if state = 2{
		image_xscale = 1;
		time = 15;
		state = 3;
		exit;
	}
	if state = 3{
		moveState = 1;
		state = 4;
		exit;
	}
	if state = 4 && x >= 280 - hspeed{
		moveState = 0;
		time = 65;
		state = 5;
		exit;
	}
	if state = 5{
		moveState = 1;
		moveLength = 72;
		runState = 1;
		time = -1;
		state = 6;
		exit;
	}
	if state = 6{
		time = 7;
		state = 7;
		exit;
	}
	if state = 7{
		sprite_index = spr_p2_back;
		time = 45;
		state = 8;
		exit;
	}
	if state = 8{
		with instance_create_layer(x,y,layer,obj_narrationtext){
			message[0] = "Tonight, the Mushroom Kingdom celebrates";
			message[1] = "the demise of the bad king koopa.";
			message_end = 1;
			message_length = string_length(message[0]);
		}
		state = 9;
		time = -1;
		exit;
	}
	if state = 9{
		time = 50;
		state = 10;
		exit;
	}
	if state = 10{
		moveState = 1;
		runState = 1;
		moveLength = 672-x-20;
		state = 11;
		time = -1;
		exit;
	}
	if state = 11{
		time = 15;
		state = 12;
		exit;
	}
	if state = 12{
		if qteVal > 0{
			if global.pressed = 1{
				jumpState = 1;
				state = 13;
			}
			if global.pressed = 2{
				state = 16;
			}
		
			if !instance_exists(obj_qte){
				time = -2;
				qteVal -= 1;
				if qteVal > 0{
					instance_create_layer(x,y,layer,obj_qte);
				} else {
					state = 14;
				}
			}		
			exit;
		}
	}
	if state = 13{
		time = 22;
		state = 12;
		exit;
	}
	if state = 14{
		time = 40;
		state = 15;
		exit;
	}
	if state = 15{
		with instance_create_layer(x,y,layer,obj_narrationtext){
			message[0] = "Collecting coins raised Luigis spirits.";
			message_end = 0;
			message_length = string_length(message[0]);
		}
		state = 17;
		time = -1;
		exit;
	}
	if state = 16{
		with instance_create_layer(x,y,layer,obj_narrationtext){
			message[0] = "Luigi leaves the coins for someone else.";
			message_end = 0;
			message_length = string_length(message[0]);
		}
		state = 22;
		time = -1;
		exit;
	}
}

if jumpState = 1{
	vspeed = -8.5;
	sprite_index = spr_p2_jump;

	jumpState = 2;
	tempY = y;
}

if jumpState = 2{
	with collision_point(x,y-32,obj_itemblock,false,false){
		other.y += vspeed;
		other.vspeed = 0;
		hit = 1;
	}
	
	if vspeed > 4.5{
		vspeed = 4.5;	
	} else {
		vspeed += 0.9;
	}
	
	if y >= tempY - vspeed{
		jumpState = 0;
		y = tempY;
		vspeed = 0;
		
		sprite_index = spr_p2_still;
	}
}

if moveState = 0{ //Stop walking
	if hspeed <= -0.1 || hspeed >= 0.1{
		hspeed /= 1.15;
		image_speed = hspeed/4;
	} else {
		hspeed = 0;
		image_speed = 0;
		
		if sprite_index = spr_p2_walk{
			sprite_index = spr_p2_still;
		}
	}
}
if moveState = 1{ //Walk Right
	sprite_index = spr_p2_walk;
	image_speed = hspeed/4;
	image_xscale = 1;

	if hspeed < maxHspd{
		hspeed += hspdAcel;	
	} else {
		if hspeed < maxHspd + hspdAcel{
			hspeed = maxHspd;
		} else {
			hspeed -= hspdAcel;
		}
	}
}
if moveState = 2{ //Walk Left
	sprite_index = spr_p2_walk;
	image_speed = hspeed/4;
	image_xscale = -1;

	if hspeed > -maxHspd{
		hspeed -= hspdAcel;	
	} else {
		if hspeed > -maxHspd - hspdAcel{
			hspeed = -maxHspd;
		} else {
			hspeed += hspdAcel;
		}
	}
}

if runState = 1{ //If running
	maxHspd = runHspd;
} else {
	maxHspd = walkHspd;	
}

if moveLength = 0{
	tempX = x;
}
if moveLength > 0{
	if x >= tempX + moveLength - hspeed{
		x =	tempX + moveLength;
		moveLength = 0;
		moveState = 0;
		time = 22+runState;
	}
}
