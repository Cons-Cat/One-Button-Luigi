if state = 1{
	vspeed += 1;
	hspeed += 0.2;
	
	if vspeed > 5{
		vspeed = 5;
	}
	if hspeed > 0{
		hspeed = 0;
	}
}

if y > 280{
	instance_destroy();
}
