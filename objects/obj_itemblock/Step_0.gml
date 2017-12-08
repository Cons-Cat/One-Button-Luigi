if hit = 1{
	if y > ystart - 14{
		y -= 3;
	} else {
		y = ystart - 14;
		hit = 2;
		items -= 1;
	}
}

if hit = 2{
	if y < ystart{
		y += 3;
	} else {
		y = ystart;
		hit = 0;
	}
}

if items = 0{
	sprite_index = spr_hitblock;
}
