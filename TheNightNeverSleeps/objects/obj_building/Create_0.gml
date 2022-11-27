/// @description Insert description here
// You can write your code in this editor
centerX=x+sprite_width/2
centerY=y-sprite_height/2
Lx=bbox_left
Rx=bbox_right
By=bbox_bottom
Ty=bbox_top
yz_ratio=1000/sprite_height/1/2+1
xz_ratio=1000/sprite_width/1/2+1
building=surface_create(sprite_width,room_width+10)
surface_set_target(building)
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
draw_sprite_ext(spr_building,0,0,room_width+10,image_xscale,room_width+10,0,c_white,1)
spr_built_building=sprite_create_from_surface(building,0,0,sprite_width,room_width+10,false,false,0,room_width+10)
surface_reset_target()
