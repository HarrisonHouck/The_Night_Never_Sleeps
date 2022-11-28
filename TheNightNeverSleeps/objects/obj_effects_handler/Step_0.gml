
if(surface_exists(global.flashlights)){
surface_set_target(global.flashlights)
draw_clear_alpha(c_black,0)
draw_set_color(c_black)
draw_set_alpha(0.93)
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