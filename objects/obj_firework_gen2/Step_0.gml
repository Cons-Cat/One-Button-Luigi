if time > 0{
	time -= 1;
} else {
	time = timeMax+random_range(-8,8);
	with instance_create_layer(x+round(random_range(-32,32)/2)*2,y-64-random(16),layer,obj_firework){
		image_xscale = 1.5;
		image_yscale = 1.5;
	}
}
