/// @description Insert description here
// You can write your code in this editor
image_angle=point_direction(x,y,mouse_x,mouse_y)

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


