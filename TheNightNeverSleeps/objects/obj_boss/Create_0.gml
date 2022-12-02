hspeed = 0
alarm_set(2,180)
instance_create_layer(x, y- 40, "Instances", obj_textbox)
if(!audio_is_playing(snd_bossspawn)){
	audio_play_sound(snd_bossspawn, 6, 0)
}
