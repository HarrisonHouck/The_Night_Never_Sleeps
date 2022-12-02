/// @description Insert description here
// You can write your code in this editor
image_xscale=0.25
image_yscale=0.25
if(upgradeType="Speed"){
	
	sprite_index=spr_speed_mod
	speed_mod=1.5
	stamina_mod=-1
}
if(upgradeType="Stealth"){
	sprite_index=spr_stealth_mod
	stealth_mod=true
	stamina_mod=-1
}
if(upgradeType="Stamina"){
	sprite_index=spr_stamina_mod
	if(global.lives <= 5){
		stamina_mod=1
	}
}