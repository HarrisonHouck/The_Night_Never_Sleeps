/// @description Insert description here
// You can write your code in this editor
flashlightSurface=surface_create(room_width,room_height)	
surface_set_target(flashlightSurface)
draw_clear_alpha(c_black,0)
surface_reset_target()
attach = instance_nearest(obj_enemy1.x, obj_enemy1.y, obj_enemy1)


