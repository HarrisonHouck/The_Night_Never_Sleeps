/// @description Insert description here
// You can write your code in this editor
image_angle=point_direction(x,y,mouse_x,mouse_y)
if(keyboard_check(ord("A"))or keyboard_check(ord("W"))or keyboard_check(ord("S"))or keyboard_check(ord("D"))){
	
	//sprite_index = spr_player
}
if(!keyboard_check(ord("A"))and !keyboard_check(ord("W"))and !keyboard_check(ord("S"))and !keyboard_check(ord("D"))){
	if(sprite_index = spr_player){
		image_index=0
	}
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
	sprite_index = spr_stab
	if(instance_exists(obj_guard)){
		closestEnemy = instance_nearest(x, y, obj_guard)
		closestFlash = instance_nearest(x, y, obj_flashlight)
		imgangleMultiplyer = abs(obj_player.image_angle - closestEnemy.image_angle) + 180
		if(distance_to_object(closestEnemy) <= 50  and imgangleMultiplyer <= 210){
			instance_destroy(closestEnemy)			
			instance_destroy(closestFlash)
			audio_play_sound(snd_knifestab, 5, 0)
		}
	}
	if(instance_exists(obj_boss)){
		closestbEnemy = instance_nearest(x, y, obj_boss)
		if(distance_to_object(closestbEnemy) <= 50){
			audio_play_sound(snd_knifestab, 5, 0)
			global.bosshealth -=1
			audio_play_sound(snd_bossdies, 2, 0)
			if(global.bosshealth == 0){
				instance_destroy(obj_boss)
			}
		}
	}
	else{
		audio_play_sound(snd_swoosh, 3, 0)
	}
	
}

if(room = WinRoom or room = loseroom){
	instance_destroy()
}
