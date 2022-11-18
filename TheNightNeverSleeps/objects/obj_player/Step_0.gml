if(keyboard_check(vk_down) and !instance_place(x, y-5, obj_wall)){
	y+=5
}
if(keyboard_check(vk_up) and !instance_place(x-5, y+5, obj_wall)){
	y-=5
}
if (keyboard_check(vk_left) and !instance_place(x-5, y, obj_wall)) {
	image_xscale = -1
	x -= 5
}

if (keyboard_check(vk_right) and !instance_place(x+5, y, obj_wall)) {
	image_xscale = 1
	x += 5
}
