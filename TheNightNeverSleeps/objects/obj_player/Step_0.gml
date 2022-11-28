/// @description Insert description here
// You can write your code in this editor
image_angle=point_direction(x,y,mouse_x,mouse_y)
if(!keyboard_check(ord("A")) and !keyboard_check(ord("D")) and !keyboard_check(ord("S")) and !keyboard_check(ord("W"))){
	sprite_index = 0
}
else{
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
}

if(mouse_check_button_pressed(mb_left)){
	if(instance_exists(obj_guard)){
		closestEnemy = instance_nearest(x, y, obj_guard)
		imgangleMultiplyer = abs(obj_player.image_angle - closestEnemy.image_angle) + 180
		if(distance_to_object(closestEnemy) <= 50  and imgangleMultiplyer <= 210){
			instance_destroy(closestEnemy)
		}
	}
	if(instance_exists(obj_boss)){
		closestEnemy = instance_nearest(x, y, obj_boss)
		if(closestEnemy == obj_boss){
			if(distance_to_object(obj_boss) <= 50){
				obj_boss.bosshealth -=1
				if(obj_boss.bosshealth == 1){
					instance_destroy(obj_boss)
				}
			}
		}
	}
	
}
