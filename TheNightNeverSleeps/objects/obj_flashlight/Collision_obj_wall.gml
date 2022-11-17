/// @description Insert description here
// You can write your code in this editor
shadowCasting=true

if(surface_exists(flashlightSurface)){
if(instance_exists(obj_flashlight)){
surface_set_target(flashlightSurface)
gpu_set_blendmode(bm_normal)
draw_set_alpha(1)
draw_self()
BLAng=point_direction(x,y,other.bbox_left,other.bbox_bottom)
BRAng=point_direction(x,y,other.bbox_right,other.bbox_bottom)
TLAng=point_direction(x,y,other.bbox_left,other.bbox_top)
TRAng=point_direction(x,y,other.bbox_right,other.bbox_top)
BLx=other.bbox_left+lengthdir_x(200,BLAng)
BLy=other.bbox_bottom+lengthdir_y(200,BLAng)
BRx=other.bbox_right+lengthdir_x(200,BRAng)
BRy=other.bbox_bottom+lengthdir_y(200,BRAng)
TLx=other.bbox_left+lengthdir_x(200,TLAng)
TLy=other.bbox_top+lengthdir_y(200,TLAng)
TRx=other.bbox_right+lengthdir_x(200,TRAng)
TRy=other.bbox_top+lengthdir_y(200,TRAng)
gpu_set_blendmode(bm_subtract)
draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle(other.bbox_left,other.bbox_top,other.bbox_right,other.bbox_bottom,false)
draw_triangle(other.bbox_left,other.bbox_top,TLx,TLy,other.bbox_right,other.bbox_top,false)
draw_triangle(TLx,TLy,other.bbox_right,other.bbox_top,TRx,TRy,false)
draw_triangle(TLx,TLy,other.bbox_left,other.bbox_top,other.bbox_left,other.bbox_bottom,false)
draw_triangle(TLx,TLy,BLx,BLy,other.bbox_left,other.bbox_bottom,false)
draw_triangle(other.bbox_right,other.bbox_top,other.bbox_right,other.bbox_bottom,TRx,TRy,false)
draw_triangle(other.bbox_right,other.bbox_bottom,TRx,TRy,BRx,BRy,false)
draw_triangle(other.bbox_left,other.bbox_bottom,other.bbox_right,other.bbox_bottom,BLx,BLy,false)
draw_triangle(BLx,BLy,BRx,BRy,other.bbox_right,other.bbox_bottom,false)
}
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
surface_reset_target()
surface_set_target(global.flashlights)
draw_surface(flashlightSurface,0,0)
surface_reset_target()
}


