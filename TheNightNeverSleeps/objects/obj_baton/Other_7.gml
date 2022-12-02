
if(distance_to_object(obj_player)<=30){
	global.lives -= 1
	audio_play_sound(snd_playerhurt, 1, 0)
}
instance_destroy()

