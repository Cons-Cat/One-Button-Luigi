message_draw = string_upper(message[current]);
if keyboard_check_pressed(vk_space){
    if current < message_end{
        current += 1;
    }
}

if characters<message_length{
    characters+=increase;
    message_draw=string_copy(string_upper(message[message_current]),0,characters);
} else {
	if keyboard_check_pressed(vk_space){
	    if message_current<message_end{
            message_current+=1;
            message_length=string_length(message[message_current]);
            characters=0;
            message_draw="";
	    } else {
			if instance_exists(obj_luigi){
				obj_luigi.time = 0;
				obj_toad.time = 0;
			}
			instance_destroy();
		}
	}
}
