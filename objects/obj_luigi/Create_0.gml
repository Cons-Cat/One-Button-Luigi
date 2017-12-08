sprite_index = spr_p2_duck


moveState = 0;
runState = 0;
hspdAcel = 0.21;
walkHspd = 2.2;
runHspd = 3.8;
maxHspd = walkHspd;
moveLength = 0;
tempX = x;
jumpState = 0;
qteVal = 5;

if x > 520{
	state = 17;
	time = 1;
} else {
	state = 0;
	time = 20;
}
