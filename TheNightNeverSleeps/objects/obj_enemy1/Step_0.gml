if(detected){
	//move to the seen thing
	if(instance_id(obj_player)){
		path_end()
		direction = point_direction(x, y, obj_flashlight.other.x, obj_flashlight.other.y)
	}
	
}
