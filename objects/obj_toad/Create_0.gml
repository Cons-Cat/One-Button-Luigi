debug = true;

if debug = false{
	state = 0;
	stateGo = 0;
	time = 2;
	animVal = 0;
} else {
	time = 1;
	state = -1;
	stateGo = 1;
	y = ystart + 8;
	x = 1416;
	layer = "Instances";
	sprite_index = spr_toad_still;
}

inchVal = 0;
