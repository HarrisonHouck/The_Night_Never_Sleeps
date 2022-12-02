
if(state=="patroling"){
	if(path_index==-1 and x!=lastPatrolX and y!=lastPatrolY){
		mp_potential_step_object(lastPatrolX,lastPatrolY,patrolSpeed,obj_wall)
	}
	if(path_index==-1 and x==lastPatrolX and y==lastPatrolY){
		path_start(walk_path,patrolSpeed,path_action_restart,true)
		path_position=lastPathPos
	}
	if(instance_exists(obj_detect)){
		if(distance_to_object(obj_detect)<1000){
			path_end()
			state="pursuing"
		}
	}
	if(path_index!=-1){
	lastPatrolX=x
	lastPatrolY=y
	lastPathPos=path_position
	}
}
if(state=="pursuing"){
	alarm_set(2, 30)
	if(!instance_exists(obj_detect)){
		state="patroling"	
	}
	if(instance_exists(obj_detect)){
	mp_potential_step_object(obj_detect.x,obj_detect.y,patrolSpeed*1.5,obj_wall)
	}
}
if(state=="seeking"){
	if(!instance_exists(obj_detect)){
	state="patroling"	
	}
	if(alarm_get(0)==-1){
	alarm_set(0,210)
	lookAng=image_angle
	}
	if(alarm_get(0)>0){
		if(image_angle==lookAng){
		lookAng=irandom_range(image_angle+145,image_angle+215)
		}
		image_angle+=3
	}
}
if(state=="fighting"){
	if(!instance_exists(obj_detect)){
		state="patroling"
	}
	if(path_index!=-1){
		path_end()
	}
	if(instance_exists(obj_detect)){
	mp_potential_step_object(obj_detect.x,obj_detect.y,patrolSpeed*2,obj_wall)
	
	if(distance_to_object(obj_player)<50 and canTaze==true){
		instance_create_layer(x,y,"instances",obj_baton,{startAng: image_angle})
		canTaze=false
		alarm_set(1,120)
	}
	}

}
if(state != "patroling"){
	global.detect = true
}
if(state == "patroling"){
	global.detect = false
}