/// @description Insert description here
// You can write your code in this editor
/*
if(surface_exists(flashlight)){
surface_set_target(flashlight)
draw_set_alpha(0.75)
gpu_set_blendmode(bm_normal)
draw_set_color(c_dkgray)
draw_rectangle(0,0,room_width,room_width,false)
for(var i=0;i<instance_number(obj_flashlight); i++){
var currLight=instance_find(obj_flashlight,i)
gpu_set_blendmode(bm_subtract)
draw_set_alpha(1)
draw_set_color(c_white)
draw_sprite_ext(spr_light_cone,0,currLight.x,currLight.y,1,1,currLight.image_angle,c_white,1)

}
surface_reset_target()
}
else{
draw_set_alpha(1)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
flashlight=surface_create(room_width,room_height)	

}
*/
if(surface_exists(global.flashlights)){
surface_set_target(global.flashlights)
draw_clear_alpha(c_black,0)
draw_set_color(c_black)
draw_set_alpha(0.9)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_color(c_white)
surface_reset_target()
}
else{
global.flashlights=surface_create(room_width,room_height)	
surface_set_target(global.flashlights)
draw_clear_alpha(c_black,0)
surface_reset_target()	
}