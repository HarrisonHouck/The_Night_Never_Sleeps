if(keyboard_check_pressed(ord("G"))){
	game_restart()
}
if(keyboard_check_pressed(ord("R"))){
	room_restart()
}
if(keyboard_check_pressed(ord("L"))){
	global.lives += 5
}
if(keyboard_check_pressed(ord("B"))){
	if(!instance_exists(obj_boss)){
		instance_create_layer(obj_player.x, obj_player.y-100, "Instances", obj_boss)
	}
}