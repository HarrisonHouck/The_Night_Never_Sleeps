if(instance_exists(obj_player)){
	ToAng = point_direction(x, y, obj_player.x, obj_player.y)
	mp_potential_step_object(x, y, hsp, obj_wall)
if(ToAng>image_angle){
	direction += 3
}
if(ToAng<image_angle){
	direction -= 3
}
image_angle = direction
if(hspeed = 0)
	image_index = 0
else{
	sprite_index = spr_boss
}
disttoplayer = distance_to_object(obj_player)
if(disttoplayer <= 5 and (image_angle>ToAng-20 and image_angle<ToAng+20)){
	if(!audio_is_playing(snd_playerhurt)){
		global.lives -=1
		audio_play_sound(snd_playerhurt, 1, 0)
	}
	hspeed = 0
	alarm_set(1, 120)
}
}