/// @description Insert description here
// You can write your code in this editor
attach = instance_nearest(other.x, other.y, obj_guard)
flashlightSurface=surface_create(room_width,room_height)	
surface_set_target(flashlightSurface)
draw_clear_alpha(c_black,0)
surface_reset_target()
