/// @description Insert description here
// You can write your code in this editor

for(var i=0; i<instance_number(obj_wall); i++){
	var currWall =instance_find(obj_wall,i)
	global.wallCornerList[i][0][1]=currWall.bbox_top
	global.wallCornerList[i][0][0]=currWall.bbox_left
	global.wallCornerList[i][1][1]=currWall.bbox_top
	global.wallCornerList[i][1][0]=currWall.bbox_right
	global.wallCornerList[i][2][1]=currWall.bbox_bottom
	global.wallCornerList[i][2][0]=currWall.bbox_left
	global.wallCornerList[i][3][1]=currWall.bbox_bottom
	global.wallCornerList[i][3][0]=currWall.bbox_right
}
global.flashlights=surface_create(room_width,room_height)	
surface_set_target(global.flashlights)
draw_clear_alpha(c_black,0)
surface_reset_target()

