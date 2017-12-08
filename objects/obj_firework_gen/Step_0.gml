if time > 0{
	time -= 1;
} else {
	time = timeMax+random_range(-8,8);
	instance_create_layer(x+round(random_range(-48,48)/2)*2,y-32-random(16),layer,obj_firework);
}