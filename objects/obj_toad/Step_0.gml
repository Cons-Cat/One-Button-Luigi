if stateGo = 0{
	if obj_player.x > 1374+28{
		state = 1;
		stateGo = 1;
	}
}

if state = 1{
	if x > xstart-24{
		x -= 2.2;
		image_xscale = -1;
		image_speed = 0.8;
		sprite_index = spr_toad_bg_walk;
	} else {
		x = xstart-24;
		image_index = 1;
		image_speed = 0;
		state = 2;
	}
}

if state = 2{
	if time > 0{
		time -= 1;
	} else {
		state = 3;
		time = 2;
	}
}

if state = 3{
	sprite_index = spr_toad_bg;
	image_xscale = 1;
	
	if time > 0{
		time -= 1;
	} else {
		state = 4;
		time = 4;
	}
}

if state = 4{
	if time > 0{
		time -= 1;
	} else {
		layer = "Instances";
		if y < ystart + 8{
			y += 2.2;
			sprite_index = spr_toad_front;
			image_speed = 0.8;
		} else {
			y = ystart + 8;
			image_index = 1;
			image_speed = 0;
			state = 5;
			time = 2;
		}
	}
}

if state = 5{
	if time > 0{
		time -= 1;
	} else {
		if animVal < 3{
			animVal += 0.25;
			sprite_index = spr_toad_walk;
			image_index = animVal;
		}
		if animVal = 2{
			instance_create_layer(x+6,y-8,layer,obj_baseball);
		}
		if animVal >= 3{
			image_index = 0;
			sprite_index = spr_toad_still;
		}
	}
}

if gravity > 0{
	if y > ystart + 8 - vspeed{
		y = ystart + 8;
		vspeed = 0;
		gravity = 0;
		hspeed = 0;
		state = 6;
		time = 15;
	}
}

if time > 0 && state > 5{
	time -= 1;
} else if time != -1 {
	if state = 6{
		image_xscale = -1;
		time = 30;
		state = 7;
		exit;
	}
	if state = 7{
		hspeed = 2.2;
		time = 7;
		state = 8;
		exit;
	}
	if state = 8{
		hspeed = 0;
		state = 9;
		time = 10;
		exit;
	}
	if state = 9{
		obj_goomba_1.hspeed = 2.45;
		time = 7;
		state = 10;
		exit;
	}
	if state = 10{
		obj_goomba_1.hspeed = 0;
		time = 5;
		state = 11;
		exit;
	}
	if state = 11{
		image_xscale = 1;
		time = 5;
		state = 22;
		exit;
	}
	if state = 22{
		with instance_create_layer(obj_toad.x,y,layer,obj_dialoguetext){
			message[0] = "I take back what I was going to say about your mom.";
			message_end = 0;
			message_length = string_length(message[0]);
			width = 15;
			height = 4;
		}
		time = -1;
		state = 23;
		exit;
	}
	if state = 23{
		time = 3;
		state = 24;
		exit;
	}
	if state = 24{
		with instance_create_layer(obj_toad.x,y,layer,obj_dialoguetext){
			message[0] = "Please save me from this monster!";
			message_end = 0;
			message_length = string_length(message[0]);
			width = 14;
			height = 3;
		}
		time = -1;
		state = 25;
		exit;
	}
	if state = 25{
		time = 35;
		state = 26;
		exit;
	}
	if state = 26{
		time = -1;
		state = 27;
		instance_create_layer(x,y,layer,obj_qte);
		exit;
	}
	if state = 27{
		time = 5;
		state = 28;
		exit;
	}
	if state = 28{
		inchVal = 20;
	}
}

if inchVal > 0{
	inchVal -= 1;

	if inchVal >= 10{
		hspeed = 2.2;
	} else {
		hspeed = 0;
	}
	if inchVal >= 5 && inchVal <= 15{
		obj_goomba_1.hspeed = 2.2;
	} else {
		obj_goomba_1.hspeed = 0;
	}
	
	if inchVal < 0{
		inchVal = 20;
	}
}
