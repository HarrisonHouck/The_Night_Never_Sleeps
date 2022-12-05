if(keyboard_check_pressed(ord("G")))
	game_restart()

if(keyboard_check_pressed(ord("R")))
	room_restart()

if(keyboard_check_pressed(ord("G")))
	game_restart()
if(keyboard_check_pressed(ord("C"))){
global.clues+=1	
}
if(keyboard_check_pressed(ord("L")))
	global.lives += 5

if(keyboard_check_pressed(ord("B"))){
	if(!instance_exists(obj_boss)){
		instance_create_layer(obj_player.x, obj_player.y-150, "Instances", obj_boss)
	}
}
if(keyboard_check_pressed(ord("N")))
	global.clues += 1