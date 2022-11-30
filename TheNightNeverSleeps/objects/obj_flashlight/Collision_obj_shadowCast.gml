/// @description Insert description here
// You can write your code in this editor
shadowCasting=true
if(surface_exists(flashlightSurface)){
if(instance_exists(obj_flashlight)){
surface_set_target(flashlightSurface)
gpu_set_blendmode(bm_normal)
draw_set_alpha(1)
draw_self()	
for(var i=0; i<instance_number(obj_shadowCast); i++){
var currWall=instance_find(obj_shadowCast,i)
BLAng=point_direction(x,y,currWall.bbox_left,currWall.bbox_bottom)
BRAng=point_direction(x,y,currWall.bbox_right,currWall.bbox_bottom)
TLAng=point_direction(x,y,currWall.bbox_left,currWall.bbox_top)
TRAng=point_direction(x,y,currWall.bbox_right,currWall.bbox_top)
BLx=currWall.bbox_left+lengthdir_x(316,BLAng)
BLy=currWall.bbox_bottom+lengthdir_y(316,BLAng)
BRx=currWall.bbox_right+lengthdir_x(316,BRAng)
BRy=currWall.bbox_bottom+lengthdir_y(316,BRAng)
TLx=currWall.bbox_left+lengthdir_x(316,TLAng)
TLy=currWall.bbox_top+lengthdir_y(316,TLAng)
TRx=currWall.bbox_right+lengthdir_x(316,TRAng)
TRy=currWall.bbox_top+lengthdir_y(316,TRAng)
gpu_set_blendmode(bm_subtract)
draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle(currWall.bbox_left,currWall.bbox_top,currWall.bbox_right,currWall.bbox_bottom,false)
draw_triangle(currWall.bbox_left,currWall.bbox_top,TLx,TLy,currWall.bbox_right,currWall.bbox_top,false)
draw_triangle(TLx,TLy,currWall.bbox_right,currWall.bbox_top,TRx,TRy,false)
draw_triangle(TLx,TLy,currWall.bbox_left,currWall.bbox_top,currWall.bbox_left,currWall.bbox_bottom,false)
draw_triangle(TLx,TLy,BLx,BLy,currWall.bbox_left,currWall.bbox_bottom,false)
draw_triangle(currWall.bbox_right,currWall.bbox_top,currWall.bbox_right,currWall.bbox_bottom,TRx,TRy,false)
draw_triangle(currWall.bbox_right,currWall.bbox_bottom,TRx,TRy,BRx,BRy,false)
draw_triangle(currWall.bbox_left,currWall.bbox_bottom,currWall.bbox_right,currWall.bbox_bottom,BLx,BLy,false)
draw_triangle(BLx,BLy,BRx,BRy,currWall.bbox_right,currWall.bbox_bottom,false)
}
surface_reset_target()
}
}


