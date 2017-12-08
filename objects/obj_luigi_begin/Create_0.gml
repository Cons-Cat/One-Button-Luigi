if instance_exists(obj_luigi){
	instance_destroy(); //Debug purposes
}

global.pressed = 0;
time = 15;
state = -3;
debug = true;
jumpState = 0;

if debug = false{
	with instance_create_layer(0,112,layer,obj_narrationtext){
		message[0] = "Luigi is listless.";
		message_end = 0;
		message_length = string_length(message[0]);
	}
}

image_speed = 0;
image_index = 1;
