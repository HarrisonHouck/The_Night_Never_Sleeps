/// @description Insert description here
// You can write your code in this editor
image_angle=point_direction(x,y,mouse_x,mouse_y)
if(keyboard_check(ord("A"))or keyboard_check(ord("W"))or keyboard_check(ord("S"))or keyboard_check(ord("D"))){
sprite_index=spr_player
}
else{
sprite_index=spr_still_player
}
if(keyboard_check(ord("A"))){
x-=5*speed_mod*stealth_speed_mod
}
if(keyboard_check(ord("D"))){
x+=5*speed_mod*stealth_speed_mod
}
if(keyboard_check(ord("S"))){
y+=5*speed_mod*stealth_speed_mod
}
if(keyboard_check(ord("W"))){
y-=5*speed_mod*stealth_speed_mod
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
