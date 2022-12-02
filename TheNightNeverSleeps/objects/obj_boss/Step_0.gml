
direction = point_direction(x, y, obj_player.x, obj_player.y)
image_angle = direction
if(hspeed =0)
	image_index = 0
else{
	sprite_index = spr_boss
}
if(distance_to_object(obj_player<=25)){
	alarm_set(0,70)
}