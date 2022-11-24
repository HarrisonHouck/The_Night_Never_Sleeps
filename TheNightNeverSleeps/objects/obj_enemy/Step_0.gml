if(detected){
	if(!instance_exists(obj_detect)){
		instance_create_layer(obj_player.x, obj_player.y, "instances", obj_detect)
	}
	if(instance_exists(obj_detect)){
		path_end()
		alarm[0] = 120
		global.detect = true
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
	//change from 10 later, 10 is instant 20 is like a fine time :))
	
	///*
	if(current_second - detected_time >=  10){
		global.detect = false
		detected = false
		hsp = 1
		mp_potential_step_object(path_positionprevious.x, path_positionprevious.y, hsp, obj_wall)
		old_path = path_positionprevious
		//p sure the if statement is my issue, it turns to move but then jkust starts
		if(path_positionprevious.x = x and path_positionprevious.y = y){
			path_start(walk_path, hsp, path_action_restart, true)
			path_position = old_path
		}
		
	}
	//*/
	
}
if(!sweep){
	image_angle = direction + 90
}