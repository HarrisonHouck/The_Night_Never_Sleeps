/// @description Insert description here
// You can write your code in this editor

image_angle=point_direction(x,y,mouse_x,mouse_y)

if(keyboard_check(vk_left)){
x-=5
}
if(keyboard_check(vk_right)){
x+=5
}
if(keyboard_check(vk_down)){
y+=5
}
if(keyboard_check(vk_up)){
y-=5
}

if(surface_exists(flashlightSurface)){
surface_set_target(flashlightSurface)
draw_clear_alpha(c_black,0)
surface_reset_target()	
if(instance_exists(obj_flashlight)){
surface_set_target(flashlightSurface)
gpu_set_blendmode(bm_normal)
draw_set_color(c_white)
draw_set_alpha(0.8)
if(shadowCasting==false){
draw_self()
}
shadowCasting=false
//BLToLightAng=point_direction(x,y,other.bbox_left,other.bbox_bottom)
}
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
surface_reset_target()
surface_set_target(global.flashlights)
draw_surface(flashlightSurface,0,0)
surface_reset_target()
}

