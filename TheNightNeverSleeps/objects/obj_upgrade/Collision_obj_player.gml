/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
draw_set_halign(fa_center)
if(other.upgrade=="null"){
draw_text_color(other.x,other.y-60,"Install "+upgradeType+" implant",c_yellow,c_yellow,c_yellow,c_yellow,1)
}
else{
draw_text_color(other.x,other.y-60,"Swap to "+upgradeType+" implant",c_yellow,c_yellow,c_yellow,c_yellow,1)
}
if(keyboard_check(ord("E"))){
instance_destroy()
}