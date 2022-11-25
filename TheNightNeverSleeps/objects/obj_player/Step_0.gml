/// @description Insert description here
// You can write your code in this editor
image_angle=point_direction(x,y,mouse_x,mouse_y)+90


if(!keyboard_check(ord("W")) and !keyboard_check(ord("A")) and !keyboard_check(ord("D")) and !keyboard_check(ord("S"))){
	image_index = 1
}
else{
	if(keyboard_check(ord("A"))){
		x-=5*speed_mod
	}
	if(keyboard_check(ord("D"))){
		x+=5*speed_mod
	}
	if(keyboard_check(ord("S"))){
		y+=5*speed_mod
	}
	if(keyboard_check(ord("W"))){
		y-=5*speed_mod
	}
}
