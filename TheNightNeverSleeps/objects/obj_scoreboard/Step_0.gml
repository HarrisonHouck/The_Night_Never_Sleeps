if(global.lives == 0){
	instance_destroy()
	room_goto(8)
}
if(global.clues = 6){
	instance_destroy(obj_guard)
	instance_destroy(obj_flashlight)
	if(!instance_exists(obj_boss)){
		instance_create_layer(obj_player.x, obj_player.y+150, "Instances", obj_boss)
	}
}