if(detected){
	if(!instance_exists(obj_detect)){
		instance_create_layer(obj_player.x, obj_player.y, "instances", obj_detect)
	}
	if(instance_exists(obj_detect)){
		path_end()
		alarm[0] = 120
		direction = point_direction(x, y, obj_detect.x, obj_detect.y)
		mp_potential_step_object(obj_detect.x, obj_detect.y, hsp+.5, obj_wall)
		if(distance_to_object(obj_detect) <= 100){
			hsp = 0
			//sweep flashlight
			sweep = true
			if(sweep){
				angle += 3
				image_angle = clamp(image_angle+angle, direction-45, direction+45)
				// this makes it stuck at 45 degrees rn.. 
			}
		}
	}
	//return to path if nothing is found
	/*
	if(current_second - detected_time >=  30){
		detected = false
		hsp = 1
		mp_potential_step_object(path_position.x, path_position.y, hsp+.5, obj_wall)
		if(path_position.x = x and path_position.y = y){
			path_start(walk_path, hsp, path_action_restart, true)
		}
		
	}
	*/
}
if(!sweep){
	image_angle = direction + 90
}