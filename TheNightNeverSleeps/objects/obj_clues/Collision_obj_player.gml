draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
draw_set_halign(fa_center)
draw_text_color(other.x,other.y-10,"Pickup Clue",c_yellow,c_yellow,c_yellow,c_yellow,1)
if(keyboard_check(ord("E"))){
	instance_destroy()
}