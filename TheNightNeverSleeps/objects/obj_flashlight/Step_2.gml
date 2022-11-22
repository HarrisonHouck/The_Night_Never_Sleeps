/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
surface_reset_target()
surface_set_target(global.flashlights)
gpu_set_blendmode(bm_subtract)
draw_surface(flashlightSurface,0,0)
gpu_set_blendmode(bm_normal)

surface_reset_target()