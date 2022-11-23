if(detected){
	
	if(!instance_exists(obj_detect)){
		instance_create_layer(obj_player.x, obj_player.y, "instances", obj_detect)
	}
	if(instance_exists(obj_detect)){
		path_end()
		alarm[0] = 120
		direction = point_direction(x, y, obj_detect.x, obj_detect.y)
		mp_potential_step_object(obj_detect.x, obj_detect.y, hsp+.3, obj_wall)
		hspeed = hsp
		if(distance_to_object(obj_detect) <= 100){
			hspeed = 0
			//sweep flashlight
			
			//return to path
		}
	}
}
image_angle = direction + 90