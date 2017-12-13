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
		time = 28;
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
		state = 17;
		time = -1;
		exit;
	}
	if state = 17{
		moveState = 1;
		runState = 1;
		skidState = 1;
		state = 18;
		time = -1;
		moveLength = 1246-x;
		exit;
	}
	if state = 18{
		runState = 0;
		time = -1;
		moveLength = (1208-x+14);
		skidState = 0;
		state = 19;
		exit;
	}
	if state = 19{
		sprite_index = spr_p2_back;
		time = 23;
		state = 20;
		exit;
	}
	if state = 20{
		with instance_create_layer(x,y,layer,obj_narrationtext){
			message[0] = "Some victims could not be restored.";
			message[1] = "An engraving catches Luigis eye."
			message_end = 1;
			message_length = string_length(message[0]);
		}
		state = 21;
		time = -1;
		exit;
	}
	if state = 21{
		time = 10;
		state = 22;
		exit;
	}
	if state = 22{
		moveState = 1;
		moveLength = (x+8-x);
		time = -1;
		state = 23;
		exit;
	}
	if state = 23{
		image_xscale = -1;
		state = 24;
		time = 15;
		exit;
	}
	if state = 24{
		if !instance_exists(obj_qte){
			instance_create_layer(x,y,layer,obj_qte);
		}
		
		if global.pressed = 1{
			state = 25;
		}
		if global.pressed = 2{
			state = 27;
		}
		exit;
	}
	if state = 25{
		time = 7;
		state = 25.5;
		exit;
	}
	if state = 25.5{
		sprite_index = spr_p2_duck;
		time = 26;
		state = 26;
		exit;
	}
	if state = 26{
		with instance_create_layer(x,y,layer,obj_narrationtext){
			message[0] = "'Here remains Toad'";
			message_end = 0;
			message_length = string_length(message[0]);
		}
		state = 26.2;
		time = -1;
		exit;
	}
	if state = 26.2{
		time = 12;
		state = 26.5;
		exit;
	}
	if state = 26.5{
		sprite_index = spr_p2_still;
		time = 30;
		state = 27;
		exit;
	}
	if state = 27{
		time = 70;
		state = 28;
		exit;
	}
	if state = 28{
		with instance_create_layer(x,y,layer,obj_narrationtext){
			message[0] = "Luigi moves on.";
			message_end = 0;
			message_length = string_length(message[0]);
		}
		state = 29;
		time = -1;
		exit;
	}
	if state = 29{
		time = 25;
		state = 30;
		exit;
	}
	if state = 30{
		moveState = 1;
		state = 31;
		time = -1;
		exit;
	}
	if state = 31{
	}
	if state = 32{
		sprite_index = spr_p2_still;
		time = 5;
		state = 33;
		exit;
	}
	if state = 33{
		time = 4;
		state = 34;
		exit;
	}
	if state = 34{
		image_xscale = -1;
		state = 35;
		exit;
	}
	if state = 35{
		with instance_create_layer(obj_toad.x,y,layer,obj_dialoguetext){
			message[0] = "Ha! You just got hit by my baseball!";
			message[1] = "What are you gonna do about it, dude?";
			message_end = 1;
			message_length = string_length(message[0]);
			width = 14;
			height = 3;
		}
		time = -1;
		state = 36;
		exit;
	}
	if state = 36{
		instance_create_layer(x-120,y-8,layer,obj_goomba_1);
		state = 37;
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
	if hspeed <= -0.175 || hspeed >= 0.175{
		hspeed /= 1.15;
		image_speed = hspeed/4;
	} else {
		x = round(x);
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
if moveState = 3{ //Skid left
	image_xscale = -1;
	hspeed -= hspdAcel;
	
	if hspeed <= 0{
		moveState = 2;
		time = 0;
		hspeed = -walkHspd;
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
if moveLength != 0{
	if x >= tempX + moveLength - hspeed && hspeed > 0{
		x =	tempX + moveLength;
		moveLength = 0;
		time = 22+runState;
		
		if skidState = 0{
			moveState = 0;
		} else {
			moveState = 3;
			tempX = x;
		}
	}
	if x <= tempX + moveLength - hspeed && hspeed < 0{
		x =	tempX + moveLength;
		moveLength = 0;
		time = 22+runState;
		
		if skidState = 0{
			moveState = 0;
		} else {
			moveState = 4;
		}
	}
}
