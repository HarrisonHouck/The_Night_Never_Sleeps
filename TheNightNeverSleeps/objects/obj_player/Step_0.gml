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

if(mouse_check_button_pressed(mb_left)){
	if(instance_exists(obj_enemy)){
		closestEnemy = instance_nearest(x, y, obj_enemy)
		imgangleMultiplyer = abs(obj_player.image_angle - closestEnemy.image_angle) + 180
		if(distance_to_object(obj_enemy) <= 50  and imgangleMultiplyer <= 210){
			position_destroy(mouse_x, mouse_y)
		}
	}
	
}
