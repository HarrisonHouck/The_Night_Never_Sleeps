if(detected){
	//move to the seen thing
	path_end()
	direction = point_direction(x, y, obj_player.x, obj_player.y)
}
//image_angle = point_direction(x, y, xprevious, yprevious)
image_angle = direction - 90
