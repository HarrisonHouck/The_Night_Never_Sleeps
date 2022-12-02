
direction = point_direction(x, y, obj_player.x, obj_player.y)
image_angle = direction
if(hspeed = 0)
	image_index = 0
else{
	sprite_index = spr_boss
}
disttoplayer = distance_to_object(obj_player)
if(disttoplayer <= 5){
	if(!audio_is_playing(snd_playerhurt)){
		global.lives -=1
		audio_play_sound(snd_playerhurt, 1, 0)
	}
}