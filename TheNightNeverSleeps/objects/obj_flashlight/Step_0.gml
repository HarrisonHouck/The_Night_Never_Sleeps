
x = attach.x
y = attach.y
image_angle = attach.image_angle
if(surface_exists(flashlightSurface)){
surface_set_target(flashlightSurface)
draw_clear_alpha(c_black,0)
surface_reset_target()	
if(instance_exists(obj_flashlight)){
surface_set_target(flashlightSurface)
gpu_set_blendmode(bm_normal)
draw_set_color(c_white)
draw_set_alpha(1)
if(shadowCasting==false){
draw_self()
}
shadowCasting=false

}
}

