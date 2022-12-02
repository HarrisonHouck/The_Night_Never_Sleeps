/// @description Insert description here
// You can write your code in this editor
if(obj_player.upgrade!="null"){
instance_create_layer(x,y,"Instances",obj_upgrade,{upgradeType: obj_player.upgrade})
}
obj_player.speed_mod=speed_mod
obj_player.stealth_mod=stealth_mod
if(global.lives<=5){
	global.lives+=stamina_mod
}
obj_player.upgrade=upgradeType


