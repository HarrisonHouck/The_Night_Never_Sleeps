/// @description Insert description here
// You can write your code in this editor
image_angle=point_direction(x,y,mouse_x,mouse_y)
if(keyboard_check(ord("A"))or keyboard_check(ord("W"))or keyboard_check(ord("S"))or keyboard_check(ord("D"))){
	
	sprite_index = spr_player
}
else{
	sprite_index = 4
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
	if(instance_exists(obj_guard)){
		closestEnemy = instance_nearest(x, y, obj_guard)
		closestFlash = instance_nearest(x, y, obj_flashlight)
		imgangleMultiplyer = abs(obj_player.image_angle - closestEnemy.image_angle) + 180
		if(distance_to_object(closestEnemy) <= 50  and imgangleMultiplyer <= 210){
			instance_destroy(closestEnemy)			
			instance_destroy(closestFlash)
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
if(global.lives <= 0){
	instance_destroy()
}
