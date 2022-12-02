//get inputs
accept_key = keyboard_check_pressed(vk_space)

//move through menu
pos = option[3]

//using options
if(accept_key){
	room_goto(0)
}
if(instance_exists(obj_player)){
	instance_destroy(obj_player)
}